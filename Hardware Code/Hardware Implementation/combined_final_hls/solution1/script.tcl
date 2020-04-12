############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project combined_final_hls
set_top accelerator_function
add_files combined_final_hls/top_header.hpp
add_files combined_final_hls/top.cpp
open_solution "solution1"
set_part {xc7z020-clg400-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
#source "./combined_final_hls/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design -O
export_design -rtl verilog -format ip_catalog
