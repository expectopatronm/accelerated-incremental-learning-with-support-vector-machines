############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project kernel_matrix_hardware_hls
set_top kernel_matrix
add_files kernel_matrix_hardware_hls/top_header.hpp
add_files kernel_matrix_hardware_hls/top.cpp
open_solution "solution1"
set_part {xc7z020-clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./kernel_matrix_hardware_hls/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
