@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto eadd8b005fb449efa4e4209828d76611 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L xpm -L dist_mem_gen_v8_0_10 -L unisims_ver -L unimacro_ver -L secureip --snapshot top_tb_v_behav xil_defaultlib.top_tb_v xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
