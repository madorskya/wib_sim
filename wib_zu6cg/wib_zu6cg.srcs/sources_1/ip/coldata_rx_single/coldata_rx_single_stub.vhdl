-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Dec  5 09:29:06 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top coldata_rx_single -prefix
--               coldata_rx_single_ coldata_rx_single_stub.vhdl
-- Design      : coldata_rx_single
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity coldata_rx_single is
  Port ( 
    gtwiz_userclk_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    gtwiz_userdata_rx_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gthrxn_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gthrxp_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gthtxn_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gthtxp_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end coldata_rx_single;

architecture stub of coldata_rx_single is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "gtwiz_userclk_tx_reset_in[0:0],gtwiz_userclk_tx_srcclk_out[0:0],gtwiz_userclk_tx_usrclk_out[0:0],gtwiz_userclk_tx_usrclk2_out[0:0],gtwiz_userclk_tx_active_out[0:0],gtwiz_userclk_rx_active_in[0:0],gtwiz_reset_clk_freerun_in[0:0],gtwiz_reset_all_in[0:0],gtwiz_reset_tx_pll_and_datapath_in[0:0],gtwiz_reset_tx_datapath_in[0:0],gtwiz_reset_rx_pll_and_datapath_in[0:0],gtwiz_reset_rx_datapath_in[0:0],gtwiz_reset_rx_cdr_stable_out[0:0],gtwiz_reset_tx_done_out[0:0],gtwiz_reset_rx_done_out[0:0],gtwiz_userdata_tx_in[255:0],gtwiz_userdata_rx_out[255:0],gtrefclk00_in[3:0],qpll0outclk_out[3:0],qpll0outrefclk_out[3:0],gthrxn_in[15:0],gthrxp_in[15:0],rx8b10ben_in[15:0],rxbufreset_in[15:0],rxcommadeten_in[15:0],rxmcommaalignen_in[15:0],rxpcommaalignen_in[15:0],rxpolarity_in[15:0],rxprbssel_in[63:0],rxusrclk_in[15:0],rxusrclk2_in[15:0],tx8b10ben_in[15:0],txctrl0_in[255:0],txctrl1_in[255:0],txctrl2_in[127:0],txpd_in[31:0],gthtxn_out[15:0],gthtxp_out[15:0],gtpowergood_out[15:0],rxbyteisaligned_out[15:0],rxbyterealign_out[15:0],rxcommadet_out[15:0],rxctrl0_out[255:0],rxctrl1_out[255:0],rxctrl2_out[127:0],rxctrl3_out[127:0],rxoutclk_out[15:0],rxpmaresetdone_out[15:0],rxprbserr_out[15:0],txpmaresetdone_out[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "coldata_rx_single_gtwizard_top,Vivado 2020.1";
begin
end;
