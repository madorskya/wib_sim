// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Dec  2 20:10:51 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/ip/coldata_rx_single/coldata_rx_single_stub.v
// Design      : coldata_rx_single
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "coldata_rx_single_gtwizard_top,Vivado 2020.1" *)
module coldata_rx_single(gtwiz_userclk_tx_reset_in, 
  gtwiz_userclk_tx_srcclk_out, gtwiz_userclk_tx_usrclk_out, 
  gtwiz_userclk_tx_usrclk2_out, gtwiz_userclk_tx_active_out, 
  gtwiz_userclk_rx_active_in, gtwiz_reset_clk_freerun_in, gtwiz_reset_all_in, 
  gtwiz_reset_tx_pll_and_datapath_in, gtwiz_reset_tx_datapath_in, 
  gtwiz_reset_rx_pll_and_datapath_in, gtwiz_reset_rx_datapath_in, 
  gtwiz_reset_rx_cdr_stable_out, gtwiz_reset_tx_done_out, gtwiz_reset_rx_done_out, 
  gtwiz_userdata_tx_in, gtwiz_userdata_rx_out, gtrefclk00_in, qpll0outclk_out, 
  qpll0outrefclk_out, gthrxn_in, gthrxp_in, rx8b10ben_in, rxbufreset_in, rxcommadeten_in, 
  rxmcommaalignen_in, rxpcommaalignen_in, rxpolarity_in, rxprbssel_in, rxusrclk_in, 
  rxusrclk2_in, tx8b10ben_in, txctrl0_in, txctrl1_in, txctrl2_in, txpd_in, gthtxn_out, 
  gthtxp_out, gtpowergood_out, rxbyteisaligned_out, rxbyterealign_out, rxcommadet_out, 
  rxctrl0_out, rxctrl1_out, rxctrl2_out, rxctrl3_out, rxoutclk_out, rxpmaresetdone_out, 
  rxprbserr_out, txpmaresetdone_out)
/* synthesis syn_black_box black_box_pad_pin="gtwiz_userclk_tx_reset_in[0:0],gtwiz_userclk_tx_srcclk_out[0:0],gtwiz_userclk_tx_usrclk_out[0:0],gtwiz_userclk_tx_usrclk2_out[0:0],gtwiz_userclk_tx_active_out[0:0],gtwiz_userclk_rx_active_in[0:0],gtwiz_reset_clk_freerun_in[0:0],gtwiz_reset_all_in[0:0],gtwiz_reset_tx_pll_and_datapath_in[0:0],gtwiz_reset_tx_datapath_in[0:0],gtwiz_reset_rx_pll_and_datapath_in[0:0],gtwiz_reset_rx_datapath_in[0:0],gtwiz_reset_rx_cdr_stable_out[0:0],gtwiz_reset_tx_done_out[0:0],gtwiz_reset_rx_done_out[0:0],gtwiz_userdata_tx_in[255:0],gtwiz_userdata_rx_out[255:0],gtrefclk00_in[3:0],qpll0outclk_out[3:0],qpll0outrefclk_out[3:0],gthrxn_in[15:0],gthrxp_in[15:0],rx8b10ben_in[15:0],rxbufreset_in[15:0],rxcommadeten_in[15:0],rxmcommaalignen_in[15:0],rxpcommaalignen_in[15:0],rxpolarity_in[15:0],rxprbssel_in[63:0],rxusrclk_in[15:0],rxusrclk2_in[15:0],tx8b10ben_in[15:0],txctrl0_in[255:0],txctrl1_in[255:0],txctrl2_in[127:0],txpd_in[31:0],gthtxn_out[15:0],gthtxp_out[15:0],gtpowergood_out[15:0],rxbyteisaligned_out[15:0],rxbyterealign_out[15:0],rxcommadet_out[15:0],rxctrl0_out[255:0],rxctrl1_out[255:0],rxctrl2_out[127:0],rxctrl3_out[127:0],rxoutclk_out[15:0],rxpmaresetdone_out[15:0],rxprbserr_out[15:0],txpmaresetdone_out[15:0]" */;
  input [0:0]gtwiz_userclk_tx_reset_in;
  output [0:0]gtwiz_userclk_tx_srcclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk2_out;
  output [0:0]gtwiz_userclk_tx_active_out;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  input [255:0]gtwiz_userdata_tx_in;
  output [255:0]gtwiz_userdata_rx_out;
  input [3:0]gtrefclk00_in;
  output [3:0]qpll0outclk_out;
  output [3:0]qpll0outrefclk_out;
  input [15:0]gthrxn_in;
  input [15:0]gthrxp_in;
  input [15:0]rx8b10ben_in;
  input [15:0]rxbufreset_in;
  input [15:0]rxcommadeten_in;
  input [15:0]rxmcommaalignen_in;
  input [15:0]rxpcommaalignen_in;
  input [15:0]rxpolarity_in;
  input [63:0]rxprbssel_in;
  input [15:0]rxusrclk_in;
  input [15:0]rxusrclk2_in;
  input [15:0]tx8b10ben_in;
  input [255:0]txctrl0_in;
  input [255:0]txctrl1_in;
  input [127:0]txctrl2_in;
  input [31:0]txpd_in;
  output [15:0]gthtxn_out;
  output [15:0]gthtxp_out;
  output [15:0]gtpowergood_out;
  output [15:0]rxbyteisaligned_out;
  output [15:0]rxbyterealign_out;
  output [15:0]rxcommadet_out;
  output [255:0]rxctrl0_out;
  output [255:0]rxctrl1_out;
  output [127:0]rxctrl2_out;
  output [127:0]rxctrl3_out;
  output [15:0]rxoutclk_out;
  output [15:0]rxpmaresetdone_out;
  output [15:0]rxprbserr_out;
  output [15:0]txpmaresetdone_out;
endmodule
