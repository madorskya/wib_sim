-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sun Dec  4 11:42:45 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_daq_spy_control_0_1/design_1_daq_spy_control_0_1_stub.vhdl
-- Design      : design_1_daq_spy_control_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_daq_spy_control_0_1 is
  Port ( 
    daq_stream : in STD_LOGIC_VECTOR ( 31 downto 0 );
    daq_stream_k : in STD_LOGIC_VECTOR ( 3 downto 0 );
    daq_data_type : in STD_LOGIC_VECTOR ( 1 downto 0 );
    daq_clk : in STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 19 downto 0 );
    bram_clk : out STD_LOGIC;
    bram_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en : out STD_LOGIC;
    bram_rst : out STD_LOGIC;
    bram_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    time_stamp : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk65p5 : in STD_LOGIC;
    reset : in STD_LOGIC;
    full : out STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    trigger : in STD_LOGIC;
    rec_time : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );

end design_1_daq_spy_control_0_1;

architecture stub of design_1_daq_spy_control_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "daq_stream[31:0],daq_stream_k[3:0],daq_data_type[1:0],daq_clk,bram_addr[19:0],bram_clk,bram_din[31:0],bram_en,bram_rst,bram_we[3:0],time_stamp[63:0],clk65p5,reset,full,state[2:0],trigger,rec_time[17:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "daq_spy_control,Vivado 2020.1";
begin
end;
