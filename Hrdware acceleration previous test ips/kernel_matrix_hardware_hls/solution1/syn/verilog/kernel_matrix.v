// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="kernel_matrix,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=10.235140,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=266,HLS_SYN_DSP=23,HLS_SYN_FF=31994,HLS_SYN_LUT=49832,HLS_VERSION=2018_2}" *)

module kernel_matrix (
        s_axi_CONTROL_BUS_AWVALID,
        s_axi_CONTROL_BUS_AWREADY,
        s_axi_CONTROL_BUS_AWADDR,
        s_axi_CONTROL_BUS_WVALID,
        s_axi_CONTROL_BUS_WREADY,
        s_axi_CONTROL_BUS_WDATA,
        s_axi_CONTROL_BUS_WSTRB,
        s_axi_CONTROL_BUS_ARVALID,
        s_axi_CONTROL_BUS_ARREADY,
        s_axi_CONTROL_BUS_ARADDR,
        s_axi_CONTROL_BUS_RVALID,
        s_axi_CONTROL_BUS_RREADY,
        s_axi_CONTROL_BUS_RDATA,
        s_axi_CONTROL_BUS_RRESP,
        s_axi_CONTROL_BUS_BVALID,
        s_axi_CONTROL_BUS_BREADY,
        s_axi_CONTROL_BUS_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        kernel_in_stream_TDATA,
        kernel_in_stream_TKEEP,
        kernel_in_stream_TSTRB,
        kernel_in_stream_TUSER,
        kernel_in_stream_TLAST,
        kernel_in_stream_TID,
        kernel_in_stream_TDEST,
        kernel_index_stream_TDATA,
        kernel_index_stream_TKEEP,
        kernel_index_stream_TSTRB,
        kernel_index_stream_TUSER,
        kernel_index_stream_TLAST,
        kernel_index_stream_TID,
        kernel_index_stream_TDEST,
        kernel_out_stream_TDATA,
        kernel_out_stream_TKEEP,
        kernel_out_stream_TSTRB,
        kernel_out_stream_TUSER,
        kernel_out_stream_TLAST,
        kernel_out_stream_TID,
        kernel_out_stream_TDEST,
        kernel_index_stream_TVALID,
        kernel_index_stream_TREADY,
        kernel_in_stream_TVALID,
        kernel_in_stream_TREADY,
        kernel_out_stream_TVALID,
        kernel_out_stream_TREADY
);

parameter    C_S_AXI_CONTROL_BUS_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_BUS_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_S_AXI_ADDR_WIDTH = 32;

parameter C_S_AXI_CONTROL_BUS_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_CONTROL_BUS_AWVALID;
output   s_axi_CONTROL_BUS_AWREADY;
input  [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1:0] s_axi_CONTROL_BUS_AWADDR;
input   s_axi_CONTROL_BUS_WVALID;
output   s_axi_CONTROL_BUS_WREADY;
input  [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1:0] s_axi_CONTROL_BUS_WDATA;
input  [C_S_AXI_CONTROL_BUS_WSTRB_WIDTH - 1:0] s_axi_CONTROL_BUS_WSTRB;
input   s_axi_CONTROL_BUS_ARVALID;
output   s_axi_CONTROL_BUS_ARREADY;
input  [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1:0] s_axi_CONTROL_BUS_ARADDR;
output   s_axi_CONTROL_BUS_RVALID;
input   s_axi_CONTROL_BUS_RREADY;
output  [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1:0] s_axi_CONTROL_BUS_RDATA;
output  [1:0] s_axi_CONTROL_BUS_RRESP;
output   s_axi_CONTROL_BUS_BVALID;
input   s_axi_CONTROL_BUS_BREADY;
output  [1:0] s_axi_CONTROL_BUS_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
input  [31:0] kernel_in_stream_TDATA;
input  [3:0] kernel_in_stream_TKEEP;
input  [3:0] kernel_in_stream_TSTRB;
input  [3:0] kernel_in_stream_TUSER;
input  [0:0] kernel_in_stream_TLAST;
input  [4:0] kernel_in_stream_TID;
input  [4:0] kernel_in_stream_TDEST;
input  [31:0] kernel_index_stream_TDATA;
input  [3:0] kernel_index_stream_TKEEP;
input  [3:0] kernel_index_stream_TSTRB;
input  [3:0] kernel_index_stream_TUSER;
input  [0:0] kernel_index_stream_TLAST;
input  [4:0] kernel_index_stream_TID;
input  [4:0] kernel_index_stream_TDEST;
output  [31:0] kernel_out_stream_TDATA;
output  [3:0] kernel_out_stream_TKEEP;
output  [3:0] kernel_out_stream_TSTRB;
output  [3:0] kernel_out_stream_TUSER;
output  [0:0] kernel_out_stream_TLAST;
output  [4:0] kernel_out_stream_TID;
output  [4:0] kernel_out_stream_TDEST;
input   kernel_index_stream_TVALID;
output   kernel_index_stream_TREADY;
input   kernel_in_stream_TVALID;
output   kernel_in_stream_TREADY;
output   kernel_out_stream_TVALID;
input   kernel_out_stream_TREADY;

 reg    ap_rst_n_inv;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire   [31:0] length_x;
