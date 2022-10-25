-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Oct 25 11:03:12 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_pdts_endpoint_wrapper_0_0/design_1_pdts_endpoint_wrapper_0_0_stub.vhdl
-- Design      : design_1_pdts_endpoint_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_pdts_endpoint_wrapper_0_0 is
  Port ( 
    sclk : in STD_LOGIC;
    srst : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ts_clk_sel : in STD_LOGIC;
    rec_clk : in STD_LOGIC;
    rec_d : in STD_LOGIC;
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : out STD_LOGIC;
    clk2x : out STD_LOGIC;
    rst : out STD_LOGIC;
    rdy : out STD_LOGIC;
    sync : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sync_stb : out STD_LOGIC;
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    txd : out STD_LOGIC;
    tx_dis : out STD_LOGIC
  );

end design_1_pdts_endpoint_wrapper_0_0;

architecture stub of design_1_pdts_endpoint_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sclk,srst,addr[15:0],ts_clk_sel,rec_clk,rec_d,stat[3:0],clk,clk2x,rst,rdy,sync[7:0],sync_stb,tstamp[63:0],txd,tx_dis";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pdts_endpoint_wrapper,Vivado 2020.1";
begin
end;
