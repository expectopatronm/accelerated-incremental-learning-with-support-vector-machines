-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kernel_matrix is
generic (
    C_S_AXI_CONTROL_BUS_ADDR_WIDTH : INTEGER := 6;
    C_S_AXI_CONTROL_BUS_DATA_WIDTH : INTEGER := 32 );
port (
    s_axi_CONTROL_BUS_AWVALID : IN STD_LOGIC;
    s_axi_CONTROL_BUS_AWREADY : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_BUS_ADDR_WIDTH-1 downto 0);
    s_axi_CONTROL_BUS_WVALID : IN STD_LOGIC;
    s_axi_CONTROL_BUS_WREADY : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_BUS_DATA_WIDTH-1 downto 0);
    s_axi_CONTROL_BUS_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_BUS_DATA_WIDTH/8-1 downto 0);
    s_axi_CONTROL_BUS_ARVALID : IN STD_LOGIC;
    s_axi_CONTROL_BUS_ARREADY : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_BUS_ADDR_WIDTH-1 downto 0);
    s_axi_CONTROL_BUS_RVALID : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_RREADY : IN STD_LOGIC;
    s_axi_CONTROL_BUS_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CONTROL_BUS_DATA_WIDTH-1 downto 0);
    s_axi_CONTROL_BUS_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_CONTROL_BUS_BVALID : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_BREADY : IN STD_LOGIC;
    s_axi_CONTROL_BUS_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    kernel_in_stream_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    kernel_in_stream_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
    kernel_in_stream_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
    kernel_in_stream_TUSER : IN STD_LOGIC_VECTOR (3 downto 0);
    kernel_in_stream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    kernel_in_stream_TID : IN STD_LOGIC_VECTOR (4 downto 0);
    kernel_in_stream_TDEST : IN STD_LOGIC_VECTOR (4 downto 0);
    kernel_index_stream_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    kernel_index_stream_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
    kernel_index_stream_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
    kernel_index_stream_TUSER : IN STD_LOGIC_VECTOR (3 downto 0);
    kernel_index_stream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    kernel_index_stream_TID : IN STD_LOGIC_VECTOR (4 downto 0);
    kernel_index_stream_TDEST : IN STD_LOGIC_VECTOR (4 downto 0);
    kernel_out_stream_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    kernel_out_stream_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
    kernel_out_stream_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    kernel_out_stream_TUSER : OUT STD_LOGIC_VECTOR (3 downto 0);
    kernel_out_stream_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    kernel_out_stream_TID : OUT STD_LOGIC_VECTOR (4 downto 0);
    kernel_out_stream_TDEST : OUT STD_LOGIC_VECTOR (4 downto 0);
    kernel_index_stream_TVALID : IN STD_LOGIC;
    kernel_index_stream_TREADY : OUT STD_LOGIC;
    kernel_in_stream_TVALID : IN STD_LOGIC;
    kernel_in_stream_TREADY : OUT STD_LOGIC;
    kernel_out_stream_TVALID : OUT STD_LOGIC;
    kernel_out_stream_TREADY : IN STD_LOGIC );
end;


