-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Feb  4 22:01:40 2021
-- Host        : endcap-tf1.phys.ufl.edu running 64-bit CentOS Linux release 7.8.2003 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_endpoint_wrapper_0_0/design_1_endpoint_wrapper_0_0_stub.vhdl
-- Design      : design_1_endpoint_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_endpoint_wrapper_0_0 is
  Port ( 
    sclk : in STD_LOGIC;
    srst : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tgrp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rec_clk : in STD_LOGIC;
    rec_d : in STD_LOGIC;
    sfp_los : in STD_LOGIC;
    cdr_los : in STD_LOGIC;
    cdr_lol : in STD_LOGIC;
    clk : out STD_LOGIC;
    rst : out STD_LOGIC;
    rdy : out STD_LOGIC;
    sync : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sync_stb : out STD_LOGIC;
    sync_first : out STD_LOGIC;
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end design_1_endpoint_wrapper_0_0;

architecture stub of design_1_endpoint_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sclk,srst,addr[7:0],tgrp[1:0],stat[3:0],rec_clk,rec_d,sfp_los,cdr_los,cdr_lol,clk,rst,rdy,sync[3:0],sync_stb,sync_first,tstamp[63:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "endpoint_wrapper,Vivado 2020.1.1_AR73018";
begin
end;
