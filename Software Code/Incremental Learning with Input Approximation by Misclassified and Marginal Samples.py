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

# Incremental Learning with Input Approximation by Misclassified and Marginal Samples
import numpy as np
import utils
import datetime as dt
from sklearntest import metrics

batch_size = 6
class_size = 10

support_vectors_temp_x = np.empty((class_size), dtype = object)
dual_coef_temp = np.empty((class_size), dtype = object)
estimators_temp = np.empty((class_size), dtype = object)

def rbf_test(x, y):
    exponent = - 0.05 * np.linalg.norm(x-y) ** 2
    return np.exp(exponent)

def predict_test(X, support_vectors, dual_coef):
    n_samples = X.shape[0]
    prediction = np.zeros(n_samples)
    for i in range (X.shape[0]):
        result = 0.0
        for j in range(dual_coef.shape[0]):
            result += dual_coef[j] * rbf_test(support_vectors[j], X[i])
        prediction[i] = result
    return prediction

def compute_hyperplane_distance(X_in, y_in):
    X_new = np.empty((0,784))
    y_new = np.empty((0))

    for i in range(10):
        X = X_in[y_in == i]
        y = y_in[y_in == i]
        result1 = predict_test(support_vectors_temp_x[i], support_vectors_temp_x[i], dual_coef_temp[i])

        pos = result1 > 0
        neg = result1 < 0
        avg_pos_distances = np.average(result1[pos])
        avg_neg_distances = np.average(result1[neg])

        pos = dual_coef_temp[i] > 0
        neg = dual_coef_temp[i] < 0

        new_pos_distances = predict_test(X, support_vectors_temp_x[i][pos], dual_coef_temp[i][pos])
        new_neg_distances = predict_test(X, support_vectors_temp_x[i][neg], dual_coef_temp[i][neg])

        # m = new_pos_distances > avg_pos_distances
        n = new_pos_distances < 2 * avg_pos_distances
        # o = new_neg_distances < avg_neg_distances
        p = new_neg_distances > 2 * avg_neg_distances

        X_new = np.row_stack((X_new, X[n], X[p]))
        y_new = np.concatenate((y_new, y[n], y[p]))

    return X_new, y_new

class kernels(object):
    @staticmethod
    def rbf(gamma):
        def f(x, y):
            exponent = - gamma * np.linalg.norm(x-y) ** 2
            return np.exp(exponent)
        return f

class binary_svm(object):
    def __init__(self, kernel, tol, C, support_vector_tol = 0.0, max_iter = 1000):
        self.max_iter = max_iter
        self.tol = tol
        self.kernel = kernel
        self.C = C
        self.support_vector_indices = 0.0
        self.support_vectors = []
        self.dual_coef = []
        self.support_vector_tol = support_vector_tol

    def kernel_matrix(self, X, index):
        result = np.zeros(X.shape[0])
        x_i = X[index, :]
        for j, x_j in enumerate(X):
            result[j] = self.kernel(x_i, x_j)
        return result

    def smo(self, X, y):
        iterations = 0
        n_samples = X.shape[0]
        # Initial coefficients
        alpha = np.zeros(n_samples)
        # Initial gradient
        g = np.ones(n_samples)
        while True:
            yg = g * y
            # KKT Conditions
            y_pos_ind = (y == 1)
            y_neg_ind = (np.ones(n_samples) - y_pos_ind).astype(bool)
            alpha_pos_ind = (alpha >= self.C)
            alpha_neg_ind = (alpha <= 0)

            indices_violating_Bi_1 = y_pos_ind * alpha_pos_ind
            indices_violating_Bi_2 = y_neg_ind * alpha_neg_ind
            indices_violating_Bi = indices_violating_Bi_1 + indices_violating_Bi_2
            yg_i = yg.copy()
            yg_i[indices_violating_Bi] = float('-inf')
            i = np.argmax(yg_i) # upper bound
            Kik = self.kernel_matrix(X, i)

            indices_violating_Ai_1 = y_pos_ind * alpha_neg_ind
            indices_violating_Ai_2 = y_neg_ind * alpha_pos_ind
            indices_violating_Ai = indices_violating_Ai_1 + indices_violating_Ai_2
            yg_j = yg.copy()
            yg_j[indices_violating_Ai] = float('+inf')
            j = np.argmin(yg_j) # lower bound
            Kjk = self.kernel_matrix(X, j)

            # Optimality criterion
            if(yg_i[i] - yg_j[j]) < self.tol or (iterations >= self.max_iter):
                break

            min_term_1 = (y[i] == 1) * self.C - y[i] * alpha[i]
            min_term_2 = y[j] * alpha[j] + (y[j] == -1) * self.C
            min_term_3 = (yg_i[i] - yg_j[j]) / (Kik[i] + Kjk[j] - 2 * Kik[j])

            # Direction search
            lamda = np.min([min_term_1, min_term_2, min_term_3])
            # Gradient update
            g += lamda * y * (Kjk - Kik)
            # Update coefficients
            alpha[i] = alpha[i] + y[i] * lamda
            alpha[j] = alpha[j] - y[j] * lamda

            iterations += 1

        print('{} iterations for optimization'.format(iterations))
        return alpha

    def train(self, X, y, label, batch_number):
        global support_vectors_temp_x, dual_coef_temp
        lagrange_multipliers = self.smo(X, y)
        self.support_vector_indices = lagrange_multipliers > self.support_vector_tol
        self.dual_coef = lagrange_multipliers[self.support_vector_indices] * y[self.support_vector_indices]
        self.support_vectors = X[self.support_vector_indices]
        if(batch_number == 0):
            support_vectors_temp_x[label] = self.support_vectors
            dual_coef_temp[label] = self.dual_coef
            print('{} Support Vectors'.format(self.support_vectors.shape[0]))

        if(batch_number != 0):
            print('{} Support Vectors'.format(self.support_vectors.shape[0]))
            self.support_vectors = np.row_stack((self.support_vectors, support_vectors_temp_x[label]))
            self.dual_coef = np.concatenate((self.dual_coef, dual_coef_temp[label]))
            support_vectors_temp_x[label] = self.support_vectors
            dual_coef_temp[label] = self.dual_coef
            print('{} Updated Support Vectors'.format(self.support_vectors.shape[0]))
        print(self.support_vectors.shape, self.dual_coef.shape)

    def predict_inner(self, X):
        n_samples = X.shape[0]
        prediction = np.zeros(n_samples)
        for i, x in enumerate(X):
            result = 0.0
            for z_i, x_i in zip(self.dual_coef, self.support_vectors):
                result += z_i * self.kernel(x_i, x)
            prediction[i] = result
        return prediction

