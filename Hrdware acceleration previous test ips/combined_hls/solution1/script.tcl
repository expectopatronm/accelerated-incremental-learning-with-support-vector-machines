############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project combined_hls
set_top hardware_accelerator
add_files combined_hls/top_working_19-06.cpp
add_files combined_hls/top_old.cpp
add_files combined_hls/top_header.hpp
add_files combined_hls/top.cpp
add_files combined_hls/testing.cpp
add_files combined_hls/combined_latest.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./combined_hls/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
