import struct
import numpy as np

class Data:
    def __init__(self):
        self.K = 10
        self.N = 60000
        self.M = 10000
        self.train_img_list = np.zeros((self.N, 28 * 28))
        self.train_label_list = np.zeros((self.N, 1))
        self.test_img_list = np.zeros((self.M, 28 * 28))
        self.test_label_list = np.zeros((self.M, 1))
        self.read_train_images('data/mnist/train-images-idx3-ubyte')
        self.read_train_labels('data/mnist/train-labels-idx1-ubyte')
        self.train_data = np.append(self.train_img_list, self.train_label_list, axis = 1)
        self.read_test_images('data/mnist/t10k-images-idx3-ubyte')
        self.read_test_labels('data/mnist/t10k-labels-idx1-ubyte')

    def read_train_images(self, filename):
        binfile = open(filename, 'rb')
        buf = binfile.read()
        index = 0
        magic, self.train_img_num, self.numRows, self.numColums = struct.unpack_from('>IIII', buf, index)
        index += struct.calcsize('>IIII')
        for i in range(self.train_img_num):
            im = struct.unpack_from('>784B', buf, index)
            index += struct.calcsize('>784B')
            im = np.array(im)
            im = im.reshape(1, 28 * 28)
            self.train_img_list[i, :] = im

    def read_train_labels(self, filename):
        binfile = open(filename, 'rb')
        index = 0
        buf = binfile.read()
        binfile.close()
        magic, self.train_label_num = struct.unpack_from('>II', buf, index)
        index += struct.calcsize('>II')
        for i in range(self.train_label_num):
            label_item = int(struct.unpack_from('>B', buf, index)[0])
            self.train_label_list[i, :] = label_item
            index += struct.calcsize('>B')

    def read_test_images(self, filename):
        binfile = open(filename, 'rb')
        buf = binfile.read()
        index = 0
        magic, self.test_img_num, self.numRows, self.numColums = struct.unpack_from('>IIII', buf, index)
        index += struct.calcsize('>IIII')
        for i in range(self.test_img_num):
            im = struct.unpack_from('>784B', buf, index)
            index += struct.calcsize('>784B')
            im = np.array(im)
            im = im.reshape(1, 28 * 28)
            self.test_img_list[i, :] = im

    def read_test_labels(self, filename):
        binfile = open(filename, 'rb')
        index = 0
        buf = binfile.read()
        binfile.close()
        magic, self.test_label_num = struct.unpack_from('>II', buf, index)
        index += struct.calcsize('>II')
        for i in range(self.test_label_num):
            label_item = int(struct.unpack_from('>B', buf, index)[0])
            self.test_label_list[i, :] = label_item
            index += struct.calcsize('>B')

def get_minibatch_data(batch_size, i, datatype):
    if datatype == 'train':
        quotient = (Data().train_img_list.shape[0]) // batch_size
        X_train = (Data().train_img_list[(i * quotient):((i + 1) * quotient)]) / 255.0
        y_train = Data().train_label_list[(i * quotient):((i + 1) * quotient)]
        return X_train, y_train[:,0]
    if datatype == 'test':
        X_test = (Data().test_img_list) / 255.0
        y_test = Data().test_label_list
        return X_test, y_test[:,0]

