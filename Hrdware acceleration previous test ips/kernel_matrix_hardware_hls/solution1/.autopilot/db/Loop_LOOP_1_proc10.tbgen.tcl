set moduleName Loop_LOOP_1_proc10
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Loop_LOOP_1_proc10}
set C_modelType { void 0 }
set C_modelArgList {
	{ kernel_index_stream_data_V int 32 regular {axi_s 0 volatile  { kernel_index_stream Data } }  }
	{ kernel_index_stream_strb_V int 4 regular {axi_s 0 volatile  { kernel_index_stream Strb } }  }
	{ kernel_index_stream_keep_V int 4 regular {axi_s 0 volatile  { kernel_index_stream Keep } }  }
	{ kernel_index_stream_user_V int 4 regular {axi_s 0 volatile  { kernel_index_stream User } }  }
	{ kernel_index_stream_last_V int 1 regular {axi_s 0 volatile  { kernel_index_stream Last } }  }
	{ kernel_index_stream_id_V int 5 regular {axi_s 0 volatile  { kernel_index_stream ID } }  }
	{ kernel_index_stream_dest_V int 5 regular {axi_s 0 volatile  { kernel_index_stream Dest } }  }
	{ index_buf float 32 regular {array 784 { 0 3 } 0 1 }  }
	{ length_x int 32 regular {pointer 0}  }
	{ tile_size int 32 regular {pointer 0}  }
	{ remaining_size int 32 regular {pointer 0}  }
	{ length_x_out int 32 regular {fifo 1}  }
	{ tile_size_out int 32 regular {fifo 1}  }
	{ remaining_size_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "kernel_index_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_index_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_index_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_index_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_index_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_index_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_index_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "index_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "length_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tile_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "remaining_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "length_x_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_size_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "remaining_size_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ kernel_index_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ kernel_index_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ kernel_index_stream_TREADY sc_out sc_logic 1 inacc 0 } 
	{ kernel_index_stream_TSTRB sc_in sc_lv 4 signal 1 } 
	{ kernel_index_stream_TKEEP sc_in sc_lv 4 signal 2 } 
	{ kernel_index_stream_TUSER sc_in sc_lv 4 signal 3 } 
	{ kernel_index_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ kernel_index_stream_TID sc_in sc_lv 5 signal 5 } 
	{ kernel_index_stream_TDEST sc_in sc_lv 5 signal 6 } 
	{ index_buf_address0 sc_out sc_lv 10 signal 7 } 
	{ index_buf_ce0 sc_out sc_logic 1 signal 7 } 
	{ index_buf_we0 sc_out sc_logic 1 signal 7 } 
	{ index_buf_d0 sc_out sc_lv 32 signal 7 } 
	{ length_x sc_in sc_lv 32 signal 8 } 
	{ tile_size sc_in sc_lv 32 signal 9 } 
	{ remaining_size sc_in sc_lv 32 signal 10 } 
	{ length_x_out_din sc_out sc_lv 32 signal 11 } 
	{ length_x_out_full_n sc_in sc_logic 1 signal 11 } 
	{ length_x_out_write sc_out sc_logic 1 signal 11 } 
	{ tile_size_out_din sc_out sc_lv 32 signal 12 } 
	{ tile_size_out_full_n sc_in sc_logic 1 signal 12 } 
	{ tile_size_out_write sc_out sc_logic 1 signal 12 } 
	{ remaining_size_out_din sc_out sc_lv 32 signal 13 } 
	{ remaining_size_out_full_n sc_in sc_logic 1 signal 13 } 
	{ remaining_size_out_write sc_out sc_logic 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_index_stream_data_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "kernel_index_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "kernel_index_stream_data_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_index_stream_strb_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_index_stream_keep_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_index_stream_user_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_index_stream_last_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_index_stream_id_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_index_stream_dest_V", "role": "default" }} , 
 	{ "name": "index_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "index_buf", "role": "address0" }} , 
 	{ "name": "index_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "index_buf", "role": "ce0" }} , 
 	{ "name": "index_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "index_buf", "role": "we0" }} , 
 	{ "name": "index_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "index_buf", "role": "d0" }} , 
 	{ "name": "length_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "length_x", "role": "default" }} , 
 	{ "name": "tile_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_size", "role": "default" }} , 
 	{ "name": "remaining_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "remaining_size", "role": "default" }} , 
 	{ "name": "length_x_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "length_x_out", "role": "din" }} , 
 	{ "name": "length_x_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "length_x_out", "role": "full_n" }} , 
 	{ "name": "length_x_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "length_x_out", "role": "write" }} , 
 	{ "name": "tile_size_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_size_out", "role": "din" }} , 
 	{ "name": "tile_size_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_size_out", "role": "full_n" }} , 
 	{ "name": "tile_size_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_size_out", "role": "write" }} , 
 	{ "name": "remaining_size_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "remaining_size_out", "role": "din" }} , 
 	{ "name": "remaining_size_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "remaining_size_out", "role": "full_n" }} , 
 	{ "name": "remaining_size_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "remaining_size_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Loop_LOOP_1_proc10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "786", "EstimateLatencyMax" : "786",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "kernel_index_stream_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "kernel_index_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_index_stream_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "index_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "length_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "tile_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "remaining_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "length_x_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "length_x_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tile_size_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "tile_size_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "remaining_size_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "remaining_size_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_LOOP_1_proc10 {
		kernel_index_stream_data_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_strb_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_keep_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_user_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_last_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_id_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_dest_V {Type I LastRead 1 FirstWrite -1}
		index_buf {Type O LastRead -1 FirstWrite 2}
		length_x {Type I LastRead 0 FirstWrite -1}
		tile_size {Type I LastRead 0 FirstWrite -1}
		remaining_size {Type I LastRead 0 FirstWrite -1}
		length_x_out {Type O LastRead -1 FirstWrite 0}
		tile_size_out {Type O LastRead -1 FirstWrite 0}
		remaining_size_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "786", "Max" : "786"}
	, {"Name" : "Interval", "Min" : "786", "Max" : "786"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	kernel_index_stream_data_V { axis {  { kernel_index_stream_TDATA in_data 0 32 }  { kernel_index_stream_TREADY in_acc 1 1 } } }
	kernel_index_stream_strb_V { axis {  { kernel_index_stream_TSTRB in_data 0 4 } } }
	kernel_index_stream_keep_V { axis {  { kernel_index_stream_TKEEP in_data 0 4 } } }
	kernel_index_stream_user_V { axis {  { kernel_index_stream_TUSER in_data 0 4 } } }
	kernel_index_stream_last_V { axis {  { kernel_index_stream_TLAST in_data 0 1 } } }
	kernel_index_stream_id_V { axis {  { kernel_index_stream_TID in_data 0 5 } } }
	kernel_index_stream_dest_V { axis {  { kernel_index_stream_TVALID in_vld 0 1 }  { kernel_index_stream_TDEST in_data 0 5 } } }
	index_buf { ap_memory {  { index_buf_address0 mem_address 1 10 }  { index_buf_ce0 mem_ce 1 1 }  { index_buf_we0 mem_we 1 1 }  { index_buf_d0 mem_din 1 32 } } }
	length_x { ap_none {  { length_x in_data 0 32 } } }
	tile_size { ap_none {  { tile_size in_data 0 32 } } }
	remaining_size { ap_none {  { remaining_size in_data 0 32 } } }
	length_x_out { ap_fifo {  { length_x_out_din fifo_data 1 32 }  { length_x_out_full_n fifo_status 0 1 }  { length_x_out_write fifo_update 1 1 } } }
	tile_size_out { ap_fifo {  { tile_size_out_din fifo_data 1 32 }  { tile_size_out_full_n fifo_status 0 1 }  { tile_size_out_write fifo_update 1 1 } } }
	remaining_size_out { ap_fifo {  { remaining_size_out_din fifo_data 1 32 }  { remaining_size_out_full_n fifo_status 0 1 }  { remaining_size_out_write fifo_update 1 1 } } }
}
