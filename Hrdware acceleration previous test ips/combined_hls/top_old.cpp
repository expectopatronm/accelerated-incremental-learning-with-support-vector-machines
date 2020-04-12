//#include <stdio.h>
//#include <stdlib.h>
//#include "top_header.hpp"
//
//// --------------------------------------------------------------------
//// function to be accelerated in HW wrapped with AXI4-Stream interface
//void acelerator_function(AXI_VAL *in_stream_kernel, AXI_VAL *kernel_index_stream,
//		AXI_VAL *in_stream_predict, AXI_VAL *supp_vec_stream, AXI_VAL *dual_coef_stream, AXI_VAL *out_stream_kernel, AXI_VAL *out_stream_predict,
//		unsigned int *length_x, unsigned int *length_dc, unsigned int *flag)
//{
//#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
//#pragma HLS INTERFACE s_axilite	register port=length_x bundle=CONTROL_BUS
//#pragma HLS INTERFACE s_axilite	register port=length_dc bundle=CONTROL_BUS
//#pragma HLS INTERFACE s_axilite	register port=flag bundle=CONTROL_BUS
//#pragma HLS INTERFACE axis port=in_stream_kernel
//#pragma HLS INTERFACE axis port=kernel_index_stream
//#pragma HLS INTERFACE axis port=in_stream_predict
//#pragma HLS INTERFACE axis port=supp_vec_stream
//#pragma HLS INTERFACE axis port=dual_coef_stream
//#pragma HLS INTERFACE axis port=out_stream_kernel
//#pragma HLS INTERFACE axis port=out_stream_predict
//
//	// Union used for type conversion
//	union
//	{
//		axi_T packet;
//		struct {T f0; } val;
//	} 	converter;
//
//	// Hardware buffers
//	T input_buf[INPUT_SAMPLES][FEAT];
//	T supp_vecs_buf[INPUT_SVCF][FEAT];
////#pragma HLS RESOURCE variable=supp_vecs_buf core=RAM_1P_LUTRAM
//	T dual_coef_buf[INPUT_SVCF];
//	T index_buf[FEAT];
//	T temp2_buf[FEAT];
//	T result_buf[OS_SIZE];
//	int TILE_SIZE = 0;
//
//	if(*flag == 1){
//		if ((*length_x % INPUT_SAMPLES) == 0){
//			TILE_SIZE = (*length_x/INPUT_SAMPLES);
//		}else{
//			TILE_SIZE = (*length_x/INPUT_SAMPLES) + 1;
//		}
//
//		// Input and output AXI stream indices
//		int is_idx = 0;
//		int os_idx = 0;
//
//		for (int j = 0; j < FEAT; j++){
//			converter.packet = pop_stream(kernel_index_stream[is_idx++]);
//			index_buf[j] = converter.val.f0;
//		}
//
//		// perform kernel acceleration
//		for (int p = 0; p < TILE_SIZE; p++){
//			for (int i = 0; i < INPUT_SAMPLES; i++){
//				for (int j = 0; j < FEAT; j++){
//					converter.packet = pop_stream(in_stream_kernel[is_idx++]);
//					input_buf[i][j]  = converter.val.f0;
//				}
//				int k = 0;
//				for (int m = (p*INPUT_SAMPLES); m < ((p*INPUT_SAMPLES)+INPUT_SAMPLES); m++){
//					for (int l = 0; l < FEAT; l++){
//					temp2_buf[l]  = input_buf[k][l];
//				}
//				result_buf[m] = rbf_kernel(index_buf, temp2_buf);
//				k++;
//				}
//			}
//		}
//
//		// Stream out value
//		LOOP_6: for (int i = 0; i < *length_x; i++){
//			converter.val.f0 = result_buf[i];
//			out_stream_kernel[os_idx++] = push_stream(converter.packet, os_idx == (*length_x));
//		}
//	}
//
//	if(*flag == 0){
//		// Input and output AXI stream indices
//		int is_idx1 = 0;
//		int is_idx2 = 0;
//		int is_idx3 = 0;
//		int os_idx = 0;
//
//		int INPUT_TILE_SIZE = 0;
//		int SV_DC_TILE_SIZE = 0;
//
//		INPUT_TILE_SIZE = (*length_x/INPUT_SAMPLES);
//		SV_DC_TILE_SIZE = (*length_dc/INPUT_SVCF);
//
//		// perform prediction acceleration
////		Loop1: for (int p = 0; p < INPUT_TILE_SIZE; p++){
//			Loop2: for (int i = 0; i < INPUT_SAMPLES; i++){
//				Loop3: for (int j = 0; j < FEAT; j++){
//					converter.packet = pop_stream(in_stream_predict[is_idx1++]);
//					input_buf[i][j]  = converter.val.f0;
//				}
//
////				Loop4: for (int r = 0; r < SV_DC_TILE_SIZE; r++){
//					Loop5: for (int l = 0; l < INPUT_SVCF; l++){
//						Loop6: for (int m = 0; m < FEAT; m++){
//							converter.packet = pop_stream(supp_vec_stream[is_idx2++]);
//							supp_vecs_buf[l][m]  = converter.val.f0;
//						}
//						converter.packet = pop_stream(dual_coef_stream[is_idx3++]);
//						dual_coef_buf[l]  = converter.val.f0;
//					}
//
////					int k = 0;
//					int p = 0;
//					Loop8: for (int o = (p*INPUT_SAMPLES); o < ((p*INPUT_SAMPLES)+INPUT_SAMPLES); o++){
//						T result = 0;
//						Loop9: for (int q = 0; q < INPUT_SVCF; q++){
//							result += dual_coef_buf[q] * rbf_kernel(supp_vecs_buf[q], input_buf[o]);
//						}
//						result_buf[o] = result;
////						k++;
//					}
////				}
//			}
////		}
//
//		// Stream out value
//		for (int i = 0; i < *length_x; i++){
//			converter.val.f0 = result_buf[i];
//			out_stream_predict[os_idx++] = push_stream(converter.packet, os_idx == (*length_x));
//		}
//	}
//}
//
//T rbf_kernel(T input1[FEAT], T input2[FEAT]){
//	T gamma = 0.05;
//	T sum = 0;
//	T a[FEAT];
//
//	for(unsigned int i=0; i<FEAT; i++){
//		a[i] = input1[i] - input2[i];
//		sum = sum + a[i] * a[i];
//	}
//	return expf(-gamma * sum);
//}
//
//// --------------------------------------------------------
//// functions to insert and extract elements from an axi stream
//// includes conversion to correct data type
//axi_T pop_stream(AXI_VAL const &e){
//#pragma HLS INLINE
//
//	axi_T ret = e.data;
//
//	volatile ap_uint<sizeof(axi_T)> strb = e.strb;
//	volatile ap_uint<sizeof(axi_T)> keep = e.keep;
//	volatile ap_uint<AXI_U> user = e.user;
//	volatile ap_uint<1> last = e.last;
//	volatile ap_uint<AXI_TI> id = e.id;
//	volatile ap_uint<AXI_TD> dest = e.dest;
//	return ret;
//}
//
//AXI_VAL push_stream(axi_T const &v, bool last = false){
//#pragma HLS INLINE
//
//	AXI_VAL e;
//
//	e.data = v;
//	e.strb = (1<<sizeof(axi_T))-1;
//	e.keep = (1<<sizeof(axi_T))-1;
//	e.user = 0;
//	e.last = last ? 1 : 0;
//	e.id = 0;
//	e.dest = 0;
//	return e;
//}
