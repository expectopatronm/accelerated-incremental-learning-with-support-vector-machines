// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="rbf_kernel,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=14.512000,HLS_SYN_LAT=3544,HLS_SYN_TPT=3150,HLS_SYN_MEM=4,HLS_SYN_DSP=19,HLS_SYN_FF=2803,HLS_SYN_LUT=4118,HLS_VERSION=2018_2}" *)

module rbf_kernel (
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
        in_stream1_TDATA,
        in_stream1_TKEEP,
        in_stream1_TSTRB,
        in_stream1_TUSER,
        in_stream1_TLAST,
        in_stream1_TID,
        in_stream1_TDEST,
        in_stream2_TDATA,
        in_stream2_TKEEP,
        in_stream2_TSTRB,
        in_stream2_TUSER,
        in_stream2_TLAST,
        in_stream2_TID,
        in_stream2_TDEST,
        out_stream_TDATA,
        out_stream_TKEEP,
        out_stream_TSTRB,
        out_stream_TUSER,
        out_stream_TLAST,
        out_stream_TID,
        out_stream_TDEST,
        in_stream1_TVALID,
        in_stream1_TREADY,
        in_stream2_TVALID,
        in_stream2_TREADY,
        out_stream_TVALID,
        out_stream_TREADY
);

parameter    C_S_AXI_CONTROL_BUS_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_BUS_ADDR_WIDTH = 4;
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
input  [31:0] in_stream1_TDATA;
input  [3:0] in_stream1_TKEEP;
input  [3:0] in_stream1_TSTRB;
input  [3:0] in_stream1_TUSER;
input  [0:0] in_stream1_TLAST;
input  [4:0] in_stream1_TID;
input  [4:0] in_stream1_TDEST;
input  [31:0] in_stream2_TDATA;
input  [3:0] in_stream2_TKEEP;
input  [3:0] in_stream2_TSTRB;
input  [3:0] in_stream2_TUSER;
input  [0:0] in_stream2_TLAST;
input  [4:0] in_stream2_TID;
input  [4:0] in_stream2_TDEST;
output  [31:0] out_stream_TDATA;
output  [3:0] out_stream_TKEEP;
output  [3:0] out_stream_TSTRB;
output  [3:0] out_stream_TUSER;
output  [0:0] out_stream_TLAST;
output  [4:0] out_stream_TID;
output  [4:0] out_stream_TDEST;
input   in_stream1_TVALID;
output   in_stream1_TREADY;
input   in_stream2_TVALID;
output   in_stream2_TREADY;
output   out_stream_TVALID;
input   out_stream_TREADY;

 reg    ap_rst_n_inv;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire   [31:0] temp_buf_i_q0;
