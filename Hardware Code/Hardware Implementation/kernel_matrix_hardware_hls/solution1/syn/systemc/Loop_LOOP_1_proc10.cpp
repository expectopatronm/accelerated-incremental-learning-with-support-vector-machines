// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Loop_LOOP_1_proc10.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Loop_LOOP_1_proc10::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Loop_LOOP_1_proc10::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> Loop_LOOP_1_proc10::ap_ST_fsm_state1 = "1";
const sc_lv<3> Loop_LOOP_1_proc10::ap_ST_fsm_state2 = "10";
const sc_lv<3> Loop_LOOP_1_proc10::ap_ST_fsm_state3 = "100";
const sc_lv<32> Loop_LOOP_1_proc10::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> Loop_LOOP_1_proc10::ap_const_lv1_0 = "0";
const sc_lv<1> Loop_LOOP_1_proc10::ap_const_lv1_1 = "1";
const sc_lv<2> Loop_LOOP_1_proc10::ap_const_lv2_0 = "00";
const sc_lv<2> Loop_LOOP_1_proc10::ap_const_lv2_2 = "10";
const sc_lv<2> Loop_LOOP_1_proc10::ap_const_lv2_3 = "11";
const sc_lv<2> Loop_LOOP_1_proc10::ap_const_lv2_1 = "1";
const sc_lv<32> Loop_LOOP_1_proc10::ap_const_lv32_1 = "1";
const sc_lv<10> Loop_LOOP_1_proc10::ap_const_lv10_0 = "0000000000";
const sc_lv<10> Loop_LOOP_1_proc10::ap_const_lv10_310 = "1100010000";
const sc_lv<10> Loop_LOOP_1_proc10::ap_const_lv10_1 = "1";
const sc_lv<32> Loop_LOOP_1_proc10::ap_const_lv32_2 = "10";
const bool Loop_LOOP_1_proc10::ap_const_boolean_1 = true;

