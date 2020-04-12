set C_TypeInfoList {{ 
"kernel_matrix" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"length_x": [[],{ "pointer":  {"scalar": "int"}}] }, {"tile_size": [[],{ "pointer":  {"scalar": "int"}}] }, {"remaining_size": [[],{ "pointer":  {"scalar": "int"}}] }, {"kernel_in_stream": [[],{ "pointer": "0"}] }, {"kernel_index_stream": [[],{ "pointer": "0"}] }, {"kernel_out_stream": [[],{ "pointer": "0"}] }],[],""], 
"0": [ "AXI_VAL", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_axiu<32, 4, 5, 5>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 4}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 5}}]}],[{ "data": [[], "2"]},{ "keep": [[], "3"]},{ "strb": [[], "3"]},{ "user": [[], "3"]},{ "last": [[], "4"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"5": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}]
}}
set moduleName kernel_matrix
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
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ kernel_in_stream_TDATA sc_in sc_lv 32 signal 3 } 
	{ kernel_in_stream_TVALID sc_in sc_logic 1 invld 9 } 
	{ kernel_in_stream_TREADY sc_out sc_logic 1 inacc 9 } 
	{ kernel_in_stream_TKEEP sc_in sc_lv 4 signal 4 } 
	{ kernel_in_stream_TSTRB sc_in sc_lv 4 signal 5 } 
	{ kernel_in_stream_TUSER sc_in sc_lv 4 signal 6 } 
	{ kernel_in_stream_TLAST sc_in sc_lv 1 signal 7 } 
	{ kernel_in_stream_TID sc_in sc_lv 5 signal 8 } 
	{ kernel_in_stream_TDEST sc_in sc_lv 5 signal 9 } 
	{ kernel_index_stream_TDATA sc_in sc_lv 32 signal 10 } 
	{ kernel_index_stream_TVALID sc_in sc_logic 1 invld 16 } 
	{ kernel_index_stream_TREADY sc_out sc_logic 1 inacc 16 } 
	{ kernel_index_stream_TKEEP sc_in sc_lv 4 signal 11 } 
	{ kernel_index_stream_TSTRB sc_in sc_lv 4 signal 12 } 
	{ kernel_index_stream_TUSER sc_in sc_lv 4 signal 13 } 
	{ kernel_index_stream_TLAST sc_in sc_lv 1 signal 14 } 
	{ kernel_index_stream_TID sc_in sc_lv 5 signal 15 } 
	{ kernel_index_stream_TDEST sc_in sc_lv 5 signal 16 } 
	{ kernel_out_stream_TDATA sc_out sc_lv 32 signal 17 } 
	{ kernel_out_stream_TVALID sc_out sc_logic 1 outvld 23 } 
	{ kernel_out_stream_TREADY sc_in sc_logic 1 outacc 23 } 
	{ kernel_out_stream_TKEEP sc_out sc_lv 4 signal 18 } 
	{ kernel_out_stream_TSTRB sc_out sc_lv 4 signal 19 } 
	{ kernel_out_stream_TUSER sc_out sc_lv 4 signal 20 } 
	{ kernel_out_stream_TLAST sc_out sc_lv 1 signal 21 } 
	{ kernel_out_stream_TID sc_out sc_lv 5 signal 22 } 
	{ kernel_out_stream_TDEST sc_out sc_lv 5 signal 23 } 
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
	{ interrupt sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "kernel_in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "kernel_in_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "kernel_in_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_in_stream_keep_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_in_stream_strb_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_in_stream_user_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_in_stream_last_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_in_stream_id_V", "role": "default" }} , 
 	{ "name": "kernel_in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_in_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_index_stream_data_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "kernel_index_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "kernel_index_stream_dest_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_index_stream_keep_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_index_stream_strb_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_index_stream_user_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_index_stream_last_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_index_stream_id_V", "role": "default" }} , 
 	{ "name": "kernel_index_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_index_stream_dest_V", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "kernel_matrix",
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
		"Port" : [
			{"Name" : "length_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "tile_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "remaining_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_in_stream_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "kernel_in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_in_stream_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_in_stream_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "kernel_index_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_index_stream_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_index_stream_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "kernel_out_stream_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "kernel_out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_out_stream_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "kernel_out_stream_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.index_buf_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_fadeOg_U1", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_fmufYi_U2", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_fptg8j_U3", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_fpehbi_U4", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_fexibs_U5", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_matrix_dmujbC_U6", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel_matrix {
		length_x {Type I LastRead 3 FirstWrite -1}
		tile_size {Type I LastRead 2 FirstWrite -1}
		remaining_size {Type I LastRead 2 FirstWrite -1}
		kernel_in_stream_data_V {Type I LastRead 2082 FirstWrite -1}
		kernel_in_stream_keep_V {Type I LastRead 2082 FirstWrite -1}
		kernel_in_stream_strb_V {Type I LastRead 2082 FirstWrite -1}
		kernel_in_stream_user_V {Type I LastRead 2082 FirstWrite -1}
		kernel_in_stream_last_V {Type I LastRead 2082 FirstWrite -1}
		kernel_in_stream_id_V {Type I LastRead 2082 FirstWrite -1}
		kernel_in_stream_dest_V {Type I LastRead 2082 FirstWrite -1}
		kernel_index_stream_data_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_keep_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_strb_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_user_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_last_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_id_V {Type I LastRead 1 FirstWrite -1}
		kernel_index_stream_dest_V {Type I LastRead 1 FirstWrite -1}
		kernel_out_stream_data_V {Type O LastRead -1 FirstWrite 4}
		kernel_out_stream_keep_V {Type O LastRead -1 FirstWrite 4}
		kernel_out_stream_strb_V {Type O LastRead -1 FirstWrite 4}
		kernel_out_stream_user_V {Type O LastRead -1 FirstWrite 4}
		kernel_out_stream_last_V {Type O LastRead -1 FirstWrite 4}
		kernel_out_stream_id_V {Type O LastRead -1 FirstWrite 4}
		kernel_out_stream_dest_V {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
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
]}

set Spec2ImplPortList { 
	kernel_in_stream_data_V { axis {  { kernel_in_stream_TDATA in_data 0 32 } } }
	kernel_in_stream_keep_V { axis {  { kernel_in_stream_TKEEP in_data 0 4 } } }
	kernel_in_stream_strb_V { axis {  { kernel_in_stream_TSTRB in_data 0 4 } } }
	kernel_in_stream_user_V { axis {  { kernel_in_stream_TUSER in_data 0 4 } } }
	kernel_in_stream_last_V { axis {  { kernel_in_stream_TLAST in_data 0 1 } } }
	kernel_in_stream_id_V { axis {  { kernel_in_stream_TID in_data 0 5 } } }
	kernel_in_stream_dest_V { axis {  { kernel_in_stream_TVALID in_vld 0 1 }  { kernel_in_stream_TREADY in_acc 1 1 }  { kernel_in_stream_TDEST in_data 0 5 } } }
	kernel_index_stream_data_V { axis {  { kernel_index_stream_TDATA in_data 0 32 } } }
	kernel_index_stream_keep_V { axis {  { kernel_index_stream_TKEEP in_data 0 4 } } }
	kernel_index_stream_strb_V { axis {  { kernel_index_stream_TSTRB in_data 0 4 } } }
	kernel_index_stream_user_V { axis {  { kernel_index_stream_TUSER in_data 0 4 } } }
	kernel_index_stream_last_V { axis {  { kernel_index_stream_TLAST in_data 0 1 } } }
	kernel_index_stream_id_V { axis {  { kernel_index_stream_TID in_data 0 5 } } }
	kernel_index_stream_dest_V { axis {  { kernel_index_stream_TVALID in_vld 0 1 }  { kernel_index_stream_TREADY in_acc 1 1 }  { kernel_index_stream_TDEST in_data 0 5 } } }
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
