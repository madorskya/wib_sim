//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
//Date        : Sun Jun 21 19:58:03 2020
//Host        : endcap-tf1.phys.ufl.edu running 64-bit CentOS Linux release 7.8.2003 (Core)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk62p5,
    clk64,
    clk_adc_2mhz_0,
    fastcommand_out_n_0,
    fastcommand_out_p_0,
    gp_out_tri_o,
    scl_n_0,
    scl_p_0,
    sda_in_n_0,
    sda_in_p_0,
    sda_out_n_0,
    sda_out_p_0);
  output clk62p5;
  output clk64;
  input clk_adc_2mhz_0;
  output fastcommand_out_n_0;
  output fastcommand_out_p_0;
  output [7:0]gp_out_tri_o;
  output scl_n_0;
  output scl_p_0;
  input sda_in_n_0;
  input sda_in_p_0;
  output sda_out_n_0;
  output sda_out_p_0;

  wire clk62p5;
  wire clk64;
  wire clk_adc_2mhz_0;
  wire fastcommand_out_n_0;
  wire fastcommand_out_p_0;
  wire [7:0]gp_out_tri_o;
  wire scl_n_0;
  wire scl_p_0;
  wire sda_in_n_0;
  wire sda_in_p_0;
  wire sda_out_n_0;
  wire sda_out_p_0;

  design_1 design_1_i
       (.clk62p5(clk62p5),
        .clk64(clk64),
        .clk_adc_2mhz_0(clk_adc_2mhz_0),
        .fastcommand_out_n_0(fastcommand_out_n_0),
        .fastcommand_out_p_0(fastcommand_out_p_0),
        .gp_out_tri_o(gp_out_tri_o),
        .scl_n_0(scl_n_0),
        .scl_p_0(scl_p_0),
        .sda_in_n_0(sda_in_n_0),
        .sda_in_p_0(sda_in_p_0),
        .sda_out_n_0(sda_out_n_0),
        .sda_out_p_0(sda_out_p_0));
endmodule