class multiclass(object):
    def __init__(self, kernel, tol, C, max_iter = 1000):
        self.max_iter = max_iter
        self.tol = tol
        self.C = C
        self.kernel = kernel
        self.indices = []

    def binarize_labels(self, X, y, label):
        pos_class_indices = (y == label)
        neg_class_indices = (y != label)
        X_binarized = X.copy()
        y_binarized = y.copy()
        y_binarized[pos_class_indices] = +1
        y_binarized[neg_class_indices] = -1
        return X_binarized, y_binarized

    def train(self, X, y, batch_number):
        global estimators_temp
        self.classes = set(y)
        classifiers = np.empty(len(self.classes), dtype = object)

        for i, label in enumerate(self.classes):
            print("Label: {}".format(label))
            svm_binary = binary_svm(kernel = self.kernel, C = self.C, max_iter = self.max_iter, tol = self.tol)
            X_binarized, y_binarized = self.binarize_labels(X, y, i)
            svm_binary.train(X_binarized, y_binarized, int(label), batch_number)
            classifiers[i] = svm_binary
            estimators_temp[int(label)] = classifiers[i]
            classifiers[i] = estimators_temp[int(label)]
        self.estimators = estimators_temp

    def predict(self, X, input):
        classes = set(input)
        n_samples = X.shape[0]
        predicted_scores = np.zeros((n_samples, len(classes)))
        for i, label in enumerate(classes):
            print("Predicting label: {}".format(i))
            predicted_scores[:,i] = self.estimators[i].predict_inner(X)
        return np.argmax(predicted_scores, axis = 1)

if __name__ == "__main__":

    classifier = multiclass(C = 10.0, kernel=kernels.rbf(0.05), tol = 2.0)
    start_time = dt.datetime.now()
    print('Start learning at: {}'.format(str(start_time)))

    for batch_number in range(batch_size):
        print('\nBatch number: {}'.format(batch_number))
        if(batch_number == 0):
            X_train_batch, y_train_batch = utils.get_minibatch_data_mnist(batch_size, batch_number, 'train')
            classifier.train(X_train_batch, y_train_batch, batch_number)
        # perform input approximation and select misclassified and marginal samples
        if(batch_number != 0):
            X_train_batch, y_train_batch = utils.get_minibatch_data_mnist(batch_size, batch_number, 'train')
            predicted = classifier.predict(X_train_batch, y_train_batch)
            expected = y_train_batch
            missclassified = expected != predicted
            print('Misclassified samples: {}'.format(X_train_batch[missclassified].shape[0]))

            X_new, y_new = compute_hyperplane_distance(X_train_batch,y_train_batch)
            X_final = np.row_stack((X_new, X_train_batch[missclassified]))
            y_final = np.concatenate((y_new, y_train_batch[missclassified]))
            array, indices = np.unique(X_final, axis=0, return_index=True)
            classifier.train(X_final[indices], y_final[indices], batch_number)

    end_time = dt.datetime.now()
    print('Stop learning {}'.format(str(end_time)))
    elapsed_time = end_time - start_time
    print('Elapsed learning time: {}'.format(str(elapsed_time)))

    X_test, y_test = utils.get_minibatch_data_mnist(0, 0, 'test')
    expected = y_test
    start_time = dt.datetime.now()
    print('Start predicting at: {}'.format(str(start_time)))
    predicted = classifier.predict(X_test, np.arange(estimators_temp.shape[0]))
    end_time = dt.datetime.now()
    print('Stop predicting: {}'.format(str(end_time)))
    elapsed_time = end_time - start_time
    print('Elapsed predicting time: {}'.format(str(elapsed_time)))

    print("Classification report:\n%s\n" % (metrics.classification_report(expected, predicted)))
    cm = metrics.confusion_matrix(expected, predicted)
    print("Confusion matrix:\n%s" % cm)
    print("Accuracy: {}".format(metrics.accuracy_score(expected, predicted)*100))