// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Sun Jan 10 17:50:10 2021
// Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/github/wib_sim/wib_zu9cg/wib_zu9cg.srcs/sources_1/bd/design_1/ip/design_1_util_ds_buf_0_4/design_1_util_ds_buf_0_4_stub.v
// Design      : design_1_util_ds_buf_0_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9cg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2020.1.1_AR73018" *)
module design_1_util_ds_buf_0_4(BUFG_I, BUFG_O)
/* synthesis syn_black_box black_box_pad_pin="BUFG_I[0:0],BUFG_O[0:0]" */;
  input [0:0]BUFG_I;
  output [0:0]BUFG_O;
endmodule
