// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_LOOP_6_proc_HH_
#define _Loop_LOOP_6_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Loop_LOOP_6_proc : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > length_x_dout;
    sc_in< sc_logic > length_x_empty_n;
    sc_out< sc_logic > length_x_read;
    sc_out< sc_lv<12> > result_buf_address0;
    sc_out< sc_logic > result_buf_ce0;
    sc_in< sc_lv<32> > result_buf_q0;
    sc_out< sc_lv<32> > kernel_out_stream_TDATA;
    sc_out< sc_logic > kernel_out_stream_TVALID;
    sc_in< sc_logic > kernel_out_stream_TREADY;
    sc_out< sc_lv<4> > kernel_out_stream_TKEEP;
    sc_out< sc_lv<4> > kernel_out_stream_TSTRB;
    sc_out< sc_lv<4> > kernel_out_stream_TUSER;
    sc_out< sc_lv<1> > kernel_out_stream_TLAST;
    sc_out< sc_lv<5> > kernel_out_stream_TID;
    sc_out< sc_lv<5> > kernel_out_stream_TDEST;


    // Module declarations
    Loop_LOOP_6_proc(sc_module_name name);
    SC_HAS_PROCESS(Loop_LOOP_6_proc);

    ~Loop_LOOP_6_proc();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
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
    sc_signal< sc_logic > kernel_out_stream_keep_V_1_ack_out;
    sc_signal< sc_logic > kernel_out_stream_keep_V_1_sel_rd;
    sc_signal< sc_logic > kernel_out_stream_keep_V_1_sel;
    sc_signal< sc_lv<2> > kernel_out_stream_keep_V_1_state;
    sc_signal< sc_lv<4> > kernel_out_stream_strb_V_1_data_out;
    sc_signal< sc_logic > kernel_out_stream_strb_V_1_vld_in;
    sc_signal< sc_logic > kernel_out_stream_strb_V_1_vld_out;
    sc_signal< sc_logic > kernel_out_stream_strb_V_1_ack_out;
    sc_signal< sc_logic > kernel_out_stream_strb_V_1_sel_rd;
    sc_signal< sc_logic > kernel_out_stream_strb_V_1_sel;
    sc_signal< sc_lv<2> > kernel_out_stream_strb_V_1_state;
    sc_signal< sc_lv<4> > kernel_out_stream_user_V_1_data_out;
    sc_signal< sc_logic > kernel_out_stream_user_V_1_vld_in;
    sc_signal< sc_logic > kernel_out_stream_user_V_1_vld_out;
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
    sc_signal< sc_logic > length_x_blk_n;
    sc_signal< sc_logic > kernel_out_stream_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln64_reg_166;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > icmp_ln64_reg_166_pp0_iter1_reg;
    sc_signal< sc_lv<31> > os_idx_0_i_reg_115;
    sc_signal< sc_lv<32> > length_x_read_reg_160;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > icmp_ln64_fu_130_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_io;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_io;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<31> > os_idx_fu_135_p2;
    sc_signal< sc_lv<31> > os_idx_reg_170;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > icmp_ln67_fu_150_p2;
    sc_signal< sc_lv<1> > icmp_ln67_reg_180;
    sc_signal< sc_lv<32> > bitcast_ln66_fu_155_p1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_lv<31> > ap_phi_mux_os_idx_0_i_phi_fu_119_p4;
    sc_signal< sc_lv<64> > zext_ln66_fu_141_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > zext_ln64_fu_126_p1;
    sc_signal< sc_lv<32> > zext_ln67_fu_146_p1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< bool > ap_block_state5;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_io();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_io();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_os_idx_0_i_phi_fu_119_p4();
    void thread_ap_ready();
    void thread_bitcast_ln66_fu_155_p1();
    void thread_icmp_ln64_fu_130_p2();
    void thread_icmp_ln67_fu_150_p2();
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
    void thread_kernel_out_stream_id_V_1_ack_out();
    void thread_kernel_out_stream_id_V_1_data_out();
    void thread_kernel_out_stream_id_V_1_sel();
    void thread_kernel_out_stream_id_V_1_vld_in();
    void thread_kernel_out_stream_id_V_1_vld_out();
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
    void thread_kernel_out_stream_strb_V_1_ack_out();
    void thread_kernel_out_stream_strb_V_1_data_out();
    void thread_kernel_out_stream_strb_V_1_sel();
    void thread_kernel_out_stream_strb_V_1_vld_in();
    void thread_kernel_out_stream_strb_V_1_vld_out();
    void thread_kernel_out_stream_user_V_1_ack_out();
    void thread_kernel_out_stream_user_V_1_data_out();
    void thread_kernel_out_stream_user_V_1_sel();
    void thread_kernel_out_stream_user_V_1_vld_in();
    void thread_kernel_out_stream_user_V_1_vld_out();
    void thread_length_x_blk_n();
    void thread_length_x_read();
    void thread_os_idx_fu_135_p2();
    void thread_result_buf_address0();
    void thread_result_buf_ce0();
    void thread_zext_ln64_fu_126_p1();
    void thread_zext_ln66_fu_141_p1();
    void thread_zext_ln67_fu_146_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif