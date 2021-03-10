// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Feb 16 13:21:55 2021
// Host        : lxeng99 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top standalone_50m_mmcm -prefix
//               standalone_50m_mmcm_ standalone_50m_mmcm_stub.v
// Design      : standalone_50m_mmcm
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module standalone_50m_mmcm(clk_out1, clk_out2, clk_out3, reset, locked, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_out3,reset,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  input reset;
  output locked;
  input clk_in1;
endmodule
