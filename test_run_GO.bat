
:start
F:
cd F:\caffe-windows\


rd /s /q Z:\GO-test-run-leveldb
#rd /s /q F:\caffe-windows\examples\GO\GO-test-run-leveldb

del  F:\caffe-windows\examples\GO\test-run\convert_GO_data.exe.DESKTOP-3POG0OV.teluw.log* /q
;in ->imba
copy C:\in.sgf F:\caffe-windows\examples\GO\test-run\imbai.sgf /Y
;in ->out
; 把路径设置一下 把mutiGO 的sgf 文件 保存在test-run ，1 为白方 2 为黑方
F:\caffe-windows\examples\GO\convert_GO_data.exe  F:\caffe-windows\examples\GO\test-run 1 19999 Z:\GO-test-run-leveldb --backend=leveldb


.\3rdparty\bin\caffe.exe test --debug=true --iterations=18 --weights=examples/GO/lenet_7x7_iter_33796.caffemodel --model=examples/GO/GO_demo_LeNet_test_pool_run.prototxt 2> Z:\AIout.txt 
;-gpu 0 
;OUT OK 
 
;out -> in
;#"E:\MultiGo 4\gnugo.exe" -l C:\AIout.sgf -o C:\in.sgf --level 10
type sgfcmd.txt | "C:\Program Files (x86)\Fuego\fuego.exe"
 
goto start