architecture behav of kernel_matrix is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "kernel_matrix,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=9.289300,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=522,HLS_SYN_DSP=23,HLS_SYN_FF=40309,HLS_SYN_LUT=60207,HLS_VERSION=2019_1}";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant C_S_AXI_WSTRB_WIDTH : INTEGER range 63 downto 0 := 4;
    constant C_S_AXI_ADDR_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_start : STD_LOGIC;
    signal ap_ready : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal length_x : STD_LOGIC_VECTOR (31 downto 0);
    signal tile_size : STD_LOGIC_VECTOR (31 downto 0);
    signal remaining_size : STD_LOGIC_VECTOR (31 downto 0);
    signal index_buf_i_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal index_buf_t_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_buf_i_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_buf_t_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_LOOP_1_proc10_U0_ap_start : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_ap_done : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_ap_continue : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_ap_idle : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_ap_ready : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_kernel_index_stream_TREADY : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_index_buf_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal Loop_LOOP_1_proc10_U0_index_buf_ce0 : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_index_buf_we0 : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_index_buf_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_LOOP_1_proc10_U0_length_x_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_LOOP_1_proc10_U0_length_x_out_write : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_tile_size_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_LOOP_1_proc10_U0_tile_size_out_write : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_remaining_size_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_LOOP_1_proc10_U0_remaining_size_out_write : STD_LOGIC;
    signal ap_channel_done_index_buf : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_index_buf_full_n : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_ap_start : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_ap_done : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_ap_continue : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_ap_idle : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_ap_ready : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_tile_size_read : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_remaining_size_read : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_result_buf_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal Loop_LOOP_2_proc9_U0_result_buf_ce0 : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_result_buf_we0 : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_result_buf_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_LOOP_2_proc9_U0_index_buf_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal Loop_LOOP_2_proc9_U0_index_buf_ce0 : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_kernel_in_stream_TREADY : STD_LOGIC;
    signal ap_channel_done_result_buf : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_result_buf_full_n : STD_LOGIC;
    signal Loop_LOOP_6_proc_U0_ap_start : STD_LOGIC;
    signal Loop_LOOP_6_proc_U0_ap_done : STD_LOGIC;
    signal Loop_LOOP_6_proc_U0_ap_continue : STD_LOGIC;
    signal Loop_LOOP_6_proc_U0_ap_idle : STD_LOGIC;
    signal Loop_LOOP_6_proc_U0_ap_ready : STD_LOGIC;
    signal Loop_LOOP_6_proc_U0_length_x_read : STD_LOGIC;
    signal Loop_LOOP_6_proc_U0_result_buf_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal Loop_LOOP_6_proc_U0_result_buf_ce0 : STD_LOGIC;
    signal Loop_LOOP_6_proc_U0_kernel_out_stream_TDATA : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_LOOP_6_proc_U0_kernel_out_stream_TVALID : STD_LOGIC;
    signal Loop_LOOP_6_proc_U0_kernel_out_stream_TKEEP : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_LOOP_6_proc_U0_kernel_out_stream_TSTRB : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_LOOP_6_proc_U0_kernel_out_stream_TUSER : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_LOOP_6_proc_U0_kernel_out_stream_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal Loop_LOOP_6_proc_U0_kernel_out_stream_TID : STD_LOGIC_VECTOR (4 downto 0);
    signal Loop_LOOP_6_proc_U0_kernel_out_stream_TDEST : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_sync_continue : STD_LOGIC;
    signal index_buf_i_full_n : STD_LOGIC;
    signal index_buf_t_empty_n : STD_LOGIC;
    signal result_buf_i_full_n : STD_LOGIC;
    signal result_buf_t_empty_n : STD_LOGIC;
    signal length_x_c_full_n : STD_LOGIC;
    signal length_x_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal length_x_c_empty_n : STD_LOGIC;
    signal tile_size_c_full_n : STD_LOGIC;
    signal tile_size_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal tile_size_c_empty_n : STD_LOGIC;
    signal remaining_size_c_full_n : STD_LOGIC;
    signal remaining_size_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal remaining_size_c_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_Loop_LOOP_1_proc10_U0_ap_ready : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_Loop_LOOP_2_proc9_U0_ap_ready : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal Loop_LOOP_1_proc10_U0_start_full_n : STD_LOGIC;
    signal Loop_LOOP_1_proc10_U0_start_write : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_start_full_n : STD_LOGIC;
    signal Loop_LOOP_2_proc9_U0_start_write : STD_LOGIC;
    signal Loop_LOOP_6_proc_U0_start_full_n : STD_LOGIC;
    signal Loop_LOOP_6_proc_U0_start_write : STD_LOGIC;

    component Loop_LOOP_1_proc10 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        kernel_index_stream_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
        kernel_index_stream_TVALID : IN STD_LOGIC;
        kernel_index_stream_TREADY : OUT STD_LOGIC;
        kernel_index_stream_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
        kernel_index_stream_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
        kernel_index_stream_TUSER : IN STD_LOGIC_VECTOR (3 downto 0);
        kernel_index_stream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        kernel_index_stream_TID : IN STD_LOGIC_VECTOR (4 downto 0);
        kernel_index_stream_TDEST : IN STD_LOGIC_VECTOR (4 downto 0);
        index_buf_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        index_buf_ce0 : OUT STD_LOGIC;
        index_buf_we0 : OUT STD_LOGIC;
        index_buf_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        length_x : IN STD_LOGIC_VECTOR (31 downto 0);
        tile_size : IN STD_LOGIC_VECTOR (31 downto 0);
        remaining_size : IN STD_LOGIC_VECTOR (31 downto 0);
        length_x_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        length_x_out_full_n : IN STD_LOGIC;
        length_x_out_write : OUT STD_LOGIC;
        tile_size_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        tile_size_out_full_n : IN STD_LOGIC;
        tile_size_out_write : OUT STD_LOGIC;
        remaining_size_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        remaining_size_out_full_n : IN STD_LOGIC;
        remaining_size_out_write : OUT STD_LOGIC );
    end component;


    component Loop_LOOP_2_proc9 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        tile_size_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        tile_size_empty_n : IN STD_LOGIC;
        tile_size_read : OUT STD_LOGIC;
        remaining_size_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        remaining_size_empty_n : IN STD_LOGIC;
        remaining_size_read : OUT STD_LOGIC;
        result_buf_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
        result_buf_ce0 : OUT STD_LOGIC;
        result_buf_we0 : OUT STD_LOGIC;
        result_buf_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        index_buf_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        index_buf_ce0 : OUT STD_LOGIC;
        index_buf_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        kernel_in_stream_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
        kernel_in_stream_TVALID : IN STD_LOGIC;
        kernel_in_stream_TREADY : OUT STD_LOGIC;
        kernel_in_stream_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
        kernel_in_stream_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
        kernel_in_stream_TUSER : IN STD_LOGIC_VECTOR (3 downto 0);
        kernel_in_stream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        kernel_in_stream_TID : IN STD_LOGIC_VECTOR (4 downto 0);
        kernel_in_stream_TDEST : IN STD_LOGIC_VECTOR (4 downto 0) );
    end component;


    component Loop_LOOP_6_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        length_x_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        length_x_empty_n : IN STD_LOGIC;
        length_x_read : OUT STD_LOGIC;
        result_buf_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
        result_buf_ce0 : OUT STD_LOGIC;
        result_buf_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        kernel_out_stream_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
        kernel_out_stream_TVALID : OUT STD_LOGIC;
        kernel_out_stream_TREADY : IN STD_LOGIC;
        kernel_out_stream_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
        kernel_out_stream_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
        kernel_out_stream_TUSER : OUT STD_LOGIC_VECTOR (3 downto 0);
        kernel_out_stream_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        kernel_out_stream_TID : OUT STD_LOGIC_VECTOR (4 downto 0);
        kernel_out_stream_TDEST : OUT STD_LOGIC_VECTOR (4 downto 0) );
    end component;


    component kernel_matrix_indibs IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        i_address0 : IN STD_LOGIC_VECTOR (9 downto 0);
        i_ce0 : IN STD_LOGIC;
        i_we0 : IN STD_LOGIC;
        i_d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        i_q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        t_address0 : IN STD_LOGIC_VECTOR (9 downto 0);
        t_ce0 : IN STD_LOGIC;
        t_we0 : IN STD_LOGIC;
        t_d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        t_q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        i_ce : IN STD_LOGIC;
        t_ce : IN STD_LOGIC;
        i_full_n : OUT STD_LOGIC;
        i_write : IN STD_LOGIC;
        t_empty_n : OUT STD_LOGIC;
        t_read : IN STD_LOGIC );
    end component;


    component kernel_matrix_resjbC IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        i_address0 : IN STD_LOGIC_VECTOR (11 downto 0);
        i_ce0 : IN STD_LOGIC;
        i_we0 : IN STD_LOGIC;
        i_d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        i_q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        t_address0 : IN STD_LOGIC_VECTOR (11 downto 0);
        t_ce0 : IN STD_LOGIC;
        t_we0 : IN STD_LOGIC;
        t_d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        t_q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        i_ce : IN STD_LOGIC;
        t_ce : IN STD_LOGIC;
        i_full_n : OUT STD_LOGIC;
        i_write : IN STD_LOGIC;
        t_empty_n : OUT STD_LOGIC;
        t_read : IN STD_LOGIC );
    end component;


    component fifo_w32_d3_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w32_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component kernel_matrix_CONTROL_BUS_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC;
        length_x : OUT STD_LOGIC_VECTOR (31 downto 0);
        tile_size : OUT STD_LOGIC_VECTOR (31 downto 0);
        remaining_size : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    kernel_matrix_CONTROL_BUS_s_axi_U : component kernel_matrix_CONTROL_BUS_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CONTROL_BUS_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CONTROL_BUS_DATA_WIDTH)
    port map (
        AWVALID => s_axi_CONTROL_BUS_AWVALID,
        AWREADY => s_axi_CONTROL_BUS_AWREADY,
        AWADDR => s_axi_CONTROL_BUS_AWADDR,
        WVALID => s_axi_CONTROL_BUS_WVALID,
        WREADY => s_axi_CONTROL_BUS_WREADY,
        WDATA => s_axi_CONTROL_BUS_WDATA,
        WSTRB => s_axi_CONTROL_BUS_WSTRB,
        ARVALID => s_axi_CONTROL_BUS_ARVALID,
        ARREADY => s_axi_CONTROL_BUS_ARREADY,
        ARADDR => s_axi_CONTROL_BUS_ARADDR,
        RVALID => s_axi_CONTROL_BUS_RVALID,
        RREADY => s_axi_CONTROL_BUS_RREADY,
        RDATA => s_axi_CONTROL_BUS_RDATA,
        RRESP => s_axi_CONTROL_BUS_RRESP,
        BVALID => s_axi_CONTROL_BUS_BVALID,
        BREADY => s_axi_CONTROL_BUS_BREADY,
        BRESP => s_axi_CONTROL_BUS_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle,
        length_x => length_x,
        tile_size => tile_size,
        remaining_size => remaining_size);

    index_buf_U : component kernel_matrix_indibs
    generic map (
        DataWidth => 32,
        AddressRange => 784,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        i_address0 => Loop_LOOP_1_proc10_U0_index_buf_address0,
        i_ce0 => Loop_LOOP_1_proc10_U0_index_buf_ce0,
        i_we0 => Loop_LOOP_1_proc10_U0_index_buf_we0,
        i_d0 => Loop_LOOP_1_proc10_U0_index_buf_d0,
        i_q0 => index_buf_i_q0,
        t_address0 => Loop_LOOP_2_proc9_U0_index_buf_address0,
        t_ce0 => Loop_LOOP_2_proc9_U0_index_buf_ce0,
        t_we0 => ap_const_logic_0,
        t_d0 => ap_const_lv32_0,
        t_q0 => index_buf_t_q0,
        i_ce => ap_const_logic_1,
        t_ce => ap_const_logic_1,
        i_full_n => index_buf_i_full_n,
        i_write => Loop_LOOP_1_proc10_U0_ap_done,
        t_empty_n => index_buf_t_empty_n,
        t_read => Loop_LOOP_2_proc9_U0_ap_ready);

    result_buf_U : component kernel_matrix_resjbC
    generic map (
        DataWidth => 32,
        AddressRange => 2500,
        AddressWidth => 12)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        i_address0 => Loop_LOOP_2_proc9_U0_result_buf_address0,
        i_ce0 => Loop_LOOP_2_proc9_U0_result_buf_ce0,
        i_we0 => Loop_LOOP_2_proc9_U0_result_buf_we0,
        i_d0 => Loop_LOOP_2_proc9_U0_result_buf_d0,
        i_q0 => result_buf_i_q0,
        t_address0 => Loop_LOOP_6_proc_U0_result_buf_address0,
        t_ce0 => Loop_LOOP_6_proc_U0_result_buf_ce0,
        t_we0 => ap_const_logic_0,
        t_d0 => ap_const_lv32_0,
        t_q0 => result_buf_t_q0,
        i_ce => ap_const_logic_1,
        t_ce => ap_const_logic_1,
        i_full_n => result_buf_i_full_n,
        i_write => Loop_LOOP_2_proc9_U0_ap_done,
        t_empty_n => result_buf_t_empty_n,
        t_read => Loop_LOOP_6_proc_U0_ap_ready);

    Loop_LOOP_1_proc10_U0 : component Loop_LOOP_1_proc10
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Loop_LOOP_1_proc10_U0_ap_start,
        ap_done => Loop_LOOP_1_proc10_U0_ap_done,
        ap_continue => Loop_LOOP_1_proc10_U0_ap_continue,
        ap_idle => Loop_LOOP_1_proc10_U0_ap_idle,
        ap_ready => Loop_LOOP_1_proc10_U0_ap_ready,
        kernel_index_stream_TDATA => kernel_index_stream_TDATA,
        kernel_index_stream_TVALID => kernel_index_stream_TVALID,
        kernel_index_stream_TREADY => Loop_LOOP_1_proc10_U0_kernel_index_stream_TREADY,
        kernel_index_stream_TSTRB => kernel_index_stream_TSTRB,
        kernel_index_stream_TKEEP => kernel_index_stream_TKEEP,
        kernel_index_stream_TUSER => kernel_index_stream_TUSER,
        kernel_index_stream_TLAST => kernel_index_stream_TLAST,
        kernel_index_stream_TID => kernel_index_stream_TID,
        kernel_index_stream_TDEST => kernel_index_stream_TDEST,
        index_buf_address0 => Loop_LOOP_1_proc10_U0_index_buf_address0,
        index_buf_ce0 => Loop_LOOP_1_proc10_U0_index_buf_ce0,
        index_buf_we0 => Loop_LOOP_1_proc10_U0_index_buf_we0,
        index_buf_d0 => Loop_LOOP_1_proc10_U0_index_buf_d0,
        length_x => length_x,
        tile_size => tile_size,
        remaining_size => remaining_size,
        length_x_out_din => Loop_LOOP_1_proc10_U0_length_x_out_din,
        length_x_out_full_n => length_x_c_full_n,
        length_x_out_write => Loop_LOOP_1_proc10_U0_length_x_out_write,
        tile_size_out_din => Loop_LOOP_1_proc10_U0_tile_size_out_din,
        tile_size_out_full_n => tile_size_c_full_n,
        tile_size_out_write => Loop_LOOP_1_proc10_U0_tile_size_out_write,
        remaining_size_out_din => Loop_LOOP_1_proc10_U0_remaining_size_out_din,
        remaining_size_out_full_n => remaining_size_c_full_n,
        remaining_size_out_write => Loop_LOOP_1_proc10_U0_remaining_size_out_write);

    Loop_LOOP_2_proc9_U0 : component Loop_LOOP_2_proc9
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Loop_LOOP_2_proc9_U0_ap_start,
        ap_done => Loop_LOOP_2_proc9_U0_ap_done,
        ap_continue => Loop_LOOP_2_proc9_U0_ap_continue,
        ap_idle => Loop_LOOP_2_proc9_U0_ap_idle,
        ap_ready => Loop_LOOP_2_proc9_U0_ap_ready,
        tile_size_dout => tile_size_c_dout,
        tile_size_empty_n => tile_size_c_empty_n,
        tile_size_read => Loop_LOOP_2_proc9_U0_tile_size_read,
        remaining_size_dout => remaining_size_c_dout,
        remaining_size_empty_n => remaining_size_c_empty_n,
        remaining_size_read => Loop_LOOP_2_proc9_U0_remaining_size_read,
        result_buf_address0 => Loop_LOOP_2_proc9_U0_result_buf_address0,
        result_buf_ce0 => Loop_LOOP_2_proc9_U0_result_buf_ce0,
        result_buf_we0 => Loop_LOOP_2_proc9_U0_result_buf_we0,
        result_buf_d0 => Loop_LOOP_2_proc9_U0_result_buf_d0,
        index_buf_address0 => Loop_LOOP_2_proc9_U0_index_buf_address0,
        index_buf_ce0 => Loop_LOOP_2_proc9_U0_index_buf_ce0,
        index_buf_q0 => index_buf_t_q0,
        kernel_in_stream_TDATA => kernel_in_stream_TDATA,
        kernel_in_stream_TVALID => kernel_in_stream_TVALID,
        kernel_in_stream_TREADY => Loop_LOOP_2_proc9_U0_kernel_in_stream_TREADY,
        kernel_in_stream_TSTRB => kernel_in_stream_TSTRB,
        kernel_in_stream_TKEEP => kernel_in_stream_TKEEP,
        kernel_in_stream_TUSER => kernel_in_stream_TUSER,
        kernel_in_stream_TLAST => kernel_in_stream_TLAST,
        kernel_in_stream_TID => kernel_in_stream_TID,
        kernel_in_stream_TDEST => kernel_in_stream_TDEST);

    Loop_LOOP_6_proc_U0 : component Loop_LOOP_6_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Loop_LOOP_6_proc_U0_ap_start,
        ap_done => Loop_LOOP_6_proc_U0_ap_done,
        ap_continue => Loop_LOOP_6_proc_U0_ap_continue,
        ap_idle => Loop_LOOP_6_proc_U0_ap_idle,
        ap_ready => Loop_LOOP_6_proc_U0_ap_ready,
        length_x_dout => length_x_c_dout,
        length_x_empty_n => length_x_c_empty_n,
        length_x_read => Loop_LOOP_6_proc_U0_length_x_read,
        result_buf_address0 => Loop_LOOP_6_proc_U0_result_buf_address0,
        result_buf_ce0 => Loop_LOOP_6_proc_U0_result_buf_ce0,
        result_buf_q0 => result_buf_t_q0,
        kernel_out_stream_TDATA => Loop_LOOP_6_proc_U0_kernel_out_stream_TDATA,
        kernel_out_stream_TVALID => Loop_LOOP_6_proc_U0_kernel_out_stream_TVALID,
        kernel_out_stream_TREADY => kernel_out_stream_TREADY,
        kernel_out_stream_TKEEP => Loop_LOOP_6_proc_U0_kernel_out_stream_TKEEP,
        kernel_out_stream_TSTRB => Loop_LOOP_6_proc_U0_kernel_out_stream_TSTRB,
        kernel_out_stream_TUSER => Loop_LOOP_6_proc_U0_kernel_out_stream_TUSER,
        kernel_out_stream_TLAST => Loop_LOOP_6_proc_U0_kernel_out_stream_TLAST,
        kernel_out_stream_TID => Loop_LOOP_6_proc_U0_kernel_out_stream_TID,
        kernel_out_stream_TDEST => Loop_LOOP_6_proc_U0_kernel_out_stream_TDEST);

    length_x_c_U : component fifo_w32_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Loop_LOOP_1_proc10_U0_length_x_out_din,
        if_full_n => length_x_c_full_n,
        if_write => Loop_LOOP_1_proc10_U0_length_x_out_write,
        if_dout => length_x_c_dout,
        if_empty_n => length_x_c_empty_n,
        if_read => Loop_LOOP_6_proc_U0_length_x_read);

    tile_size_c_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Loop_LOOP_1_proc10_U0_tile_size_out_din,
        if_full_n => tile_size_c_full_n,
        if_write => Loop_LOOP_1_proc10_U0_tile_size_out_write,
        if_dout => tile_size_c_dout,
        if_empty_n => tile_size_c_empty_n,
        if_read => Loop_LOOP_2_proc9_U0_tile_size_read);

    remaining_size_c_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Loop_LOOP_1_proc10_U0_remaining_size_out_din,
        if_full_n => remaining_size_c_full_n,
        if_write => Loop_LOOP_1_proc10_U0_remaining_size_out_write,
        if_dout => remaining_size_c_dout,
        if_empty_n => remaining_size_c_empty_n,
        if_read => Loop_LOOP_2_proc9_U0_remaining_size_read);





    ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready <= ap_sync_Loop_LOOP_1_proc10_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready <= ap_sync_Loop_LOOP_2_proc9_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    Loop_LOOP_1_proc10_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_sync_ready = ap_const_logic_1) and (ap_const_logic_0 = Loop_LOOP_1_proc10_U0_ap_ready))) then 
                Loop_LOOP_1_proc10_U0_ap_ready_count <= std_logic_vector(unsigned(Loop_LOOP_1_proc10_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_const_logic_1 = Loop_LOOP_1_proc10_U0_ap_ready) and (ap_sync_ready = ap_const_logic_0))) then 
                Loop_LOOP_1_proc10_U0_ap_ready_count <= std_logic_vector(unsigned(Loop_LOOP_1_proc10_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;

    Loop_LOOP_2_proc9_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_sync_ready = ap_const_logic_1) and (ap_const_logic_0 = Loop_LOOP_2_proc9_U0_ap_ready))) then 
                Loop_LOOP_2_proc9_U0_ap_ready_count <= std_logic_vector(unsigned(Loop_LOOP_2_proc9_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_const_logic_1 = Loop_LOOP_2_proc9_U0_ap_ready) and (ap_sync_ready = ap_const_logic_0))) then 
                Loop_LOOP_2_proc9_U0_ap_ready_count <= std_logic_vector(unsigned(Loop_LOOP_2_proc9_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;
    Loop_LOOP_1_proc10_U0_ap_continue <= index_buf_i_full_n;
    Loop_LOOP_1_proc10_U0_ap_start <= ((ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready xor ap_const_logic_1) and ap_start);
    Loop_LOOP_1_proc10_U0_index_buf_full_n <= index_buf_i_full_n;
    Loop_LOOP_1_proc10_U0_start_full_n <= ap_const_logic_1;
    Loop_LOOP_1_proc10_U0_start_write <= ap_const_logic_0;
    Loop_LOOP_2_proc9_U0_ap_continue <= result_buf_i_full_n;
    Loop_LOOP_2_proc9_U0_ap_start <= (index_buf_t_empty_n and (ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready xor ap_const_logic_1) and ap_start);
    Loop_LOOP_2_proc9_U0_result_buf_full_n <= result_buf_i_full_n;
    Loop_LOOP_2_proc9_U0_start_full_n <= ap_const_logic_1;
    Loop_LOOP_2_proc9_U0_start_write <= ap_const_logic_0;
    Loop_LOOP_6_proc_U0_ap_continue <= ap_const_logic_1;
    Loop_LOOP_6_proc_U0_ap_start <= result_buf_t_empty_n;
    Loop_LOOP_6_proc_U0_start_full_n <= ap_const_logic_1;
    Loop_LOOP_6_proc_U0_start_write <= ap_const_logic_0;
    ap_channel_done_index_buf <= Loop_LOOP_1_proc10_U0_ap_done;
    ap_channel_done_result_buf <= Loop_LOOP_2_proc9_U0_ap_done;
    ap_done <= Loop_LOOP_6_proc_U0_ap_done;
    ap_idle <= ((result_buf_t_empty_n xor ap_const_logic_1) and (index_buf_t_empty_n xor ap_const_logic_1) and Loop_LOOP_6_proc_U0_ap_idle and Loop_LOOP_2_proc9_U0_ap_idle and Loop_LOOP_1_proc10_U0_ap_idle);
    ap_ready <= ap_sync_ready;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_Loop_LOOP_1_proc10_U0_ap_ready <= (ap_sync_reg_Loop_LOOP_1_proc10_U0_ap_ready or Loop_LOOP_1_proc10_U0_ap_ready);
    ap_sync_Loop_LOOP_2_proc9_U0_ap_ready <= (ap_sync_reg_Loop_LOOP_2_proc9_U0_ap_ready or Loop_LOOP_2_proc9_U0_ap_ready);
    ap_sync_continue <= ap_const_logic_1;
    ap_sync_done <= Loop_LOOP_6_proc_U0_ap_done;
    ap_sync_ready <= (ap_sync_Loop_LOOP_2_proc9_U0_ap_ready and ap_sync_Loop_LOOP_1_proc10_U0_ap_ready);
    kernel_in_stream_TREADY <= Loop_LOOP_2_proc9_U0_kernel_in_stream_TREADY;
    kernel_index_stream_TREADY <= Loop_LOOP_1_proc10_U0_kernel_index_stream_TREADY;
    kernel_out_stream_TDATA <= Loop_LOOP_6_proc_U0_kernel_out_stream_TDATA;
    kernel_out_stream_TDEST <= Loop_LOOP_6_proc_U0_kernel_out_stream_TDEST;
    kernel_out_stream_TID <= Loop_LOOP_6_proc_U0_kernel_out_stream_TID;
    kernel_out_stream_TKEEP <= Loop_LOOP_6_proc_U0_kernel_out_stream_TKEEP;
    kernel_out_stream_TLAST <= Loop_LOOP_6_proc_U0_kernel_out_stream_TLAST;
    kernel_out_stream_TSTRB <= Loop_LOOP_6_proc_U0_kernel_out_stream_TSTRB;
    kernel_out_stream_TUSER <= Loop_LOOP_6_proc_U0_kernel_out_stream_TUSER;
    kernel_out_stream_TVALID <= Loop_LOOP_6_proc_U0_kernel_out_stream_TVALID;
end behav;
