set moduleName Loop_LOOP_12_proc
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
set C_modelName {Loop_LOOP_12_proc}
set C_modelType { float 32 }
set C_modelArgList {
	{ temp_buf float 32 regular {array 784 { 1 1 } 1 1 }  }
	{ temp2_buf float 32 regular {array 784 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "temp_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp2_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ temp_buf_address0 sc_out sc_lv 10 signal 0 } 
	{ temp_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ temp_buf_q0 sc_in sc_lv 32 signal 0 } 
	{ temp_buf_address1 sc_out sc_lv 10 signal 0 } 
	{ temp_buf_ce1 sc_out sc_logic 1 signal 0 } 
	{ temp_buf_q1 sc_in sc_lv 32 signal 0 } 
	{ temp2_buf_address0 sc_out sc_lv 10 signal 1 } 
	{ temp2_buf_ce0 sc_out sc_logic 1 signal 1 } 
	{ temp2_buf_q0 sc_in sc_lv 32 signal 1 } 
	{ temp2_buf_address1 sc_out sc_lv 10 signal 1 } 
	{ temp2_buf_ce1 sc_out sc_logic 1 signal 1 } 
	{ temp2_buf_q1 sc_in sc_lv 32 signal 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "temp_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "temp_buf", "role": "address0" }} , 
 	{ "name": "temp_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_buf", "role": "ce0" }} , 
 	{ "name": "temp_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_buf", "role": "q0" }} , 
 	{ "name": "temp_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "temp_buf", "role": "address1" }} , 
 	{ "name": "temp_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_buf", "role": "ce1" }} , 
 	{ "name": "temp_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_buf", "role": "q1" }} , 
 	{ "name": "temp2_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "temp2_buf", "role": "address0" }} , 
 	{ "name": "temp2_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_buf", "role": "ce0" }} , 
 	{ "name": "temp2_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp2_buf", "role": "q0" }} , 
 	{ "name": "temp2_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "temp2_buf", "role": "address1" }} , 
 	{ "name": "temp2_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp2_buf", "role": "ce1" }} , 
 	{ "name": "temp2_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp2_buf", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "Loop_LOOP_12_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3149", "EstimateLatencyMax" : "3149",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "temp2_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rbf_kernel_faddfsbkb_U17", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rbf_kernel_fsub_3cud_U18", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rbf_kernel_fadd_3dEe_U19", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rbf_kernel_fmul_3eOg_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_LOOP_12_proc {
		temp_buf {Type I LastRead 6 FirstWrite -1}
		temp2_buf {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3149", "Max" : "3149"}
	, {"Name" : "Interval", "Min" : "3149", "Max" : "3149"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	temp_buf { ap_memory {  { temp_buf_address0 mem_address 1 10 }  { temp_buf_ce0 mem_ce 1 1 }  { temp_buf_q0 mem_dout 0 32 }  { temp_buf_address1 mem_address 1 10 }  { temp_buf_ce1 mem_ce 1 1 }  { temp_buf_q1 mem_dout 0 32 } } }
	temp2_buf { ap_memory {  { temp2_buf_address0 mem_address 1 10 }  { temp2_buf_ce0 mem_ce 1 1 }  { temp2_buf_q0 mem_dout 0 32 }  { temp2_buf_address1 mem_address 1 10 }  { temp2_buf_ce1 mem_ce 1 1 }  { temp2_buf_q1 mem_dout 0 32 } } }
}