wire   [31:0] tile_size;
wire   [31:0] remaining_size;
wire   [31:0] index_buf_i_q0;
wire   [31:0] index_buf_t_q0;
wire   [31:0] result_buf_i_q0;
wire   [31:0] result_buf_t_q0;
wire    Loop_LOOP_1_proc10_U0_ap_start;
wire    Loop_LOOP_1_proc10_U0_ap_done;
wire    Loop_LOOP_1_proc10_U0_ap_continue;
wire    Loop_LOOP_1_proc10_U0_ap_idle;
wire    Loop_LOOP_1_proc10_U0_ap_ready;
wire    Loop_LOOP_1_proc10_U0_kernel_index_stream_TREADY;
wire   [9:0] Loop_LOOP_1_proc10_U0_index_buf_address0;
wire    Loop_LOOP_1_proc10_U0_index_buf_ce0;
wire    Loop_LOOP_1_proc10_U0_index_buf_we0;
wire   [31:0] Loop_LOOP_1_proc10_U0_index_buf_d0;
wire   [31:0] Loop_LOOP_1_proc10_U0_length_x_out_din;
wire    Loop_LOOP_1_proc10_U0_length_x_out_write;
wire   [31:0] Loop_LOOP_1_proc10_U0_tile_size_out_din;
wire    Loop_LOOP_1_proc10_U0_tile_size_out_write;
wire   [31:0] Loop_LOOP_1_proc10_U0_remaining_size_out_din;
wire    Loop_LOOP_1_proc10_U0_remaining_size_out_write;
wire    ap_channel_done_index_buf;
wire    Loop_LOOP_1_proc10_U0_index_buf_full_n;
wire    Loop_LOOP_2_proc9_U0_ap_start;
wire    Loop_LOOP_2_proc9_U0_ap_done;
wire    Loop_LOOP_2_proc9_U0_ap_continue;
wire    Loop_LOOP_2_proc9_U0_ap_idle;
wire    Loop_LOOP_2_proc9_U0_ap_ready;
wire    Loop_LOOP_2_proc9_U0_tile_size_read;
wire    Loop_LOOP_2_proc9_U0_remaining_size_read;
wire   [11:0] Loop_LOOP_2_proc9_U0_result_buf_address0;
wire    Loop_LOOP_2_proc9_U0_result_buf_ce0;
wire    Loop_LOOP_2_proc9_U0_result_buf_we0;
wire   [31:0] Loop_LOOP_2_proc9_U0_result_buf_d0;
wire   [9:0] Loop_LOOP_2_proc9_U0_index_buf_address0;
wire    Loop_LOOP_2_proc9_U0_index_buf_ce0;
wire    Loop_LOOP_2_proc9_U0_kernel_in_stream_TREADY;
wire    ap_channel_done_result_buf;
wire    Loop_LOOP_2_proc9_U0_result_buf_full_n;
wire    Loop_LOOP_6_proc_U0_ap_start;
wire    Loop_LOOP_6_proc_U0_ap_done;
wire    Loop_LOOP_6_proc_U0_ap_continue;
wire    Loop_LOOP_6_proc_U0_ap_idle;
wire    Loop_LOOP_6_proc_U0_ap_ready;
wire    Loop_LOOP_6_proc_U0_length_x_read;
wire   [11:0] Loop_LOOP_6_proc_U0_result_buf_address0;
wire    Loop_LOOP_6_proc_U0_result_buf_ce0;
wire   [31:0] Loop_LOOP_6_proc_U0_kernel_out_stream_TDATA;
wire    Loop_LOOP_6_proc_U0_kernel_out_stream_TVALID;
wire   [3:0] Loop_LOOP_6_proc_U0_kernel_out_stream_TKEEP;
wire   [3:0] Loop_LOOP_6_proc_U0_kernel_out_stream_TSTRB;
wire   [3:0] Loop_LOOP_6_proc_U0_kernel_out_stream_TUSER;
wire   [0:0] Loop_LOOP_6_proc_U0_kernel_out_stream_TLAST;
wire   [4:0] Loop_LOOP_6_proc_U0_kernel_out_stream_TID;
wire   [4:0] Loop_LOOP_6_proc_U0_kernel_out_stream_TDEST;
wire    ap_sync_continue;
wire    index_buf_i_full_n;
wire    index_buf_t_empty_n;
wire    result_buf_i_full_n;
wire    result_buf_t_empty_n;
wire    length_x_c_full_n;
wire   [31:0] length_x_c_dout;
wire    length_x_c_empty_n;
wire    tile_size_c_full_n;
wire   [31:0] tile_size_c_dout;
wire    tile_size_c_empty_n;
wire    remaining_size_c_full_n;
wire   [31:0] remaining_size_c_dout;
wire    remaining_size_c_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready;
wire    ap_sync_Loop_LOOP_1_proc10_U0_ap_ready;
reg   [1:0] Loop_LOOP_1_proc10_U0_ap_ready_count;
reg    ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready;
wire    ap_sync_Loop_LOOP_2_proc9_U0_ap_ready;
reg   [1:0] Loop_LOOP_2_proc9_U0_ap_ready_count;
wire    Loop_LOOP_1_proc10_U0_start_full_n;
wire    Loop_LOOP_1_proc10_U0_start_write;
wire    Loop_LOOP_2_proc9_U0_start_full_n;
wire    Loop_LOOP_2_proc9_U0_start_write;
wire    Loop_LOOP_6_proc_U0_start_full_n;
wire    Loop_LOOP_6_proc_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready = 1'b0;
#0 Loop_LOOP_1_proc10_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready = 1'b0;
#0 Loop_LOOP_2_proc9_U0_ap_ready_count = 2'd0;
end