Loop_LOOP_1_proc10::Loop_LOOP_1_proc10(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( length_x_out_full_n );
    sensitive << ( tile_size_out_full_n );
    sensitive << ( remaining_size_out_full_n );

    SC_METHOD(thread_ap_block_state2);
    sensitive << ( kernel_index_stream_data_V_0_vld_out );
    sensitive << ( icmp_ln39_fu_162_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_icmp_ln39_fu_162_p2);
    sensitive << ( kernel_index_stream_data_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln39_fu_162_p2 );
    sensitive << ( is_idx1_0_i_i_i_i_reg_151 );

    SC_METHOD(thread_index_buf_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln41_fu_174_p1 );

    SC_METHOD(thread_index_buf_ce0);
    sensitive << ( kernel_index_stream_data_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln39_fu_162_p2 );

    SC_METHOD(thread_index_buf_d0);
    sensitive << ( kernel_index_stream_data_V_0_data_out );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_index_buf_we0);
    sensitive << ( kernel_index_stream_data_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln39_fu_162_p2 );

    SC_METHOD(thread_is_idx1_fu_168_p2);
    sensitive << ( is_idx1_0_i_i_i_i_reg_151 );

    SC_METHOD(thread_kernel_index_stream_TDATA_blk_n);
    sensitive << ( kernel_index_stream_data_V_0_state );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln39_fu_162_p2 );

    SC_METHOD(thread_kernel_index_stream_TREADY);
    sensitive << ( kernel_index_stream_dest_V_0_state );

    SC_METHOD(thread_kernel_index_stream_data_V_0_ack_in);
    sensitive << ( kernel_index_stream_data_V_0_state );

    SC_METHOD(thread_kernel_index_stream_data_V_0_ack_out);
    sensitive << ( kernel_index_stream_data_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln39_fu_162_p2 );

    SC_METHOD(thread_kernel_index_stream_data_V_0_data_out);
    sensitive << ( kernel_index_stream_data_V_0_payload_A );
    sensitive << ( kernel_index_stream_data_V_0_payload_B );
    sensitive << ( kernel_index_stream_data_V_0_sel );

    SC_METHOD(thread_kernel_index_stream_data_V_0_load_A);
    sensitive << ( kernel_index_stream_data_V_0_sel_wr );
    sensitive << ( kernel_index_stream_data_V_0_state_cmp_full );

    SC_METHOD(thread_kernel_index_stream_data_V_0_load_B);
    sensitive << ( kernel_index_stream_data_V_0_sel_wr );
    sensitive << ( kernel_index_stream_data_V_0_state_cmp_full );

    SC_METHOD(thread_kernel_index_stream_data_V_0_sel);
    sensitive << ( kernel_index_stream_data_V_0_sel_rd );

    SC_METHOD(thread_kernel_index_stream_data_V_0_state_cmp_full);
    sensitive << ( kernel_index_stream_data_V_0_state );

    SC_METHOD(thread_kernel_index_stream_data_V_0_vld_in);
    sensitive << ( kernel_index_stream_TVALID );

    SC_METHOD(thread_kernel_index_stream_data_V_0_vld_out);
    sensitive << ( kernel_index_stream_data_V_0_state );

    SC_METHOD(thread_kernel_index_stream_dest_V_0_ack_out);
    sensitive << ( kernel_index_stream_data_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln39_fu_162_p2 );

    SC_METHOD(thread_kernel_index_stream_dest_V_0_vld_in);
    sensitive << ( kernel_index_stream_TVALID );

    SC_METHOD(thread_length_x_out_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( length_x_out_full_n );

    SC_METHOD(thread_length_x_out_din);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( length_x );
    sensitive << ( length_x_out_full_n );
    sensitive << ( tile_size_out_full_n );
    sensitive << ( remaining_size_out_full_n );

    SC_METHOD(thread_length_x_out_write);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( length_x_out_full_n );
    sensitive << ( tile_size_out_full_n );
    sensitive << ( remaining_size_out_full_n );

    SC_METHOD(thread_remaining_size_out_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( remaining_size_out_full_n );

    SC_METHOD(thread_remaining_size_out_din);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( remaining_size );
    sensitive << ( length_x_out_full_n );
    sensitive << ( tile_size_out_full_n );
    sensitive << ( remaining_size_out_full_n );

    SC_METHOD(thread_remaining_size_out_write);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( length_x_out_full_n );
    sensitive << ( tile_size_out_full_n );
    sensitive << ( remaining_size_out_full_n );

    SC_METHOD(thread_tile_size_out_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( tile_size_out_full_n );

    SC_METHOD(thread_tile_size_out_din);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( tile_size );
    sensitive << ( length_x_out_full_n );
    sensitive << ( tile_size_out_full_n );
    sensitive << ( remaining_size_out_full_n );

    SC_METHOD(thread_tile_size_out_write);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( length_x_out_full_n );
    sensitive << ( tile_size_out_full_n );
    sensitive << ( remaining_size_out_full_n );

    SC_METHOD(thread_zext_ln41_fu_174_p1);
    sensitive << ( is_idx1_0_i_i_i_i_reg_151 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_index_stream_data_V_0_vld_out );
    sensitive << ( length_x_out_full_n );
    sensitive << ( tile_size_out_full_n );
    sensitive << ( remaining_size_out_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln39_fu_162_p2 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    kernel_index_stream_data_V_0_sel_rd = SC_LOGIC_0;
    kernel_index_stream_data_V_0_sel_wr = SC_LOGIC_0;
    kernel_index_stream_data_V_0_state = "00";
    kernel_index_stream_dest_V_0_state = "00";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Loop_LOOP_1_proc10_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, kernel_index_stream_TDATA, "(port)kernel_index_stream_TDATA");
    sc_trace(mVcdFile, kernel_index_stream_TVALID, "(port)kernel_index_stream_TVALID");
    sc_trace(mVcdFile, kernel_index_stream_TREADY, "(port)kernel_index_stream_TREADY");
    sc_trace(mVcdFile, kernel_index_stream_TSTRB, "(port)kernel_index_stream_TSTRB");
    sc_trace(mVcdFile, kernel_index_stream_TKEEP, "(port)kernel_index_stream_TKEEP");
    sc_trace(mVcdFile, kernel_index_stream_TUSER, "(port)kernel_index_stream_TUSER");
    sc_trace(mVcdFile, kernel_index_stream_TLAST, "(port)kernel_index_stream_TLAST");
    sc_trace(mVcdFile, kernel_index_stream_TID, "(port)kernel_index_stream_TID");
    sc_trace(mVcdFile, kernel_index_stream_TDEST, "(port)kernel_index_stream_TDEST");
    sc_trace(mVcdFile, index_buf_address0, "(port)index_buf_address0");
    sc_trace(mVcdFile, index_buf_ce0, "(port)index_buf_ce0");
    sc_trace(mVcdFile, index_buf_we0, "(port)index_buf_we0");
    sc_trace(mVcdFile, index_buf_d0, "(port)index_buf_d0");
    sc_trace(mVcdFile, length_x, "(port)length_x");
    sc_trace(mVcdFile, tile_size, "(port)tile_size");
    sc_trace(mVcdFile, remaining_size, "(port)remaining_size");
    sc_trace(mVcdFile, length_x_out_din, "(port)length_x_out_din");
    sc_trace(mVcdFile, length_x_out_full_n, "(port)length_x_out_full_n");
    sc_trace(mVcdFile, length_x_out_write, "(port)length_x_out_write");
    sc_trace(mVcdFile, tile_size_out_din, "(port)tile_size_out_din");
    sc_trace(mVcdFile, tile_size_out_full_n, "(port)tile_size_out_full_n");
    sc_trace(mVcdFile, tile_size_out_write, "(port)tile_size_out_write");
    sc_trace(mVcdFile, remaining_size_out_din, "(port)remaining_size_out_din");
    sc_trace(mVcdFile, remaining_size_out_full_n, "(port)remaining_size_out_full_n");
    sc_trace(mVcdFile, remaining_size_out_write, "(port)remaining_size_out_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_data_out, "kernel_index_stream_data_V_0_data_out");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_vld_in, "kernel_index_stream_data_V_0_vld_in");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_vld_out, "kernel_index_stream_data_V_0_vld_out");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_ack_in, "kernel_index_stream_data_V_0_ack_in");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_ack_out, "kernel_index_stream_data_V_0_ack_out");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_payload_A, "kernel_index_stream_data_V_0_payload_A");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_payload_B, "kernel_index_stream_data_V_0_payload_B");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_sel_rd, "kernel_index_stream_data_V_0_sel_rd");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_sel_wr, "kernel_index_stream_data_V_0_sel_wr");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_sel, "kernel_index_stream_data_V_0_sel");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_load_A, "kernel_index_stream_data_V_0_load_A");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_load_B, "kernel_index_stream_data_V_0_load_B");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_state, "kernel_index_stream_data_V_0_state");
    sc_trace(mVcdFile, kernel_index_stream_data_V_0_state_cmp_full, "kernel_index_stream_data_V_0_state_cmp_full");
    sc_trace(mVcdFile, kernel_index_stream_dest_V_0_vld_in, "kernel_index_stream_dest_V_0_vld_in");
    sc_trace(mVcdFile, kernel_index_stream_dest_V_0_ack_out, "kernel_index_stream_dest_V_0_ack_out");
    sc_trace(mVcdFile, kernel_index_stream_dest_V_0_state, "kernel_index_stream_dest_V_0_state");
    sc_trace(mVcdFile, kernel_index_stream_TDATA_blk_n, "kernel_index_stream_TDATA_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln39_fu_162_p2, "icmp_ln39_fu_162_p2");
    sc_trace(mVcdFile, length_x_out_blk_n, "length_x_out_blk_n");
    sc_trace(mVcdFile, tile_size_out_blk_n, "tile_size_out_blk_n");
    sc_trace(mVcdFile, remaining_size_out_blk_n, "remaining_size_out_blk_n");
    sc_trace(mVcdFile, is_idx1_fu_168_p2, "is_idx1_fu_168_p2");
    sc_trace(mVcdFile, ap_block_state2, "ap_block_state2");
    sc_trace(mVcdFile, is_idx1_0_i_i_i_i_reg_151, "is_idx1_0_i_i_i_i_reg_151");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, zext_ln41_fu_174_p1, "zext_ln41_fu_174_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

Loop_LOOP_1_proc10::~Loop_LOOP_1_proc10() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Loop_LOOP_1_proc10::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_vld_out.read())))) {
        is_idx1_0_i_i_i_i_reg_151 = is_idx1_fu_168_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, length_x_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, tile_size_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, remaining_size_out_full_n.read())))) {
        is_idx1_0_i_i_i_i_reg_151 = ap_const_lv10_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        kernel_index_stream_data_V_0_sel_rd = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_ack_out.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_vld_out.read()))) {
            kernel_index_stream_data_V_0_sel_rd =  (sc_logic) (~kernel_index_stream_data_V_0_sel_rd.read());
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        kernel_index_stream_data_V_0_sel_wr = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_vld_in.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_ack_in.read()))) {
            kernel_index_stream_data_V_0_sel_wr =  (sc_logic) (~kernel_index_stream_data_V_0_sel_wr.read());
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        kernel_index_stream_data_V_0_state = ap_const_lv2_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_vld_in.read()) && 
              esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_ack_out.read()) && 
              esl_seteq<1,2,2>(kernel_index_stream_data_V_0_state.read(), ap_const_lv2_3)) || 
             (esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_vld_in.read()) && 
              esl_seteq<1,2,2>(kernel_index_stream_data_V_0_state.read(), ap_const_lv2_2)))) {
            kernel_index_stream_data_V_0_state = ap_const_lv2_2;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_vld_in.read()) && 
                     esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(kernel_index_stream_data_V_0_state.read(), ap_const_lv2_3)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(kernel_index_stream_data_V_0_state.read(), ap_const_lv2_1)))) {
            kernel_index_stream_data_V_0_state = ap_const_lv2_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_vld_in.read()) && 
                     esl_seteq<1,2,2>(kernel_index_stream_data_V_0_state.read(), ap_const_lv2_2)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(kernel_index_stream_data_V_0_state.read(), ap_const_lv2_1)) || 
                    (esl_seteq<1,2,2>(kernel_index_stream_data_V_0_state.read(), ap_const_lv2_3) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_ack_out.read())) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_ack_out.read()))))) {
            kernel_index_stream_data_V_0_state = ap_const_lv2_3;
        } else {
            kernel_index_stream_data_V_0_state = ap_const_lv2_2;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        kernel_index_stream_dest_V_0_state = ap_const_lv2_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_dest_V_0_vld_in.read()) && 
              esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_dest_V_0_ack_out.read()) && 
              esl_seteq<1,2,2>(ap_const_lv2_3, kernel_index_stream_dest_V_0_state.read())) || 
             (esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_dest_V_0_vld_in.read()) && 
              esl_seteq<1,2,2>(ap_const_lv2_2, kernel_index_stream_dest_V_0_state.read())))) {
            kernel_index_stream_dest_V_0_state = ap_const_lv2_2;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_dest_V_0_vld_in.read()) && 
                     esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_dest_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(ap_const_lv2_3, kernel_index_stream_dest_V_0_state.read())) || 
                    (esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_dest_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(ap_const_lv2_1, kernel_index_stream_dest_V_0_state.read())))) {
            kernel_index_stream_dest_V_0_state = ap_const_lv2_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_dest_V_0_vld_in.read()) && 
                     esl_seteq<1,2,2>(ap_const_lv2_2, kernel_index_stream_dest_V_0_state.read())) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_dest_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(ap_const_lv2_1, kernel_index_stream_dest_V_0_state.read())) || 
                    (esl_seteq<1,2,2>(ap_const_lv2_3, kernel_index_stream_dest_V_0_state.read()) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_dest_V_0_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_dest_V_0_ack_out.read())) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_dest_V_0_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_dest_V_0_ack_out.read()))))) {
            kernel_index_stream_dest_V_0_state = ap_const_lv2_3;
        } else {
            kernel_index_stream_dest_V_0_state = ap_const_lv2_2;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_load_A.read())) {
        kernel_index_stream_data_V_0_payload_A = kernel_index_stream_TDATA.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_load_B.read())) {
        kernel_index_stream_data_V_0_payload_B = kernel_index_stream_TDATA.read();
    }
}

