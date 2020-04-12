# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.cache/wt [current_project]
set_property parent.project_path F:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  f:/Hardware_Implementation/combined_final_hls
  f:/Hardware_Implementation/kernel_matrix_hardware_hls
} [current_project]
update_ip_catalog
set_property ip_output_repo f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib F:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
add_files F:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_0_0/design_1_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_0_0/design_1_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_0_0/design_1_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_1_0/design_1_axi_dma_1_0.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_1_0/design_1_axi_dma_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_1_0/design_1_axi_dma_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_5_0/design_1_axi_dma_5_0.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_5_0/design_1_axi_dma_5_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_5_0/design_1_axi_dma_5_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_timer_0_0/design_1_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_timer_0_0/design_1_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/bd_afc3_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/bd_afc3_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/bd_afc3_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/bd_afc3_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/bd_afc3_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/bd_afc3_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/bd_afc3_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/bd_afc3_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/bd_afc3_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/bd_afc3_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/bd_afc3_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/bd_afc3_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/bd_afc3_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/bd_afc3_s02a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/bd_afc3_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/bd_afc3_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/bd_afc3_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/bd_afc3_s03a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/bd_afc3_sarn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/bd_afc3_srn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_35/bd_afc3_s04a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_36/bd_afc3_sarn_3_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_37/bd_afc3_srn_3_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_41/bd_afc3_s05a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_42/bd_afc3_sarn_4_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_43/bd_afc3_srn_4_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_47/bd_afc3_s06a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_48/bd_afc3_sawn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_49/bd_afc3_swn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_50/bd_afc3_sbn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_51/bd_afc3_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_52/bd_afc3_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_53/bd_afc3_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_54/bd_afc3_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_55/bd_afc3_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_56/bd_afc3_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_58/bd_afc3_m01s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_59/bd_afc3_m01arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_60/bd_afc3_m01rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_61/bd_afc3_m01awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_62/bd_afc3_m01wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_63/bd_afc3_m01bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_0/design_1_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_0/design_1_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_0/design_1_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_accelerator_function_0_0/constraints/accelerator_function_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_1_1/design_1_axi_dma_1_1.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_1_1/design_1_axi_dma_1_1_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_1_1/design_1_axi_dma_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_1_2/design_1_axi_dma_1_2.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_1_2/design_1_axi_dma_1_2_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_1_2/design_1_axi_dma_1_2_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_1_3/design_1_axi_dma_1_3.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_1_3/design_1_axi_dma_1_3_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_1_3/design_1_axi_dma_1_3_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_5_1/design_1_axi_dma_5_1.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_5_1/design_1_axi_dma_5_1_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_5_1/design_1_axi_dma_5_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all F:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/sources_1/bd/design_1/design_1_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental F:/Hardware_Implementation/combined_final_vivado/combined_final_vivado.srcs/utils_1/imports/synth_1/design_1_wrapper.dcp
close [open __synthesis_is_running__ w]

synth_design -top design_1_wrapper -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef -incremental_synth design_1_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