kernel_matrix_CONTROL_BUS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_BUS_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_BUS_DATA_WIDTH ))
kernel_matrix_CONTROL_BUS_s_axi_U(
    .AWVALID(s_axi_CONTROL_BUS_AWVALID),
    .AWREADY(s_axi_CONTROL_BUS_AWREADY),
    .AWADDR(s_axi_CONTROL_BUS_AWADDR),
    .WVALID(s_axi_CONTROL_BUS_WVALID),
    .WREADY(s_axi_CONTROL_BUS_WREADY),
    .WDATA(s_axi_CONTROL_BUS_WDATA),
    .WSTRB(s_axi_CONTROL_BUS_WSTRB),
    .ARVALID(s_axi_CONTROL_BUS_ARVALID),
    .ARREADY(s_axi_CONTROL_BUS_ARREADY),
    .ARADDR(s_axi_CONTROL_BUS_ARADDR),
    .RVALID(s_axi_CONTROL_BUS_RVALID),
    .RREADY(s_axi_CONTROL_BUS_RREADY),
    .RDATA(s_axi_CONTROL_BUS_RDATA),
    .RRESP(s_axi_CONTROL_BUS_RRESP),
    .BVALID(s_axi_CONTROL_BUS_BVALID),
    .BREADY(s_axi_CONTROL_BUS_BREADY),
    .BRESP(s_axi_CONTROL_BUS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .length_x(length_x),
    .tile_size(tile_size),
    .remaining_size(remaining_size)
);

kernel_matrix_indibs #(
    .DataWidth( 32 ),
    .AddressRange( 784 ),
    .AddressWidth( 10 ))
index_buf_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_LOOP_1_proc10_U0_index_buf_address0),
    .i_ce0(Loop_LOOP_1_proc10_U0_index_buf_ce0),
    .i_we0(Loop_LOOP_1_proc10_U0_index_buf_we0),
    .i_d0(Loop_LOOP_1_proc10_U0_index_buf_d0),
    .i_q0(index_buf_i_q0),
    .t_address0(Loop_LOOP_2_proc9_U0_index_buf_address0),
    .t_ce0(Loop_LOOP_2_proc9_U0_index_buf_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(index_buf_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(index_buf_i_full_n),
    .i_write(Loop_LOOP_1_proc10_U0_ap_done),
    .t_empty_n(index_buf_t_empty_n),
    .t_read(Loop_LOOP_2_proc9_U0_ap_ready)
);

kernel_matrix_resjbC #(
    .DataWidth( 32 ),
    .AddressRange( 2500 ),
    .AddressWidth( 12 ))