wire   [31:0] temp_buf_i_q1;
wire   [31:0] temp_buf_t_q0;
wire   [31:0] temp_buf_t_q1;
wire   [31:0] temp2_buf_i_q0;
wire   [31:0] temp2_buf_i_q1;
wire   [31:0] temp2_buf_t_q0;
wire   [31:0] temp2_buf_t_q1;
wire    Loop_1_proc_U0_ap_start;
wire    Loop_1_proc_U0_ap_done;
wire    Loop_1_proc_U0_ap_continue;
wire    Loop_1_proc_U0_ap_idle;
wire    Loop_1_proc_U0_ap_ready;
wire    Loop_1_proc_U0_in_stream1_TREADY;
wire   [9:0] Loop_1_proc_U0_temp_buf_address0;
wire    Loop_1_proc_U0_temp_buf_ce0;
wire    Loop_1_proc_U0_temp_buf_we0;
wire   [31:0] Loop_1_proc_U0_temp_buf_d0;
wire   [9:0] Loop_1_proc_U0_temp_buf_address1;
wire    Loop_1_proc_U0_temp_buf_ce1;
wire    Loop_1_proc_U0_temp_buf_we1;
wire   [31:0] Loop_1_proc_U0_temp_buf_d1;
wire    Loop_1_proc_U0_in_stream2_TREADY;
wire   [9:0] Loop_1_proc_U0_temp2_buf_address0;
wire    Loop_1_proc_U0_temp2_buf_ce0;
wire    Loop_1_proc_U0_temp2_buf_we0;
wire   [31:0] Loop_1_proc_U0_temp2_buf_d0;
wire   [9:0] Loop_1_proc_U0_temp2_buf_address1;
wire    Loop_1_proc_U0_temp2_buf_ce1;
wire    Loop_1_proc_U0_temp2_buf_we1;
wire   [31:0] Loop_1_proc_U0_temp2_buf_d1;
wire    ap_channel_done_temp2_buf;
wire    Loop_1_proc_U0_temp2_buf_full_n;
reg    ap_sync_reg_channel_write_temp2_buf;
wire    ap_sync_channel_write_temp2_buf;
wire    ap_channel_done_temp_buf;
wire    Loop_1_proc_U0_temp_buf_full_n;
reg    ap_sync_reg_channel_write_temp_buf;
wire    ap_sync_channel_write_temp_buf;
wire    Loop_LOOP_12_proc_U0_ap_start;
wire    Loop_LOOP_12_proc_U0_ap_done;
wire    Loop_LOOP_12_proc_U0_ap_continue;
wire    Loop_LOOP_12_proc_U0_ap_idle;
wire    Loop_LOOP_12_proc_U0_ap_ready;
wire   [9:0] Loop_LOOP_12_proc_U0_temp_buf_address0;
wire    Loop_LOOP_12_proc_U0_temp_buf_ce0;
wire   [9:0] Loop_LOOP_12_proc_U0_temp_buf_address1;
wire    Loop_LOOP_12_proc_U0_temp_buf_ce1;
wire   [9:0] Loop_LOOP_12_proc_U0_temp2_buf_address0;
wire    Loop_LOOP_12_proc_U0_temp2_buf_ce0;
wire   [9:0] Loop_LOOP_12_proc_U0_temp2_buf_address1;
wire    Loop_LOOP_12_proc_U0_temp2_buf_ce1;
wire   [31:0] Loop_LOOP_12_proc_U0_ap_return;
wire    ap_channel_done_sum_3_loc_channel;
wire    sum_3_loc_channel_full_n;
wire    Block_Rbf_kernel_fun_U0_ap_start;
wire    Block_Rbf_kernel_fun_U0_ap_done;
wire    Block_Rbf_kernel_fun_U0_ap_continue;
wire    Block_Rbf_kernel_fun_U0_ap_idle;
wire    Block_Rbf_kernel_fun_U0_ap_ready;
wire   [31:0] Block_Rbf_kernel_fun_U0_out_stream_TDATA;
wire    Block_Rbf_kernel_fun_U0_out_stream_TVALID;
wire   [3:0] Block_Rbf_kernel_fun_U0_out_stream_TKEEP;
wire   [3:0] Block_Rbf_kernel_fun_U0_out_stream_TSTRB;
wire   [3:0] Block_Rbf_kernel_fun_U0_out_stream_TUSER;
wire   [0:0] Block_Rbf_kernel_fun_U0_out_stream_TLAST;
wire   [4:0] Block_Rbf_kernel_fun_U0_out_stream_TID;
wire   [4:0] Block_Rbf_kernel_fun_U0_out_stream_TDEST;
wire    ap_sync_continue;
wire    temp_buf_i_full_n;
wire    temp_buf_t_empty_n;
wire    temp2_buf_i_full_n;
wire    temp2_buf_t_empty_n;
wire   [31:0] sum_3_loc_channel_dout;
wire    sum_3_loc_channel_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    Loop_1_proc_U0_start_full_n;
wire    Loop_1_proc_U0_start_write;
wire    Loop_LOOP_12_proc_U0_start_full_n;
wire    Loop_LOOP_12_proc_U0_start_write;
wire    Block_Rbf_kernel_fun_U0_start_full_n;
wire    Block_Rbf_kernel_fun_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_temp2_buf = 1'b0;
#0 ap_sync_reg_channel_write_temp_buf = 1'b0;
end

rbf_kernel_CONTROL_BUS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_BUS_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_BUS_DATA_WIDTH ))
rbf_kernel_CONTROL_BUS_s_axi_U(
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
    .ap_idle(ap_idle)
);

rbf_kernel_temp_buf #(
    .DataWidth( 32 ),
    .AddressRange( 784 ),
    .AddressWidth( 10 ))
