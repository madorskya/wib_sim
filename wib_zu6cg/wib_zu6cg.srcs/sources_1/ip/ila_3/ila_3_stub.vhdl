-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Nov 29 09:37:28 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/ip/ila_3/ila_3_stub.vhdl
-- Design      : ila_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_3 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end ila_3;

architecture stub of ila_3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[2:0],probe1[0:0],probe2[3:0],probe3[1:0],probe4[1:0],probe5[1:0],probe6[1:0],probe7[1:0],probe8[15:0],probe9[15:0],probe10[3:0],probe11[6:0],probe12[2:0],probe13[0:0],probe14[63:0],probe15[5:0],probe16[63:0],probe17[0:0],probe18[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2020.1";
begin
end;
