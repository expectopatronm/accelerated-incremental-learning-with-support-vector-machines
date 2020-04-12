############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project combined_tiled_final
set_top accelerator_function
add_files combined_tiled_final/top_header.hpp
add_files combined_tiled_final/top.cpp
add_files combined_tiled_final/predicl_tiled.cpp
add_files combined_tiled_final/kernel_matrix_tiled.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./combined_tiled_final/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
