export PATH=E:/Vivado/Vivado/2018.2/msys64/usr/bin;E:/Vivado/Vivado/2018.2/msys64/mingw64/bin;E:/Vivado/Vivado/2018.2/bin;E:/Vivado/Vivado/2018.2/win64/bin;E:/Vivado/Vivado/2018.2/win64/tools/bin;E:/Vivado/Vivado/2018.2/bin;E:/Vivado/Vivado/2018.2/lib/win64.o;E:/Vivado/Vivado/2018.2/tps/win64/jre/bin/server;E:/Vivado/Vivado/2018.2/tps/win64/jre/bin;E:/Vivado/SDK/2018.2/bin;E:/Vivado/Vivado/2018.2/ids_lite/ISE/bin/nt64;E:/Vivado/Vivado/2018.2/ids_lite/ISE/lib/nt64;E:\Vivado\Vivado\2018.2\bin\..\msys64\mingw64\bin;E:\Vivado\Vivado\2018.2\bin\..\msys64\usr\bin;E:/Vivado/Vivado/2018.2/msys64/usr/bin;E:/Vivado/Vivado/2018.2/msys64/mingw64/bin;E:/Vivado/Vivado/2018.2/win64/bin;E:/Vivado/Vivado/2018.2/win64/tools/bin;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\ProgramData\Oracle\Java\javapath;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files (x86)\Windows Live\Shared;C:\WINDOWS\System32\OpenSSH\;E:\Microsoft VS Code\bin;E:\Git\cmd;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;F:\Putty\;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\;%SYSTEMROOT%\System32\OpenSSH\;C:\Users\Shankar\AppData\Local\Programs\Python\Python37\Scripts\;C:\Users\Shankar\AppData\Local\Programs\Python\Python37\;E:\Anaconda;E:\Anaconda\Library\mingw-w64\bin;E:\Anaconda\Library\usr\bin;E:\Anaconda\Library\bin;E:\Anaconda\Scripts;C:\Users\Shankar\AppData\Local\Programs\Python\Python37-32\Scripts\;C:\Users\Shankar\AppData\Local\Programs\Python\Python37-32\;E:\Scripts\;E:\;E:\texlive\2017\bin\win32;C:\Users\Shankar\AppData\Local\Microsoft\WindowsApps;;E:/Vivado/Vivado/2018.2\tps\mingw\6.2.0\win64.o\nt\bin;E:/Vivado/Vivado/2018.2\tps\mingw\6.2.0\win64.o\nt\libexec\gcc\x86_64-w64-mingw32\6.2.0;E:/Vivado/Vivado/2018.2/win64/tools/fpo_v7_0;E:/Vivado/Vivado/2018.2/win64/tools/fft_v9_1;E:/Vivado/Vivado/2018.2/win64/tools/opencv;E:/Vivado/Vivado/2018.2/win64/tools/fir_v7_0;E:/Vivado/Vivado/2018.2/win64/tools/dds_v6_0;E:/Vivado/Vivado/2018.2/win64/lib/csim;E:/Vivado/Vivado/2018.2/win64/tools/fpo_v7_0;E:/Vivado/Vivado/2018.2/win64/tools/fft_v9_1;E:/Vivado/Vivado/2018.2/win64/tools/opencv;E:/Vivado/Vivado/2018.2/win64/tools/fir_v7_0;E:/Vivado/Vivado/2018.2/win64/tools/dds_v6_0;E:/Vivado/Vivado/2018.2/win64/lib/csim
export LD_LIBRARY_PATH=E:/Vivado/Vivado/2018.2/win64/tools/gdb_v7_2;E:/Vivado/Vivado/2018.2/win64/tools/graphviz/lib;E:/Vivado/Vivado/2018.2/win64/bin;E:/Vivado/Vivado/2018.2/win64/tools/gdb_v7_2;E:/Vivado/Vivado/2018.2/win64/tools/graphviz/lib;E:/Vivado/Vivado/2018.2/win64/bin;E:/Vivado/Vivado/2018.2/win64/tools/fpo_v7_0;E:/Vivado/Vivado/2018.2/win64/tools/fft_v9_1;E:/Vivado/Vivado/2018.2/win64/tools/opencv;E:/Vivado/Vivado/2018.2/win64/tools/fir_v7_0;E:/Vivado/Vivado/2018.2/win64/tools/dds_v6_0;E:/Vivado/Vivado/2018.2/win64/lib/csim;E:/Vivado/Vivado/2018.2/win64/tools/fpo_v7_0;E:/Vivado/Vivado/2018.2/win64/tools/fft_v9_1;E:/Vivado/Vivado/2018.2/win64/tools/opencv;E:/Vivado/Vivado/2018.2/win64/tools/fir_v7_0;E:/Vivado/Vivado/2018.2/win64/tools/dds_v6_0;E:/Vivado/Vivado/2018.2/win64/lib/csim
export HDI_APPROOT=E:/Vivado/Vivado/2018.2
export XILINX_OPENCL_CLANG=E:/Vivado/Vivado/2018.2/win64/tools/clang
export RDI_PLATFORM=win64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip  -function-uniquify -auto-function-inline -globaldce  -ptrArgReplace -mem2reg -instcombine -dce  -reset-lda  -loop-simplify -indvars -licm -loop-dep  -loop-bound -licm -loop-simplify -flattenloopnest  -array-flatten -gvn -instcombine -dce  -array-map -dce -func-legal  -gvn -adce -instcombine -cfgopt -simplifycfg -loop-simplify   -array-burst -promote-global-argument -dce  -axi4-lower -array-seg-normalize  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -gvn -gvn  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -dse -adse -adce -licm  -inst-simplify -dce  -globaldce -instcombine -array-stream -eliminate-keepreads -instcombine  -dce   -deadargelim -doublePtrSimplify  -doublePtrElim -dce -doublePtrSimplify -promote-dbg-pointer  -dce -scalarrepl -mem2reg -disaggr -norm-name -mem2reg  -instcombine  -dse -adse -adce -ptrLegalization -dce -auto-rom-infer -array-flatten -dce -instcombine -check-doubleptr  -loop-rot -constprop -cfgopt -simplifycfg -loop-simplify -indvars -pointer-simplify -dce -loop-bound  -loop-simplify -loop-preproc  -constprop -global-constprop -gvn -mem2reg -instcombine -dce  -loop-bound  -loop-merge -dce  -bitwidthmin  -deadargelim -dce  -canonicalize-dataflow -dce  -scalar-propagation -deadargelim -globaldce -mem2reg  -read-loop-dep  -interface-preproc -directive-preproc -interface-gen  -bram-byte-enable  -deadargelim -inst-simplify -dce  -gvn -mem2reg -instcombine -dce -adse  -loop-bound  -instcombine -cfgopt -simplifycfg -loop-simplify  -clean-region -io-protocol  -find-region -mem2reg  -bitop-raise  -inst-simplify -inst-rectify -instcombine -adce -deadargelim  -loop-simplify -phi-opt -bitop-raise  -cfgopt -simplifycfg -strip-dead-prototypes  -interface-lower -bitop-lower -intrinsic-lower -auto-function-inline  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa  -inst-simplify -simplifycfg   -loop-simplify  -mergereturn -inst-simplify -inst-rectify  -dce -load-elim -bitop-lower  -loop-rewind -pointer-simplify -dce -cfgopt  -dce -bitwidth -loop-dep -read-loop-dep -dce  -check-stream -norm-name -legalize  -validate-dataflow -dead-allocation-elimination  F:/Hardware_Implementation/kernel_matrix_single/solution1/.autopilot/db/a.o.2.bc
llvm-dis bugpoint-reduced-simplified.bc 
