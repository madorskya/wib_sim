-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Aug 23 18:51:09 2020
-- Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_pdts_endpoint_0_0 -prefix
--               design_1_pdts_endpoint_0_0_ design_1_pdts_endpoint_0_0_stub.vhdl
-- Design      : design_1_pdts_endpoint_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_pdts_endpoint_0_0 is
  Port ( 
    sclk : in STD_LOGIC;
    srst : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tgrp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rec_clk : in STD_LOGIC;
    rec_d_clk : in STD_LOGIC;
    rec_d : in STD_LOGIC;
    rec_clk_locked : in STD_LOGIC;
    rec_clk_reset : out STD_LOGIC;
    sfp_los : in STD_LOGIC;
    cdr_los : in STD_LOGIC;
    cdr_lol : in STD_LOGIC;
    clk : out STD_LOGIC;
    rst : out STD_LOGIC;
    rdy : out STD_LOGIC;
    sync : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sync_v : out STD_LOGIC;
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    evtctr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_pdts_endpoint_0_0;

architecture stub of design_1_pdts_endpoint_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sclk,srst,addr[7:0],tgrp[1:0],stat[3:0],rec_clk,rec_d_clk,rec_d,rec_clk_locked,rec_clk_reset,sfp_los,cdr_los,cdr_lol,clk,rst,rdy,sync[3:0],sync_v,tstamp[63:0],evtctr[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "pdts_endpoint,Vivado 2020.1";
begin
end;
