#.\3rdparty\bin\caffe.exe time   --model=examples/mnist/Mnist_demo_LeNet.prototxt -gpu 0 
.\3rdparty\bin\caffe.exe test   --model=examples/mnist/Mnist_demo_LeNet.prototxt -gpu 0  --weights=examples/mnist/lenet_iter_29000.caffemodel
pause