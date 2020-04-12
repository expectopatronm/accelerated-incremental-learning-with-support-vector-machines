set C_TypeInfoList {{ 
"accelerator_function" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"function_flag": [[],{ "pointer":  {"scalar": "unsigned int"}}] }, {"length_x_kernel": [[],{ "pointer":  {"scalar": "unsigned int"}}] }, {"tile_size_kernel": [[],{ "pointer":  {"scalar": "unsigned int"}}] }, {"remaining_size_kernel": [[],{ "pointer":  {"scalar": "unsigned int"}}] }, {"tile_count_predict": [[],{ "pointer":  {"scalar": "unsigned int"}}] }, {"remainder_predict": [[],{ "pointer":  {"scalar": "unsigned int"}}] }, {"dual_coeff_length": [[],{ "pointer":  {"scalar": "unsigned int"}}] }, {"kernel_in_stream": [[],{ "pointer": "0"}] }, {"kernel_index_stream": [[],{ "pointer": "0"}] }, {"kernel_out_stream": [[],{ "pointer": "0"}] }, {"in_stream_predict": [[],{ "pointer": "0"}] }, {"supp_vec_stream": [[],{ "pointer": "0"}] }, {"dual_coef_stream": [[],{ "pointer": "0"}] }, {"out_stream_predict": [[],{ "pointer": "0"}] }],[],""], 
"0": [ "AXI_VAL", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_axiu<32, 4, 5, 5>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 4}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 5}}]}],[{ "data": [[], "2"]},{ "keep": [[], "3"]},{ "strb": [[], "3"]},{ "user": [[], "3"]},{ "last": [[], "4"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"5": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}]
}}
set moduleName accelerator_function
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
set C_modelName {accelerator_function}
set C_modelType { void 0 }
set C_modelArgList {
	{ function_flag int 32 regular {axi_slave 0}  }
	{ length_x_kernel int 32 regular {axi_slave 0}  }
	{ tile_size_kernel int 32 regular {axi_slave 0}  }
	{ remaining_size_kernel int 32 regular {axi_slave 0}  }
	{ tile_count_predict int 32 regular {axi_slave 0}  }
	{ remainder_predict int 32 regular {axi_slave 0}  }
	{ dual_coeff_length int 32 regular {axi_slave 0}  }
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
	{ in_stream_predict_data_V int 32 regular {axi_s 0 volatile  { in_stream_predict Data } }  }
	{ in_stream_predict_keep_V int 4 regular {axi_s 0 volatile  { in_stream_predict Keep } }  }
	{ in_stream_predict_strb_V int 4 regular {axi_s 0 volatile  { in_stream_predict Strb } }  }
	{ in_stream_predict_user_V int 4 regular {axi_s 0 volatile  { in_stream_predict User } }  }
	{ in_stream_predict_last_V int 1 regular {axi_s 0 volatile  { in_stream_predict Last } }  }
	{ in_stream_predict_id_V int 5 regular {axi_s 0 volatile  { in_stream_predict ID } }  }
	{ in_stream_predict_dest_V int 5 regular {axi_s 0 volatile  { in_stream_predict Dest } }  }
	{ supp_vec_stream_data_V int 32 regular {axi_s 0 volatile  { supp_vec_stream Data } }  }
	{ supp_vec_stream_keep_V int 4 regular {axi_s 0 volatile  { supp_vec_stream Keep } }  }
	{ supp_vec_stream_strb_V int 4 regular {axi_s 0 volatile  { supp_vec_stream Strb } }  }
	{ supp_vec_stream_user_V int 4 regular {axi_s 0 volatile  { supp_vec_stream User } }  }
	{ supp_vec_stream_last_V int 1 regular {axi_s 0 volatile  { supp_vec_stream Last } }  }
	{ supp_vec_stream_id_V int 5 regular {axi_s 0 volatile  { supp_vec_stream ID } }  }
	{ supp_vec_stream_dest_V int 5 regular {axi_s 0 volatile  { supp_vec_stream Dest } }  }
	{ dual_coef_stream_data_V int 32 regular {axi_s 0 volatile  { dual_coef_stream Data } }  }
	{ dual_coef_stream_keep_V int 4 regular {axi_s 0 volatile  { dual_coef_stream Keep } }  }
	{ dual_coef_stream_strb_V int 4 regular {axi_s 0 volatile  { dual_coef_stream Strb } }  }
	{ dual_coef_stream_user_V int 4 regular {axi_s 0 volatile  { dual_coef_stream User } }  }
	{ dual_coef_stream_last_V int 1 regular {axi_s 0 volatile  { dual_coef_stream Last } }  }
	{ dual_coef_stream_id_V int 5 regular {axi_s 0 volatile  { dual_coef_stream ID } }  }
	{ dual_coef_stream_dest_V int 5 regular {axi_s 0 volatile  { dual_coef_stream Dest } }  }
	{ out_stream_predict_data_V int 32 regular {axi_s 1 volatile  { out_stream_predict Data } }  }
	{ out_stream_predict_keep_V int 4 regular {axi_s 1 volatile  { out_stream_predict Keep } }  }
	{ out_stream_predict_strb_V int 4 regular {axi_s 1 volatile  { out_stream_predict Strb } }  }
	{ out_stream_predict_user_V int 4 regular {axi_s 1 volatile  { out_stream_predict User } }  }
	{ out_stream_predict_last_V int 1 regular {axi_s 1 volatile  { out_stream_predict Last } }  }
	{ out_stream_predict_id_V int 5 regular {axi_s 1 volatile  { out_stream_predict ID } }  }
	{ out_stream_predict_dest_V int 5 regular {axi_s 1 volatile  { out_stream_predict Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "function_flag", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "function_flag","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "length_x_kernel", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "length_x_kernel","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "tile_size_kernel", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tile_size_kernel","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "remaining_size_kernel", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "remaining_size_kernel","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "tile_count_predict", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tile_count_predict","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "remainder_predict", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "remainder_predict","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "dual_coeff_length", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dual_coeff_length","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} , 
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
 	{ "Name" : "kernel_out_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "kernel_out_stream.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_predict_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_stream_predict.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_predict_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_stream_predict.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_predict_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_stream_predict.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_predict_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_stream_predict.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_predict_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream_predict.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_predict_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "in_stream_predict.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_predict_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "in_stream_predict.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "supp_vec_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "supp_vec_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "supp_vec_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "supp_vec_stream.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "supp_vec_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "supp_vec_stream.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "supp_vec_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "supp_vec_stream.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "supp_vec_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "supp_vec_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "supp_vec_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "supp_vec_stream.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "supp_vec_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "supp_vec_stream.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dual_coef_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dual_coef_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dual_coef_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "dual_coef_stream.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dual_coef_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "dual_coef_stream.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dual_coef_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "dual_coef_stream.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dual_coef_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dual_coef_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dual_coef_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "dual_coef_stream.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dual_coef_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "dual_coef_stream.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_predict_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_stream_predict.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_predict_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_stream_predict.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_predict_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_stream_predict.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_predict_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_stream_predict.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_predict_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_stream_predict.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_predict_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "out_stream_predict.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_predict_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "out_stream_predict.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 83
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ kernel_in_stream_TDATA sc_in sc_lv 32 signal 7 } 
	{ kernel_in_stream_TVALID sc_in sc_logic 1 invld 13 } 
	{ kernel_in_stream_TREADY sc_out sc_logic 1 inacc 13 } 
	{ kernel_in_stream_TKEEP sc_in sc_lv 4 signal 8 } 
	{ kernel_in_stream_TSTRB sc_in sc_lv 4 signal 9 } 
	{ kernel_in_stream_TUSER sc_in sc_lv 4 signal 10 } 
	{ kernel_in_stream_TLAST sc_in sc_lv 1 signal 11 } 
	{ kernel_in_stream_TID sc_in sc_lv 5 signal 12 } 
	{ kernel_in_stream_TDEST sc_in sc_lv 5 signal 13 } 
	{ kernel_index_stream_TDATA sc_in sc_lv 32 signal 14 } 
	{ kernel_index_stream_TVALID sc_in sc_logic 1 invld 20 } 
	{ kernel_index_stream_TREADY sc_out sc_logic 1 inacc 20 } 
	{ kernel_index_stream_TKEEP sc_in sc_lv 4 signal 15 } 
	{ kernel_index_stream_TSTRB sc_in sc_lv 4 signal 16 } 
	{ kernel_index_stream_TUSER sc_in sc_lv 4 signal 17 } 
	{ kernel_index_stream_TLAST sc_in sc_lv 1 signal 18 } 
	{ kernel_index_stream_TID sc_in sc_lv 5 signal 19 } 
	{ kernel_index_stream_TDEST sc_in sc_lv 5 signal 20 } 
	{ kernel_out_stream_TDATA sc_out sc_lv 32 signal 21 } 
	{ kernel_out_stream_TVALID sc_out sc_logic 1 outvld 27 } 
	{ kernel_out_stream_TREADY sc_in sc_logic 1 outacc 27 } 
	{ kernel_out_stream_TKEEP sc_out sc_lv 4 signal 22 } 
	{ kernel_out_stream_TSTRB sc_out sc_lv 4 signal 23 } 
	{ kernel_out_stream_TUSER sc_out sc_lv 4 signal 24 } 
	{ kernel_out_stream_TLAST sc_out sc_lv 1 signal 25 } 
	{ kernel_out_stream_TID sc_out sc_lv 5 signal 26 } 
	{ kernel_out_stream_TDEST sc_out sc_lv 5 signal 27 } 
	{ in_stream_predict_TDATA sc_in sc_lv 32 signal 28 } 
	{ in_stream_predict_TVALID sc_in sc_logic 1 invld 34 } 
	{ in_stream_predict_TREADY sc_out sc_logic 1 inacc 34 } 
	{ in_stream_predict_TKEEP sc_in sc_lv 4 signal 29 } 
	{ in_stream_predict_TSTRB sc_in sc_lv 4 signal 30 } 
	{ in_stream_predict_TUSER sc_in sc_lv 4 signal 31 } 
	{ in_stream_predict_TLAST sc_in sc_lv 1 signal 32 } 
	{ in_stream_predict_TID sc_in sc_lv 5 signal 33 } 
	{ in_stream_predict_TDEST sc_in sc_lv 5 signal 34 } 
	{ supp_vec_stream_TDATA sc_in sc_lv 32 signal 35 } 
	{ supp_vec_stream_TVALID sc_in sc_logic 1 invld 41 } 
	{ supp_vec_stream_TREADY sc_out sc_logic 1 inacc 41 } 
	{ supp_vec_stream_TKEEP sc_in sc_lv 4 signal 36 } 
	{ supp_vec_stream_TSTRB sc_in sc_lv 4 signal 37 } 
	{ supp_vec_stream_TUSER sc_in sc_lv 4 signal 38 } 
	{ supp_vec_stream_TLAST sc_in sc_lv 1 signal 39 } 
	{ supp_vec_stream_TID sc_in sc_lv 5 signal 40 } 
	{ supp_vec_stream_TDEST sc_in sc_lv 5 signal 41 } 
	{ dual_coef_stream_TDATA sc_in sc_lv 32 signal 42 } 
	{ dual_coef_stream_TVALID sc_in sc_logic 1 invld 48 } 
	{ dual_coef_stream_TREADY sc_out sc_logic 1 inacc 48 } 
	{ dual_coef_stream_TKEEP sc_in sc_lv 4 signal 43 } 
	{ dual_coef_stream_TSTRB sc_in sc_lv 4 signal 44 } 
	{ dual_coef_stream_TUSER sc_in sc_lv 4 signal 45 } 
	{ dual_coef_stream_TLAST sc_in sc_lv 1 signal 46 } 
	{ dual_coef_stream_TID sc_in sc_lv 5 signal 47 } 
	{ dual_coef_stream_TDEST sc_in sc_lv 5 signal 48 } 
	{ out_stream_predict_TDATA sc_out sc_lv 32 signal 49 } 
	{ out_stream_predict_TVALID sc_out sc_logic 1 outvld 55 } 
	{ out_stream_predict_TREADY sc_in sc_logic 1 outacc 55 } 
	{ out_stream_predict_TKEEP sc_out sc_lv 4 signal 50 } 
	{ out_stream_predict_TSTRB sc_out sc_lv 4 signal 51 } 
	{ out_stream_predict_TUSER sc_out sc_lv 4 signal 52 } 
	{ out_stream_predict_TLAST sc_out sc_lv 1 signal 53 } 
	{ out_stream_predict_TID sc_out sc_lv 5 signal 54 } 
	{ out_stream_predict_TDEST sc_out sc_lv 5 signal 55 } 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 7 signal -1 } 
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
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"accelerator_function","role":"start","value":"0","valid_bit":"0"},{"name":"accelerator_function","role":"continue","value":"0","valid_bit":"4"},{"name":"accelerator_function","role":"auto_start","value":"0","valid_bit":"7"},{"name":"function_flag","role":"data","value":"16"},{"name":"length_x_kernel","role":"data","value":"24"},{"name":"tile_size_kernel","role":"data","value":"32"},{"name":"remaining_size_kernel","role":"data","value":"40"},{"name":"tile_count_predict","role":"data","value":"48"},{"name":"remainder_predict","role":"data","value":"56"},{"name":"dual_coeff_length","role":"data","value":"64"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"accelerator_function","role":"start","value":"0","valid_bit":"0"},{"name":"accelerator_function","role":"done","value":"0","valid_bit":"1"},{"name":"accelerator_function","role":"idle","value":"0","valid_bit":"2"},{"name":"accelerator_function","role":"ready","value":"0","valid_bit":"3"},{"name":"accelerator_function","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "kernel_out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "kernel_out_stream_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_predict_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_predict_data_V", "role": "default" }} , 
 	{ "name": "in_stream_predict_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_predict_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_predict_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_predict_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_predict_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_predict_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_predict_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_predict_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_predict_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_predict_user_V", "role": "default" }} , 
 	{ "name": "in_stream_predict_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_predict_last_V", "role": "default" }} , 
 	{ "name": "in_stream_predict_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream_predict_id_V", "role": "default" }} , 
 	{ "name": "in_stream_predict_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream_predict_dest_V", "role": "default" }} , 
 	{ "name": "supp_vec_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "supp_vec_stream_data_V", "role": "default" }} , 
 	{ "name": "supp_vec_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "supp_vec_stream_dest_V", "role": "default" }} , 
 	{ "name": "supp_vec_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "supp_vec_stream_dest_V", "role": "default" }} , 
 	{ "name": "supp_vec_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "supp_vec_stream_keep_V", "role": "default" }} , 
 	{ "name": "supp_vec_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "supp_vec_stream_strb_V", "role": "default" }} , 
 	{ "name": "supp_vec_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "supp_vec_stream_user_V", "role": "default" }} , 
 	{ "name": "supp_vec_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "supp_vec_stream_last_V", "role": "default" }} , 
 	{ "name": "supp_vec_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "supp_vec_stream_id_V", "role": "default" }} , 
 	{ "name": "supp_vec_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "supp_vec_stream_dest_V", "role": "default" }} , 
 	{ "name": "dual_coef_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dual_coef_stream_data_V", "role": "default" }} , 
 	{ "name": "dual_coef_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dual_coef_stream_dest_V", "role": "default" }} , 
 	{ "name": "dual_coef_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dual_coef_stream_dest_V", "role": "default" }} , 
 	{ "name": "dual_coef_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dual_coef_stream_keep_V", "role": "default" }} , 
 	{ "name": "dual_coef_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dual_coef_stream_strb_V", "role": "default" }} , 
 	{ "name": "dual_coef_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dual_coef_stream_user_V", "role": "default" }} , 
 	{ "name": "dual_coef_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dual_coef_stream_last_V", "role": "default" }} , 
 	{ "name": "dual_coef_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dual_coef_stream_id_V", "role": "default" }} , 
 	{ "name": "dual_coef_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dual_coef_stream_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_predict_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_predict_data_V", "role": "default" }} , 
 	{ "name": "out_stream_predict_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_predict_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_predict_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_predict_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_predict_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_predict_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_predict_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_predict_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_predict_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_predict_user_V", "role": "default" }} , 
 	{ "name": "out_stream_predict_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_predict_last_V", "role": "default" }} , 
 	{ "name": "out_stream_predict_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_predict_id_V", "role": "default" }} , 
 	{ "name": "out_stream_predict_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_predict_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162"],
		"CDFG" : "accelerator_function",
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
			{"Name" : "function_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "length_x_kernel", "Type" : "None", "Direction" : "I"},
			{"Name" : "tile_size_kernel", "Type" : "None", "Direction" : "I"},
			{"Name" : "remaining_size_kernel", "Type" : "None", "Direction" : "I"},
			{"Name" : "tile_count_predict", "Type" : "None", "Direction" : "I"},
			{"Name" : "remainder_predict", "Type" : "None", "Direction" : "I"},
			{"Name" : "dual_coeff_length", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "kernel_out_stream_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "in_stream_predict_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_predict_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_predict_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_predict_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_predict_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_predict_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_predict_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_stream_predict_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "supp_vec_stream_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "supp_vec_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "supp_vec_stream_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "supp_vec_stream_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "supp_vec_stream_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "supp_vec_stream_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "supp_vec_stream_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "supp_vec_stream_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dual_coef_stream_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dual_coef_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dual_coef_stream_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dual_coef_stream_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dual_coef_stream_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dual_coef_stream_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dual_coef_stream_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dual_coef_stream_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "out_stream_predict_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_predict_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_predict_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_predict_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_predict_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_predict_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_predict_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_predict_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_function_CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.index_buf_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.supp_vecs_buf_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dual_coef_buf_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_buf_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functg8j_U1", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functhbi_U2", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functibs_U3", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functjbC_U4", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functkbM_U5", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functlbW_U6", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U7", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U8", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U9", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U10", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U11", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U12", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U13", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U14", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U15", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U16", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U17", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U18", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U19", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U20", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U21", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U22", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U23", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U24", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U25", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U26", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U27", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U28", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U29", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U30", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U31", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U32", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U33", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U34", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U35", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U36", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U37", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U38", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U39", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U40", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U41", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U42", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U43", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U44", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U45", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U46", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U47", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U48", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U49", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U50", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U51", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U52", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U53", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U54", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U55", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U56", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U57", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U58", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U59", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U60", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U61", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U62", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U63", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U64", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U65", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U66", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U67", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U68", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U69", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U70", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U71", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U72", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U73", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U74", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U75", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U76", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U77", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U78", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U79", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U80", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functmb6_U81", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U82", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U83", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U84", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U85", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U86", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U87", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U88", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U89", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U90", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U91", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U92", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U93", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U94", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U95", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U96", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U97", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U98", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U99", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U100", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U101", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U102", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U103", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U104", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U105", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U106", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U107", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U108", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U109", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U110", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U111", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U112", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U113", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U114", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U115", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U116", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U117", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U118", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U119", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U120", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U121", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U122", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U123", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U124", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U125", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U126", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U127", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U128", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U129", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U130", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U131", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U132", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U133", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U134", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U135", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U136", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U137", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U138", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U139", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U140", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U141", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U142", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U143", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U144", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U145", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U146", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U147", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U148", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U149", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U150", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U151", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U152", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U153", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U154", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U155", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accelerator_functncg_U156", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_function {
		function_flag {Type I LastRead 0 FirstWrite -1}
		length_x_kernel {Type I LastRead 3 FirstWrite -1}
		tile_size_kernel {Type I LastRead 2 FirstWrite -1}
		remaining_size_kernel {Type I LastRead 3 FirstWrite -1}
		tile_count_predict {Type I LastRead 7 FirstWrite -1}
		remainder_predict {Type I LastRead 8 FirstWrite -1}
		dual_coeff_length {Type I LastRead 6 FirstWrite -1}
		kernel_in_stream_data_V {Type I LastRead 1410 FirstWrite -1}
		kernel_in_stream_keep_V {Type I LastRead 1410 FirstWrite -1}
		kernel_in_stream_strb_V {Type I LastRead 1410 FirstWrite -1}
		kernel_in_stream_user_V {Type I LastRead 1410 FirstWrite -1}
		kernel_in_stream_last_V {Type I LastRead 1410 FirstWrite -1}
		kernel_in_stream_id_V {Type I LastRead 1410 FirstWrite -1}
		kernel_in_stream_dest_V {Type I LastRead 1410 FirstWrite -1}
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
		kernel_out_stream_dest_V {Type O LastRead -1 FirstWrite 4}
		in_stream_predict_data_V {Type I LastRead 6 FirstWrite -1}
		in_stream_predict_keep_V {Type I LastRead 6 FirstWrite -1}
		in_stream_predict_strb_V {Type I LastRead 6 FirstWrite -1}
		in_stream_predict_user_V {Type I LastRead 6 FirstWrite -1}
		in_stream_predict_last_V {Type I LastRead 6 FirstWrite -1}
		in_stream_predict_id_V {Type I LastRead 6 FirstWrite -1}
		in_stream_predict_dest_V {Type I LastRead 6 FirstWrite -1}
		supp_vec_stream_data_V {Type I LastRead 9 FirstWrite -1}
		supp_vec_stream_keep_V {Type I LastRead 9 FirstWrite -1}
		supp_vec_stream_strb_V {Type I LastRead 9 FirstWrite -1}
		supp_vec_stream_user_V {Type I LastRead 9 FirstWrite -1}
		supp_vec_stream_last_V {Type I LastRead 9 FirstWrite -1}
		supp_vec_stream_id_V {Type I LastRead 9 FirstWrite -1}
		supp_vec_stream_dest_V {Type I LastRead 9 FirstWrite -1}
		dual_coef_stream_data_V {Type I LastRead 6 FirstWrite -1}
		dual_coef_stream_keep_V {Type I LastRead 6 FirstWrite -1}
		dual_coef_stream_strb_V {Type I LastRead 6 FirstWrite -1}
		dual_coef_stream_user_V {Type I LastRead 6 FirstWrite -1}
		dual_coef_stream_last_V {Type I LastRead 6 FirstWrite -1}
		dual_coef_stream_id_V {Type I LastRead 6 FirstWrite -1}
		dual_coef_stream_dest_V {Type I LastRead 6 FirstWrite -1}
		out_stream_predict_data_V {Type O LastRead -1 FirstWrite 9}
		out_stream_predict_keep_V {Type O LastRead -1 FirstWrite 9}
		out_stream_predict_strb_V {Type O LastRead -1 FirstWrite 9}
		out_stream_predict_user_V {Type O LastRead -1 FirstWrite 9}
		out_stream_predict_last_V {Type O LastRead -1 FirstWrite 9}
		out_stream_predict_id_V {Type O LastRead -1 FirstWrite 9}
		out_stream_predict_dest_V {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
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
	in_stream_predict_data_V { axis {  { in_stream_predict_TDATA in_data 0 32 } } }
	in_stream_predict_keep_V { axis {  { in_stream_predict_TKEEP in_data 0 4 } } }
	in_stream_predict_strb_V { axis {  { in_stream_predict_TSTRB in_data 0 4 } } }
	in_stream_predict_user_V { axis {  { in_stream_predict_TUSER in_data 0 4 } } }
	in_stream_predict_last_V { axis {  { in_stream_predict_TLAST in_data 0 1 } } }
	in_stream_predict_id_V { axis {  { in_stream_predict_TID in_data 0 5 } } }
	in_stream_predict_dest_V { axis {  { in_stream_predict_TVALID in_vld 0 1 }  { in_stream_predict_TREADY in_acc 1 1 }  { in_stream_predict_TDEST in_data 0 5 } } }
	supp_vec_stream_data_V { axis {  { supp_vec_stream_TDATA in_data 0 32 } } }
	supp_vec_stream_keep_V { axis {  { supp_vec_stream_TKEEP in_data 0 4 } } }
	supp_vec_stream_strb_V { axis {  { supp_vec_stream_TSTRB in_data 0 4 } } }
	supp_vec_stream_user_V { axis {  { supp_vec_stream_TUSER in_data 0 4 } } }
	supp_vec_stream_last_V { axis {  { supp_vec_stream_TLAST in_data 0 1 } } }
	supp_vec_stream_id_V { axis {  { supp_vec_stream_TID in_data 0 5 } } }
	supp_vec_stream_dest_V { axis {  { supp_vec_stream_TVALID in_vld 0 1 }  { supp_vec_stream_TREADY in_acc 1 1 }  { supp_vec_stream_TDEST in_data 0 5 } } }
	dual_coef_stream_data_V { axis {  { dual_coef_stream_TDATA in_data 0 32 } } }
	dual_coef_stream_keep_V { axis {  { dual_coef_stream_TKEEP in_data 0 4 } } }
	dual_coef_stream_strb_V { axis {  { dual_coef_stream_TSTRB in_data 0 4 } } }
	dual_coef_stream_user_V { axis {  { dual_coef_stream_TUSER in_data 0 4 } } }
	dual_coef_stream_last_V { axis {  { dual_coef_stream_TLAST in_data 0 1 } } }
	dual_coef_stream_id_V { axis {  { dual_coef_stream_TID in_data 0 5 } } }
	dual_coef_stream_dest_V { axis {  { dual_coef_stream_TVALID in_vld 0 1 }  { dual_coef_stream_TREADY in_acc 1 1 }  { dual_coef_stream_TDEST in_data 0 5 } } }
	out_stream_predict_data_V { axis {  { out_stream_predict_TDATA out_data 1 32 } } }
	out_stream_predict_keep_V { axis {  { out_stream_predict_TKEEP out_data 1 4 } } }
	out_stream_predict_strb_V { axis {  { out_stream_predict_TSTRB out_data 1 4 } } }
	out_stream_predict_user_V { axis {  { out_stream_predict_TUSER out_data 1 4 } } }
	out_stream_predict_last_V { axis {  { out_stream_predict_TLAST out_data 1 1 } } }
	out_stream_predict_id_V { axis {  { out_stream_predict_TID out_data 1 5 } } }
	out_stream_predict_dest_V { axis {  { out_stream_predict_TVALID out_vld 1 1 }  { out_stream_predict_TREADY out_acc 0 1 }  { out_stream_predict_TDEST out_data 1 5 } } }
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
