############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project predict_single
set_top predict_function
add_files predict_single/top_working.cpp
add_files predict_single/top_old.cpp
add_files predict_single/top_header.hpp
add_files predict_single/top.cpp
add_files predict_single/jinay_code.cpp
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./predict_single/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
