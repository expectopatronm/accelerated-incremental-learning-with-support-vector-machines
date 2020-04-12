//#include <stdio.h>
//#include <stdlib.h>
//#include <math.h>
//#include <hls_math.h>
//#include "top_header.hpp"
//
//// --------------------------------------------------------------------
//// function to be accelerated in HW wrapped with AXI4-Stream interface
//void predict_function(int *length_x, int *tile_size_x, int *remaining_size_x, int *tile_size_sv, int *remaining_size_sv,  AXI_VAL *predict_in_stream, AXI_VAL *supp_vec_stream, AXI_VAL *dual_coef_stream, AXI_VAL *predict_out_stream)
//{
//#pragma HLS INTERFACE s_axilite port = return bundle = CONTROL_BUS
//#pragma HLS INTERFACE s_axilite port = length_x bundle = CONTROL_BUS
//#pragma HLS INTERFACE s_axilite port = tile_size_x bundle = CONTROL_BUS
//#pragma HLS INTERFACE s_axilite port = remaining_size_x bundle = CONTROL_BUS
//#pragma HLS INTERFACE s_axilite port = tile_size_sv bundle = CONTROL_BUS
//#pragma HLS INTERFACE s_axilite port = remaining_size_sv bundle = CONTROL_BUS
//#pragma HLS INTERFACE axis port = predict_in_stream
//#pragma HLS INTERFACE axis port = supp_vec_stream
//#pragma HLS INTERFACE axis port = dual_coef_stream
//#pragma HLS INTERFACE axis port = predict_out_stream
//
//	// Union used for type conversion
//	union
//	{
//		axi_T packet;
//		struct {T f0; } val;
//	} 	converter;
//
//    // Hardware buffers
//    T input_buf[INPUT_BUFFER_SIZE][FEAT];
//    T supp_vecs_buf[INPUT_SVCF_BUFFER_SIZE][FEAT];
//    T dual_coef_buf[INPUT_SVCF_BUFFER_SIZE];
//    T result_buf[OUTPUT_BUFFER_SIZE];
//
//    // Input and output AXI stream indices
//    int is_idx1 = 0;
//    int is_idx2 = 0;
//    int is_idx3 = 0;
//    int l_idx = 0;
//    int os_idx = 0;
//    T result = 0;
//
//	LOOP_X: for (int l = 0; l < *tile_size_x; l++){
//		LOOP_1: for (int m = 0; m < INPUT_BUFFER_SIZE; m++){
//			LOOP_2: for (int j = 0; j < FEAT; j++) {
//				converter.packet = pop_stream(predict_in_stream[is_idx1++]);
//				input_buf[m][j]  = converter.val.f0;
//			}
//
//			LOOP_3: for (int k = 0; k < *tile_size_sv; k++){
//				LOOP_4: for (int i = 0; i < INPUT_SVCF_BUFFER_SIZE; i++){
//					LOOP_5: for (int j = 0; j < FEAT; j++){
//						converter.packet = pop_stream(supp_vec_stream[is_idx2++]);
//						supp_vecs_buf[i][j] = converter.val.f0;
//					}
//					converter.packet = pop_stream(dual_coef_stream[is_idx3++]);
//					dual_coef_buf[i] = converter.val.f0;
//					result += dual_coef_buf[i] * rbf_kernel(supp_vecs_buf[i], input_buf[m]);
//				}
//			}
//			result_buf[l_idx] = result;
//			l_idx++;
//			result = 0;
//		}
//	}
//
//    // Stream out value
//    LOOP_6: for (int i = 0; i < *length_x; i++){
//        converter.val.f0 = result_buf[i];
//        predict_out_stream[os_idx++] = push_stream(converter.packet, os_idx == (*length_x));
//    }
//}
//
//T rbf_kernel(T input1[FEAT], T input2[FEAT]){
//    T gamma = 0.05;
//    T sum = 0;
//    T a[FEAT];
//
//LOOP_12: for (unsigned int i = 0; i < FEAT; i++)
//    {
//        a[i] = input1[i] - input2[i];
//        sum = sum + a[i] * a[i];
//    }
//    return expf(-gamma * sum);
//}
//
//// --------------------------------------------------------
//// functions to insert and extract elements from an axi stream
//// includes conversion to correct data type
//axi_T pop_stream(AXI_VAL const &e)
//{
//#pragma HLS INLINE
//
//    axi_T ret = e.data;
//
//    volatile ap_uint<sizeof(axi_T)> strb = e.strb;
//    volatile ap_uint<sizeof(axi_T)> keep = e.keep;
//    volatile ap_uint<AXI_U> user = e.user;
//    volatile ap_uint<1> last = e.last;
//    volatile ap_uint<AXI_TI> id = e.id;
//    volatile ap_uint<AXI_TD> dest = e.dest;
//    return ret;
//}
//
//AXI_VAL push_stream(axi_T const &v, bool last = false)
//{
//#pragma HLS INLINE
//
//    AXI_VAL e;
//
//    e.data = v;
//    e.strb = (1 << sizeof(axi_T)) - 1;
//    e.keep = (1 << sizeof(axi_T)) - 1;
//    e.user = 0;
//    e.last = last ? 1 : 0;
//    e.id = 0;
//    e.dest = 0;
//    return e;
//}