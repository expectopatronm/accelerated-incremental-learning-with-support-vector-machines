#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <hls_math.h>
#include "top_header.hpp"

// --------------------------------------------------------------------
// function to be accelerated in HW wrapped with AXI4-Stream interface
void accelerator_function(unsigned int *function_flag ,unsigned int *length_x_kernel, unsigned int *tile_size_kernel, unsigned int *remaining_size_kernel, unsigned int *tile_count_predict, unsigned int *remainder_predict, unsigned int *dual_coeff_length,
		AXI_VAL *kernel_in_stream, AXI_VAL *kernel_index_stream, AXI_VAL *kernel_out_stream, AXI_VAL *in_stream_predict, AXI_VAL *supp_vec_stream, AXI_VAL *dual_coef_stream, AXI_VAL *out_stream_predict){
#pragma HLS DATAFLOW

#pragma HLS INTERFACE s_axilite port = return bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = function_flag bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = length_x_kernel bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = tile_size_kernel bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = remaining_size_kernel bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = tile_count_predict bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = remainder_predict bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = dual_coeff_length bundle = CONTROL_BUS
#pragma HLS INTERFACE axis port = kernel_in_stream
#pragma HLS INTERFACE axis port = kernel_index_stream
#pragma HLS INTERFACE axis port = kernel_out_stream
#pragma HLS INTERFACE axis port = in_stream_predict
#pragma HLS INTERFACE axis port = supp_vec_stream
#pragma HLS INTERFACE axis port = dual_coef_stream
#pragma HLS INTERFACE axis port = out_stream_predict

#define gamma 0.05

    union
	{
        axi_T packet;
        struct {T f0;} val;
    } 	converter;

    // Hardware buffers
    T input_buf[INPUT_BUFFER_SIZE][FEAT];
    T index_buf[FEAT];
    T supp_vecs_buf[INPUT_SVCF_BUFFER_SIZE][FEAT];
    T dual_coef_buf[1000];
    T result_buf[OUTPUT_BUFFER_SIZE];

    if(*function_flag == 0x01){

    	// Input and output AXI stream indices
		int is_idx1 = 0;
		int is_idx2 = 0;
		int os_idx = 0;
		int l_idx = 0;

		// stream in index sample
		LOOP_1: for (int j = 0; j < FEAT; j++) {
#pragma HLS PIPELINE
			converter.packet = pop_stream(kernel_index_stream[is_idx1++]);
			index_buf[j] = converter.val.f0;
		}

		// stream in input samples
		LOOP_2: for (int k = 0; k <= *tile_size_kernel; k++){
			LOOP_3: for (int i = 0; i < INPUT_BUFFER_SIZE; i++){
#pragma HLS UNROLL factor = 50
				if(k == *tile_size_kernel && i >= *remaining_size_kernel){
					break;
				}else{
					LOOP_4: for (int j = 0; j < FEAT; j++) {
						converter.packet = pop_stream(kernel_in_stream[is_idx2++]);
						input_buf[i][j]  = converter.val.f0;
					}
					result_buf[l_idx] = rbf_kernel(index_buf, input_buf[i]);
					l_idx++;
				}
			}
		}

		// stream out result samples
		LOOP_6: for (int i = 0; i < *length_x_kernel; i++) {
#pragma HLS PIPELINE
			converter.val.f0 = result_buf[i];
			kernel_out_stream[os_idx++] = push_stream(converter.packet, os_idx == (*length_x_kernel));
		}
    }

	if(*function_flag == 0x02){

		// Input and output AXI stream indices
		int is_idx1 = 0;
		int is_idx2 = 0;
		int is_idx3 = 0;
		int os_idx = 0;

		// Stream in input matrix (5,4)
		LOOP_11:for (int i = 0; i < INPUT_BUFFER_SIZE; i++){
			LOOP_22: for (int j = 0; j < FEAT; j++){
#pragma HLS PIPELINE
				converter.packet = pop_stream(in_stream_predict[is_idx1++]);
				input_buf[i][j] = converter.val.f0;
			}
			result_buf[i] = 0;
		}

		// stream in dual coeff
		LOOP_33: for (int j = 0; j < *dual_coeff_length; j++){
#pragma HLS PIPELINE
			converter.packet = pop_stream(dual_coef_stream[is_idx3++]);
			dual_coef_buf[j] = converter.val.f0;
		}

		// stream in support vectors (10,4)
		LOOP_44: for (int k = 0; k <= *tile_count_predict; k++){
				LOOP_55: for (int i = 0; i < INPUT_SVCF_BUFFER_SIZE; i++){
					if(k == *tile_count_predict && i >= *remainder_predict){
						break;
					}else{
						LOOP_66: for (int j = 0; j < FEAT; j++){
							converter.packet = pop_stream(supp_vec_stream[is_idx2++]);
							supp_vecs_buf[i][j] = converter.val.f0;
						}
					}
				}
			LOOP_77: for (int i = 0; i < INPUT_BUFFER_SIZE; i++){
#pragma HLS UNROLL factor=50
				LOOP_88: for (int j = 0; j < INPUT_SVCF_BUFFER_SIZE; j++){
					if(k == *tile_count_predict && j >= *remainder_predict){
						break;
					}else{
						result_buf[i] += dual_coef_buf[(k * INPUT_SVCF_BUFFER_SIZE) + j] * rbf_kernel(supp_vecs_buf[j], input_buf[i]);
					}
				}
			}
		}

		// Stream out value
		LOOP_99: for (int i = 0; i < INPUT_BUFFER_SIZE; i++){
#pragma HLS PIPELINE
			converter.val.f0 = result_buf[i];
			out_stream_predict[os_idx++] = push_stream(converter.packet, os_idx == (INPUT_BUFFER_SIZE));
		}
	}
}

T rbf_kernel(T input1[FEAT], T input2[FEAT]){
#pragma HLS INLINE
    T sum = 0;
    T a[FEAT];

LOOP_R: for (unsigned int i = 0; i < FEAT; i++){
#pragma HLS PIPELINE
        a[i] = input1[i] - input2[i];
        sum = sum + a[i] * a[i];
    }
    return expf(-gamma * sum);
}

// --------------------------------------------------------
// functions to insert and extract elements from an axi stream
// includes conversion to correct data type
axi_T pop_stream(AXI_VAL const &e){
#pragma HLS INLINE

    axi_T ret = e.data;

    volatile ap_uint<sizeof(axi_T)> strb = e.strb;
    volatile ap_uint<sizeof(axi_T)> keep = e.keep;
    volatile ap_uint<AXI_U> user = e.user;
    volatile ap_uint<1> last = e.last;
    volatile ap_uint<AXI_TI> id = e.id;
    volatile ap_uint<AXI_TD> dest = e.dest;
    return ret;
}

AXI_VAL push_stream(axi_T const &v, bool last = false){
#pragma HLS INLINE

    AXI_VAL e;

    e.data = v;
    e.strb = (1 << sizeof(axi_T)) - 1;
    e.keep = (1 << sizeof(axi_T)) - 1;
    e.user = 0;
    e.last = last ? 1 : 0;
    e.id = 0;
    e.dest = 0;
    return e;
}
