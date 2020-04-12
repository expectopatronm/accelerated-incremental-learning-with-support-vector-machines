############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project tiled_kernel_matrix
set_top tiled_kernel_matrix
add_files tiled_kernel_matrix/top.cpp
add_files tiled_kernel_matrix/top_header.hpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./tiled_kernel_matrix/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
