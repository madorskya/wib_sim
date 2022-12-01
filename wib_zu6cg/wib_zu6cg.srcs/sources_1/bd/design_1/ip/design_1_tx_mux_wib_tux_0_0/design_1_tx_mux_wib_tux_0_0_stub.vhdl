-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Nov 28 11:38:31 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_tx_mux_wib_tux_0_0/design_1_tx_mux_wib_tux_0_0_stub.vhdl
-- Design      : design_1_tx_mux_wib_tux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_tx_mux_wib_tux_0_0 is
  Port ( 
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    eth_tx_p : out STD_LOGIC;
    eth_tx_n : out STD_LOGIC;
    eth_rx_p : in STD_LOGIC;
    eth_rx_n : in STD_LOGIC;
    eth_clk_p : in STD_LOGIC;
    eth_clk_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    d0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    d0_valid : in STD_LOGIC;
    d0_last : in STD_LOGIC;
    d1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    d1_valid : in STD_LOGIC;
    d1_last : in STD_LOGIC;
    d2 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    d2_valid : in STD_LOGIC;
    d2_last : in STD_LOGIC;
    d3 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    d3_valid : in STD_LOGIC;
    d3_last : in STD_LOGIC;
    d4 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    d4_valid : in STD_LOGIC;
    d4_last : in STD_LOGIC;
    d5 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    d5_valid : in STD_LOGIC;
    d5_last : in STD_LOGIC;
    d6 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    d6_valid : in STD_LOGIC;
    d6_last : in STD_LOGIC;
    d7 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    d7_valid : in STD_LOGIC;
    d7_last : in STD_LOGIC
  );

end design_1_tx_mux_wib_tux_0_0;

architecture stub of design_1_tx_mux_wib_tux_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[7:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[7:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,eth_tx_p,eth_tx_n,eth_rx_p,eth_rx_n,eth_clk_p,eth_clk_n,clk,rst,d0[63:0],d0_valid,d0_last,d1[63:0],d1_valid,d1_last,d2[63:0],d2_valid,d2_last,d3[63:0],d3_valid,d3_last,d4[63:0],d4_valid,d4_last,d5[63:0],d5_valid,d5_last,d6[63:0],d6_valid,d6_last,d7[63:0],d7_valid,d7_last";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tx_mux_wib_tux,Vivado 2020.1";
begin
end;
