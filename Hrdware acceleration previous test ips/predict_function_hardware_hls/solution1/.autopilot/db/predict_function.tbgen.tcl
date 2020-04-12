set C_TypeInfoList {{ 
"predict_function" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"tile_count": [[],{ "pointer":  {"scalar": "unsigned int"}}] }, {"remainder": [[],{ "pointer":  {"scalar": "unsigned int"}}] }, {"dual_coeff_length": [[],{ "pointer":  {"scalar": "unsigned int"}}] }, {"in_stream": [[],{ "pointer": "0"}] }, {"supp_vec_stream": [[],{ "pointer": "0"}] }, {"dual_coef_stream": [[],{ "pointer": "0"}] }, {"out_stream": [[],{ "pointer": "0"}] }],[],""], 
"0": [ "AXI_VAL", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_axiu<32, 4, 5, 5>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 4}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 5}}]}],[{ "data": [[], "2"]},{ "keep": [[], "3"]},{ "strb": [[], "3"]},{ "user": [[], "3"]},{ "last": [[], "4"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"5": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}]
}}
