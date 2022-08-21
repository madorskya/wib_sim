-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sat Aug 20 16:53:05 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_spi_mux_0_0/design_1_spi_mux_0_0_stub.vhdl
-- Design      : design_1_spi_mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_spi_mux_0_0 is
  Port ( 
    ss_t : in STD_LOGIC;
    sck_i : out STD_LOGIC;
    sck_o : in STD_LOGIC;
    sck_t : in STD_LOGIC;
    io0_i : out STD_LOGIC;
    io0_o : in STD_LOGIC;
    io0_t : in STD_LOGIC;
    io1_i : out STD_LOGIC;
    io1_o : in STD_LOGIC;
    io1_t : in STD_LOGIC;
    ss_o : in STD_LOGIC;
    ss1_o : in STD_LOGIC;
    adc_sck : inout STD_LOGIC;
    adc_sdo : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    adc_cs : out STD_LOGIC
  );

end design_1_spi_mux_0_0;

architecture stub of design_1_spi_mux_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ss_t,sck_i,sck_o,sck_t,io0_i,io0_o,io0_t,io1_i,io1_o,io1_t,ss_o,ss1_o,adc_sck,adc_sdo[3:0],adc_cs";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "spi_mux,Vivado 2020.1";
begin
end;
