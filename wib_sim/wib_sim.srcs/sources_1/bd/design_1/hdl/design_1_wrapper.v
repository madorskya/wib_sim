//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
//Date        : Thu Jun  4 00:11:42 2020
//Host        : endcap-tf1.phys.ufl.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk62p5,
    scl_n_0,
    scl_p_0,
    sda_in_n_0,
    sda_in_p_0,
    sda_out_n_0,
    sda_out_p_0);
  output clk62p5;
  output scl_n_0;
  output scl_p_0;
  input sda_in_n_0;
  input sda_in_p_0;
  output sda_out_n_0;
  output sda_out_p_0;

  wire clk62p5;
  wire scl_n_0;
  wire scl_p_0;
  wire sda_in_n_0;
  wire sda_in_p_0;
  wire sda_out_n_0;
  wire sda_out_p_0;

  design_1 design_1_i
       (.clk62p5(clk62p5),
        .scl_n_0(scl_n_0),
        .scl_p_0(scl_p_0),
        .sda_in_n_0(sda_in_n_0),
        .sda_in_p_0(sda_in_p_0),
        .sda_out_n_0(sda_out_n_0),
        .sda_out_p_0(sda_out_p_0));
endmodule
