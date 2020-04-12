// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _kernel_matrix_tiled_HH_
#define _kernel_matrix_tiled_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "kernel_matrix_tilfYi.h"
#include "kernel_matrix_tilg8j.h"
#include "kernel_matrix_tilhbi.h"
#include "kernel_matrix_tilibs.h"
#include "kernel_matrix_tiljbC.h"
#include "kernel_matrix_tilbkb.h"
#include "kernel_matrix_tilcud.h"
#include "kernel_matrix_tileOg.h"
#include "kernel_matrix_tiled_CONTROL_BUS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_CONTROL_BUS_ADDR_WIDTH = 5,
         unsigned int C_S_AXI_CONTROL_BUS_DATA_WIDTH = 32>
struct kernel_matrix_tiled : public sc_module {
    // Port declarations 47
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<32> > kernel_in_stream_TDATA;
    sc_in< sc_logic > kernel_in_stream_TVALID;
    sc_out< sc_logic > kernel_in_stream_TREADY;
    sc_in< sc_lv<4> > kernel_in_stream_TKEEP;
    sc_in< sc_lv<4> > kernel_in_stream_TSTRB;
    sc_in< sc_lv<4> > kernel_in_stream_TUSER;
    sc_in< sc_lv<1> > kernel_in_stream_TLAST;
    sc_in< sc_lv<5> > kernel_in_stream_TID;
    sc_in< sc_lv<5> > kernel_in_stream_TDEST;
    sc_in< sc_lv<32> > kernel_index_stream_TDATA;
    sc_in< sc_logic > kernel_index_stream_TVALID;
    sc_out< sc_logic > kernel_index_stream_TREADY;
    sc_in< sc_lv<4> > kernel_index_stream_TKEEP;
    sc_in< sc_lv<4> > kernel_index_stream_TSTRB;
    sc_in< sc_lv<4> > kernel_index_stream_TUSER;
    sc_in< sc_lv<1> > kernel_index_stream_TLAST;
    sc_in< sc_lv<5> > kernel_index_stream_TID;
    sc_in< sc_lv<5> > kernel_index_stream_TDEST;
    sc_out< sc_lv<32> > kernel_out_stream_TDATA;
    sc_out< sc_logic > kernel_out_stream_TVALID;
    sc_in< sc_logic > kernel_out_stream_TREADY;
    sc_out< sc_lv<4> > kernel_out_stream_TKEEP;
    sc_out< sc_lv<4> > kernel_out_stream_TSTRB;
    sc_out< sc_lv<4> > kernel_out_stream_TUSER;
    sc_out< sc_lv<1> > kernel_out_stream_TLAST;
    sc_out< sc_lv<5> > kernel_out_stream_TID;
    sc_out< sc_lv<5> > kernel_out_stream_TDEST;
    sc_in< sc_logic > s_axi_CONTROL_BUS_AWVALID;
    sc_out< sc_logic > s_axi_CONTROL_BUS_AWREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_ADDR_WIDTH> > s_axi_CONTROL_BUS_AWADDR;
    sc_in< sc_logic > s_axi_CONTROL_BUS_WVALID;
    sc_out< sc_logic > s_axi_CONTROL_BUS_WREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_DATA_WIDTH> > s_axi_CONTROL_BUS_WDATA;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_DATA_WIDTH/8> > s_axi_CONTROL_BUS_WSTRB;
    sc_in< sc_logic > s_axi_CONTROL_BUS_ARVALID;
    sc_out< sc_logic > s_axi_CONTROL_BUS_ARREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_ADDR_WIDTH> > s_axi_CONTROL_BUS_ARADDR;
    sc_out< sc_logic > s_axi_CONTROL_BUS_RVALID;
    sc_in< sc_logic > s_axi_CONTROL_BUS_RREADY;
    sc_out< sc_uint<C_S_AXI_CONTROL_BUS_DATA_WIDTH> > s_axi_CONTROL_BUS_RDATA;
    sc_out< sc_lv<2> > s_axi_CONTROL_BUS_RRESP;
    sc_out< sc_logic > s_axi_CONTROL_BUS_BVALID;
    sc_in< sc_logic > s_axi_CONTROL_BUS_BREADY;
    sc_out< sc_lv<2> > s_axi_CONTROL_BUS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;


    // Module declarations
    kernel_matrix_tiled(sc_module_name name);
    SC_HAS_PROCESS(kernel_matrix_tiled);