temp_buf_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_1_proc_U0_temp_buf_address0),
    .i_ce0(Loop_1_proc_U0_temp_buf_ce0),
    .i_we0(Loop_1_proc_U0_temp_buf_we0),
    .i_d0(Loop_1_proc_U0_temp_buf_d0),
    .i_q0(temp_buf_i_q0),
    .i_address1(Loop_1_proc_U0_temp_buf_address1),
    .i_ce1(Loop_1_proc_U0_temp_buf_ce1),
    .i_we1(Loop_1_proc_U0_temp_buf_we1),
    .i_d1(Loop_1_proc_U0_temp_buf_d1),
    .i_q1(temp_buf_i_q1),
    .t_address0(Loop_LOOP_12_proc_U0_temp_buf_address0),
    .t_ce0(Loop_LOOP_12_proc_U0_temp_buf_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(temp_buf_t_q0),
    .t_address1(Loop_LOOP_12_proc_U0_temp_buf_address1),
    .t_ce1(Loop_LOOP_12_proc_U0_temp_buf_ce1),
    .t_we1(1'b0),
    .t_d1(32'd0),
    .t_q1(temp_buf_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(temp_buf_i_full_n),
    .i_write(ap_channel_done_temp_buf),
    .t_empty_n(temp_buf_t_empty_n),
    .t_read(Loop_LOOP_12_proc_U0_ap_ready)
);

rbf_kernel_temp_buf #(
    .DataWidth( 32 ),
    .AddressRange( 784 ),
    .AddressWidth( 10 ))
temp2_buf_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_1_proc_U0_temp2_buf_address0),
    .i_ce0(Loop_1_proc_U0_temp2_buf_ce0),
    .i_we0(Loop_1_proc_U0_temp2_buf_we0),
    .i_d0(Loop_1_proc_U0_temp2_buf_d0),
    .i_q0(temp2_buf_i_q0),
    .i_address1(Loop_1_proc_U0_temp2_buf_address1),
    .i_ce1(Loop_1_proc_U0_temp2_buf_ce1),
    .i_we1(Loop_1_proc_U0_temp2_buf_we1),
    .i_d1(Loop_1_proc_U0_temp2_buf_d1),
    .i_q1(temp2_buf_i_q1),
    .t_address0(Loop_LOOP_12_proc_U0_temp2_buf_address0),
    .t_ce0(Loop_LOOP_12_proc_U0_temp2_buf_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(temp2_buf_t_q0),
    .t_address1(Loop_LOOP_12_proc_U0_temp2_buf_address1),
    .t_ce1(Loop_LOOP_12_proc_U0_temp2_buf_ce1),
    .t_we1(1'b0),
    .t_d1(32'd0),
    .t_q1(temp2_buf_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(temp2_buf_i_full_n),
    .i_write(ap_channel_done_temp2_buf),
    .t_empty_n(temp2_buf_t_empty_n),
    .t_read(Loop_LOOP_12_proc_U0_ap_ready)
);

Loop_1_proc Loop_1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_1_proc_U0_ap_start),
    .ap_done(Loop_1_proc_U0_ap_done),
    .ap_continue(Loop_1_proc_U0_ap_continue),
    .ap_idle(Loop_1_proc_U0_ap_idle),
    .ap_ready(Loop_1_proc_U0_ap_ready),
    .in_stream1_TDATA(in_stream1_TDATA),
    .in_stream1_TVALID(in_stream1_TVALID),
    .in_stream1_TREADY(Loop_1_proc_U0_in_stream1_TREADY),
    .in_stream1_TSTRB(in_stream1_TSTRB),
    .in_stream1_TKEEP(in_stream1_TKEEP),
    .in_stream1_TUSER(in_stream1_TUSER),
    .in_stream1_TLAST(in_stream1_TLAST),
    .in_stream1_TID(in_stream1_TID),
    .in_stream1_TDEST(in_stream1_TDEST),
    .temp_buf_address0(Loop_1_proc_U0_temp_buf_address0),
    .temp_buf_ce0(Loop_1_proc_U0_temp_buf_ce0),
    .temp_buf_we0(Loop_1_proc_U0_temp_buf_we0),
    .temp_buf_d0(Loop_1_proc_U0_temp_buf_d0),
    .temp_buf_address1(Loop_1_proc_U0_temp_buf_address1),
    .temp_buf_ce1(Loop_1_proc_U0_temp_buf_ce1),
    .temp_buf_we1(Loop_1_proc_U0_temp_buf_we1),
    .temp_buf_d1(Loop_1_proc_U0_temp_buf_d1),
    .in_stream2_TDATA(in_stream2_TDATA),
    .in_stream2_TVALID(in_stream2_TVALID),
    .in_stream2_TREADY(Loop_1_proc_U0_in_stream2_TREADY),
    .in_stream2_TSTRB(in_stream2_TSTRB),
    .in_stream2_TKEEP(in_stream2_TKEEP),
    .in_stream2_TUSER(in_stream2_TUSER),
    .in_stream2_TLAST(in_stream2_TLAST),
    .in_stream2_TID(in_stream2_TID),
    .in_stream2_TDEST(in_stream2_TDEST),
    .temp2_buf_address0(Loop_1_proc_U0_temp2_buf_address0),
    .temp2_buf_ce0(Loop_1_proc_U0_temp2_buf_ce0),
    .temp2_buf_we0(Loop_1_proc_U0_temp2_buf_we0),
    .temp2_buf_d0(Loop_1_proc_U0_temp2_buf_d0),
    .temp2_buf_address1(Loop_1_proc_U0_temp2_buf_address1),
    .temp2_buf_ce1(Loop_1_proc_U0_temp2_buf_ce1),
    .temp2_buf_we1(Loop_1_proc_U0_temp2_buf_we1),
    .temp2_buf_d1(Loop_1_proc_U0_temp2_buf_d1)
);

Loop_LOOP_12_proc Loop_LOOP_12_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_LOOP_12_proc_U0_ap_start),
    .ap_done(Loop_LOOP_12_proc_U0_ap_done),
    .ap_continue(Loop_LOOP_12_proc_U0_ap_continue),
    .ap_idle(Loop_LOOP_12_proc_U0_ap_idle),
    .ap_ready(Loop_LOOP_12_proc_U0_ap_ready),
    .temp_buf_address0(Loop_LOOP_12_proc_U0_temp_buf_address0),
    .temp_buf_ce0(Loop_LOOP_12_proc_U0_temp_buf_ce0),
    .temp_buf_q0(temp_buf_t_q0),
    .temp_buf_address1(Loop_LOOP_12_proc_U0_temp_buf_address1),
    .temp_buf_ce1(Loop_LOOP_12_proc_U0_temp_buf_ce1),
    .temp_buf_q1(temp_buf_t_q1),
    .temp2_buf_address0(Loop_LOOP_12_proc_U0_temp2_buf_address0),
    .temp2_buf_ce0(Loop_LOOP_12_proc_U0_temp2_buf_ce0),
    .temp2_buf_q0(temp2_buf_t_q0),
    .temp2_buf_address1(Loop_LOOP_12_proc_U0_temp2_buf_address1),
    .temp2_buf_ce1(Loop_LOOP_12_proc_U0_temp2_buf_ce1),
    .temp2_buf_q1(temp2_buf_t_q1),
    .ap_return(Loop_LOOP_12_proc_U0_ap_return)
);