result_buf_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_LOOP_2_proc9_U0_result_buf_address0),
    .i_ce0(Loop_LOOP_2_proc9_U0_result_buf_ce0),
    .i_we0(Loop_LOOP_2_proc9_U0_result_buf_we0),
    .i_d0(Loop_LOOP_2_proc9_U0_result_buf_d0),
    .i_q0(result_buf_i_q0),
    .t_address0(Loop_LOOP_6_proc_U0_result_buf_address0),
    .t_ce0(Loop_LOOP_6_proc_U0_result_buf_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(result_buf_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(result_buf_i_full_n),
    .i_write(Loop_LOOP_2_proc9_U0_ap_done),
    .t_empty_n(result_buf_t_empty_n),
    .t_read(Loop_LOOP_6_proc_U0_ap_ready)
);

Loop_LOOP_1_proc10 Loop_LOOP_1_proc10_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_LOOP_1_proc10_U0_ap_start),
    .ap_done(Loop_LOOP_1_proc10_U0_ap_done),
    .ap_continue(Loop_LOOP_1_proc10_U0_ap_continue),
    .ap_idle(Loop_LOOP_1_proc10_U0_ap_idle),
    .ap_ready(Loop_LOOP_1_proc10_U0_ap_ready),
    .kernel_index_stream_TDATA(kernel_index_stream_TDATA),
    .kernel_index_stream_TVALID(kernel_index_stream_TVALID),
    .kernel_index_stream_TREADY(Loop_LOOP_1_proc10_U0_kernel_index_stream_TREADY),
    .kernel_index_stream_TSTRB(kernel_index_stream_TSTRB),
    .kernel_index_stream_TKEEP(kernel_index_stream_TKEEP),
    .kernel_index_stream_TUSER(kernel_index_stream_TUSER),
    .kernel_index_stream_TLAST(kernel_index_stream_TLAST),
    .kernel_index_stream_TID(kernel_index_stream_TID),
    .kernel_index_stream_TDEST(kernel_index_stream_TDEST),
    .index_buf_address0(Loop_LOOP_1_proc10_U0_index_buf_address0),
    .index_buf_ce0(Loop_LOOP_1_proc10_U0_index_buf_ce0),
    .index_buf_we0(Loop_LOOP_1_proc10_U0_index_buf_we0),
    .index_buf_d0(Loop_LOOP_1_proc10_U0_index_buf_d0),
    .length_x(length_x),
    .tile_size(tile_size),
    .remaining_size(remaining_size),
    .length_x_out_din(Loop_LOOP_1_proc10_U0_length_x_out_din),
    .length_x_out_full_n(length_x_c_full_n),
    .length_x_out_write(Loop_LOOP_1_proc10_U0_length_x_out_write),
    .tile_size_out_din(Loop_LOOP_1_proc10_U0_tile_size_out_din),
    .tile_size_out_full_n(tile_size_c_full_n),
    .tile_size_out_write(Loop_LOOP_1_proc10_U0_tile_size_out_write),
    .remaining_size_out_din(Loop_LOOP_1_proc10_U0_remaining_size_out_din),
    .remaining_size_out_full_n(remaining_size_c_full_n),
    .remaining_size_out_write(Loop_LOOP_1_proc10_U0_remaining_size_out_write)
);

