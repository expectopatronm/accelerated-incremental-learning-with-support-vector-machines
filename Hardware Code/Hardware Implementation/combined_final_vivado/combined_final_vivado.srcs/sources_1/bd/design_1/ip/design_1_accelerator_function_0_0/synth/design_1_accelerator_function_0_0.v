// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:accelerator_function:1.0
// IP Revision: 1907091910

(* X_CORE_INFO = "accelerator_function,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "design_1_accelerator_function_0_0,accelerator_function,{}" *)
(* CORE_GENERATION_INFO = "design_1_accelerator_function_0_0,accelerator_function,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=accelerator_function,x_ipVersion=1.0,x_ipCoreRevision=1907091910,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_BUS_ADDR_WIDTH=7,C_S_AXI_CONTROL_BUS_DATA_WIDTH=32}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_accelerator_function_0_0 (
  s_axi_CONTROL_BUS_AWADDR,
  s_axi_CONTROL_BUS_AWVALID,
  s_axi_CONTROL_BUS_AWREADY,
  s_axi_CONTROL_BUS_WDATA,
  s_axi_CONTROL_BUS_WSTRB,
  s_axi_CONTROL_BUS_WVALID,
  s_axi_CONTROL_BUS_WREADY,
  s_axi_CONTROL_BUS_BRESP,
  s_axi_CONTROL_BUS_BVALID,
  s_axi_CONTROL_BUS_BREADY,
  s_axi_CONTROL_BUS_ARADDR,
  s_axi_CONTROL_BUS_ARVALID,
  s_axi_CONTROL_BUS_ARREADY,
  s_axi_CONTROL_BUS_RDATA,
  s_axi_CONTROL_BUS_RRESP,
  s_axi_CONTROL_BUS_RVALID,
  s_axi_CONTROL_BUS_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  kernel_in_stream_TVALID,
  kernel_in_stream_TREADY,
  kernel_in_stream_TDATA,
  kernel_in_stream_TKEEP,
  kernel_in_stream_TSTRB,
  kernel_in_stream_TUSER,
  kernel_in_stream_TLAST,
  kernel_in_stream_TID,
  kernel_in_stream_TDEST,
  kernel_index_stream_TVALID,
  kernel_index_stream_TREADY,
  kernel_index_stream_TDATA,
  kernel_index_stream_TKEEP,
  kernel_index_stream_TSTRB,
  kernel_index_stream_TUSER,
  kernel_index_stream_TLAST,
  kernel_index_stream_TID,
  kernel_index_stream_TDEST,
  kernel_out_stream_TVALID,
  kernel_out_stream_TREADY,
  kernel_out_stream_TDATA,
  kernel_out_stream_TKEEP,
  kernel_out_stream_TSTRB,
  kernel_out_stream_TUSER,
  kernel_out_stream_TLAST,
  kernel_out_stream_TID,
  kernel_out_stream_TDEST,
  in_stream_predict_TVALID,
  in_stream_predict_TREADY,
  in_stream_predict_TDATA,
  in_stream_predict_TKEEP,
  in_stream_predict_TSTRB,
  in_stream_predict_TUSER,
  in_stream_predict_TLAST,
  in_stream_predict_TID,
  in_stream_predict_TDEST,
  supp_vec_stream_TVALID,
  supp_vec_stream_TREADY,
  supp_vec_stream_TDATA,
  supp_vec_stream_TKEEP,
  supp_vec_stream_TSTRB,
  supp_vec_stream_TUSER,
  supp_vec_stream_TLAST,
  supp_vec_stream_TID,
  supp_vec_stream_TDEST,
  dual_coef_stream_TVALID,
  dual_coef_stream_TREADY,
  dual_coef_stream_TDATA,
  dual_coef_stream_TKEEP,
  dual_coef_stream_TSTRB,
  dual_coef_stream_TUSER,
  dual_coef_stream_TLAST,
  dual_coef_stream_TID,
  dual_coef_stream_TDEST,
  out_stream_predict_TVALID,
  out_stream_predict_TREADY,
  out_stream_predict_TDATA,
  out_stream_predict_TKEEP,
  out_stream_predict_TSTRB,
  out_stream_predict_TUSER,
  out_stream_predict_TLAST,
  out_stream_predict_TID,
  out_stream_predict_TDEST
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS AWADDR" *)
input wire [6 : 0] s_axi_CONTROL_BUS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS AWVALID" *)
input wire s_axi_CONTROL_BUS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS AWREADY" *)
output wire s_axi_CONTROL_BUS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WDATA" *)
input wire [31 : 0] s_axi_CONTROL_BUS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WSTRB" *)
input wire [3 : 0] s_axi_CONTROL_BUS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WVALID" *)
input wire s_axi_CONTROL_BUS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WREADY" *)
output wire s_axi_CONTROL_BUS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS BRESP" *)
output wire [1 : 0] s_axi_CONTROL_BUS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS BVALID" *)
output wire s_axi_CONTROL_BUS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS BREADY" *)
input wire s_axi_CONTROL_BUS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS ARADDR" *)
input wire [6 : 0] s_axi_CONTROL_BUS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS ARVALID" *)
input wire s_axi_CONTROL_BUS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS ARREADY" *)
output wire s_axi_CONTROL_BUS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RDATA" *)
output wire [31 : 0] s_axi_CONTROL_BUS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RRESP" *)
output wire [1 : 0] s_axi_CONTROL_BUS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RVALID" *)
output wire s_axi_CONTROL_BUS_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CONTROL_BUS, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 1e+08, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ\
_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RREADY" *)
input wire s_axi_CONTROL_BUS_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CONTROL_BUS:kernel_in_stream:kernel_index_stream:kernel_out_stream:in_stream_predict:supp_vec_stream:dual_coef_stream:out_stream_predict, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_in_stream TVALID" *)
input wire kernel_in_stream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_in_stream TREADY" *)
output wire kernel_in_stream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_in_stream TDATA" *)
input wire [31 : 0] kernel_in_stream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_in_stream TKEEP" *)
input wire [3 : 0] kernel_in_stream_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_in_stream TSTRB" *)
input wire [3 : 0] kernel_in_stream_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_in_stream TUSER" *)
input wire [3 : 0] kernel_in_stream_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_in_stream TLAST" *)
input wire [0 : 0] kernel_in_stream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_in_stream TID" *)
input wire [4 : 0] kernel_in_stream_TID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_in_stream, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_in_stream TDEST" *)
input wire [4 : 0] kernel_in_stream_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_index_stream TVALID" *)
input wire kernel_index_stream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_index_stream TREADY" *)
output wire kernel_index_stream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_index_stream TDATA" *)
input wire [31 : 0] kernel_index_stream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_index_stream TKEEP" *)
input wire [3 : 0] kernel_index_stream_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_index_stream TSTRB" *)
input wire [3 : 0] kernel_index_stream_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_index_stream TUSER" *)
input wire [3 : 0] kernel_index_stream_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_index_stream TLAST" *)
input wire [0 : 0] kernel_index_stream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_index_stream TID" *)
input wire [4 : 0] kernel_index_stream_TID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_index_stream, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_index_stream TDEST" *)
input wire [4 : 0] kernel_index_stream_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_out_stream TVALID" *)
output wire kernel_out_stream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_out_stream TREADY" *)
input wire kernel_out_stream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_out_stream TDATA" *)
output wire [31 : 0] kernel_out_stream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_out_stream TKEEP" *)
output wire [3 : 0] kernel_out_stream_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_out_stream TSTRB" *)
output wire [3 : 0] kernel_out_stream_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_out_stream TUSER" *)
output wire [3 : 0] kernel_out_stream_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_out_stream TLAST" *)
output wire [0 : 0] kernel_out_stream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_out_stream TID" *)
output wire [4 : 0] kernel_out_stream_TID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_out_stream, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 kernel_out_stream TDEST" *)
output wire [4 : 0] kernel_out_stream_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_predict TVALID" *)
input wire in_stream_predict_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_predict TREADY" *)
output wire in_stream_predict_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_predict TDATA" *)
input wire [31 : 0] in_stream_predict_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_predict TKEEP" *)
input wire [3 : 0] in_stream_predict_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_predict TSTRB" *)
input wire [3 : 0] in_stream_predict_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_predict TUSER" *)
input wire [3 : 0] in_stream_predict_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_predict TLAST" *)
input wire [0 : 0] in_stream_predict_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_predict TID" *)
input wire [4 : 0] in_stream_predict_TID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_stream_predict, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_predict TDEST" *)
input wire [4 : 0] in_stream_predict_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 supp_vec_stream TVALID" *)
input wire supp_vec_stream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 supp_vec_stream TREADY" *)
output wire supp_vec_stream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 supp_vec_stream TDATA" *)
input wire [31 : 0] supp_vec_stream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 supp_vec_stream TKEEP" *)
input wire [3 : 0] supp_vec_stream_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 supp_vec_stream TSTRB" *)
input wire [3 : 0] supp_vec_stream_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 supp_vec_stream TUSER" *)
input wire [3 : 0] supp_vec_stream_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 supp_vec_stream TLAST" *)
input wire [0 : 0] supp_vec_stream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 supp_vec_stream TID" *)
input wire [4 : 0] supp_vec_stream_TID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME supp_vec_stream, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 supp_vec_stream TDEST" *)
input wire [4 : 0] supp_vec_stream_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dual_coef_stream TVALID" *)
input wire dual_coef_stream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dual_coef_stream TREADY" *)
output wire dual_coef_stream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dual_coef_stream TDATA" *)
input wire [31 : 0] dual_coef_stream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dual_coef_stream TKEEP" *)
input wire [3 : 0] dual_coef_stream_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dual_coef_stream TSTRB" *)
input wire [3 : 0] dual_coef_stream_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dual_coef_stream TUSER" *)
input wire [3 : 0] dual_coef_stream_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dual_coef_stream TLAST" *)
input wire [0 : 0] dual_coef_stream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dual_coef_stream TID" *)
input wire [4 : 0] dual_coef_stream_TID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dual_coef_stream, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dual_coef_stream TDEST" *)
input wire [4 : 0] dual_coef_stream_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_predict TVALID" *)
output wire out_stream_predict_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_predict TREADY" *)
input wire out_stream_predict_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_predict TDATA" *)
output wire [31 : 0] out_stream_predict_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_predict TKEEP" *)
output wire [3 : 0] out_stream_predict_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_predict TSTRB" *)
output wire [3 : 0] out_stream_predict_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_predict TUSER" *)
output wire [3 : 0] out_stream_predict_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_predict TLAST" *)
output wire [0 : 0] out_stream_predict_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_predict TID" *)
output wire [4 : 0] out_stream_predict_TID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_stream_predict, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_predict TDEST" *)
output wire [4 : 0] out_stream_predict_TDEST;

  accelerator_function #(
    .C_S_AXI_CONTROL_BUS_ADDR_WIDTH(7),
    .C_S_AXI_CONTROL_BUS_DATA_WIDTH(32)
  ) inst (
    .s_axi_CONTROL_BUS_AWADDR(s_axi_CONTROL_BUS_AWADDR),
    .s_axi_CONTROL_BUS_AWVALID(s_axi_CONTROL_BUS_AWVALID),
    .s_axi_CONTROL_BUS_AWREADY(s_axi_CONTROL_BUS_AWREADY),
    .s_axi_CONTROL_BUS_WDATA(s_axi_CONTROL_BUS_WDATA),
    .s_axi_CONTROL_BUS_WSTRB(s_axi_CONTROL_BUS_WSTRB),
    .s_axi_CONTROL_BUS_WVALID(s_axi_CONTROL_BUS_WVALID),
    .s_axi_CONTROL_BUS_WREADY(s_axi_CONTROL_BUS_WREADY),
    .s_axi_CONTROL_BUS_BRESP(s_axi_CONTROL_BUS_BRESP),
    .s_axi_CONTROL_BUS_BVALID(s_axi_CONTROL_BUS_BVALID),
    .s_axi_CONTROL_BUS_BREADY(s_axi_CONTROL_BUS_BREADY),
    .s_axi_CONTROL_BUS_ARADDR(s_axi_CONTROL_BUS_ARADDR),
    .s_axi_CONTROL_BUS_ARVALID(s_axi_CONTROL_BUS_ARVALID),
    .s_axi_CONTROL_BUS_ARREADY(s_axi_CONTROL_BUS_ARREADY),
    .s_axi_CONTROL_BUS_RDATA(s_axi_CONTROL_BUS_RDATA),
    .s_axi_CONTROL_BUS_RRESP(s_axi_CONTROL_BUS_RRESP),
    .s_axi_CONTROL_BUS_RVALID(s_axi_CONTROL_BUS_RVALID),
    .s_axi_CONTROL_BUS_RREADY(s_axi_CONTROL_BUS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .kernel_in_stream_TVALID(kernel_in_stream_TVALID),
    .kernel_in_stream_TREADY(kernel_in_stream_TREADY),
    .kernel_in_stream_TDATA(kernel_in_stream_TDATA),
    .kernel_in_stream_TKEEP(kernel_in_stream_TKEEP),
    .kernel_in_stream_TSTRB(kernel_in_stream_TSTRB),
    .kernel_in_stream_TUSER(kernel_in_stream_TUSER),
    .kernel_in_stream_TLAST(kernel_in_stream_TLAST),
    .kernel_in_stream_TID(kernel_in_stream_TID),
    .kernel_in_stream_TDEST(kernel_in_stream_TDEST),
    .kernel_index_stream_TVALID(kernel_index_stream_TVALID),
    .kernel_index_stream_TREADY(kernel_index_stream_TREADY),
    .kernel_index_stream_TDATA(kernel_index_stream_TDATA),
    .kernel_index_stream_TKEEP(kernel_index_stream_TKEEP),
    .kernel_index_stream_TSTRB(kernel_index_stream_TSTRB),
    .kernel_index_stream_TUSER(kernel_index_stream_TUSER),
    .kernel_index_stream_TLAST(kernel_index_stream_TLAST),
    .kernel_index_stream_TID(kernel_index_stream_TID),
    .kernel_index_stream_TDEST(kernel_index_stream_TDEST),
    .kernel_out_stream_TVALID(kernel_out_stream_TVALID),
    .kernel_out_stream_TREADY(kernel_out_stream_TREADY),
    .kernel_out_stream_TDATA(kernel_out_stream_TDATA),
    .kernel_out_stream_TKEEP(kernel_out_stream_TKEEP),
    .kernel_out_stream_TSTRB(kernel_out_stream_TSTRB),
    .kernel_out_stream_TUSER(kernel_out_stream_TUSER),
    .kernel_out_stream_TLAST(kernel_out_stream_TLAST),
    .kernel_out_stream_TID(kernel_out_stream_TID),
    .kernel_out_stream_TDEST(kernel_out_stream_TDEST),
    .in_stream_predict_TVALID(in_stream_predict_TVALID),
    .in_stream_predict_TREADY(in_stream_predict_TREADY),
    .in_stream_predict_TDATA(in_stream_predict_TDATA),
    .in_stream_predict_TKEEP(in_stream_predict_TKEEP),
    .in_stream_predict_TSTRB(in_stream_predict_TSTRB),
    .in_stream_predict_TUSER(in_stream_predict_TUSER),
    .in_stream_predict_TLAST(in_stream_predict_TLAST),
    .in_stream_predict_TID(in_stream_predict_TID),
    .in_stream_predict_TDEST(in_stream_predict_TDEST),
    .supp_vec_stream_TVALID(supp_vec_stream_TVALID),
    .supp_vec_stream_TREADY(supp_vec_stream_TREADY),
    .supp_vec_stream_TDATA(supp_vec_stream_TDATA),
    .supp_vec_stream_TKEEP(supp_vec_stream_TKEEP),
    .supp_vec_stream_TSTRB(supp_vec_stream_TSTRB),
    .supp_vec_stream_TUSER(supp_vec_stream_TUSER),
    .supp_vec_stream_TLAST(supp_vec_stream_TLAST),
    .supp_vec_stream_TID(supp_vec_stream_TID),
    .supp_vec_stream_TDEST(supp_vec_stream_TDEST),
    .dual_coef_stream_TVALID(dual_coef_stream_TVALID),
    .dual_coef_stream_TREADY(dual_coef_stream_TREADY),
    .dual_coef_stream_TDATA(dual_coef_stream_TDATA),
    .dual_coef_stream_TKEEP(dual_coef_stream_TKEEP),
    .dual_coef_stream_TSTRB(dual_coef_stream_TSTRB),
    .dual_coef_stream_TUSER(dual_coef_stream_TUSER),
    .dual_coef_stream_TLAST(dual_coef_stream_TLAST),
    .dual_coef_stream_TID(dual_coef_stream_TID),
    .dual_coef_stream_TDEST(dual_coef_stream_TDEST),
    .out_stream_predict_TVALID(out_stream_predict_TVALID),
    .out_stream_predict_TREADY(out_stream_predict_TREADY),
    .out_stream_predict_TDATA(out_stream_predict_TDATA),
    .out_stream_predict_TKEEP(out_stream_predict_TKEEP),
    .out_stream_predict_TSTRB(out_stream_predict_TSTRB),
    .out_stream_predict_TUSER(out_stream_predict_TUSER),
    .out_stream_predict_TLAST(out_stream_predict_TLAST),
    .out_stream_predict_TID(out_stream_predict_TID),
    .out_stream_predict_TDEST(out_stream_predict_TDEST)
  );
endmodule
