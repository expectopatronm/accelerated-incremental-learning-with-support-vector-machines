#include <stdio.h>
#include <stdlib.h>
#include "test_header.hpp"

// --------------------------------------------------------------------
// function to be accelerated in HW wrapped with AXI4-Stream interface
void test_shit(AXI_VAL in_stream[IS_SIZE], AXI_VAL out_stream[OS_SIZE], unsigned int my_index)
{
#pragma HLS INTERFACE s_axilite port=return     bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=my_index
#pragma HLS INTERFACE axis      port=in_stream
#pragma HLS INTERFACE axis      port=out_stream

	// Union used for type conversion
	union
	{
		axi_T packet;
		struct {T f0;} val;
	} converter;

	// Hardware buffers
	T output_buf[CLASSES];
	T result_buf[CLASSES];
	T input_buf[CLASSES][FEAT];
#pragma HLS ARRAY_PARTITION variable=input_buf complete dim=1
	T temp_buf[FEAT];
	T temp2_buf[FEAT];

	// Input and output AXI stream indices
	int is_idx = 0;
	int os_idx = 0;

	// Stream in input matrix (12,4)
	LOOP_1: for (int i = 0; i < CLASSES; i++) {
		LOOP_2: for (int j = 0; j < FEAT; j+=1) {
#pragma HLS PIPELINE
			converter.packet = pop_stream(in_stream[is_idx++]);
			input_buf[i][j]  = converter.val.f0;
		}
	}

	LOOP_3: for (int j = 0; j < FEAT; j+=1){
			temp_buf[j]  = input_buf[my_index][j];
	}

	LOOP_4: for (int i = 0; i < CLASSES; i+=1){
#pragma HLS PIPELINE
		LOOP_5: for (int j = 0; j < FEAT; j+=1){
				temp2_buf[j]  = input_buf[i][j];
		}
		result_buf[i] = rbf_kernel(temp_buf, temp2_buf);
	}

	// Stream out value
	LOOP_6: for (int i = 0; i < CLASSES; i+=1) {
#pragma HLS PIPELINE
		converter.val.f0 = result_buf[i];
		out_stream[os_idx++] = push_stream(converter.packet, os_idx == (OS_SIZE));
	}

}

T rbf_kernel(T input1[FEAT], T input2[FEAT]){
	T gamma = 0.05;
	T sum = 0;
	T a[FEAT];

	LOOP_7: for(unsigned int i=0; i<FEAT; i++){
#pragma HLS PIPELINE
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