Loop_LOOP_2_proc9 Loop_LOOP_2_proc9_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_LOOP_2_proc9_U0_ap_start),
    .ap_done(Loop_LOOP_2_proc9_U0_ap_done),
    .ap_continue(Loop_LOOP_2_proc9_U0_ap_continue),
    .ap_idle(Loop_LOOP_2_proc9_U0_ap_idle),
    .ap_ready(Loop_LOOP_2_proc9_U0_ap_ready),
    .tile_size_dout(tile_size_c_dout),
    .tile_size_empty_n(tile_size_c_empty_n),
    .tile_size_read(Loop_LOOP_2_proc9_U0_tile_size_read),
    .remaining_size_dout(remaining_size_c_dout),
    .remaining_size_empty_n(remaining_size_c_empty_n),
    .remaining_size_read(Loop_LOOP_2_proc9_U0_remaining_size_read),
    .result_buf_address0(Loop_LOOP_2_proc9_U0_result_buf_address0),
    .result_buf_ce0(Loop_LOOP_2_proc9_U0_result_buf_ce0),
    .result_buf_we0(Loop_LOOP_2_proc9_U0_result_buf_we0),
    .result_buf_d0(Loop_LOOP_2_proc9_U0_result_buf_d0),
    .index_buf_address0(Loop_LOOP_2_proc9_U0_index_buf_address0),
    .index_buf_ce0(Loop_LOOP_2_proc9_U0_index_buf_ce0),
    .index_buf_q0(index_buf_t_q0),
    .kernel_in_stream_TDATA(kernel_in_stream_TDATA),
    .kernel_in_stream_TVALID(kernel_in_stream_TVALID),
    .kernel_in_stream_TREADY(Loop_LOOP_2_proc9_U0_kernel_in_stream_TREADY),
    .kernel_in_stream_TSTRB(kernel_in_stream_TSTRB),
    .kernel_in_stream_TKEEP(kernel_in_stream_TKEEP),
    .kernel_in_stream_TUSER(kernel_in_stream_TUSER),
    .kernel_in_stream_TLAST(kernel_in_stream_TLAST),
    .kernel_in_stream_TID(kernel_in_stream_TID),
    .kernel_in_stream_TDEST(kernel_in_stream_TDEST)
);

Loop_LOOP_6_proc Loop_LOOP_6_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_LOOP_6_proc_U0_ap_start),
    .ap_done(Loop_LOOP_6_proc_U0_ap_done),
    .ap_continue(Loop_LOOP_6_proc_U0_ap_continue),
    .ap_idle(Loop_LOOP_6_proc_U0_ap_idle),
    .ap_ready(Loop_LOOP_6_proc_U0_ap_ready),
    .length_x_dout(length_x_c_dout),
    .length_x_empty_n(length_x_c_empty_n),
    .length_x_read(Loop_LOOP_6_proc_U0_length_x_read),
    .result_buf_address0(Loop_LOOP_6_proc_U0_result_buf_address0),
    .result_buf_ce0(Loop_LOOP_6_proc_U0_result_buf_ce0),
    .result_buf_q0(result_buf_t_q0),
    .kernel_out_stream_TDATA(Loop_LOOP_6_proc_U0_kernel_out_stream_TDATA),
    .kernel_out_stream_TVALID(Loop_LOOP_6_proc_U0_kernel_out_stream_TVALID),
    .kernel_out_stream_TREADY(kernel_out_stream_TREADY),
    .kernel_out_stream_TKEEP(Loop_LOOP_6_proc_U0_kernel_out_stream_TKEEP),
    .kernel_out_stream_TSTRB(Loop_LOOP_6_proc_U0_kernel_out_stream_TSTRB),
    .kernel_out_stream_TUSER(Loop_LOOP_6_proc_U0_kernel_out_stream_TUSER),
    .kernel_out_stream_TLAST(Loop_LOOP_6_proc_U0_kernel_out_stream_TLAST),
    .kernel_out_stream_TID(Loop_LOOP_6_proc_U0_kernel_out_stream_TID),
    .kernel_out_stream_TDEST(Loop_LOOP_6_proc_U0_kernel_out_stream_TDEST)
);

fifo_w32_d3_A length_x_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_LOOP_1_proc10_U0_length_x_out_din),
    .if_full_n(length_x_c_full_n),
    .if_write(Loop_LOOP_1_proc10_U0_length_x_out_write),
    .if_dout(length_x_c_dout),
    .if_empty_n(length_x_c_empty_n),
    .if_read(Loop_LOOP_6_proc_U0_length_x_read)
);

fifo_w32_d2_A tile_size_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_LOOP_1_proc10_U0_tile_size_out_din),
    .if_full_n(tile_size_c_full_n),
    .if_write(Loop_LOOP_1_proc10_U0_tile_size_out_write),
    .if_dout(tile_size_c_dout),
    .if_empty_n(tile_size_c_empty_n),
    .if_read(Loop_LOOP_2_proc9_U0_tile_size_read)
);

