#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("kernel_in_stream_TDATA", 32, hls_in, 3, "axis", "in_data", 1),
	Port_Property("kernel_in_stream_TVALID", 1, hls_in, 9, "axis", "in_vld", 1),
	Port_Property("kernel_in_stream_TREADY", 1, hls_out, 9, "axis", "in_acc", 1),
	Port_Property("kernel_in_stream_TKEEP", 4, hls_in, 4, "axis", "in_data", 1),
	Port_Property("kernel_in_stream_TSTRB", 4, hls_in, 5, "axis", "in_data", 1),
	Port_Property("kernel_in_stream_TUSER", 4, hls_in, 6, "axis", "in_data", 1),
	Port_Property("kernel_in_stream_TLAST", 1, hls_in, 7, "axis", "in_data", 1),
	Port_Property("kernel_in_stream_TID", 5, hls_in, 8, "axis", "in_data", 1),
	Port_Property("kernel_in_stream_TDEST", 5, hls_in, 9, "axis", "in_data", 1),
	Port_Property("kernel_index_stream_TDATA", 32, hls_in, 10, "axis", "in_data", 1),
	Port_Property("kernel_index_stream_TVALID", 1, hls_in, 16, "axis", "in_vld", 1),
	Port_Property("kernel_index_stream_TREADY", 1, hls_out, 16, "axis", "in_acc", 1),
	Port_Property("kernel_index_stream_TKEEP", 4, hls_in, 11, "axis", "in_data", 1),
	Port_Property("kernel_index_stream_TSTRB", 4, hls_in, 12, "axis", "in_data", 1),
	Port_Property("kernel_index_stream_TUSER", 4, hls_in, 13, "axis", "in_data", 1),
	Port_Property("kernel_index_stream_TLAST", 1, hls_in, 14, "axis", "in_data", 1),
	Port_Property("kernel_index_stream_TID", 5, hls_in, 15, "axis", "in_data", 1),
	Port_Property("kernel_index_stream_TDEST", 5, hls_in, 16, "axis", "in_data", 1),
	Port_Property("kernel_out_stream_TDATA", 32, hls_out, 17, "axis", "out_data", 1),
	Port_Property("kernel_out_stream_TVALID", 1, hls_out, 23, "axis", "out_vld", 1),
	Port_Property("kernel_out_stream_TREADY", 1, hls_in, 23, "axis", "out_acc", 1),
	Port_Property("kernel_out_stream_TKEEP", 4, hls_out, 18, "axis", "out_data", 1),
	Port_Property("kernel_out_stream_TSTRB", 4, hls_out, 19, "axis", "out_data", 1),
	Port_Property("kernel_out_stream_TUSER", 4, hls_out, 20, "axis", "out_data", 1),
	Port_Property("kernel_out_stream_TLAST", 1, hls_out, 21, "axis", "out_data", 1),
	Port_Property("kernel_out_stream_TID", 5, hls_out, 22, "axis", "out_data", 1),
	Port_Property("kernel_out_stream_TDEST", 5, hls_out, 23, "axis", "out_data", 1),
	Port_Property("s_axi_CONTROL_BUS_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_AWADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_ARADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "kernel_matrix";
