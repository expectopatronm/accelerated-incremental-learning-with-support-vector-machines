set moduleName Loop_1_proc
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
set C_modelName {Loop_1_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream1_data_V int 32 regular {axi_s 0 volatile  { in_stream1 Data } }  }
	{ in_stream1_strb_V int 4 regular {axi_s 0 volatile  { in_stream1 Strb } }  }
	{ in_stream1_keep_V int 4 regular {axi_s 0 volatile  { in_stream1 Keep } }  }
	{ in_stream1_user_V int 4 regular {axi_s 0 volatile  { in_stream1 User } }  }
	{ in_stream1_last_V int 1 regular {axi_s 0 volatile  { in_stream1 Last } }  }
	{ in_stream1_id_V int 5 regular {axi_s 0 volatile  { in_stream1 ID } }  }
	{ in_stream1_dest_V int 5 regular {axi_s 0 volatile  { in_stream1 Dest } }  }
	{ temp_buf float 32 regular {array 784 { 0 0 } 0 1 }  }
	{ in_stream2_data_V int 32 regular {axi_s 0 volatile  { in_stream2 Data } }  }
	{ in_stream2_strb_V int 4 regular {axi_s 0 volatile  { in_stream2 Strb } }  }
	{ in_stream2_keep_V int 4 regular {axi_s 0 volatile  { in_stream2 Keep } }  }
	{ in_stream2_user_V int 4 regular {axi_s 0 volatile  { in_stream2 User } }  }
	{ in_stream2_last_V int 1 regular {axi_s 0 volatile  { in_stream2 Last } }  }
	{ in_stream2_id_V int 5 regular {axi_s 0 volatile  { in_stream2 ID } }  }
	{ in_stream2_dest_V int 5 regular {axi_s 0 volatile  { in_stream2 Dest } }  }
	{ temp2_buf float 32 regular {array 784 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream1_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream1_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream1_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream1_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream1_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream1_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream1_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "temp_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_stream2_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream2_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream2_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream2_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream2_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream2_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream2_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "temp2_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream1_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_stream1_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream1_TREADY sc_out sc_logic 1 inacc 0 } 
	{ in_stream1_TSTRB sc_in sc_lv 4 signal 1 } 
	{ in_stream1_TKEEP sc_in sc_lv 4 signal 2 } 
	{ in_stream1_TUSER sc_in sc_lv 4 signal 3 } 
	{ in_stream1_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream1_TID sc_in sc_lv 5 signal 5 } 
	{ in_stream1_TDEST sc_in sc_lv 5 signal 6 } 
	{ temp_buf_address0 sc_out sc_lv 10 signal 7 } 
	{ temp_buf_ce0 sc_out sc_logic 1 signal 7 } 
	{ temp_buf_we0 sc_out sc_logic 1 signal 7 } 
	{ temp_buf_d0 sc_out sc_lv 32 signal 7 } 
	{ temp_buf_address1 sc_out sc_lv 10 signal 7 } 
	{ temp_buf_ce1 sc_out sc_logic 1 signal 7 } 
	{ temp_buf_we1 sc_out sc_logic 1 signal 7 } 
	{ temp_buf_d1 sc_out sc_lv 32 signal 7 } 
	{ in_stream2_TDATA sc_in sc_lv 32 signal 8 } 
	{ in_stream2_TVALID sc_in sc_logic 1 invld 14 } 
	{ in_stream2_TREADY sc_out sc_logic 1 inacc 8 } 
	{ in_stream2_TSTRB sc_in sc_lv 4 signal 9 } 
	{ in_stream2_TKEEP sc_in sc_lv 4 signal 10 } 
	{ in_stream2_TUSER sc_in sc_lv 4 signal 11 } 
	{ in_stream2_TLAST sc_in sc_lv 1 signal 12 } 
	{ in_stream2_TID sc_in sc_lv 5 signal 13 } 
	{ in_stream2_TDEST sc_in sc_lv 5 signal 14 } 
	{ temp2_buf_address0 sc_out sc_lv 10 signal 15 } 
	{ temp2_buf_ce0 sc_out sc_logic 1 signal 15 } 
	{ temp2_buf_we0 sc_out sc_logic 1 signal 15 } 
	{ temp2_buf_d0 sc_out sc_lv 32 signal 15 } 
	{ temp2_buf_address1 sc_out sc_lv 10 signal 15 } 
	{ temp2_buf_ce1 sc_out sc_logic 1 signal 15 } 
	{ temp2_buf_we1 sc_out sc_logic 1 signal 15 } 
	{ temp2_buf_d1 sc_out sc_lv 32 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream1_data_V", "role": "default" }} , 
 	{ "name": "in_stream1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream1_dest_V", "role": "default" }} , 
 	{ "name": "in_stream1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream1_data_V", "role": "default" }} , 
 	{ "name": "in_stream1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream1_strb_V", "role": "default" }} , 
 	{ "name": "in_stream1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream1_keep_V", "role": "default" }} , 
 	{ "name": "in_stream1_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream1_user_V", "role": "default" }} , 
 	{ "name": "in_stream1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream1_last_V", "role": "default" }} , 
 	{ "name": "in_stream1_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream1_id_V", "role": "default" }} , 
 	{ "name": "in_stream1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream1_dest_V", "role": "default" }} , 
 	{ "name": "temp_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "temp_buf", "role": "address0" }} , 
 	{ "name": "temp_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_buf", "role": "ce0" }} , 
 	{ "name": "temp_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_buf", "role": "we0" }} , 
 	{ "name": "temp_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_buf", "role": "d0" }} , 
 	{ "name": "temp_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "temp_buf", "role": "address1" }} , 
 	{ "name": "temp_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_buf", "role": "ce1" }} , 
 	{ "name": "temp_buf_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_buf", "role": "we1" }} , 
 	{ "name": "temp_buf_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_buf", "role": "d1" }} , 
 	{ "name": "in_stream2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream2_data_V", "role": "default" }} , 
 	{ "name": "in_stream2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream2_dest_V", "role": "default" }} , 
 	{ "name": "in_stream2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream2_data_V", "role": "default" }} , 
 	{ "name": "in_stream2_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream2_strb_V", "role": "default" }} , 
 	{ "name": "in_stream2_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream2_keep_V", "role": "default" }} , 
 	{ "name": "in_stream2_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream2_user_V", "role": "default" }} , 
 	{ "name": "in_stream2_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream2_last_V", "role": "default" }} , 
 	{ "name": "in_stream2_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream2_id_V", "role": "default" }} , 
 	{ "name": "in_stream2_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream2_dest_V", "role": "default" }} , 
 	{ "name": "temp2_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "temp2_buf", "role": "address0" }} , 
 	{ "name": "temp2_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_buf", "role": "ce0" }} , 
 	{ "name": "temp2_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_buf", "role": "we0" }} , 
 	{ "name": "temp2_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp2_buf", "role": "d0" }} , 
 	{ "name": "temp2_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "temp2_buf", "role": "address1" }} , 
 	{ "name": "temp2_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_buf", "role": "ce1" }} , 
 	{ "name": "temp2_buf_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_buf", "role": "we1" }} , 
 	{ "name": "temp2_buf_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp2_buf", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Loop_1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "394", "EstimateLatencyMax" : "394",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_stream1_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream1_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream1_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream1_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream1_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream1_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream1_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "temp_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "in_stream2_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream2_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream2_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream2_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream2_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream2_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream2_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "temp2_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_1_proc {
		in_stream1_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream1_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream1_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream1_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream1_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream1_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream1_dest_V {Type I LastRead 1 FirstWrite -1}
		temp_buf {Type O LastRead -1 FirstWrite 2}
		in_stream2_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_dest_V {Type I LastRead 1 FirstWrite -1}
		temp2_buf {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "394", "Max" : "394"}
	, {"Name" : "Interval", "Min" : "394", "Max" : "394"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_stream1_data_V { axis {  { in_stream1_TDATA in_data 0 32 }  { in_stream1_TREADY in_acc 1 1 } } }
	in_stream1_strb_V { axis {  { in_stream1_TSTRB in_data 0 4 } } }
	in_stream1_keep_V { axis {  { in_stream1_TKEEP in_data 0 4 } } }
	in_stream1_user_V { axis {  { in_stream1_TUSER in_data 0 4 } } }
	in_stream1_last_V { axis {  { in_stream1_TLAST in_data 0 1 } } }
	in_stream1_id_V { axis {  { in_stream1_TID in_data 0 5 } } }
	in_stream1_dest_V { axis {  { in_stream1_TVALID in_vld 0 1 }  { in_stream1_TDEST in_data 0 5 } } }
	temp_buf { ap_memory {  { temp_buf_address0 mem_address 1 10 }  { temp_buf_ce0 mem_ce 1 1 }  { temp_buf_we0 mem_we 1 1 }  { temp_buf_d0 mem_din 1 32 }  { temp_buf_address1 mem_address 1 10 }  { temp_buf_ce1 mem_ce 1 1 }  { temp_buf_we1 mem_we 1 1 }  { temp_buf_d1 mem_din 1 32 } } }
	in_stream2_data_V { axis {  { in_stream2_TDATA in_data 0 32 }  { in_stream2_TREADY in_acc 1 1 } } }
	in_stream2_strb_V { axis {  { in_stream2_TSTRB in_data 0 4 } } }
	in_stream2_keep_V { axis {  { in_stream2_TKEEP in_data 0 4 } } }
	in_stream2_user_V { axis {  { in_stream2_TUSER in_data 0 4 } } }
	in_stream2_last_V { axis {  { in_stream2_TLAST in_data 0 1 } } }
	in_stream2_id_V { axis {  { in_stream2_TID in_data 0 5 } } }
	in_stream2_dest_V { axis {  { in_stream2_TVALID in_vld 0 1 }  { in_stream2_TDEST in_data 0 5 } } }
	temp2_buf { ap_memory {  { temp2_buf_address0 mem_address 1 10 }  { temp2_buf_ce0 mem_ce 1 1 }  { temp2_buf_we0 mem_we 1 1 }  { temp2_buf_d0 mem_din 1 32 }  { temp2_buf_address1 mem_address 1 10 }  { temp2_buf_ce1 mem_ce 1 1 }  { temp2_buf_we1 mem_we 1 1 }  { temp2_buf_d1 mem_din 1 32 } } }
}