Block_Rbf_kernel_fun Block_Rbf_kernel_fun_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_Rbf_kernel_fun_U0_ap_start),
    .ap_done(Block_Rbf_kernel_fun_U0_ap_done),
    .ap_continue(Block_Rbf_kernel_fun_U0_ap_continue),
    .ap_idle(Block_Rbf_kernel_fun_U0_ap_idle),
    .ap_ready(Block_Rbf_kernel_fun_U0_ap_ready),
    .p_read(sum_3_loc_channel_dout),
    .out_stream_TDATA(Block_Rbf_kernel_fun_U0_out_stream_TDATA),
    .out_stream_TVALID(Block_Rbf_kernel_fun_U0_out_stream_TVALID),
    .out_stream_TREADY(out_stream_TREADY),
    .out_stream_TKEEP(Block_Rbf_kernel_fun_U0_out_stream_TKEEP),
    .out_stream_TSTRB(Block_Rbf_kernel_fun_U0_out_stream_TSTRB),
    .out_stream_TUSER(Block_Rbf_kernel_fun_U0_out_stream_TUSER),
    .out_stream_TLAST(Block_Rbf_kernel_fun_U0_out_stream_TLAST),
    .out_stream_TID(Block_Rbf_kernel_fun_U0_out_stream_TID),
    .out_stream_TDEST(Block_Rbf_kernel_fun_U0_out_stream_TDEST)
);