    ~kernel_matrix_tiled();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    kernel_matrix_tiled_CONTROL_BUS_s_axi<C_S_AXI_CONTROL_BUS_ADDR_WIDTH,C_S_AXI_CONTROL_BUS_DATA_WIDTH>* kernel_matrix_tiled_CONTROL_BUS_s_axi_U;
    kernel_matrix_tilbkb* input_buf_U;
    kernel_matrix_tilcud* index_buf_U;
    kernel_matrix_tilcud* temp2_buf_U;
    kernel_matrix_tileOg* result_buf_U;
    kernel_matrix_tilfYi<1,5,32,32,32>* kernel_matrix_tilfYi_U1;
    kernel_matrix_tilg8j<1,4,32,32,32>* kernel_matrix_tilg8j_U2;
    kernel_matrix_tilhbi<1,9,32,32,32>* kernel_matrix_tilhbi_U3;
    kernel_matrix_tilibs<1,36,32,8,8>* kernel_matrix_tilibs_U4;
    kernel_matrix_tiljbC<1,1,7,11,17>* kernel_matrix_tiljbC_U5;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<69> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<32> > kernel_in_stream_data_V_0_data_out;
    sc_signal< sc_logic > kernel_in_stream_data_V_0_vld_in;
    sc_signal< sc_logic > kernel_in_stream_data_V_0_vld_out;
    sc_signal< sc_logic > kernel_in_stream_data_V_0_ack_in;
    sc_signal< sc_logic > kernel_in_stream_data_V_0_ack_out;
    sc_signal< sc_lv<32> > kernel_in_stream_data_V_0_payload_A;
    sc_signal< sc_lv<32> > kernel_in_stream_data_V_0_payload_B;
    sc_signal< sc_logic > kernel_in_stream_data_V_0_sel_rd;
    sc_signal< sc_logic > kernel_in_stream_data_V_0_sel_wr;
    sc_signal< sc_logic > kernel_in_stream_data_V_0_sel;
    sc_signal< sc_logic > kernel_in_stream_data_V_0_load_A;
    sc_signal< sc_logic > kernel_in_stream_data_V_0_load_B;
    sc_signal< sc_lv<2> > kernel_in_stream_data_V_0_state;
    sc_signal< sc_logic > kernel_in_stream_data_V_0_state_cmp_full;
    sc_signal< sc_logic > kernel_in_stream_dest_V_0_vld_in;
    sc_signal< sc_logic > kernel_in_stream_dest_V_0_ack_out;
    sc_signal< sc_lv<2> > kernel_in_stream_dest_V_0_state;
    sc_signal< sc_lv<32> > kernel_index_stream_data_V_0_data_out;
    sc_signal< sc_logic > kernel_index_stream_data_V_0_vld_in;
    sc_signal< sc_logic > kernel_index_stream_data_V_0_vld_out;
    sc_signal< sc_logic > kernel_index_stream_data_V_0_ack_in;
    sc_signal< sc_logic > kernel_index_stream_data_V_0_ack_out;
    sc_signal< sc_lv<32> > kernel_index_stream_data_V_0_payload_A;
    sc_signal< sc_lv<32> > kernel_index_stream_data_V_0_payload_B;
    sc_signal< sc_logic > kernel_index_stream_data_V_0_sel_rd;
    sc_signal< sc_logic > kernel_index_stream_data_V_0_sel_wr;
    sc_signal< sc_logic > kernel_index_stream_data_V_0_sel;
    sc_signal< sc_logic > kernel_index_stream_data_V_0_load_A;
    sc_signal< sc_logic > kernel_index_stream_data_V_0_load_B;
    sc_signal< sc_lv<2> > kernel_index_stream_data_V_0_state;
    sc_signal< sc_logic > kernel_index_stream_data_V_0_state_cmp_full;
    sc_signal< sc_logic > kernel_index_stream_dest_V_0_vld_in;
    sc_signal< sc_logic > kernel_index_stream_dest_V_0_ack_out;
    sc_signal< sc_lv<2> > kernel_index_stream_dest_V_0_state;
    sc_signal< sc_lv<32> > kernel_out_stream_data_V_1_data_out;
    sc_signal< sc_logic > kernel_out_stream_data_V_1_vld_in;
    sc_signal< sc_logic > kernel_out_stream_data_V_1_vld_out;
    sc_signal< sc_logic > kernel_out_stream_data_V_1_ack_in;
    sc_signal< sc_logic > kernel_out_stream_data_V_1_ack_out;
    sc_signal< sc_lv<32> > kernel_out_stream_data_V_1_payload_A;
    sc_signal< sc_lv<32> > kernel_out_stream_data_V_1_payload_B;
    sc_signal< sc_logic > kernel_out_stream_data_V_1_sel_rd;
    sc_signal< sc_logic > kernel_out_stream_data_V_1_sel_wr;
    sc_signal< sc_logic > kernel_out_stream_data_V_1_sel;
    sc_signal< sc_logic > kernel_out_stream_data_V_1_load_A;
    sc_signal< sc_logic > kernel_out_stream_data_V_1_load_B;
    sc_signal< sc_lv<2> > kernel_out_stream_data_V_1_state;
    sc_signal< sc_logic > kernel_out_stream_data_V_1_state_cmp_full;
    sc_signal< sc_lv<4> > kernel_out_stream_keep_V_1_data_out;
    sc_signal< sc_logic > kernel_out_stream_keep_V_1_vld_in;
    sc_signal< sc_logic > kernel_out_stream_keep_V_1_vld_out;
    sc_signal< sc_logic > kernel_out_stream_keep_V_1_ack_in;
    sc_signal< sc_logic > kernel_out_stream_keep_V_1_ack_out;
    sc_signal< sc_logic > kernel_out_stream_keep_V_1_sel_rd;
    sc_signal< sc_logic > kernel_out_stream_keep_V_1_sel;
    sc_signal< sc_lv<2> > kernel_out_stream_keep_V_1_state;
    sc_signal< sc_lv<4> > kernel_out_stream_strb_V_1_data_out;
    sc_signal< sc_logic > kernel_out_stream_strb_V_1_vld_in;
    sc_signal< sc_logic > kernel_out_stream_strb_V_1_vld_out;
    sc_signal< sc_logic > kernel_out_stream_strb_V_1_ack_in;
    sc_signal< sc_logic > kernel_out_stream_strb_V_1_ack_out;
    sc_signal< sc_logic > kernel_out_stream_strb_V_1_sel_rd;
    sc_signal< sc_logic > kernel_out_stream_strb_V_1_sel;
    sc_signal< sc_lv<2> > kernel_out_stream_strb_V_1_state;
    sc_signal< sc_lv<4> > kernel_out_stream_user_V_1_data_out;
    sc_signal< sc_logic > kernel_out_stream_user_V_1_vld_in;
    sc_signal< sc_logic > kernel_out_stream_user_V_1_vld_out;
    sc_signal< sc_logic > kernel_out_stream_user_V_1_ack_in;
    sc_signal< sc_logic > kernel_out_stream_user_V_1_ack_out;
    sc_signal< sc_logic > kernel_out_stream_user_V_1_sel_rd;
    sc_signal< sc_logic > kernel_out_stream_user_V_1_sel;
    sc_signal< sc_lv<2> > kernel_out_stream_user_V_1_state;
    sc_signal< sc_lv<1> > kernel_out_stream_last_V_1_data_out;
    sc_signal< sc_logic > kernel_out_stream_last_V_1_vld_in;
    sc_signal< sc_logic > kernel_out_stream_last_V_1_vld_out;
    sc_signal< sc_logic > kernel_out_stream_last_V_1_ack_in;
    sc_signal< sc_logic > kernel_out_stream_last_V_1_ack_out;
    sc_signal< sc_lv<1> > kernel_out_stream_last_V_1_payload_A;
    sc_signal< sc_lv<1> > kernel_out_stream_last_V_1_payload_B;
    sc_signal< sc_logic > kernel_out_stream_last_V_1_sel_rd;
    sc_signal< sc_logic > kernel_out_stream_last_V_1_sel_wr;
    sc_signal< sc_logic > kernel_out_stream_last_V_1_sel;
    sc_signal< sc_logic > kernel_out_stream_last_V_1_load_A;
    sc_signal< sc_logic > kernel_out_stream_last_V_1_load_B;
    sc_signal< sc_lv<2> > kernel_out_stream_last_V_1_state;
    sc_signal< sc_logic > kernel_out_stream_last_V_1_state_cmp_full;
    sc_signal< sc_lv<5> > kernel_out_stream_id_V_1_data_out;
    sc_signal< sc_logic > kernel_out_stream_id_V_1_vld_in;
    sc_signal< sc_logic > kernel_out_stream_id_V_1_vld_out;
    sc_signal< sc_logic > kernel_out_stream_id_V_1_ack_in;
    sc_signal< sc_logic > kernel_out_stream_id_V_1_ack_out;
    sc_signal< sc_logic > kernel_out_stream_id_V_1_sel_rd;
    sc_signal< sc_logic > kernel_out_stream_id_V_1_sel;
    sc_signal< sc_lv<2> > kernel_out_stream_id_V_1_state;
    sc_signal< sc_lv<5> > kernel_out_stream_dest_V_1_data_out;
    sc_signal< sc_logic > kernel_out_stream_dest_V_1_vld_in;
    sc_signal< sc_logic > kernel_out_stream_dest_V_1_vld_out;
    sc_signal< sc_logic > kernel_out_stream_dest_V_1_ack_in;
    sc_signal< sc_logic > kernel_out_stream_dest_V_1_ack_out;
    sc_signal< sc_logic > kernel_out_stream_dest_V_1_sel_rd;
    sc_signal< sc_logic > kernel_out_stream_dest_V_1_sel;
    sc_signal< sc_lv<2> > kernel_out_stream_dest_V_1_state;
    sc_signal< sc_lv<32> > length_x;
    sc_signal< sc_lv<32> > length_x_0_data_reg;
    sc_signal< sc_logic > length_x_0_vld_reg;
    sc_signal< sc_logic > length_x_0_ack_out;
    sc_signal< sc_logic > kernel_in_stream_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_logic > kernel_index_stream_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_logic > kernel_out_stream_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state79;
    sc_signal< sc_logic > ap_CS_fsm_state80;
    sc_signal< sc_lv<32> > sum_i_reg_392;
    sc_signal< sc_lv<10> > i_i_reg_404;
    sc_signal< sc_lv<32> > grp_fu_431_p2;
    sc_signal< sc_lv<32> > reg_442;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_state48_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state53_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state58_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state63_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > tmp_i_reg_845;
    sc_signal< sc_lv<1> > tmp_i_reg_845_pp0_iter1_reg;
    sc_signal< sc_logic > ap_CS_fsm_state67;
    sc_signal< sc_lv<32> > length_x_read_reg_732;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<26> > TILE_SIZE_cast_reg_740;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_lv<26> > TILE_SIZE_1_fu_488_p3;
    sc_signal< sc_lv<26> > TILE_SIZE_1_reg_746;
    sc_signal< sc_logic > ap_CS_fsm_state37;
    sc_signal< sc_lv<10> > j_1_fu_501_p2;
    sc_signal< sc_lv<10> > j_1_reg_754;
    sc_signal< sc_logic > ap_CS_fsm_state38;
    sc_signal< sc_lv<33> > bound_fu_510_p2;
    sc_signal< sc_lv<33> > bound_reg_759;
    sc_signal< sc_lv<1> > exitcond3_fu_495_p2;
    sc_signal< sc_lv<33> > indvar_flatten_next_fu_535_p2;
    sc_signal< sc_lv<33> > indvar_flatten_next_reg_767;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_lv<7> > i_mid2_fu_553_p3;
    sc_signal< sc_lv<7> > i_mid2_reg_772;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_530_p2;
    sc_signal< sc_lv<26> > m_mid2_v_v_fu_561_p3;
    sc_signal< sc_lv<26> > m_mid2_v_v_reg_778;
    sc_signal< sc_lv<32> > m_mid2_fu_572_p2;
    sc_signal< sc_lv<32> > m_mid2_reg_784;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_lv<32> > tmp_3_mid2_fu_578_p2;
    sc_signal< sc_lv<32> > tmp_3_mid2_reg_790;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_lv<17> > tmp_2_fu_726_p2;
    sc_signal< sc_lv<17> > tmp_2_reg_795;
    sc_signal< sc_lv<10> > j_2_fu_592_p2;
    sc_signal< sc_lv<10> > j_2_reg_803;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_lv<17> > tmp_3_fu_602_p2;
    sc_signal< sc_lv<17> > tmp_3_reg_808;
    sc_signal< sc_lv<1> > exitcond1_fu_586_p2;
    sc_signal< sc_lv<18> > tmp_5_fu_620_p1;
    sc_signal< sc_lv<18> > tmp_5_reg_813;
    sc_signal< sc_logic > ap_CS_fsm_state45;
    sc_signal< sc_lv<64> > next_mul_fu_624_p2;
    sc_signal< sc_lv<64> > next_mul_reg_818;
    sc_signal< sc_lv<7> > i_2_fu_635_p2;
    sc_signal< sc_lv<1> > tmp_s_fu_630_p2;
    sc_signal< sc_lv<1> > exitcond_fu_640_p2;
    sc_signal< sc_logic > ap_CS_fsm_state46;
    sc_signal< sc_lv<10> > l_1_fu_646_p2;
    sc_signal< sc_lv<10> > l_1_reg_835;
    sc_signal< sc_lv<1> > tmp_i_fu_671_p2;
    sc_signal< sc_lv<1> > tmp_i_reg_845_pp0_iter2_reg;
    sc_signal< sc_lv<10> > i_3_fu_677_p2;
    sc_signal< sc_lv<10> > i_3_reg_849;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > index_buf_q0;
    sc_signal< sc_lv<32> > index_buf_load_reg_864;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state49_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state54_pp0_stage1_iter1;
    sc_signal< bool > ap_block_state59_pp0_stage1_iter2;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<32> > temp2_buf_q0;
    sc_signal< sc_lv<32> > temp2_buf_load_reg_869;
    sc_signal< sc_lv<32> > grp_fu_426_p2;
    sc_signal< sc_lv<32> > tmp_4_i_reg_874;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<32> > grp_fu_437_p2;
    sc_signal< sc_lv<32> > tmp_2_i_reg_885;
    sc_signal< sc_logic > ap_CS_fsm_state76;
    sc_signal< sc_lv<32> > m_fu_694_p2;
    sc_signal< sc_logic > ap_CS_fsm_state77;
    sc_signal< sc_lv<32> > os_idx_2_fu_705_p2;
    sc_signal< sc_lv<32> > os_idx_2_reg_898;
    sc_signal< sc_logic > ap_CS_fsm_state78;
    sc_signal< bool > ap_block_state78;
    sc_signal< sc_lv<1> > exitcond8_fu_700_p2;
    sc_signal< sc_lv<1> > last_assign_fu_716_p2;
    sc_signal< sc_lv<1> > last_assign_reg_908;
    sc_signal< sc_lv<32> > tmp_9_fu_721_p1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state48;
    sc_signal< bool > ap_block_state52_pp0_stage4_iter0;
    sc_signal< bool > ap_block_state57_pp0_stage4_iter1;
    sc_signal< bool > ap_block_state62_pp0_stage4_iter2;
    sc_signal< bool > ap_block_pp0_stage4_subdone;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage4;
    sc_signal< sc_lv<17> > input_buf_address0;
    sc_signal< sc_logic > input_buf_ce0;
    sc_signal< sc_logic > input_buf_we0;
    sc_signal< sc_lv<32> > input_buf_d0;
    sc_signal< sc_lv<32> > input_buf_q0;
    sc_signal< sc_lv<10> > index_buf_address0;
    sc_signal< sc_logic > index_buf_ce0;
    sc_signal< sc_logic > index_buf_we0;
    sc_signal< sc_lv<32> > index_buf_d0;
    sc_signal< sc_lv<10> > temp2_buf_address0;
    sc_signal< sc_logic > temp2_buf_ce0;
    sc_signal< sc_logic > temp2_buf_we0;
    sc_signal< sc_lv<12> > result_buf_address0;
    sc_signal< sc_logic > result_buf_ce0;
    sc_signal< sc_logic > result_buf_we0;
    sc_signal< sc_lv<32> > result_buf_q0;
    sc_signal< sc_lv<10> > j_reg_303;
    sc_signal< sc_lv<33> > indvar_flatten_reg_315;
    sc_signal< sc_lv<26> > p_reg_326;
    sc_signal< sc_lv<7> > i_reg_337;
    sc_signal< sc_lv<10> > j1_reg_348;
    sc_signal< sc_lv<32> > m1_reg_359;
    sc_signal< sc_lv<64> > phi_mul_reg_369;
    sc_signal< sc_lv<10> > l_reg_380;
    sc_signal< sc_logic > ap_CS_fsm_state47;
    sc_signal< sc_lv<10> > ap_phi_mux_i_i_phi_fu_408_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > os_idx_reg_415;
    sc_signal< sc_lv<64> > tmp_1_fu_516_p1;
    sc_signal< sc_lv<64> > tmp_3_cast_fu_616_p1;
    sc_signal< sc_lv<64> > tmp_13_cast_fu_661_p1;
    sc_signal< sc_lv<64> > tmp_6_fu_666_p1;
    sc_signal< sc_lv<64> > tmp_3_i_fu_683_p1;
    sc_signal< sc_lv<64> > tmp_11_fu_689_p1;
    sc_signal< sc_lv<64> > tmp_7_fu_711_p1;
    sc_signal< sc_lv<32> > grp_fu_426_p0;
    sc_signal< sc_lv<32> > grp_fu_426_p1;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<32> > grp_fu_431_p0;
    sc_signal< sc_lv<32> > grp_fu_431_p1;
    sc_signal< sc_logic > ap_CS_fsm_state64;
    sc_signal< sc_logic > ap_CS_fsm_state68;
    sc_signal< sc_lv<8> > grp_fu_448_p1;
    sc_signal< sc_lv<32> > mul_fu_457_p1;
    sc_signal< sc_lv<65> > mul_fu_457_p2;
    sc_signal< sc_lv<8> > grp_fu_448_p2;
    sc_signal< sc_lv<8> > tmp_4_fu_473_p1;
    sc_signal< sc_lv<1> > tmp_8_fu_477_p2;
    sc_signal< sc_lv<26> > TILE_SIZE_fu_483_p2;
    sc_signal< sc_lv<26> > bound_fu_510_p0;
    sc_signal< sc_lv<1> > exitcond2_fu_547_p2;
    sc_signal< sc_lv<26> > p_1_fu_541_p2;
    sc_signal< sc_lv<26> > m_mid2_fu_572_p0;
    sc_signal< sc_lv<17> > tmp_4_cast_fu_598_p1;
    sc_signal< sc_lv<18> > tmp_10_cast_fu_652_p1;
    sc_signal< sc_lv<18> > tmp_10_fu_656_p2;
    sc_signal< sc_lv<7> > tmp_2_fu_726_p0;
    sc_signal< sc_lv<11> > tmp_2_fu_726_p1;
    sc_signal< sc_lv<2> > grp_fu_426_opcode;
    sc_signal< bool > ap_block_pp0_stage1_00001;
    sc_signal< bool > ap_block_state50_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state55_pp0_stage2_iter1;
    sc_signal< bool > ap_block_state60_pp0_stage2_iter2;
    sc_signal< bool > ap_block_pp0_stage2_00001;
    sc_signal< sc_logic > grp_fu_448_ap_start;
    sc_signal< sc_logic > grp_fu_448_ap_done;
    sc_signal< sc_lv<69> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< bool > ap_block_state51_pp0_stage3_iter0;
    sc_signal< bool > ap_block_state56_pp0_stage3_iter1;
    sc_signal< bool > ap_block_state61_pp0_stage3_iter2;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< bool > ap_block_pp0_stage4_11001;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<33> > bound_fu_510_p00;
    sc_signal< sc_lv<32> > m_mid2_fu_572_p00;
    sc_signal< sc_lv<65> > mul_fu_457_p10;
    sc_signal< sc_lv<17> > tmp_2_fu_726_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<69> ap_ST_fsm_state1;
    static const sc_lv<69> ap_ST_fsm_state2;
    static const sc_lv<69> ap_ST_fsm_state3;
    static const sc_lv<69> ap_ST_fsm_state4;
    static const sc_lv<69> ap_ST_fsm_state5;
    static const sc_lv<69> ap_ST_fsm_state6;
    static const sc_lv<69> ap_ST_fsm_state7;
    static const sc_lv<69> ap_ST_fsm_state8;
    static const sc_lv<69> ap_ST_fsm_state9;
    static const sc_lv<69> ap_ST_fsm_state10;
    static const sc_lv<69> ap_ST_fsm_state11;
    static const sc_lv<69> ap_ST_fsm_state12;
    static const sc_lv<69> ap_ST_fsm_state13;
    static const sc_lv<69> ap_ST_fsm_state14;
    static const sc_lv<69> ap_ST_fsm_state15;
    static const sc_lv<69> ap_ST_fsm_state16;
    static const sc_lv<69> ap_ST_fsm_state17;
    static const sc_lv<69> ap_ST_fsm_state18;
    static const sc_lv<69> ap_ST_fsm_state19;
    static const sc_lv<69> ap_ST_fsm_state20;
    static const sc_lv<69> ap_ST_fsm_state21;
    static const sc_lv<69> ap_ST_fsm_state22;
    static const sc_lv<69> ap_ST_fsm_state23;
    static const sc_lv<69> ap_ST_fsm_state24;
    static const sc_lv<69> ap_ST_fsm_state25;
    static const sc_lv<69> ap_ST_fsm_state26;
    static const sc_lv<69> ap_ST_fsm_state27;
    static const sc_lv<69> ap_ST_fsm_state28;
    static const sc_lv<69> ap_ST_fsm_state29;
    static const sc_lv<69> ap_ST_fsm_state30;
    static const sc_lv<69> ap_ST_fsm_state31;
    static const sc_lv<69> ap_ST_fsm_state32;
    static const sc_lv<69> ap_ST_fsm_state33;
    static const sc_lv<69> ap_ST_fsm_state34;
    static const sc_lv<69> ap_ST_fsm_state35;
    static const sc_lv<69> ap_ST_fsm_state36;
    static const sc_lv<69> ap_ST_fsm_state37;
    static const sc_lv<69> ap_ST_fsm_state38;
    static const sc_lv<69> ap_ST_fsm_state39;
    static const sc_lv<69> ap_ST_fsm_state40;
    static const sc_lv<69> ap_ST_fsm_state41;
    static const sc_lv<69> ap_ST_fsm_state42;
    static const sc_lv<69> ap_ST_fsm_state43;
    static const sc_lv<69> ap_ST_fsm_state44;
    static const sc_lv<69> ap_ST_fsm_state45;
    static const sc_lv<69> ap_ST_fsm_state46;
    static const sc_lv<69> ap_ST_fsm_state47;
    static const sc_lv<69> ap_ST_fsm_pp0_stage0;
    static const sc_lv<69> ap_ST_fsm_pp0_stage1;
    static const sc_lv<69> ap_ST_fsm_pp0_stage2;
    static const sc_lv<69> ap_ST_fsm_pp0_stage3;
    static const sc_lv<69> ap_ST_fsm_pp0_stage4;
    static const sc_lv<69> ap_ST_fsm_state64;
    static const sc_lv<69> ap_ST_fsm_state65;
    static const sc_lv<69> ap_ST_fsm_state66;
    static const sc_lv<69> ap_ST_fsm_state67;
    static const sc_lv<69> ap_ST_fsm_state68;
    static const sc_lv<69> ap_ST_fsm_state69;
    static const sc_lv<69> ap_ST_fsm_state70;
    static const sc_lv<69> ap_ST_fsm_state71;
    static const sc_lv<69> ap_ST_fsm_state72;
    static const sc_lv<69> ap_ST_fsm_state73;
    static const sc_lv<69> ap_ST_fsm_state74;
    static const sc_lv<69> ap_ST_fsm_state75;
    static const sc_lv<69> ap_ST_fsm_state76;
    static const sc_lv<69> ap_ST_fsm_state77;
    static const sc_lv<69> ap_ST_fsm_state78;
    static const sc_lv<69> ap_ST_fsm_state79;
    static const sc_lv<69> ap_ST_fsm_state80;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_43;
    static const sc_lv<32> ap_const_lv32_44;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_2F;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_2D;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_41;
    static const sc_lv<32> ap_const_lv32_42;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<33> ap_const_lv33_0;
    static const sc_lv<26> ap_const_lv26_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<32> ap_const_lv32_BD4CCCCD;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<32> ap_const_lv32_64;
    static const sc_lv<65> ap_const_lv65_147AE147B;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<26> ap_const_lv26_1;
    static const sc_lv<10> ap_const_lv10_310;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<33> ap_const_lv33_64;
    static const sc_lv<33> ap_const_lv33_1;
    static const sc_lv<7> ap_const_lv7_64;
    static const sc_lv<64> ap_const_lv64_310;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<17> ap_const_lv17_310;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_TILE_SIZE_1_fu_488_p3();
    void thread_TILE_SIZE_fu_483_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state36();
    void thread_ap_CS_fsm_state37();
    void thread_ap_CS_fsm_state38();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state41();
    void thread_ap_CS_fsm_state42();
    void thread_ap_CS_fsm_state43();
    void thread_ap_CS_fsm_state44();
    void thread_ap_CS_fsm_state45();
    void thread_ap_CS_fsm_state46();
    void thread_ap_CS_fsm_state47();
    void thread_ap_CS_fsm_state64();
    void thread_ap_CS_fsm_state67();
    void thread_ap_CS_fsm_state68();
    void thread_ap_CS_fsm_state76();
    void thread_ap_CS_fsm_state77();
    void thread_ap_CS_fsm_state78();
    void thread_ap_CS_fsm_state79();
    void thread_ap_CS_fsm_state80();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_00001();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_00001();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_pp0_stage4_11001();
    void thread_ap_block_pp0_stage4_subdone();
    void thread_ap_block_state48_pp0_stage0_iter0();
    void thread_ap_block_state49_pp0_stage1_iter0();
    void thread_ap_block_state50_pp0_stage2_iter0();
    void thread_ap_block_state51_pp0_stage3_iter0();
    void thread_ap_block_state52_pp0_stage4_iter0();
    void thread_ap_block_state53_pp0_stage0_iter1();
    void thread_ap_block_state54_pp0_stage1_iter1();
    void thread_ap_block_state55_pp0_stage2_iter1();
    void thread_ap_block_state56_pp0_stage3_iter1();
    void thread_ap_block_state57_pp0_stage4_iter1();
    void thread_ap_block_state58_pp0_stage0_iter2();
    void thread_ap_block_state59_pp0_stage1_iter2();
    void thread_ap_block_state60_pp0_stage2_iter2();
    void thread_ap_block_state61_pp0_stage3_iter2();
    void thread_ap_block_state62_pp0_stage4_iter2();
    void thread_ap_block_state63_pp0_stage0_iter3();
    void thread_ap_block_state78();
    void thread_ap_condition_pp0_exit_iter0_state48();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_i_phi_fu_408_p4();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_bound_fu_510_p0();
    void thread_bound_fu_510_p00();
    void thread_bound_fu_510_p2();
    void thread_exitcond1_fu_586_p2();
    void thread_exitcond2_fu_547_p2();
    void thread_exitcond3_fu_495_p2();
    void thread_exitcond8_fu_700_p2();
    void thread_exitcond_flatten_fu_530_p2();
    void thread_exitcond_fu_640_p2();
    void thread_grp_fu_426_opcode();
    void thread_grp_fu_426_p0();
    void thread_grp_fu_426_p1();
    void thread_grp_fu_431_p0();
    void thread_grp_fu_431_p1();
    void thread_grp_fu_448_ap_start();
    void thread_grp_fu_448_p1();
    void thread_i_2_fu_635_p2();
    void thread_i_3_fu_677_p2();
    void thread_i_mid2_fu_553_p3();
    void thread_index_buf_address0();
    void thread_index_buf_ce0();
    void thread_index_buf_d0();
    void thread_index_buf_we0();
    void thread_indvar_flatten_next_fu_535_p2();
    void thread_input_buf_address0();
    void thread_input_buf_ce0();
    void thread_input_buf_d0();
    void thread_input_buf_we0();
    void thread_j_1_fu_501_p2();
    void thread_j_2_fu_592_p2();
    void thread_kernel_in_stream_TDATA_blk_n();
    void thread_kernel_in_stream_TREADY();
    void thread_kernel_in_stream_data_V_0_ack_in();
    void thread_kernel_in_stream_data_V_0_ack_out();
    void thread_kernel_in_stream_data_V_0_data_out();
    void thread_kernel_in_stream_data_V_0_load_A();
    void thread_kernel_in_stream_data_V_0_load_B();
    void thread_kernel_in_stream_data_V_0_sel();
    void thread_kernel_in_stream_data_V_0_state_cmp_full();
    void thread_kernel_in_stream_data_V_0_vld_in();
    void thread_kernel_in_stream_data_V_0_vld_out();
    void thread_kernel_in_stream_dest_V_0_ack_out();
    void thread_kernel_in_stream_dest_V_0_vld_in();
    void thread_kernel_index_stream_TDATA_blk_n();
    void thread_kernel_index_stream_TREADY();
    void thread_kernel_index_stream_data_V_0_ack_in();
    void thread_kernel_index_stream_data_V_0_ack_out();
    void thread_kernel_index_stream_data_V_0_data_out();
    void thread_kernel_index_stream_data_V_0_load_A();
    void thread_kernel_index_stream_data_V_0_load_B();
    void thread_kernel_index_stream_data_V_0_sel();
    void thread_kernel_index_stream_data_V_0_state_cmp_full();
    void thread_kernel_index_stream_data_V_0_vld_in();
    void thread_kernel_index_stream_data_V_0_vld_out();
    void thread_kernel_index_stream_dest_V_0_ack_out();
    void thread_kernel_index_stream_dest_V_0_vld_in();
    void thread_kernel_out_stream_TDATA();
    void thread_kernel_out_stream_TDATA_blk_n();
    void thread_kernel_out_stream_TDEST();
    void thread_kernel_out_stream_TID();
    void thread_kernel_out_stream_TKEEP();
    void thread_kernel_out_stream_TLAST();
    void thread_kernel_out_stream_TSTRB();
    void thread_kernel_out_stream_TUSER();
    void thread_kernel_out_stream_TVALID();
    void thread_kernel_out_stream_data_V_1_ack_in();
    void thread_kernel_out_stream_data_V_1_ack_out();
    void thread_kernel_out_stream_data_V_1_data_out();
    void thread_kernel_out_stream_data_V_1_load_A();
    void thread_kernel_out_stream_data_V_1_load_B();
    void thread_kernel_out_stream_data_V_1_sel();
    void thread_kernel_out_stream_data_V_1_state_cmp_full();
    void thread_kernel_out_stream_data_V_1_vld_in();
    void thread_kernel_out_stream_data_V_1_vld_out();
    void thread_kernel_out_stream_dest_V_1_ack_in();
    void thread_kernel_out_stream_dest_V_1_ack_out();
    void thread_kernel_out_stream_dest_V_1_data_out();
    void thread_kernel_out_stream_dest_V_1_sel();
    void thread_kernel_out_stream_dest_V_1_vld_in();
    void thread_kernel_out_stream_dest_V_1_vld_out();
    void thread_kernel_out_stream_id_V_1_ack_in();
    void thread_kernel_out_stream_id_V_1_ack_out();
    void thread_kernel_out_stream_id_V_1_data_out();
    void thread_kernel_out_stream_id_V_1_sel();
    void thread_kernel_out_stream_id_V_1_vld_in();
    void thread_kernel_out_stream_id_V_1_vld_out();
    void thread_kernel_out_stream_keep_V_1_ack_in();
    void thread_kernel_out_stream_keep_V_1_ack_out();
    void thread_kernel_out_stream_keep_V_1_data_out();
    void thread_kernel_out_stream_keep_V_1_sel();
    void thread_kernel_out_stream_keep_V_1_vld_in();
    void thread_kernel_out_stream_keep_V_1_vld_out();
    void thread_kernel_out_stream_last_V_1_ack_in();
    void thread_kernel_out_stream_last_V_1_ack_out();
    void thread_kernel_out_stream_last_V_1_data_out();
    void thread_kernel_out_stream_last_V_1_load_A();
    void thread_kernel_out_stream_last_V_1_load_B();
    void thread_kernel_out_stream_last_V_1_sel();
    void thread_kernel_out_stream_last_V_1_state_cmp_full();
    void thread_kernel_out_stream_last_V_1_vld_in();
    void thread_kernel_out_stream_last_V_1_vld_out();
    void thread_kernel_out_stream_strb_V_1_ack_in();
    void thread_kernel_out_stream_strb_V_1_ack_out();
    void thread_kernel_out_stream_strb_V_1_data_out();
    void thread_kernel_out_stream_strb_V_1_sel();
    void thread_kernel_out_stream_strb_V_1_vld_in();
    void thread_kernel_out_stream_strb_V_1_vld_out();
    void thread_kernel_out_stream_user_V_1_ack_in();
    void thread_kernel_out_stream_user_V_1_ack_out();
    void thread_kernel_out_stream_user_V_1_data_out();
    void thread_kernel_out_stream_user_V_1_sel();
    void thread_kernel_out_stream_user_V_1_vld_in();
    void thread_kernel_out_stream_user_V_1_vld_out();
    void thread_l_1_fu_646_p2();
    void thread_last_assign_fu_716_p2();
    void thread_length_x_0_ack_out();
    void thread_m_fu_694_p2();
    void thread_m_mid2_fu_572_p0();
    void thread_m_mid2_fu_572_p00();
    void thread_m_mid2_fu_572_p2();
    void thread_m_mid2_v_v_fu_561_p3();
    void thread_mul_fu_457_p1();
    void thread_mul_fu_457_p10();
    void thread_mul_fu_457_p2();
    void thread_next_mul_fu_624_p2();
    void thread_os_idx_2_fu_705_p2();
    void thread_p_1_fu_541_p2();
    void thread_result_buf_address0();
    void thread_result_buf_ce0();
    void thread_result_buf_we0();
    void thread_temp2_buf_address0();
    void thread_temp2_buf_ce0();
    void thread_temp2_buf_we0();
    void thread_tmp_10_cast_fu_652_p1();
    void thread_tmp_10_fu_656_p2();
    void thread_tmp_11_fu_689_p1();
    void thread_tmp_13_cast_fu_661_p1();
    void thread_tmp_1_fu_516_p1();
    void thread_tmp_2_fu_726_p0();
    void thread_tmp_2_fu_726_p00();
    void thread_tmp_2_fu_726_p1();
    void thread_tmp_3_cast_fu_616_p1();
    void thread_tmp_3_fu_602_p2();
    void thread_tmp_3_i_fu_683_p1();
    void thread_tmp_3_mid2_fu_578_p2();
    void thread_tmp_4_cast_fu_598_p1();
    void thread_tmp_4_fu_473_p1();
    void thread_tmp_5_fu_620_p1();
    void thread_tmp_6_fu_666_p1();
    void thread_tmp_7_fu_711_p1();
    void thread_tmp_8_fu_477_p2();
    void thread_tmp_9_fu_721_p1();
    void thread_tmp_i_fu_671_p2();
    void thread_tmp_s_fu_630_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
