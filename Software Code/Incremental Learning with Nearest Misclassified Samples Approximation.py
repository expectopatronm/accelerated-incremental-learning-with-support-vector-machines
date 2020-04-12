# Algorithm 6.2 SMO with Maximum Violating Pair working set selection
# 1:  for all values {1 . . . n} αk  <-- 0 ⊲ Initial coefficients
# 2:  for all values {1 . . . n} gk  <-- 1 ⊲ Initial gradient
# 3:  loop
# 4:  i <-- argmaxi yigi subject to yiαi < Bi
# 5:  j <-- argminj yjgj subject to Aj < yjαj ⊲ Maximal violating pair
# 6:  if yigi <= yjgj stop. ⊲ Optimality criterion
# 7:  λ <- min{ Bi − yiαi, yjαj − Aj , yigi − yjgj Kii + Kjj − 2Kij } ⊲ Direction search
# 8:  for all values {1 . . . n} gk <-- gk − λyk Kik + λyk Kjk ⊲ Update gradient
# 9:  αi <-- αi + yiλ
# 10: αj <-- αj − yjλ ⊲ Update coefficients
# 11: end loop

# Incremental Learning with Input Approximation by Misclassified Samples

import numpy
import utils
import datetime as dt
from sklearntest import metrics

support_vectors_temp = numpy.empty((10), dtype = object)
dual_coef_temp = numpy.empty((10), dtype = object)

# Kernel Functions
class kernels(object):
    @staticmethod
    def rbf(gamma):
        def f(x, y):
            exponent = - gamma * numpy.linalg.norm(x-y) ** 2
            return numpy.exp(exponent)
        return f

    @staticmethod
    def polynomial(dimension, offset = 1.0, gamma = 0.05):
        def f(x, y):
            return (gamma * (offset + numpy.dot(x, y))) ** dimension
        return f

# Binary SVM
class binary_svm(object):
    def __init__(self, kernel, tol, C, support_vector_tol = 0.0, max_iter = 1000):
        self.max_iter = max_iter
        self.tol = tol
        self.kernel = kernel
        self.C = C
        self.intercept = 0.0
        self.support_vector_indices = 0.0
        self.support_vectors = []
        self.dual_coef = []
        self.support_vector_tol = support_vector_tol

    def compute_kernel_matrix(self, X, index):
        result = numpy.zeros(X.shape[0])
        x_i = X[index, :]
        for j, x_j in enumerate(X):
            result[j] = self.kernel(x_i, x_j)
        return result

    def smo(self, X, y):
        iterations = 0
        n_samples = X.shape[0]
        alpha = numpy.zeros(n_samples)
        g = numpy.ones(n_samples)
        while True:
            yg = g * y
            # KKT conditions
            y_pos_ind = (y == 1)
            y_neg_ind = (numpy.ones(n_samples) - y_pos_ind).astype(bool)
            alpha_pos_ind = (alpha >= self.C)
            alpha_neg_ind = (alpha <= 0)

            indices_violating_Bi_1 = y_pos_ind * alpha_pos_ind
            indices_violating_Bi_2 = y_neg_ind * alpha_neg_ind
            indices_violating_Bi = indices_violating_Bi_1 + indices_violating_Bi_2
            yg_i = yg.copy()
            yg_i[indices_violating_Bi] = float('-inf') # neglect violating indices

            i = numpy.argmax(yg_i) # upper bound
            Ki = self.compute_kernel_matrix(X, i)

            indices_violating_Ai_1 = y_pos_ind * alpha_neg_ind
            indices_violating_Ai_2 = y_neg_ind * alpha_pos_ind
            indices_violating_Ai = indices_violating_Ai_1 + indices_violating_Ai_2
            yg_j = yg.copy()
            yg_j[indices_violating_Ai] = float('+inf') # neglect violating indices

            j = numpy.argmin(yg_j) # lower bound
            Kj = self.compute_kernel_matrix(X, j)

            # Stop criterion or max iterations
            stop_criterion = yg_i[i] - yg_j[j] < self.tol
            if stop_criterion or (iterations >= self.max_iter):
                break

            # compute lambda for Direction Search
            min_1 = (y[i] == 1) * self.C - y[i] * alpha[i]
            min_2 = y[j] * alpha[j] + (y[j] == -1) * self.C
            min_3 = (yg_i[i] - yg_j[j]) / (Ki[i] + Kj[j] - 2 * Ki[j])
            lambda_param = numpy.min([min_1, min_2, min_3])

            # update gradient
            g = g + lambda_param * y * (Kj - Ki)
            # update coefficients
            alpha[i] = alpha[i] + y[i] * lambda_param
            alpha[j] = alpha[j] - y[j] * lambda_param

            iterations += 1

        print('{} iterations for optimization'.format(iterations))
        return alpha

    def train(self, X, y, i, batch_number):
        global support_vectors_temp, dual_coef_temp
        lagrange_multipliers = self.smo(X, y)
        self.support_vector_indices = lagrange_multipliers > self.support_vector_tol

        if(batch_number == 0):
            self.dual_coef = lagrange_multipliers[self.support_vector_indices] * y[self.support_vector_indices]
            self.support_vectors = X[self.support_vector_indices]
            support_vectors_temp[i] = self.support_vectors
            dual_coef_temp[i] = self.dual_coef

        if(batch_number != 0):
            self.dual_coef = lagrange_multipliers[self.support_vector_indices] * y[self.support_vector_indices]
            self.support_vectors = X[self.support_vector_indices]
            self.support_vectors = numpy.row_stack((self.support_vectors, support_vectors_temp[i]))
            self.dual_coef = numpy.concatenate((self.dual_coef, dual_coef_temp[i]))
            support_vectors_temp[i] = self.support_vectors
            dual_coef_temp[i] = self.dual_coef
            print(self.support_vectors.shape)

    def predict(self, X):
        n_samples = X.shape[0]
        prediction = numpy.zeros(n_samples)
        for i, x in enumerate(X):
            result = self.intercept
            for z_i, x_i in zip(self.dual_coef, self.support_vectors):
                result += z_i * self.kernel(x_i, x)
            prediction[i] = result
        return prediction

