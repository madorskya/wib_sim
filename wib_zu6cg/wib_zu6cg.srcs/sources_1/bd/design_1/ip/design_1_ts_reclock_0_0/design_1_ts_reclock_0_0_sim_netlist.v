// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Mar 16 23:39:14 2021
// Host        : endcap-tf1.phys.ufl.edu running 64-bit CentOS Linux release 7.8.2003 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_ts_reclock_0_0/design_1_ts_reclock_0_0_sim_netlist.v
// Design      : design_1_ts_reclock_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ts_reclock_0_0,ts_reclock,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ts_reclock,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_ts_reclock_0_0
   (stat_in,
    rst_in,
    rdy_in,
    sync_in,
    sync_stb_in,
    sync_first_in,
    tstamp_in,
    stat_out,
    rst_out,
    rdy_out,
    sync_out,
    sync_stb_out,
    sync_first_out,
    tstamp_out,
    ts_valid,
    clk62p5,
    fifo_rst,
    fifo_valid,
    cmd_code_idle,
    cmd_code_edge,
    cmd_code_sync,
    cmd_code_act,
    cmd_code_reset,
    cmd_code_adc_reset,
    cmd_code_trigger,
    cmd_bit_idle,
    cmd_bit_edge,
    cmd_bit_sync,
    cmd_bit_act,
    cmd_bit_reset,
    cmd_bit_adc_reset,
    cmd_bit_trigger,
    fake_time_stamp_en,
    fake_time_stamp_init);
  input [3:0]stat_in;
  input rst_in;
  input rdy_in;
  input [3:0]sync_in;
  input sync_stb_in;
  input sync_first_in;
  input [63:0]tstamp_in;
  output [3:0]stat_out;
  output rst_out;
  output rdy_out;
  output [3:0]sync_out;
  output sync_stb_out;
  output sync_first_out;
  output [63:0]tstamp_out;
  output ts_valid;
  input clk62p5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input fifo_rst;
  output fifo_valid;
  input [7:0]cmd_code_idle;
  input [7:0]cmd_code_edge;
  input [7:0]cmd_code_sync;
  input [7:0]cmd_code_act;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cmd_code_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmd_code_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input [7:0]cmd_code_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cmd_code_adc_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmd_code_adc_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input [7:0]cmd_code_adc_reset;
  input [7:0]cmd_code_trigger;
  output cmd_bit_idle;
  output cmd_bit_edge;
  output cmd_bit_sync;
  output cmd_bit_act;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cmd_bit_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmd_bit_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output cmd_bit_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cmd_bit_adc_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmd_bit_adc_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output cmd_bit_adc_reset;
  output cmd_bit_trigger;
  input fake_time_stamp_en;
  input [63:0]fake_time_stamp_init;

  wire \<const1> ;
  wire clk62p5;
  wire cmd_bit_act;
  wire cmd_bit_adc_reset;
  wire cmd_bit_edge;
  wire cmd_bit_idle;
  wire cmd_bit_reset;
  wire cmd_bit_sync;
  wire [7:0]cmd_code_act;
  wire [7:0]cmd_code_adc_reset;
  wire [7:0]cmd_code_edge;
  wire [7:0]cmd_code_idle;
  wire [7:0]cmd_code_reset;
  wire [7:0]cmd_code_sync;
  wire fake_time_stamp_en;
  wire [63:0]fake_time_stamp_init;
  wire rdy_in;
  wire rst_in;
  wire [3:0]stat_in;
  wire sync_first_in;
  wire [3:0]sync_in;
  wire sync_stb_in;
  wire ts_valid;
  wire [63:0]tstamp_in;
  wire [63:0]tstamp_out;

  assign cmd_bit_trigger = \<const1> ;
  assign fifo_valid = \<const1> ;
  assign rdy_out = rdy_in;
  assign rst_out = rst_in;
  assign stat_out[3:0] = stat_in;
  assign sync_first_out = sync_first_in;
  assign sync_out[3:0] = sync_in;
  assign sync_stb_out = sync_stb_in;
  VCC VCC
       (.P(\<const1> ));
  design_1_ts_reclock_0_0_ts_reclock inst
       (.clk62p5(clk62p5),
        .cmd_bit_act(cmd_bit_act),
        .cmd_bit_adc_reset(cmd_bit_adc_reset),
        .cmd_bit_edge(cmd_bit_edge),
        .cmd_bit_idle(cmd_bit_idle),
        .cmd_bit_reset(cmd_bit_reset),
        .cmd_bit_sync(cmd_bit_sync),
        .cmd_code_act(cmd_code_act),
        .cmd_code_adc_reset(cmd_code_adc_reset),
        .cmd_code_edge(cmd_code_edge),
        .cmd_code_idle(cmd_code_idle),
        .cmd_code_reset(cmd_code_reset),
        .cmd_code_sync(cmd_code_sync),
        .fake_time_stamp_en(fake_time_stamp_en),
        .fake_time_stamp_init(fake_time_stamp_init),
        .sync_first_in(sync_first_in),
        .sync_in(sync_in),
        .sync_stb_in(sync_stb_in),
        .ts_valid(ts_valid),
        .tstamp_in(tstamp_in),
        .tstamp_out(tstamp_out));
endmodule

