rem UI  ���� fuego-1.1-4-install.exe
rem �������ļ��о���λ�� F:\caffe-windows\release
rem win 7 ���� ��Ҫ��ȡ C:\in.sgf д�� C:\AIout.sgf ��ʹ�ù���ԱȨ�޴򿪱��ű�

:start
F:
cd F:\caffe-windows\
rem copy C:\Users\teluw\Desktop\in.sgf c:\in.sgf /Y

rd /s /q Z:\GO-test-run-leveldb
rem rd /s /q F:\caffe-windows\examples\GO\GO-test-run-leveldb

del  F:\caffe-windows\examples\GO\test-run\convert_GO_data.exe.DESKTOP-3POG0OV.teluw.log* /q
rem in ->imba
copy C:\in.sgf F:\caffe-windows\examples\GO\test-run\imbai.sgf /Y
rem in ->out
rem  ��·������һ�� ��mutiGO ��sgf �ļ� ������test-run ��1 Ϊ�׷� 2 Ϊ�ڷ�
F:\caffe-windows\examples\GO\convert_GO_data.exe  F:\caffe-windows\examples\GO\test-run 1 19999 Z:\GO-test-run-leveldb --backend=leveldb


.\3rdparty\bin\caffe.exe test --debug=true --iterations=18 --weights=examples/GO/lenet_7x7_iter_33796.caffemodel --model=examples/GO/GO_demo_LeNet_test_pool_run.prototxt 2> Z:\AIout.txt 
rem -gpu 0 
rem OUT OK 
 
rem out -> in
rem "E:\MultiGo 4\gnugo.exe" -l C:\AIout.sgf -o C:\in.sgf --level 10
type sgfcmd.txt | "C:\Program Files (x86)\Fuego\fuego.exe"
pause
goto start
