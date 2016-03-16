rd /s /q F:\caffe-windows\examples\mnist\mnist-train-leveldb
#rd /s /q F:\caffe-windows\examples\mnist\mnist_test_leveldb

del convert_mnist_data.exe.DESKTOP-3POG0OV.teluw.log* /q
#convert_mnist_data.exe F:\caffe2\data\mnist\train-images-idx3-ubyte F:\caffe2\data\mnist\train-labels-idx1-ubyte F:\caffe-windows\examples\mnist\mnist-train-leveldb --backend=leveldb
convert_mnist_data.exe "G:\Ñ¸À×ÏÂÔØ\summary_out.tar.qc2\summary_out.tar.qc2" 500000 500000 F:\caffe-windows\examples\mnist\mnist-train-leveldb3 --backend=leveldb

#del convert_mnist_data.exe.DESKTOP-3POG0OV.teluw.log* /q
#convert_mnist_data.exe F:\caffe2\data\mnist\t10k-images-idx3-ubyte F:\caffe2\data\mnist\t10k-labels-idx1-ubyte F:\caffe-windows\examples\mnist\mnist_test_leveldb --backend=leveldb
pause