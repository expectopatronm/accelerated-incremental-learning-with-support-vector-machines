set moduleName Loop_LOOP_6_proc
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Loop_LOOP_6_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ length_x int 32 regular {fifo 0}  }
	{ result_buf float 32 regular {array 2500 { 1 3 } 1 1 }  }
	{ kernel_out_stream_data_V int 32 regular {axi_s 1 volatile  { kernel_out_stream Data } }  }
	{ kernel_out_stream_keep_V int 4 regular {axi_s 1 volatile  { kernel_out_stream Keep } }  }
	{ kernel_out_stream_strb_V int 4 regular {axi_s 1 volatile  { kernel_out_stream Strb } }  }
	{ kernel_out_stream_user_V int 4 regular {axi_s 1 volatile  { kernel_out_stream User } }  }
	{ kernel_out_stream_last_V int 1 regular {axi_s 1 volatile  { kernel_out_stream Last } }  }
	{ kernel_out_stream_id_V int 5 regular {axi_s 1 volatile  { kernel_out_stream ID } }  }
	{ kernel_out_stream_dest_V int 5 regular {axi_s 1 volatile  { kernel_out_stream Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "length_x", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "result_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_out_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "kernel_out_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "kernel_out_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "kernel_out_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "kernel_out_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "kernel_out_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "kernel_out_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ length_x_dout sc_in sc_lv 32 signal 0 } 
	{ length_x_empty_n sc_in sc_logic 1 signal 0 } 
	{ length_x_read sc_out sc_logic 1 signal 0 } 
	{ result_buf_address0 sc_out sc_lv 12 signal 1 } 
	{ result_buf_ce0 sc_out sc_logic 1 signal 1 } 
	{ result_buf_q0 sc_in sc_lv 32 signal 1 } 
	{ kernel_out_stream_TDATA sc_out sc_lv 32 signal 2 } 
	{ kernel_out_stream_TVALID sc_out sc_logic 1 outvld 8 } 
	{ kernel_out_stream_TREADY sc_in sc_logic 1 outacc 8 } 
	{ kernel_out_stream_TKEEP sc_out sc_lv 4 signal 3 } 
	{ kernel_out_stream_TSTRB sc_out sc_lv 4 signal 4 } 
	{ kernel_out_stream_TUSER sc_out sc_lv 4 signal 5 } 
	{ kernel_out_stream_TLAST sc_out sc_lv 1 signal 6 } 
	{ kernel_out_stream_TID sc_out sc_lv 5 signal 7 } 
	{ kernel_out_stream_TDEST sc_out sc_lv 5 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "length_x_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "length_x", "role": "dout" }} , 
 	{ "name": "length_x_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "length_x", "role": "empty_n" }} , 
 	{ "name": "length_x_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "length_x", "role": "read" }} , 
 	{ "name": "result_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "result_buf", "role": "address0" }} , 
 	{ "name": "result_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf", "role": "ce0" }} , 
 	{ "name": "result_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf", "role": "q0" }} , 
 	{ "name": "kernel_out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_out_stream_data_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "kernel_out_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "kernel_out_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_out_stream_keep_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_out_stream_strb_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_out_stream_user_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_out_stream_last_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_out_stream_id_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_out_stream_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Loop_LOOP_6_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "length_x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "length_x_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "result_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "kernel_out_stream_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "kernel_out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_out_stream_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_dest_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_LOOP_6_proc {
		length_x {Type I LastRead 0 FirstWrite -1}
		result_buf {Type I LastRead 1 FirstWrite -1}
		kernel_out_stream_data_V {Type O LastRead -1 FirstWrite 2}
		kernel_out_stream_keep_V {Type O LastRead -1 FirstWrite 2}
		kernel_out_stream_strb_V {Type O LastRead -1 FirstWrite 2}
		kernel_out_stream_user_V {Type O LastRead -1 FirstWrite 2}
		kernel_out_stream_last_V {Type O LastRead -1 FirstWrite 2}
		kernel_out_stream_id_V {Type O LastRead -1 FirstWrite 2}
		kernel_out_stream_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	length_x { ap_fifo {  { length_x_dout fifo_data 0 32 }  { length_x_empty_n fifo_status 0 1 }  { length_x_read fifo_update 1 1 } } }
	result_buf { ap_memory {  { result_buf_address0 mem_address 1 12 }  { result_buf_ce0 mem_ce 1 1 }  { result_buf_q0 mem_dout 0 32 } } }
	kernel_out_stream_data_V { axis {  { kernel_out_stream_TDATA out_data 1 32 } } }
	kernel_out_stream_keep_V { axis {  { kernel_out_stream_TKEEP out_data 1 4 } } }
	kernel_out_stream_strb_V { axis {  { kernel_out_stream_TSTRB out_data 1 4 } } }
	kernel_out_stream_user_V { axis {  { kernel_out_stream_TUSER out_data 1 4 } } }
	kernel_out_stream_last_V { axis {  { kernel_out_stream_TLAST out_data 1 1 } } }
	kernel_out_stream_id_V { axis {  { kernel_out_stream_TID out_data 1 5 } } }
	kernel_out_stream_dest_V { axis {  { kernel_out_stream_TVALID out_vld 1 1 }  { kernel_out_stream_TREADY out_acc 0 1 }  { kernel_out_stream_TDEST out_data 1 5 } } }
}