void Loop_LOOP_1_proc10::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Loop_LOOP_1_proc10::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void Loop_LOOP_1_proc10::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void Loop_LOOP_1_proc10::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, length_x_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, tile_size_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, remaining_size_out_full_n.read()));
}

void Loop_LOOP_1_proc10::thread_ap_block_state2() {
    ap_block_state2 = (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_vld_out.read()));
}

void Loop_LOOP_1_proc10::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Loop_LOOP_1_proc10::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Loop_LOOP_1_proc10::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Loop_LOOP_1_proc10::thread_icmp_ln39_fu_162_p2() {
    icmp_ln39_fu_162_p2 = (!is_idx1_0_i_i_i_i_reg_151.read().is_01() || !ap_const_lv10_310.is_01())? sc_lv<1>(): sc_lv<1>(is_idx1_0_i_i_i_i_reg_151.read() == ap_const_lv10_310);
}

void Loop_LOOP_1_proc10::thread_index_buf_address0() {
    index_buf_address0 =  (sc_lv<10>) (zext_ln41_fu_174_p1.read());
}

void Loop_LOOP_1_proc10::thread_index_buf_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_vld_out.read())))) {
        index_buf_ce0 = ap_const_logic_1;
    } else {
        index_buf_ce0 = ap_const_logic_0;
    }
}

