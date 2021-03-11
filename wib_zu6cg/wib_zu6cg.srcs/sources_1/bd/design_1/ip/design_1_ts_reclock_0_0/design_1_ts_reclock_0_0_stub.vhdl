-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Mar 11 13:00:45 2021
-- Host        : endcap-tf1.phys.ufl.edu running 64-bit CentOS Linux release 7.8.2003 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_ts_reclock_0_0/design_1_ts_reclock_0_0_stub.vhdl
-- Design      : design_1_ts_reclock_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ts_reclock_0_0 is
  Port ( 
    stat_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_in : in STD_LOGIC;
    rdy_in : in STD_LOGIC;
    sync_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sync_stb_in : in STD_LOGIC;
    sync_first_in : in STD_LOGIC;
    tstamp_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    stat_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_out : out STD_LOGIC;
    rdy_out : out STD_LOGIC;
    sync_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sync_stb_out : out STD_LOGIC;
    sync_first_out : out STD_LOGIC;
    tstamp_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ts_valid : out STD_LOGIC;
    clk62p5 : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    fifo_valid : out STD_LOGIC;
    cmd_code_idle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_edge : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_sync : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_act : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_reset : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_adc_reset : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_bit_idle : out STD_LOGIC;
    cmd_bit_edge : out STD_LOGIC;
    cmd_bit_sync : out STD_LOGIC;
    cmd_bit_act : out STD_LOGIC;
    cmd_bit_reset : out STD_LOGIC;
    cmd_bit_adc_reset : out STD_LOGIC;
    fake_time_stamp_en : in STD_LOGIC;
    fake_time_stamp_init : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end design_1_ts_reclock_0_0;

architecture stub of design_1_ts_reclock_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "stat_in[3:0],rst_in,rdy_in,sync_in[3:0],sync_stb_in,sync_first_in,tstamp_in[63:0],stat_out[3:0],rst_out,rdy_out,sync_out[3:0],sync_stb_out,sync_first_out,tstamp_out[63:0],ts_valid,clk62p5,fifo_rst,fifo_valid,cmd_code_idle[7:0],cmd_code_edge[7:0],cmd_code_sync[7:0],cmd_code_act[7:0],cmd_code_reset[7:0],cmd_code_adc_reset[7:0],cmd_bit_idle,cmd_bit_edge,cmd_bit_sync,cmd_bit_act,cmd_bit_reset,cmd_bit_adc_reset,fake_time_stamp_en,fake_time_stamp_init[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ts_reclock,Vivado 2020.1";
begin
end;
