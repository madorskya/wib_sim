//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Wed Jul 29 11:29:34 2020
//Host        : endcap-tf1.phys.ufl.edu running 64-bit CentOS Linux release 7.8.2003 (Core)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk62p5,
    fastcommand_out_n_0,
    fastcommand_out_p_0,
    gp_out_tri_o,
    scl_n_0,
    scl_p_0,
    sda_in_n_0,
    sda_in_p_0,
    sda_out_n_0,
    sda_out_p_0);
  input clk62p5;
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
