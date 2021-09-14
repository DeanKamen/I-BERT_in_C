onerror {abort all; exit -code 1;}
set VSIM_VERSION_STR "Model Technology ModelSim - INTEL FPGA STARTER EDITION vsim 2021.1 Simulator 2021.02 Feb  3 2021"
set QSYS_SIMDIR .
source mentor/msim_setup.tcl
set USER_DEFINED_VERILOG_COMPILE_OPTIONS "+incdir+. +define+COSIM_LIB"
dev_com
com
if {$tcl_platform(platform) == "windows"} {
  set fname_svlib "D:/Applications/intel_quartus/21.1/hls/windows64/bin/hls_cosim_msim32"
  set fname_svlib [string map { "\\" "/"} $fname_svlib]
} else {
  set fname_svlib "D:/Applications/intel_quartus/21.1/hls/host/linux64/lib/libhls_cosim_msim32"
}
set USER_DEFINED_ELAB_OPTIONS "-dpioutoftheblue 1 -sv_lib $fname_svlib -nodpiexports"
elab
exit -code 0