fifo_w32_d2_A sum_3_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_LOOP_12_proc_U0_ap_return),
    .if_full_n(sum_3_loc_channel_full_n),
    .if_write(Loop_LOOP_12_proc_U0_ap_done),
    .if_dout(sum_3_loc_channel_dout),
    .if_empty_n(sum_3_loc_channel_empty_n),
    .if_read(Block_Rbf_kernel_fun_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_temp2_buf <= 1'b0;
    end else begin
        if (((Loop_1_proc_U0_ap_done & Loop_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_temp2_buf <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_temp2_buf <= ap_sync_channel_write_temp2_buf;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_temp_buf <= 1'b0;
    end else begin
        if (((Loop_1_proc_U0_ap_done & Loop_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_temp_buf <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_temp_buf <= ap_sync_channel_write_temp_buf;
        end
    end
end

assign Block_Rbf_kernel_fun_U0_ap_continue = 1'b1;

assign Block_Rbf_kernel_fun_U0_ap_start = sum_3_loc_channel_empty_n;

assign Block_Rbf_kernel_fun_U0_start_full_n = 1'b1;

assign Block_Rbf_kernel_fun_U0_start_write = 1'b0;

assign Loop_1_proc_U0_ap_continue = (ap_sync_channel_write_temp_buf & ap_sync_channel_write_temp2_buf);

assign Loop_1_proc_U0_ap_start = ap_start;

assign Loop_1_proc_U0_start_full_n = 1'b1;

assign Loop_1_proc_U0_start_write = 1'b0;

assign Loop_1_proc_U0_temp2_buf_full_n = temp2_buf_i_full_n;

assign Loop_1_proc_U0_temp_buf_full_n = temp_buf_i_full_n;

assign Loop_LOOP_12_proc_U0_ap_continue = sum_3_loc_channel_full_n;

assign Loop_LOOP_12_proc_U0_ap_start = (temp_buf_t_empty_n & temp2_buf_t_empty_n);

assign Loop_LOOP_12_proc_U0_start_full_n = 1'b1;

assign Loop_LOOP_12_proc_U0_start_write = 1'b0;

assign ap_channel_done_sum_3_loc_channel = Loop_LOOP_12_proc_U0_ap_done;

assign ap_channel_done_temp2_buf = ((ap_sync_reg_channel_write_temp2_buf ^ 1'b1) & Loop_1_proc_U0_ap_done);

assign ap_channel_done_temp_buf = ((ap_sync_reg_channel_write_temp_buf ^ 1'b1) & Loop_1_proc_U0_ap_done);

assign ap_done = Block_Rbf_kernel_fun_U0_ap_done;

assign ap_idle = ((sum_3_loc_channel_empty_n ^ 1'b1) & (temp2_buf_t_empty_n ^ 1'b1) & (temp_buf_t_empty_n ^ 1'b1) & Loop_LOOP_12_proc_U0_ap_idle & Loop_1_proc_U0_ap_idle & Block_Rbf_kernel_fun_U0_ap_idle);

assign ap_ready = Loop_1_proc_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_channel_write_temp2_buf = ((ap_channel_done_temp2_buf & Loop_1_proc_U0_temp2_buf_full_n) | ap_sync_reg_channel_write_temp2_buf);

assign ap_sync_channel_write_temp_buf = ((ap_channel_done_temp_buf & Loop_1_proc_U0_temp_buf_full_n) | ap_sync_reg_channel_write_temp_buf);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Block_Rbf_kernel_fun_U0_ap_done;

assign ap_sync_ready = Loop_1_proc_U0_ap_ready;

assign in_stream1_TREADY = Loop_1_proc_U0_in_stream1_TREADY;

assign in_stream2_TREADY = Loop_1_proc_U0_in_stream2_TREADY;

assign out_stream_TDATA = Block_Rbf_kernel_fun_U0_out_stream_TDATA;

assign out_stream_TDEST = Block_Rbf_kernel_fun_U0_out_stream_TDEST;

assign out_stream_TID = Block_Rbf_kernel_fun_U0_out_stream_TID;

assign out_stream_TKEEP = Block_Rbf_kernel_fun_U0_out_stream_TKEEP;

assign out_stream_TLAST = Block_Rbf_kernel_fun_U0_out_stream_TLAST;

assign out_stream_TSTRB = Block_Rbf_kernel_fun_U0_out_stream_TSTRB;

assign out_stream_TUSER = Block_Rbf_kernel_fun_U0_out_stream_TUSER;

assign out_stream_TVALID = Block_Rbf_kernel_fun_U0_out_stream_TVALID;

endmodule //rbf_kernel