// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Aug  1 03:44:41 2019
// Host        : Lazarus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "predict_function,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_CONTROL_BUS_AWADDR, 
  s_axi_CONTROL_BUS_AWVALID, s_axi_CONTROL_BUS_AWREADY, s_axi_CONTROL_BUS_WDATA, 
  s_axi_CONTROL_BUS_WSTRB, s_axi_CONTROL_BUS_WVALID, s_axi_CONTROL_BUS_WREADY, 
  s_axi_CONTROL_BUS_BRESP, s_axi_CONTROL_BUS_BVALID, s_axi_CONTROL_BUS_BREADY, 
  s_axi_CONTROL_BUS_ARADDR, s_axi_CONTROL_BUS_ARVALID, s_axi_CONTROL_BUS_ARREADY, 
  s_axi_CONTROL_BUS_RDATA, s_axi_CONTROL_BUS_RRESP, s_axi_CONTROL_BUS_RVALID, 
  s_axi_CONTROL_BUS_RREADY, ap_clk, ap_rst_n, interrupt, in_stream_TVALID, in_stream_TREADY, 
  in_stream_TDATA, in_stream_TDEST, in_stream_TKEEP, in_stream_TSTRB, in_stream_TUSER, 
  in_stream_TLAST, in_stream_TID, supp_vec_stream_TVALID, supp_vec_stream_TREADY, 
  supp_vec_stream_TDATA, supp_vec_stream_TDEST, supp_vec_stream_TKEEP, 
  supp_vec_stream_TSTRB, supp_vec_stream_TUSER, supp_vec_stream_TLAST, 
  supp_vec_stream_TID, dual_coef_stream_TVALID, dual_coef_stream_TREADY, 
  dual_coef_stream_TDATA, dual_coef_stream_TDEST, dual_coef_stream_TKEEP, 
  dual_coef_stream_TSTRB, dual_coef_stream_TUSER, dual_coef_stream_TLAST, 
  dual_coef_stream_TID, out_stream_TVALID, out_stream_TREADY, out_stream_TDATA, 
  out_stream_TDEST, out_stream_TKEEP, out_stream_TSTRB, out_stream_TUSER, out_stream_TLAST, 
  out_stream_TID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CONTROL_BUS_AWADDR[5:0],s_axi_CONTROL_BUS_AWVALID,s_axi_CONTROL_BUS_AWREADY,s_axi_CONTROL_BUS_WDATA[31:0],s_axi_CONTROL_BUS_WSTRB[3:0],s_axi_CONTROL_BUS_WVALID,s_axi_CONTROL_BUS_WREADY,s_axi_CONTROL_BUS_BRESP[1:0],s_axi_CONTROL_BUS_BVALID,s_axi_CONTROL_BUS_BREADY,s_axi_CONTROL_BUS_ARADDR[5:0],s_axi_CONTROL_BUS_ARVALID,s_axi_CONTROL_BUS_ARREADY,s_axi_CONTROL_BUS_RDATA[31:0],s_axi_CONTROL_BUS_RRESP[1:0],s_axi_CONTROL_BUS_RVALID,s_axi_CONTROL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,in_stream_TVALID,in_stream_TREADY,in_stream_TDATA[31:0],in_stream_TDEST[4:0],in_stream_TKEEP[3:0],in_stream_TSTRB[3:0],in_stream_TUSER[3:0],in_stream_TLAST[0:0],in_stream_TID[4:0],supp_vec_stream_TVALID,supp_vec_stream_TREADY,supp_vec_stream_TDATA[31:0],supp_vec_stream_TDEST[4:0],supp_vec_stream_TKEEP[3:0],supp_vec_stream_TSTRB[3:0],supp_vec_stream_TUSER[3:0],supp_vec_stream_TLAST[0:0],supp_vec_stream_TID[4:0],dual_coef_stream_TVALID,dual_coef_stream_TREADY,dual_coef_stream_TDATA[31:0],dual_coef_stream_TDEST[4:0],dual_coef_stream_TKEEP[3:0],dual_coef_stream_TSTRB[3:0],dual_coef_stream_TUSER[3:0],dual_coef_stream_TLAST[0:0],dual_coef_stream_TID[4:0],out_stream_TVALID,out_stream_TREADY,out_stream_TDATA[31:0],out_stream_TDEST[4:0],out_stream_TKEEP[3:0],out_stream_TSTRB[3:0],out_stream_TUSER[3:0],out_stream_TLAST[0:0],out_stream_TID[4:0]" */;
  input [5:0]s_axi_CONTROL_BUS_AWADDR;
  input s_axi_CONTROL_BUS_AWVALID;
  output s_axi_CONTROL_BUS_AWREADY;
  input [31:0]s_axi_CONTROL_BUS_WDATA;
  input [3:0]s_axi_CONTROL_BUS_WSTRB;
  input s_axi_CONTROL_BUS_WVALID;
  output s_axi_CONTROL_BUS_WREADY;
  output [1:0]s_axi_CONTROL_BUS_BRESP;
  output s_axi_CONTROL_BUS_BVALID;
  input s_axi_CONTROL_BUS_BREADY;
  input [5:0]s_axi_CONTROL_BUS_ARADDR;
  input s_axi_CONTROL_BUS_ARVALID;
  output s_axi_CONTROL_BUS_ARREADY;
  output [31:0]s_axi_CONTROL_BUS_RDATA;
  output [1:0]s_axi_CONTROL_BUS_RRESP;
  output s_axi_CONTROL_BUS_RVALID;
  input s_axi_CONTROL_BUS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input in_stream_TVALID;
  output in_stream_TREADY;
  input [31:0]in_stream_TDATA;
  input [4:0]in_stream_TDEST;
  input [3:0]in_stream_TKEEP;
  input [3:0]in_stream_TSTRB;
  input [3:0]in_stream_TUSER;
  input [0:0]in_stream_TLAST;
  input [4:0]in_stream_TID;
  input supp_vec_stream_TVALID;
  output supp_vec_stream_TREADY;
  input [31:0]supp_vec_stream_TDATA;
  input [4:0]supp_vec_stream_TDEST;
  input [3:0]supp_vec_stream_TKEEP;
  input [3:0]supp_vec_stream_TSTRB;
  input [3:0]supp_vec_stream_TUSER;
  input [0:0]supp_vec_stream_TLAST;
  input [4:0]supp_vec_stream_TID;
  input dual_coef_stream_TVALID;
  output dual_coef_stream_TREADY;
  input [31:0]dual_coef_stream_TDATA;
  input [4:0]dual_coef_stream_TDEST;
  input [3:0]dual_coef_stream_TKEEP;
  input [3:0]dual_coef_stream_TSTRB;
  input [3:0]dual_coef_stream_TUSER;
  input [0:0]dual_coef_stream_TLAST;
  input [4:0]dual_coef_stream_TID;
  output out_stream_TVALID;
  input out_stream_TREADY;
  output [31:0]out_stream_TDATA;
  output [4:0]out_stream_TDEST;
  output [3:0]out_stream_TKEEP;
  output [3:0]out_stream_TSTRB;
  output [3:0]out_stream_TUSER;
  output [0:0]out_stream_TLAST;
  output [4:0]out_stream_TID;
endmodule
