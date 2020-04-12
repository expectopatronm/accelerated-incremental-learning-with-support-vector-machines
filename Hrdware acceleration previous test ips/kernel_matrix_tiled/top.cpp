#include <stdio.h>
#include <stdlib.h>
#include "top_header.hpp"

// --------------------------------------------------------------------
// function to be accelerated in HW wrapped with AXI4-Stream interface
void kernel_matrix_tiled(AXI_VAL *kernel_in_stream, AXI_VAL *kernel_index_stream, AXI_VAL *kernel_out_stream, unsigned int *length_x)
{
#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite	register port=length_x bundle=CONTROL_BUS
#pragma HLS INTERFACE axis port=kernel_in_stream
#pragma HLS INTERFACE axis port=kernel_index_stream
#pragma HLS INTERFACE axis port=kernel_out_stream

	// Union used for type conversion
	union
	{
		axi_T packet;
		struct {T f0; } val;
	} 	converter;

	// Hardware buffers
	T input_buf[INPUT_SAMPLES][FEAT];
	T index_buf[FEAT];
	T temp2_buf[FEAT];
	T result_buf[OS_SIZE];
	int TILE_SIZE = 0;


	if ((*length_x % INPUT_SAMPLES) == 0){
		TILE_SIZE = (*length_x/INPUT_SAMPLES);
	}else{
		TILE_SIZE = (*length_x/INPUT_SAMPLES) + 1;
	}

	// Input and output AXI stream indices
	int is_idx = 0;
	int os_idx = 0;

	for (int j = 0; j < FEAT; j++){
		converter.packet = pop_stream(kernel_index_stream[is_idx++]);
		index_buf[j] = converter.val.f0;
	}

	// perform kernel acceleration
	for (int p = 0; p < TILE_SIZE; p++){
		for (int i = 0; i < INPUT_SAMPLES; i++){
			for (int j = 0; j < FEAT; j++){
				converter.packet = pop_stream(kernel_in_stream[is_idx++]);
				input_buf[i][j]  = converter.val.f0;
			}
			int k = 0;
			for (int m = (p*INPUT_SAMPLES); m < ((p*INPUT_SAMPLES)+INPUT_SAMPLES); m++){
				for (int l = 0; l < FEAT; l++){
				temp2_buf[l]  = input_buf[k][l];
				}
			result_buf[m] = rbf_kernel(index_buf, temp2_buf);
			k++;
			}
		}
	}

	// Stream out value
	for (int i = 0; i < *length_x; i++){
		converter.val.f0 = result_buf[i];
		kernel_out_stream[os_idx++] = push_stream(converter.packet, os_idx == (*length_x));
	}
}

T rbf_kernel(T input1[FEAT], T input2[FEAT]){
	T gamma = 0.05;
	T sum = 0;
	T a[FEAT];

	for(unsigned int i=0; i<FEAT; i++){
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
	e.strb = (1<<sizeof(axi_T))-1;
	e.keep = (1<<sizeof(axi_T))-1;
	e.user = 0;
	e.last = last ? 1 : 0;
	e.id = 0;
	e.dest = 0;
	return e;
}
