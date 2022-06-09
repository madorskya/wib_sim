-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Jun  8 15:45:31 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/ip/ila_deframer/ila_deframer_stub.vhdl
-- Design      : ila_deframer
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_deframer is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe42 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe48 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe50 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe51 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe52 : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );

end ila_deframer;

architecture stub of ila_deframer is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[14:0],probe1[14:0],probe2[14:0],probe3[14:0],probe4[14:0],probe5[14:0],probe6[14:0],probe7[14:0],probe8[14:0],probe9[14:0],probe10[14:0],probe11[14:0],probe12[14:0],probe13[14:0],probe14[14:0],probe15[14:0],probe16[15:0],probe17[15:0],probe18[63:0],probe19[63:0],probe20[7:0],probe21[7:0],probe22[7:0],probe23[7:0],probe24[7:0],probe25[7:0],probe26[7:0],probe27[7:0],probe28[7:0],probe29[7:0],probe30[7:0],probe31[7:0],probe32[7:0],probe33[7:0],probe34[7:0],probe35[7:0],probe36[15:0],probe37[17:0],probe38[17:0],probe39[17:0],probe40[17:0],probe41[17:0],probe42[17:0],probe43[17:0],probe44[17:0],probe45[17:0],probe46[17:0],probe47[17:0],probe48[17:0],probe49[17:0],probe50[17:0],probe51[17:0],probe52[17:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2020.1";
begin
end;
