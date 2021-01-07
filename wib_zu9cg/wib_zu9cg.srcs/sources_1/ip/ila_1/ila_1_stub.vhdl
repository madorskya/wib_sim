-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
-- Date        : Wed Dec 23 23:16:28 2020
-- Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/github/wib_sim/wib_zu9cg/wib_zu9cg.srcs/sources_1/ip/ila_1/ila_1_stub.vhdl
-- Design      : ila_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_1 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end ila_1;

architecture stub of ila_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[31:0],probe1[31:0],probe2[3:0],probe3[3:0],probe4[1:0],probe5[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2020.1.1_AR73018";
begin
end;
