set C_TypeInfoList {{ 
"tiled_kernel_matrix" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"kernel_index_stream": [[],{ "pointer": "0"}] }, {"kernel_in_stream": [[],{ "pointer": "0"}] }, {"kernel_out_stream": [[],{ "pointer": "0"}] }, {"length_x": [[],{ "pointer":  {"scalar": "unsigned int"}}] }],[],""], 
"0": [ "AXI_VAL", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_axiu<32, 4, 5, 5>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 4}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 5}}]}],[{ "data": [[], "2"]},{ "keep": [[], "3"]},{ "strb": [[], "3"]},{ "user": [[], "3"]},{ "last": [[], "4"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"5": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}]
}}
set moduleName tiled_kernel_matrix
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
set C_modelName {tiled_kernel_matrix}
set C_modelType { void 0 }
set C_modelArgList {
	{ kernel_index_stream_data_V int 32 regular {axi_s 0 volatile  { kernel_index_stream Data } }  }
	{ kernel_index_stream_keep_V int 4 regular {axi_s 0 volatile  { kernel_index_stream Keep } }  }
	{ kernel_index_stream_strb_V int 4 regular {axi_s 0 volatile  { kernel_index_stream Strb } }  }
	{ kernel_index_stream_user_V int 4 regular {axi_s 0 volatile  { kernel_index_stream User } }  }
	{ kernel_index_stream_last_V int 1 regular {axi_s 0 volatile  { kernel_index_stream Last } }  }
	{ kernel_index_stream_id_V int 5 regular {axi_s 0 volatile  { kernel_index_stream ID } }  }
	{ kernel_index_stream_dest_V int 5 regular {axi_s 0 volatile  { kernel_index_stream Dest } }  }
	{ kernel_in_stream_data_V int 32 regular {axi_s 0 volatile  { kernel_in_stream Data } }  }
	{ kernel_in_stream_keep_V int 4 regular {axi_s 0 volatile  { kernel_in_stream Keep } }  }
	{ kernel_in_stream_strb_V int 4 regular {axi_s 0 volatile  { kernel_in_stream Strb } }  }
	{ kernel_in_stream_user_V int 4 regular {axi_s 0 volatile  { kernel_in_stream User } }  }
	{ kernel_in_stream_last_V int 1 regular {axi_s 0 volatile  { kernel_in_stream Last } }  }
	{ kernel_in_stream_id_V int 5 regular {axi_s 0 volatile  { kernel_in_stream ID } }  }
	{ kernel_in_stream_dest_V int 5 regular {axi_s 0 volatile  { kernel_in_stream Dest } }  }
	{ kernel_out_stream_data_V int 32 regular {axi_s 1 volatile  { kernel_out_stream Data } }  }
	{ kernel_out_stream_keep_V int 4 regular {axi_s 1 volatile  { kernel_out_stream Keep } }  }
	{ kernel_out_stream_strb_V int 4 regular {axi_s 1 volatile  { kernel_out_stream Strb } }  }
	{ kernel_out_stream_user_V int 4 regular {axi_s 1 volatile  { kernel_out_stream User } }  }
	{ kernel_out_stream_last_V int 1 regular {axi_s 1 volatile  { kernel_out_stream Last } }  }
	{ kernel_out_stream_id_V int 5 regular {axi_s 1 volatile  { kernel_out_stream ID } }  }
	{ kernel_out_stream_dest_V int 5 regular {axi_s 1 volatile  { kernel_out_stream Dest } }  }
	{ length_x int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "kernel_index_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel_index_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_index_stream.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_index_stream.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_index_stream.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "kernel_index_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_index_stream.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_index_stream.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel_in_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_in_stream.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_in_stream.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_in_stream.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "kernel_in_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_in_stream.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_in_stream.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel_out_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_out_stream.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_out_stream.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_out_stream.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "kernel_out_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_out_stream.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_out_stream.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "length_x", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "length_x","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ kernel_index_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ kernel_index_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ kernel_index_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ kernel_index_stream_TKEEP sc_in sc_lv 4 signal 1 } 
	{ kernel_index_stream_TSTRB sc_in sc_lv 4 signal 2 } 
	{ kernel_index_stream_TUSER sc_in sc_lv 4 signal 3 } 
	{ kernel_index_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ kernel_index_stream_TID sc_in sc_lv 5 signal 5 } 
	{ kernel_index_stream_TDEST sc_in sc_lv 5 signal 6 } 
	{ kernel_in_stream_TDATA sc_in sc_lv 32 signal 7 } 
	{ kernel_in_stream_TVALID sc_in sc_logic 1 invld 13 } 
	{ kernel_in_stream_TREADY sc_out sc_logic 1 inacc 13 } 
	{ kernel_in_stream_TKEEP sc_in sc_lv 4 signal 8 } 
	{ kernel_in_stream_TSTRB sc_in sc_lv 4 signal 9 } 
	{ kernel_in_stream_TUSER sc_in sc_lv 4 signal 10 } 
	{ kernel_in_stream_TLAST sc_in sc_lv 1 signal 11 } 
	{ kernel_in_stream_TID sc_in sc_lv 5 signal 12 } 
	{ kernel_in_stream_TDEST sc_in sc_lv 5 signal 13 } 
	{ kernel_out_stream_TDATA sc_out sc_lv 32 signal 14 } 
	{ kernel_out_stream_TVALID sc_out sc_logic 1 outvld 20 } 
	{ kernel_out_stream_TREADY sc_in sc_logic 1 outacc 20 } 
	{ kernel_out_stream_TKEEP sc_out sc_lv 4 signal 15 } 
	{ kernel_out_stream_TSTRB sc_out sc_lv 4 signal 16 } 
	{ kernel_out_stream_TUSER sc_out sc_lv 4 signal 17 } 
	{ kernel_out_stream_TLAST sc_out sc_lv 1 signal 18 } 
	{ kernel_out_stream_TID sc_out sc_lv 5 signal 19 } 
	{ kernel_out_stream_TDEST sc_out sc_lv 5 signal 20 } 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CONTROL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CONTROL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"tiled_kernel_matrix","role":"start","value":"0","valid_bit":"0"},{"name":"tiled_kernel_matrix","role":"continue","value":"0","valid_bit":"4"},{"name":"tiled_kernel_matrix","role":"auto_start","value":"0","valid_bit":"7"},{"name":"length_x","role":"data","value":"16"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"tiled_kernel_matrix","role":"start","value":"0","valid_bit":"0"},{"name":"tiled_kernel_matrix","role":"done","value":"0","valid_bit":"1"},{"name":"tiled_kernel_matrix","role":"idle","value":"0","valid_bit":"2"},{"name":"tiled_kernel_matrix","role":"ready","value":"0","valid_bit":"3"},{"name":"tiled_kernel_matrix","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "kernel_index_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_index_stream_data_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "kernel_index_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "kernel_index_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_index_stream_keep_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_index_stream_strb_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_index_stream_user_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_index_stream_last_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_index_stream_id_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_index_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_in_stream_data_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "kernel_in_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "kernel_in_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_in_stream_keep_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_in_stream_strb_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_in_stream_user_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_in_stream_last_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_in_stream_id_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_in_stream_dest_V", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "10"],
		"CDFG" : "tiled_kernel_matrix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state407", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rbf_kernel_fu_14481"}],
		"Port" : [
			{"Name" : "kernel_index_stream_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "kernel_index_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_index_stream_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "kernel_in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_in_stream_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_out_stream_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "kernel_out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_out_stream_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "length_x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tiled_kernel_matrix_CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.index_buf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp2_buf_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rbf_kernel_fu_14481", "Parent" : "0", "Child" : ["7", "8", "9"],
		"CDFG" : "rbf_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3943", "EstimateLatencyMax" : "3943",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rbf_kernel_fu_14481.tiled_kernel_matrbkb_U1", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rbf_kernel_fu_14481.tiled_kernel_matrcud_U2", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rbf_kernel_fu_14481.tiled_kernel_matrdEe_U3", "Parent" : "6"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tiled_kernel_matribs_U9", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tiled_kernel_matrix {
		kernel_index_stream_data_V {Type I LastRead 3 FirstWrite -1}
		kernel_index_stream_keep_V {Type I LastRead 3 FirstWrite -1}
		kernel_index_stream_strb_V {Type I LastRead 3 FirstWrite -1}
		kernel_index_stream_user_V {Type I LastRead 3 FirstWrite -1}
		kernel_index_stream_last_V {Type I LastRead 3 FirstWrite -1}
		kernel_index_stream_id_V {Type I LastRead 3 FirstWrite -1}
		kernel_index_stream_dest_V {Type I LastRead 3 FirstWrite -1}
		kernel_in_stream_data_V {Type I LastRead 8 FirstWrite -1}
		kernel_in_stream_keep_V {Type I LastRead 8 FirstWrite -1}
		kernel_in_stream_strb_V {Type I LastRead 8 FirstWrite -1}
		kernel_in_stream_user_V {Type I LastRead 8 FirstWrite -1}
		kernel_in_stream_last_V {Type I LastRead 8 FirstWrite -1}
		kernel_in_stream_id_V {Type I LastRead 8 FirstWrite -1}
		kernel_in_stream_dest_V {Type I LastRead 8 FirstWrite -1}
		kernel_out_stream_data_V {Type O LastRead -1 FirstWrite 8}
		kernel_out_stream_keep_V {Type O LastRead -1 FirstWrite 8}
		kernel_out_stream_strb_V {Type O LastRead -1 FirstWrite 8}
		kernel_out_stream_user_V {Type O LastRead -1 FirstWrite 8}
		kernel_out_stream_last_V {Type O LastRead -1 FirstWrite 8}
		kernel_out_stream_id_V {Type O LastRead -1 FirstWrite 8}
		kernel_out_stream_dest_V {Type O LastRead -1 FirstWrite 8}
		length_x {Type I LastRead 6 FirstWrite -1}}
	rbf_kernel {
		input1 {Type I LastRead 3915 FirstWrite -1}
		input2 {Type I LastRead 3915 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	kernel_index_stream_data_V { axis {  { kernel_index_stream_TDATA in_data 0 32 } } }
	kernel_index_stream_keep_V { axis {  { kernel_index_stream_TKEEP in_data 0 4 } } }
	kernel_index_stream_strb_V { axis {  { kernel_index_stream_TSTRB in_data 0 4 } } }
	kernel_index_stream_user_V { axis {  { kernel_index_stream_TUSER in_data 0 4 } } }
	kernel_index_stream_last_V { axis {  { kernel_index_stream_TLAST in_data 0 1 } } }
	kernel_index_stream_id_V { axis {  { kernel_index_stream_TID in_data 0 5 } } }
	kernel_index_stream_dest_V { axis {  { kernel_index_stream_TVALID in_vld 0 1 }  { kernel_index_stream_TREADY in_acc 1 1 }  { kernel_index_stream_TDEST in_data 0 5 } } }
	kernel_in_stream_data_V { axis {  { kernel_in_stream_TDATA in_data 0 32 } } }
	kernel_in_stream_keep_V { axis {  { kernel_in_stream_TKEEP in_data 0 4 } } }
	kernel_in_stream_strb_V { axis {  { kernel_in_stream_TSTRB in_data 0 4 } } }
	kernel_in_stream_user_V { axis {  { kernel_in_stream_TUSER in_data 0 4 } } }
	kernel_in_stream_last_V { axis {  { kernel_in_stream_TLAST in_data 0 1 } } }
	kernel_in_stream_id_V { axis {  { kernel_in_stream_TID in_data 0 5 } } }
	kernel_in_stream_dest_V { axis {  { kernel_in_stream_TVALID in_vld 0 1 }  { kernel_in_stream_TREADY in_acc 1 1 }  { kernel_in_stream_TDEST in_data 0 5 } } }
	kernel_out_stream_data_V { axis {  { kernel_out_stream_TDATA out_data 1 32 } } }
	kernel_out_stream_keep_V { axis {  { kernel_out_stream_TKEEP out_data 1 4 } } }
	kernel_out_stream_strb_V { axis {  { kernel_out_stream_TSTRB out_data 1 4 } } }
	kernel_out_stream_user_V { axis {  { kernel_out_stream_TUSER out_data 1 4 } } }
	kernel_out_stream_last_V { axis {  { kernel_out_stream_TLAST out_data 1 1 } } }
	kernel_out_stream_id_V { axis {  { kernel_out_stream_TID out_data 1 5 } } }
	kernel_out_stream_dest_V { axis {  { kernel_out_stream_TVALID out_vld 1 1 }  { kernel_out_stream_TREADY out_acc 0 1 }  { kernel_out_stream_TDEST out_data 1 5 } } }
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