(* ORIG_REF_NAME = "ts_reclock" *) 
module design_1_ts_reclock_0_0_ts_reclock
   (tstamp_out,
    ts_valid,
    cmd_bit_idle,
    cmd_bit_edge,
    cmd_bit_sync,
    cmd_bit_act,
    cmd_bit_reset,
    cmd_bit_adc_reset,
    clk62p5,
    fake_time_stamp_en,
    sync_first_in,
    sync_stb_in,
    sync_in,
    cmd_code_idle,
    cmd_code_edge,
    cmd_code_sync,
    cmd_code_act,
    cmd_code_reset,
    cmd_code_adc_reset,
    fake_time_stamp_init,
    tstamp_in);
  output [63:0]tstamp_out;
  output ts_valid;
  output cmd_bit_idle;
  output cmd_bit_edge;
  output cmd_bit_sync;
  output cmd_bit_act;
  output cmd_bit_reset;
  output cmd_bit_adc_reset;
  input clk62p5;
  input fake_time_stamp_en;
  input sync_first_in;
  input sync_stb_in;
  input [3:0]sync_in;
  input [7:0]cmd_code_idle;
  input [7:0]cmd_code_edge;
  input [7:0]cmd_code_sync;
  input [7:0]cmd_code_act;
  input [7:0]cmd_code_reset;
  input [7:0]cmd_code_adc_reset;
  input [63:0]fake_time_stamp_init;
  input [63:0]tstamp_in;

  wire clk62p5;
  wire cmd_bit_act;
  wire cmd_bit_act0;
  wire cmd_bit_act_i_2_n_0;
  wire cmd_bit_act_i_3_n_0;
  wire cmd_bit_act_i_4_n_0;
  wire cmd_bit_adc_reset;
  wire cmd_bit_adc_reset0;
  wire cmd_bit_adc_reset_i_2_n_0;
  wire cmd_bit_adc_reset_i_3_n_0;
  wire cmd_bit_adc_reset_i_4_n_0;
  wire cmd_bit_edge;
  wire cmd_bit_edge0;
  wire cmd_bit_edge_i_2_n_0;
  wire cmd_bit_edge_i_3_n_0;
  wire cmd_bit_edge_i_4_n_0;
  wire cmd_bit_idle;
  wire cmd_bit_idle0;
  wire cmd_bit_idle_i_1_n_0;
  wire cmd_bit_idle_i_3_n_0;
  wire cmd_bit_idle_i_4_n_0;
  wire cmd_bit_idle_i_5_n_0;
  wire cmd_bit_reset;
  wire cmd_bit_reset0;
  wire cmd_bit_reset_i_2_n_0;
  wire cmd_bit_reset_i_3_n_0;
  wire cmd_bit_reset_i_4_n_0;
  wire cmd_bit_sync;
  wire cmd_bit_sync0;
  wire cmd_bit_sync_i_2_n_0;
  wire cmd_bit_sync_i_3_n_0;
  wire cmd_bit_sync_i_4_n_0;
  wire [7:0]cmd_code_act;
  wire [7:0]cmd_code_adc_reset;
  wire [7:0]cmd_code_edge;
  wire [7:0]cmd_code_idle;
  wire [7:0]cmd_code_reset;
  wire [7:0]cmd_code_sync;
  wire fake_time_stamp_en;
  wire [63:0]fake_time_stamp_init;
  wire [2:0]fts_en;
  wire [63:0]p_0_in;
  wire sync_first_in;
  wire [3:0]sync_in;
  wire sync_stb_in;
  wire ts_valid;
  wire ts_valid0;
  wire [63:0]tstamp_fake;
  wire [63:1]tstamp_fake0;
  wire tstamp_fake0_carry__0_n_0;
  wire tstamp_fake0_carry__0_n_1;
  wire tstamp_fake0_carry__0_n_2;
  wire tstamp_fake0_carry__0_n_3;
  wire tstamp_fake0_carry__0_n_4;
  wire tstamp_fake0_carry__0_n_5;
  wire tstamp_fake0_carry__0_n_6;
  wire tstamp_fake0_carry__0_n_7;
  wire tstamp_fake0_carry__1_n_0;
  wire tstamp_fake0_carry__1_n_1;
  wire tstamp_fake0_carry__1_n_2;
  wire tstamp_fake0_carry__1_n_3;
  wire tstamp_fake0_carry__1_n_4;
  wire tstamp_fake0_carry__1_n_5;
  wire tstamp_fake0_carry__1_n_6;
  wire tstamp_fake0_carry__1_n_7;
  wire tstamp_fake0_carry__2_n_0;
  wire tstamp_fake0_carry__2_n_1;
  wire tstamp_fake0_carry__2_n_2;
  wire tstamp_fake0_carry__2_n_3;
  wire tstamp_fake0_carry__2_n_4;
  wire tstamp_fake0_carry__2_n_5;
  wire tstamp_fake0_carry__2_n_6;
  wire tstamp_fake0_carry__2_n_7;
  wire tstamp_fake0_carry__3_n_0;
  wire tstamp_fake0_carry__3_n_1;
  wire tstamp_fake0_carry__3_n_2;
  wire tstamp_fake0_carry__3_n_3;
  wire tstamp_fake0_carry__3_n_4;
  wire tstamp_fake0_carry__3_n_5;
  wire tstamp_fake0_carry__3_n_6;
  wire tstamp_fake0_carry__3_n_7;
  wire tstamp_fake0_carry__4_n_0;
  wire tstamp_fake0_carry__4_n_1;
  wire tstamp_fake0_carry__4_n_2;
  wire tstamp_fake0_carry__4_n_3;
  wire tstamp_fake0_carry__4_n_4;
  wire tstamp_fake0_carry__4_n_5;
  wire tstamp_fake0_carry__4_n_6;
  wire tstamp_fake0_carry__4_n_7;
  wire tstamp_fake0_carry__5_n_0;
  wire tstamp_fake0_carry__5_n_1;
  wire tstamp_fake0_carry__5_n_2;
  wire tstamp_fake0_carry__5_n_3;
  wire tstamp_fake0_carry__5_n_4;
  wire tstamp_fake0_carry__5_n_5;
  wire tstamp_fake0_carry__5_n_6;
  wire tstamp_fake0_carry__5_n_7;
  wire tstamp_fake0_carry__6_n_2;
  wire tstamp_fake0_carry__6_n_3;
  wire tstamp_fake0_carry__6_n_4;
  wire tstamp_fake0_carry__6_n_5;
  wire tstamp_fake0_carry__6_n_6;
  wire tstamp_fake0_carry__6_n_7;
  wire tstamp_fake0_carry_n_0;
  wire tstamp_fake0_carry_n_1;
  wire tstamp_fake0_carry_n_2;
  wire tstamp_fake0_carry_n_3;
  wire tstamp_fake0_carry_n_4;
  wire tstamp_fake0_carry_n_5;
  wire tstamp_fake0_carry_n_6;
  wire tstamp_fake0_carry_n_7;
  wire [63:0]tstamp_in;
  wire [63:0]tstamp_out;
  wire \tstamp_out[0]_i_1_n_0 ;
  wire \tstamp_out[10]_i_1_n_0 ;
  wire \tstamp_out[11]_i_1_n_0 ;
  wire \tstamp_out[12]_i_1_n_0 ;
  wire \tstamp_out[13]_i_1_n_0 ;
  wire \tstamp_out[14]_i_1_n_0 ;
  wire \tstamp_out[15]_i_1_n_0 ;
  wire \tstamp_out[16]_i_1_n_0 ;
  wire \tstamp_out[17]_i_1_n_0 ;
  wire \tstamp_out[18]_i_1_n_0 ;
  wire \tstamp_out[19]_i_1_n_0 ;
  wire \tstamp_out[1]_i_1_n_0 ;
  wire \tstamp_out[20]_i_1_n_0 ;
  wire \tstamp_out[21]_i_1_n_0 ;
  wire \tstamp_out[22]_i_1_n_0 ;
  wire \tstamp_out[23]_i_1_n_0 ;
  wire \tstamp_out[24]_i_1_n_0 ;
  wire \tstamp_out[25]_i_1_n_0 ;
  wire \tstamp_out[26]_i_1_n_0 ;
  wire \tstamp_out[27]_i_1_n_0 ;
  wire \tstamp_out[28]_i_1_n_0 ;
  wire \tstamp_out[29]_i_1_n_0 ;
  wire \tstamp_out[2]_i_1_n_0 ;
  wire \tstamp_out[30]_i_1_n_0 ;
  wire \tstamp_out[31]_i_1_n_0 ;
  wire \tstamp_out[32]_i_1_n_0 ;
  wire \tstamp_out[33]_i_1_n_0 ;
  wire \tstamp_out[34]_i_1_n_0 ;
  wire \tstamp_out[35]_i_1_n_0 ;
  wire \tstamp_out[36]_i_1_n_0 ;
  wire \tstamp_out[37]_i_1_n_0 ;
  wire \tstamp_out[38]_i_1_n_0 ;
  wire \tstamp_out[39]_i_1_n_0 ;
  wire \tstamp_out[3]_i_1_n_0 ;
  wire \tstamp_out[40]_i_1_n_0 ;
  wire \tstamp_out[41]_i_1_n_0 ;
  wire \tstamp_out[42]_i_1_n_0 ;
  wire \tstamp_out[43]_i_1_n_0 ;
  wire \tstamp_out[44]_i_1_n_0 ;
  wire \tstamp_out[45]_i_1_n_0 ;
  wire \tstamp_out[46]_i_1_n_0 ;
  wire \tstamp_out[47]_i_1_n_0 ;
  wire \tstamp_out[48]_i_1_n_0 ;
  wire \tstamp_out[49]_i_1_n_0 ;
  wire \tstamp_out[4]_i_1_n_0 ;
  wire \tstamp_out[50]_i_1_n_0 ;
  wire \tstamp_out[51]_i_1_n_0 ;
  wire \tstamp_out[52]_i_1_n_0 ;
  wire \tstamp_out[53]_i_1_n_0 ;
  wire \tstamp_out[54]_i_1_n_0 ;
  wire \tstamp_out[55]_i_1_n_0 ;
  wire \tstamp_out[56]_i_1_n_0 ;
  wire \tstamp_out[57]_i_1_n_0 ;
  wire \tstamp_out[58]_i_1_n_0 ;
  wire \tstamp_out[59]_i_1_n_0 ;
  wire \tstamp_out[5]_i_1_n_0 ;
  wire \tstamp_out[60]_i_1_n_0 ;
  wire \tstamp_out[61]_i_1_n_0 ;
  wire \tstamp_out[62]_i_1_n_0 ;
  wire \tstamp_out[63]_i_1_n_0 ;
  wire \tstamp_out[6]_i_1_n_0 ;
  wire \tstamp_out[7]_i_1_n_0 ;
  wire \tstamp_out[8]_i_1_n_0 ;
  wire \tstamp_out[9]_i_1_n_0 ;
  wire [7:6]NLW_tstamp_fake0_carry__6_CO_UNCONNECTED;
  wire [7:7]NLW_tstamp_fake0_carry__6_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hE00000E0)) 
    cmd_bit_act_i_1
       (.I0(cmd_bit_act_i_2_n_0),
        .I1(cmd_bit_act_i_3_n_0),
        .I2(cmd_bit_act_i_4_n_0),
        .I3(sync_in[3]),
        .I4(cmd_code_act[3]),
        .O(cmd_bit_act0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cmd_bit_act_i_2
       (.I0(cmd_code_act[2]),
        .I1(cmd_code_act[3]),
        .I2(cmd_code_act[0]),
        .I3(cmd_code_act[1]),
        .O(cmd_bit_act_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cmd_bit_act_i_3
       (.I0(cmd_code_act[7]),
        .I1(cmd_code_act[6]),
        .I2(cmd_code_act[4]),
        .I3(cmd_code_act[5]),
        .O(cmd_bit_act_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmd_bit_act_i_4
       (.I0(cmd_code_act[0]),
        .I1(sync_in[0]),
        .I2(sync_in[2]),
        .I3(cmd_code_act[2]),
        .I4(sync_in[1]),
        .I5(cmd_code_act[1]),
        .O(cmd_bit_act_i_4_n_0));
  FDRE cmd_bit_act_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(cmd_bit_act0),
        .Q(cmd_bit_act),
        .R(cmd_bit_idle_i_1_n_0));
  LUT5 #(
    .INIT(32'hE00000E0)) 
    cmd_bit_adc_reset_i_1
       (.I0(cmd_bit_adc_reset_i_2_n_0),
        .I1(cmd_bit_adc_reset_i_3_n_0),
        .I2(cmd_bit_adc_reset_i_4_n_0),
        .I3(sync_in[3]),
        .I4(cmd_code_adc_reset[3]),
        .O(cmd_bit_adc_reset0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cmd_bit_adc_reset_i_2
       (.I0(cmd_code_adc_reset[2]),
        .I1(cmd_code_adc_reset[3]),
        .I2(cmd_code_adc_reset[0]),
        .I3(cmd_code_adc_reset[1]),
        .O(cmd_bit_adc_reset_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cmd_bit_adc_reset_i_3
       (.I0(cmd_code_adc_reset[7]),
        .I1(cmd_code_adc_reset[6]),
        .I2(cmd_code_adc_reset[4]),
        .I3(cmd_code_adc_reset[5]),
        .O(cmd_bit_adc_reset_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmd_bit_adc_reset_i_4
       (.I0(cmd_code_adc_reset[0]),
        .I1(sync_in[0]),
        .I2(sync_in[2]),
        .I3(cmd_code_adc_reset[2]),
        .I4(sync_in[1]),
        .I5(cmd_code_adc_reset[1]),
        .O(cmd_bit_adc_reset_i_4_n_0));
  FDRE cmd_bit_adc_reset_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(cmd_bit_adc_reset0),
        .Q(cmd_bit_adc_reset),
        .R(cmd_bit_idle_i_1_n_0));
  LUT5 #(
    .INIT(32'hE00000E0)) 
    cmd_bit_edge_i_1
       (.I0(cmd_bit_edge_i_2_n_0),
        .I1(cmd_bit_edge_i_3_n_0),
        .I2(cmd_bit_edge_i_4_n_0),
        .I3(sync_in[3]),
        .I4(cmd_code_edge[3]),
        .O(cmd_bit_edge0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cmd_bit_edge_i_2
       (.I0(cmd_code_edge[2]),
        .I1(cmd_code_edge[3]),
        .I2(cmd_code_edge[0]),
        .I3(cmd_code_edge[1]),
        .O(cmd_bit_edge_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cmd_bit_edge_i_3
       (.I0(cmd_code_edge[7]),
        .I1(cmd_code_edge[6]),
        .I2(cmd_code_edge[4]),
        .I3(cmd_code_edge[5]),
        .O(cmd_bit_edge_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmd_bit_edge_i_4
       (.I0(cmd_code_edge[0]),
        .I1(sync_in[0]),
        .I2(sync_in[2]),
        .I3(cmd_code_edge[2]),
        .I4(sync_in[1]),
        .I5(cmd_code_edge[1]),
        .O(cmd_bit_edge_i_4_n_0));
  FDRE cmd_bit_edge_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(cmd_bit_edge0),
        .Q(cmd_bit_edge),
        .R(cmd_bit_idle_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    cmd_bit_idle_i_1
       (.I0(sync_first_in),
        .I1(sync_stb_in),
        .O(cmd_bit_idle_i_1_n_0));
  LUT5 #(
    .INIT(32'hE00000E0)) 
    cmd_bit_idle_i_2
       (.I0(cmd_bit_idle_i_3_n_0),
        .I1(cmd_bit_idle_i_4_n_0),
        .I2(cmd_bit_idle_i_5_n_0),
        .I3(sync_in[3]),
        .I4(cmd_code_idle[3]),
        .O(cmd_bit_idle0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cmd_bit_idle_i_3
       (.I0(cmd_code_idle[2]),
        .I1(cmd_code_idle[3]),
        .I2(cmd_code_idle[0]),
        .I3(cmd_code_idle[1]),
        .O(cmd_bit_idle_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cmd_bit_idle_i_4
       (.I0(cmd_code_idle[7]),
        .I1(cmd_code_idle[6]),
        .I2(cmd_code_idle[4]),
        .I3(cmd_code_idle[5]),
        .O(cmd_bit_idle_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmd_bit_idle_i_5
       (.I0(cmd_code_idle[0]),
        .I1(sync_in[0]),
        .I2(sync_in[2]),
        .I3(cmd_code_idle[2]),
        .I4(sync_in[1]),
        .I5(cmd_code_idle[1]),
        .O(cmd_bit_idle_i_5_n_0));
  FDRE cmd_bit_idle_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(cmd_bit_idle0),
        .Q(cmd_bit_idle),
        .R(cmd_bit_idle_i_1_n_0));
  LUT5 #(
    .INIT(32'hE00000E0)) 
    cmd_bit_reset_i_1
       (.I0(cmd_bit_reset_i_2_n_0),
        .I1(cmd_bit_reset_i_3_n_0),
        .I2(cmd_bit_reset_i_4_n_0),
        .I3(sync_in[3]),
        .I4(cmd_code_reset[3]),
        .O(cmd_bit_reset0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cmd_bit_reset_i_2
       (.I0(cmd_code_reset[2]),
        .I1(cmd_code_reset[3]),
        .I2(cmd_code_reset[0]),
        .I3(cmd_code_reset[1]),
        .O(cmd_bit_reset_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cmd_bit_reset_i_3
       (.I0(cmd_code_reset[7]),
        .I1(cmd_code_reset[6]),
        .I2(cmd_code_reset[4]),
        .I3(cmd_code_reset[5]),
        .O(cmd_bit_reset_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmd_bit_reset_i_4
       (.I0(cmd_code_reset[0]),
        .I1(sync_in[0]),
        .I2(sync_in[2]),
        .I3(cmd_code_reset[2]),
        .I4(sync_in[1]),
        .I5(cmd_code_reset[1]),
        .O(cmd_bit_reset_i_4_n_0));
  FDRE cmd_bit_reset_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(cmd_bit_reset0),
        .Q(cmd_bit_reset),
        .R(cmd_bit_idle_i_1_n_0));
  LUT5 #(
    .INIT(32'hE00000E0)) 
    cmd_bit_sync_i_1
       (.I0(cmd_bit_sync_i_2_n_0),
        .I1(cmd_bit_sync_i_3_n_0),
        .I2(cmd_bit_sync_i_4_n_0),
        .I3(sync_in[3]),
        .I4(cmd_code_sync[3]),
        .O(cmd_bit_sync0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cmd_bit_sync_i_2
       (.I0(cmd_code_sync[2]),
        .I1(cmd_code_sync[3]),
        .I2(cmd_code_sync[0]),
        .I3(cmd_code_sync[1]),
        .O(cmd_bit_sync_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cmd_bit_sync_i_3
       (.I0(cmd_code_sync[7]),
        .I1(cmd_code_sync[6]),
        .I2(cmd_code_sync[4]),
        .I3(cmd_code_sync[5]),
        .O(cmd_bit_sync_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmd_bit_sync_i_4
       (.I0(cmd_code_sync[0]),
        .I1(sync_in[0]),
        .I2(sync_in[2]),
        .I3(cmd_code_sync[2]),
        .I4(sync_in[1]),
        .I5(cmd_code_sync[1]),
        .O(cmd_bit_sync_i_4_n_0));
  FDRE cmd_bit_sync_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(cmd_bit_sync0),
        .Q(cmd_bit_sync),
        .R(cmd_bit_idle_i_1_n_0));
  FDRE \fts_en_reg[0] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(fake_time_stamp_en),
        .Q(fts_en[0]),
        .R(1'b0));
  FDRE \fts_en_reg[1] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(fts_en[0]),
        .Q(fts_en[1]),
        .R(1'b0));
  FDRE \fts_en_reg[2] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(fts_en[1]),
        .Q(fts_en[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    ts_valid_i_1
       (.I0(sync_first_in),
        .I1(sync_stb_in),
        .I2(sync_in[1]),
        .I3(sync_in[0]),
        .I4(sync_in[2]),
        .I5(sync_in[3]),
        .O(ts_valid0));
  FDRE ts_valid_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(ts_valid0),
        .Q(ts_valid),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tstamp_fake0_carry
       (.CI(tstamp_fake[0]),
        .CI_TOP(1'b0),
        .CO({tstamp_fake0_carry_n_0,tstamp_fake0_carry_n_1,tstamp_fake0_carry_n_2,tstamp_fake0_carry_n_3,tstamp_fake0_carry_n_4,tstamp_fake0_carry_n_5,tstamp_fake0_carry_n_6,tstamp_fake0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(tstamp_fake0[8:1]),
        .S(tstamp_fake[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tstamp_fake0_carry__0
       (.CI(tstamp_fake0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({tstamp_fake0_carry__0_n_0,tstamp_fake0_carry__0_n_1,tstamp_fake0_carry__0_n_2,tstamp_fake0_carry__0_n_3,tstamp_fake0_carry__0_n_4,tstamp_fake0_carry__0_n_5,tstamp_fake0_carry__0_n_6,tstamp_fake0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(tstamp_fake0[16:9]),
        .S(tstamp_fake[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tstamp_fake0_carry__1
       (.CI(tstamp_fake0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({tstamp_fake0_carry__1_n_0,tstamp_fake0_carry__1_n_1,tstamp_fake0_carry__1_n_2,tstamp_fake0_carry__1_n_3,tstamp_fake0_carry__1_n_4,tstamp_fake0_carry__1_n_5,tstamp_fake0_carry__1_n_6,tstamp_fake0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(tstamp_fake0[24:17]),
        .S(tstamp_fake[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tstamp_fake0_carry__2
       (.CI(tstamp_fake0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({tstamp_fake0_carry__2_n_0,tstamp_fake0_carry__2_n_1,tstamp_fake0_carry__2_n_2,tstamp_fake0_carry__2_n_3,tstamp_fake0_carry__2_n_4,tstamp_fake0_carry__2_n_5,tstamp_fake0_carry__2_n_6,tstamp_fake0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(tstamp_fake0[32:25]),
        .S(tstamp_fake[32:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tstamp_fake0_carry__3
       (.CI(tstamp_fake0_carry__2_n_0),
        .CI_TOP(1'b0),
        .CO({tstamp_fake0_carry__3_n_0,tstamp_fake0_carry__3_n_1,tstamp_fake0_carry__3_n_2,tstamp_fake0_carry__3_n_3,tstamp_fake0_carry__3_n_4,tstamp_fake0_carry__3_n_5,tstamp_fake0_carry__3_n_6,tstamp_fake0_carry__3_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(tstamp_fake0[40:33]),
        .S(tstamp_fake[40:33]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tstamp_fake0_carry__4
       (.CI(tstamp_fake0_carry__3_n_0),
        .CI_TOP(1'b0),
        .CO({tstamp_fake0_carry__4_n_0,tstamp_fake0_carry__4_n_1,tstamp_fake0_carry__4_n_2,tstamp_fake0_carry__4_n_3,tstamp_fake0_carry__4_n_4,tstamp_fake0_carry__4_n_5,tstamp_fake0_carry__4_n_6,tstamp_fake0_carry__4_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(tstamp_fake0[48:41]),
        .S(tstamp_fake[48:41]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tstamp_fake0_carry__5
       (.CI(tstamp_fake0_carry__4_n_0),
        .CI_TOP(1'b0),
        .CO({tstamp_fake0_carry__5_n_0,tstamp_fake0_carry__5_n_1,tstamp_fake0_carry__5_n_2,tstamp_fake0_carry__5_n_3,tstamp_fake0_carry__5_n_4,tstamp_fake0_carry__5_n_5,tstamp_fake0_carry__5_n_6,tstamp_fake0_carry__5_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(tstamp_fake0[56:49]),
        .S(tstamp_fake[56:49]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tstamp_fake0_carry__6
       (.CI(tstamp_fake0_carry__5_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_tstamp_fake0_carry__6_CO_UNCONNECTED[7:6],tstamp_fake0_carry__6_n_2,tstamp_fake0_carry__6_n_3,tstamp_fake0_carry__6_n_4,tstamp_fake0_carry__6_n_5,tstamp_fake0_carry__6_n_6,tstamp_fake0_carry__6_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tstamp_fake0_carry__6_O_UNCONNECTED[7],tstamp_fake0[63:57]}),
        .S({1'b0,tstamp_fake[63:57]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h40EF)) 
    \tstamp_fake[0]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[0]),
        .I2(fts_en[1]),
        .I3(tstamp_fake[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[10]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[10]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[10]),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[11]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[11]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[11]),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[12]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[12]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[12]),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[13]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[13]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[13]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[14]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[14]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[14]),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[15]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[15]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[15]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[16]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[16]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[16]),
        .O(p_0_in[16]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[17]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[17]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[17]),
        .O(p_0_in[17]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[18]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[18]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[18]),
        .O(p_0_in[18]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[19]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[19]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[19]),
        .O(p_0_in[19]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[1]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[1]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[20]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[20]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[20]),
        .O(p_0_in[20]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[21]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[21]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[21]),
        .O(p_0_in[21]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[22]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[22]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[22]),
        .O(p_0_in[22]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[23]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[23]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[23]),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[24]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[24]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[24]),
        .O(p_0_in[24]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[25]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[25]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[25]),
        .O(p_0_in[25]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[26]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[26]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[26]),
        .O(p_0_in[26]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[27]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[27]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[27]),
        .O(p_0_in[27]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[28]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[28]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[28]),
        .O(p_0_in[28]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[29]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[29]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[29]),
        .O(p_0_in[29]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[2]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[2]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[30]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[30]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[30]),
        .O(p_0_in[30]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[31]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[31]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[31]),
        .O(p_0_in[31]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[32]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[32]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[32]),
        .O(p_0_in[32]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[33]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[33]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[33]),
        .O(p_0_in[33]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[34]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[34]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[34]),
        .O(p_0_in[34]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[35]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[35]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[35]),
        .O(p_0_in[35]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[36]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[36]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[36]),
        .O(p_0_in[36]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[37]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[37]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[37]),
        .O(p_0_in[37]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[38]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[38]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[38]),
        .O(p_0_in[38]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[39]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[39]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[39]),
        .O(p_0_in[39]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[3]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[3]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[40]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[40]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[40]),
        .O(p_0_in[40]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[41]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[41]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[41]),
        .O(p_0_in[41]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[42]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[42]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[42]),
        .O(p_0_in[42]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[43]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[43]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[43]),
        .O(p_0_in[43]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[44]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[44]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[44]),
        .O(p_0_in[44]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[45]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[45]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[45]),
        .O(p_0_in[45]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[46]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[46]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[46]),
        .O(p_0_in[46]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[47]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[47]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[47]),
        .O(p_0_in[47]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[48]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[48]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[48]),
        .O(p_0_in[48]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[49]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[49]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[49]),
        .O(p_0_in[49]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[4]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[4]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[50]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[50]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[50]),
        .O(p_0_in[50]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[51]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[51]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[51]),
        .O(p_0_in[51]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[52]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[52]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[52]),
        .O(p_0_in[52]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[53]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[53]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[53]),
        .O(p_0_in[53]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[54]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[54]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[54]),
        .O(p_0_in[54]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[55]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[55]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[55]),
        .O(p_0_in[55]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[56]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[56]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[56]),
        .O(p_0_in[56]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[57]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[57]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[57]),
        .O(p_0_in[57]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[58]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[58]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[58]),
        .O(p_0_in[58]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[59]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[59]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[59]),
        .O(p_0_in[59]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[5]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[5]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[5]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[60]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[60]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[60]),
        .O(p_0_in[60]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[61]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[61]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[61]),
        .O(p_0_in[61]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[62]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[62]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[62]),
        .O(p_0_in[62]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[63]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[63]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[63]),
        .O(p_0_in[63]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[6]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[6]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[7]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[7]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[8]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[8]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[8]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \tstamp_fake[9]_i_1 
       (.I0(fts_en[2]),
        .I1(fake_time_stamp_init[9]),
        .I2(fts_en[1]),
        .I3(tstamp_fake0[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[0] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(tstamp_fake[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[10] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(tstamp_fake[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[11] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(tstamp_fake[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[12] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(tstamp_fake[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[13] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(tstamp_fake[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[14] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(tstamp_fake[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[15] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(tstamp_fake[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[16] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[16]),
        .Q(tstamp_fake[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[17] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[17]),
        .Q(tstamp_fake[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[18] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[18]),
        .Q(tstamp_fake[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[19] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[19]),
        .Q(tstamp_fake[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[1] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(tstamp_fake[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[20] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[20]),
        .Q(tstamp_fake[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[21] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[21]),
        .Q(tstamp_fake[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[22] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[22]),
        .Q(tstamp_fake[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[23] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[23]),
        .Q(tstamp_fake[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[24] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[24]),
        .Q(tstamp_fake[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[25] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[25]),
        .Q(tstamp_fake[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[26] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[26]),
        .Q(tstamp_fake[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[27] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[27]),
        .Q(tstamp_fake[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[28] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[28]),
        .Q(tstamp_fake[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[29] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[29]),
        .Q(tstamp_fake[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[2] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(tstamp_fake[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[30] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[30]),
        .Q(tstamp_fake[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[31] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[31]),
        .Q(tstamp_fake[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[32] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[32]),
        .Q(tstamp_fake[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[33] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[33]),
        .Q(tstamp_fake[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[34] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[34]),
        .Q(tstamp_fake[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[35] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[35]),
        .Q(tstamp_fake[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[36] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[36]),
        .Q(tstamp_fake[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[37] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[37]),
        .Q(tstamp_fake[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[38] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[38]),
        .Q(tstamp_fake[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[39] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[39]),
        .Q(tstamp_fake[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[3] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(tstamp_fake[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[40] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[40]),
        .Q(tstamp_fake[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[41] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[41]),
        .Q(tstamp_fake[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[42] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[42]),
        .Q(tstamp_fake[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[43] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[43]),
        .Q(tstamp_fake[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[44] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[44]),
        .Q(tstamp_fake[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[45] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[45]),
        .Q(tstamp_fake[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[46] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[46]),
        .Q(tstamp_fake[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[47] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[47]),
        .Q(tstamp_fake[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[48] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[48]),
        .Q(tstamp_fake[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[49] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[49]),
        .Q(tstamp_fake[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[4] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(tstamp_fake[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tstamp_fake_reg[50] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[50]),
        .Q(tstamp_fake[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[51] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[51]),
        .Q(tstamp_fake[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tstamp_fake_reg[52] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[52]),
        .Q(tstamp_fake[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tstamp_fake_reg[53] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[53]),
        .Q(tstamp_fake[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[54] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[54]),
        .Q(tstamp_fake[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[55] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[55]),
        .Q(tstamp_fake[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[56] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[56]),
        .Q(tstamp_fake[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tstamp_fake_reg[57] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[57]),
        .Q(tstamp_fake[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[58] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[58]),
        .Q(tstamp_fake[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[59] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[59]),
        .Q(tstamp_fake[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[5] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(tstamp_fake[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tstamp_fake_reg[60] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[60]),
        .Q(tstamp_fake[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[61] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[61]),
        .Q(tstamp_fake[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[62] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[62]),
        .Q(tstamp_fake[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[63] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[63]),
        .Q(tstamp_fake[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[6] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(tstamp_fake[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[7] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(tstamp_fake[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[8] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(tstamp_fake[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tstamp_fake_reg[9] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(tstamp_fake[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[0]_i_1 
       (.I0(tstamp_fake[0]),
        .I1(fts_en[2]),
        .I2(tstamp_in[0]),
        .O(\tstamp_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[10]_i_1 
       (.I0(tstamp_fake[10]),
        .I1(fts_en[2]),
        .I2(tstamp_in[10]),
        .O(\tstamp_out[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[11]_i_1 
       (.I0(tstamp_fake[11]),
        .I1(fts_en[2]),
        .I2(tstamp_in[11]),
        .O(\tstamp_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[12]_i_1 
       (.I0(tstamp_fake[12]),
        .I1(fts_en[2]),
        .I2(tstamp_in[12]),
        .O(\tstamp_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[13]_i_1 
       (.I0(tstamp_fake[13]),
        .I1(fts_en[2]),
        .I2(tstamp_in[13]),
        .O(\tstamp_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[14]_i_1 
       (.I0(tstamp_fake[14]),
        .I1(fts_en[2]),
        .I2(tstamp_in[14]),
        .O(\tstamp_out[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[15]_i_1 
       (.I0(tstamp_fake[15]),
        .I1(fts_en[2]),
        .I2(tstamp_in[15]),
        .O(\tstamp_out[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[16]_i_1 
       (.I0(tstamp_fake[16]),
        .I1(fts_en[2]),
        .I2(tstamp_in[16]),
        .O(\tstamp_out[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[17]_i_1 
       (.I0(tstamp_fake[17]),
        .I1(fts_en[2]),
        .I2(tstamp_in[17]),
        .O(\tstamp_out[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[18]_i_1 
       (.I0(tstamp_fake[18]),
        .I1(fts_en[2]),
        .I2(tstamp_in[18]),
        .O(\tstamp_out[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[19]_i_1 
       (.I0(tstamp_fake[19]),
        .I1(fts_en[2]),
        .I2(tstamp_in[19]),
        .O(\tstamp_out[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[1]_i_1 
       (.I0(tstamp_fake[1]),
        .I1(fts_en[2]),
        .I2(tstamp_in[1]),
        .O(\tstamp_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[20]_i_1 
       (.I0(tstamp_fake[20]),
        .I1(fts_en[2]),
        .I2(tstamp_in[20]),
        .O(\tstamp_out[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[21]_i_1 
       (.I0(tstamp_fake[21]),
        .I1(fts_en[2]),
        .I2(tstamp_in[21]),
        .O(\tstamp_out[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[22]_i_1 
       (.I0(tstamp_fake[22]),
        .I1(fts_en[2]),
        .I2(tstamp_in[22]),
        .O(\tstamp_out[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[23]_i_1 
       (.I0(tstamp_fake[23]),
        .I1(fts_en[2]),
        .I2(tstamp_in[23]),
        .O(\tstamp_out[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[24]_i_1 
       (.I0(tstamp_fake[24]),
        .I1(fts_en[2]),
        .I2(tstamp_in[24]),
        .O(\tstamp_out[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[25]_i_1 
       (.I0(tstamp_fake[25]),
        .I1(fts_en[2]),
        .I2(tstamp_in[25]),
        .O(\tstamp_out[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[26]_i_1 
       (.I0(tstamp_fake[26]),
        .I1(fts_en[2]),
        .I2(tstamp_in[26]),
        .O(\tstamp_out[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[27]_i_1 
       (.I0(tstamp_fake[27]),
        .I1(fts_en[2]),
        .I2(tstamp_in[27]),
        .O(\tstamp_out[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[28]_i_1 
       (.I0(tstamp_fake[28]),
        .I1(fts_en[2]),
        .I2(tstamp_in[28]),
        .O(\tstamp_out[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[29]_i_1 
       (.I0(tstamp_fake[29]),
        .I1(fts_en[2]),
        .I2(tstamp_in[29]),
        .O(\tstamp_out[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[2]_i_1 
       (.I0(tstamp_fake[2]),
        .I1(fts_en[2]),
        .I2(tstamp_in[2]),
        .O(\tstamp_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[30]_i_1 
       (.I0(tstamp_fake[30]),
        .I1(fts_en[2]),
        .I2(tstamp_in[30]),
        .O(\tstamp_out[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[31]_i_1 
       (.I0(tstamp_fake[31]),
        .I1(fts_en[2]),
        .I2(tstamp_in[31]),
        .O(\tstamp_out[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[32]_i_1 
       (.I0(tstamp_fake[32]),
        .I1(fts_en[2]),
        .I2(tstamp_in[32]),
        .O(\tstamp_out[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[33]_i_1 
       (.I0(tstamp_fake[33]),
        .I1(fts_en[2]),
        .I2(tstamp_in[33]),
        .O(\tstamp_out[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[34]_i_1 
       (.I0(tstamp_fake[34]),
        .I1(fts_en[2]),
        .I2(tstamp_in[34]),
        .O(\tstamp_out[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[35]_i_1 
       (.I0(tstamp_fake[35]),
        .I1(fts_en[2]),
        .I2(tstamp_in[35]),
        .O(\tstamp_out[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[36]_i_1 
       (.I0(tstamp_fake[36]),
        .I1(fts_en[2]),
        .I2(tstamp_in[36]),
        .O(\tstamp_out[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[37]_i_1 
       (.I0(tstamp_fake[37]),
        .I1(fts_en[2]),
        .I2(tstamp_in[37]),
        .O(\tstamp_out[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[38]_i_1 
       (.I0(tstamp_fake[38]),
        .I1(fts_en[2]),
        .I2(tstamp_in[38]),
        .O(\tstamp_out[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[39]_i_1 
       (.I0(tstamp_fake[39]),
        .I1(fts_en[2]),
        .I2(tstamp_in[39]),
        .O(\tstamp_out[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[3]_i_1 
       (.I0(tstamp_fake[3]),
        .I1(fts_en[2]),
        .I2(tstamp_in[3]),
        .O(\tstamp_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[40]_i_1 
       (.I0(tstamp_fake[40]),
        .I1(fts_en[2]),
        .I2(tstamp_in[40]),
        .O(\tstamp_out[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[41]_i_1 
       (.I0(tstamp_fake[41]),
        .I1(fts_en[2]),
        .I2(tstamp_in[41]),
        .O(\tstamp_out[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[42]_i_1 
       (.I0(tstamp_fake[42]),
        .I1(fts_en[2]),
        .I2(tstamp_in[42]),
        .O(\tstamp_out[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[43]_i_1 
       (.I0(tstamp_fake[43]),
        .I1(fts_en[2]),
        .I2(tstamp_in[43]),
        .O(\tstamp_out[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[44]_i_1 
       (.I0(tstamp_fake[44]),
        .I1(fts_en[2]),
        .I2(tstamp_in[44]),
        .O(\tstamp_out[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[45]_i_1 
       (.I0(tstamp_fake[45]),
        .I1(fts_en[2]),
        .I2(tstamp_in[45]),
        .O(\tstamp_out[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[46]_i_1 
       (.I0(tstamp_fake[46]),
        .I1(fts_en[2]),
        .I2(tstamp_in[46]),
        .O(\tstamp_out[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[47]_i_1 
       (.I0(tstamp_fake[47]),
        .I1(fts_en[2]),
        .I2(tstamp_in[47]),
        .O(\tstamp_out[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[48]_i_1 
       (.I0(tstamp_fake[48]),
        .I1(fts_en[2]),
        .I2(tstamp_in[48]),
        .O(\tstamp_out[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[49]_i_1 
       (.I0(tstamp_fake[49]),
        .I1(fts_en[2]),
        .I2(tstamp_in[49]),
        .O(\tstamp_out[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[4]_i_1 
       (.I0(tstamp_fake[4]),
        .I1(fts_en[2]),
        .I2(tstamp_in[4]),
        .O(\tstamp_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[50]_i_1 
       (.I0(tstamp_fake[50]),
        .I1(fts_en[2]),
        .I2(tstamp_in[50]),
        .O(\tstamp_out[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[51]_i_1 
       (.I0(tstamp_fake[51]),
        .I1(fts_en[2]),
        .I2(tstamp_in[51]),
        .O(\tstamp_out[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[52]_i_1 
       (.I0(tstamp_fake[52]),
        .I1(fts_en[2]),
        .I2(tstamp_in[52]),
        .O(\tstamp_out[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[53]_i_1 
       (.I0(tstamp_fake[53]),
        .I1(fts_en[2]),
        .I2(tstamp_in[53]),
        .O(\tstamp_out[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[54]_i_1 
       (.I0(tstamp_fake[54]),
        .I1(fts_en[2]),
        .I2(tstamp_in[54]),
        .O(\tstamp_out[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[55]_i_1 
       (.I0(tstamp_fake[55]),
        .I1(fts_en[2]),
        .I2(tstamp_in[55]),
        .O(\tstamp_out[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[56]_i_1 
       (.I0(tstamp_fake[56]),
        .I1(fts_en[2]),
        .I2(tstamp_in[56]),
        .O(\tstamp_out[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[57]_i_1 
       (.I0(tstamp_fake[57]),
        .I1(fts_en[2]),
        .I2(tstamp_in[57]),
        .O(\tstamp_out[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[58]_i_1 
       (.I0(tstamp_fake[58]),
        .I1(fts_en[2]),
        .I2(tstamp_in[58]),
        .O(\tstamp_out[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[59]_i_1 
       (.I0(tstamp_fake[59]),
        .I1(fts_en[2]),
        .I2(tstamp_in[59]),
        .O(\tstamp_out[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[5]_i_1 
       (.I0(tstamp_fake[5]),
        .I1(fts_en[2]),
        .I2(tstamp_in[5]),
        .O(\tstamp_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[60]_i_1 
       (.I0(tstamp_fake[60]),
        .I1(fts_en[2]),
        .I2(tstamp_in[60]),
        .O(\tstamp_out[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[61]_i_1 
       (.I0(tstamp_fake[61]),
        .I1(fts_en[2]),
        .I2(tstamp_in[61]),
        .O(\tstamp_out[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[62]_i_1 
       (.I0(tstamp_fake[62]),
        .I1(fts_en[2]),
        .I2(tstamp_in[62]),
        .O(\tstamp_out[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[63]_i_1 
       (.I0(tstamp_fake[63]),
        .I1(fts_en[2]),
        .I2(tstamp_in[63]),
        .O(\tstamp_out[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[6]_i_1 
       (.I0(tstamp_fake[6]),
        .I1(fts_en[2]),
        .I2(tstamp_in[6]),
        .O(\tstamp_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[7]_i_1 
       (.I0(tstamp_fake[7]),
        .I1(fts_en[2]),
        .I2(tstamp_in[7]),
        .O(\tstamp_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[8]_i_1 
       (.I0(tstamp_fake[8]),
        .I1(fts_en[2]),
        .I2(tstamp_in[8]),
        .O(\tstamp_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tstamp_out[9]_i_1 
       (.I0(tstamp_fake[9]),
        .I1(fts_en[2]),
        .I2(tstamp_in[9]),
        .O(\tstamp_out[9]_i_1_n_0 ));
  FDRE \tstamp_out_reg[0] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[0]_i_1_n_0 ),
        .Q(tstamp_out[0]),
        .R(1'b0));
  FDRE \tstamp_out_reg[10] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[10]_i_1_n_0 ),
        .Q(tstamp_out[10]),
        .R(1'b0));
  FDRE \tstamp_out_reg[11] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[11]_i_1_n_0 ),
        .Q(tstamp_out[11]),
        .R(1'b0));
  FDRE \tstamp_out_reg[12] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[12]_i_1_n_0 ),
        .Q(tstamp_out[12]),
        .R(1'b0));
  FDRE \tstamp_out_reg[13] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[13]_i_1_n_0 ),
        .Q(tstamp_out[13]),
        .R(1'b0));
  FDRE \tstamp_out_reg[14] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[14]_i_1_n_0 ),
        .Q(tstamp_out[14]),
        .R(1'b0));
  FDRE \tstamp_out_reg[15] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[15]_i_1_n_0 ),
        .Q(tstamp_out[15]),
        .R(1'b0));
  FDRE \tstamp_out_reg[16] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[16]_i_1_n_0 ),
        .Q(tstamp_out[16]),
        .R(1'b0));
  FDRE \tstamp_out_reg[17] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[17]_i_1_n_0 ),
        .Q(tstamp_out[17]),
        .R(1'b0));
  FDRE \tstamp_out_reg[18] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[18]_i_1_n_0 ),
        .Q(tstamp_out[18]),
        .R(1'b0));
  FDRE \tstamp_out_reg[19] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[19]_i_1_n_0 ),
        .Q(tstamp_out[19]),
        .R(1'b0));
  FDRE \tstamp_out_reg[1] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[1]_i_1_n_0 ),
        .Q(tstamp_out[1]),
        .R(1'b0));
  FDRE \tstamp_out_reg[20] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[20]_i_1_n_0 ),
        .Q(tstamp_out[20]),
        .R(1'b0));
  FDRE \tstamp_out_reg[21] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[21]_i_1_n_0 ),
        .Q(tstamp_out[21]),
        .R(1'b0));
  FDRE \tstamp_out_reg[22] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[22]_i_1_n_0 ),
        .Q(tstamp_out[22]),
        .R(1'b0));
  FDRE \tstamp_out_reg[23] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[23]_i_1_n_0 ),
        .Q(tstamp_out[23]),
        .R(1'b0));
  FDRE \tstamp_out_reg[24] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[24]_i_1_n_0 ),
        .Q(tstamp_out[24]),
        .R(1'b0));
  FDRE \tstamp_out_reg[25] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[25]_i_1_n_0 ),
        .Q(tstamp_out[25]),
        .R(1'b0));
  FDRE \tstamp_out_reg[26] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[26]_i_1_n_0 ),
        .Q(tstamp_out[26]),
        .R(1'b0));
  FDRE \tstamp_out_reg[27] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[27]_i_1_n_0 ),
        .Q(tstamp_out[27]),
        .R(1'b0));
  FDRE \tstamp_out_reg[28] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[28]_i_1_n_0 ),
        .Q(tstamp_out[28]),
        .R(1'b0));
  FDRE \tstamp_out_reg[29] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[29]_i_1_n_0 ),
        .Q(tstamp_out[29]),
        .R(1'b0));
  FDRE \tstamp_out_reg[2] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[2]_i_1_n_0 ),
        .Q(tstamp_out[2]),
        .R(1'b0));
  FDRE \tstamp_out_reg[30] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[30]_i_1_n_0 ),
        .Q(tstamp_out[30]),
        .R(1'b0));
  FDRE \tstamp_out_reg[31] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[31]_i_1_n_0 ),
        .Q(tstamp_out[31]),
        .R(1'b0));
  FDRE \tstamp_out_reg[32] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[32]_i_1_n_0 ),
        .Q(tstamp_out[32]),
        .R(1'b0));
  FDRE \tstamp_out_reg[33] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[33]_i_1_n_0 ),
        .Q(tstamp_out[33]),
        .R(1'b0));
  FDRE \tstamp_out_reg[34] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[34]_i_1_n_0 ),
        .Q(tstamp_out[34]),
        .R(1'b0));
  FDRE \tstamp_out_reg[35] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[35]_i_1_n_0 ),
        .Q(tstamp_out[35]),
        .R(1'b0));
  FDRE \tstamp_out_reg[36] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[36]_i_1_n_0 ),
        .Q(tstamp_out[36]),
        .R(1'b0));
  FDRE \tstamp_out_reg[37] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[37]_i_1_n_0 ),
        .Q(tstamp_out[37]),
        .R(1'b0));
  FDRE \tstamp_out_reg[38] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[38]_i_1_n_0 ),
        .Q(tstamp_out[38]),
        .R(1'b0));
  FDRE \tstamp_out_reg[39] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[39]_i_1_n_0 ),
        .Q(tstamp_out[39]),
        .R(1'b0));
  FDRE \tstamp_out_reg[3] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[3]_i_1_n_0 ),
        .Q(tstamp_out[3]),
        .R(1'b0));
  FDRE \tstamp_out_reg[40] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[40]_i_1_n_0 ),
        .Q(tstamp_out[40]),
        .R(1'b0));
  FDRE \tstamp_out_reg[41] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[41]_i_1_n_0 ),
        .Q(tstamp_out[41]),
        .R(1'b0));
  FDRE \tstamp_out_reg[42] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[42]_i_1_n_0 ),
        .Q(tstamp_out[42]),
        .R(1'b0));
  FDRE \tstamp_out_reg[43] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[43]_i_1_n_0 ),
        .Q(tstamp_out[43]),
        .R(1'b0));
  FDRE \tstamp_out_reg[44] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[44]_i_1_n_0 ),
        .Q(tstamp_out[44]),
        .R(1'b0));
  FDRE \tstamp_out_reg[45] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[45]_i_1_n_0 ),
        .Q(tstamp_out[45]),
        .R(1'b0));
  FDRE \tstamp_out_reg[46] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[46]_i_1_n_0 ),
        .Q(tstamp_out[46]),
        .R(1'b0));
  FDRE \tstamp_out_reg[47] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[47]_i_1_n_0 ),
        .Q(tstamp_out[47]),
        .R(1'b0));
  FDRE \tstamp_out_reg[48] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[48]_i_1_n_0 ),
        .Q(tstamp_out[48]),
        .R(1'b0));
  FDRE \tstamp_out_reg[49] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[49]_i_1_n_0 ),
        .Q(tstamp_out[49]),
        .R(1'b0));
  FDRE \tstamp_out_reg[4] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[4]_i_1_n_0 ),
        .Q(tstamp_out[4]),
        .R(1'b0));
  FDRE \tstamp_out_reg[50] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[50]_i_1_n_0 ),
        .Q(tstamp_out[50]),
        .R(1'b0));
  FDRE \tstamp_out_reg[51] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[51]_i_1_n_0 ),
        .Q(tstamp_out[51]),
        .R(1'b0));
  FDRE \tstamp_out_reg[52] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[52]_i_1_n_0 ),
        .Q(tstamp_out[52]),
        .R(1'b0));
  FDRE \tstamp_out_reg[53] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[53]_i_1_n_0 ),
        .Q(tstamp_out[53]),
        .R(1'b0));
  FDRE \tstamp_out_reg[54] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[54]_i_1_n_0 ),
        .Q(tstamp_out[54]),
        .R(1'b0));
  FDRE \tstamp_out_reg[55] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[55]_i_1_n_0 ),
        .Q(tstamp_out[55]),
        .R(1'b0));
  FDRE \tstamp_out_reg[56] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[56]_i_1_n_0 ),
        .Q(tstamp_out[56]),
        .R(1'b0));
  FDRE \tstamp_out_reg[57] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[57]_i_1_n_0 ),
        .Q(tstamp_out[57]),
        .R(1'b0));
  FDRE \tstamp_out_reg[58] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[58]_i_1_n_0 ),
        .Q(tstamp_out[58]),
        .R(1'b0));
  FDRE \tstamp_out_reg[59] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[59]_i_1_n_0 ),
        .Q(tstamp_out[59]),
        .R(1'b0));
  FDRE \tstamp_out_reg[5] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[5]_i_1_n_0 ),
        .Q(tstamp_out[5]),
        .R(1'b0));
  FDRE \tstamp_out_reg[60] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[60]_i_1_n_0 ),
        .Q(tstamp_out[60]),
        .R(1'b0));
  FDRE \tstamp_out_reg[61] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[61]_i_1_n_0 ),
        .Q(tstamp_out[61]),
        .R(1'b0));
  FDRE \tstamp_out_reg[62] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[62]_i_1_n_0 ),
        .Q(tstamp_out[62]),
        .R(1'b0));
  FDRE \tstamp_out_reg[63] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[63]_i_1_n_0 ),
        .Q(tstamp_out[63]),
        .R(1'b0));
  FDRE \tstamp_out_reg[6] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[6]_i_1_n_0 ),
        .Q(tstamp_out[6]),
        .R(1'b0));
  FDRE \tstamp_out_reg[7] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[7]_i_1_n_0 ),
        .Q(tstamp_out[7]),
        .R(1'b0));
  FDRE \tstamp_out_reg[8] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[8]_i_1_n_0 ),
        .Q(tstamp_out[8]),
        .R(1'b0));
  FDRE \tstamp_out_reg[9] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tstamp_out[9]_i_1_n_0 ),
        .Q(tstamp_out[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
