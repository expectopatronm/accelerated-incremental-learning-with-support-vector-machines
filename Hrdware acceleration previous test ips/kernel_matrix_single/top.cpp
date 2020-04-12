#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <hls_math.h>
#include "top_header.hpp"

// --------------------------------------------------------------------
// function to be accelerated in HW wrapped with AXI4-Stream interface
void kernel_matrix(int *length_x, int *tile_size, int *remaining_size, AXI_VAL *kernel_in_stream, AXI_VAL *kernel_index_stream, AXI_VAL *kernel_out_stream){

#pragma HLS INTERFACE s_axilite port = return bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = length_x bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = tile_size bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = remaining_size bundle = CONTROL_BUS
#pragma HLS INTERFACE axis port=kernel_in_stream
#pragma HLS INTERFACE axis port=kernel_index_stream
#pragma HLS INTERFACE axis port=kernel_out_stream

#define gamma 0.05

	// Union used for type conversion
	union
	{
		axi_T packet;
		struct {T f0; } val;
	} 	converter;

	// Hardware buffers
	T input_buf[INPUT_BUFFER_SIZE][FEAT];
	T index_buf[FEAT];
	T result_buf[OUTPUT_BUFFER_SIZE];

	// Input and output AXI stream indices
	int is_idx1 = 0;
	int is_idx2 = 0;
	int os_idx = 0;
	int l_idx = 0;

	// stream in index sample
	LOOP_1: for (int j = 0; j < FEAT; j++) {
		converter.packet = pop_stream(kernel_index_stream[is_idx1++]);
		index_buf[j] = converter.val.f0;
	}

	// stream in input samples
	LOOP_2: for (int k = 0; k <= *tile_size; k++){
		LOOP_3: for (int i = 0; i < INPUT_BUFFER_SIZE; i++){
		#pragma HLS UNROLL
			if(k == *tile_size && i >= *remaining_size){
				break;
			}else{
				LOOP_4: for (int j = 0; j < FEAT; j++) {
				#pragma HLS PIPELINE
					converter.packet = pop_stream(kernel_in_stream[is_idx2++]);
					input_buf[i][j]  = converter.val.f0;
				}
				T sum = 0;
				T a[FEAT];
				LOOP_5: for(unsigned int q=0; q<FEAT; q++){
				#pragma HLS PIPELINE
					a[q] = index_buf[q] - input_buf[i][q];
					sum = sum + a[q] * a[q];
				}
				result_buf[l_idx] = expf(-gamma * sum);
				l_idx++;
			}
		}
	}

	// stream out result samples
	LOOP_6: for (int i = 0; i < *length_x; i++) {
		converter.val.f0 = result_buf[i];
		kernel_out_stream[os_idx++] = push_stream(converter.packet, os_idx == (*length_x));
	}
}

// --------------------------------------------------------
// functions to insert and extract elements from an axi stream
// includes conversion to correct data type
axi_T pop_stream(AXI_VAL const &e)
{
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

AXI_VAL push_stream(axi_T const &v, bool last = false)
{
#pragma HLS INLINE

	AXI_VAL e;

	e.data = v;
	e.strb = (1<<sizeof(axi_T))-1;
	e.keep = (1<<sizeof(axi_T))-1;
	e.user = 0;
	e.last = last ? 1 : 0;
	e.id = 0;
	e.dest = 0;
	return e;
}
