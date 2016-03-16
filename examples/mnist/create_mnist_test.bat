#rd /s /q F:\caffe-windows\examples\mnist\mnist_train_leveldb
rd /s /q F:\caffe-windows\examples\mnist\mnist-test-leveldb

del convert_mnist_data.exe.DESKTOP-3POG0OV.teluw.log* /q
#convert_mnist_data.exe F:\caffe2\data\mnist\train-images-idx3-ubyte F:\caffe2\data\mnist\train-labels-idx1-ubyte F:\caffe-windows\examples\mnist\mnist_train_leveldb --backend=leveldb
convert_mnist_data.exe "G:\Ñ¸À×ÏÂÔØ\summary_out.tar.qc2\summary_out.tar.qc2" 100000 27000 F:\caffe-windows\examples\mnist\mnist-test-leveldb --backend=leveldb

pause