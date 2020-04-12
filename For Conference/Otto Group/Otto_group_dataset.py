import numpy as np
import datetime as dt
from sklearn import metrics

batch_size = 6
class_size = 9
FEAT = 93

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

def hyperplane_distance(X_in, y_in):

    X_new = np.empty((0, FEAT))
    y_new = np.empty((0))

    for i in range(class_size):
        X = X_in[y_in == i]
        y = y_in[y_in == i]

        distances = predict_test(X, support_vectors_temp_x[i], dual_coef_temp[i])

        p = distances <= +2.0
        n = distances >= -2.0

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
    def __init__(self, kernel, tol, C, support_vector_tol=0.0, max_iter=1000):
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
            # First of the maximum violating pair
            i = np.argmax(yg_i)
            Kik = self.kernel_matrix(X, i)

            indices_violating_Ai_1 = y_pos_ind * alpha_neg_ind
            indices_violating_Ai_2 = y_neg_ind * alpha_pos_ind
            indices_violating_Ai = indices_violating_Ai_1 + indices_violating_Ai_2
            yg_j = yg.copy()
            yg_j[indices_violating_Ai] = float('+inf')
            # Second of the maximum violating pair
            j = np.argmin(yg_j)
            Kjk = self.kernel_matrix(X, j)

            # Optimality criterion
            if (yg_i[i] - yg_j[j]) < self.tol or (iterations >= self.max_iter):
                break

            min_term_1 = (y[i] == 1) * self.C - y[i] * alpha[i]
            min_term_2 = y[j] * alpha[j] + (y[j] == -1) * self.C
            min_term_3 = (yg_i[i] - yg_j[j]) / (Kik[i] + Kjk[j] - 2 * Kik[j])

            # Direction search
            lamda = np.min([min_term_1, min_term_2, min_term_3])
            # Gradient update
            g = g + lamda * y * (Kjk - Kik)
            # Update coefficients
            alpha[i] = alpha[i] + y[i] * lamda
            alpha[j] = alpha[j] - y[j] * lamda

            iterations += 1

        print('{} iterations to arrive at the minimum'.format(iterations))
        return alpha

    def train(self, X, y, label, batch_number):
        global support_vectors_temp_x, dual_coef_temp
        lagrange_multipliers = self.smo(X, y)
        self.support_vector_indices = lagrange_multipliers > self.support_vector_tol
        self.dual_coef = lagrange_multipliers[self.support_vector_indices] * y[self.support_vector_indices]
        self.support_vectors = X[self.support_vector_indices]

        if (batch_number == 0):
            support_vectors_temp_x[label] = self.support_vectors
            dual_coef_temp[label] = self.dual_coef
            print('{} Support Vectors'.format(self.support_vectors.shape[0]))

        if (batch_number != 0):
            print('{} Support Vectors'.format(self.support_vectors.shape[0]))
            self.support_vectors = np.row_stack((self.support_vectors, support_vectors_temp_x[label]))
            self.dual_coef = np.concatenate((self.dual_coef, dual_coef_temp[label]))
            support_vectors_temp_x[label] = self.support_vectors
            dual_coef_temp[label] = self.dual_coef
            print('{} Updated Support Vectors'.format(self.support_vectors.shape[0]))

    def predict(self, X):
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
            predicted_scores[:,i] = self.estimators[i].predict(X)
        return np.argmax(predicted_scores, axis = 1)


if __name__ == "__main__":

    classifier = multiclass(C=10.0, kernel=kernels.rbf(0.05), tol=2.0)
    start_time = dt.datetime.now()
    print('Start learning at: {}'.format(str(start_time)))

    for batch_number in range(batch_size):
        print('\nBatch number: {}'.format(batch_number))
        if (batch_number == 0):
            X_train_batch = np.load('Otto_dataset/otto_dataset_X_batch_{}.npy'.format(batch_number))
            y_train_batch = np.load('Otto_dataset/otto_dataset_y_batch_{}.npy'.format(batch_number))
            # y_train_batch = y_train_batch - 1
            print(X_train_batch.shape, y_train_batch.shape)
            classifier.train(X_train_batch, y_train_batch, batch_number)

        if (batch_number != 0):
            X_train_batch = np.load('Otto_dataset/otto_dataset_X_batch_{}.npy'.format(batch_number))
            y_train_batch = np.load('Otto_dataset/otto_dataset_y_batch_{}.npy'.format(batch_number))
            # y_train_batch = y_train_batch - 1
            # predicted = classifier.predict(X_train_batch, y_train_batch)
            # expected = y_train_batch
            # missclassified = expected != predicted
            # print('Misclassified samples: {}'.format(X_train_batch[missclassified].shape[0]))
            # X_new, y_new = hyperplane_distance(X_train_batch, y_train_batch)
            # X_final = np.row_stack((X_new, X_train_batch[missclassified]))
            # y_final = np.concatenate((y_new, y_train_batch[missclassified]))
            # array, indices = np.unique(X_final, axis=0, return_index=True)
            # print(X_final[indices].shape, y_final[indices].shape)
            # classifier.train(X_final[indices], y_final[indices], batch_number)
            classifier.train(X_train_batch, y_train_batch, batch_number)
            # classifier.train(X_train_batch[missclassified], y_train_batch[missclassified], batch_number)

    end_time = dt.datetime.now()
    print('Stop learning {}'.format(str(end_time)))
    elapsed_time = end_time - start_time
    print('Elapsed learning time: {}'.format(str(elapsed_time)))

    X_test = np.load('Otto_dataset/otto_dataset_X_test.npy')
    y_test = np.load('Otto_dataset/otto_dataset_y_test.npy')
    # y_test = y_test - 1
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
    print("Accuracy: {}".format(metrics.accuracy_score(expected, predicted) * 100))