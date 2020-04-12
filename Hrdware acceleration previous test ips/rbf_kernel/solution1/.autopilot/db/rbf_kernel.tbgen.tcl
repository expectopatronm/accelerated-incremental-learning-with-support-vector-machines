set C_TypeInfoList {{ 
"rbf_kernel" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in_stream1": [[], {"array": ["0", [392]]}] }, {"in_stream2": [[], {"array": ["0", [392]]}] }, {"out_stream": [[], {"array": ["0", [1]]}] }],[],""], 
"0": [ "AXI_VAL", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_axiu<32, 4, 5, 5>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 4}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 5}}]}],[{ "data": [[], "2"]},{ "keep": [[], "3"]},{ "strb": [[], "3"]},{ "user": [[], "3"]},{ "last": [[], "4"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"5": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}]
}}
set moduleName rbf_kernel
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {rbf_kernel}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream1_data_V int 32 regular {axi_s 0 volatile  { in_stream1 Data } }  }
	{ in_stream1_keep_V int 4 regular {axi_s 0 volatile  { in_stream1 Keep } }  }
	{ in_stream1_strb_V int 4 regular {axi_s 0 volatile  { in_stream1 Strb } }  }
	{ in_stream1_user_V int 4 regular {axi_s 0 volatile  { in_stream1 User } }  }
	{ in_stream1_last_V int 1 regular {axi_s 0 volatile  { in_stream1 Last } }  }
	{ in_stream1_id_V int 5 regular {axi_s 0 volatile  { in_stream1 ID } }  }
	{ in_stream1_dest_V int 5 regular {axi_s 0 volatile  { in_stream1 Dest } }  }
	{ in_stream2_data_V int 32 regular {axi_s 0 volatile  { in_stream2 Data } }  }
	{ in_stream2_keep_V int 4 regular {axi_s 0 volatile  { in_stream2 Keep } }  }
	{ in_stream2_strb_V int 4 regular {axi_s 0 volatile  { in_stream2 Strb } }  }
	{ in_stream2_user_V int 4 regular {axi_s 0 volatile  { in_stream2 User } }  }
	{ in_stream2_last_V int 1 regular {axi_s 0 volatile  { in_stream2 Last } }  }
	{ in_stream2_id_V int 5 regular {axi_s 0 volatile  { in_stream2 ID } }  }
	{ in_stream2_dest_V int 5 regular {axi_s 0 volatile  { in_stream2 Dest } }  }
	{ out_stream_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_keep_V int 4 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_strb_V int 4 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_user_V int 4 regular {axi_s 1 volatile  { out_stream User } }  }
	{ out_stream_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ out_stream_id_V int 5 regular {axi_s 1 volatile  { out_stream ID } }  }
	{ out_stream_dest_V int 5 regular {axi_s 1 volatile  { out_stream Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream1_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_stream1.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream1_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_stream1.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream1_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_stream1.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream1_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_stream1.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream1_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream1.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream1_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "in_stream1.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream1_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "in_stream1.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream2_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_stream2.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream2_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_stream2.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream2_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_stream2.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream2_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_stream2.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream2_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream2.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream2_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "in_stream2.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream2_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "in_stream2.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 391,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_stream.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_stream.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_stream.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "out_stream.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "out_stream.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CONTROL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ in_stream1_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_stream1_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_stream1_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_stream1_TUSER sc_in sc_lv 4 signal 3 } 
	{ in_stream1_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream1_TID sc_in sc_lv 5 signal 5 } 
	{ in_stream1_TDEST sc_in sc_lv 5 signal 6 } 
	{ in_stream2_TDATA sc_in sc_lv 32 signal 7 } 
	{ in_stream2_TKEEP sc_in sc_lv 4 signal 8 } 
	{ in_stream2_TSTRB sc_in sc_lv 4 signal 9 } 
	{ in_stream2_TUSER sc_in sc_lv 4 signal 10 } 
	{ in_stream2_TLAST sc_in sc_lv 1 signal 11 } 
	{ in_stream2_TID sc_in sc_lv 5 signal 12 } 
	{ in_stream2_TDEST sc_in sc_lv 5 signal 13 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 14 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 15 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 16 } 
	{ out_stream_TUSER sc_out sc_lv 4 signal 17 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 18 } 
	{ out_stream_TID sc_out sc_lv 5 signal 19 } 
	{ out_stream_TDEST sc_out sc_lv 5 signal 20 } 
	{ in_stream1_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream1_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_stream2_TVALID sc_in sc_logic 1 invld 13 } 
	{ in_stream2_TREADY sc_out sc_logic 1 inacc 13 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 20 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 20 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"rbf_kernel","role":"start","value":"0","valid_bit":"0"},{"name":"rbf_kernel","role":"continue","value":"0","valid_bit":"4"},{"name":"rbf_kernel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"rbf_kernel","role":"start","value":"0","valid_bit":"0"},{"name":"rbf_kernel","role":"done","value":"0","valid_bit":"1"},{"name":"rbf_kernel","role":"idle","value":"0","valid_bit":"2"},{"name":"rbf_kernel","role":"ready","value":"0","valid_bit":"3"},{"name":"rbf_kernel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CONTROL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CONTROL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CONTROL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CONTROL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CONTROL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CONTROL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_stream1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream1_data_V", "role": "default" }} , 
 	{ "name": "in_stream1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream1_keep_V", "role": "default" }} , 
 	{ "name": "in_stream1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream1_strb_V", "role": "default" }} , 
 	{ "name": "in_stream1_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream1_user_V", "role": "default" }} , 
 	{ "name": "in_stream1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream1_last_V", "role": "default" }} , 
 	{ "name": "in_stream1_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream1_id_V", "role": "default" }} , 
 	{ "name": "in_stream1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream1_dest_V", "role": "default" }} , 
 	{ "name": "in_stream2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream2_data_V", "role": "default" }} , 
 	{ "name": "in_stream2_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream2_keep_V", "role": "default" }} , 
 	{ "name": "in_stream2_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream2_strb_V", "role": "default" }} , 
 	{ "name": "in_stream2_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream2_user_V", "role": "default" }} , 
 	{ "name": "in_stream2_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream2_last_V", "role": "default" }} , 
 	{ "name": "in_stream2_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream2_id_V", "role": "default" }} , 
 	{ "name": "in_stream2_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream2_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_user_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_id_V", "role": "default" }} , 
 	{ "name": "out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_dest_V", "role": "default" }} , 
 	{ "name": "in_stream1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream1_dest_V", "role": "default" }} , 
 	{ "name": "in_stream1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream1_dest_V", "role": "default" }} , 
 	{ "name": "in_stream2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream2_dest_V", "role": "default" }} , 
 	{ "name": "in_stream2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream2_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10", "13"],
		"CDFG" : "rbf_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3544", "EstimateLatencyMax" : "3544",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "Loop_1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "10", "Name" : "Block_Rbf_kernel_fun_U0"}],
		"Port" : [
			{"Name" : "in_stream1_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream1_data_V"}]},
			{"Name" : "in_stream1_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream1_keep_V"}]},
			{"Name" : "in_stream1_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream1_strb_V"}]},
			{"Name" : "in_stream1_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream1_user_V"}]},
			{"Name" : "in_stream1_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream1_last_V"}]},
			{"Name" : "in_stream1_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream1_id_V"}]},
			{"Name" : "in_stream1_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream1_dest_V"}]},
			{"Name" : "in_stream2_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream2_data_V"}]},
			{"Name" : "in_stream2_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream2_keep_V"}]},
			{"Name" : "in_stream2_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream2_strb_V"}]},
			{"Name" : "in_stream2_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream2_user_V"}]},
			{"Name" : "in_stream2_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream2_last_V"}]},
			{"Name" : "in_stream2_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream2_id_V"}]},
			{"Name" : "in_stream2_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_stream2_dest_V"}]},
			{"Name" : "out_stream_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Block_Rbf_kernel_fun_U0", "Port" : "out_stream_data_V"}]},
			{"Name" : "out_stream_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Block_Rbf_kernel_fun_U0", "Port" : "out_stream_keep_V"}]},
			{"Name" : "out_stream_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Block_Rbf_kernel_fun_U0", "Port" : "out_stream_strb_V"}]},
			{"Name" : "out_stream_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Block_Rbf_kernel_fun_U0", "Port" : "out_stream_user_V"}]},
			{"Name" : "out_stream_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Block_Rbf_kernel_fun_U0", "Port" : "out_stream_last_V"}]},
			{"Name" : "out_stream_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Block_Rbf_kernel_fun_U0", "Port" : "out_stream_id_V"}]},
			{"Name" : "out_stream_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Block_Rbf_kernel_fun_U0", "Port" : "out_stream_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rbf_kernel_CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_buf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp2_buf_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc_U0", "Parent" : "0",
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
			{"Name" : "temp_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "2"},
			{"Name" : "in_stream2_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream2_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream2_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream2_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream2_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream2_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream2_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "temp2_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "3"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_12_proc_U0", "Parent" : "0", "Child" : ["6", "7", "8", "9"],
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
			{"Name" : "temp_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "2"},
			{"Name" : "temp2_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "3"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_12_proc_U0.rbf_kernel_faddfsbkb_U17", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_12_proc_U0.rbf_kernel_fsub_3cud_U18", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_12_proc_U0.rbf_kernel_fadd_3dEe_U19", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_12_proc_U0.rbf_kernel_fmul_3eOg_U20", "Parent" : "5"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_Rbf_kernel_fun_U0", "Parent" : "0", "Child" : ["11", "12"],
		"CDFG" : "Block_Rbf_kernel_fun",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "13"},
			{"Name" : "out_stream_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_Rbf_kernel_fun_U0.rbf_kernel_fmul_3eOg_U27", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_Rbf_kernel_fun_U0.rbf_kernel_fexp_3fYi_U28", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_3_loc_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rbf_kernel {
		in_stream1_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream1_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream1_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream1_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream1_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream1_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream1_dest_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream2_dest_V {Type I LastRead 1 FirstWrite -1}
		out_stream_data_V {Type O LastRead -1 FirstWrite 12}
		out_stream_keep_V {Type O LastRead -1 FirstWrite 12}
		out_stream_strb_V {Type O LastRead -1 FirstWrite 12}
		out_stream_user_V {Type O LastRead -1 FirstWrite 12}
		out_stream_last_V {Type O LastRead -1 FirstWrite 12}
		out_stream_id_V {Type O LastRead -1 FirstWrite 12}
		out_stream_dest_V {Type O LastRead -1 FirstWrite 12}}
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
		temp2_buf {Type O LastRead -1 FirstWrite 2}}
	Loop_LOOP_12_proc {
		temp_buf {Type I LastRead 6 FirstWrite -1}
		temp2_buf {Type I LastRead 6 FirstWrite -1}}
	Block_Rbf_kernel_fun {
		p_read {Type I LastRead 0 FirstWrite -1}
		out_stream_data_V {Type O LastRead -1 FirstWrite 12}
		out_stream_keep_V {Type O LastRead -1 FirstWrite 12}
		out_stream_strb_V {Type O LastRead -1 FirstWrite 12}
		out_stream_user_V {Type O LastRead -1 FirstWrite 12}
		out_stream_last_V {Type O LastRead -1 FirstWrite 12}
		out_stream_id_V {Type O LastRead -1 FirstWrite 12}
		out_stream_dest_V {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3544", "Max" : "3544"}
	, {"Name" : "Interval", "Min" : "3150", "Max" : "3150"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream1_data_V { axis {  { in_stream1_TDATA in_data 0 32 } } }
	in_stream1_keep_V { axis {  { in_stream1_TKEEP in_data 0 4 } } }
	in_stream1_strb_V { axis {  { in_stream1_TSTRB in_data 0 4 } } }
	in_stream1_user_V { axis {  { in_stream1_TUSER in_data 0 4 } } }
	in_stream1_last_V { axis {  { in_stream1_TLAST in_data 0 1 } } }
	in_stream1_id_V { axis {  { in_stream1_TID in_data 0 5 } } }
	in_stream1_dest_V { axis {  { in_stream1_TDEST in_data 0 5 }  { in_stream1_TVALID in_vld 0 1 }  { in_stream1_TREADY in_acc 1 1 } } }
	in_stream2_data_V { axis {  { in_stream2_TDATA in_data 0 32 } } }
	in_stream2_keep_V { axis {  { in_stream2_TKEEP in_data 0 4 } } }
	in_stream2_strb_V { axis {  { in_stream2_TSTRB in_data 0 4 } } }
	in_stream2_user_V { axis {  { in_stream2_TUSER in_data 0 4 } } }
	in_stream2_last_V { axis {  { in_stream2_TLAST in_data 0 1 } } }
	in_stream2_id_V { axis {  { in_stream2_TID in_data 0 5 } } }
	in_stream2_dest_V { axis {  { in_stream2_TDEST in_data 0 5 }  { in_stream2_TVALID in_vld 0 1 }  { in_stream2_TREADY in_acc 1 1 } } }
	out_stream_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_user_V { axis {  { out_stream_TUSER out_data 1 4 } } }
	out_stream_last_V { axis {  { out_stream_TLAST out_data 1 1 } } }
	out_stream_id_V { axis {  { out_stream_TID out_data 1 5 } } }
	out_stream_dest_V { axis {  { out_stream_TDEST out_data 1 5 }  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
