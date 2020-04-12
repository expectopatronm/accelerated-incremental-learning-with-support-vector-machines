set moduleName Loop_LOOP_2_proc9
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
set C_modelName {Loop_LOOP_2_proc9}
set C_modelType { void 0 }
set C_modelArgList {
	{ tile_size int 32 regular {fifo 0}  }
	{ remaining_size int 32 regular {fifo 0}  }
	{ result_buf float 32 regular {array 2500 { 0 3 } 0 1 }  }
	{ index_buf float 32 regular {array 784 { 1 3 } 1 1 }  }
	{ kernel_in_stream_data_V int 32 regular {axi_s 0 volatile  { kernel_in_stream Data } }  }
	{ kernel_in_stream_strb_V int 4 regular {axi_s 0 volatile  { kernel_in_stream Strb } }  }
	{ kernel_in_stream_keep_V int 4 regular {axi_s 0 volatile  { kernel_in_stream Keep } }  }
	{ kernel_in_stream_user_V int 4 regular {axi_s 0 volatile  { kernel_in_stream User } }  }
	{ kernel_in_stream_last_V int 1 regular {axi_s 0 volatile  { kernel_in_stream Last } }  }
	{ kernel_in_stream_id_V int 5 regular {axi_s 0 volatile  { kernel_in_stream ID } }  }
	{ kernel_in_stream_dest_V int 5 regular {axi_s 0 volatile  { kernel_in_stream Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tile_size", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "remaining_size", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "result_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "index_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_in_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_in_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_in_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_in_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_in_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_in_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_in_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tile_size_dout sc_in sc_lv 32 signal 0 } 
	{ tile_size_empty_n sc_in sc_logic 1 signal 0 } 
	{ tile_size_read sc_out sc_logic 1 signal 0 } 
	{ remaining_size_dout sc_in sc_lv 32 signal 1 } 
	{ remaining_size_empty_n sc_in sc_logic 1 signal 1 } 
	{ remaining_size_read sc_out sc_logic 1 signal 1 } 
	{ result_buf_address0 sc_out sc_lv 12 signal 2 } 
	{ result_buf_ce0 sc_out sc_logic 1 signal 2 } 
	{ result_buf_we0 sc_out sc_logic 1 signal 2 } 
	{ result_buf_d0 sc_out sc_lv 32 signal 2 } 
	{ index_buf_address0 sc_out sc_lv 10 signal 3 } 
	{ index_buf_ce0 sc_out sc_logic 1 signal 3 } 
	{ index_buf_q0 sc_in sc_lv 32 signal 3 } 
	{ kernel_in_stream_TDATA sc_in sc_lv 32 signal 4 } 
	{ kernel_in_stream_TVALID sc_in sc_logic 1 invld 10 } 
	{ kernel_in_stream_TREADY sc_out sc_logic 1 inacc 4 } 
	{ kernel_in_stream_TSTRB sc_in sc_lv 4 signal 5 } 
	{ kernel_in_stream_TKEEP sc_in sc_lv 4 signal 6 } 
	{ kernel_in_stream_TUSER sc_in sc_lv 4 signal 7 } 
	{ kernel_in_stream_TLAST sc_in sc_lv 1 signal 8 } 
	{ kernel_in_stream_TID sc_in sc_lv 5 signal 9 } 
	{ kernel_in_stream_TDEST sc_in sc_lv 5 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tile_size_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tile_size", "role": "dout" }} , 
 	{ "name": "tile_size_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_size", "role": "empty_n" }} , 
 	{ "name": "tile_size_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_size", "role": "read" }} , 
 	{ "name": "remaining_size_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "remaining_size", "role": "dout" }} , 
 	{ "name": "remaining_size_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "remaining_size", "role": "empty_n" }} , 
 	{ "name": "remaining_size_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "remaining_size", "role": "read" }} , 
 	{ "name": "result_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "result_buf", "role": "address0" }} , 
 	{ "name": "result_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf", "role": "ce0" }} , 
 	{ "name": "result_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_buf", "role": "we0" }} , 
 	{ "name": "result_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_buf", "role": "d0" }} , 
 	{ "name": "index_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "index_buf", "role": "address0" }} , 
 	{ "name": "index_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "index_buf", "role": "ce0" }} , 
 	{ "name": "index_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "index_buf", "role": "q0" }} , 
 	{ "name": "kernel_in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_in_stream_data_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "kernel_in_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "kernel_in_stream_data_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_in_stream_strb_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_in_stream_keep_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_in_stream_user_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_in_stream_last_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_in_stream_id_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_in_stream_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "Loop_LOOP_2_proc9",
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
			{"Name" : "tile_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "tile_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "remaining_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "remaining_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "result_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "index_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "kernel_in_stream_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "kernel_in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_in_stream_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_dest_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_fadcud_U15", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_fmudEe_U16", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_fpteOg_U17", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_fpefYi_U18", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_fexg8j_U19", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_dmuhbi_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_LOOP_2_proc9 {
		tile_size {Type I LastRead 0 FirstWrite -1}
		remaining_size {Type I LastRead 0 FirstWrite -1}
		result_buf {Type O LastRead -1 FirstWrite 22}
		index_buf {Type I LastRead 2293 FirstWrite -1}
		kernel_in_stream_data_V {Type I LastRead 2291 FirstWrite -1}
		kernel_in_stream_strb_V {Type I LastRead 2291 FirstWrite -1}
		kernel_in_stream_keep_V {Type I LastRead 2291 FirstWrite -1}
		kernel_in_stream_user_V {Type I LastRead 2291 FirstWrite -1}
		kernel_in_stream_last_V {Type I LastRead 2291 FirstWrite -1}
		kernel_in_stream_id_V {Type I LastRead 2291 FirstWrite -1}
		kernel_in_stream_dest_V {Type I LastRead 2291 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
	{"Pipeline" : "7", "EnableSignal" : "ap_enable_pp7"}
	{"Pipeline" : "8", "EnableSignal" : "ap_enable_pp8"}
	{"Pipeline" : "9", "EnableSignal" : "ap_enable_pp9"}
	{"Pipeline" : "10", "EnableSignal" : "ap_enable_pp10"}
	{"Pipeline" : "11", "EnableSignal" : "ap_enable_pp11"}
	{"Pipeline" : "12", "EnableSignal" : "ap_enable_pp12"}
	{"Pipeline" : "13", "EnableSignal" : "ap_enable_pp13"}
	{"Pipeline" : "14", "EnableSignal" : "ap_enable_pp14"}
	{"Pipeline" : "15", "EnableSignal" : "ap_enable_pp15"}
	{"Pipeline" : "16", "EnableSignal" : "ap_enable_pp16"}
	{"Pipeline" : "17", "EnableSignal" : "ap_enable_pp17"}
	{"Pipeline" : "18", "EnableSignal" : "ap_enable_pp18"}
	{"Pipeline" : "19", "EnableSignal" : "ap_enable_pp19"}
	{"Pipeline" : "20", "EnableSignal" : "ap_enable_pp20"}
	{"Pipeline" : "21", "EnableSignal" : "ap_enable_pp21"}
	{"Pipeline" : "22", "EnableSignal" : "ap_enable_pp22"}
	{"Pipeline" : "23", "EnableSignal" : "ap_enable_pp23"}
	{"Pipeline" : "24", "EnableSignal" : "ap_enable_pp24"}
	{"Pipeline" : "25", "EnableSignal" : "ap_enable_pp25"}
	{"Pipeline" : "26", "EnableSignal" : "ap_enable_pp26"}
	{"Pipeline" : "27", "EnableSignal" : "ap_enable_pp27"}
	{"Pipeline" : "28", "EnableSignal" : "ap_enable_pp28"}
	{"Pipeline" : "29", "EnableSignal" : "ap_enable_pp29"}
	{"Pipeline" : "30", "EnableSignal" : "ap_enable_pp30"}
	{"Pipeline" : "31", "EnableSignal" : "ap_enable_pp31"}
	{"Pipeline" : "32", "EnableSignal" : "ap_enable_pp32"}
	{"Pipeline" : "33", "EnableSignal" : "ap_enable_pp33"}
	{"Pipeline" : "34", "EnableSignal" : "ap_enable_pp34"}
	{"Pipeline" : "35", "EnableSignal" : "ap_enable_pp35"}
	{"Pipeline" : "36", "EnableSignal" : "ap_enable_pp36"}
	{"Pipeline" : "37", "EnableSignal" : "ap_enable_pp37"}
	{"Pipeline" : "38", "EnableSignal" : "ap_enable_pp38"}
	{"Pipeline" : "39", "EnableSignal" : "ap_enable_pp39"}
	{"Pipeline" : "40", "EnableSignal" : "ap_enable_pp40"}
	{"Pipeline" : "41", "EnableSignal" : "ap_enable_pp41"}
	{"Pipeline" : "42", "EnableSignal" : "ap_enable_pp42"}
	{"Pipeline" : "43", "EnableSignal" : "ap_enable_pp43"}
	{"Pipeline" : "44", "EnableSignal" : "ap_enable_pp44"}
	{"Pipeline" : "45", "EnableSignal" : "ap_enable_pp45"}
	{"Pipeline" : "46", "EnableSignal" : "ap_enable_pp46"}
	{"Pipeline" : "47", "EnableSignal" : "ap_enable_pp47"}
	{"Pipeline" : "48", "EnableSignal" : "ap_enable_pp48"}
	{"Pipeline" : "49", "EnableSignal" : "ap_enable_pp49"}
	{"Pipeline" : "50", "EnableSignal" : "ap_enable_pp50"}
	{"Pipeline" : "51", "EnableSignal" : "ap_enable_pp51"}
	{"Pipeline" : "52", "EnableSignal" : "ap_enable_pp52"}
	{"Pipeline" : "53", "EnableSignal" : "ap_enable_pp53"}
	{"Pipeline" : "54", "EnableSignal" : "ap_enable_pp54"}
	{"Pipeline" : "55", "EnableSignal" : "ap_enable_pp55"}
	{"Pipeline" : "56", "EnableSignal" : "ap_enable_pp56"}
	{"Pipeline" : "57", "EnableSignal" : "ap_enable_pp57"}
	{"Pipeline" : "58", "EnableSignal" : "ap_enable_pp58"}
	{"Pipeline" : "59", "EnableSignal" : "ap_enable_pp59"}
	{"Pipeline" : "60", "EnableSignal" : "ap_enable_pp60"}
	{"Pipeline" : "61", "EnableSignal" : "ap_enable_pp61"}
	{"Pipeline" : "62", "EnableSignal" : "ap_enable_pp62"}
	{"Pipeline" : "63", "EnableSignal" : "ap_enable_pp63"}
	{"Pipeline" : "64", "EnableSignal" : "ap_enable_pp64"}
	{"Pipeline" : "65", "EnableSignal" : "ap_enable_pp65"}
	{"Pipeline" : "66", "EnableSignal" : "ap_enable_pp66"}
	{"Pipeline" : "67", "EnableSignal" : "ap_enable_pp67"}
	{"Pipeline" : "68", "EnableSignal" : "ap_enable_pp68"}
	{"Pipeline" : "69", "EnableSignal" : "ap_enable_pp69"}
	{"Pipeline" : "70", "EnableSignal" : "ap_enable_pp70"}
	{"Pipeline" : "71", "EnableSignal" : "ap_enable_pp71"}
	{"Pipeline" : "72", "EnableSignal" : "ap_enable_pp72"}
	{"Pipeline" : "73", "EnableSignal" : "ap_enable_pp73"}
	{"Pipeline" : "74", "EnableSignal" : "ap_enable_pp74"}
	{"Pipeline" : "75", "EnableSignal" : "ap_enable_pp75"}
	{"Pipeline" : "76", "EnableSignal" : "ap_enable_pp76"}
	{"Pipeline" : "77", "EnableSignal" : "ap_enable_pp77"}
	{"Pipeline" : "78", "EnableSignal" : "ap_enable_pp78"}
	{"Pipeline" : "79", "EnableSignal" : "ap_enable_pp79"}
	{"Pipeline" : "80", "EnableSignal" : "ap_enable_pp80"}
	{"Pipeline" : "81", "EnableSignal" : "ap_enable_pp81"}
	{"Pipeline" : "82", "EnableSignal" : "ap_enable_pp82"}
	{"Pipeline" : "83", "EnableSignal" : "ap_enable_pp83"}
	{"Pipeline" : "84", "EnableSignal" : "ap_enable_pp84"}
	{"Pipeline" : "85", "EnableSignal" : "ap_enable_pp85"}
	{"Pipeline" : "86", "EnableSignal" : "ap_enable_pp86"}
	{"Pipeline" : "87", "EnableSignal" : "ap_enable_pp87"}
	{"Pipeline" : "88", "EnableSignal" : "ap_enable_pp88"}
	{"Pipeline" : "89", "EnableSignal" : "ap_enable_pp89"}
	{"Pipeline" : "90", "EnableSignal" : "ap_enable_pp90"}
	{"Pipeline" : "91", "EnableSignal" : "ap_enable_pp91"}
	{"Pipeline" : "92", "EnableSignal" : "ap_enable_pp92"}
	{"Pipeline" : "93", "EnableSignal" : "ap_enable_pp93"}
	{"Pipeline" : "94", "EnableSignal" : "ap_enable_pp94"}
	{"Pipeline" : "95", "EnableSignal" : "ap_enable_pp95"}
	{"Pipeline" : "96", "EnableSignal" : "ap_enable_pp96"}
	{"Pipeline" : "97", "EnableSignal" : "ap_enable_pp97"}
	{"Pipeline" : "98", "EnableSignal" : "ap_enable_pp98"}
	{"Pipeline" : "99", "EnableSignal" : "ap_enable_pp99"}
	{"Pipeline" : "100", "EnableSignal" : "ap_enable_pp100"}
	{"Pipeline" : "101", "EnableSignal" : "ap_enable_pp101"}
	{"Pipeline" : "102", "EnableSignal" : "ap_enable_pp102"}
	{"Pipeline" : "103", "EnableSignal" : "ap_enable_pp103"}
	{"Pipeline" : "104", "EnableSignal" : "ap_enable_pp104"}
	{"Pipeline" : "105", "EnableSignal" : "ap_enable_pp105"}
	{"Pipeline" : "106", "EnableSignal" : "ap_enable_pp106"}
	{"Pipeline" : "107", "EnableSignal" : "ap_enable_pp107"}
	{"Pipeline" : "108", "EnableSignal" : "ap_enable_pp108"}
	{"Pipeline" : "109", "EnableSignal" : "ap_enable_pp109"}
	{"Pipeline" : "110", "EnableSignal" : "ap_enable_pp110"}
	{"Pipeline" : "111", "EnableSignal" : "ap_enable_pp111"}
	{"Pipeline" : "112", "EnableSignal" : "ap_enable_pp112"}
	{"Pipeline" : "113", "EnableSignal" : "ap_enable_pp113"}
	{"Pipeline" : "114", "EnableSignal" : "ap_enable_pp114"}
	{"Pipeline" : "115", "EnableSignal" : "ap_enable_pp115"}
	{"Pipeline" : "116", "EnableSignal" : "ap_enable_pp116"}
	{"Pipeline" : "117", "EnableSignal" : "ap_enable_pp117"}
	{"Pipeline" : "118", "EnableSignal" : "ap_enable_pp118"}
	{"Pipeline" : "119", "EnableSignal" : "ap_enable_pp119"}
	{"Pipeline" : "120", "EnableSignal" : "ap_enable_pp120"}
	{"Pipeline" : "121", "EnableSignal" : "ap_enable_pp121"}
	{"Pipeline" : "122", "EnableSignal" : "ap_enable_pp122"}
	{"Pipeline" : "123", "EnableSignal" : "ap_enable_pp123"}
	{"Pipeline" : "124", "EnableSignal" : "ap_enable_pp124"}
	{"Pipeline" : "125", "EnableSignal" : "ap_enable_pp125"}
	{"Pipeline" : "126", "EnableSignal" : "ap_enable_pp126"}
	{"Pipeline" : "127", "EnableSignal" : "ap_enable_pp127"}
	{"Pipeline" : "128", "EnableSignal" : "ap_enable_pp128"}
	{"Pipeline" : "129", "EnableSignal" : "ap_enable_pp129"}
	{"Pipeline" : "130", "EnableSignal" : "ap_enable_pp130"}
	{"Pipeline" : "131", "EnableSignal" : "ap_enable_pp131"}
	{"Pipeline" : "132", "EnableSignal" : "ap_enable_pp132"}
	{"Pipeline" : "133", "EnableSignal" : "ap_enable_pp133"}
	{"Pipeline" : "134", "EnableSignal" : "ap_enable_pp134"}
	{"Pipeline" : "135", "EnableSignal" : "ap_enable_pp135"}
	{"Pipeline" : "136", "EnableSignal" : "ap_enable_pp136"}
	{"Pipeline" : "137", "EnableSignal" : "ap_enable_pp137"}
	{"Pipeline" : "138", "EnableSignal" : "ap_enable_pp138"}
	{"Pipeline" : "139", "EnableSignal" : "ap_enable_pp139"}
	{"Pipeline" : "140", "EnableSignal" : "ap_enable_pp140"}
	{"Pipeline" : "141", "EnableSignal" : "ap_enable_pp141"}
	{"Pipeline" : "142", "EnableSignal" : "ap_enable_pp142"}
	{"Pipeline" : "143", "EnableSignal" : "ap_enable_pp143"}
	{"Pipeline" : "144", "EnableSignal" : "ap_enable_pp144"}
	{"Pipeline" : "145", "EnableSignal" : "ap_enable_pp145"}
	{"Pipeline" : "146", "EnableSignal" : "ap_enable_pp146"}
	{"Pipeline" : "147", "EnableSignal" : "ap_enable_pp147"}
	{"Pipeline" : "148", "EnableSignal" : "ap_enable_pp148"}
	{"Pipeline" : "149", "EnableSignal" : "ap_enable_pp149"}
	{"Pipeline" : "150", "EnableSignal" : "ap_enable_pp150"}
	{"Pipeline" : "151", "EnableSignal" : "ap_enable_pp151"}
	{"Pipeline" : "152", "EnableSignal" : "ap_enable_pp152"}
	{"Pipeline" : "153", "EnableSignal" : "ap_enable_pp153"}
	{"Pipeline" : "154", "EnableSignal" : "ap_enable_pp154"}
	{"Pipeline" : "155", "EnableSignal" : "ap_enable_pp155"}
	{"Pipeline" : "156", "EnableSignal" : "ap_enable_pp156"}
	{"Pipeline" : "157", "EnableSignal" : "ap_enable_pp157"}
	{"Pipeline" : "158", "EnableSignal" : "ap_enable_pp158"}
	{"Pipeline" : "159", "EnableSignal" : "ap_enable_pp159"}
	{"Pipeline" : "160", "EnableSignal" : "ap_enable_pp160"}
	{"Pipeline" : "161", "EnableSignal" : "ap_enable_pp161"}
	{"Pipeline" : "162", "EnableSignal" : "ap_enable_pp162"}
	{"Pipeline" : "163", "EnableSignal" : "ap_enable_pp163"}
	{"Pipeline" : "164", "EnableSignal" : "ap_enable_pp164"}
	{"Pipeline" : "165", "EnableSignal" : "ap_enable_pp165"}
	{"Pipeline" : "166", "EnableSignal" : "ap_enable_pp166"}
	{"Pipeline" : "167", "EnableSignal" : "ap_enable_pp167"}
	{"Pipeline" : "168", "EnableSignal" : "ap_enable_pp168"}
	{"Pipeline" : "169", "EnableSignal" : "ap_enable_pp169"}
	{"Pipeline" : "170", "EnableSignal" : "ap_enable_pp170"}
	{"Pipeline" : "171", "EnableSignal" : "ap_enable_pp171"}
	{"Pipeline" : "172", "EnableSignal" : "ap_enable_pp172"}
	{"Pipeline" : "173", "EnableSignal" : "ap_enable_pp173"}
	{"Pipeline" : "174", "EnableSignal" : "ap_enable_pp174"}
	{"Pipeline" : "175", "EnableSignal" : "ap_enable_pp175"}
	{"Pipeline" : "176", "EnableSignal" : "ap_enable_pp176"}
	{"Pipeline" : "177", "EnableSignal" : "ap_enable_pp177"}
	{"Pipeline" : "178", "EnableSignal" : "ap_enable_pp178"}
	{"Pipeline" : "179", "EnableSignal" : "ap_enable_pp179"}
	{"Pipeline" : "180", "EnableSignal" : "ap_enable_pp180"}
	{"Pipeline" : "181", "EnableSignal" : "ap_enable_pp181"}
	{"Pipeline" : "182", "EnableSignal" : "ap_enable_pp182"}
	{"Pipeline" : "183", "EnableSignal" : "ap_enable_pp183"}
	{"Pipeline" : "184", "EnableSignal" : "ap_enable_pp184"}
	{"Pipeline" : "185", "EnableSignal" : "ap_enable_pp185"}
	{"Pipeline" : "186", "EnableSignal" : "ap_enable_pp186"}
	{"Pipeline" : "187", "EnableSignal" : "ap_enable_pp187"}
	{"Pipeline" : "188", "EnableSignal" : "ap_enable_pp188"}
	{"Pipeline" : "189", "EnableSignal" : "ap_enable_pp189"}
	{"Pipeline" : "190", "EnableSignal" : "ap_enable_pp190"}
	{"Pipeline" : "191", "EnableSignal" : "ap_enable_pp191"}
	{"Pipeline" : "192", "EnableSignal" : "ap_enable_pp192"}
	{"Pipeline" : "193", "EnableSignal" : "ap_enable_pp193"}
	{"Pipeline" : "194", "EnableSignal" : "ap_enable_pp194"}
	{"Pipeline" : "195", "EnableSignal" : "ap_enable_pp195"}
	{"Pipeline" : "196", "EnableSignal" : "ap_enable_pp196"}
	{"Pipeline" : "197", "EnableSignal" : "ap_enable_pp197"}
	{"Pipeline" : "198", "EnableSignal" : "ap_enable_pp198"}
	{"Pipeline" : "199", "EnableSignal" : "ap_enable_pp199"}
	{"Pipeline" : "200", "EnableSignal" : "ap_enable_pp200"}
	{"Pipeline" : "201", "EnableSignal" : "ap_enable_pp201"}
	{"Pipeline" : "202", "EnableSignal" : "ap_enable_pp202"}
	{"Pipeline" : "203", "EnableSignal" : "ap_enable_pp203"}
	{"Pipeline" : "204", "EnableSignal" : "ap_enable_pp204"}
	{"Pipeline" : "205", "EnableSignal" : "ap_enable_pp205"}
	{"Pipeline" : "206", "EnableSignal" : "ap_enable_pp206"}
	{"Pipeline" : "207", "EnableSignal" : "ap_enable_pp207"}
	{"Pipeline" : "208", "EnableSignal" : "ap_enable_pp208"}
	{"Pipeline" : "209", "EnableSignal" : "ap_enable_pp209"}
	{"Pipeline" : "210", "EnableSignal" : "ap_enable_pp210"}
	{"Pipeline" : "211", "EnableSignal" : "ap_enable_pp211"}
	{"Pipeline" : "212", "EnableSignal" : "ap_enable_pp212"}
	{"Pipeline" : "213", "EnableSignal" : "ap_enable_pp213"}
	{"Pipeline" : "214", "EnableSignal" : "ap_enable_pp214"}
	{"Pipeline" : "215", "EnableSignal" : "ap_enable_pp215"}
	{"Pipeline" : "216", "EnableSignal" : "ap_enable_pp216"}
	{"Pipeline" : "217", "EnableSignal" : "ap_enable_pp217"}
	{"Pipeline" : "218", "EnableSignal" : "ap_enable_pp218"}
	{"Pipeline" : "219", "EnableSignal" : "ap_enable_pp219"}
]}

set Spec2ImplPortList { 
	tile_size { ap_fifo {  { tile_size_dout fifo_data 0 32 }  { tile_size_empty_n fifo_status 0 1 }  { tile_size_read fifo_update 1 1 } } }
	remaining_size { ap_fifo {  { remaining_size_dout fifo_data 0 32 }  { remaining_size_empty_n fifo_status 0 1 }  { remaining_size_read fifo_update 1 1 } } }
	result_buf { ap_memory {  { result_buf_address0 mem_address 1 12 }  { result_buf_ce0 mem_ce 1 1 }  { result_buf_we0 mem_we 1 1 }  { result_buf_d0 mem_din 1 32 } } }
	index_buf { ap_memory {  { index_buf_address0 mem_address 1 10 }  { index_buf_ce0 mem_ce 1 1 }  { index_buf_q0 mem_dout 0 32 } } }
	kernel_in_stream_data_V { axis {  { kernel_in_stream_TDATA in_data 0 32 }  { kernel_in_stream_TREADY in_acc 1 1 } } }
	kernel_in_stream_strb_V { axis {  { kernel_in_stream_TSTRB in_data 0 4 } } }
	kernel_in_stream_keep_V { axis {  { kernel_in_stream_TKEEP in_data 0 4 } } }
	kernel_in_stream_user_V { axis {  { kernel_in_stream_TUSER in_data 0 4 } } }
	kernel_in_stream_last_V { axis {  { kernel_in_stream_TLAST in_data 0 1 } } }
	kernel_in_stream_id_V { axis {  { kernel_in_stream_TID in_data 0 5 } } }
	kernel_in_stream_dest_V { axis {  { kernel_in_stream_TVALID in_vld 0 1 }  { kernel_in_stream_TDEST in_data 0 5 } } }
}