fifo_w32_d2_A remaining_size_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_LOOP_1_proc10_U0_remaining_size_out_din),
    .if_full_n(remaining_size_c_full_n),
    .if_write(Loop_LOOP_1_proc10_U0_remaining_size_out_write),
    .if_dout(remaining_size_c_dout),
    .if_empty_n(remaining_size_c_empty_n),
    .if_read(Loop_LOOP_2_proc9_U0_remaining_size_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready <= ap_sync_Loop_LOOP_1_proc10_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready <= ap_sync_Loop_LOOP_2_proc9_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sync_ready == 1'b1) & (1'b0 == Loop_LOOP_1_proc10_U0_ap_ready))) begin
        Loop_LOOP_1_proc10_U0_ap_ready_count <= (Loop_LOOP_1_proc10_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == Loop_LOOP_1_proc10_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        Loop_LOOP_1_proc10_U0_ap_ready_count <= (Loop_LOOP_1_proc10_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sync_ready == 1'b1) & (1'b0 == Loop_LOOP_2_proc9_U0_ap_ready))) begin
        Loop_LOOP_2_proc9_U0_ap_ready_count <= (Loop_LOOP_2_proc9_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == Loop_LOOP_2_proc9_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        Loop_LOOP_2_proc9_U0_ap_ready_count <= (Loop_LOOP_2_proc9_U0_ap_ready_count + 2'd1);
    end
end

assign Loop_LOOP_1_proc10_U0_ap_continue = index_buf_i_full_n;

assign Loop_LOOP_1_proc10_U0_ap_start = ((ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready ^ 1'b1) & ap_start);

assign Loop_LOOP_1_proc10_U0_index_buf_full_n = index_buf_i_full_n;

assign Loop_LOOP_1_proc10_U0_start_full_n = 1'b1;

assign Loop_LOOP_1_proc10_U0_start_write = 1'b0;

assign Loop_LOOP_2_proc9_U0_ap_continue = result_buf_i_full_n;

assign Loop_LOOP_2_proc9_U0_ap_start = (index_buf_t_empty_n & (ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready ^ 1'b1) & ap_start);

assign Loop_LOOP_2_proc9_U0_result_buf_full_n = result_buf_i_full_n;

assign Loop_LOOP_2_proc9_U0_start_full_n = 1'b1;

assign Loop_LOOP_2_proc9_U0_start_write = 1'b0;

assign Loop_LOOP_6_proc_U0_ap_continue = 1'b1;

assign Loop_LOOP_6_proc_U0_ap_start = result_buf_t_empty_n;

assign Loop_LOOP_6_proc_U0_start_full_n = 1'b1;

assign Loop_LOOP_6_proc_U0_start_write = 1'b0;

assign ap_channel_done_index_buf = Loop_LOOP_1_proc10_U0_ap_done;

assign ap_channel_done_result_buf = Loop_LOOP_2_proc9_U0_ap_done;

assign ap_done = Loop_LOOP_6_proc_U0_ap_done;

assign ap_idle = ((result_buf_t_empty_n ^ 1'b1) & (index_buf_t_empty_n ^ 1'b1) & Loop_LOOP_6_proc_U0_ap_idle & Loop_LOOP_2_proc9_U0_ap_idle & Loop_LOOP_1_proc10_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_Loop_LOOP_1_proc10_U0_ap_ready = (ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready | Loop_LOOP_1_proc10_U0_ap_ready);

assign ap_sync_Loop_LOOP_2_proc9_U0_ap_ready = (ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready | Loop_LOOP_2_proc9_U0_ap_ready);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Loop_LOOP_6_proc_U0_ap_done;

assign ap_sync_ready = (ap_sync_Loop_LOOP_2_proc9_U0_ap_ready & ap_sync_Loop_LOOP_1_proc10_U0_ap_ready);

assign kernel_in_stream_TREADY = Loop_LOOP_2_proc9_U0_kernel_in_stream_TREADY;

assign kernel_index_stream_TREADY = Loop_LOOP_1_proc10_U0_kernel_index_stream_TREADY;

assign kernel_out_stream_TDATA = Loop_LOOP_6_proc_U0_kernel_out_stream_TDATA;

assign kernel_out_stream_TDEST = Loop_LOOP_6_proc_U0_kernel_out_stream_TDEST;

assign kernel_out_stream_TID = Loop_LOOP_6_proc_U0_kernel_out_stream_TID;

assign kernel_out_stream_TKEEP = Loop_LOOP_6_proc_U0_kernel_out_stream_TKEEP;

assign kernel_out_stream_TLAST = Loop_LOOP_6_proc_U0_kernel_out_stream_TLAST;

assign kernel_out_stream_TSTRB = Loop_LOOP_6_proc_U0_kernel_out_stream_TSTRB;

assign kernel_out_stream_TUSER = Loop_LOOP_6_proc_U0_kernel_out_stream_TUSER;

assign kernel_out_stream_TVALID = Loop_LOOP_6_proc_U0_kernel_out_stream_TVALID;

endmodule //kernel_matrix
