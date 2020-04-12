-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Aug  1 03:45:26 2019
-- Host        : Lazarus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/Hardware_Implementation/predict_function_hardware_hls/solution1/impl/verilog/project.srcs/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    s_axi_CONTROL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CONTROL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CONTROL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CONTROL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CONTROL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CONTROL_BUS_WVALID : in STD_LOGIC;
    s_axi_CONTROL_BUS_WREADY : out STD_LOGIC;
    s_axi_CONTROL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CONTROL_BUS_BVALID : out STD_LOGIC;
    s_axi_CONTROL_BUS_BREADY : in STD_LOGIC;
    s_axi_CONTROL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CONTROL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CONTROL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CONTROL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CONTROL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CONTROL_BUS_RVALID : out STD_LOGIC;
    s_axi_CONTROL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    in_stream_TREADY : out STD_LOGIC;
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_stream_TDEST : in STD_LOGIC_VECTOR ( 4 downto 0 );
    in_stream_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_stream_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_stream_TUSER : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_stream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    supp_vec_stream_TVALID : in STD_LOGIC;
    supp_vec_stream_TREADY : out STD_LOGIC;
    supp_vec_stream_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    supp_vec_stream_TDEST : in STD_LOGIC_VECTOR ( 4 downto 0 );
    supp_vec_stream_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    supp_vec_stream_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    supp_vec_stream_TUSER : in STD_LOGIC_VECTOR ( 3 downto 0 );
    supp_vec_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    supp_vec_stream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dual_coef_stream_TVALID : in STD_LOGIC;
    dual_coef_stream_TREADY : out STD_LOGIC;
    dual_coef_stream_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dual_coef_stream_TDEST : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dual_coef_stream_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dual_coef_stream_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dual_coef_stream_TUSER : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dual_coef_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    dual_coef_stream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    out_stream_TVALID : out STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_stream_TDEST : out STD_LOGIC_VECTOR ( 4 downto 0 );
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    out_stream_TUSER : out STD_LOGIC_VECTOR ( 3 downto 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TID : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CONTROL_BUS_AWADDR[5:0],s_axi_CONTROL_BUS_AWVALID,s_axi_CONTROL_BUS_AWREADY,s_axi_CONTROL_BUS_WDATA[31:0],s_axi_CONTROL_BUS_WSTRB[3:0],s_axi_CONTROL_BUS_WVALID,s_axi_CONTROL_BUS_WREADY,s_axi_CONTROL_BUS_BRESP[1:0],s_axi_CONTROL_BUS_BVALID,s_axi_CONTROL_BUS_BREADY,s_axi_CONTROL_BUS_ARADDR[5:0],s_axi_CONTROL_BUS_ARVALID,s_axi_CONTROL_BUS_ARREADY,s_axi_CONTROL_BUS_RDATA[31:0],s_axi_CONTROL_BUS_RRESP[1:0],s_axi_CONTROL_BUS_RVALID,s_axi_CONTROL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,in_stream_TVALID,in_stream_TREADY,in_stream_TDATA[31:0],in_stream_TDEST[4:0],in_stream_TKEEP[3:0],in_stream_TSTRB[3:0],in_stream_TUSER[3:0],in_stream_TLAST[0:0],in_stream_TID[4:0],supp_vec_stream_TVALID,supp_vec_stream_TREADY,supp_vec_stream_TDATA[31:0],supp_vec_stream_TDEST[4:0],supp_vec_stream_TKEEP[3:0],supp_vec_stream_TSTRB[3:0],supp_vec_stream_TUSER[3:0],supp_vec_stream_TLAST[0:0],supp_vec_stream_TID[4:0],dual_coef_stream_TVALID,dual_coef_stream_TREADY,dual_coef_stream_TDATA[31:0],dual_coef_stream_TDEST[4:0],dual_coef_stream_TKEEP[3:0],dual_coef_stream_TSTRB[3:0],dual_coef_stream_TUSER[3:0],dual_coef_stream_TLAST[0:0],dual_coef_stream_TID[4:0],out_stream_TVALID,out_stream_TREADY,out_stream_TDATA[31:0],out_stream_TDEST[4:0],out_stream_TKEEP[3:0],out_stream_TSTRB[3:0],out_stream_TUSER[3:0],out_stream_TLAST[0:0],out_stream_TID[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "predict_function,Vivado 2019.1";
begin
end;
