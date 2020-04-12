//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Aug  1 03:21:44 2019
//Host        : Lazarus running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_rst_n,
    dual_coef_stream_tdata,
    dual_coef_stream_tdest,
    dual_coef_stream_tid,
    dual_coef_stream_tkeep,
    dual_coef_stream_tlast,
    dual_coef_stream_tready,
    dual_coef_stream_tstrb,
    dual_coef_stream_tuser,
    dual_coef_stream_tvalid,
    in_stream_tdata,
    in_stream_tdest,
    in_stream_tid,
    in_stream_tkeep,
    in_stream_tlast,
    in_stream_tready,
    in_stream_tstrb,
    in_stream_tuser,
    in_stream_tvalid,
    interrupt,
    out_stream_tdata,
    out_stream_tdest,
    out_stream_tid,
    out_stream_tkeep,
    out_stream_tlast,
    out_stream_tready,
    out_stream_tstrb,
    out_stream_tuser,
    out_stream_tvalid,
    s_axi_CONTROL_BUS_araddr,
    s_axi_CONTROL_BUS_arready,
    s_axi_CONTROL_BUS_arvalid,
    s_axi_CONTROL_BUS_awaddr,
    s_axi_CONTROL_BUS_awready,
    s_axi_CONTROL_BUS_awvalid,
    s_axi_CONTROL_BUS_bready,
    s_axi_CONTROL_BUS_bresp,
    s_axi_CONTROL_BUS_bvalid,
    s_axi_CONTROL_BUS_rdata,
    s_axi_CONTROL_BUS_rready,
    s_axi_CONTROL_BUS_rresp,
    s_axi_CONTROL_BUS_rvalid,
    s_axi_CONTROL_BUS_wdata,
    s_axi_CONTROL_BUS_wready,
    s_axi_CONTROL_BUS_wstrb,
    s_axi_CONTROL_BUS_wvalid,
    supp_vec_stream_tdata,
    supp_vec_stream_tdest,
    supp_vec_stream_tid,
    supp_vec_stream_tkeep,
    supp_vec_stream_tlast,
    supp_vec_stream_tready,
    supp_vec_stream_tstrb,
    supp_vec_stream_tuser,
    supp_vec_stream_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [31:0]dual_coef_stream_tdata;
  input [4:0]dual_coef_stream_tdest;
  input [4:0]dual_coef_stream_tid;
  input [3:0]dual_coef_stream_tkeep;
  input [0:0]dual_coef_stream_tlast;
  output dual_coef_stream_tready;
  input [3:0]dual_coef_stream_tstrb;
  input [3:0]dual_coef_stream_tuser;
  input dual_coef_stream_tvalid;
  input [31:0]in_stream_tdata;
  input [4:0]in_stream_tdest;
  input [4:0]in_stream_tid;
  input [3:0]in_stream_tkeep;
  input [0:0]in_stream_tlast;
  output in_stream_tready;
  input [3:0]in_stream_tstrb;
  input [3:0]in_stream_tuser;
  input in_stream_tvalid;
  output interrupt;
  output [31:0]out_stream_tdata;
  output [4:0]out_stream_tdest;
  output [4:0]out_stream_tid;
  output [3:0]out_stream_tkeep;
  output [0:0]out_stream_tlast;
  input out_stream_tready;
  output [3:0]out_stream_tstrb;
  output [3:0]out_stream_tuser;
  output out_stream_tvalid;
  input [5:0]s_axi_CONTROL_BUS_araddr;
  output s_axi_CONTROL_BUS_arready;
  input s_axi_CONTROL_BUS_arvalid;
  input [5:0]s_axi_CONTROL_BUS_awaddr;
  output s_axi_CONTROL_BUS_awready;
  input s_axi_CONTROL_BUS_awvalid;
  input s_axi_CONTROL_BUS_bready;
  output [1:0]s_axi_CONTROL_BUS_bresp;
  output s_axi_CONTROL_BUS_bvalid;
  output [31:0]s_axi_CONTROL_BUS_rdata;
  input s_axi_CONTROL_BUS_rready;
  output [1:0]s_axi_CONTROL_BUS_rresp;
  output s_axi_CONTROL_BUS_rvalid;
  input [31:0]s_axi_CONTROL_BUS_wdata;
  output s_axi_CONTROL_BUS_wready;
  input [3:0]s_axi_CONTROL_BUS_wstrb;
  input s_axi_CONTROL_BUS_wvalid;
  input [31:0]supp_vec_stream_tdata;
  input [4:0]supp_vec_stream_tdest;
  input [4:0]supp_vec_stream_tid;
  input [3:0]supp_vec_stream_tkeep;
  input [0:0]supp_vec_stream_tlast;
  output supp_vec_stream_tready;
  input [3:0]supp_vec_stream_tstrb;
  input [3:0]supp_vec_stream_tuser;
  input supp_vec_stream_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [31:0]dual_coef_stream_tdata;
  wire [4:0]dual_coef_stream_tdest;
  wire [4:0]dual_coef_stream_tid;
  wire [3:0]dual_coef_stream_tkeep;
  wire [0:0]dual_coef_stream_tlast;
  wire dual_coef_stream_tready;
  wire [3:0]dual_coef_stream_tstrb;
  wire [3:0]dual_coef_stream_tuser;
  wire dual_coef_stream_tvalid;
  wire [31:0]in_stream_tdata;
  wire [4:0]in_stream_tdest;
  wire [4:0]in_stream_tid;
  wire [3:0]in_stream_tkeep;
  wire [0:0]in_stream_tlast;
  wire in_stream_tready;
  wire [3:0]in_stream_tstrb;
  wire [3:0]in_stream_tuser;
  wire in_stream_tvalid;
  wire interrupt;
  wire [31:0]out_stream_tdata;
  wire [4:0]out_stream_tdest;
  wire [4:0]out_stream_tid;
  wire [3:0]out_stream_tkeep;
  wire [0:0]out_stream_tlast;
  wire out_stream_tready;
  wire [3:0]out_stream_tstrb;
  wire [3:0]out_stream_tuser;
  wire out_stream_tvalid;
  wire [5:0]s_axi_CONTROL_BUS_araddr;
  wire s_axi_CONTROL_BUS_arready;
  wire s_axi_CONTROL_BUS_arvalid;
  wire [5:0]s_axi_CONTROL_BUS_awaddr;
  wire s_axi_CONTROL_BUS_awready;
  wire s_axi_CONTROL_BUS_awvalid;
  wire s_axi_CONTROL_BUS_bready;
  wire [1:0]s_axi_CONTROL_BUS_bresp;
  wire s_axi_CONTROL_BUS_bvalid;
  wire [31:0]s_axi_CONTROL_BUS_rdata;
  wire s_axi_CONTROL_BUS_rready;
  wire [1:0]s_axi_CONTROL_BUS_rresp;
  wire s_axi_CONTROL_BUS_rvalid;
  wire [31:0]s_axi_CONTROL_BUS_wdata;
  wire s_axi_CONTROL_BUS_wready;
  wire [3:0]s_axi_CONTROL_BUS_wstrb;
  wire s_axi_CONTROL_BUS_wvalid;
  wire [31:0]supp_vec_stream_tdata;
  wire [4:0]supp_vec_stream_tdest;
  wire [4:0]supp_vec_stream_tid;
  wire [3:0]supp_vec_stream_tkeep;
  wire [0:0]supp_vec_stream_tlast;
  wire supp_vec_stream_tready;
  wire [3:0]supp_vec_stream_tstrb;
  wire [3:0]supp_vec_stream_tuser;
  wire supp_vec_stream_tvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dual_coef_stream_tdata(dual_coef_stream_tdata),
        .dual_coef_stream_tdest(dual_coef_stream_tdest),
        .dual_coef_stream_tid(dual_coef_stream_tid),
        .dual_coef_stream_tkeep(dual_coef_stream_tkeep),
        .dual_coef_stream_tlast(dual_coef_stream_tlast),
        .dual_coef_stream_tready(dual_coef_stream_tready),
        .dual_coef_stream_tstrb(dual_coef_stream_tstrb),
        .dual_coef_stream_tuser(dual_coef_stream_tuser),
        .dual_coef_stream_tvalid(dual_coef_stream_tvalid),
        .in_stream_tdata(in_stream_tdata),
        .in_stream_tdest(in_stream_tdest),
        .in_stream_tid(in_stream_tid),
        .in_stream_tkeep(in_stream_tkeep),
        .in_stream_tlast(in_stream_tlast),
        .in_stream_tready(in_stream_tready),
        .in_stream_tstrb(in_stream_tstrb),
        .in_stream_tuser(in_stream_tuser),
        .in_stream_tvalid(in_stream_tvalid),
        .interrupt(interrupt),
        .out_stream_tdata(out_stream_tdata),
        .out_stream_tdest(out_stream_tdest),
        .out_stream_tid(out_stream_tid),
        .out_stream_tkeep(out_stream_tkeep),
        .out_stream_tlast(out_stream_tlast),
        .out_stream_tready(out_stream_tready),
        .out_stream_tstrb(out_stream_tstrb),
        .out_stream_tuser(out_stream_tuser),
        .out_stream_tvalid(out_stream_tvalid),
        .s_axi_CONTROL_BUS_araddr(s_axi_CONTROL_BUS_araddr),
        .s_axi_CONTROL_BUS_arready(s_axi_CONTROL_BUS_arready),
        .s_axi_CONTROL_BUS_arvalid(s_axi_CONTROL_BUS_arvalid),
        .s_axi_CONTROL_BUS_awaddr(s_axi_CONTROL_BUS_awaddr),
        .s_axi_CONTROL_BUS_awready(s_axi_CONTROL_BUS_awready),
        .s_axi_CONTROL_BUS_awvalid(s_axi_CONTROL_BUS_awvalid),
        .s_axi_CONTROL_BUS_bready(s_axi_CONTROL_BUS_bready),
        .s_axi_CONTROL_BUS_bresp(s_axi_CONTROL_BUS_bresp),
        .s_axi_CONTROL_BUS_bvalid(s_axi_CONTROL_BUS_bvalid),
        .s_axi_CONTROL_BUS_rdata(s_axi_CONTROL_BUS_rdata),
        .s_axi_CONTROL_BUS_rready(s_axi_CONTROL_BUS_rready),
        .s_axi_CONTROL_BUS_rresp(s_axi_CONTROL_BUS_rresp),
        .s_axi_CONTROL_BUS_rvalid(s_axi_CONTROL_BUS_rvalid),
        .s_axi_CONTROL_BUS_wdata(s_axi_CONTROL_BUS_wdata),
        .s_axi_CONTROL_BUS_wready(s_axi_CONTROL_BUS_wready),
        .s_axi_CONTROL_BUS_wstrb(s_axi_CONTROL_BUS_wstrb),
        .s_axi_CONTROL_BUS_wvalid(s_axi_CONTROL_BUS_wvalid),
        .supp_vec_stream_tdata(supp_vec_stream_tdata),
        .supp_vec_stream_tdest(supp_vec_stream_tdest),
        .supp_vec_stream_tid(supp_vec_stream_tid),
        .supp_vec_stream_tkeep(supp_vec_stream_tkeep),
        .supp_vec_stream_tlast(supp_vec_stream_tlast),
        .supp_vec_stream_tready(supp_vec_stream_tready),
        .supp_vec_stream_tstrb(supp_vec_stream_tstrb),
        .supp_vec_stream_tuser(supp_vec_stream_tuser),
        .supp_vec_stream_tvalid(supp_vec_stream_tvalid));
endmodule
