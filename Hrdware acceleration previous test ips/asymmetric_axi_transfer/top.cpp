#include <stdio.h>
#include <stdlib.h>
#include "top_header.hpp"

// --------------------------------------------------------------------
// function to be accelerated in HW wrapped with AXI4-Stream interface
void kernel_matrix(AXI_VAL *in_stream, AXI_VAL *out_stream, unsigned int *my_index, unsigned int *length_x)
{
#pragma HLS INTERFACE s_axilite port=return   bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite	register port=my_index bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite	register port=length_x bundle=CONTROL_BUS
#pragma HLS INTERFACE axis      port=in_stream
#pragma HLS INTERFACE axis      port=out_stream

	// Union used for type conversion
	union
	{
		axi_T packet;
		struct {T f0; } val;
	} 	converter;

	// Hardware buffers
	T input_buf[SAMPLES][FEAT];
	T temp_buf[FEAT];
	T temp2_buf[FEAT];
	T index_buf[FEAT];
	T result_buf[OS_SIZE];

	// Input and output AXI stream indices
	int is_idx = 0;
	int os_idx = 0;

	// Stream in input matrix (12,4)
	LOOP_1: for (int i = 0; i < *length_x; i++) {
		LOOP_2: for (int j = 0; j < FEAT; j++) {
			converter.packet = pop_stream(in_stream[is_idx++]);
			input_buf[i][j]  = converter.val.f0;
		}
	}

	LOOP_3: for (int j = 0; j < FEAT; j++){
			temp_buf[j]  = input_buf[*my_index][j];
	}

	LOOP_4: for (int i = 0; i < *length_x; i++){
		LOOP_5: for (int j = 0; j < FEAT; j++){
				temp2_buf[j]  = input_buf[i][j];
		}
		result_buf[i] = rbf_kernel(temp_buf, temp2_buf);
	}

	// Stream out value
	LOOP_6: for (int i = 0; i < OS_SIZE; i++) {
		converter.val.f0 = result_buf[i];
		out_stream[os_idx++] = push_stream(converter.packet, os_idx == (OS_SIZE));
	}
}

T rbf_kernel(T input1[FEAT], T input2[FEAT]){
	T gamma = 0.05;
	T sum = 0;
	T a[FEAT];

	LOOP_7: for(unsigned int i=0; i<FEAT; i++){
		a[i] = input1[i] - input2[i];
		sum = sum + a[i] * a[i];
	}
	return expf(-gamma * sum);
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