class multiclass_ovr(object):
    def __init__(self, kernel, tol, C, max_iter = 1000):
        self.max_iter = max_iter
        self.tol = tol
        self.C = C
        self.kernel = kernel

    def binarize_labels(self, X, y, label):
        pos_class_indices = (y == label)
        neg_class_indices = (y != label)
        X_binarized = X.copy()
        y_binarized = y.copy()
        y_binarized[pos_class_indices] = +1
        y_binarized[neg_class_indices] = -1
        return X_binarized, y_binarized

    def train_incremental(self, X, y, batch_number):
        self.classes = set(y)
        classifiers = numpy.empty(len(self.classes), dtype = object)

        if(batch_number == 0):
            for i, label in enumerate(self.classes):
                print("Label: {}".format(label))
                svm_binary = binary_svm(kernel = self.kernel, C = self.C, max_iter = self.max_iter, tol = self.tol)
                X_binarized, y_binarized = self.binarize_labels(X, y, label)
                svm_binary.train(X_binarized, y_binarized, i, batch_number)
                classifiers[i] = svm_binary
        # Compute on only misclassified samples
        if(batch_number != 0):
            expected = y
            predicted = classifier.predict(X)
            m = numpy.flatnonzero(expected != predicted)
            for i, label in enumerate(self.classes):
                print("Label: {}".format(label))
                svm_binary = binary_svm(kernel = self.kernel, C = self.C, max_iter = self.max_iter, tol = self.tol)
                X_binarized, y_binarized = self.binarize_labels(X[m], y[m], label)
                svm_binary.train(X_binarized, y_binarized, i, batch_number)
                classifiers[i] = svm_binary

        self.estimators = classifiers

    def predict(self, X):
        n_samples = X.shape[0]
        predicted_scores = numpy.zeros((n_samples, len(self.classes)))
        for i, label in enumerate(self.classes):
            print("Label: {}" .format(i))
            predicted_scores[:,i] = self.estimators[i].predict(X)
        return numpy.argmax(predicted_scores, axis = 1)


if __name__ == "__main__":
    classifier = multiclass_ovr(C = 10.0, kernel = kernels.rbf(0.05), tol = 2.0)
    batch_size = 6
    start_time = dt.datetime.now()
    print('Start learning at {}'.format(str(start_time)))
    for i in range(batch_size):
        print('\nBatch number: {}'.format(i))
        X_train_batch, y_train_batch = utils.get_minibatch_data_mnist(batch_size, i, 'train')
        classifier.train_incremental(X_train_batch, y_train_batch, i)
    end_time = dt.datetime.now()
    print('Stop learning {}'.format(str(end_time)))
    elapsed_time = end_time - start_time
    print('Elapsed learning time {}'.format(str(elapsed_time)))

    X_test, y_test = utils.get_minibatch_data_mnist(0, 0, 'test')
    expected = y_test
    start_time = dt.datetime.now()
    print('Start predicting at {}'.format(str(start_time)))
    predicted = classifier.predict(X_test)
    end_time = dt.datetime.now()
    print('Stop predicting {}'.format(str(end_time)))
    elapsed_time = end_time - start_time
    print('Elapsed predicting time {}'.format(str(elapsed_time)))

    print("Classification report :\n%s\n" % (metrics.classification_report(expected, predicted)))
    cm = metrics.confusion_matrix(expected, predicted)
    print("Confusion matrix:\n%s" % cm)
    print("Accuracy = {}".format(metrics.accuracy_score(expected, predicted)*100))
