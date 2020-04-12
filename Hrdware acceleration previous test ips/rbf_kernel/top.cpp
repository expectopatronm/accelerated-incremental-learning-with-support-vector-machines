#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <hls_math.h>
#include "top_header.hpp"

// --------------------------------------------------------------------
// function to be accelerated in HW wrapped with AXI4-Stream interface
void rbf_kernel(AXI_VAL in_stream1[IS_SIZE], AXI_VAL in_stream2[IS_SIZE], AXI_VAL out_stream[OS_SIZE])
{
#pragma HLS DATAFLOW
#pragma HLS INTERFACE s_axilite port=return   bundle=CONTROL_BUS
#pragma HLS INTERFACE axis      port=in_stream1
#pragma HLS INTERFACE axis      port=in_stream2
#pragma HLS INTERFACE axis      port=out_stream

	assert(FEAT%WIDTH_RATIO==0);

	// Union used for type conversion
	union
	{
		axi_T packet;
		struct {T f0; T f1;} val;
	} 	converter1;

	union
	{
		axi_T packet;
		struct {T f0;} val;
	} 	converter2;

	// Hardware buffers
	T temp_buf[FEAT];
	T temp2_buf[FEAT];

	// Input and output AXI stream indices
	int is_idx1 = 0;
	int is_idx2 = 0;
	int os_idx = 0;

	T gamma = 0.05;
	T sum = 0;
	T a[FEAT];


	// Stream in offset vector
	for (int i = 0; i < FEAT; i+=WIDTH_RATIO) {
#pragma HLS PIPELINE
		converter1.packet = pop_stream(in_stream1[is_idx1++]);
		temp_buf[i+0] = converter1.val.f0;
		temp_buf[i+1] = converter1.val.f1;
		converter1.packet = pop_stream(in_stream2[is_idx2++]);
		temp2_buf[i+0] = converter1.val.f0;
		temp2_buf[i+1] = converter1.val.f1;
	}
	converter2.val.f0 = Rbf_kernel_func(temp_buf, temp2_buf);
	out_stream[os_idx++] = push_stream(converter2.packet, os_idx == (OS_SIZE));
}

T Rbf_kernel_func(T input1[FEAT], T input2[FEAT]){
#pragma HLS INLINE

    T gamma = 0.05;
    T sum = 0;
    T a[FEAT];

    LOOP_12:
    for (unsigned int i = 0; i < FEAT; i++)
    {
#pragma HLS UNROLL factor=10
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
