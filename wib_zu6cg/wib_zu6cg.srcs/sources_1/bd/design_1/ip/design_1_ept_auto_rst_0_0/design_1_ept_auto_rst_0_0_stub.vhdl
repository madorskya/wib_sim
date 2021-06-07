-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri Jun  4 16:17:50 2021
-- Host        : lxeng99 running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/lxeng99/DUNE/wib_sim_timing_sync/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_ept_auto_rst_0_0/design_1_ept_auto_rst_0_0_stub.vhdl
-- Design      : design_1_ept_auto_rst_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ept_auto_rst_0_0 is
  Port ( 
    stat_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_in : in STD_LOGIC;
    srst_in : in STD_LOGIC;
    timeout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    retry_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pass_thru : in STD_LOGIC;
    ept_auto_rst_in : in STD_LOGIC;
    rst_out : out STD_LOGIC;
    err_out : out STD_LOGIC
  );

end design_1_ept_auto_rst_0_0;

architecture stub of design_1_ept_auto_rst_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "stat_in[3:0],clk_in,srst_in,timeout[31:0],retry_in[3:0],pass_thru,ept_auto_rst_in,rst_out,err_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ept_auto_rst,Vivado 2020.1";
begin
end;