void Loop_LOOP_1_proc10::thread_index_buf_d0() {
    index_buf_d0 = kernel_index_stream_data_V_0_data_out.read();
}

void Loop_LOOP_1_proc10::thread_index_buf_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_vld_out.read())))) {
        index_buf_we0 = ap_const_logic_1;
    } else {
        index_buf_we0 = ap_const_logic_0;
    }
}

void Loop_LOOP_1_proc10::thread_is_idx1_fu_168_p2() {
    is_idx1_fu_168_p2 = (!is_idx1_0_i_i_i_i_reg_151.read().is_01() || !ap_const_lv10_1.is_01())? sc_lv<10>(): (sc_biguint<10>(is_idx1_0_i_i_i_i_reg_151.read()) + sc_biguint<10>(ap_const_lv10_1));
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()))) {
        kernel_index_stream_TDATA_blk_n = kernel_index_stream_data_V_0_state.read()[0];
    } else {
        kernel_index_stream_TDATA_blk_n = ap_const_logic_1;
    }
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_TREADY() {
    kernel_index_stream_TREADY = kernel_index_stream_dest_V_0_state.read()[1];
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_data_V_0_ack_in() {
    kernel_index_stream_data_V_0_ack_in = kernel_index_stream_data_V_0_state.read()[1];
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_data_V_0_ack_out() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_vld_out.read())))) {
        kernel_index_stream_data_V_0_ack_out = ap_const_logic_1;
    } else {
        kernel_index_stream_data_V_0_ack_out = ap_const_logic_0;
    }
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_data_V_0_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, kernel_index_stream_data_V_0_sel.read())) {
        kernel_index_stream_data_V_0_data_out = kernel_index_stream_data_V_0_payload_B.read();
    } else {
        kernel_index_stream_data_V_0_data_out = kernel_index_stream_data_V_0_payload_A.read();
    }
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_data_V_0_load_A() {
    kernel_index_stream_data_V_0_load_A = (kernel_index_stream_data_V_0_state_cmp_full.read() & ~kernel_index_stream_data_V_0_sel_wr.read());
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_data_V_0_load_B() {
    kernel_index_stream_data_V_0_load_B = (kernel_index_stream_data_V_0_sel_wr.read() & kernel_index_stream_data_V_0_state_cmp_full.read());
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_data_V_0_sel() {
    kernel_index_stream_data_V_0_sel = kernel_index_stream_data_V_0_sel_rd.read();
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_data_V_0_state_cmp_full() {
    kernel_index_stream_data_V_0_state_cmp_full =  (sc_logic) ((!kernel_index_stream_data_V_0_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(kernel_index_stream_data_V_0_state.read() != ap_const_lv2_1))[0];
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_data_V_0_vld_in() {
    kernel_index_stream_data_V_0_vld_in = kernel_index_stream_TVALID.read();
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_data_V_0_vld_out() {
    kernel_index_stream_data_V_0_vld_out = kernel_index_stream_data_V_0_state.read()[0];
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_dest_V_0_ack_out() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_vld_out.read())))) {
        kernel_index_stream_dest_V_0_ack_out = ap_const_logic_1;
    } else {
        kernel_index_stream_dest_V_0_ack_out = ap_const_logic_0;
    }
}

void Loop_LOOP_1_proc10::thread_kernel_index_stream_dest_V_0_vld_in() {
    kernel_index_stream_dest_V_0_vld_in = kernel_index_stream_TVALID.read();
}

void Loop_LOOP_1_proc10::thread_length_x_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        length_x_out_blk_n = length_x_out_full_n.read();
    } else {
        length_x_out_blk_n = ap_const_logic_1;
    }
}

