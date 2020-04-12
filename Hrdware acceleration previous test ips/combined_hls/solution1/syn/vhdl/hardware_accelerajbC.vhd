-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

Library ieee;
use ieee.std_logic_1164.all;

entity hardware_accelerajbC is
    generic (
        ID         : integer := 4;
        NUM_STAGE  : integer := 1;
        din0_WIDTH : integer := 32;
        dout_WIDTH : integer := 64
    );
    port (
        din0 : in  std_logic_vector(din0_WIDTH-1 downto 0);
        dout : out std_logic_vector(dout_WIDTH-1 downto 0)
    );
end entity;

architecture arch of hardware_accelerajbC is
    --------------------- Component ---------------------
    component hardware_accelerator_ap_fpext_0_no_dsp_32 is
        port (
            s_axis_a_tvalid      : in  std_logic;
            s_axis_a_tdata       : in  std_logic_vector(31 downto 0);
            m_axis_result_tvalid : out std_logic;
            m_axis_result_tdata  : out std_logic_vector(63 downto 0)
        );
    end component;
    --------------------- Local signal ------------------
    signal a_tvalid : std_logic;
    signal a_tdata  : std_logic_vector(31 downto 0);
    signal r_tvalid : std_logic;
    signal r_tdata  : std_logic_vector(63 downto 0);
begin
    --------------------- Instantiation -----------------
    hardware_accelerator_ap_fpext_0_no_dsp_32_u : component hardware_accelerator_ap_fpext_0_no_dsp_32
    port map (
        s_axis_a_tvalid      => a_tvalid,
        s_axis_a_tdata       => a_tdata,
        m_axis_result_tvalid => r_tvalid,
        m_axis_result_tdata  => r_tdata
    );

    --------------------- Assignment --------------------
    a_tvalid <= '1';
    a_tdata  <= din0;
    dout     <= r_tdata;

end architecture;
