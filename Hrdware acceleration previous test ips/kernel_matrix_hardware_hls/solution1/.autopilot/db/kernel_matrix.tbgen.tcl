set C_TypeInfoList {{ 
"kernel_matrix" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"length_x": [[],{ "pointer":  {"scalar": "int"}}] }, {"tile_size": [[],{ "pointer":  {"scalar": "int"}}] }, {"remaining_size": [[],{ "pointer":  {"scalar": "int"}}] }, {"kernel_in_stream": [[],{ "pointer": "0"}] }, {"kernel_index_stream": [[],{ "pointer": "0"}] }, {"kernel_out_stream": [[],{ "pointer": "0"}] }],[],""], 
"0": [ "AXI_VAL", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_axiu<32, 4, 5, 5>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 4}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 5}}]}],[{ "data": [[], "2"]},{ "keep": [[], "3"]},{ "strb": [[], "3"]},{ "user": [[], "3"]},{ "last": [[], "4"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"5": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}]
}}
set moduleName kernel_matrix
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
set C_modelName {kernel_matrix}
set C_modelType { void 0 }
set C_modelArgList {
	{ length_x int 32 regular {axi_slave 0}  }
	{ tile_size int 32 regular {axi_slave 0}  }
	{ remaining_size int 32 regular {axi_slave 0}  }
	{ kernel_in_stream_data_V int 32 regular {axi_s 0 volatile  { kernel_in_stream Data } }  }
	{ kernel_in_stream_keep_V int 4 regular {axi_s 0 volatile  { kernel_in_stream Keep } }  }
	{ kernel_in_stream_strb_V int 4 regular {axi_s 0 volatile  { kernel_in_stream Strb } }  }
	{ kernel_in_stream_user_V int 4 regular {axi_s 0 volatile  { kernel_in_stream User } }  }
	{ kernel_in_stream_last_V int 1 regular {axi_s 0 volatile  { kernel_in_stream Last } }  }
	{ kernel_in_stream_id_V int 5 regular {axi_s 0 volatile  { kernel_in_stream ID } }  }
	{ kernel_in_stream_dest_V int 5 regular {axi_s 0 volatile  { kernel_in_stream Dest } }  }
	{ kernel_index_stream_data_V int 32 regular {axi_s 0 volatile  { kernel_index_stream Data } }  }
	{ kernel_index_stream_keep_V int 4 regular {axi_s 0 volatile  { kernel_index_stream Keep } }  }
	{ kernel_index_stream_strb_V int 4 regular {axi_s 0 volatile  { kernel_index_stream Strb } }  }
	{ kernel_index_stream_user_V int 4 regular {axi_s 0 volatile  { kernel_index_stream User } }  }
	{ kernel_index_stream_last_V int 1 regular {axi_s 0 volatile  { kernel_index_stream Last } }  }
	{ kernel_index_stream_id_V int 5 regular {axi_s 0 volatile  { kernel_index_stream ID } }  }
	{ kernel_index_stream_dest_V int 5 regular {axi_s 0 volatile  { kernel_index_stream Dest } }  }
	{ kernel_out_stream_data_V int 32 regular {axi_s 1 volatile  { kernel_out_stream Data } }  }
	{ kernel_out_stream_keep_V int 4 regular {axi_s 1 volatile  { kernel_out_stream Keep } }  }
	{ kernel_out_stream_strb_V int 4 regular {axi_s 1 volatile  { kernel_out_stream Strb } }  }
	{ kernel_out_stream_user_V int 4 regular {axi_s 1 volatile  { kernel_out_stream User } }  }
	{ kernel_out_stream_last_V int 1 regular {axi_s 1 volatile  { kernel_out_stream Last } }  }
	{ kernel_out_stream_id_V int 5 regular {axi_s 1 volatile  { kernel_out_stream ID } }  }
	{ kernel_out_stream_dest_V int 5 regular {axi_s 1 volatile  { kernel_out_stream Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "length_x", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "length_x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "tile_size", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tile_size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "remaining_size", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "remaining_size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "kernel_in_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel_in_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_in_stream.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_in_stream.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_in_stream.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "kernel_in_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_in_stream.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_in_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_in_stream.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel_index_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_index_stream.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_index_stream.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_index_stream.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "kernel_index_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_index_stream.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_index_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_index_stream.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel_out_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_out_stream.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_out_stream.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "kernel_out_stream.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "kernel_out_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_out_stream.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_out_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_out_stream.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 6 signal -1 } 
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
	{ kernel_in_stream_TDATA sc_in sc_lv 32 signal 3 } 
	{ kernel_in_stream_TKEEP sc_in sc_lv 4 signal 4 } 
	{ kernel_in_stream_TSTRB sc_in sc_lv 4 signal 5 } 
	{ kernel_in_stream_TUSER sc_in sc_lv 4 signal 6 } 
	{ kernel_in_stream_TLAST sc_in sc_lv 1 signal 7 } 
	{ kernel_in_stream_TID sc_in sc_lv 5 signal 8 } 
	{ kernel_in_stream_TDEST sc_in sc_lv 5 signal 9 } 
	{ kernel_index_stream_TDATA sc_in sc_lv 32 signal 10 } 
	{ kernel_index_stream_TKEEP sc_in sc_lv 4 signal 11 } 
	{ kernel_index_stream_TSTRB sc_in sc_lv 4 signal 12 } 
	{ kernel_index_stream_TUSER sc_in sc_lv 4 signal 13 } 
	{ kernel_index_stream_TLAST sc_in sc_lv 1 signal 14 } 
	{ kernel_index_stream_TID sc_in sc_lv 5 signal 15 } 
	{ kernel_index_stream_TDEST sc_in sc_lv 5 signal 16 } 
	{ kernel_out_stream_TDATA sc_out sc_lv 32 signal 17 } 
	{ kernel_out_stream_TKEEP sc_out sc_lv 4 signal 18 } 
	{ kernel_out_stream_TSTRB sc_out sc_lv 4 signal 19 } 
	{ kernel_out_stream_TUSER sc_out sc_lv 4 signal 20 } 
	{ kernel_out_stream_TLAST sc_out sc_lv 1 signal 21 } 
	{ kernel_out_stream_TID sc_out sc_lv 5 signal 22 } 
	{ kernel_out_stream_TDEST sc_out sc_lv 5 signal 23 } 
	{ kernel_index_stream_TVALID sc_in sc_logic 1 invld 16 } 
	{ kernel_index_stream_TREADY sc_out sc_logic 1 inacc 16 } 
	{ kernel_in_stream_TVALID sc_in sc_logic 1 invld 9 } 
	{ kernel_in_stream_TREADY sc_out sc_logic 1 inacc 9 } 
	{ kernel_out_stream_TVALID sc_out sc_logic 1 outvld 23 } 
	{ kernel_out_stream_TREADY sc_in sc_logic 1 outacc 23 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"kernel_matrix","role":"start","value":"0","valid_bit":"0"},{"name":"kernel_matrix","role":"continue","value":"0","valid_bit":"4"},{"name":"kernel_matrix","role":"auto_start","value":"0","valid_bit":"7"},{"name":"length_x","role":"data","value":"16"},{"name":"tile_size","role":"data","value":"24"},{"name":"remaining_size","role":"data","value":"32"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"kernel_matrix","role":"start","value":"0","valid_bit":"0"},{"name":"kernel_matrix","role":"done","value":"0","valid_bit":"1"},{"name":"kernel_matrix","role":"idle","value":"0","valid_bit":"2"},{"name":"kernel_matrix","role":"ready","value":"0","valid_bit":"3"},{"name":"kernel_matrix","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "kernel_in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_in_stream_data_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_in_stream_keep_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_in_stream_strb_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_in_stream_user_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_in_stream_last_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_in_stream_id_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_in_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_index_stream_data_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_index_stream_keep_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_index_stream_strb_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_index_stream_user_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_index_stream_last_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_index_stream_id_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_index_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_out_stream_data_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_out_stream_keep_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_out_stream_strb_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_out_stream_user_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_out_stream_last_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_out_stream_id_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_out_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "kernel_index_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "kernel_index_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "kernel_in_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "kernel_in_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "kernel_out_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "kernel_out_stream_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "13", "14", "15", "16"],
		"CDFG" : "kernel_matrix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "Loop_LOOP_1_proc10_U0", "ReadyCount" : "Loop_LOOP_1_proc10_U0_ap_ready_count"},
			{"ID" : "5", "Name" : "Loop_LOOP_2_proc9_U0", "ReadyCount" : "Loop_LOOP_2_proc9_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "Loop_LOOP_6_proc_U0"}],
		"Port" : [
			{"Name" : "length_x", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_LOOP_1_proc10_U0", "Port" : "length_x"}]},
			{"Name" : "tile_size", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_LOOP_1_proc10_U0", "Port" : "tile_size"}]},
			{"Name" : "remaining_size", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_LOOP_1_proc10_U0", "Port" : "remaining_size"}]},
			{"Name" : "kernel_in_stream_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Loop_LOOP_2_proc9_U0", "Port" : "kernel_in_stream_data_V"}]},
			{"Name" : "kernel_in_stream_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Loop_LOOP_2_proc9_U0", "Port" : "kernel_in_stream_keep_V"}]},
			{"Name" : "kernel_in_stream_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Loop_LOOP_2_proc9_U0", "Port" : "kernel_in_stream_strb_V"}]},
			{"Name" : "kernel_in_stream_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Loop_LOOP_2_proc9_U0", "Port" : "kernel_in_stream_user_V"}]},
			{"Name" : "kernel_in_stream_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Loop_LOOP_2_proc9_U0", "Port" : "kernel_in_stream_last_V"}]},
			{"Name" : "kernel_in_stream_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Loop_LOOP_2_proc9_U0", "Port" : "kernel_in_stream_id_V"}]},
			{"Name" : "kernel_in_stream_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Loop_LOOP_2_proc9_U0", "Port" : "kernel_in_stream_dest_V"}]},
			{"Name" : "kernel_index_stream_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_LOOP_1_proc10_U0", "Port" : "kernel_index_stream_data_V"}]},
			{"Name" : "kernel_index_stream_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_LOOP_1_proc10_U0", "Port" : "kernel_index_stream_keep_V"}]},
			{"Name" : "kernel_index_stream_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_LOOP_1_proc10_U0", "Port" : "kernel_index_stream_strb_V"}]},
			{"Name" : "kernel_index_stream_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_LOOP_1_proc10_U0", "Port" : "kernel_index_stream_user_V"}]},
			{"Name" : "kernel_index_stream_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_LOOP_1_proc10_U0", "Port" : "kernel_index_stream_last_V"}]},
			{"Name" : "kernel_index_stream_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_LOOP_1_proc10_U0", "Port" : "kernel_index_stream_id_V"}]},
			{"Name" : "kernel_index_stream_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_LOOP_1_proc10_U0", "Port" : "kernel_index_stream_dest_V"}]},
			{"Name" : "kernel_out_stream_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "Loop_LOOP_6_proc_U0", "Port" : "kernel_out_stream_data_V"}]},
			{"Name" : "kernel_out_stream_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "Loop_LOOP_6_proc_U0", "Port" : "kernel_out_stream_keep_V"}]},
			{"Name" : "kernel_out_stream_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "Loop_LOOP_6_proc_U0", "Port" : "kernel_out_stream_strb_V"}]},
			{"Name" : "kernel_out_stream_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "Loop_LOOP_6_proc_U0", "Port" : "kernel_out_stream_user_V"}]},
			{"Name" : "kernel_out_stream_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "Loop_LOOP_6_proc_U0", "Port" : "kernel_out_stream_last_V"}]},
			{"Name" : "kernel_out_stream_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "Loop_LOOP_6_proc_U0", "Port" : "kernel_out_stream_id_V"}]},
			{"Name" : "kernel_out_stream_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "Loop_LOOP_6_proc_U0", "Port" : "kernel_out_stream_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.index_buf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_1_proc10_U0", "Parent" : "0",
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
			{"Name" : "index_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "2"},
			{"Name" : "length_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "tile_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "remaining_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "length_x_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "length_x_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tile_size_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "tile_size_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "remaining_size_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "remaining_size_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_2_proc9_U0", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12"],
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
			{"Name" : "tile_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "tile_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "remaining_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "remaining_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "result_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "3"},
			{"Name" : "index_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "2"},
			{"Name" : "kernel_in_stream_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "kernel_in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_in_stream_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_dest_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_2_proc9_U0.input_buf_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_2_proc9_U0.kernel_matrix_fadcud_U15", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_2_proc9_U0.kernel_matrix_fmudEe_U16", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_2_proc9_U0.kernel_matrix_fpteOg_U17", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_2_proc9_U0.kernel_matrix_fpefYi_U18", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_2_proc9_U0.kernel_matrix_fexg8j_U19", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_2_proc9_U0.kernel_matrix_dmuhbi_U20", "Parent" : "5"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_LOOP_6_proc_U0", "Parent" : "0",
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
			{"Name" : "length_x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "length_x_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "result_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "3"},
			{"Name" : "kernel_out_stream_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "kernel_out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_out_stream_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.length_x_c_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tile_size_c_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.remaining_size_c_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel_matrix {
		length_x {Type I LastRead 0 FirstWrite -1}
		tile_size {Type I LastRead 0 FirstWrite -1}
		remaining_size {Type I LastRead 0 FirstWrite -1}
		kernel_in_stream_data_V {Type I LastRead 2291 FirstWrite -1}
		kernel_in_stream_keep_V {Type I LastRead 2291 FirstWrite -1}
		kernel_in_stream_strb_V {Type I LastRead 2291 FirstWrite -1}
		kernel_in_stream_user_V {Type I LastRead 2291 FirstWrite -1}
		kernel_in_stream_last_V {Type I LastRead 2291 FirstWrite -1}
		kernel_in_stream_id_V {Type I LastRead 2291 FirstWrite -1}
		kernel_in_stream_dest_V {Type I LastRead 2291 FirstWrite -1}
		kernel_index_stream_data_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_keep_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_strb_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_user_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_last_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_id_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_dest_V {Type I LastRead 1 FirstWrite -1}
		kernel_out_stream_data_V {Type O LastRead -1 FirstWrite 2}
		kernel_out_stream_keep_V {Type O LastRead -1 FirstWrite 2}
		kernel_out_stream_strb_V {Type O LastRead -1 FirstWrite 2}
		kernel_out_stream_user_V {Type O LastRead -1 FirstWrite 2}
		kernel_out_stream_last_V {Type O LastRead -1 FirstWrite 2}
		kernel_out_stream_id_V {Type O LastRead -1 FirstWrite 2}
		kernel_out_stream_dest_V {Type O LastRead -1 FirstWrite 2}}
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
		remaining_size_out {Type O LastRead -1 FirstWrite 0}}
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
		kernel_in_stream_dest_V {Type I LastRead 2291 FirstWrite -1}}
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
]}

set Spec2ImplPortList { 
	kernel_in_stream_data_V { axis {  { kernel_in_stream_TDATA in_data 0 32 } } }
	kernel_in_stream_keep_V { axis {  { kernel_in_stream_TKEEP in_data 0 4 } } }
	kernel_in_stream_strb_V { axis {  { kernel_in_stream_TSTRB in_data 0 4 } } }
	kernel_in_stream_user_V { axis {  { kernel_in_stream_TUSER in_data 0 4 } } }
	kernel_in_stream_last_V { axis {  { kernel_in_stream_TLAST in_data 0 1 } } }
	kernel_in_stream_id_V { axis {  { kernel_in_stream_TID in_data 0 5 } } }
	kernel_in_stream_dest_V { axis {  { kernel_in_stream_TDEST in_data 0 5 }  { kernel_in_stream_TVALID in_vld 0 1 }  { kernel_in_stream_TREADY in_acc 1 1 } } }
	kernel_index_stream_data_V { axis {  { kernel_index_stream_TDATA in_data 0 32 } } }
	kernel_index_stream_keep_V { axis {  { kernel_index_stream_TKEEP in_data 0 4 } } }
	kernel_index_stream_strb_V { axis {  { kernel_index_stream_TSTRB in_data 0 4 } } }
	kernel_index_stream_user_V { axis {  { kernel_index_stream_TUSER in_data 0 4 } } }
	kernel_index_stream_last_V { axis {  { kernel_index_stream_TLAST in_data 0 1 } } }
	kernel_index_stream_id_V { axis {  { kernel_index_stream_TID in_data 0 5 } } }
	kernel_index_stream_dest_V { axis {  { kernel_index_stream_TDEST in_data 0 5 }  { kernel_index_stream_TVALID in_vld 0 1 }  { kernel_index_stream_TREADY in_acc 1 1 } } }
	kernel_out_stream_data_V { axis {  { kernel_out_stream_TDATA out_data 1 32 } } }
	kernel_out_stream_keep_V { axis {  { kernel_out_stream_TKEEP out_data 1 4 } } }
	kernel_out_stream_strb_V { axis {  { kernel_out_stream_TSTRB out_data 1 4 } } }
	kernel_out_stream_user_V { axis {  { kernel_out_stream_TUSER out_data 1 4 } } }
	kernel_out_stream_last_V { axis {  { kernel_out_stream_TLAST out_data 1 1 } } }
	kernel_out_stream_id_V { axis {  { kernel_out_stream_TID out_data 1 5 } } }
	kernel_out_stream_dest_V { axis {  { kernel_out_stream_TDEST out_data 1 5 }  { kernel_out_stream_TVALID out_vld 1 1 }  { kernel_out_stream_TREADY out_acc 0 1 } } }
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
