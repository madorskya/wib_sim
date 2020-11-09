-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Nov  3 17:09:38 2020
-- Host        : lxeng99 running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/lxeng99/DUNE/FELIX/WIB_GTH_felix/WIB_GTH_felix.srcs/sources_1/ip/FELIX_GTH/FELIX_GTH_stub.vhdl
-- Design      : FELIX_GTH
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FELIX_GTH is
  Port ( 
    gtwiz_userclk_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    gtwiz_userdata_rx_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    gtrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxn_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gthrxp_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gthtxn_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gthtxp_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end FELIX_GTH;

architecture stub of FELIX_GTH is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "gtwiz_userclk_tx_reset_in[0:0],gtwiz_userclk_tx_srcclk_out[0:0],gtwiz_userclk_tx_usrclk_out[0:0],gtwiz_userclk_tx_usrclk2_out[0:0],gtwiz_userclk_tx_active_out[0:0],gtwiz_userclk_rx_reset_in[0:0],gtwiz_userclk_rx_srcclk_out[0:0],gtwiz_userclk_rx_usrclk_out[0:0],gtwiz_userclk_rx_usrclk2_out[0:0],gtwiz_userclk_rx_active_out[0:0],gtwiz_reset_clk_freerun_in[0:0],gtwiz_reset_all_in[0:0],gtwiz_reset_tx_pll_and_datapath_in[0:0],gtwiz_reset_tx_datapath_in[0:0],gtwiz_reset_rx_pll_and_datapath_in[0:0],gtwiz_reset_rx_datapath_in[0:0],gtwiz_reset_rx_cdr_stable_out[0:0],gtwiz_reset_tx_done_out[0:0],gtwiz_reset_rx_done_out[0:0],gtwiz_userdata_tx_in[63:0],gtwiz_userdata_rx_out[63:0],gtrefclk01_in[0:0],qpll1outclk_out[0:0],qpll1outrefclk_out[0:0],gthrxn_in[1:0],gthrxp_in[1:0],rx8b10ben_in[1:0],rxbufreset_in[1:0],rxchbonden_in[1:0],rxchbondi_in[9:0],rxchbondlevel_in[5:0],rxchbondmaster_in[1:0],rxchbondslave_in[1:0],rxcommadeten_in[1:0],rxmcommaalignen_in[1:0],rxpcommaalignen_in[1:0],tx8b10ben_in[1:0],txctrl0_in[31:0],txctrl1_in[31:0],txctrl2_in[15:0],gthtxn_out[1:0],gthtxp_out[1:0],gtpowergood_out[1:0],rxbufstatus_out[5:0],rxbyteisaligned_out[1:0],rxbyterealign_out[1:0],rxchanbondseq_out[1:0],rxchanisaligned_out[1:0],rxchanrealign_out[1:0],rxchbondo_out[9:0],rxclkcorcnt_out[3:0],rxcommadet_out[1:0],rxctrl0_out[31:0],rxctrl1_out[31:0],rxctrl2_out[15:0],rxctrl3_out[15:0],rxpmaresetdone_out[1:0],txpmaresetdone_out[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "FELIX_GTH_gtwizard_top,Vivado 2020.1";
begin
end;
