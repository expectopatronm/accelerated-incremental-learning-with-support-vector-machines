#include <stdio.h>
#include <stdlib.h>
#include "top_header.hpp"

// --------------------------------------------------------------------
// function to be accelerated in HW wrapped with AXI4-Stream interface
void predict(AXI_VAL *in_stream, AXI_VAL *supp_vec_stream, AXI_VAL *dual_coef_stream, AXI_VAL *out_stream, unsigned int *length_x, unsigned int *length_dc){
#pragma HLS INTERFACE s_axilite port=return   bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite	port=length_x bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite	port=length_dc bundle=CONTROL_BUS
#pragma HLS INTERFACE axis      port=in_stream
#pragma HLS INTERFACE axis      port=supp_vec_stream
#pragma HLS INTERFACE axis      port=dual_coef_stream
#pragma HLS INTERFACE axis      port=out_stream

	union
	{
		axi_T packet;
		struct {T f0; } val;
	} converter;

	// Hardware buffers
	T input_buf[VALUES][FEAT];
	T supp_vecs_buf[CLASSES][FEAT];
	T dual_coef_buf[CLASSES];
	T result_buf[VALUES];

	// Input and output AXI stream indices
	int is_idx = 0;
	int os_idx = 0;

	for (int i = 0; i < *length_x; i++){
		for (int j = 0; j < FEAT; j++) {
			converter.packet = pop_stream(in_stream[is_idx++]);
			input_buf[i][j]  = converter.val.f0;
		}
	T result = 0;
	for (int j = 0; j < *length_dc; j++){
		for (int j = 0; j < FEAT; j++) {
					converter.packet = pop_stream(supp_vec_stream[is_idx++]);
					supp_vecs_buf[i][j]  = converter.val.f0;
				}
			converter.packet = pop_stream(dual_coef_stream[is_idx++]);
			dual_coef_buf[i]  = converter.val.f0;
		result += dual_coef_buf[j] * rbf_kernel(supp_vecs_buf[j], input_buf[i]);
	}
		result_buf[i] = result;
	}

	// Stream out value
	for (int i = 0; i < *length_x; i++) {
		converter.val.f0 = result_buf[i];
		out_stream[os_idx++] = push_stream(converter.packet, os_idx == (*length_x));
	}
}

T rbf_kernel(T input1[FEAT], T input2[FEAT]){
	T gamma = 0.05;
	T sum = 0;
	T a[FEAT];

	LOOP_9: for(unsigned int i=0; i<FEAT; i++){
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
