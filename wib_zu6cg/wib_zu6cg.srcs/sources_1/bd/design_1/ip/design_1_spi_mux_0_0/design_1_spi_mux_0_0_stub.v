// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat Aug 20 16:53:05 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_spi_mux_0_0/design_1_spi_mux_0_0_stub.v
// Design      : design_1_spi_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "spi_mux,Vivado 2020.1" *)
module design_1_spi_mux_0_0(ss_t, sck_i, sck_o, sck_t, io0_i, io0_o, io0_t, io1_i, 
  io1_o, io1_t, ss_o, ss1_o, adc_sck, adc_sdo, adc_cs)
/* synthesis syn_black_box black_box_pad_pin="ss_t,sck_i,sck_o,sck_t,io0_i,io0_o,io0_t,io1_i,io1_o,io1_t,ss_o,ss1_o,adc_sck,adc_sdo[3:0],adc_cs" */;
  input ss_t;
  output sck_i;
  input sck_o;
  input sck_t;
  output io0_i;
  input io0_o;
  input io0_t;
  output io1_i;
  input io1_o;
  input io1_t;
  input ss_o;
  input ss1_o;
  inout adc_sck;
  inout [3:0]adc_sdo;
  output adc_cs;
endmodule