void Loop_LOOP_1_proc10::thread_length_x_out_din() {
    length_x_out_din = length_x.read();
}

void Loop_LOOP_1_proc10::thread_length_x_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, length_x_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, tile_size_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, remaining_size_out_full_n.read())))) {
        length_x_out_write = ap_const_logic_1;
    } else {
        length_x_out_write = ap_const_logic_0;
    }
}

void Loop_LOOP_1_proc10::thread_remaining_size_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        remaining_size_out_blk_n = remaining_size_out_full_n.read();
    } else {
        remaining_size_out_blk_n = ap_const_logic_1;
    }
}

void Loop_LOOP_1_proc10::thread_remaining_size_out_din() {
    remaining_size_out_din = remaining_size.read();
}

void Loop_LOOP_1_proc10::thread_remaining_size_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, length_x_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, tile_size_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, remaining_size_out_full_n.read())))) {
        remaining_size_out_write = ap_const_logic_1;
    } else {
        remaining_size_out_write = ap_const_logic_0;
    }
}

void Loop_LOOP_1_proc10::thread_tile_size_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        tile_size_out_blk_n = tile_size_out_full_n.read();
    } else {
        tile_size_out_blk_n = ap_const_logic_1;
    }
}

void Loop_LOOP_1_proc10::thread_tile_size_out_din() {
    tile_size_out_din = tile_size.read();
}

void Loop_LOOP_1_proc10::thread_tile_size_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, length_x_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, tile_size_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, remaining_size_out_full_n.read())))) {
        tile_size_out_write = ap_const_logic_1;
    } else {
        tile_size_out_write = ap_const_logic_0;
    }
}

void Loop_LOOP_1_proc10::thread_zext_ln41_fu_174_p1() {
    zext_ln41_fu_174_p1 = esl_zext<64,10>(is_idx1_0_i_i_i_i_reg_151.read());
}

void Loop_LOOP_1_proc10::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, length_x_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, tile_size_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, remaining_size_out_full_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && !(esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_vld_out.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && !(esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_162_p2.read()) && esl_seteq<1,1,1>(ap_const_logic_0, kernel_index_stream_data_V_0_vld_out.read())) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln39_fu_162_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}

