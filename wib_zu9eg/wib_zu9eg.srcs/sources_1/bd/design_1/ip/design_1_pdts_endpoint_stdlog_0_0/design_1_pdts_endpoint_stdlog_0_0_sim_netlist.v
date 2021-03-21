// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat Mar 20 16:23:15 2021
// Host        : endcap-tf1.phys.ufl.edu running 64-bit CentOS Linux release 7.8.2003 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/madorsky/github/wib_sim/wib_zu9eg/wib_zu9eg.srcs/sources_1/bd/design_1/ip/design_1_pdts_endpoint_stdlog_0_0/design_1_pdts_endpoint_stdlog_0_0_sim_netlist.v
// Design      : design_1_pdts_endpoint_stdlog_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pdts_endpoint_stdlog_0_0,pdts_endpoint_stdlogic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pdts_endpoint_stdlogic,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_pdts_endpoint_stdlog_0_0
   (sclk,
    srst,
    addr,
    tgrp,
    stat,
    rec_clk,
    rec_d,
    sfp_los,
    cdr_los,
    cdr_lol,
    pll_locked,
    clk,
    rst,
    rdy,
    sync,
    sync_stb,
    sync_first,
    tstamp,
    debug,
    txd,
    tx_dis);
  input sclk;
  input srst;
  input [7:0]addr;
  input [1:0]tgrp;
  output [3:0]stat;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rec_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rec_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ts_rec_d_clk, INSERT_VIP 0" *) input rec_clk;
  input rec_d;
  input sfp_los;
  input cdr_los;
  input cdr_lol;
  input pll_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_pdts_endpoint_stdlog_0_0_clk, INSERT_VIP 0" *) output clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output rst;
  output rdy;
  output [3:0]sync;
  output sync_stb;
  output sync_first;
  output [63:0]tstamp;
  output [31:0]debug;
  output txd;
  output tx_dis;

  wire \<const0> ;
  wire [7:0]addr;
  wire cdr_lol;
  wire cdr_los;
  wire clk;
  wire [31:1]\^debug ;
  wire pll_locked;
  wire rdy;
  wire rec_clk;
  wire rec_d;
  wire rst;
  wire sclk;
  wire sfp_los;
  wire srst;
  wire [3:0]stat;
  wire [3:0]sync;
  wire sync_first;
  wire sync_stb;
  wire [1:0]tgrp;
  wire [63:0]tstamp;
  wire tx_dis;
  wire txd;

  assign debug[31:16] = \^debug [31:16];
  assign debug[15] = \<const0> ;
  assign debug[14] = \<const0> ;
  assign debug[13] = \<const0> ;
  assign debug[12] = \<const0> ;
  assign debug[11] = \<const0> ;
  assign debug[10] = \<const0> ;
  assign debug[9] = \<const0> ;
  assign debug[8] = \<const0> ;
  assign debug[7:1] = \^debug [7:1];
  assign debug[0] = srst;
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \debug[3]_INST_0 
       (.I0(pll_locked),
        .I1(sfp_los),
        .I2(cdr_lol),
        .I3(cdr_los),
        .O(\^debug [3]));
  design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint_stdlogic inst
       (.Q(rdy),
        .addr(addr),
        .cdr_lol(cdr_lol),
        .cdr_los(cdr_los),
        .clk(clk),
        .debug({\^debug [31:16],\^debug [7:4],\^debug [2:1]}),
        .pll_locked(pll_locked),
        .q(sync),
        .rec_clk(rec_clk),
        .rec_d(rec_d),
        .rst(rst),
        .sclk(sclk),
        .sfp_los(sfp_los),
        .srst(srst),
        .stat(stat),
        .sync_first(sync_first),
        .sync_stb(sync_stb),
        .tgrp(tgrp),
        .tstamp(tstamp),
        .tx_dis(tx_dis),
        .txd(txd));
endmodule

(* ORIG_REF_NAME = "outputlogic_crc16" *) 
module design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16
   (d,
    smode_r_reg,
    \actr_i_reg[7] ,
    SS,
    d_tx_inferred_i_1,
    d_tx_inferred_i_7,
    sw,
    Q,
    d_tx_inferred_i_7_0,
    smode_r,
    active,
    s_stb,
    \lfsr_q_reg[0]_0 ,
    s_first,
    s_ok,
    \acmd_out[d]1 ,
    \lfsr_q_reg[8]_0 ,
    \lfsr_q_reg[0]_1 ,
    addr,
    txphy_i_31_0,
    txphy_i_31_1,
    stbo,
    clk);
  output [7:0]d;
  output smode_r_reg;
  output \actr_i_reg[7] ;
  output [0:0]SS;
  input d_tx_inferred_i_1;
  input d_tx_inferred_i_7;
  input [6:0]sw;
  input [6:0]Q;
  input d_tx_inferred_i_7_0;
  input smode_r;
  input active;
  input s_stb;
  input \lfsr_q_reg[0]_0 ;
  input s_first;
  input s_ok;
  input \acmd_out[d]1 ;
  input [7:0]\lfsr_q_reg[8]_0 ;
  input [2:0]\lfsr_q_reg[0]_1 ;
  input [7:0]addr;
  input [7:0]txphy_i_31_0;
  input txphy_i_31_1;
  input stbo;
  input clk;

  wire [6:0]Q;
  wire [0:0]SS;
  wire \acmd_out[d]1 ;
  wire active;
  wire \actr_i_reg[7] ;
  wire [7:0]addr;
  wire clk;
  wire cstb;
  wire [15:0]csum;
  wire [7:0]d;
  wire d_tx_inferred_i_1;
  wire d_tx_inferred_i_7;
  wire d_tx_inferred_i_7_0;
  wire [15:0]lfsr_c;
  wire \lfsr_q[15]_i_4_n_0 ;
  wire \lfsr_q[15]_i_5__0_n_0 ;
  wire \lfsr_q[15]_i_6_n_0 ;
  wire \lfsr_q[1]_i_2_n_0 ;
  wire \lfsr_q[5]_i_2_n_0 ;
  wire \lfsr_q[6]_i_2_n_0 ;
  wire \lfsr_q[9]_i_2_n_0 ;
  wire \lfsr_q[9]_i_3_n_0 ;
  wire \lfsr_q[9]_i_4_n_0 ;
  wire \lfsr_q_reg[0]_0 ;
  wire [2:0]\lfsr_q_reg[0]_1 ;
  wire [7:0]\lfsr_q_reg[8]_0 ;
  wire p_8_in9_in;
  wire [7:0]q_a__47;
  wire s_first;
  wire s_ok;
  wire s_stb;
  wire smode_r;
  wire smode_r_reg;
  wire stbo;
  wire [6:0]sw;
  wire txphy_i_22_n_0;
  wire txphy_i_25_n_0;
  wire txphy_i_26_n_0;
  wire txphy_i_27_n_0;
  wire txphy_i_28_n_0;
  wire txphy_i_29_n_0;
  wire txphy_i_30_n_0;
  wire [7:0]txphy_i_31_0;
  wire txphy_i_31_1;
  wire txphy_i_31_n_0;
  wire txphy_i_32_n_0;
  wire txphy_i_34_n_0;
  wire txphy_i_35_n_0;

  LUT4 #(
    .INIT(16'h0F0E)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(txphy_i_31_0[7]),
        .I1(txphy_i_31_0[6]),
        .I2(txphy_i_31_1),
        .I3(txphy_i_31_0[5]),
        .O(\actr_i_reg[7] ));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(smode_r),
        .I1(active),
        .I2(s_stb),
        .I3(\lfsr_q_reg[0]_0 ),
        .I4(s_first),
        .I5(s_ok),
        .O(smode_r_reg));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[0]_i_1 
       (.I0(\lfsr_q[15]_i_4_n_0 ),
        .I1(p_8_in9_in),
        .I2(\lfsr_q[15]_i_6_n_0 ),
        .I3(q_a__47[0]),
        .I4(csum[10]),
        .I5(lfsr_c[5]),
        .O(lfsr_c[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[0]_i_2 
       (.I0(csum[8]),
        .I1(csum[9]),
        .O(p_8_in9_in));
  LUT3 #(
    .INIT(8'h10)) 
    \lfsr_q[15]_i_1 
       (.I0(\lfsr_q_reg[0]_1 [2]),
        .I1(\lfsr_q_reg[0]_1 [1]),
        .I2(\lfsr_q_reg[0]_1 [0]),
        .O(SS));
  LUT4 #(
    .INIT(16'h0E00)) 
    \lfsr_q[15]_i_2__0 
       (.I0(\lfsr_q_reg[0]_1 [2]),
        .I1(\lfsr_q_reg[0]_1 [1]),
        .I2(smode_r_reg),
        .I3(stbo),
        .O(cstb));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[15]_i_3 
       (.I0(\lfsr_q[15]_i_4_n_0 ),
        .I1(\lfsr_q[15]_i_5__0_n_0 ),
        .I2(\lfsr_q[15]_i_6_n_0 ),
        .I3(q_a__47[0]),
        .I4(csum[10]),
        .I5(lfsr_c[5]),
        .O(lfsr_c[15]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[15]_i_4 
       (.I0(q_a__47[2]),
        .I1(\lfsr_q[9]_i_2_n_0 ),
        .O(\lfsr_q[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[15]_i_5__0 
       (.I0(csum[7]),
        .I1(csum[9]),
        .I2(csum[8]),
        .O(\lfsr_q[15]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[15]_i_6 
       (.I0(q_a__47[6]),
        .I1(csum[13]),
        .I2(q_a__47[1]),
        .I3(csum[14]),
        .I4(q_a__47[5]),
        .O(\lfsr_q[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[1]_i_1 
       (.I0(\lfsr_q[1]_i_2_n_0 ),
        .I1(\lfsr_q[6]_i_2_n_0 ),
        .I2(\lfsr_q[15]_i_6_n_0 ),
        .I3(\lfsr_q[9]_i_2_n_0 ),
        .I4(\lfsr_q[5]_i_2_n_0 ),
        .O(lfsr_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[1]_i_2 
       (.I0(csum[9]),
        .I1(csum[10]),
        .I2(q_a__47[2]),
        .O(\lfsr_q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[2]_i_1 
       (.I0(q_a__47[1]),
        .I1(csum[8]),
        .I2(csum[9]),
        .I3(q_a__47[0]),
        .O(lfsr_c[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[3]_i_1 
       (.I0(q_a__47[1]),
        .I1(q_a__47[2]),
        .I2(csum[10]),
        .I3(csum[9]),
        .O(lfsr_c[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[4]_i_1 
       (.I0(csum[10]),
        .I1(\lfsr_q[5]_i_2_n_0 ),
        .I2(q_a__47[2]),
        .O(lfsr_c[4]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[5]_i_1 
       (.I0(\lfsr_q[5]_i_2_n_0 ),
        .I1(\lfsr_q[6]_i_2_n_0 ),
        .O(lfsr_c[5]));
  LUT6 #(
    .INIT(64'h55A655A655A6A6A6)) 
    \lfsr_q[5]_i_2 
       (.I0(csum[11]),
        .I1(txphy_i_28_n_0),
        .I2(\lfsr_q[9]_i_3_n_0 ),
        .I3(\lfsr_q[9]_i_4_n_0 ),
        .I4(\lfsr_q_reg[8]_0 [3]),
        .I5(\acmd_out[d]1 ),
        .O(\lfsr_q[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[6]_i_1__0 
       (.I0(q_a__47[5]),
        .I1(csum[13]),
        .I2(\lfsr_q[6]_i_2_n_0 ),
        .O(lfsr_c[6]));
  LUT6 #(
    .INIT(64'h55A655A655A6A6A6)) 
    \lfsr_q[6]_i_2 
       (.I0(csum[12]),
        .I1(txphy_i_27_n_0),
        .I2(\lfsr_q[9]_i_3_n_0 ),
        .I3(\lfsr_q[9]_i_4_n_0 ),
        .I4(\lfsr_q_reg[8]_0 [4]),
        .I5(\acmd_out[d]1 ),
        .O(\lfsr_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[7]_i_1__0 
       (.I0(q_a__47[5]),
        .I1(csum[13]),
        .I2(q_a__47[6]),
        .I3(csum[14]),
        .O(lfsr_c[7]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[8]_i_1__0 
       (.I0(q_a__47[6]),
        .I1(csum[14]),
        .I2(\lfsr_q[9]_i_2_n_0 ),
        .I3(csum[0]),
        .O(lfsr_c[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[9]_i_1 
       (.I0(csum[1]),
        .I1(\lfsr_q[9]_i_2_n_0 ),
        .O(lfsr_c[9]));
  LUT6 #(
    .INIT(64'h55A655A655A6A6A6)) 
    \lfsr_q[9]_i_2 
       (.I0(csum[15]),
        .I1(txphy_i_22_n_0),
        .I2(\lfsr_q[9]_i_3_n_0 ),
        .I3(\lfsr_q[9]_i_4_n_0 ),
        .I4(\lfsr_q_reg[8]_0 [7]),
        .I5(\acmd_out[d]1 ),
        .O(\lfsr_q[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lfsr_q[9]_i_3 
       (.I0(\lfsr_q_reg[0]_1 [1]),
        .I1(\lfsr_q_reg[0]_1 [0]),
        .O(\lfsr_q[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h24)) 
    \lfsr_q[9]_i_4 
       (.I0(\lfsr_q_reg[0]_1 [0]),
        .I1(\lfsr_q_reg[0]_1 [1]),
        .I2(\lfsr_q_reg[0]_1 [2]),
        .O(\lfsr_q[9]_i_4_n_0 ));
  FDSE \lfsr_q_reg[0] 
       (.C(clk),
        .CE(cstb),
        .D(lfsr_c[0]),
        .Q(csum[0]),
        .S(SS));
  FDSE \lfsr_q_reg[10] 
       (.C(clk),
        .CE(cstb),
        .D(csum[2]),
        .Q(csum[10]),
        .S(SS));
  FDSE \lfsr_q_reg[11] 
       (.C(clk),
        .CE(cstb),
        .D(csum[3]),
        .Q(csum[11]),
        .S(SS));
  FDSE \lfsr_q_reg[12] 
       (.C(clk),
        .CE(cstb),
        .D(csum[4]),
        .Q(csum[12]),
        .S(SS));
  FDSE \lfsr_q_reg[13] 
       (.C(clk),
        .CE(cstb),
        .D(csum[5]),
        .Q(csum[13]),
        .S(SS));
  FDSE \lfsr_q_reg[14] 
       (.C(clk),
        .CE(cstb),
        .D(csum[6]),
        .Q(csum[14]),
        .S(SS));
  FDSE \lfsr_q_reg[15] 
       (.C(clk),
        .CE(cstb),
        .D(lfsr_c[15]),
        .Q(csum[15]),
        .S(SS));
  FDSE \lfsr_q_reg[1] 
       (.C(clk),
        .CE(cstb),
        .D(lfsr_c[1]),
        .Q(csum[1]),
        .S(SS));
  FDSE \lfsr_q_reg[2] 
       (.C(clk),
        .CE(cstb),
        .D(lfsr_c[2]),
        .Q(csum[2]),
        .S(SS));
  FDSE \lfsr_q_reg[3] 
       (.C(clk),
        .CE(cstb),
        .D(lfsr_c[3]),
        .Q(csum[3]),
        .S(SS));
  FDSE \lfsr_q_reg[4] 
       (.C(clk),
        .CE(cstb),
        .D(lfsr_c[4]),
        .Q(csum[4]),
        .S(SS));
  FDSE \lfsr_q_reg[5] 
       (.C(clk),
        .CE(cstb),
        .D(lfsr_c[5]),
        .Q(csum[5]),
        .S(SS));
  FDSE \lfsr_q_reg[6] 
       (.C(clk),
        .CE(cstb),
        .D(lfsr_c[6]),
        .Q(csum[6]),
        .S(SS));
  FDSE \lfsr_q_reg[7] 
       (.C(clk),
        .CE(cstb),
        .D(lfsr_c[7]),
        .Q(csum[7]),
        .S(SS));
  FDSE \lfsr_q_reg[8] 
       (.C(clk),
        .CE(cstb),
        .D(lfsr_c[8]),
        .Q(csum[8]),
        .S(SS));
  FDSE \lfsr_q_reg[9] 
       (.C(clk),
        .CE(cstb),
        .D(lfsr_c[9]),
        .Q(csum[9]),
        .S(SS));
  LUT6 #(
    .INIT(64'hFFC0C0C0EAEAEAEA)) 
    txphy_i_1
       (.I0(q_a__47[7]),
        .I1(d_tx_inferred_i_7),
        .I2(sw[6]),
        .I3(Q[6]),
        .I4(d_tx_inferred_i_7_0),
        .I5(smode_r_reg),
        .O(d[7]));
  LUT6 #(
    .INIT(64'h00E00EFF00E00E00)) 
    txphy_i_10
       (.I0(\acmd_out[d]1 ),
        .I1(\lfsr_q_reg[8]_0 [7]),
        .I2(\lfsr_q_reg[0]_1 [2]),
        .I3(\lfsr_q_reg[0]_1 [1]),
        .I4(\lfsr_q_reg[0]_1 [0]),
        .I5(txphy_i_22_n_0),
        .O(q_a__47[7]));
  LUT6 #(
    .INIT(64'h00E00EFF00E00E00)) 
    txphy_i_13
       (.I0(\acmd_out[d]1 ),
        .I1(\lfsr_q_reg[8]_0 [6]),
        .I2(\lfsr_q_reg[0]_1 [2]),
        .I3(\lfsr_q_reg[0]_1 [1]),
        .I4(\lfsr_q_reg[0]_1 [0]),
        .I5(txphy_i_25_n_0),
        .O(q_a__47[6]));
  LUT6 #(
    .INIT(64'h00E00EFF00E00E00)) 
    txphy_i_14
       (.I0(\acmd_out[d]1 ),
        .I1(\lfsr_q_reg[8]_0 [5]),
        .I2(\lfsr_q_reg[0]_1 [2]),
        .I3(\lfsr_q_reg[0]_1 [1]),
        .I4(\lfsr_q_reg[0]_1 [0]),
        .I5(txphy_i_26_n_0),
        .O(q_a__47[5]));
  LUT6 #(
    .INIT(64'h00E00EFF00E00E00)) 
    txphy_i_15
       (.I0(\acmd_out[d]1 ),
        .I1(\lfsr_q_reg[8]_0 [4]),
        .I2(\lfsr_q_reg[0]_1 [2]),
        .I3(\lfsr_q_reg[0]_1 [1]),
        .I4(\lfsr_q_reg[0]_1 [0]),
        .I5(txphy_i_27_n_0),
        .O(q_a__47[4]));
  LUT6 #(
    .INIT(64'h00E00EFF00E00E00)) 
    txphy_i_16
       (.I0(\acmd_out[d]1 ),
        .I1(\lfsr_q_reg[8]_0 [3]),
        .I2(\lfsr_q_reg[0]_1 [2]),
        .I3(\lfsr_q_reg[0]_1 [1]),
        .I4(\lfsr_q_reg[0]_1 [0]),
        .I5(txphy_i_28_n_0),
        .O(q_a__47[3]));
  LUT6 #(
    .INIT(64'h00E00EFF00E00E00)) 
    txphy_i_17
       (.I0(\acmd_out[d]1 ),
        .I1(\lfsr_q_reg[8]_0 [2]),
        .I2(\lfsr_q_reg[0]_1 [2]),
        .I3(\lfsr_q_reg[0]_1 [1]),
        .I4(\lfsr_q_reg[0]_1 [0]),
        .I5(txphy_i_29_n_0),
        .O(q_a__47[2]));
  LUT6 #(
    .INIT(64'h00E00EFF00E00E00)) 
    txphy_i_18
       (.I0(\acmd_out[d]1 ),
        .I1(\lfsr_q_reg[8]_0 [1]),
        .I2(\lfsr_q_reg[0]_1 [2]),
        .I3(\lfsr_q_reg[0]_1 [1]),
        .I4(\lfsr_q_reg[0]_1 [0]),
        .I5(txphy_i_30_n_0),
        .O(q_a__47[1]));
  LUT6 #(
    .INIT(64'hFFC0C0C0EAEAEAEA)) 
    txphy_i_2
       (.I0(q_a__47[6]),
        .I1(d_tx_inferred_i_7),
        .I2(sw[5]),
        .I3(Q[5]),
        .I4(d_tx_inferred_i_7_0),
        .I5(smode_r_reg),
        .O(d[6]));
  LUT6 #(
    .INIT(64'h00E00EFF00E00E00)) 
    txphy_i_20
       (.I0(\acmd_out[d]1 ),
        .I1(\lfsr_q_reg[8]_0 [0]),
        .I2(\lfsr_q_reg[0]_1 [2]),
        .I3(\lfsr_q_reg[0]_1 [1]),
        .I4(\lfsr_q_reg[0]_1 [0]),
        .I5(txphy_i_31_n_0),
        .O(q_a__47[0]));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    txphy_i_22
       (.I0(txphy_i_32_n_0),
        .I1(\actr_i_reg[7] ),
        .I2(csum[7]),
        .I3(csum[15]),
        .I4(\lfsr_q_reg[0]_1 [2]),
        .I5(addr[7]),
        .O(txphy_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    txphy_i_25
       (.I0(txphy_i_32_n_0),
        .I1(\actr_i_reg[7] ),
        .I2(csum[6]),
        .I3(csum[14]),
        .I4(\lfsr_q_reg[0]_1 [2]),
        .I5(addr[6]),
        .O(txphy_i_25_n_0));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    txphy_i_26
       (.I0(txphy_i_32_n_0),
        .I1(\actr_i_reg[7] ),
        .I2(csum[5]),
        .I3(csum[13]),
        .I4(\lfsr_q_reg[0]_1 [2]),
        .I5(addr[5]),
        .O(txphy_i_26_n_0));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    txphy_i_27
       (.I0(txphy_i_32_n_0),
        .I1(\actr_i_reg[7] ),
        .I2(csum[4]),
        .I3(csum[12]),
        .I4(\lfsr_q_reg[0]_1 [2]),
        .I5(addr[4]),
        .O(txphy_i_27_n_0));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    txphy_i_28
       (.I0(txphy_i_32_n_0),
        .I1(\actr_i_reg[7] ),
        .I2(csum[3]),
        .I3(csum[11]),
        .I4(\lfsr_q_reg[0]_1 [2]),
        .I5(addr[3]),
        .O(txphy_i_28_n_0));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    txphy_i_29
       (.I0(txphy_i_32_n_0),
        .I1(\actr_i_reg[7] ),
        .I2(csum[2]),
        .I3(csum[10]),
        .I4(\lfsr_q_reg[0]_1 [2]),
        .I5(addr[2]),
        .O(txphy_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFC0C0C0EAEAEAEA)) 
    txphy_i_3
       (.I0(q_a__47[5]),
        .I1(d_tx_inferred_i_7),
        .I2(sw[4]),
        .I3(Q[4]),
        .I4(d_tx_inferred_i_7_0),
        .I5(smode_r_reg),
        .O(d[5]));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    txphy_i_30
       (.I0(txphy_i_32_n_0),
        .I1(\actr_i_reg[7] ),
        .I2(csum[1]),
        .I3(csum[9]),
        .I4(\lfsr_q_reg[0]_1 [2]),
        .I5(addr[1]),
        .O(txphy_i_30_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    txphy_i_31
       (.I0(txphy_i_34_n_0),
        .I1(csum[0]),
        .I2(txphy_i_35_n_0),
        .I3(csum[8]),
        .I4(\lfsr_q_reg[0]_1 [2]),
        .I5(addr[0]),
        .O(txphy_i_31_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFF0001)) 
    txphy_i_32
       (.I0(txphy_i_31_0[3]),
        .I1(txphy_i_31_0[2]),
        .I2(txphy_i_31_0[1]),
        .I3(txphy_i_31_0[0]),
        .I4(txphy_i_31_1),
        .I5(txphy_i_31_0[4]),
        .O(txphy_i_32_n_0));
  LUT6 #(
    .INIT(64'h000000000F0EFFFF)) 
    txphy_i_34
       (.I0(txphy_i_31_0[7]),
        .I1(txphy_i_31_0[6]),
        .I2(txphy_i_31_1),
        .I3(txphy_i_31_0[5]),
        .I4(txphy_i_32_n_0),
        .I5(\lfsr_q_reg[0]_1 [2]),
        .O(txphy_i_34_n_0));
  LUT6 #(
    .INIT(64'h00000000F0F10000)) 
    txphy_i_35
       (.I0(txphy_i_31_0[7]),
        .I1(txphy_i_31_0[6]),
        .I2(txphy_i_31_1),
        .I3(txphy_i_31_0[5]),
        .I4(txphy_i_32_n_0),
        .I5(\lfsr_q_reg[0]_1 [2]),
        .O(txphy_i_35_n_0));
  LUT6 #(
    .INIT(64'hFFC0C0C0EAEAEAEA)) 
    txphy_i_4
       (.I0(q_a__47[4]),
        .I1(d_tx_inferred_i_7),
        .I2(sw[3]),
        .I3(Q[3]),
        .I4(d_tx_inferred_i_7_0),
        .I5(smode_r_reg),
        .O(d[4]));
  LUT6 #(
    .INIT(64'hFFC0C0C0EAEAEAEA)) 
    txphy_i_5
       (.I0(q_a__47[3]),
        .I1(d_tx_inferred_i_7),
        .I2(sw[2]),
        .I3(Q[2]),
        .I4(d_tx_inferred_i_7_0),
        .I5(smode_r_reg),
        .O(d[3]));
  LUT6 #(
    .INIT(64'hFFC0C0C0EAEAEAEA)) 
    txphy_i_6
       (.I0(q_a__47[2]),
        .I1(d_tx_inferred_i_7),
        .I2(sw[1]),
        .I3(Q[1]),
        .I4(d_tx_inferred_i_7_0),
        .I5(smode_r_reg),
        .O(d[2]));
  LUT6 #(
    .INIT(64'hFFC0C0C0EAEAEAEA)) 
    txphy_i_7
       (.I0(q_a__47[1]),
        .I1(d_tx_inferred_i_7),
        .I2(sw[0]),
        .I3(Q[0]),
        .I4(d_tx_inferred_i_7_0),
        .I5(smode_r_reg),
        .O(d[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    txphy_i_8
       (.I0(d_tx_inferred_i_1),
        .I1(smode_r_reg),
        .I2(q_a__47[0]),
        .O(d[0]));
endmodule

(* ORIG_REF_NAME = "outputlogic_crc16" *) 
module design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16_3
   (E,
    D,
    \state_reg[0] ,
    \state_reg[1] ,
    ks,
    SS,
    Q,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    \state_reg[0]_2 ,
    err114_out__4,
    err1__6,
    err116_out__2,
    stbo,
    q,
    k,
    clk);
  output [0:0]E;
  output [1:0]D;
  output [0:0]\state_reg[0] ;
  output [0:0]\state_reg[1] ;
  output ks;
  output [0:0]SS;
  input [1:0]Q;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input \state_reg[0]_2 ;
  input err114_out__4;
  input err1__6;
  input err116_out__2;
  input stbo;
  input [7:0]q;
  input k;
  input clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SS;
  wire clk;
  wire err0__15;
  wire err114_out__4;
  wire err116_out__2;
  wire err1__6;
  wire \err[0]_i_3_n_0 ;
  wire \err[0]_i_4_n_0 ;
  wire \err[0]_i_5_n_0 ;
  wire \err[0]_i_6_n_0 ;
  wire err_i__1;
  wire k;
  wire ks;
  wire [15:0]lfsr_c;
  wire \lfsr_q[15]_i_4__0_n_0 ;
  wire \lfsr_q[15]_i_5_n_0 ;
  wire \lfsr_q[15]_i_6__0_n_0 ;
  wire \lfsr_q[15]_i_7_n_0 ;
  wire \lfsr_q[1]_i_2__0_n_0 ;
  wire \lfsr_q[1]_i_3_n_0 ;
  wire \lfsr_q[1]_i_4_n_0 ;
  wire \lfsr_q_reg_n_0_[0] ;
  wire \lfsr_q_reg_n_0_[10] ;
  wire \lfsr_q_reg_n_0_[11] ;
  wire \lfsr_q_reg_n_0_[12] ;
  wire \lfsr_q_reg_n_0_[13] ;
  wire \lfsr_q_reg_n_0_[14] ;
  wire \lfsr_q_reg_n_0_[15] ;
  wire \lfsr_q_reg_n_0_[1] ;
  wire \lfsr_q_reg_n_0_[2] ;
  wire \lfsr_q_reg_n_0_[3] ;
  wire \lfsr_q_reg_n_0_[4] ;
  wire \lfsr_q_reg_n_0_[5] ;
  wire \lfsr_q_reg_n_0_[6] ;
  wire \lfsr_q_reg_n_0_[7] ;
  wire \lfsr_q_reg_n_0_[8] ;
  wire \lfsr_q_reg_n_0_[9] ;
  wire [7:0]q;
  wire [0:0]\state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire [0:0]\state_reg[1] ;
  wire stbo;

  LUT6 #(
    .INIT(64'hAAAAAAAAEFAEEEEE)) 
    \err[0]_i_1 
       (.I0(err116_out__2),
        .I1(err0__15),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(err1__6),
        .I5(err114_out__4),
        .O(\state_reg[0] ));
  LUT5 #(
    .INIT(32'h40404000)) 
    \err[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(SS),
        .I3(\err[0]_i_3_n_0 ),
        .I4(\err[0]_i_4_n_0 ),
        .O(err0__15));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \err[0]_i_3 
       (.I0(\lfsr_q_reg_n_0_[11] ),
        .I1(\lfsr_q_reg_n_0_[10] ),
        .I2(\lfsr_q_reg_n_0_[9] ),
        .I3(\lfsr_q_reg_n_0_[8] ),
        .I4(\err[0]_i_5_n_0 ),
        .O(\err[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \err[0]_i_4 
       (.I0(\lfsr_q_reg_n_0_[3] ),
        .I1(\lfsr_q_reg_n_0_[2] ),
        .I2(\lfsr_q_reg_n_0_[1] ),
        .I3(\lfsr_q_reg_n_0_[0] ),
        .I4(\err[0]_i_6_n_0 ),
        .O(\err[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err[0]_i_5 
       (.I0(\lfsr_q_reg_n_0_[12] ),
        .I1(\lfsr_q_reg_n_0_[13] ),
        .I2(\lfsr_q_reg_n_0_[15] ),
        .I3(\lfsr_q_reg_n_0_[14] ),
        .O(\err[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err[0]_i_6 
       (.I0(\lfsr_q_reg_n_0_[4] ),
        .I1(\lfsr_q_reg_n_0_[5] ),
        .I2(\lfsr_q_reg_n_0_[6] ),
        .I3(\lfsr_q_reg_n_0_[7] ),
        .O(\err[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[0]_i_1__0 
       (.I0(q[2]),
        .I1(q[7]),
        .I2(\lfsr_q_reg_n_0_[15] ),
        .I3(\lfsr_q_reg_n_0_[8] ),
        .I4(\lfsr_q_reg_n_0_[9] ),
        .I5(\lfsr_q[15]_i_7_n_0 ),
        .O(lfsr_c[0]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \lfsr_q[15]_i_1__0 
       (.I0(\lfsr_q[15]_i_4__0_n_0 ),
        .I1(q[6]),
        .I2(q[7]),
        .I3(q[5]),
        .I4(q[4]),
        .I5(\lfsr_q[15]_i_5_n_0 ),
        .O(SS));
  LUT4 #(
    .INIT(16'h0040)) 
    \lfsr_q[15]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(stbo),
        .I3(ks),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[15]_i_3__0 
       (.I0(q[2]),
        .I1(\lfsr_q[15]_i_6__0_n_0 ),
        .I2(\lfsr_q_reg_n_0_[7] ),
        .I3(\lfsr_q_reg_n_0_[9] ),
        .I4(\lfsr_q_reg_n_0_[8] ),
        .I5(\lfsr_q[15]_i_7_n_0 ),
        .O(lfsr_c[15]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \lfsr_q[15]_i_4__0 
       (.I0(q[1]),
        .I1(q[0]),
        .O(\lfsr_q[15]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \lfsr_q[15]_i_5 
       (.I0(stbo),
        .I1(k),
        .I2(q[3]),
        .I3(q[2]),
        .O(\lfsr_q[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[15]_i_6__0 
       (.I0(\lfsr_q_reg_n_0_[15] ),
        .I1(q[7]),
        .O(\lfsr_q[15]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[15]_i_7 
       (.I0(\lfsr_q[1]_i_3_n_0 ),
        .I1(\lfsr_q_reg_n_0_[11] ),
        .I2(q[3]),
        .I3(\lfsr_q_reg_n_0_[10] ),
        .I4(q[0]),
        .I5(\lfsr_q[1]_i_4_n_0 ),
        .O(\lfsr_q[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[1]_i_1__0 
       (.I0(\lfsr_q[1]_i_2__0_n_0 ),
        .I1(\lfsr_q[1]_i_3_n_0 ),
        .I2(\lfsr_q[1]_i_4_n_0 ),
        .I3(\lfsr_q[15]_i_6__0_n_0 ),
        .I4(q[3]),
        .I5(\lfsr_q_reg_n_0_[11] ),
        .O(lfsr_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[1]_i_2__0 
       (.I0(\lfsr_q_reg_n_0_[9] ),
        .I1(\lfsr_q_reg_n_0_[10] ),
        .I2(q[2]),
        .O(\lfsr_q[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[1]_i_3 
       (.I0(\lfsr_q_reg_n_0_[12] ),
        .I1(q[4]),
        .O(\lfsr_q[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[1]_i_4 
       (.I0(q[6]),
        .I1(\lfsr_q_reg_n_0_[13] ),
        .I2(q[1]),
        .I3(\lfsr_q_reg_n_0_[14] ),
        .I4(q[5]),
        .O(\lfsr_q[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[2]_i_1__0 
       (.I0(q[1]),
        .I1(\lfsr_q_reg_n_0_[8] ),
        .I2(\lfsr_q_reg_n_0_[9] ),
        .I3(q[0]),
        .O(lfsr_c[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[3]_i_1__0 
       (.I0(q[1]),
        .I1(q[2]),
        .I2(\lfsr_q_reg_n_0_[10] ),
        .I3(\lfsr_q_reg_n_0_[9] ),
        .O(lfsr_c[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[4]_i_1__0 
       (.I0(\lfsr_q_reg_n_0_[10] ),
        .I1(\lfsr_q_reg_n_0_[11] ),
        .I2(q[3]),
        .I3(q[2]),
        .O(lfsr_c[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[5]_i_1__0 
       (.I0(q[3]),
        .I1(\lfsr_q_reg_n_0_[11] ),
        .I2(q[4]),
        .I3(\lfsr_q_reg_n_0_[12] ),
        .O(lfsr_c[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[6]_i_1 
       (.I0(\lfsr_q_reg_n_0_[13] ),
        .I1(q[5]),
        .I2(q[4]),
        .I3(\lfsr_q_reg_n_0_[12] ),
        .O(lfsr_c[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[7]_i_1 
       (.I0(\lfsr_q_reg_n_0_[14] ),
        .I1(q[6]),
        .I2(\lfsr_q_reg_n_0_[13] ),
        .I3(q[5]),
        .O(lfsr_c[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[8]_i_1 
       (.I0(q[7]),
        .I1(\lfsr_q_reg_n_0_[15] ),
        .I2(q[6]),
        .I3(\lfsr_q_reg_n_0_[14] ),
        .I4(\lfsr_q_reg_n_0_[0] ),
        .O(lfsr_c[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[9]_i_1__0 
       (.I0(\lfsr_q_reg_n_0_[1] ),
        .I1(q[7]),
        .I2(\lfsr_q_reg_n_0_[15] ),
        .O(lfsr_c[9]));
  FDSE \lfsr_q_reg[0] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(lfsr_c[0]),
        .Q(\lfsr_q_reg_n_0_[0] ),
        .S(SS));
  FDSE \lfsr_q_reg[10] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(\lfsr_q_reg_n_0_[2] ),
        .Q(\lfsr_q_reg_n_0_[10] ),
        .S(SS));
  FDSE \lfsr_q_reg[11] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(\lfsr_q_reg_n_0_[3] ),
        .Q(\lfsr_q_reg_n_0_[11] ),
        .S(SS));
  FDSE \lfsr_q_reg[12] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(\lfsr_q_reg_n_0_[4] ),
        .Q(\lfsr_q_reg_n_0_[12] ),
        .S(SS));
  FDSE \lfsr_q_reg[13] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(\lfsr_q_reg_n_0_[5] ),
        .Q(\lfsr_q_reg_n_0_[13] ),
        .S(SS));
  FDSE \lfsr_q_reg[14] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(\lfsr_q_reg_n_0_[6] ),
        .Q(\lfsr_q_reg_n_0_[14] ),
        .S(SS));
  FDSE \lfsr_q_reg[15] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(lfsr_c[15]),
        .Q(\lfsr_q_reg_n_0_[15] ),
        .S(SS));
  FDSE \lfsr_q_reg[1] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(lfsr_c[1]),
        .Q(\lfsr_q_reg_n_0_[1] ),
        .S(SS));
  FDSE \lfsr_q_reg[2] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(lfsr_c[2]),
        .Q(\lfsr_q_reg_n_0_[2] ),
        .S(SS));
  FDSE \lfsr_q_reg[3] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(lfsr_c[3]),
        .Q(\lfsr_q_reg_n_0_[3] ),
        .S(SS));
  FDSE \lfsr_q_reg[4] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(lfsr_c[4]),
        .Q(\lfsr_q_reg_n_0_[4] ),
        .S(SS));
  FDSE \lfsr_q_reg[5] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(lfsr_c[5]),
        .Q(\lfsr_q_reg_n_0_[5] ),
        .S(SS));
  FDSE \lfsr_q_reg[6] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(lfsr_c[6]),
        .Q(\lfsr_q_reg_n_0_[6] ),
        .S(SS));
  FDSE \lfsr_q_reg[7] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(lfsr_c[7]),
        .Q(\lfsr_q_reg_n_0_[7] ),
        .S(SS));
  FDSE \lfsr_q_reg[8] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(lfsr_c[8]),
        .Q(\lfsr_q_reg_n_0_[8] ),
        .S(SS));
  FDSE \lfsr_q_reg[9] 
       (.C(clk),
        .CE(\state_reg[1] ),
        .D(lfsr_c[9]),
        .Q(\lfsr_q_reg_n_0_[9] ),
        .S(SS));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \sctr[4]_i_1 
       (.I0(\lfsr_q[15]_i_4__0_n_0 ),
        .I1(q[7]),
        .I2(q[6]),
        .I3(q[5]),
        .I4(q[4]),
        .I5(\lfsr_q[15]_i_5_n_0 ),
        .O(ks));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[0]_i_1 
       (.I0(err_i__1),
        .I1(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF66664440)) 
    \state[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[0]_1 ),
        .I4(err_i__1),
        .I5(\state_reg[0]_2 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \state[1]_i_2 
       (.I0(err_i__1),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAEEA)) 
    \state[1]_i_5 
       (.I0(err114_out__4),
        .I1(err1__6),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(err0__15),
        .I5(err116_out__2),
        .O(err_i__1));
endmodule

(* ORIG_REF_NAME = "pdts_acmd_rx" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_acmd_rx
   (s_reg_0,
    Q,
    clk,
    a_stb,
    SR,
    a_first,
    E,
    out,
    q);
  output s_reg_0;
  output [11:0]Q;
  input clk;
  input a_stb;
  input [0:0]SR;
  input a_first;
  input [0:0]E;
  input [0:0]out;
  input [7:0]q;

  wire [0:0]E;
  wire [11:0]Q;
  wire [0:0]SR;
  wire a_first;
  wire a_stb;
  wire \c[0]_i_1_n_0 ;
  wire \c[1]_i_1_n_0 ;
  wire \c[2]_i_1_n_0 ;
  wire \c[3]_i_3_n_0 ;
  wire \c_reg_n_0_[0] ;
  wire \c_reg_n_0_[1] ;
  wire \c_reg_n_0_[2] ;
  wire \c_reg_n_0_[3] ;
  wire clk;
  wire [0:0]out;
  wire [7:0]q;
  wire \q[7]_i_1_n_0 ;
  wire s_i_1_n_0;
  wire s_i_2_n_0;
  wire s_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hDE)) 
    \c[0]_i_1 
       (.I0(a_stb),
        .I1(E),
        .I2(\c_reg_n_0_[0] ),
        .O(\c[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[1]_i_1 
       (.I0(\c_reg_n_0_[0] ),
        .I1(\c_reg_n_0_[1] ),
        .O(\c[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \c[2]_i_1 
       (.I0(\c_reg_n_0_[0] ),
        .I1(\c_reg_n_0_[1] ),
        .I2(\c_reg_n_0_[2] ),
        .O(\c[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \c[3]_i_3 
       (.I0(\c_reg_n_0_[1] ),
        .I1(\c_reg_n_0_[0] ),
        .I2(\c_reg_n_0_[2] ),
        .I3(\c_reg_n_0_[3] ),
        .O(\c[3]_i_3_n_0 ));
  FDRE \c_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\c[0]_i_1_n_0 ),
        .Q(\c_reg_n_0_[0] ),
        .R(out));
  FDRE \c_reg[1] 
       (.C(clk),
        .CE(a_stb),
        .D(\c[1]_i_1_n_0 ),
        .Q(\c_reg_n_0_[1] ),
        .R(SR));
  FDRE \c_reg[2] 
       (.C(clk),
        .CE(a_stb),
        .D(\c[2]_i_1_n_0 ),
        .Q(\c_reg_n_0_[2] ),
        .R(SR));
  FDRE \c_reg[3] 
       (.C(clk),
        .CE(a_stb),
        .D(\c[3]_i_3_n_0 ),
        .Q(\c_reg_n_0_[3] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \q[7]_i_1 
       (.I0(a_stb),
        .I1(\c_reg_n_0_[1] ),
        .I2(\c_reg_n_0_[0] ),
        .I3(\c_reg_n_0_[3] ),
        .I4(\c_reg_n_0_[2] ),
        .I5(a_first),
        .O(\q[7]_i_1_n_0 ));
  FDRE \q_reg[10] 
       (.C(clk),
        .CE(E),
        .D(q[2]),
        .Q(Q[6]),
        .R(out));
  FDRE \q_reg[11] 
       (.C(clk),
        .CE(E),
        .D(q[3]),
        .Q(Q[7]),
        .R(out));
  FDRE \q_reg[12] 
       (.C(clk),
        .CE(E),
        .D(q[4]),
        .Q(Q[8]),
        .R(out));
  FDRE \q_reg[13] 
       (.C(clk),
        .CE(E),
        .D(q[5]),
        .Q(Q[9]),
        .R(out));
  FDRE \q_reg[14] 
       (.C(clk),
        .CE(E),
        .D(q[6]),
        .Q(Q[10]),
        .R(out));
  FDRE \q_reg[15] 
       (.C(clk),
        .CE(E),
        .D(q[7]),
        .Q(Q[11]),
        .R(out));
  FDRE \q_reg[4] 
       (.C(clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(q[4]),
        .Q(Q[0]),
        .R(out));
  FDRE \q_reg[5] 
       (.C(clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(q[5]),
        .Q(Q[1]),
        .R(out));
  FDRE \q_reg[6] 
       (.C(clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(q[6]),
        .Q(Q[2]),
        .R(out));
  FDRE \q_reg[7] 
       (.C(clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(q[7]),
        .Q(Q[3]),
        .R(out));
  FDRE \q_reg[8] 
       (.C(clk),
        .CE(E),
        .D(q[0]),
        .Q(Q[4]),
        .R(out));
  FDRE \q_reg[9] 
       (.C(clk),
        .CE(E),
        .D(q[1]),
        .Q(Q[5]),
        .R(out));
  LUT6 #(
    .INIT(64'h00000000AAAEAAAA)) 
    s_i_1
       (.I0(s_reg_0),
        .I1(s_i_2_n_0),
        .I2(\c_reg_n_0_[2] ),
        .I3(\c_reg_n_0_[3] ),
        .I4(a_stb),
        .I5(SR),
        .O(s_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s_i_2
       (.I0(\c_reg_n_0_[1] ),
        .I1(\c_reg_n_0_[0] ),
        .O(s_i_2_n_0));
  FDRE s_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_i_1_n_0),
        .Q(s_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_adjust" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_adjust
   (adj_req,
    tx_en,
    adj_ack_i,
    tx_dis,
    \fdel_reg[3]_0 ,
    \cdel_reg[5]_0 ,
    \da_reg[0] ,
    clk,
    sclk,
    srst,
    \s_reg[4] ,
    Q,
    \s_reg[4][0] );
  output adj_req;
  output tx_en;
  output adj_ack_i;
  output tx_dis;
  output [3:0]\fdel_reg[3]_0 ;
  output [5:0]\cdel_reg[5]_0 ;
  input \da_reg[0] ;
  input clk;
  input sclk;
  input srst;
  input \s_reg[4] ;
  input [11:0]Q;
  input [0:0]\s_reg[4][0] ;

  wire [11:0]Q;
  wire adj_ack_i;
  wire adj_req;
  wire [5:0]cdel_i;
  wire [5:0]\cdel_reg[5]_0 ;
  wire clk;
  wire \da_reg[0] ;
  wire [3:0]fdel_i;
  wire fdel_i_0;
  wire [3:0]\fdel_reg[3]_0 ;
  wire \s_reg[4] ;
  wire [0:0]\s_reg[4][0] ;
  wire sclk;
  wire srst;
  wire sync_n_1;
  wire sync_n_3;
  wire tx_dis;
  wire tx_en;
  wire u;
  wire ud;

  FDRE adj_req_reg
       (.C(sclk),
        .CE(1'b1),
        .D(sync_n_1),
        .Q(adj_req),
        .R(1'b0));
  FDRE \cdel_i_reg[0] 
       (.C(sclk),
        .CE(fdel_i_0),
        .D(Q[4]),
        .Q(cdel_i[0]),
        .R(1'b0));
  FDRE \cdel_i_reg[1] 
       (.C(sclk),
        .CE(fdel_i_0),
        .D(Q[5]),
        .Q(cdel_i[1]),
        .R(1'b0));
  FDRE \cdel_i_reg[2] 
       (.C(sclk),
        .CE(fdel_i_0),
        .D(Q[6]),
        .Q(cdel_i[2]),
        .R(1'b0));
  FDRE \cdel_i_reg[3] 
       (.C(sclk),
        .CE(fdel_i_0),
        .D(Q[7]),
        .Q(cdel_i[3]),
        .R(1'b0));
  FDRE \cdel_i_reg[4] 
       (.C(sclk),
        .CE(fdel_i_0),
        .D(Q[8]),
        .Q(cdel_i[4]),
        .R(1'b0));
  FDRE \cdel_i_reg[5] 
       (.C(sclk),
        .CE(fdel_i_0),
        .D(Q[9]),
        .Q(cdel_i[5]),
        .R(1'b0));
  FDRE \cdel_reg[0] 
       (.C(sclk),
        .CE(\s_reg[4] ),
        .D(cdel_i[0]),
        .Q(\cdel_reg[5]_0 [0]),
        .R(srst));
  FDRE \cdel_reg[1] 
       (.C(sclk),
        .CE(\s_reg[4] ),
        .D(cdel_i[1]),
        .Q(\cdel_reg[5]_0 [1]),
        .R(srst));
  FDRE \cdel_reg[2] 
       (.C(sclk),
        .CE(\s_reg[4] ),
        .D(cdel_i[2]),
        .Q(\cdel_reg[5]_0 [2]),
        .R(srst));
  FDRE \cdel_reg[3] 
       (.C(sclk),
        .CE(\s_reg[4] ),
        .D(cdel_i[3]),
        .Q(\cdel_reg[5]_0 [3]),
        .R(srst));
  FDRE \cdel_reg[4] 
       (.C(sclk),
        .CE(\s_reg[4] ),
        .D(cdel_i[4]),
        .Q(\cdel_reg[5]_0 [4]),
        .R(srst));
  FDRE \cdel_reg[5] 
       (.C(sclk),
        .CE(\s_reg[4] ),
        .D(cdel_i[5]),
        .Q(\cdel_reg[5]_0 [5]),
        .R(srst));
  FDRE \fdel_i_reg[0] 
       (.C(sclk),
        .CE(fdel_i_0),
        .D(Q[0]),
        .Q(fdel_i[0]),
        .R(1'b0));
  FDRE \fdel_i_reg[1] 
       (.C(sclk),
        .CE(fdel_i_0),
        .D(Q[1]),
        .Q(fdel_i[1]),
        .R(1'b0));
  FDRE \fdel_i_reg[2] 
       (.C(sclk),
        .CE(fdel_i_0),
        .D(Q[2]),
        .Q(fdel_i[2]),
        .R(1'b0));
  FDRE \fdel_i_reg[3] 
       (.C(sclk),
        .CE(fdel_i_0),
        .D(Q[3]),
        .Q(fdel_i[3]),
        .R(1'b0));
  FDRE \fdel_reg[0] 
       (.C(sclk),
        .CE(\s_reg[4] ),
        .D(fdel_i[0]),
        .Q(\fdel_reg[3]_0 [0]),
        .R(srst));
  FDRE \fdel_reg[1] 
       (.C(sclk),
        .CE(\s_reg[4] ),
        .D(fdel_i[1]),
        .Q(\fdel_reg[3]_0 [1]),
        .R(srst));
  FDRE \fdel_reg[2] 
       (.C(sclk),
        .CE(\s_reg[4] ),
        .D(fdel_i[2]),
        .Q(\fdel_reg[3]_0 [2]),
        .R(srst));
  FDRE \fdel_reg[3] 
       (.C(sclk),
        .CE(\s_reg[4] ),
        .D(fdel_i[3]),
        .Q(\fdel_reg[3]_0 [3]),
        .R(srst));
  LUT2 #(
    .INIT(4'h8)) 
    \s_reg[3][0]_srl3_i_1 
       (.I0(adj_req),
        .I1(\s_reg[4][0] ),
        .O(adj_ack_i));
  design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized1 sync
       (.E(fdel_i_0),
        .Q(Q[11:10]),
        .adj_req(adj_req),
        .clk(clk),
        .\da_reg[0]_0 (\da_reg[0] ),
        .out(u),
        .\q_reg[15] (sync_n_3),
        .\s_reg[4] (\s_reg[4] ),
        .sclk(sclk),
        .srst(srst),
        .srst_0(sync_n_1),
        .tx_en(tx_en),
        .ud(ud));
  LUT1 #(
    .INIT(2'h1)) 
    tx_dis_INST_0
       (.I0(tx_en),
        .O(tx_dis));
  FDRE tx_en_reg
       (.C(sclk),
        .CE(1'b1),
        .D(sync_n_3),
        .Q(tx_en),
        .R(srst));
  FDRE ud_reg
       (.C(sclk),
        .CE(1'b1),
        .D(u),
        .Q(ud),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_chklock" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_chklock
   (debug,
    \ctrs_reg[0][6]_0 ,
    D,
    \FSM_onehot_state_reg[8] ,
    pll_locked,
    cdr_lol,
    srst,
    cdr_los,
    sfp_los,
    Q,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[7] ,
    sclk);
  output [0:0]debug;
  output \ctrs_reg[0][6]_0 ;
  output [2:0]D;
  output \FSM_onehot_state_reg[8] ;
  input pll_locked;
  input cdr_lol;
  input srst;
  input cdr_los;
  input sfp_los;
  input [7:0]Q;
  input \FSM_onehot_state_reg[3] ;
  input \FSM_onehot_state_reg[7] ;
  input sclk;

  wire [2:0]D;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[7] ;
  wire \FSM_onehot_state_reg[8] ;
  wire [7:0]Q;
  wire cdr_lol;
  wire cdr_los;
  wire \ctrs[0][2]_i_1_n_0 ;
  wire \ctrs[0][3]_i_1_n_0 ;
  wire \ctrs[0][4]_i_1_n_0 ;
  wire \ctrs[0][5]_i_1_n_0 ;
  wire \ctrs[0][6]_i_1_n_0 ;
  wire \ctrs[0][7]_i_1_n_0 ;
  wire \ctrs[0][7]_i_2_n_0 ;
  wire \ctrs_reg[0][6]_0 ;
  wire [7:0]\ctrs_reg[0]_0 ;
  wire [0:0]debug;
  wire \debug[2]_INST_0_i_2_n_0 ;
  wire pll_locked;
  wire [1:0]plusOp__1;
  wire sclk;
  wire sfp_los;
  wire srst;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \FSM_onehot_state[0]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(\ctrs_reg[0][6]_0 ),
        .I5(Q[7]),
        .O(\FSM_onehot_state_reg[8] ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFEEEFE)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[6]),
        .I3(\ctrs_reg[0][6]_0 ),
        .I4(\FSM_onehot_state_reg[3] ),
        .I5(Q[0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(Q[5]),
        .I1(\ctrs_reg[0][6]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(Q[7]),
        .I1(\ctrs_reg[0][6]_0 ),
        .I2(\FSM_onehot_state_reg[7] ),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(D[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \ctrs[0][0]_i_1 
       (.I0(\ctrs_reg[0]_0 [0]),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctrs[0][1]_i_1 
       (.I0(\ctrs_reg[0]_0 [0]),
        .I1(\ctrs_reg[0]_0 [1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ctrs[0][2]_i_1 
       (.I0(\ctrs_reg[0]_0 [1]),
        .I1(\ctrs_reg[0]_0 [0]),
        .I2(\ctrs_reg[0]_0 [2]),
        .O(\ctrs[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ctrs[0][3]_i_1 
       (.I0(\ctrs_reg[0]_0 [2]),
        .I1(\ctrs_reg[0]_0 [0]),
        .I2(\ctrs_reg[0]_0 [1]),
        .I3(\ctrs_reg[0]_0 [3]),
        .O(\ctrs[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ctrs[0][4]_i_1 
       (.I0(\ctrs_reg[0]_0 [3]),
        .I1(\ctrs_reg[0]_0 [1]),
        .I2(\ctrs_reg[0]_0 [0]),
        .I3(\ctrs_reg[0]_0 [2]),
        .I4(\ctrs_reg[0]_0 [4]),
        .O(\ctrs[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ctrs[0][5]_i_1 
       (.I0(\ctrs_reg[0]_0 [4]),
        .I1(\ctrs_reg[0]_0 [2]),
        .I2(\ctrs_reg[0]_0 [0]),
        .I3(\ctrs_reg[0]_0 [1]),
        .I4(\ctrs_reg[0]_0 [3]),
        .I5(\ctrs_reg[0]_0 [5]),
        .O(\ctrs[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \ctrs[0][6]_i_1 
       (.I0(\debug[2]_INST_0_i_2_n_0 ),
        .I1(\ctrs_reg[0]_0 [6]),
        .O(\ctrs[0][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \ctrs[0][7]_i_1 
       (.I0(pll_locked),
        .I1(cdr_lol),
        .I2(srst),
        .I3(cdr_los),
        .I4(sfp_los),
        .O(\ctrs[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \ctrs[0][7]_i_2 
       (.I0(\ctrs_reg[0]_0 [6]),
        .I1(\debug[2]_INST_0_i_2_n_0 ),
        .I2(\ctrs_reg[0]_0 [7]),
        .O(\ctrs[0][7]_i_2_n_0 ));
  FDRE \ctrs_reg[0][0] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(plusOp__1[0]),
        .Q(\ctrs_reg[0]_0 [0]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][1] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(plusOp__1[1]),
        .Q(\ctrs_reg[0]_0 [1]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][2] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(\ctrs[0][2]_i_1_n_0 ),
        .Q(\ctrs_reg[0]_0 [2]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][3] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(\ctrs[0][3]_i_1_n_0 ),
        .Q(\ctrs_reg[0]_0 [3]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][4] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(\ctrs[0][4]_i_1_n_0 ),
        .Q(\ctrs_reg[0]_0 [4]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][5] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(\ctrs[0][5]_i_1_n_0 ),
        .Q(\ctrs_reg[0]_0 [5]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][6] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(\ctrs[0][6]_i_1_n_0 ),
        .Q(\ctrs_reg[0]_0 [6]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][7] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(\ctrs[0][7]_i_2_n_0 ),
        .Q(\ctrs_reg[0]_0 [7]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debug[2]_INST_0 
       (.I0(\ctrs_reg[0][6]_0 ),
        .O(debug));
  LUT3 #(
    .INIT(8'hDF)) 
    \debug[2]_INST_0_i_1 
       (.I0(\ctrs_reg[0]_0 [6]),
        .I1(\debug[2]_INST_0_i_2_n_0 ),
        .I2(\ctrs_reg[0]_0 [7]),
        .O(\ctrs_reg[0][6]_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \debug[2]_INST_0_i_2 
       (.I0(\ctrs_reg[0]_0 [4]),
        .I1(\ctrs_reg[0]_0 [2]),
        .I2(\ctrs_reg[0]_0 [0]),
        .I3(\ctrs_reg[0]_0 [1]),
        .I4(\ctrs_reg[0]_0 [3]),
        .I5(\ctrs_reg[0]_0 [5]),
        .O(\debug[2]_INST_0_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "pdts_cksum" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_cksum
   (d,
    smode__1,
    \actr_i_reg[7] ,
    SS,
    d_tx_inferred_i_1,
    d_tx_inferred_i_7,
    sw,
    Q,
    d_tx_inferred_i_7_0,
    smode_r,
    active,
    s_stb,
    \lfsr_q_reg[0] ,
    s_first,
    s_ok,
    \acmd_out[d]1 ,
    \lfsr_q_reg[8] ,
    \lfsr_q_reg[0]_0 ,
    addr,
    txphy_i_31,
    txphy_i_31_0,
    stbo,
    clk);
  output [7:0]d;
  output smode__1;
  output \actr_i_reg[7] ;
  output [0:0]SS;
  input d_tx_inferred_i_1;
  input d_tx_inferred_i_7;
  input [6:0]sw;
  input [6:0]Q;
  input d_tx_inferred_i_7_0;
  input smode_r;
  input active;
  input s_stb;
  input \lfsr_q_reg[0] ;
  input s_first;
  input s_ok;
  input \acmd_out[d]1 ;
  input [7:0]\lfsr_q_reg[8] ;
  input [2:0]\lfsr_q_reg[0]_0 ;
  input [7:0]addr;
  input [7:0]txphy_i_31;
  input txphy_i_31_0;
  input stbo;
  input clk;

  wire [6:0]Q;
  wire [0:0]SS;
  wire \acmd_out[d]1 ;
  wire active;
  wire \actr_i_reg[7] ;
  wire [7:0]addr;
  wire clk;
  wire [7:0]d;
  wire d_tx_inferred_i_1;
  wire d_tx_inferred_i_7;
  wire d_tx_inferred_i_7_0;
  wire \lfsr_q_reg[0] ;
  wire [2:0]\lfsr_q_reg[0]_0 ;
  wire [7:0]\lfsr_q_reg[8] ;
  wire s_first;
  wire s_ok;
  wire s_stb;
  wire smode__1;
  wire smode_r;
  wire stbo;
  wire [6:0]sw;
  wire [7:0]txphy_i_31;
  wire txphy_i_31_0;

  design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16 crc
       (.Q(Q),
        .SS(SS),
        .\acmd_out[d]1 (\acmd_out[d]1 ),
        .active(active),
        .\actr_i_reg[7] (\actr_i_reg[7] ),
        .addr(addr),
        .clk(clk),
        .d(d),
        .d_tx_inferred_i_1(d_tx_inferred_i_1),
        .d_tx_inferred_i_7(d_tx_inferred_i_7),
        .d_tx_inferred_i_7_0(d_tx_inferred_i_7_0),
        .\lfsr_q_reg[0]_0 (\lfsr_q_reg[0] ),
        .\lfsr_q_reg[0]_1 (\lfsr_q_reg[0]_0 ),
        .\lfsr_q_reg[8]_0 (\lfsr_q_reg[8] ),
        .s_first(s_first),
        .s_ok(s_ok),
        .s_stb(s_stb),
        .smode_r(smode_r),
        .smode_r_reg(smode__1),
        .stbo(stbo),
        .sw(sw),
        .txphy_i_31_0(txphy_i_31),
        .txphy_i_31_1(txphy_i_31_0));
endmodule

(* ORIG_REF_NAME = "pdts_cksum" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_cksum_2
   (E,
    D,
    \state_reg[0] ,
    \state_reg[1] ,
    ks,
    ka,
    Q,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    \state_reg[0]_2 ,
    err114_out__4,
    err1__6,
    err116_out__2,
    stbo,
    q,
    k,
    clk);
  output [0:0]E;
  output [1:0]D;
  output [0:0]\state_reg[0] ;
  output [0:0]\state_reg[1] ;
  output ks;
  output ka;
  input [1:0]Q;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input \state_reg[0]_2 ;
  input err114_out__4;
  input err1__6;
  input err116_out__2;
  input stbo;
  input [7:0]q;
  input k;
  input clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire err114_out__4;
  wire err116_out__2;
  wire err1__6;
  wire k;
  wire ka;
  wire ks;
  wire [7:0]q;
  wire [0:0]\state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire [0:0]\state_reg[1] ;
  wire stbo;

  design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16_3 crc
       (.D(D),
        .E(E),
        .Q(Q),
        .SS(ka),
        .clk(clk),
        .err114_out__4(err114_out__4),
        .err116_out__2(err116_out__2),
        .err1__6(err1__6),
        .k(k),
        .ks(ks),
        .q(q),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[0]_1 (\state_reg[0]_1 ),
        .\state_reg[0]_2 (\state_reg[0]_2 ),
        .\state_reg[1] (\state_reg[1] ),
        .stbo(stbo));
endmodule

(* ORIG_REF_NAME = "pdts_dec8b10b" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_dec8b10b
   (clk,
    rst,
    en,
    d,
    q,
    k,
    cerr,
    derr);
  input clk;
  input rst;
  input en;
  input [9:0]d;
  output [7:0]q;
  output k;
  output cerr;
  output derr;

  wire cerr;
  wire cerr_i_10_n_0;
  wire cerr_i_11_n_0;
  wire cerr_i_12_n_0;
  wire cerr_i_13_n_0;
  wire cerr_i_14_n_0;
  wire cerr_i_15_n_0;
  wire cerr_i_2_n_0;
  wire cerr_i_3_n_0;
  wire cerr_i_4_n_0;
  wire cerr_i_5_n_0;
  wire cerr_i_6_n_0;
  wire cerr_i_7_n_0;
  wire cerr_i_8_n_0;
  wire cerr_i_9_n_0;
  wire clk;
  wire codeErr;
  wire [9:0]d;
  wire dataKOut;
  wire [7:0]dataOut;
  wire derr;
  wire derr_i_2_n_0;
  wire derr_i_3_n_0;
  wire derr_i_4_n_0;
  wire derr_i_5_n_0;
  wire derr_i_6_n_0;
  wire derr_i_7_n_0;
  wire disp;
  wire dispErr;
  wire disp_i_1_n_0;
  wire disp_i_2_n_0;
  wire disp_i_3_n_0;
  wire disp_i_4_n_0;
  wire disp_i_5_n_0;
  wire disp_i_6_n_0;
  wire en;
  wire k;
  wire k_i_2_n_0;
  wire k_i_3_n_0;
  wire k_i_4_n_0;
  wire k_i_5_n_0;
  wire k_i_6_n_0;
  wire [7:0]q;
  wire \q[2]_i_1_n_0 ;
  wire \q[3]_i_1_n_0 ;
  wire \q[4]_i_1_n_0 ;
  wire \q[7]_i_2_n_0 ;
  wire rst;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    cerr_i_1
       (.I0(cerr_i_2_n_0),
        .I1(cerr_i_3_n_0),
        .I2(cerr_i_4_n_0),
        .I3(cerr_i_5_n_0),
        .I4(cerr_i_6_n_0),
        .I5(cerr_i_7_n_0),
        .O(codeErr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    cerr_i_10
       (.I0(d[5]),
        .I1(d[4]),
        .O(cerr_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cerr_i_11
       (.I0(d[5]),
        .I1(d[4]),
        .O(cerr_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    cerr_i_12
       (.I0(d[1]),
        .I1(d[0]),
        .I2(d[2]),
        .I3(d[4]),
        .I4(d[5]),
        .O(cerr_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6EEE)) 
    cerr_i_13
       (.I0(d[5]),
        .I1(d[4]),
        .I2(d[2]),
        .I3(d[3]),
        .O(cerr_i_13_n_0));
  LUT6 #(
    .INIT(64'h0022222205050500)) 
    cerr_i_14
       (.I0(d[5]),
        .I1(k_i_2_n_0),
        .I2(k_i_5_n_0),
        .I3(d[3]),
        .I4(d[2]),
        .I5(d[4]),
        .O(cerr_i_14_n_0));
  LUT6 #(
    .INIT(64'hF11111111111111F)) 
    cerr_i_15
       (.I0(k_i_2_n_0),
        .I1(d[6]),
        .I2(d[1]),
        .I3(d[0]),
        .I4(d[2]),
        .I5(d[3]),
        .O(cerr_i_15_n_0));
  LUT6 #(
    .INIT(64'h3CC2C22800020228)) 
    cerr_i_2
       (.I0(cerr_i_8_n_0),
        .I1(d[7]),
        .I2(d[6]),
        .I3(d[8]),
        .I4(d[9]),
        .I5(derr_i_5_n_0),
        .O(cerr_i_2_n_0));
  LUT6 #(
    .INIT(64'hAEAAAEBBBEEEBEFF)) 
    cerr_i_3
       (.I0(cerr_i_9_n_0),
        .I1(d[5]),
        .I2(k_i_3_n_0),
        .I3(d[4]),
        .I4(k_i_6_n_0),
        .I5(k_i_2_n_0),
        .O(cerr_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000800088888)) 
    cerr_i_4
       (.I0(cerr_i_10_n_0),
        .I1(derr_i_4_n_0),
        .I2(d[9]),
        .I3(d[8]),
        .I4(d[6]),
        .I5(d[7]),
        .O(cerr_i_4_n_0));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    cerr_i_5
       (.I0(d[8]),
        .I1(d[7]),
        .I2(d[6]),
        .I3(\q[7]_i_2_n_0 ),
        .I4(d[9]),
        .I5(cerr_i_11_n_0),
        .O(cerr_i_5_n_0));
  LUT6 #(
    .INIT(64'hCC88CC008800000F)) 
    cerr_i_6
       (.I0(d[9]),
        .I1(cerr_i_12_n_0),
        .I2(cerr_i_13_n_0),
        .I3(d[6]),
        .I4(d[8]),
        .I5(d[7]),
        .O(cerr_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFABBAFFFFAABA)) 
    cerr_i_7
       (.I0(cerr_i_14_n_0),
        .I1(k_i_5_n_0),
        .I2(d[4]),
        .I3(d[5]),
        .I4(cerr_i_15_n_0),
        .I5(k_i_6_n_0),
        .O(cerr_i_7_n_0));
  LUT6 #(
    .INIT(64'h000001160116177E)) 
    cerr_i_8
       (.I0(d[1]),
        .I1(d[0]),
        .I2(d[2]),
        .I3(d[3]),
        .I4(d[5]),
        .I5(d[4]),
        .O(cerr_i_8_n_0));
  LUT6 #(
    .INIT(64'h020000C002000000)) 
    cerr_i_9
       (.I0(cerr_i_8_n_0),
        .I1(d[6]),
        .I2(d[7]),
        .I3(d[9]),
        .I4(d[8]),
        .I5(derr_i_5_n_0),
        .O(cerr_i_9_n_0));
  FDRE cerr_reg
       (.C(clk),
        .CE(en),
        .D(codeErr),
        .Q(cerr),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBABBBB)) 
    derr_i_1
       (.I0(cerr_i_2_n_0),
        .I1(derr_i_2_n_0),
        .I2(derr_i_3_n_0),
        .I3(derr_i_4_n_0),
        .I4(disp),
        .I5(derr_i_5_n_0),
        .O(dispErr));
  LUT5 #(
    .INIT(32'h0000000E)) 
    derr_i_2
       (.I0(derr_i_6_n_0),
        .I1(derr_i_5_n_0),
        .I2(disp),
        .I3(derr_i_7_n_0),
        .I4(cerr_i_8_n_0),
        .O(derr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55404000)) 
    derr_i_3
       (.I0(cerr_i_8_n_0),
        .I1(d[9]),
        .I2(d[8]),
        .I3(d[6]),
        .I4(d[7]),
        .O(derr_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    derr_i_4
       (.I0(d[2]),
        .I1(d[0]),
        .I2(d[1]),
        .O(derr_i_4_n_0));
  LUT6 #(
    .INIT(64'h7EE8688068800000)) 
    derr_i_5
       (.I0(d[1]),
        .I1(d[0]),
        .I2(d[2]),
        .I3(d[3]),
        .I4(d[5]),
        .I5(d[4]),
        .O(derr_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEEE8)) 
    derr_i_6
       (.I0(d[7]),
        .I1(d[6]),
        .I2(d[8]),
        .I3(d[9]),
        .O(derr_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    derr_i_7
       (.I0(d[2]),
        .I1(d[0]),
        .I2(d[1]),
        .O(derr_i_7_n_0));
  FDRE derr_reg
       (.C(clk),
        .CE(en),
        .D(dispErr),
        .Q(derr),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000002E2E2E22)) 
    disp_i_1
       (.I0(disp),
        .I1(en),
        .I2(disp_i_2_n_0),
        .I3(d[8]),
        .I4(d[9]),
        .I5(rst),
        .O(disp_i_1_n_0));
  LUT6 #(
    .INIT(64'h8A8A8A8A8888888A)) 
    disp_i_2
       (.I0(disp_i_3_n_0),
        .I1(disp_i_4_n_0),
        .I2(d[3]),
        .I3(disp),
        .I4(k_i_6_n_0),
        .I5(cerr_i_10_n_0),
        .O(disp_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    disp_i_3
       (.I0(d[9]),
        .I1(d[8]),
        .I2(d[6]),
        .I3(d[7]),
        .O(disp_i_3_n_0));
  LUT6 #(
    .INIT(64'h5FFF577F55575557)) 
    disp_i_4
       (.I0(disp_i_5_n_0),
        .I1(disp),
        .I2(d[4]),
        .I3(d[5]),
        .I4(disp_i_6_n_0),
        .I5(k_i_3_n_0),
        .O(disp_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    disp_i_5
       (.I0(d[9]),
        .I1(d[8]),
        .I2(d[6]),
        .I3(d[7]),
        .O(disp_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE997)) 
    disp_i_6
       (.I0(d[2]),
        .I1(d[3]),
        .I2(d[1]),
        .I3(d[0]),
        .O(disp_i_6_n_0));
  FDRE disp_reg
       (.C(clk),
        .CE(1'b1),
        .D(disp_i_1_n_0),
        .Q(disp),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    k_i_1
       (.I0(k_i_2_n_0),
        .I1(d[5]),
        .I2(d[4]),
        .I3(k_i_3_n_0),
        .I4(k_i_4_n_0),
        .O(dataKOut));
  LUT3 #(
    .INIT(8'hFE)) 
    k_i_2
       (.I0(d[7]),
        .I1(d[9]),
        .I2(d[8]),
        .O(k_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h977F)) 
    k_i_3
       (.I0(d[1]),
        .I1(d[0]),
        .I2(d[2]),
        .I3(d[3]),
        .O(k_i_3_n_0));
  LUT6 #(
    .INIT(64'hF00011110000000F)) 
    k_i_4
       (.I0(k_i_5_n_0),
        .I1(k_i_6_n_0),
        .I2(d[3]),
        .I3(d[2]),
        .I4(d[4]),
        .I5(d[5]),
        .O(k_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    k_i_5
       (.I0(d[9]),
        .I1(d[8]),
        .I2(d[7]),
        .O(k_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFEE9)) 
    k_i_6
       (.I0(d[1]),
        .I1(d[0]),
        .I2(d[2]),
        .I3(d[3]),
        .O(k_i_6_n_0));
  FDRE k_reg
       (.C(clk),
        .CE(en),
        .D(dataKOut),
        .Q(k),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4C1B3164F0E5F1A5)) 
    \q[0]_i_1 
       (.I0(d[4]),
        .I1(d[1]),
        .I2(d[0]),
        .I3(d[2]),
        .I4(d[3]),
        .I5(d[5]),
        .O(dataOut[0]));
  LUT6 #(
    .INIT(64'h0A54F0F09966E3C7)) 
    \q[1]_i_1 
       (.I0(d[2]),
        .I1(d[3]),
        .I2(d[1]),
        .I3(d[0]),
        .I4(d[5]),
        .I5(d[4]),
        .O(dataOut[1]));
  LUT6 #(
    .INIT(64'hA474CCCCA55ACFB3)) 
    \q[2]_i_1 
       (.I0(d[1]),
        .I1(d[2]),
        .I2(d[3]),
        .I3(d[0]),
        .I4(d[5]),
        .I5(d[4]),
        .O(\q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3248CCCCA55ADBDB)) 
    \q[3]_i_1 
       (.I0(d[2]),
        .I1(d[3]),
        .I2(d[1]),
        .I3(d[0]),
        .I4(d[5]),
        .I5(d[4]),
        .O(\q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAA3DAA3DBD5B)) 
    \q[4]_i_1 
       (.I0(d[4]),
        .I1(d[5]),
        .I2(d[3]),
        .I3(d[2]),
        .I4(d[0]),
        .I5(d[1]),
        .O(\q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF664266F)) 
    \q[5]_i_1 
       (.I0(d[9]),
        .I1(d[6]),
        .I2(d[8]),
        .I3(\q[7]_i_2_n_0 ),
        .I4(d[7]),
        .O(dataOut[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4FD42BF2)) 
    \q[6]_i_1 
       (.I0(\q[7]_i_2_n_0 ),
        .I1(d[8]),
        .I2(d[9]),
        .I3(d[6]),
        .I4(d[7]),
        .O(dataOut[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6A366C56)) 
    \q[7]_i_1 
       (.I0(d[9]),
        .I1(d[8]),
        .I2(d[6]),
        .I3(d[7]),
        .I4(\q[7]_i_2_n_0 ),
        .O(dataOut[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \q[7]_i_2 
       (.I0(d[4]),
        .I1(d[5]),
        .I2(d[3]),
        .I3(d[2]),
        .O(\q[7]_i_2_n_0 ));
  FDRE \q_reg[0] 
       (.C(clk),
        .CE(en),
        .D(dataOut[0]),
        .Q(q[0]),
        .R(1'b0));
  FDRE \q_reg[1] 
       (.C(clk),
        .CE(en),
        .D(dataOut[1]),
        .Q(q[1]),
        .R(1'b0));
  FDRE \q_reg[2] 
       (.C(clk),
        .CE(en),
        .D(\q[2]_i_1_n_0 ),
        .Q(q[2]),
        .R(1'b0));
  FDRE \q_reg[3] 
       (.C(clk),
        .CE(en),
        .D(\q[3]_i_1_n_0 ),
        .Q(q[3]),
        .R(1'b0));
  FDRE \q_reg[4] 
       (.C(clk),
        .CE(en),
        .D(\q[4]_i_1_n_0 ),
        .Q(q[4]),
        .R(1'b0));
  FDRE \q_reg[5] 
       (.C(clk),
        .CE(en),
        .D(dataOut[5]),
        .Q(q[5]),
        .R(1'b0));
  FDRE \q_reg[6] 
       (.C(clk),
        .CE(en),
        .D(dataOut[6]),
        .Q(q[6]),
        .R(1'b0));
  FDRE \q_reg[7] 
       (.C(clk),
        .CE(en),
        .D(dataOut[7]),
        .Q(q[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_del" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_del
   (\s_reg[4] ,
    adj_ack_i,
    sclk);
  output \s_reg[4] ;
  input adj_ack_i;
  input sclk;

  wire adj_ack_i;
  wire \s_reg[3][0]_srl3_n_0 ;
  wire \s_reg[4] ;
  wire sclk;

  (* srl_bus_name = "\inst/ep/startup/adel/s_reg[3] " *) 
  (* srl_name = "\inst/ep/startup/adel/s_reg[3][0]_srl3 " *) 
  SRL16E \s_reg[3][0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(sclk),
        .D(adj_ack_i),
        .Q(\s_reg[3][0]_srl3_n_0 ));
  FDRE \s_reg[4][0] 
       (.C(sclk),
        .CE(1'b1),
        .D(\s_reg[3][0]_srl3_n_0 ),
        .Q(\s_reg[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_del" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized0
   (D,
    rxd,
    rxclk,
    fdel);
  output [0:0]D;
  input rxd;
  input rxclk;
  input [3:0]fdel;

  wire [0:0]D;
  wire [3:0]fdel;
  wire rxclk;
  wire rxd;
  wire \s_reg[10] ;
  wire \s_reg[11] ;
  wire \s_reg[12] ;
  wire \s_reg[13] ;
  wire \s_reg[14] ;
  wire \s_reg[15] ;
  wire \s_reg[1] ;
  wire \s_reg[2] ;
  wire \s_reg[3] ;
  wire \s_reg[4] ;
  wire \s_reg[5] ;
  wire \s_reg[6] ;
  wire \s_reg[7] ;
  wire \s_reg[8] ;
  wire \s_reg[9] ;
  wire \wa[9]_i_4_n_0 ;
  wire \wa[9]_i_5_n_0 ;
  wire \wa[9]_i_6_n_0 ;
  wire \wa[9]_i_7_n_0 ;
  wire \wa_reg[9]_i_2_n_0 ;
  wire \wa_reg[9]_i_3_n_0 ;

  FDRE \s_reg[10][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[9] ),
        .Q(\s_reg[10] ),
        .R(1'b0));
  FDRE \s_reg[11][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[10] ),
        .Q(\s_reg[11] ),
        .R(1'b0));
  FDRE \s_reg[12][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[11] ),
        .Q(\s_reg[12] ),
        .R(1'b0));
  FDRE \s_reg[13][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[12] ),
        .Q(\s_reg[13] ),
        .R(1'b0));
  FDRE \s_reg[14][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[13] ),
        .Q(\s_reg[14] ),
        .R(1'b0));
  FDRE \s_reg[15][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[14] ),
        .Q(\s_reg[15] ),
        .R(1'b0));
  FDRE \s_reg[1][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(rxd),
        .Q(\s_reg[1] ),
        .R(1'b0));
  FDRE \s_reg[2][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[1] ),
        .Q(\s_reg[2] ),
        .R(1'b0));
  FDRE \s_reg[3][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[2] ),
        .Q(\s_reg[3] ),
        .R(1'b0));
  FDRE \s_reg[4][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[3] ),
        .Q(\s_reg[4] ),
        .R(1'b0));
  FDRE \s_reg[5][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[4] ),
        .Q(\s_reg[5] ),
        .R(1'b0));
  FDRE \s_reg[6][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[5] ),
        .Q(\s_reg[6] ),
        .R(1'b0));
  FDRE \s_reg[7][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[6] ),
        .Q(\s_reg[7] ),
        .R(1'b0));
  FDRE \s_reg[8][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[7] ),
        .Q(\s_reg[8] ),
        .R(1'b0));
  FDRE \s_reg[9][0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s_reg[8] ),
        .Q(\s_reg[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wa[9]_i_4 
       (.I0(\s_reg[3] ),
        .I1(\s_reg[2] ),
        .I2(fdel[1]),
        .I3(\s_reg[1] ),
        .I4(fdel[0]),
        .I5(rxd),
        .O(\wa[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wa[9]_i_5 
       (.I0(\s_reg[7] ),
        .I1(\s_reg[6] ),
        .I2(fdel[1]),
        .I3(\s_reg[5] ),
        .I4(fdel[0]),
        .I5(\s_reg[4] ),
        .O(\wa[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wa[9]_i_6 
       (.I0(\s_reg[11] ),
        .I1(\s_reg[10] ),
        .I2(fdel[1]),
        .I3(\s_reg[9] ),
        .I4(fdel[0]),
        .I5(\s_reg[8] ),
        .O(\wa[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wa[9]_i_7 
       (.I0(\s_reg[15] ),
        .I1(\s_reg[14] ),
        .I2(fdel[1]),
        .I3(\s_reg[13] ),
        .I4(fdel[0]),
        .I5(\s_reg[12] ),
        .O(\wa[9]_i_7_n_0 ));
  MUXF8 \wa_reg[9]_i_1 
       (.I0(\wa_reg[9]_i_2_n_0 ),
        .I1(\wa_reg[9]_i_3_n_0 ),
        .O(D),
        .S(fdel[3]));
  MUXF7 \wa_reg[9]_i_2 
       (.I0(\wa[9]_i_4_n_0 ),
        .I1(\wa[9]_i_5_n_0 ),
        .O(\wa_reg[9]_i_2_n_0 ),
        .S(fdel[2]));
  MUXF7 \wa_reg[9]_i_3 
       (.I0(\wa[9]_i_6_n_0 ),
        .I1(\wa[9]_i_7_n_0 ),
        .O(\wa_reg[9]_i_3_n_0 ),
        .S(fdel[2]));
endmodule

(* DEL_RADIX = "6" *) (* ORIG_REF_NAME = "pdts_del" *) (* WIDTH = "11" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized1
   (clk,
    a,
    d,
    q);
  input clk;
  input [5:0]a;
  input [10:0]d;
  output [10:0]q;

  wire [5:0]a;
  wire clk;
  wire [10:0]d;
  wire [10:0]q;
  wire \q[0]_INST_0_i_10_n_0 ;
  wire \q[0]_INST_0_i_11_n_0 ;
  wire \q[0]_INST_0_i_12_n_0 ;
  wire \q[0]_INST_0_i_13_n_0 ;
  wire \q[0]_INST_0_i_14_n_0 ;
  wire \q[0]_INST_0_i_15_n_0 ;
  wire \q[0]_INST_0_i_16_n_0 ;
  wire \q[0]_INST_0_i_17_n_0 ;
  wire \q[0]_INST_0_i_18_n_0 ;
  wire \q[0]_INST_0_i_19_n_0 ;
  wire \q[0]_INST_0_i_1_n_0 ;
  wire \q[0]_INST_0_i_20_n_0 ;
  wire \q[0]_INST_0_i_21_n_0 ;
  wire \q[0]_INST_0_i_22_n_0 ;
  wire \q[0]_INST_0_i_23_n_0 ;
  wire \q[0]_INST_0_i_24_n_0 ;
  wire \q[0]_INST_0_i_25_n_0 ;
  wire \q[0]_INST_0_i_26_n_0 ;
  wire \q[0]_INST_0_i_27_n_0 ;
  wire \q[0]_INST_0_i_28_n_0 ;
  wire \q[0]_INST_0_i_2_n_0 ;
  wire \q[0]_INST_0_i_3_n_0 ;
  wire \q[0]_INST_0_i_4_n_0 ;
  wire \q[0]_INST_0_i_5_n_0 ;
  wire \q[0]_INST_0_i_6_n_0 ;
  wire \q[0]_INST_0_i_7_n_0 ;
  wire \q[0]_INST_0_i_8_n_0 ;
  wire \q[0]_INST_0_i_9_n_0 ;
  wire \q[10]_INST_0_i_10_n_0 ;
  wire \q[10]_INST_0_i_11_n_0 ;
  wire \q[10]_INST_0_i_12_n_0 ;
  wire \q[10]_INST_0_i_13_n_0 ;
  wire \q[10]_INST_0_i_14_n_0 ;
  wire \q[10]_INST_0_i_15_n_0 ;
  wire \q[10]_INST_0_i_16_n_0 ;
  wire \q[10]_INST_0_i_17_n_0 ;
  wire \q[10]_INST_0_i_18_n_0 ;
  wire \q[10]_INST_0_i_19_n_0 ;
  wire \q[10]_INST_0_i_1_n_0 ;
  wire \q[10]_INST_0_i_20_n_0 ;
  wire \q[10]_INST_0_i_21_n_0 ;
  wire \q[10]_INST_0_i_22_n_0 ;
  wire \q[10]_INST_0_i_23_n_0 ;
  wire \q[10]_INST_0_i_24_n_0 ;
  wire \q[10]_INST_0_i_25_n_0 ;
  wire \q[10]_INST_0_i_26_n_0 ;
  wire \q[10]_INST_0_i_27_n_0 ;
  wire \q[10]_INST_0_i_28_n_0 ;
  wire \q[10]_INST_0_i_2_n_0 ;
  wire \q[10]_INST_0_i_3_n_0 ;
  wire \q[10]_INST_0_i_4_n_0 ;
  wire \q[10]_INST_0_i_5_n_0 ;
  wire \q[10]_INST_0_i_6_n_0 ;
  wire \q[10]_INST_0_i_7_n_0 ;
  wire \q[10]_INST_0_i_8_n_0 ;
  wire \q[10]_INST_0_i_9_n_0 ;
  wire \q[1]_INST_0_i_10_n_0 ;
  wire \q[1]_INST_0_i_11_n_0 ;
  wire \q[1]_INST_0_i_12_n_0 ;
  wire \q[1]_INST_0_i_13_n_0 ;
  wire \q[1]_INST_0_i_14_n_0 ;
  wire \q[1]_INST_0_i_15_n_0 ;
  wire \q[1]_INST_0_i_16_n_0 ;
  wire \q[1]_INST_0_i_17_n_0 ;
  wire \q[1]_INST_0_i_18_n_0 ;
  wire \q[1]_INST_0_i_19_n_0 ;
  wire \q[1]_INST_0_i_1_n_0 ;
  wire \q[1]_INST_0_i_20_n_0 ;
  wire \q[1]_INST_0_i_21_n_0 ;
  wire \q[1]_INST_0_i_22_n_0 ;
  wire \q[1]_INST_0_i_23_n_0 ;
  wire \q[1]_INST_0_i_24_n_0 ;
  wire \q[1]_INST_0_i_25_n_0 ;
  wire \q[1]_INST_0_i_26_n_0 ;
  wire \q[1]_INST_0_i_27_n_0 ;
  wire \q[1]_INST_0_i_28_n_0 ;
  wire \q[1]_INST_0_i_2_n_0 ;
  wire \q[1]_INST_0_i_3_n_0 ;
  wire \q[1]_INST_0_i_4_n_0 ;
  wire \q[1]_INST_0_i_5_n_0 ;
  wire \q[1]_INST_0_i_6_n_0 ;
  wire \q[1]_INST_0_i_7_n_0 ;
  wire \q[1]_INST_0_i_8_n_0 ;
  wire \q[1]_INST_0_i_9_n_0 ;
  wire \q[2]_INST_0_i_10_n_0 ;
  wire \q[2]_INST_0_i_11_n_0 ;
  wire \q[2]_INST_0_i_12_n_0 ;
  wire \q[2]_INST_0_i_13_n_0 ;
  wire \q[2]_INST_0_i_14_n_0 ;
  wire \q[2]_INST_0_i_15_n_0 ;
  wire \q[2]_INST_0_i_16_n_0 ;
  wire \q[2]_INST_0_i_17_n_0 ;
  wire \q[2]_INST_0_i_18_n_0 ;
  wire \q[2]_INST_0_i_19_n_0 ;
  wire \q[2]_INST_0_i_1_n_0 ;
  wire \q[2]_INST_0_i_20_n_0 ;
  wire \q[2]_INST_0_i_21_n_0 ;
  wire \q[2]_INST_0_i_22_n_0 ;
  wire \q[2]_INST_0_i_23_n_0 ;
  wire \q[2]_INST_0_i_24_n_0 ;
  wire \q[2]_INST_0_i_25_n_0 ;
  wire \q[2]_INST_0_i_26_n_0 ;
  wire \q[2]_INST_0_i_27_n_0 ;
  wire \q[2]_INST_0_i_28_n_0 ;
  wire \q[2]_INST_0_i_2_n_0 ;
  wire \q[2]_INST_0_i_3_n_0 ;
  wire \q[2]_INST_0_i_4_n_0 ;
  wire \q[2]_INST_0_i_5_n_0 ;
  wire \q[2]_INST_0_i_6_n_0 ;
  wire \q[2]_INST_0_i_7_n_0 ;
  wire \q[2]_INST_0_i_8_n_0 ;
  wire \q[2]_INST_0_i_9_n_0 ;
  wire \q[3]_INST_0_i_10_n_0 ;
  wire \q[3]_INST_0_i_11_n_0 ;
  wire \q[3]_INST_0_i_12_n_0 ;
  wire \q[3]_INST_0_i_13_n_0 ;
  wire \q[3]_INST_0_i_14_n_0 ;
  wire \q[3]_INST_0_i_15_n_0 ;
  wire \q[3]_INST_0_i_16_n_0 ;
  wire \q[3]_INST_0_i_17_n_0 ;
  wire \q[3]_INST_0_i_18_n_0 ;
  wire \q[3]_INST_0_i_19_n_0 ;
  wire \q[3]_INST_0_i_1_n_0 ;
  wire \q[3]_INST_0_i_20_n_0 ;
  wire \q[3]_INST_0_i_21_n_0 ;
  wire \q[3]_INST_0_i_22_n_0 ;
  wire \q[3]_INST_0_i_23_n_0 ;
  wire \q[3]_INST_0_i_24_n_0 ;
  wire \q[3]_INST_0_i_25_n_0 ;
  wire \q[3]_INST_0_i_26_n_0 ;
  wire \q[3]_INST_0_i_27_n_0 ;
  wire \q[3]_INST_0_i_28_n_0 ;
  wire \q[3]_INST_0_i_2_n_0 ;
  wire \q[3]_INST_0_i_3_n_0 ;
  wire \q[3]_INST_0_i_4_n_0 ;
  wire \q[3]_INST_0_i_5_n_0 ;
  wire \q[3]_INST_0_i_6_n_0 ;
  wire \q[3]_INST_0_i_7_n_0 ;
  wire \q[3]_INST_0_i_8_n_0 ;
  wire \q[3]_INST_0_i_9_n_0 ;
  wire \q[4]_INST_0_i_10_n_0 ;
  wire \q[4]_INST_0_i_11_n_0 ;
  wire \q[4]_INST_0_i_12_n_0 ;
  wire \q[4]_INST_0_i_13_n_0 ;
  wire \q[4]_INST_0_i_14_n_0 ;
  wire \q[4]_INST_0_i_15_n_0 ;
  wire \q[4]_INST_0_i_16_n_0 ;
  wire \q[4]_INST_0_i_17_n_0 ;
  wire \q[4]_INST_0_i_18_n_0 ;
  wire \q[4]_INST_0_i_19_n_0 ;
  wire \q[4]_INST_0_i_1_n_0 ;
  wire \q[4]_INST_0_i_20_n_0 ;
  wire \q[4]_INST_0_i_21_n_0 ;
  wire \q[4]_INST_0_i_22_n_0 ;
  wire \q[4]_INST_0_i_23_n_0 ;
  wire \q[4]_INST_0_i_24_n_0 ;
  wire \q[4]_INST_0_i_25_n_0 ;
  wire \q[4]_INST_0_i_26_n_0 ;
  wire \q[4]_INST_0_i_27_n_0 ;
  wire \q[4]_INST_0_i_28_n_0 ;
  wire \q[4]_INST_0_i_2_n_0 ;
  wire \q[4]_INST_0_i_3_n_0 ;
  wire \q[4]_INST_0_i_4_n_0 ;
  wire \q[4]_INST_0_i_5_n_0 ;
  wire \q[4]_INST_0_i_6_n_0 ;
  wire \q[4]_INST_0_i_7_n_0 ;
  wire \q[4]_INST_0_i_8_n_0 ;
  wire \q[4]_INST_0_i_9_n_0 ;
  wire \q[5]_INST_0_i_10_n_0 ;
  wire \q[5]_INST_0_i_11_n_0 ;
  wire \q[5]_INST_0_i_12_n_0 ;
  wire \q[5]_INST_0_i_13_n_0 ;
  wire \q[5]_INST_0_i_14_n_0 ;
  wire \q[5]_INST_0_i_15_n_0 ;
  wire \q[5]_INST_0_i_16_n_0 ;
  wire \q[5]_INST_0_i_17_n_0 ;
  wire \q[5]_INST_0_i_18_n_0 ;
  wire \q[5]_INST_0_i_19_n_0 ;
  wire \q[5]_INST_0_i_1_n_0 ;
  wire \q[5]_INST_0_i_20_n_0 ;
  wire \q[5]_INST_0_i_21_n_0 ;
  wire \q[5]_INST_0_i_22_n_0 ;
  wire \q[5]_INST_0_i_23_n_0 ;
  wire \q[5]_INST_0_i_24_n_0 ;
  wire \q[5]_INST_0_i_25_n_0 ;
  wire \q[5]_INST_0_i_26_n_0 ;
  wire \q[5]_INST_0_i_27_n_0 ;
  wire \q[5]_INST_0_i_28_n_0 ;
  wire \q[5]_INST_0_i_2_n_0 ;
  wire \q[5]_INST_0_i_3_n_0 ;
  wire \q[5]_INST_0_i_4_n_0 ;
  wire \q[5]_INST_0_i_5_n_0 ;
  wire \q[5]_INST_0_i_6_n_0 ;
  wire \q[5]_INST_0_i_7_n_0 ;
  wire \q[5]_INST_0_i_8_n_0 ;
  wire \q[5]_INST_0_i_9_n_0 ;
  wire \q[6]_INST_0_i_10_n_0 ;
  wire \q[6]_INST_0_i_11_n_0 ;
  wire \q[6]_INST_0_i_12_n_0 ;
  wire \q[6]_INST_0_i_13_n_0 ;
  wire \q[6]_INST_0_i_14_n_0 ;
  wire \q[6]_INST_0_i_15_n_0 ;
  wire \q[6]_INST_0_i_16_n_0 ;
  wire \q[6]_INST_0_i_17_n_0 ;
  wire \q[6]_INST_0_i_18_n_0 ;
  wire \q[6]_INST_0_i_19_n_0 ;
  wire \q[6]_INST_0_i_1_n_0 ;
  wire \q[6]_INST_0_i_20_n_0 ;
  wire \q[6]_INST_0_i_21_n_0 ;
  wire \q[6]_INST_0_i_22_n_0 ;
  wire \q[6]_INST_0_i_23_n_0 ;
  wire \q[6]_INST_0_i_24_n_0 ;
  wire \q[6]_INST_0_i_25_n_0 ;
  wire \q[6]_INST_0_i_26_n_0 ;
  wire \q[6]_INST_0_i_27_n_0 ;
  wire \q[6]_INST_0_i_28_n_0 ;
  wire \q[6]_INST_0_i_2_n_0 ;
  wire \q[6]_INST_0_i_3_n_0 ;
  wire \q[6]_INST_0_i_4_n_0 ;
  wire \q[6]_INST_0_i_5_n_0 ;
  wire \q[6]_INST_0_i_6_n_0 ;
  wire \q[6]_INST_0_i_7_n_0 ;
  wire \q[6]_INST_0_i_8_n_0 ;
  wire \q[6]_INST_0_i_9_n_0 ;
  wire \q[7]_INST_0_i_10_n_0 ;
  wire \q[7]_INST_0_i_11_n_0 ;
  wire \q[7]_INST_0_i_12_n_0 ;
  wire \q[7]_INST_0_i_13_n_0 ;
  wire \q[7]_INST_0_i_14_n_0 ;
  wire \q[7]_INST_0_i_15_n_0 ;
  wire \q[7]_INST_0_i_16_n_0 ;
  wire \q[7]_INST_0_i_17_n_0 ;
  wire \q[7]_INST_0_i_18_n_0 ;
  wire \q[7]_INST_0_i_19_n_0 ;
  wire \q[7]_INST_0_i_1_n_0 ;
  wire \q[7]_INST_0_i_20_n_0 ;
  wire \q[7]_INST_0_i_21_n_0 ;
  wire \q[7]_INST_0_i_22_n_0 ;
  wire \q[7]_INST_0_i_23_n_0 ;
  wire \q[7]_INST_0_i_24_n_0 ;
  wire \q[7]_INST_0_i_25_n_0 ;
  wire \q[7]_INST_0_i_26_n_0 ;
  wire \q[7]_INST_0_i_27_n_0 ;
  wire \q[7]_INST_0_i_28_n_0 ;
  wire \q[7]_INST_0_i_2_n_0 ;
  wire \q[7]_INST_0_i_3_n_0 ;
  wire \q[7]_INST_0_i_4_n_0 ;
  wire \q[7]_INST_0_i_5_n_0 ;
  wire \q[7]_INST_0_i_6_n_0 ;
  wire \q[7]_INST_0_i_7_n_0 ;
  wire \q[7]_INST_0_i_8_n_0 ;
  wire \q[7]_INST_0_i_9_n_0 ;
  wire \q[8]_INST_0_i_10_n_0 ;
  wire \q[8]_INST_0_i_11_n_0 ;
  wire \q[8]_INST_0_i_12_n_0 ;
  wire \q[8]_INST_0_i_13_n_0 ;
  wire \q[8]_INST_0_i_14_n_0 ;
  wire \q[8]_INST_0_i_15_n_0 ;
  wire \q[8]_INST_0_i_16_n_0 ;
  wire \q[8]_INST_0_i_17_n_0 ;
  wire \q[8]_INST_0_i_18_n_0 ;
  wire \q[8]_INST_0_i_19_n_0 ;
  wire \q[8]_INST_0_i_1_n_0 ;
  wire \q[8]_INST_0_i_20_n_0 ;
  wire \q[8]_INST_0_i_21_n_0 ;
  wire \q[8]_INST_0_i_22_n_0 ;
  wire \q[8]_INST_0_i_23_n_0 ;
  wire \q[8]_INST_0_i_24_n_0 ;
  wire \q[8]_INST_0_i_25_n_0 ;
  wire \q[8]_INST_0_i_26_n_0 ;
  wire \q[8]_INST_0_i_27_n_0 ;
  wire \q[8]_INST_0_i_28_n_0 ;
  wire \q[8]_INST_0_i_2_n_0 ;
  wire \q[8]_INST_0_i_3_n_0 ;
  wire \q[8]_INST_0_i_4_n_0 ;
  wire \q[8]_INST_0_i_5_n_0 ;
  wire \q[8]_INST_0_i_6_n_0 ;
  wire \q[8]_INST_0_i_7_n_0 ;
  wire \q[8]_INST_0_i_8_n_0 ;
  wire \q[8]_INST_0_i_9_n_0 ;
  wire \q[9]_INST_0_i_10_n_0 ;
  wire \q[9]_INST_0_i_11_n_0 ;
  wire \q[9]_INST_0_i_12_n_0 ;
  wire \q[9]_INST_0_i_13_n_0 ;
  wire \q[9]_INST_0_i_14_n_0 ;
  wire \q[9]_INST_0_i_15_n_0 ;
  wire \q[9]_INST_0_i_16_n_0 ;
  wire \q[9]_INST_0_i_17_n_0 ;
  wire \q[9]_INST_0_i_18_n_0 ;
  wire \q[9]_INST_0_i_19_n_0 ;
  wire \q[9]_INST_0_i_1_n_0 ;
  wire \q[9]_INST_0_i_20_n_0 ;
  wire \q[9]_INST_0_i_21_n_0 ;
  wire \q[9]_INST_0_i_22_n_0 ;
  wire \q[9]_INST_0_i_23_n_0 ;
  wire \q[9]_INST_0_i_24_n_0 ;
  wire \q[9]_INST_0_i_25_n_0 ;
  wire \q[9]_INST_0_i_26_n_0 ;
  wire \q[9]_INST_0_i_27_n_0 ;
  wire \q[9]_INST_0_i_28_n_0 ;
  wire \q[9]_INST_0_i_2_n_0 ;
  wire \q[9]_INST_0_i_3_n_0 ;
  wire \q[9]_INST_0_i_4_n_0 ;
  wire \q[9]_INST_0_i_5_n_0 ;
  wire \q[9]_INST_0_i_6_n_0 ;
  wire \q[9]_INST_0_i_7_n_0 ;
  wire \q[9]_INST_0_i_8_n_0 ;
  wire \q[9]_INST_0_i_9_n_0 ;
  wire [10:0]\s_reg[10] ;
  wire [10:0]\s_reg[11] ;
  wire [10:0]\s_reg[12] ;
  wire [10:0]\s_reg[13] ;
  wire [10:0]\s_reg[14] ;
  wire [10:0]\s_reg[15] ;
  wire [10:0]\s_reg[16] ;
  wire [10:0]\s_reg[17] ;
  wire [10:0]\s_reg[18] ;
  wire [10:0]\s_reg[19] ;
  wire [10:0]\s_reg[1] ;
  wire [10:0]\s_reg[20] ;
  wire [10:0]\s_reg[21] ;
  wire [10:0]\s_reg[22] ;
  wire [10:0]\s_reg[23] ;
  wire [10:0]\s_reg[24] ;
  wire [10:0]\s_reg[25] ;
  wire [10:0]\s_reg[26] ;
  wire [10:0]\s_reg[27] ;
  wire [10:0]\s_reg[28] ;
  wire [10:0]\s_reg[29] ;
  wire [10:0]\s_reg[2] ;
  wire [10:0]\s_reg[30] ;
  wire [10:0]\s_reg[31] ;
  wire [10:0]\s_reg[32] ;
  wire [10:0]\s_reg[33] ;
  wire [10:0]\s_reg[34] ;
  wire [10:0]\s_reg[35] ;
  wire [10:0]\s_reg[36] ;
  wire [10:0]\s_reg[37] ;
  wire [10:0]\s_reg[38] ;
  wire [10:0]\s_reg[39] ;
  wire [10:0]\s_reg[3] ;
  wire [10:0]\s_reg[40] ;
  wire [10:0]\s_reg[41] ;
  wire [10:0]\s_reg[42] ;
  wire [10:0]\s_reg[43] ;
  wire [10:0]\s_reg[44] ;
  wire [10:0]\s_reg[45] ;
  wire [10:0]\s_reg[46] ;
  wire [10:0]\s_reg[47] ;
  wire [10:0]\s_reg[48] ;
  wire [10:0]\s_reg[49] ;
  wire [10:0]\s_reg[4] ;
  wire [10:0]\s_reg[50] ;
  wire [10:0]\s_reg[51] ;
  wire [10:0]\s_reg[52] ;
  wire [10:0]\s_reg[53] ;
  wire [10:0]\s_reg[54] ;
  wire [10:0]\s_reg[55] ;
  wire [10:0]\s_reg[56] ;
  wire [10:0]\s_reg[57] ;
  wire [10:0]\s_reg[58] ;
  wire [10:0]\s_reg[59] ;
  wire [10:0]\s_reg[5] ;
  wire [10:0]\s_reg[60] ;
  wire [10:0]\s_reg[61] ;
  wire [10:0]\s_reg[62] ;
  wire [10:0]\s_reg[63] ;
  wire [10:0]\s_reg[6] ;
  wire [10:0]\s_reg[7] ;
  wire [10:0]\s_reg[8] ;
  wire [10:0]\s_reg[9] ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0 
       (.I0(\q[0]_INST_0_i_1_n_0 ),
        .I1(\q[0]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\q[0]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\q[0]_INST_0_i_4_n_0 ),
        .O(q[0]));
  MUXF8 \q[0]_INST_0_i_1 
       (.I0(\q[0]_INST_0_i_5_n_0 ),
        .I1(\q[0]_INST_0_i_6_n_0 ),
        .O(\q[0]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \q[0]_INST_0_i_10 
       (.I0(\q[0]_INST_0_i_23_n_0 ),
        .I1(\q[0]_INST_0_i_24_n_0 ),
        .O(\q[0]_INST_0_i_10_n_0 ),
        .S(a[2]));
  MUXF7 \q[0]_INST_0_i_11 
       (.I0(\q[0]_INST_0_i_25_n_0 ),
        .I1(\q[0]_INST_0_i_26_n_0 ),
        .O(\q[0]_INST_0_i_11_n_0 ),
        .S(a[2]));
  MUXF7 \q[0]_INST_0_i_12 
       (.I0(\q[0]_INST_0_i_27_n_0 ),
        .I1(\q[0]_INST_0_i_28_n_0 ),
        .O(\q[0]_INST_0_i_12_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_13 
       (.I0(\s_reg[51] [0]),
        .I1(\s_reg[50] [0]),
        .I2(a[1]),
        .I3(\s_reg[49] [0]),
        .I4(a[0]),
        .I5(\s_reg[48] [0]),
        .O(\q[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_14 
       (.I0(\s_reg[55] [0]),
        .I1(\s_reg[54] [0]),
        .I2(a[1]),
        .I3(\s_reg[53] [0]),
        .I4(a[0]),
        .I5(\s_reg[52] [0]),
        .O(\q[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_15 
       (.I0(\s_reg[59] [0]),
        .I1(\s_reg[58] [0]),
        .I2(a[1]),
        .I3(\s_reg[57] [0]),
        .I4(a[0]),
        .I5(\s_reg[56] [0]),
        .O(\q[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_16 
       (.I0(\s_reg[63] [0]),
        .I1(\s_reg[62] [0]),
        .I2(a[1]),
        .I3(\s_reg[61] [0]),
        .I4(a[0]),
        .I5(\s_reg[60] [0]),
        .O(\q[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_17 
       (.I0(\s_reg[35] [0]),
        .I1(\s_reg[34] [0]),
        .I2(a[1]),
        .I3(\s_reg[33] [0]),
        .I4(a[0]),
        .I5(\s_reg[32] [0]),
        .O(\q[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_18 
       (.I0(\s_reg[39] [0]),
        .I1(\s_reg[38] [0]),
        .I2(a[1]),
        .I3(\s_reg[37] [0]),
        .I4(a[0]),
        .I5(\s_reg[36] [0]),
        .O(\q[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_19 
       (.I0(\s_reg[43] [0]),
        .I1(\s_reg[42] [0]),
        .I2(a[1]),
        .I3(\s_reg[41] [0]),
        .I4(a[0]),
        .I5(\s_reg[40] [0]),
        .O(\q[0]_INST_0_i_19_n_0 ));
  MUXF8 \q[0]_INST_0_i_2 
       (.I0(\q[0]_INST_0_i_7_n_0 ),
        .I1(\q[0]_INST_0_i_8_n_0 ),
        .O(\q[0]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_20 
       (.I0(\s_reg[47] [0]),
        .I1(\s_reg[46] [0]),
        .I2(a[1]),
        .I3(\s_reg[45] [0]),
        .I4(a[0]),
        .I5(\s_reg[44] [0]),
        .O(\q[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_21 
       (.I0(\s_reg[19] [0]),
        .I1(\s_reg[18] [0]),
        .I2(a[1]),
        .I3(\s_reg[17] [0]),
        .I4(a[0]),
        .I5(\s_reg[16] [0]),
        .O(\q[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_22 
       (.I0(\s_reg[23] [0]),
        .I1(\s_reg[22] [0]),
        .I2(a[1]),
        .I3(\s_reg[21] [0]),
        .I4(a[0]),
        .I5(\s_reg[20] [0]),
        .O(\q[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_23 
       (.I0(\s_reg[27] [0]),
        .I1(\s_reg[26] [0]),
        .I2(a[1]),
        .I3(\s_reg[25] [0]),
        .I4(a[0]),
        .I5(\s_reg[24] [0]),
        .O(\q[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_24 
       (.I0(\s_reg[31] [0]),
        .I1(\s_reg[30] [0]),
        .I2(a[1]),
        .I3(\s_reg[29] [0]),
        .I4(a[0]),
        .I5(\s_reg[28] [0]),
        .O(\q[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_25 
       (.I0(\s_reg[3] [0]),
        .I1(\s_reg[2] [0]),
        .I2(a[1]),
        .I3(\s_reg[1] [0]),
        .I4(a[0]),
        .I5(d[0]),
        .O(\q[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_26 
       (.I0(\s_reg[7] [0]),
        .I1(\s_reg[6] [0]),
        .I2(a[1]),
        .I3(\s_reg[5] [0]),
        .I4(a[0]),
        .I5(\s_reg[4] [0]),
        .O(\q[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_27 
       (.I0(\s_reg[11] [0]),
        .I1(\s_reg[10] [0]),
        .I2(a[1]),
        .I3(\s_reg[9] [0]),
        .I4(a[0]),
        .I5(\s_reg[8] [0]),
        .O(\q[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_28 
       (.I0(\s_reg[15] [0]),
        .I1(\s_reg[14] [0]),
        .I2(a[1]),
        .I3(\s_reg[13] [0]),
        .I4(a[0]),
        .I5(\s_reg[12] [0]),
        .O(\q[0]_INST_0_i_28_n_0 ));
  MUXF8 \q[0]_INST_0_i_3 
       (.I0(\q[0]_INST_0_i_9_n_0 ),
        .I1(\q[0]_INST_0_i_10_n_0 ),
        .O(\q[0]_INST_0_i_3_n_0 ),
        .S(a[3]));
  MUXF8 \q[0]_INST_0_i_4 
       (.I0(\q[0]_INST_0_i_11_n_0 ),
        .I1(\q[0]_INST_0_i_12_n_0 ),
        .O(\q[0]_INST_0_i_4_n_0 ),
        .S(a[3]));
  MUXF7 \q[0]_INST_0_i_5 
       (.I0(\q[0]_INST_0_i_13_n_0 ),
        .I1(\q[0]_INST_0_i_14_n_0 ),
        .O(\q[0]_INST_0_i_5_n_0 ),
        .S(a[2]));
  MUXF7 \q[0]_INST_0_i_6 
       (.I0(\q[0]_INST_0_i_15_n_0 ),
        .I1(\q[0]_INST_0_i_16_n_0 ),
        .O(\q[0]_INST_0_i_6_n_0 ),
        .S(a[2]));
  MUXF7 \q[0]_INST_0_i_7 
       (.I0(\q[0]_INST_0_i_17_n_0 ),
        .I1(\q[0]_INST_0_i_18_n_0 ),
        .O(\q[0]_INST_0_i_7_n_0 ),
        .S(a[2]));
  MUXF7 \q[0]_INST_0_i_8 
       (.I0(\q[0]_INST_0_i_19_n_0 ),
        .I1(\q[0]_INST_0_i_20_n_0 ),
        .O(\q[0]_INST_0_i_8_n_0 ),
        .S(a[2]));
  MUXF7 \q[0]_INST_0_i_9 
       (.I0(\q[0]_INST_0_i_21_n_0 ),
        .I1(\q[0]_INST_0_i_22_n_0 ),
        .O(\q[0]_INST_0_i_9_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0 
       (.I0(\q[10]_INST_0_i_1_n_0 ),
        .I1(\q[10]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\q[10]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\q[10]_INST_0_i_4_n_0 ),
        .O(q[10]));
  MUXF8 \q[10]_INST_0_i_1 
       (.I0(\q[10]_INST_0_i_5_n_0 ),
        .I1(\q[10]_INST_0_i_6_n_0 ),
        .O(\q[10]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \q[10]_INST_0_i_10 
       (.I0(\q[10]_INST_0_i_23_n_0 ),
        .I1(\q[10]_INST_0_i_24_n_0 ),
        .O(\q[10]_INST_0_i_10_n_0 ),
        .S(a[2]));
  MUXF7 \q[10]_INST_0_i_11 
       (.I0(\q[10]_INST_0_i_25_n_0 ),
        .I1(\q[10]_INST_0_i_26_n_0 ),
        .O(\q[10]_INST_0_i_11_n_0 ),
        .S(a[2]));
  MUXF7 \q[10]_INST_0_i_12 
       (.I0(\q[10]_INST_0_i_27_n_0 ),
        .I1(\q[10]_INST_0_i_28_n_0 ),
        .O(\q[10]_INST_0_i_12_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_13 
       (.I0(\s_reg[51] [10]),
        .I1(\s_reg[50] [10]),
        .I2(a[1]),
        .I3(\s_reg[49] [10]),
        .I4(a[0]),
        .I5(\s_reg[48] [10]),
        .O(\q[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_14 
       (.I0(\s_reg[55] [10]),
        .I1(\s_reg[54] [10]),
        .I2(a[1]),
        .I3(\s_reg[53] [10]),
        .I4(a[0]),
        .I5(\s_reg[52] [10]),
        .O(\q[10]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_15 
       (.I0(\s_reg[59] [10]),
        .I1(\s_reg[58] [10]),
        .I2(a[1]),
        .I3(\s_reg[57] [10]),
        .I4(a[0]),
        .I5(\s_reg[56] [10]),
        .O(\q[10]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_16 
       (.I0(\s_reg[63] [10]),
        .I1(\s_reg[62] [10]),
        .I2(a[1]),
        .I3(\s_reg[61] [10]),
        .I4(a[0]),
        .I5(\s_reg[60] [10]),
        .O(\q[10]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_17 
       (.I0(\s_reg[35] [10]),
        .I1(\s_reg[34] [10]),
        .I2(a[1]),
        .I3(\s_reg[33] [10]),
        .I4(a[0]),
        .I5(\s_reg[32] [10]),
        .O(\q[10]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_18 
       (.I0(\s_reg[39] [10]),
        .I1(\s_reg[38] [10]),
        .I2(a[1]),
        .I3(\s_reg[37] [10]),
        .I4(a[0]),
        .I5(\s_reg[36] [10]),
        .O(\q[10]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_19 
       (.I0(\s_reg[43] [10]),
        .I1(\s_reg[42] [10]),
        .I2(a[1]),
        .I3(\s_reg[41] [10]),
        .I4(a[0]),
        .I5(\s_reg[40] [10]),
        .O(\q[10]_INST_0_i_19_n_0 ));
  MUXF8 \q[10]_INST_0_i_2 
       (.I0(\q[10]_INST_0_i_7_n_0 ),
        .I1(\q[10]_INST_0_i_8_n_0 ),
        .O(\q[10]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_20 
       (.I0(\s_reg[47] [10]),
        .I1(\s_reg[46] [10]),
        .I2(a[1]),
        .I3(\s_reg[45] [10]),
        .I4(a[0]),
        .I5(\s_reg[44] [10]),
        .O(\q[10]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_21 
       (.I0(\s_reg[19] [10]),
        .I1(\s_reg[18] [10]),
        .I2(a[1]),
        .I3(\s_reg[17] [10]),
        .I4(a[0]),
        .I5(\s_reg[16] [10]),
        .O(\q[10]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_22 
       (.I0(\s_reg[23] [10]),
        .I1(\s_reg[22] [10]),
        .I2(a[1]),
        .I3(\s_reg[21] [10]),
        .I4(a[0]),
        .I5(\s_reg[20] [10]),
        .O(\q[10]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_23 
       (.I0(\s_reg[27] [10]),
        .I1(\s_reg[26] [10]),
        .I2(a[1]),
        .I3(\s_reg[25] [10]),
        .I4(a[0]),
        .I5(\s_reg[24] [10]),
        .O(\q[10]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_24 
       (.I0(\s_reg[31] [10]),
        .I1(\s_reg[30] [10]),
        .I2(a[1]),
        .I3(\s_reg[29] [10]),
        .I4(a[0]),
        .I5(\s_reg[28] [10]),
        .O(\q[10]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_25 
       (.I0(\s_reg[3] [10]),
        .I1(\s_reg[2] [10]),
        .I2(a[1]),
        .I3(\s_reg[1] [10]),
        .I4(a[0]),
        .I5(d[10]),
        .O(\q[10]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_26 
       (.I0(\s_reg[7] [10]),
        .I1(\s_reg[6] [10]),
        .I2(a[1]),
        .I3(\s_reg[5] [10]),
        .I4(a[0]),
        .I5(\s_reg[4] [10]),
        .O(\q[10]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_27 
       (.I0(\s_reg[11] [10]),
        .I1(\s_reg[10] [10]),
        .I2(a[1]),
        .I3(\s_reg[9] [10]),
        .I4(a[0]),
        .I5(\s_reg[8] [10]),
        .O(\q[10]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[10]_INST_0_i_28 
       (.I0(\s_reg[15] [10]),
        .I1(\s_reg[14] [10]),
        .I2(a[1]),
        .I3(\s_reg[13] [10]),
        .I4(a[0]),
        .I5(\s_reg[12] [10]),
        .O(\q[10]_INST_0_i_28_n_0 ));
  MUXF8 \q[10]_INST_0_i_3 
       (.I0(\q[10]_INST_0_i_9_n_0 ),
        .I1(\q[10]_INST_0_i_10_n_0 ),
        .O(\q[10]_INST_0_i_3_n_0 ),
        .S(a[3]));
  MUXF8 \q[10]_INST_0_i_4 
       (.I0(\q[10]_INST_0_i_11_n_0 ),
        .I1(\q[10]_INST_0_i_12_n_0 ),
        .O(\q[10]_INST_0_i_4_n_0 ),
        .S(a[3]));
  MUXF7 \q[10]_INST_0_i_5 
       (.I0(\q[10]_INST_0_i_13_n_0 ),
        .I1(\q[10]_INST_0_i_14_n_0 ),
        .O(\q[10]_INST_0_i_5_n_0 ),
        .S(a[2]));
  MUXF7 \q[10]_INST_0_i_6 
       (.I0(\q[10]_INST_0_i_15_n_0 ),
        .I1(\q[10]_INST_0_i_16_n_0 ),
        .O(\q[10]_INST_0_i_6_n_0 ),
        .S(a[2]));
  MUXF7 \q[10]_INST_0_i_7 
       (.I0(\q[10]_INST_0_i_17_n_0 ),
        .I1(\q[10]_INST_0_i_18_n_0 ),
        .O(\q[10]_INST_0_i_7_n_0 ),
        .S(a[2]));
  MUXF7 \q[10]_INST_0_i_8 
       (.I0(\q[10]_INST_0_i_19_n_0 ),
        .I1(\q[10]_INST_0_i_20_n_0 ),
        .O(\q[10]_INST_0_i_8_n_0 ),
        .S(a[2]));
  MUXF7 \q[10]_INST_0_i_9 
       (.I0(\q[10]_INST_0_i_21_n_0 ),
        .I1(\q[10]_INST_0_i_22_n_0 ),
        .O(\q[10]_INST_0_i_9_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0 
       (.I0(\q[1]_INST_0_i_1_n_0 ),
        .I1(\q[1]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\q[1]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\q[1]_INST_0_i_4_n_0 ),
        .O(q[1]));
  MUXF8 \q[1]_INST_0_i_1 
       (.I0(\q[1]_INST_0_i_5_n_0 ),
        .I1(\q[1]_INST_0_i_6_n_0 ),
        .O(\q[1]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \q[1]_INST_0_i_10 
       (.I0(\q[1]_INST_0_i_23_n_0 ),
        .I1(\q[1]_INST_0_i_24_n_0 ),
        .O(\q[1]_INST_0_i_10_n_0 ),
        .S(a[2]));
  MUXF7 \q[1]_INST_0_i_11 
       (.I0(\q[1]_INST_0_i_25_n_0 ),
        .I1(\q[1]_INST_0_i_26_n_0 ),
        .O(\q[1]_INST_0_i_11_n_0 ),
        .S(a[2]));
  MUXF7 \q[1]_INST_0_i_12 
       (.I0(\q[1]_INST_0_i_27_n_0 ),
        .I1(\q[1]_INST_0_i_28_n_0 ),
        .O(\q[1]_INST_0_i_12_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_13 
       (.I0(\s_reg[51] [1]),
        .I1(\s_reg[50] [1]),
        .I2(a[1]),
        .I3(\s_reg[49] [1]),
        .I4(a[0]),
        .I5(\s_reg[48] [1]),
        .O(\q[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_14 
       (.I0(\s_reg[55] [1]),
        .I1(\s_reg[54] [1]),
        .I2(a[1]),
        .I3(\s_reg[53] [1]),
        .I4(a[0]),
        .I5(\s_reg[52] [1]),
        .O(\q[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_15 
       (.I0(\s_reg[59] [1]),
        .I1(\s_reg[58] [1]),
        .I2(a[1]),
        .I3(\s_reg[57] [1]),
        .I4(a[0]),
        .I5(\s_reg[56] [1]),
        .O(\q[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_16 
       (.I0(\s_reg[63] [1]),
        .I1(\s_reg[62] [1]),
        .I2(a[1]),
        .I3(\s_reg[61] [1]),
        .I4(a[0]),
        .I5(\s_reg[60] [1]),
        .O(\q[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_17 
       (.I0(\s_reg[35] [1]),
        .I1(\s_reg[34] [1]),
        .I2(a[1]),
        .I3(\s_reg[33] [1]),
        .I4(a[0]),
        .I5(\s_reg[32] [1]),
        .O(\q[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_18 
       (.I0(\s_reg[39] [1]),
        .I1(\s_reg[38] [1]),
        .I2(a[1]),
        .I3(\s_reg[37] [1]),
        .I4(a[0]),
        .I5(\s_reg[36] [1]),
        .O(\q[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_19 
       (.I0(\s_reg[43] [1]),
        .I1(\s_reg[42] [1]),
        .I2(a[1]),
        .I3(\s_reg[41] [1]),
        .I4(a[0]),
        .I5(\s_reg[40] [1]),
        .O(\q[1]_INST_0_i_19_n_0 ));
  MUXF8 \q[1]_INST_0_i_2 
       (.I0(\q[1]_INST_0_i_7_n_0 ),
        .I1(\q[1]_INST_0_i_8_n_0 ),
        .O(\q[1]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_20 
       (.I0(\s_reg[47] [1]),
        .I1(\s_reg[46] [1]),
        .I2(a[1]),
        .I3(\s_reg[45] [1]),
        .I4(a[0]),
        .I5(\s_reg[44] [1]),
        .O(\q[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_21 
       (.I0(\s_reg[19] [1]),
        .I1(\s_reg[18] [1]),
        .I2(a[1]),
        .I3(\s_reg[17] [1]),
        .I4(a[0]),
        .I5(\s_reg[16] [1]),
        .O(\q[1]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_22 
       (.I0(\s_reg[23] [1]),
        .I1(\s_reg[22] [1]),
        .I2(a[1]),
        .I3(\s_reg[21] [1]),
        .I4(a[0]),
        .I5(\s_reg[20] [1]),
        .O(\q[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_23 
       (.I0(\s_reg[27] [1]),
        .I1(\s_reg[26] [1]),
        .I2(a[1]),
        .I3(\s_reg[25] [1]),
        .I4(a[0]),
        .I5(\s_reg[24] [1]),
        .O(\q[1]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_24 
       (.I0(\s_reg[31] [1]),
        .I1(\s_reg[30] [1]),
        .I2(a[1]),
        .I3(\s_reg[29] [1]),
        .I4(a[0]),
        .I5(\s_reg[28] [1]),
        .O(\q[1]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_25 
       (.I0(\s_reg[3] [1]),
        .I1(\s_reg[2] [1]),
        .I2(a[1]),
        .I3(\s_reg[1] [1]),
        .I4(a[0]),
        .I5(d[1]),
        .O(\q[1]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_26 
       (.I0(\s_reg[7] [1]),
        .I1(\s_reg[6] [1]),
        .I2(a[1]),
        .I3(\s_reg[5] [1]),
        .I4(a[0]),
        .I5(\s_reg[4] [1]),
        .O(\q[1]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_27 
       (.I0(\s_reg[11] [1]),
        .I1(\s_reg[10] [1]),
        .I2(a[1]),
        .I3(\s_reg[9] [1]),
        .I4(a[0]),
        .I5(\s_reg[8] [1]),
        .O(\q[1]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_28 
       (.I0(\s_reg[15] [1]),
        .I1(\s_reg[14] [1]),
        .I2(a[1]),
        .I3(\s_reg[13] [1]),
        .I4(a[0]),
        .I5(\s_reg[12] [1]),
        .O(\q[1]_INST_0_i_28_n_0 ));
  MUXF8 \q[1]_INST_0_i_3 
       (.I0(\q[1]_INST_0_i_9_n_0 ),
        .I1(\q[1]_INST_0_i_10_n_0 ),
        .O(\q[1]_INST_0_i_3_n_0 ),
        .S(a[3]));
  MUXF8 \q[1]_INST_0_i_4 
       (.I0(\q[1]_INST_0_i_11_n_0 ),
        .I1(\q[1]_INST_0_i_12_n_0 ),
        .O(\q[1]_INST_0_i_4_n_0 ),
        .S(a[3]));
  MUXF7 \q[1]_INST_0_i_5 
       (.I0(\q[1]_INST_0_i_13_n_0 ),
        .I1(\q[1]_INST_0_i_14_n_0 ),
        .O(\q[1]_INST_0_i_5_n_0 ),
        .S(a[2]));
  MUXF7 \q[1]_INST_0_i_6 
       (.I0(\q[1]_INST_0_i_15_n_0 ),
        .I1(\q[1]_INST_0_i_16_n_0 ),
        .O(\q[1]_INST_0_i_6_n_0 ),
        .S(a[2]));
  MUXF7 \q[1]_INST_0_i_7 
       (.I0(\q[1]_INST_0_i_17_n_0 ),
        .I1(\q[1]_INST_0_i_18_n_0 ),
        .O(\q[1]_INST_0_i_7_n_0 ),
        .S(a[2]));
  MUXF7 \q[1]_INST_0_i_8 
       (.I0(\q[1]_INST_0_i_19_n_0 ),
        .I1(\q[1]_INST_0_i_20_n_0 ),
        .O(\q[1]_INST_0_i_8_n_0 ),
        .S(a[2]));
  MUXF7 \q[1]_INST_0_i_9 
       (.I0(\q[1]_INST_0_i_21_n_0 ),
        .I1(\q[1]_INST_0_i_22_n_0 ),
        .O(\q[1]_INST_0_i_9_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0 
       (.I0(\q[2]_INST_0_i_1_n_0 ),
        .I1(\q[2]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\q[2]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\q[2]_INST_0_i_4_n_0 ),
        .O(q[2]));
  MUXF8 \q[2]_INST_0_i_1 
       (.I0(\q[2]_INST_0_i_5_n_0 ),
        .I1(\q[2]_INST_0_i_6_n_0 ),
        .O(\q[2]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \q[2]_INST_0_i_10 
       (.I0(\q[2]_INST_0_i_23_n_0 ),
        .I1(\q[2]_INST_0_i_24_n_0 ),
        .O(\q[2]_INST_0_i_10_n_0 ),
        .S(a[2]));
  MUXF7 \q[2]_INST_0_i_11 
       (.I0(\q[2]_INST_0_i_25_n_0 ),
        .I1(\q[2]_INST_0_i_26_n_0 ),
        .O(\q[2]_INST_0_i_11_n_0 ),
        .S(a[2]));
  MUXF7 \q[2]_INST_0_i_12 
       (.I0(\q[2]_INST_0_i_27_n_0 ),
        .I1(\q[2]_INST_0_i_28_n_0 ),
        .O(\q[2]_INST_0_i_12_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_13 
       (.I0(\s_reg[51] [2]),
        .I1(\s_reg[50] [2]),
        .I2(a[1]),
        .I3(\s_reg[49] [2]),
        .I4(a[0]),
        .I5(\s_reg[48] [2]),
        .O(\q[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_14 
       (.I0(\s_reg[55] [2]),
        .I1(\s_reg[54] [2]),
        .I2(a[1]),
        .I3(\s_reg[53] [2]),
        .I4(a[0]),
        .I5(\s_reg[52] [2]),
        .O(\q[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_15 
       (.I0(\s_reg[59] [2]),
        .I1(\s_reg[58] [2]),
        .I2(a[1]),
        .I3(\s_reg[57] [2]),
        .I4(a[0]),
        .I5(\s_reg[56] [2]),
        .O(\q[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_16 
       (.I0(\s_reg[63] [2]),
        .I1(\s_reg[62] [2]),
        .I2(a[1]),
        .I3(\s_reg[61] [2]),
        .I4(a[0]),
        .I5(\s_reg[60] [2]),
        .O(\q[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_17 
       (.I0(\s_reg[35] [2]),
        .I1(\s_reg[34] [2]),
        .I2(a[1]),
        .I3(\s_reg[33] [2]),
        .I4(a[0]),
        .I5(\s_reg[32] [2]),
        .O(\q[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_18 
       (.I0(\s_reg[39] [2]),
        .I1(\s_reg[38] [2]),
        .I2(a[1]),
        .I3(\s_reg[37] [2]),
        .I4(a[0]),
        .I5(\s_reg[36] [2]),
        .O(\q[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_19 
       (.I0(\s_reg[43] [2]),
        .I1(\s_reg[42] [2]),
        .I2(a[1]),
        .I3(\s_reg[41] [2]),
        .I4(a[0]),
        .I5(\s_reg[40] [2]),
        .O(\q[2]_INST_0_i_19_n_0 ));
  MUXF8 \q[2]_INST_0_i_2 
       (.I0(\q[2]_INST_0_i_7_n_0 ),
        .I1(\q[2]_INST_0_i_8_n_0 ),
        .O(\q[2]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_20 
       (.I0(\s_reg[47] [2]),
        .I1(\s_reg[46] [2]),
        .I2(a[1]),
        .I3(\s_reg[45] [2]),
        .I4(a[0]),
        .I5(\s_reg[44] [2]),
        .O(\q[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_21 
       (.I0(\s_reg[19] [2]),
        .I1(\s_reg[18] [2]),
        .I2(a[1]),
        .I3(\s_reg[17] [2]),
        .I4(a[0]),
        .I5(\s_reg[16] [2]),
        .O(\q[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_22 
       (.I0(\s_reg[23] [2]),
        .I1(\s_reg[22] [2]),
        .I2(a[1]),
        .I3(\s_reg[21] [2]),
        .I4(a[0]),
        .I5(\s_reg[20] [2]),
        .O(\q[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_23 
       (.I0(\s_reg[27] [2]),
        .I1(\s_reg[26] [2]),
        .I2(a[1]),
        .I3(\s_reg[25] [2]),
        .I4(a[0]),
        .I5(\s_reg[24] [2]),
        .O(\q[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_24 
       (.I0(\s_reg[31] [2]),
        .I1(\s_reg[30] [2]),
        .I2(a[1]),
        .I3(\s_reg[29] [2]),
        .I4(a[0]),
        .I5(\s_reg[28] [2]),
        .O(\q[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_25 
       (.I0(\s_reg[3] [2]),
        .I1(\s_reg[2] [2]),
        .I2(a[1]),
        .I3(\s_reg[1] [2]),
        .I4(a[0]),
        .I5(d[2]),
        .O(\q[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_26 
       (.I0(\s_reg[7] [2]),
        .I1(\s_reg[6] [2]),
        .I2(a[1]),
        .I3(\s_reg[5] [2]),
        .I4(a[0]),
        .I5(\s_reg[4] [2]),
        .O(\q[2]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_27 
       (.I0(\s_reg[11] [2]),
        .I1(\s_reg[10] [2]),
        .I2(a[1]),
        .I3(\s_reg[9] [2]),
        .I4(a[0]),
        .I5(\s_reg[8] [2]),
        .O(\q[2]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_28 
       (.I0(\s_reg[15] [2]),
        .I1(\s_reg[14] [2]),
        .I2(a[1]),
        .I3(\s_reg[13] [2]),
        .I4(a[0]),
        .I5(\s_reg[12] [2]),
        .O(\q[2]_INST_0_i_28_n_0 ));
  MUXF8 \q[2]_INST_0_i_3 
       (.I0(\q[2]_INST_0_i_9_n_0 ),
        .I1(\q[2]_INST_0_i_10_n_0 ),
        .O(\q[2]_INST_0_i_3_n_0 ),
        .S(a[3]));
  MUXF8 \q[2]_INST_0_i_4 
       (.I0(\q[2]_INST_0_i_11_n_0 ),
        .I1(\q[2]_INST_0_i_12_n_0 ),
        .O(\q[2]_INST_0_i_4_n_0 ),
        .S(a[3]));
  MUXF7 \q[2]_INST_0_i_5 
       (.I0(\q[2]_INST_0_i_13_n_0 ),
        .I1(\q[2]_INST_0_i_14_n_0 ),
        .O(\q[2]_INST_0_i_5_n_0 ),
        .S(a[2]));
  MUXF7 \q[2]_INST_0_i_6 
       (.I0(\q[2]_INST_0_i_15_n_0 ),
        .I1(\q[2]_INST_0_i_16_n_0 ),
        .O(\q[2]_INST_0_i_6_n_0 ),
        .S(a[2]));
  MUXF7 \q[2]_INST_0_i_7 
       (.I0(\q[2]_INST_0_i_17_n_0 ),
        .I1(\q[2]_INST_0_i_18_n_0 ),
        .O(\q[2]_INST_0_i_7_n_0 ),
        .S(a[2]));
  MUXF7 \q[2]_INST_0_i_8 
       (.I0(\q[2]_INST_0_i_19_n_0 ),
        .I1(\q[2]_INST_0_i_20_n_0 ),
        .O(\q[2]_INST_0_i_8_n_0 ),
        .S(a[2]));
  MUXF7 \q[2]_INST_0_i_9 
       (.I0(\q[2]_INST_0_i_21_n_0 ),
        .I1(\q[2]_INST_0_i_22_n_0 ),
        .O(\q[2]_INST_0_i_9_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0 
       (.I0(\q[3]_INST_0_i_1_n_0 ),
        .I1(\q[3]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\q[3]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\q[3]_INST_0_i_4_n_0 ),
        .O(q[3]));
  MUXF8 \q[3]_INST_0_i_1 
       (.I0(\q[3]_INST_0_i_5_n_0 ),
        .I1(\q[3]_INST_0_i_6_n_0 ),
        .O(\q[3]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \q[3]_INST_0_i_10 
       (.I0(\q[3]_INST_0_i_23_n_0 ),
        .I1(\q[3]_INST_0_i_24_n_0 ),
        .O(\q[3]_INST_0_i_10_n_0 ),
        .S(a[2]));
  MUXF7 \q[3]_INST_0_i_11 
       (.I0(\q[3]_INST_0_i_25_n_0 ),
        .I1(\q[3]_INST_0_i_26_n_0 ),
        .O(\q[3]_INST_0_i_11_n_0 ),
        .S(a[2]));
  MUXF7 \q[3]_INST_0_i_12 
       (.I0(\q[3]_INST_0_i_27_n_0 ),
        .I1(\q[3]_INST_0_i_28_n_0 ),
        .O(\q[3]_INST_0_i_12_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_13 
       (.I0(\s_reg[51] [3]),
        .I1(\s_reg[50] [3]),
        .I2(a[1]),
        .I3(\s_reg[49] [3]),
        .I4(a[0]),
        .I5(\s_reg[48] [3]),
        .O(\q[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_14 
       (.I0(\s_reg[55] [3]),
        .I1(\s_reg[54] [3]),
        .I2(a[1]),
        .I3(\s_reg[53] [3]),
        .I4(a[0]),
        .I5(\s_reg[52] [3]),
        .O(\q[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_15 
       (.I0(\s_reg[59] [3]),
        .I1(\s_reg[58] [3]),
        .I2(a[1]),
        .I3(\s_reg[57] [3]),
        .I4(a[0]),
        .I5(\s_reg[56] [3]),
        .O(\q[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_16 
       (.I0(\s_reg[63] [3]),
        .I1(\s_reg[62] [3]),
        .I2(a[1]),
        .I3(\s_reg[61] [3]),
        .I4(a[0]),
        .I5(\s_reg[60] [3]),
        .O(\q[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_17 
       (.I0(\s_reg[35] [3]),
        .I1(\s_reg[34] [3]),
        .I2(a[1]),
        .I3(\s_reg[33] [3]),
        .I4(a[0]),
        .I5(\s_reg[32] [3]),
        .O(\q[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_18 
       (.I0(\s_reg[39] [3]),
        .I1(\s_reg[38] [3]),
        .I2(a[1]),
        .I3(\s_reg[37] [3]),
        .I4(a[0]),
        .I5(\s_reg[36] [3]),
        .O(\q[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_19 
       (.I0(\s_reg[43] [3]),
        .I1(\s_reg[42] [3]),
        .I2(a[1]),
        .I3(\s_reg[41] [3]),
        .I4(a[0]),
        .I5(\s_reg[40] [3]),
        .O(\q[3]_INST_0_i_19_n_0 ));
  MUXF8 \q[3]_INST_0_i_2 
       (.I0(\q[3]_INST_0_i_7_n_0 ),
        .I1(\q[3]_INST_0_i_8_n_0 ),
        .O(\q[3]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_20 
       (.I0(\s_reg[47] [3]),
        .I1(\s_reg[46] [3]),
        .I2(a[1]),
        .I3(\s_reg[45] [3]),
        .I4(a[0]),
        .I5(\s_reg[44] [3]),
        .O(\q[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_21 
       (.I0(\s_reg[19] [3]),
        .I1(\s_reg[18] [3]),
        .I2(a[1]),
        .I3(\s_reg[17] [3]),
        .I4(a[0]),
        .I5(\s_reg[16] [3]),
        .O(\q[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_22 
       (.I0(\s_reg[23] [3]),
        .I1(\s_reg[22] [3]),
        .I2(a[1]),
        .I3(\s_reg[21] [3]),
        .I4(a[0]),
        .I5(\s_reg[20] [3]),
        .O(\q[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_23 
       (.I0(\s_reg[27] [3]),
        .I1(\s_reg[26] [3]),
        .I2(a[1]),
        .I3(\s_reg[25] [3]),
        .I4(a[0]),
        .I5(\s_reg[24] [3]),
        .O(\q[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_24 
       (.I0(\s_reg[31] [3]),
        .I1(\s_reg[30] [3]),
        .I2(a[1]),
        .I3(\s_reg[29] [3]),
        .I4(a[0]),
        .I5(\s_reg[28] [3]),
        .O(\q[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_25 
       (.I0(\s_reg[3] [3]),
        .I1(\s_reg[2] [3]),
        .I2(a[1]),
        .I3(\s_reg[1] [3]),
        .I4(a[0]),
        .I5(d[3]),
        .O(\q[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_26 
       (.I0(\s_reg[7] [3]),
        .I1(\s_reg[6] [3]),
        .I2(a[1]),
        .I3(\s_reg[5] [3]),
        .I4(a[0]),
        .I5(\s_reg[4] [3]),
        .O(\q[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_27 
       (.I0(\s_reg[11] [3]),
        .I1(\s_reg[10] [3]),
        .I2(a[1]),
        .I3(\s_reg[9] [3]),
        .I4(a[0]),
        .I5(\s_reg[8] [3]),
        .O(\q[3]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_28 
       (.I0(\s_reg[15] [3]),
        .I1(\s_reg[14] [3]),
        .I2(a[1]),
        .I3(\s_reg[13] [3]),
        .I4(a[0]),
        .I5(\s_reg[12] [3]),
        .O(\q[3]_INST_0_i_28_n_0 ));
  MUXF8 \q[3]_INST_0_i_3 
       (.I0(\q[3]_INST_0_i_9_n_0 ),
        .I1(\q[3]_INST_0_i_10_n_0 ),
        .O(\q[3]_INST_0_i_3_n_0 ),
        .S(a[3]));
  MUXF8 \q[3]_INST_0_i_4 
       (.I0(\q[3]_INST_0_i_11_n_0 ),
        .I1(\q[3]_INST_0_i_12_n_0 ),
        .O(\q[3]_INST_0_i_4_n_0 ),
        .S(a[3]));
  MUXF7 \q[3]_INST_0_i_5 
       (.I0(\q[3]_INST_0_i_13_n_0 ),
        .I1(\q[3]_INST_0_i_14_n_0 ),
        .O(\q[3]_INST_0_i_5_n_0 ),
        .S(a[2]));
  MUXF7 \q[3]_INST_0_i_6 
       (.I0(\q[3]_INST_0_i_15_n_0 ),
        .I1(\q[3]_INST_0_i_16_n_0 ),
        .O(\q[3]_INST_0_i_6_n_0 ),
        .S(a[2]));
  MUXF7 \q[3]_INST_0_i_7 
       (.I0(\q[3]_INST_0_i_17_n_0 ),
        .I1(\q[3]_INST_0_i_18_n_0 ),
        .O(\q[3]_INST_0_i_7_n_0 ),
        .S(a[2]));
  MUXF7 \q[3]_INST_0_i_8 
       (.I0(\q[3]_INST_0_i_19_n_0 ),
        .I1(\q[3]_INST_0_i_20_n_0 ),
        .O(\q[3]_INST_0_i_8_n_0 ),
        .S(a[2]));
  MUXF7 \q[3]_INST_0_i_9 
       (.I0(\q[3]_INST_0_i_21_n_0 ),
        .I1(\q[3]_INST_0_i_22_n_0 ),
        .O(\q[3]_INST_0_i_9_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0 
       (.I0(\q[4]_INST_0_i_1_n_0 ),
        .I1(\q[4]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\q[4]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\q[4]_INST_0_i_4_n_0 ),
        .O(q[4]));
  MUXF8 \q[4]_INST_0_i_1 
       (.I0(\q[4]_INST_0_i_5_n_0 ),
        .I1(\q[4]_INST_0_i_6_n_0 ),
        .O(\q[4]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \q[4]_INST_0_i_10 
       (.I0(\q[4]_INST_0_i_23_n_0 ),
        .I1(\q[4]_INST_0_i_24_n_0 ),
        .O(\q[4]_INST_0_i_10_n_0 ),
        .S(a[2]));
  MUXF7 \q[4]_INST_0_i_11 
       (.I0(\q[4]_INST_0_i_25_n_0 ),
        .I1(\q[4]_INST_0_i_26_n_0 ),
        .O(\q[4]_INST_0_i_11_n_0 ),
        .S(a[2]));
  MUXF7 \q[4]_INST_0_i_12 
       (.I0(\q[4]_INST_0_i_27_n_0 ),
        .I1(\q[4]_INST_0_i_28_n_0 ),
        .O(\q[4]_INST_0_i_12_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_13 
       (.I0(\s_reg[51] [4]),
        .I1(\s_reg[50] [4]),
        .I2(a[1]),
        .I3(\s_reg[49] [4]),
        .I4(a[0]),
        .I5(\s_reg[48] [4]),
        .O(\q[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_14 
       (.I0(\s_reg[55] [4]),
        .I1(\s_reg[54] [4]),
        .I2(a[1]),
        .I3(\s_reg[53] [4]),
        .I4(a[0]),
        .I5(\s_reg[52] [4]),
        .O(\q[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_15 
       (.I0(\s_reg[59] [4]),
        .I1(\s_reg[58] [4]),
        .I2(a[1]),
        .I3(\s_reg[57] [4]),
        .I4(a[0]),
        .I5(\s_reg[56] [4]),
        .O(\q[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_16 
       (.I0(\s_reg[63] [4]),
        .I1(\s_reg[62] [4]),
        .I2(a[1]),
        .I3(\s_reg[61] [4]),
        .I4(a[0]),
        .I5(\s_reg[60] [4]),
        .O(\q[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_17 
       (.I0(\s_reg[35] [4]),
        .I1(\s_reg[34] [4]),
        .I2(a[1]),
        .I3(\s_reg[33] [4]),
        .I4(a[0]),
        .I5(\s_reg[32] [4]),
        .O(\q[4]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_18 
       (.I0(\s_reg[39] [4]),
        .I1(\s_reg[38] [4]),
        .I2(a[1]),
        .I3(\s_reg[37] [4]),
        .I4(a[0]),
        .I5(\s_reg[36] [4]),
        .O(\q[4]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_19 
       (.I0(\s_reg[43] [4]),
        .I1(\s_reg[42] [4]),
        .I2(a[1]),
        .I3(\s_reg[41] [4]),
        .I4(a[0]),
        .I5(\s_reg[40] [4]),
        .O(\q[4]_INST_0_i_19_n_0 ));
  MUXF8 \q[4]_INST_0_i_2 
       (.I0(\q[4]_INST_0_i_7_n_0 ),
        .I1(\q[4]_INST_0_i_8_n_0 ),
        .O(\q[4]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_20 
       (.I0(\s_reg[47] [4]),
        .I1(\s_reg[46] [4]),
        .I2(a[1]),
        .I3(\s_reg[45] [4]),
        .I4(a[0]),
        .I5(\s_reg[44] [4]),
        .O(\q[4]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_21 
       (.I0(\s_reg[19] [4]),
        .I1(\s_reg[18] [4]),
        .I2(a[1]),
        .I3(\s_reg[17] [4]),
        .I4(a[0]),
        .I5(\s_reg[16] [4]),
        .O(\q[4]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_22 
       (.I0(\s_reg[23] [4]),
        .I1(\s_reg[22] [4]),
        .I2(a[1]),
        .I3(\s_reg[21] [4]),
        .I4(a[0]),
        .I5(\s_reg[20] [4]),
        .O(\q[4]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_23 
       (.I0(\s_reg[27] [4]),
        .I1(\s_reg[26] [4]),
        .I2(a[1]),
        .I3(\s_reg[25] [4]),
        .I4(a[0]),
        .I5(\s_reg[24] [4]),
        .O(\q[4]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_24 
       (.I0(\s_reg[31] [4]),
        .I1(\s_reg[30] [4]),
        .I2(a[1]),
        .I3(\s_reg[29] [4]),
        .I4(a[0]),
        .I5(\s_reg[28] [4]),
        .O(\q[4]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_25 
       (.I0(\s_reg[3] [4]),
        .I1(\s_reg[2] [4]),
        .I2(a[1]),
        .I3(\s_reg[1] [4]),
        .I4(a[0]),
        .I5(d[4]),
        .O(\q[4]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_26 
       (.I0(\s_reg[7] [4]),
        .I1(\s_reg[6] [4]),
        .I2(a[1]),
        .I3(\s_reg[5] [4]),
        .I4(a[0]),
        .I5(\s_reg[4] [4]),
        .O(\q[4]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_27 
       (.I0(\s_reg[11] [4]),
        .I1(\s_reg[10] [4]),
        .I2(a[1]),
        .I3(\s_reg[9] [4]),
        .I4(a[0]),
        .I5(\s_reg[8] [4]),
        .O(\q[4]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_28 
       (.I0(\s_reg[15] [4]),
        .I1(\s_reg[14] [4]),
        .I2(a[1]),
        .I3(\s_reg[13] [4]),
        .I4(a[0]),
        .I5(\s_reg[12] [4]),
        .O(\q[4]_INST_0_i_28_n_0 ));
  MUXF8 \q[4]_INST_0_i_3 
       (.I0(\q[4]_INST_0_i_9_n_0 ),
        .I1(\q[4]_INST_0_i_10_n_0 ),
        .O(\q[4]_INST_0_i_3_n_0 ),
        .S(a[3]));
  MUXF8 \q[4]_INST_0_i_4 
       (.I0(\q[4]_INST_0_i_11_n_0 ),
        .I1(\q[4]_INST_0_i_12_n_0 ),
        .O(\q[4]_INST_0_i_4_n_0 ),
        .S(a[3]));
  MUXF7 \q[4]_INST_0_i_5 
       (.I0(\q[4]_INST_0_i_13_n_0 ),
        .I1(\q[4]_INST_0_i_14_n_0 ),
        .O(\q[4]_INST_0_i_5_n_0 ),
        .S(a[2]));
  MUXF7 \q[4]_INST_0_i_6 
       (.I0(\q[4]_INST_0_i_15_n_0 ),
        .I1(\q[4]_INST_0_i_16_n_0 ),
        .O(\q[4]_INST_0_i_6_n_0 ),
        .S(a[2]));
  MUXF7 \q[4]_INST_0_i_7 
       (.I0(\q[4]_INST_0_i_17_n_0 ),
        .I1(\q[4]_INST_0_i_18_n_0 ),
        .O(\q[4]_INST_0_i_7_n_0 ),
        .S(a[2]));
  MUXF7 \q[4]_INST_0_i_8 
       (.I0(\q[4]_INST_0_i_19_n_0 ),
        .I1(\q[4]_INST_0_i_20_n_0 ),
        .O(\q[4]_INST_0_i_8_n_0 ),
        .S(a[2]));
  MUXF7 \q[4]_INST_0_i_9 
       (.I0(\q[4]_INST_0_i_21_n_0 ),
        .I1(\q[4]_INST_0_i_22_n_0 ),
        .O(\q[4]_INST_0_i_9_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0 
       (.I0(\q[5]_INST_0_i_1_n_0 ),
        .I1(\q[5]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\q[5]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\q[5]_INST_0_i_4_n_0 ),
        .O(q[5]));
  MUXF8 \q[5]_INST_0_i_1 
       (.I0(\q[5]_INST_0_i_5_n_0 ),
        .I1(\q[5]_INST_0_i_6_n_0 ),
        .O(\q[5]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \q[5]_INST_0_i_10 
       (.I0(\q[5]_INST_0_i_23_n_0 ),
        .I1(\q[5]_INST_0_i_24_n_0 ),
        .O(\q[5]_INST_0_i_10_n_0 ),
        .S(a[2]));
  MUXF7 \q[5]_INST_0_i_11 
       (.I0(\q[5]_INST_0_i_25_n_0 ),
        .I1(\q[5]_INST_0_i_26_n_0 ),
        .O(\q[5]_INST_0_i_11_n_0 ),
        .S(a[2]));
  MUXF7 \q[5]_INST_0_i_12 
       (.I0(\q[5]_INST_0_i_27_n_0 ),
        .I1(\q[5]_INST_0_i_28_n_0 ),
        .O(\q[5]_INST_0_i_12_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_13 
       (.I0(\s_reg[51] [5]),
        .I1(\s_reg[50] [5]),
        .I2(a[1]),
        .I3(\s_reg[49] [5]),
        .I4(a[0]),
        .I5(\s_reg[48] [5]),
        .O(\q[5]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_14 
       (.I0(\s_reg[55] [5]),
        .I1(\s_reg[54] [5]),
        .I2(a[1]),
        .I3(\s_reg[53] [5]),
        .I4(a[0]),
        .I5(\s_reg[52] [5]),
        .O(\q[5]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_15 
       (.I0(\s_reg[59] [5]),
        .I1(\s_reg[58] [5]),
        .I2(a[1]),
        .I3(\s_reg[57] [5]),
        .I4(a[0]),
        .I5(\s_reg[56] [5]),
        .O(\q[5]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_16 
       (.I0(\s_reg[63] [5]),
        .I1(\s_reg[62] [5]),
        .I2(a[1]),
        .I3(\s_reg[61] [5]),
        .I4(a[0]),
        .I5(\s_reg[60] [5]),
        .O(\q[5]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_17 
       (.I0(\s_reg[35] [5]),
        .I1(\s_reg[34] [5]),
        .I2(a[1]),
        .I3(\s_reg[33] [5]),
        .I4(a[0]),
        .I5(\s_reg[32] [5]),
        .O(\q[5]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_18 
       (.I0(\s_reg[39] [5]),
        .I1(\s_reg[38] [5]),
        .I2(a[1]),
        .I3(\s_reg[37] [5]),
        .I4(a[0]),
        .I5(\s_reg[36] [5]),
        .O(\q[5]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_19 
       (.I0(\s_reg[43] [5]),
        .I1(\s_reg[42] [5]),
        .I2(a[1]),
        .I3(\s_reg[41] [5]),
        .I4(a[0]),
        .I5(\s_reg[40] [5]),
        .O(\q[5]_INST_0_i_19_n_0 ));
  MUXF8 \q[5]_INST_0_i_2 
       (.I0(\q[5]_INST_0_i_7_n_0 ),
        .I1(\q[5]_INST_0_i_8_n_0 ),
        .O(\q[5]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_20 
       (.I0(\s_reg[47] [5]),
        .I1(\s_reg[46] [5]),
        .I2(a[1]),
        .I3(\s_reg[45] [5]),
        .I4(a[0]),
        .I5(\s_reg[44] [5]),
        .O(\q[5]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_21 
       (.I0(\s_reg[19] [5]),
        .I1(\s_reg[18] [5]),
        .I2(a[1]),
        .I3(\s_reg[17] [5]),
        .I4(a[0]),
        .I5(\s_reg[16] [5]),
        .O(\q[5]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_22 
       (.I0(\s_reg[23] [5]),
        .I1(\s_reg[22] [5]),
        .I2(a[1]),
        .I3(\s_reg[21] [5]),
        .I4(a[0]),
        .I5(\s_reg[20] [5]),
        .O(\q[5]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_23 
       (.I0(\s_reg[27] [5]),
        .I1(\s_reg[26] [5]),
        .I2(a[1]),
        .I3(\s_reg[25] [5]),
        .I4(a[0]),
        .I5(\s_reg[24] [5]),
        .O(\q[5]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_24 
       (.I0(\s_reg[31] [5]),
        .I1(\s_reg[30] [5]),
        .I2(a[1]),
        .I3(\s_reg[29] [5]),
        .I4(a[0]),
        .I5(\s_reg[28] [5]),
        .O(\q[5]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_25 
       (.I0(\s_reg[3] [5]),
        .I1(\s_reg[2] [5]),
        .I2(a[1]),
        .I3(\s_reg[1] [5]),
        .I4(a[0]),
        .I5(d[5]),
        .O(\q[5]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_26 
       (.I0(\s_reg[7] [5]),
        .I1(\s_reg[6] [5]),
        .I2(a[1]),
        .I3(\s_reg[5] [5]),
        .I4(a[0]),
        .I5(\s_reg[4] [5]),
        .O(\q[5]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_27 
       (.I0(\s_reg[11] [5]),
        .I1(\s_reg[10] [5]),
        .I2(a[1]),
        .I3(\s_reg[9] [5]),
        .I4(a[0]),
        .I5(\s_reg[8] [5]),
        .O(\q[5]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_28 
       (.I0(\s_reg[15] [5]),
        .I1(\s_reg[14] [5]),
        .I2(a[1]),
        .I3(\s_reg[13] [5]),
        .I4(a[0]),
        .I5(\s_reg[12] [5]),
        .O(\q[5]_INST_0_i_28_n_0 ));
  MUXF8 \q[5]_INST_0_i_3 
       (.I0(\q[5]_INST_0_i_9_n_0 ),
        .I1(\q[5]_INST_0_i_10_n_0 ),
        .O(\q[5]_INST_0_i_3_n_0 ),
        .S(a[3]));
  MUXF8 \q[5]_INST_0_i_4 
       (.I0(\q[5]_INST_0_i_11_n_0 ),
        .I1(\q[5]_INST_0_i_12_n_0 ),
        .O(\q[5]_INST_0_i_4_n_0 ),
        .S(a[3]));
  MUXF7 \q[5]_INST_0_i_5 
       (.I0(\q[5]_INST_0_i_13_n_0 ),
        .I1(\q[5]_INST_0_i_14_n_0 ),
        .O(\q[5]_INST_0_i_5_n_0 ),
        .S(a[2]));
  MUXF7 \q[5]_INST_0_i_6 
       (.I0(\q[5]_INST_0_i_15_n_0 ),
        .I1(\q[5]_INST_0_i_16_n_0 ),
        .O(\q[5]_INST_0_i_6_n_0 ),
        .S(a[2]));
  MUXF7 \q[5]_INST_0_i_7 
       (.I0(\q[5]_INST_0_i_17_n_0 ),
        .I1(\q[5]_INST_0_i_18_n_0 ),
        .O(\q[5]_INST_0_i_7_n_0 ),
        .S(a[2]));
  MUXF7 \q[5]_INST_0_i_8 
       (.I0(\q[5]_INST_0_i_19_n_0 ),
        .I1(\q[5]_INST_0_i_20_n_0 ),
        .O(\q[5]_INST_0_i_8_n_0 ),
        .S(a[2]));
  MUXF7 \q[5]_INST_0_i_9 
       (.I0(\q[5]_INST_0_i_21_n_0 ),
        .I1(\q[5]_INST_0_i_22_n_0 ),
        .O(\q[5]_INST_0_i_9_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0 
       (.I0(\q[6]_INST_0_i_1_n_0 ),
        .I1(\q[6]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\q[6]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\q[6]_INST_0_i_4_n_0 ),
        .O(q[6]));
  MUXF8 \q[6]_INST_0_i_1 
       (.I0(\q[6]_INST_0_i_5_n_0 ),
        .I1(\q[6]_INST_0_i_6_n_0 ),
        .O(\q[6]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \q[6]_INST_0_i_10 
       (.I0(\q[6]_INST_0_i_23_n_0 ),
        .I1(\q[6]_INST_0_i_24_n_0 ),
        .O(\q[6]_INST_0_i_10_n_0 ),
        .S(a[2]));
  MUXF7 \q[6]_INST_0_i_11 
       (.I0(\q[6]_INST_0_i_25_n_0 ),
        .I1(\q[6]_INST_0_i_26_n_0 ),
        .O(\q[6]_INST_0_i_11_n_0 ),
        .S(a[2]));
  MUXF7 \q[6]_INST_0_i_12 
       (.I0(\q[6]_INST_0_i_27_n_0 ),
        .I1(\q[6]_INST_0_i_28_n_0 ),
        .O(\q[6]_INST_0_i_12_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_13 
       (.I0(\s_reg[51] [6]),
        .I1(\s_reg[50] [6]),
        .I2(a[1]),
        .I3(\s_reg[49] [6]),
        .I4(a[0]),
        .I5(\s_reg[48] [6]),
        .O(\q[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_14 
       (.I0(\s_reg[55] [6]),
        .I1(\s_reg[54] [6]),
        .I2(a[1]),
        .I3(\s_reg[53] [6]),
        .I4(a[0]),
        .I5(\s_reg[52] [6]),
        .O(\q[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_15 
       (.I0(\s_reg[59] [6]),
        .I1(\s_reg[58] [6]),
        .I2(a[1]),
        .I3(\s_reg[57] [6]),
        .I4(a[0]),
        .I5(\s_reg[56] [6]),
        .O(\q[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_16 
       (.I0(\s_reg[63] [6]),
        .I1(\s_reg[62] [6]),
        .I2(a[1]),
        .I3(\s_reg[61] [6]),
        .I4(a[0]),
        .I5(\s_reg[60] [6]),
        .O(\q[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_17 
       (.I0(\s_reg[35] [6]),
        .I1(\s_reg[34] [6]),
        .I2(a[1]),
        .I3(\s_reg[33] [6]),
        .I4(a[0]),
        .I5(\s_reg[32] [6]),
        .O(\q[6]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_18 
       (.I0(\s_reg[39] [6]),
        .I1(\s_reg[38] [6]),
        .I2(a[1]),
        .I3(\s_reg[37] [6]),
        .I4(a[0]),
        .I5(\s_reg[36] [6]),
        .O(\q[6]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_19 
       (.I0(\s_reg[43] [6]),
        .I1(\s_reg[42] [6]),
        .I2(a[1]),
        .I3(\s_reg[41] [6]),
        .I4(a[0]),
        .I5(\s_reg[40] [6]),
        .O(\q[6]_INST_0_i_19_n_0 ));
  MUXF8 \q[6]_INST_0_i_2 
       (.I0(\q[6]_INST_0_i_7_n_0 ),
        .I1(\q[6]_INST_0_i_8_n_0 ),
        .O(\q[6]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_20 
       (.I0(\s_reg[47] [6]),
        .I1(\s_reg[46] [6]),
        .I2(a[1]),
        .I3(\s_reg[45] [6]),
        .I4(a[0]),
        .I5(\s_reg[44] [6]),
        .O(\q[6]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_21 
       (.I0(\s_reg[19] [6]),
        .I1(\s_reg[18] [6]),
        .I2(a[1]),
        .I3(\s_reg[17] [6]),
        .I4(a[0]),
        .I5(\s_reg[16] [6]),
        .O(\q[6]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_22 
       (.I0(\s_reg[23] [6]),
        .I1(\s_reg[22] [6]),
        .I2(a[1]),
        .I3(\s_reg[21] [6]),
        .I4(a[0]),
        .I5(\s_reg[20] [6]),
        .O(\q[6]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_23 
       (.I0(\s_reg[27] [6]),
        .I1(\s_reg[26] [6]),
        .I2(a[1]),
        .I3(\s_reg[25] [6]),
        .I4(a[0]),
        .I5(\s_reg[24] [6]),
        .O(\q[6]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_24 
       (.I0(\s_reg[31] [6]),
        .I1(\s_reg[30] [6]),
        .I2(a[1]),
        .I3(\s_reg[29] [6]),
        .I4(a[0]),
        .I5(\s_reg[28] [6]),
        .O(\q[6]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_25 
       (.I0(\s_reg[3] [6]),
        .I1(\s_reg[2] [6]),
        .I2(a[1]),
        .I3(\s_reg[1] [6]),
        .I4(a[0]),
        .I5(d[6]),
        .O(\q[6]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_26 
       (.I0(\s_reg[7] [6]),
        .I1(\s_reg[6] [6]),
        .I2(a[1]),
        .I3(\s_reg[5] [6]),
        .I4(a[0]),
        .I5(\s_reg[4] [6]),
        .O(\q[6]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_27 
       (.I0(\s_reg[11] [6]),
        .I1(\s_reg[10] [6]),
        .I2(a[1]),
        .I3(\s_reg[9] [6]),
        .I4(a[0]),
        .I5(\s_reg[8] [6]),
        .O(\q[6]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_28 
       (.I0(\s_reg[15] [6]),
        .I1(\s_reg[14] [6]),
        .I2(a[1]),
        .I3(\s_reg[13] [6]),
        .I4(a[0]),
        .I5(\s_reg[12] [6]),
        .O(\q[6]_INST_0_i_28_n_0 ));
  MUXF8 \q[6]_INST_0_i_3 
       (.I0(\q[6]_INST_0_i_9_n_0 ),
        .I1(\q[6]_INST_0_i_10_n_0 ),
        .O(\q[6]_INST_0_i_3_n_0 ),
        .S(a[3]));
  MUXF8 \q[6]_INST_0_i_4 
       (.I0(\q[6]_INST_0_i_11_n_0 ),
        .I1(\q[6]_INST_0_i_12_n_0 ),
        .O(\q[6]_INST_0_i_4_n_0 ),
        .S(a[3]));
  MUXF7 \q[6]_INST_0_i_5 
       (.I0(\q[6]_INST_0_i_13_n_0 ),
        .I1(\q[6]_INST_0_i_14_n_0 ),
        .O(\q[6]_INST_0_i_5_n_0 ),
        .S(a[2]));
  MUXF7 \q[6]_INST_0_i_6 
       (.I0(\q[6]_INST_0_i_15_n_0 ),
        .I1(\q[6]_INST_0_i_16_n_0 ),
        .O(\q[6]_INST_0_i_6_n_0 ),
        .S(a[2]));
  MUXF7 \q[6]_INST_0_i_7 
       (.I0(\q[6]_INST_0_i_17_n_0 ),
        .I1(\q[6]_INST_0_i_18_n_0 ),
        .O(\q[6]_INST_0_i_7_n_0 ),
        .S(a[2]));
  MUXF7 \q[6]_INST_0_i_8 
       (.I0(\q[6]_INST_0_i_19_n_0 ),
        .I1(\q[6]_INST_0_i_20_n_0 ),
        .O(\q[6]_INST_0_i_8_n_0 ),
        .S(a[2]));
  MUXF7 \q[6]_INST_0_i_9 
       (.I0(\q[6]_INST_0_i_21_n_0 ),
        .I1(\q[6]_INST_0_i_22_n_0 ),
        .O(\q[6]_INST_0_i_9_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0 
       (.I0(\q[7]_INST_0_i_1_n_0 ),
        .I1(\q[7]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\q[7]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\q[7]_INST_0_i_4_n_0 ),
        .O(q[7]));
  MUXF8 \q[7]_INST_0_i_1 
       (.I0(\q[7]_INST_0_i_5_n_0 ),
        .I1(\q[7]_INST_0_i_6_n_0 ),
        .O(\q[7]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \q[7]_INST_0_i_10 
       (.I0(\q[7]_INST_0_i_23_n_0 ),
        .I1(\q[7]_INST_0_i_24_n_0 ),
        .O(\q[7]_INST_0_i_10_n_0 ),
        .S(a[2]));
  MUXF7 \q[7]_INST_0_i_11 
       (.I0(\q[7]_INST_0_i_25_n_0 ),
        .I1(\q[7]_INST_0_i_26_n_0 ),
        .O(\q[7]_INST_0_i_11_n_0 ),
        .S(a[2]));
  MUXF7 \q[7]_INST_0_i_12 
       (.I0(\q[7]_INST_0_i_27_n_0 ),
        .I1(\q[7]_INST_0_i_28_n_0 ),
        .O(\q[7]_INST_0_i_12_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_13 
       (.I0(\s_reg[51] [7]),
        .I1(\s_reg[50] [7]),
        .I2(a[1]),
        .I3(\s_reg[49] [7]),
        .I4(a[0]),
        .I5(\s_reg[48] [7]),
        .O(\q[7]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_14 
       (.I0(\s_reg[55] [7]),
        .I1(\s_reg[54] [7]),
        .I2(a[1]),
        .I3(\s_reg[53] [7]),
        .I4(a[0]),
        .I5(\s_reg[52] [7]),
        .O(\q[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_15 
       (.I0(\s_reg[59] [7]),
        .I1(\s_reg[58] [7]),
        .I2(a[1]),
        .I3(\s_reg[57] [7]),
        .I4(a[0]),
        .I5(\s_reg[56] [7]),
        .O(\q[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_16 
       (.I0(\s_reg[63] [7]),
        .I1(\s_reg[62] [7]),
        .I2(a[1]),
        .I3(\s_reg[61] [7]),
        .I4(a[0]),
        .I5(\s_reg[60] [7]),
        .O(\q[7]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_17 
       (.I0(\s_reg[35] [7]),
        .I1(\s_reg[34] [7]),
        .I2(a[1]),
        .I3(\s_reg[33] [7]),
        .I4(a[0]),
        .I5(\s_reg[32] [7]),
        .O(\q[7]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_18 
       (.I0(\s_reg[39] [7]),
        .I1(\s_reg[38] [7]),
        .I2(a[1]),
        .I3(\s_reg[37] [7]),
        .I4(a[0]),
        .I5(\s_reg[36] [7]),
        .O(\q[7]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_19 
       (.I0(\s_reg[43] [7]),
        .I1(\s_reg[42] [7]),
        .I2(a[1]),
        .I3(\s_reg[41] [7]),
        .I4(a[0]),
        .I5(\s_reg[40] [7]),
        .O(\q[7]_INST_0_i_19_n_0 ));
  MUXF8 \q[7]_INST_0_i_2 
       (.I0(\q[7]_INST_0_i_7_n_0 ),
        .I1(\q[7]_INST_0_i_8_n_0 ),
        .O(\q[7]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_20 
       (.I0(\s_reg[47] [7]),
        .I1(\s_reg[46] [7]),
        .I2(a[1]),
        .I3(\s_reg[45] [7]),
        .I4(a[0]),
        .I5(\s_reg[44] [7]),
        .O(\q[7]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_21 
       (.I0(\s_reg[19] [7]),
        .I1(\s_reg[18] [7]),
        .I2(a[1]),
        .I3(\s_reg[17] [7]),
        .I4(a[0]),
        .I5(\s_reg[16] [7]),
        .O(\q[7]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_22 
       (.I0(\s_reg[23] [7]),
        .I1(\s_reg[22] [7]),
        .I2(a[1]),
        .I3(\s_reg[21] [7]),
        .I4(a[0]),
        .I5(\s_reg[20] [7]),
        .O(\q[7]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_23 
       (.I0(\s_reg[27] [7]),
        .I1(\s_reg[26] [7]),
        .I2(a[1]),
        .I3(\s_reg[25] [7]),
        .I4(a[0]),
        .I5(\s_reg[24] [7]),
        .O(\q[7]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_24 
       (.I0(\s_reg[31] [7]),
        .I1(\s_reg[30] [7]),
        .I2(a[1]),
        .I3(\s_reg[29] [7]),
        .I4(a[0]),
        .I5(\s_reg[28] [7]),
        .O(\q[7]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_25 
       (.I0(\s_reg[3] [7]),
        .I1(\s_reg[2] [7]),
        .I2(a[1]),
        .I3(\s_reg[1] [7]),
        .I4(a[0]),
        .I5(d[7]),
        .O(\q[7]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_26 
       (.I0(\s_reg[7] [7]),
        .I1(\s_reg[6] [7]),
        .I2(a[1]),
        .I3(\s_reg[5] [7]),
        .I4(a[0]),
        .I5(\s_reg[4] [7]),
        .O(\q[7]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_27 
       (.I0(\s_reg[11] [7]),
        .I1(\s_reg[10] [7]),
        .I2(a[1]),
        .I3(\s_reg[9] [7]),
        .I4(a[0]),
        .I5(\s_reg[8] [7]),
        .O(\q[7]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_28 
       (.I0(\s_reg[15] [7]),
        .I1(\s_reg[14] [7]),
        .I2(a[1]),
        .I3(\s_reg[13] [7]),
        .I4(a[0]),
        .I5(\s_reg[12] [7]),
        .O(\q[7]_INST_0_i_28_n_0 ));
  MUXF8 \q[7]_INST_0_i_3 
       (.I0(\q[7]_INST_0_i_9_n_0 ),
        .I1(\q[7]_INST_0_i_10_n_0 ),
        .O(\q[7]_INST_0_i_3_n_0 ),
        .S(a[3]));
  MUXF8 \q[7]_INST_0_i_4 
       (.I0(\q[7]_INST_0_i_11_n_0 ),
        .I1(\q[7]_INST_0_i_12_n_0 ),
        .O(\q[7]_INST_0_i_4_n_0 ),
        .S(a[3]));
  MUXF7 \q[7]_INST_0_i_5 
       (.I0(\q[7]_INST_0_i_13_n_0 ),
        .I1(\q[7]_INST_0_i_14_n_0 ),
        .O(\q[7]_INST_0_i_5_n_0 ),
        .S(a[2]));
  MUXF7 \q[7]_INST_0_i_6 
       (.I0(\q[7]_INST_0_i_15_n_0 ),
        .I1(\q[7]_INST_0_i_16_n_0 ),
        .O(\q[7]_INST_0_i_6_n_0 ),
        .S(a[2]));
  MUXF7 \q[7]_INST_0_i_7 
       (.I0(\q[7]_INST_0_i_17_n_0 ),
        .I1(\q[7]_INST_0_i_18_n_0 ),
        .O(\q[7]_INST_0_i_7_n_0 ),
        .S(a[2]));
  MUXF7 \q[7]_INST_0_i_8 
       (.I0(\q[7]_INST_0_i_19_n_0 ),
        .I1(\q[7]_INST_0_i_20_n_0 ),
        .O(\q[7]_INST_0_i_8_n_0 ),
        .S(a[2]));
  MUXF7 \q[7]_INST_0_i_9 
       (.I0(\q[7]_INST_0_i_21_n_0 ),
        .I1(\q[7]_INST_0_i_22_n_0 ),
        .O(\q[7]_INST_0_i_9_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0 
       (.I0(\q[8]_INST_0_i_1_n_0 ),
        .I1(\q[8]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\q[8]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\q[8]_INST_0_i_4_n_0 ),
        .O(q[8]));
  MUXF8 \q[8]_INST_0_i_1 
       (.I0(\q[8]_INST_0_i_5_n_0 ),
        .I1(\q[8]_INST_0_i_6_n_0 ),
        .O(\q[8]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \q[8]_INST_0_i_10 
       (.I0(\q[8]_INST_0_i_23_n_0 ),
        .I1(\q[8]_INST_0_i_24_n_0 ),
        .O(\q[8]_INST_0_i_10_n_0 ),
        .S(a[2]));
  MUXF7 \q[8]_INST_0_i_11 
       (.I0(\q[8]_INST_0_i_25_n_0 ),
        .I1(\q[8]_INST_0_i_26_n_0 ),
        .O(\q[8]_INST_0_i_11_n_0 ),
        .S(a[2]));
  MUXF7 \q[8]_INST_0_i_12 
       (.I0(\q[8]_INST_0_i_27_n_0 ),
        .I1(\q[8]_INST_0_i_28_n_0 ),
        .O(\q[8]_INST_0_i_12_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_13 
       (.I0(\s_reg[51] [8]),
        .I1(\s_reg[50] [8]),
        .I2(a[1]),
        .I3(\s_reg[49] [8]),
        .I4(a[0]),
        .I5(\s_reg[48] [8]),
        .O(\q[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_14 
       (.I0(\s_reg[55] [8]),
        .I1(\s_reg[54] [8]),
        .I2(a[1]),
        .I3(\s_reg[53] [8]),
        .I4(a[0]),
        .I5(\s_reg[52] [8]),
        .O(\q[8]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_15 
       (.I0(\s_reg[59] [8]),
        .I1(\s_reg[58] [8]),
        .I2(a[1]),
        .I3(\s_reg[57] [8]),
        .I4(a[0]),
        .I5(\s_reg[56] [8]),
        .O(\q[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_16 
       (.I0(\s_reg[63] [8]),
        .I1(\s_reg[62] [8]),
        .I2(a[1]),
        .I3(\s_reg[61] [8]),
        .I4(a[0]),
        .I5(\s_reg[60] [8]),
        .O(\q[8]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_17 
       (.I0(\s_reg[35] [8]),
        .I1(\s_reg[34] [8]),
        .I2(a[1]),
        .I3(\s_reg[33] [8]),
        .I4(a[0]),
        .I5(\s_reg[32] [8]),
        .O(\q[8]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_18 
       (.I0(\s_reg[39] [8]),
        .I1(\s_reg[38] [8]),
        .I2(a[1]),
        .I3(\s_reg[37] [8]),
        .I4(a[0]),
        .I5(\s_reg[36] [8]),
        .O(\q[8]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_19 
       (.I0(\s_reg[43] [8]),
        .I1(\s_reg[42] [8]),
        .I2(a[1]),
        .I3(\s_reg[41] [8]),
        .I4(a[0]),
        .I5(\s_reg[40] [8]),
        .O(\q[8]_INST_0_i_19_n_0 ));
  MUXF8 \q[8]_INST_0_i_2 
       (.I0(\q[8]_INST_0_i_7_n_0 ),
        .I1(\q[8]_INST_0_i_8_n_0 ),
        .O(\q[8]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_20 
       (.I0(\s_reg[47] [8]),
        .I1(\s_reg[46] [8]),
        .I2(a[1]),
        .I3(\s_reg[45] [8]),
        .I4(a[0]),
        .I5(\s_reg[44] [8]),
        .O(\q[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_21 
       (.I0(\s_reg[19] [8]),
        .I1(\s_reg[18] [8]),
        .I2(a[1]),
        .I3(\s_reg[17] [8]),
        .I4(a[0]),
        .I5(\s_reg[16] [8]),
        .O(\q[8]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_22 
       (.I0(\s_reg[23] [8]),
        .I1(\s_reg[22] [8]),
        .I2(a[1]),
        .I3(\s_reg[21] [8]),
        .I4(a[0]),
        .I5(\s_reg[20] [8]),
        .O(\q[8]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_23 
       (.I0(\s_reg[27] [8]),
        .I1(\s_reg[26] [8]),
        .I2(a[1]),
        .I3(\s_reg[25] [8]),
        .I4(a[0]),
        .I5(\s_reg[24] [8]),
        .O(\q[8]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_24 
       (.I0(\s_reg[31] [8]),
        .I1(\s_reg[30] [8]),
        .I2(a[1]),
        .I3(\s_reg[29] [8]),
        .I4(a[0]),
        .I5(\s_reg[28] [8]),
        .O(\q[8]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_25 
       (.I0(\s_reg[3] [8]),
        .I1(\s_reg[2] [8]),
        .I2(a[1]),
        .I3(\s_reg[1] [8]),
        .I4(a[0]),
        .I5(d[8]),
        .O(\q[8]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_26 
       (.I0(\s_reg[7] [8]),
        .I1(\s_reg[6] [8]),
        .I2(a[1]),
        .I3(\s_reg[5] [8]),
        .I4(a[0]),
        .I5(\s_reg[4] [8]),
        .O(\q[8]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_27 
       (.I0(\s_reg[11] [8]),
        .I1(\s_reg[10] [8]),
        .I2(a[1]),
        .I3(\s_reg[9] [8]),
        .I4(a[0]),
        .I5(\s_reg[8] [8]),
        .O(\q[8]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[8]_INST_0_i_28 
       (.I0(\s_reg[15] [8]),
        .I1(\s_reg[14] [8]),
        .I2(a[1]),
        .I3(\s_reg[13] [8]),
        .I4(a[0]),
        .I5(\s_reg[12] [8]),
        .O(\q[8]_INST_0_i_28_n_0 ));
  MUXF8 \q[8]_INST_0_i_3 
       (.I0(\q[8]_INST_0_i_9_n_0 ),
        .I1(\q[8]_INST_0_i_10_n_0 ),
        .O(\q[8]_INST_0_i_3_n_0 ),
        .S(a[3]));
  MUXF8 \q[8]_INST_0_i_4 
       (.I0(\q[8]_INST_0_i_11_n_0 ),
        .I1(\q[8]_INST_0_i_12_n_0 ),
        .O(\q[8]_INST_0_i_4_n_0 ),
        .S(a[3]));
  MUXF7 \q[8]_INST_0_i_5 
       (.I0(\q[8]_INST_0_i_13_n_0 ),
        .I1(\q[8]_INST_0_i_14_n_0 ),
        .O(\q[8]_INST_0_i_5_n_0 ),
        .S(a[2]));
  MUXF7 \q[8]_INST_0_i_6 
       (.I0(\q[8]_INST_0_i_15_n_0 ),
        .I1(\q[8]_INST_0_i_16_n_0 ),
        .O(\q[8]_INST_0_i_6_n_0 ),
        .S(a[2]));
  MUXF7 \q[8]_INST_0_i_7 
       (.I0(\q[8]_INST_0_i_17_n_0 ),
        .I1(\q[8]_INST_0_i_18_n_0 ),
        .O(\q[8]_INST_0_i_7_n_0 ),
        .S(a[2]));
  MUXF7 \q[8]_INST_0_i_8 
       (.I0(\q[8]_INST_0_i_19_n_0 ),
        .I1(\q[8]_INST_0_i_20_n_0 ),
        .O(\q[8]_INST_0_i_8_n_0 ),
        .S(a[2]));
  MUXF7 \q[8]_INST_0_i_9 
       (.I0(\q[8]_INST_0_i_21_n_0 ),
        .I1(\q[8]_INST_0_i_22_n_0 ),
        .O(\q[8]_INST_0_i_9_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0 
       (.I0(\q[9]_INST_0_i_1_n_0 ),
        .I1(\q[9]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\q[9]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\q[9]_INST_0_i_4_n_0 ),
        .O(q[9]));
  MUXF8 \q[9]_INST_0_i_1 
       (.I0(\q[9]_INST_0_i_5_n_0 ),
        .I1(\q[9]_INST_0_i_6_n_0 ),
        .O(\q[9]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \q[9]_INST_0_i_10 
       (.I0(\q[9]_INST_0_i_23_n_0 ),
        .I1(\q[9]_INST_0_i_24_n_0 ),
        .O(\q[9]_INST_0_i_10_n_0 ),
        .S(a[2]));
  MUXF7 \q[9]_INST_0_i_11 
       (.I0(\q[9]_INST_0_i_25_n_0 ),
        .I1(\q[9]_INST_0_i_26_n_0 ),
        .O(\q[9]_INST_0_i_11_n_0 ),
        .S(a[2]));
  MUXF7 \q[9]_INST_0_i_12 
       (.I0(\q[9]_INST_0_i_27_n_0 ),
        .I1(\q[9]_INST_0_i_28_n_0 ),
        .O(\q[9]_INST_0_i_12_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_13 
       (.I0(\s_reg[51] [9]),
        .I1(\s_reg[50] [9]),
        .I2(a[1]),
        .I3(\s_reg[49] [9]),
        .I4(a[0]),
        .I5(\s_reg[48] [9]),
        .O(\q[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_14 
       (.I0(\s_reg[55] [9]),
        .I1(\s_reg[54] [9]),
        .I2(a[1]),
        .I3(\s_reg[53] [9]),
        .I4(a[0]),
        .I5(\s_reg[52] [9]),
        .O(\q[9]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_15 
       (.I0(\s_reg[59] [9]),
        .I1(\s_reg[58] [9]),
        .I2(a[1]),
        .I3(\s_reg[57] [9]),
        .I4(a[0]),
        .I5(\s_reg[56] [9]),
        .O(\q[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_16 
       (.I0(\s_reg[63] [9]),
        .I1(\s_reg[62] [9]),
        .I2(a[1]),
        .I3(\s_reg[61] [9]),
        .I4(a[0]),
        .I5(\s_reg[60] [9]),
        .O(\q[9]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_17 
       (.I0(\s_reg[35] [9]),
        .I1(\s_reg[34] [9]),
        .I2(a[1]),
        .I3(\s_reg[33] [9]),
        .I4(a[0]),
        .I5(\s_reg[32] [9]),
        .O(\q[9]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_18 
       (.I0(\s_reg[39] [9]),
        .I1(\s_reg[38] [9]),
        .I2(a[1]),
        .I3(\s_reg[37] [9]),
        .I4(a[0]),
        .I5(\s_reg[36] [9]),
        .O(\q[9]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_19 
       (.I0(\s_reg[43] [9]),
        .I1(\s_reg[42] [9]),
        .I2(a[1]),
        .I3(\s_reg[41] [9]),
        .I4(a[0]),
        .I5(\s_reg[40] [9]),
        .O(\q[9]_INST_0_i_19_n_0 ));
  MUXF8 \q[9]_INST_0_i_2 
       (.I0(\q[9]_INST_0_i_7_n_0 ),
        .I1(\q[9]_INST_0_i_8_n_0 ),
        .O(\q[9]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_20 
       (.I0(\s_reg[47] [9]),
        .I1(\s_reg[46] [9]),
        .I2(a[1]),
        .I3(\s_reg[45] [9]),
        .I4(a[0]),
        .I5(\s_reg[44] [9]),
        .O(\q[9]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_21 
       (.I0(\s_reg[19] [9]),
        .I1(\s_reg[18] [9]),
        .I2(a[1]),
        .I3(\s_reg[17] [9]),
        .I4(a[0]),
        .I5(\s_reg[16] [9]),
        .O(\q[9]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_22 
       (.I0(\s_reg[23] [9]),
        .I1(\s_reg[22] [9]),
        .I2(a[1]),
        .I3(\s_reg[21] [9]),
        .I4(a[0]),
        .I5(\s_reg[20] [9]),
        .O(\q[9]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_23 
       (.I0(\s_reg[27] [9]),
        .I1(\s_reg[26] [9]),
        .I2(a[1]),
        .I3(\s_reg[25] [9]),
        .I4(a[0]),
        .I5(\s_reg[24] [9]),
        .O(\q[9]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_24 
       (.I0(\s_reg[31] [9]),
        .I1(\s_reg[30] [9]),
        .I2(a[1]),
        .I3(\s_reg[29] [9]),
        .I4(a[0]),
        .I5(\s_reg[28] [9]),
        .O(\q[9]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_25 
       (.I0(\s_reg[3] [9]),
        .I1(\s_reg[2] [9]),
        .I2(a[1]),
        .I3(\s_reg[1] [9]),
        .I4(a[0]),
        .I5(d[9]),
        .O(\q[9]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_26 
       (.I0(\s_reg[7] [9]),
        .I1(\s_reg[6] [9]),
        .I2(a[1]),
        .I3(\s_reg[5] [9]),
        .I4(a[0]),
        .I5(\s_reg[4] [9]),
        .O(\q[9]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_27 
       (.I0(\s_reg[11] [9]),
        .I1(\s_reg[10] [9]),
        .I2(a[1]),
        .I3(\s_reg[9] [9]),
        .I4(a[0]),
        .I5(\s_reg[8] [9]),
        .O(\q[9]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[9]_INST_0_i_28 
       (.I0(\s_reg[15] [9]),
        .I1(\s_reg[14] [9]),
        .I2(a[1]),
        .I3(\s_reg[13] [9]),
        .I4(a[0]),
        .I5(\s_reg[12] [9]),
        .O(\q[9]_INST_0_i_28_n_0 ));
  MUXF8 \q[9]_INST_0_i_3 
       (.I0(\q[9]_INST_0_i_9_n_0 ),
        .I1(\q[9]_INST_0_i_10_n_0 ),
        .O(\q[9]_INST_0_i_3_n_0 ),
        .S(a[3]));
  MUXF8 \q[9]_INST_0_i_4 
       (.I0(\q[9]_INST_0_i_11_n_0 ),
        .I1(\q[9]_INST_0_i_12_n_0 ),
        .O(\q[9]_INST_0_i_4_n_0 ),
        .S(a[3]));
  MUXF7 \q[9]_INST_0_i_5 
       (.I0(\q[9]_INST_0_i_13_n_0 ),
        .I1(\q[9]_INST_0_i_14_n_0 ),
        .O(\q[9]_INST_0_i_5_n_0 ),
        .S(a[2]));
  MUXF7 \q[9]_INST_0_i_6 
       (.I0(\q[9]_INST_0_i_15_n_0 ),
        .I1(\q[9]_INST_0_i_16_n_0 ),
        .O(\q[9]_INST_0_i_6_n_0 ),
        .S(a[2]));
  MUXF7 \q[9]_INST_0_i_7 
       (.I0(\q[9]_INST_0_i_17_n_0 ),
        .I1(\q[9]_INST_0_i_18_n_0 ),
        .O(\q[9]_INST_0_i_7_n_0 ),
        .S(a[2]));
  MUXF7 \q[9]_INST_0_i_8 
       (.I0(\q[9]_INST_0_i_19_n_0 ),
        .I1(\q[9]_INST_0_i_20_n_0 ),
        .O(\q[9]_INST_0_i_8_n_0 ),
        .S(a[2]));
  MUXF7 \q[9]_INST_0_i_9 
       (.I0(\q[9]_INST_0_i_21_n_0 ),
        .I1(\q[9]_INST_0_i_22_n_0 ),
        .O(\q[9]_INST_0_i_9_n_0 ),
        .S(a[2]));
  FDRE \s_reg[10][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[9] [0]),
        .Q(\s_reg[10] [0]),
        .R(1'b0));
  FDRE \s_reg[10][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[9] [10]),
        .Q(\s_reg[10] [10]),
        .R(1'b0));
  FDRE \s_reg[10][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[9] [1]),
        .Q(\s_reg[10] [1]),
        .R(1'b0));
  FDRE \s_reg[10][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[9] [2]),
        .Q(\s_reg[10] [2]),
        .R(1'b0));
  FDRE \s_reg[10][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[9] [3]),
        .Q(\s_reg[10] [3]),
        .R(1'b0));
  FDRE \s_reg[10][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[9] [4]),
        .Q(\s_reg[10] [4]),
        .R(1'b0));
  FDRE \s_reg[10][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[9] [5]),
        .Q(\s_reg[10] [5]),
        .R(1'b0));
  FDRE \s_reg[10][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[9] [6]),
        .Q(\s_reg[10] [6]),
        .R(1'b0));
  FDRE \s_reg[10][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[9] [7]),
        .Q(\s_reg[10] [7]),
        .R(1'b0));
  FDRE \s_reg[10][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[9] [8]),
        .Q(\s_reg[10] [8]),
        .R(1'b0));
  FDRE \s_reg[10][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[9] [9]),
        .Q(\s_reg[10] [9]),
        .R(1'b0));
  FDRE \s_reg[11][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[10] [0]),
        .Q(\s_reg[11] [0]),
        .R(1'b0));
  FDRE \s_reg[11][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[10] [10]),
        .Q(\s_reg[11] [10]),
        .R(1'b0));
  FDRE \s_reg[11][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[10] [1]),
        .Q(\s_reg[11] [1]),
        .R(1'b0));
  FDRE \s_reg[11][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[10] [2]),
        .Q(\s_reg[11] [2]),
        .R(1'b0));
  FDRE \s_reg[11][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[10] [3]),
        .Q(\s_reg[11] [3]),
        .R(1'b0));
  FDRE \s_reg[11][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[10] [4]),
        .Q(\s_reg[11] [4]),
        .R(1'b0));
  FDRE \s_reg[11][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[10] [5]),
        .Q(\s_reg[11] [5]),
        .R(1'b0));
  FDRE \s_reg[11][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[10] [6]),
        .Q(\s_reg[11] [6]),
        .R(1'b0));
  FDRE \s_reg[11][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[10] [7]),
        .Q(\s_reg[11] [7]),
        .R(1'b0));
  FDRE \s_reg[11][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[10] [8]),
        .Q(\s_reg[11] [8]),
        .R(1'b0));
  FDRE \s_reg[11][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[10] [9]),
        .Q(\s_reg[11] [9]),
        .R(1'b0));
  FDRE \s_reg[12][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[11] [0]),
        .Q(\s_reg[12] [0]),
        .R(1'b0));
  FDRE \s_reg[12][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[11] [10]),
        .Q(\s_reg[12] [10]),
        .R(1'b0));
  FDRE \s_reg[12][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[11] [1]),
        .Q(\s_reg[12] [1]),
        .R(1'b0));
  FDRE \s_reg[12][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[11] [2]),
        .Q(\s_reg[12] [2]),
        .R(1'b0));
  FDRE \s_reg[12][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[11] [3]),
        .Q(\s_reg[12] [3]),
        .R(1'b0));
  FDRE \s_reg[12][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[11] [4]),
        .Q(\s_reg[12] [4]),
        .R(1'b0));
  FDRE \s_reg[12][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[11] [5]),
        .Q(\s_reg[12] [5]),
        .R(1'b0));
  FDRE \s_reg[12][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[11] [6]),
        .Q(\s_reg[12] [6]),
        .R(1'b0));
  FDRE \s_reg[12][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[11] [7]),
        .Q(\s_reg[12] [7]),
        .R(1'b0));
  FDRE \s_reg[12][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[11] [8]),
        .Q(\s_reg[12] [8]),
        .R(1'b0));
  FDRE \s_reg[12][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[11] [9]),
        .Q(\s_reg[12] [9]),
        .R(1'b0));
  FDRE \s_reg[13][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[12] [0]),
        .Q(\s_reg[13] [0]),
        .R(1'b0));
  FDRE \s_reg[13][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[12] [10]),
        .Q(\s_reg[13] [10]),
        .R(1'b0));
  FDRE \s_reg[13][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[12] [1]),
        .Q(\s_reg[13] [1]),
        .R(1'b0));
  FDRE \s_reg[13][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[12] [2]),
        .Q(\s_reg[13] [2]),
        .R(1'b0));
  FDRE \s_reg[13][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[12] [3]),
        .Q(\s_reg[13] [3]),
        .R(1'b0));
  FDRE \s_reg[13][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[12] [4]),
        .Q(\s_reg[13] [4]),
        .R(1'b0));
  FDRE \s_reg[13][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[12] [5]),
        .Q(\s_reg[13] [5]),
        .R(1'b0));
  FDRE \s_reg[13][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[12] [6]),
        .Q(\s_reg[13] [6]),
        .R(1'b0));
  FDRE \s_reg[13][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[12] [7]),
        .Q(\s_reg[13] [7]),
        .R(1'b0));
  FDRE \s_reg[13][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[12] [8]),
        .Q(\s_reg[13] [8]),
        .R(1'b0));
  FDRE \s_reg[13][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[12] [9]),
        .Q(\s_reg[13] [9]),
        .R(1'b0));
  FDRE \s_reg[14][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[13] [0]),
        .Q(\s_reg[14] [0]),
        .R(1'b0));
  FDRE \s_reg[14][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[13] [10]),
        .Q(\s_reg[14] [10]),
        .R(1'b0));
  FDRE \s_reg[14][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[13] [1]),
        .Q(\s_reg[14] [1]),
        .R(1'b0));
  FDRE \s_reg[14][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[13] [2]),
        .Q(\s_reg[14] [2]),
        .R(1'b0));
  FDRE \s_reg[14][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[13] [3]),
        .Q(\s_reg[14] [3]),
        .R(1'b0));
  FDRE \s_reg[14][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[13] [4]),
        .Q(\s_reg[14] [4]),
        .R(1'b0));
  FDRE \s_reg[14][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[13] [5]),
        .Q(\s_reg[14] [5]),
        .R(1'b0));
  FDRE \s_reg[14][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[13] [6]),
        .Q(\s_reg[14] [6]),
        .R(1'b0));
  FDRE \s_reg[14][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[13] [7]),
        .Q(\s_reg[14] [7]),
        .R(1'b0));
  FDRE \s_reg[14][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[13] [8]),
        .Q(\s_reg[14] [8]),
        .R(1'b0));
  FDRE \s_reg[14][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[13] [9]),
        .Q(\s_reg[14] [9]),
        .R(1'b0));
  FDRE \s_reg[15][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[14] [0]),
        .Q(\s_reg[15] [0]),
        .R(1'b0));
  FDRE \s_reg[15][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[14] [10]),
        .Q(\s_reg[15] [10]),
        .R(1'b0));
  FDRE \s_reg[15][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[14] [1]),
        .Q(\s_reg[15] [1]),
        .R(1'b0));
  FDRE \s_reg[15][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[14] [2]),
        .Q(\s_reg[15] [2]),
        .R(1'b0));
  FDRE \s_reg[15][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[14] [3]),
        .Q(\s_reg[15] [3]),
        .R(1'b0));
  FDRE \s_reg[15][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[14] [4]),
        .Q(\s_reg[15] [4]),
        .R(1'b0));
  FDRE \s_reg[15][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[14] [5]),
        .Q(\s_reg[15] [5]),
        .R(1'b0));
  FDRE \s_reg[15][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[14] [6]),
        .Q(\s_reg[15] [6]),
        .R(1'b0));
  FDRE \s_reg[15][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[14] [7]),
        .Q(\s_reg[15] [7]),
        .R(1'b0));
  FDRE \s_reg[15][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[14] [8]),
        .Q(\s_reg[15] [8]),
        .R(1'b0));
  FDRE \s_reg[15][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[14] [9]),
        .Q(\s_reg[15] [9]),
        .R(1'b0));
  FDRE \s_reg[16][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[15] [0]),
        .Q(\s_reg[16] [0]),
        .R(1'b0));
  FDRE \s_reg[16][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[15] [10]),
        .Q(\s_reg[16] [10]),
        .R(1'b0));
  FDRE \s_reg[16][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[15] [1]),
        .Q(\s_reg[16] [1]),
        .R(1'b0));
  FDRE \s_reg[16][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[15] [2]),
        .Q(\s_reg[16] [2]),
        .R(1'b0));
  FDRE \s_reg[16][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[15] [3]),
        .Q(\s_reg[16] [3]),
        .R(1'b0));
  FDRE \s_reg[16][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[15] [4]),
        .Q(\s_reg[16] [4]),
        .R(1'b0));
  FDRE \s_reg[16][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[15] [5]),
        .Q(\s_reg[16] [5]),
        .R(1'b0));
  FDRE \s_reg[16][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[15] [6]),
        .Q(\s_reg[16] [6]),
        .R(1'b0));
  FDRE \s_reg[16][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[15] [7]),
        .Q(\s_reg[16] [7]),
        .R(1'b0));
  FDRE \s_reg[16][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[15] [8]),
        .Q(\s_reg[16] [8]),
        .R(1'b0));
  FDRE \s_reg[16][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[15] [9]),
        .Q(\s_reg[16] [9]),
        .R(1'b0));
  FDRE \s_reg[17][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[16] [0]),
        .Q(\s_reg[17] [0]),
        .R(1'b0));
  FDRE \s_reg[17][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[16] [10]),
        .Q(\s_reg[17] [10]),
        .R(1'b0));
  FDRE \s_reg[17][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[16] [1]),
        .Q(\s_reg[17] [1]),
        .R(1'b0));
  FDRE \s_reg[17][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[16] [2]),
        .Q(\s_reg[17] [2]),
        .R(1'b0));
  FDRE \s_reg[17][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[16] [3]),
        .Q(\s_reg[17] [3]),
        .R(1'b0));
  FDRE \s_reg[17][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[16] [4]),
        .Q(\s_reg[17] [4]),
        .R(1'b0));
  FDRE \s_reg[17][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[16] [5]),
        .Q(\s_reg[17] [5]),
        .R(1'b0));
  FDRE \s_reg[17][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[16] [6]),
        .Q(\s_reg[17] [6]),
        .R(1'b0));
  FDRE \s_reg[17][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[16] [7]),
        .Q(\s_reg[17] [7]),
        .R(1'b0));
  FDRE \s_reg[17][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[16] [8]),
        .Q(\s_reg[17] [8]),
        .R(1'b0));
  FDRE \s_reg[17][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[16] [9]),
        .Q(\s_reg[17] [9]),
        .R(1'b0));
  FDRE \s_reg[18][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[17] [0]),
        .Q(\s_reg[18] [0]),
        .R(1'b0));
  FDRE \s_reg[18][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[17] [10]),
        .Q(\s_reg[18] [10]),
        .R(1'b0));
  FDRE \s_reg[18][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[17] [1]),
        .Q(\s_reg[18] [1]),
        .R(1'b0));
  FDRE \s_reg[18][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[17] [2]),
        .Q(\s_reg[18] [2]),
        .R(1'b0));
  FDRE \s_reg[18][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[17] [3]),
        .Q(\s_reg[18] [3]),
        .R(1'b0));
  FDRE \s_reg[18][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[17] [4]),
        .Q(\s_reg[18] [4]),
        .R(1'b0));
  FDRE \s_reg[18][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[17] [5]),
        .Q(\s_reg[18] [5]),
        .R(1'b0));
  FDRE \s_reg[18][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[17] [6]),
        .Q(\s_reg[18] [6]),
        .R(1'b0));
  FDRE \s_reg[18][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[17] [7]),
        .Q(\s_reg[18] [7]),
        .R(1'b0));
  FDRE \s_reg[18][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[17] [8]),
        .Q(\s_reg[18] [8]),
        .R(1'b0));
  FDRE \s_reg[18][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[17] [9]),
        .Q(\s_reg[18] [9]),
        .R(1'b0));
  FDRE \s_reg[19][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[18] [0]),
        .Q(\s_reg[19] [0]),
        .R(1'b0));
  FDRE \s_reg[19][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[18] [10]),
        .Q(\s_reg[19] [10]),
        .R(1'b0));
  FDRE \s_reg[19][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[18] [1]),
        .Q(\s_reg[19] [1]),
        .R(1'b0));
  FDRE \s_reg[19][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[18] [2]),
        .Q(\s_reg[19] [2]),
        .R(1'b0));
  FDRE \s_reg[19][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[18] [3]),
        .Q(\s_reg[19] [3]),
        .R(1'b0));
  FDRE \s_reg[19][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[18] [4]),
        .Q(\s_reg[19] [4]),
        .R(1'b0));
  FDRE \s_reg[19][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[18] [5]),
        .Q(\s_reg[19] [5]),
        .R(1'b0));
  FDRE \s_reg[19][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[18] [6]),
        .Q(\s_reg[19] [6]),
        .R(1'b0));
  FDRE \s_reg[19][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[18] [7]),
        .Q(\s_reg[19] [7]),
        .R(1'b0));
  FDRE \s_reg[19][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[18] [8]),
        .Q(\s_reg[19] [8]),
        .R(1'b0));
  FDRE \s_reg[19][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[18] [9]),
        .Q(\s_reg[19] [9]),
        .R(1'b0));
  FDRE \s_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(d[0]),
        .Q(\s_reg[1] [0]),
        .R(1'b0));
  FDRE \s_reg[1][10] 
       (.C(clk),
        .CE(1'b1),
        .D(d[10]),
        .Q(\s_reg[1] [10]),
        .R(1'b0));
  FDRE \s_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .D(d[1]),
        .Q(\s_reg[1] [1]),
        .R(1'b0));
  FDRE \s_reg[1][2] 
       (.C(clk),
        .CE(1'b1),
        .D(d[2]),
        .Q(\s_reg[1] [2]),
        .R(1'b0));
  FDRE \s_reg[1][3] 
       (.C(clk),
        .CE(1'b1),
        .D(d[3]),
        .Q(\s_reg[1] [3]),
        .R(1'b0));
  FDRE \s_reg[1][4] 
       (.C(clk),
        .CE(1'b1),
        .D(d[4]),
        .Q(\s_reg[1] [4]),
        .R(1'b0));
  FDRE \s_reg[1][5] 
       (.C(clk),
        .CE(1'b1),
        .D(d[5]),
        .Q(\s_reg[1] [5]),
        .R(1'b0));
  FDRE \s_reg[1][6] 
       (.C(clk),
        .CE(1'b1),
        .D(d[6]),
        .Q(\s_reg[1] [6]),
        .R(1'b0));
  FDRE \s_reg[1][7] 
       (.C(clk),
        .CE(1'b1),
        .D(d[7]),
        .Q(\s_reg[1] [7]),
        .R(1'b0));
  FDRE \s_reg[1][8] 
       (.C(clk),
        .CE(1'b1),
        .D(d[8]),
        .Q(\s_reg[1] [8]),
        .R(1'b0));
  FDRE \s_reg[1][9] 
       (.C(clk),
        .CE(1'b1),
        .D(d[9]),
        .Q(\s_reg[1] [9]),
        .R(1'b0));
  FDRE \s_reg[20][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[19] [0]),
        .Q(\s_reg[20] [0]),
        .R(1'b0));
  FDRE \s_reg[20][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[19] [10]),
        .Q(\s_reg[20] [10]),
        .R(1'b0));
  FDRE \s_reg[20][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[19] [1]),
        .Q(\s_reg[20] [1]),
        .R(1'b0));
  FDRE \s_reg[20][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[19] [2]),
        .Q(\s_reg[20] [2]),
        .R(1'b0));
  FDRE \s_reg[20][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[19] [3]),
        .Q(\s_reg[20] [3]),
        .R(1'b0));
  FDRE \s_reg[20][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[19] [4]),
        .Q(\s_reg[20] [4]),
        .R(1'b0));
  FDRE \s_reg[20][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[19] [5]),
        .Q(\s_reg[20] [5]),
        .R(1'b0));
  FDRE \s_reg[20][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[19] [6]),
        .Q(\s_reg[20] [6]),
        .R(1'b0));
  FDRE \s_reg[20][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[19] [7]),
        .Q(\s_reg[20] [7]),
        .R(1'b0));
  FDRE \s_reg[20][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[19] [8]),
        .Q(\s_reg[20] [8]),
        .R(1'b0));
  FDRE \s_reg[20][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[19] [9]),
        .Q(\s_reg[20] [9]),
        .R(1'b0));
  FDRE \s_reg[21][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[20] [0]),
        .Q(\s_reg[21] [0]),
        .R(1'b0));
  FDRE \s_reg[21][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[20] [10]),
        .Q(\s_reg[21] [10]),
        .R(1'b0));
  FDRE \s_reg[21][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[20] [1]),
        .Q(\s_reg[21] [1]),
        .R(1'b0));
  FDRE \s_reg[21][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[20] [2]),
        .Q(\s_reg[21] [2]),
        .R(1'b0));
  FDRE \s_reg[21][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[20] [3]),
        .Q(\s_reg[21] [3]),
        .R(1'b0));
  FDRE \s_reg[21][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[20] [4]),
        .Q(\s_reg[21] [4]),
        .R(1'b0));
  FDRE \s_reg[21][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[20] [5]),
        .Q(\s_reg[21] [5]),
        .R(1'b0));
  FDRE \s_reg[21][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[20] [6]),
        .Q(\s_reg[21] [6]),
        .R(1'b0));
  FDRE \s_reg[21][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[20] [7]),
        .Q(\s_reg[21] [7]),
        .R(1'b0));
  FDRE \s_reg[21][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[20] [8]),
        .Q(\s_reg[21] [8]),
        .R(1'b0));
  FDRE \s_reg[21][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[20] [9]),
        .Q(\s_reg[21] [9]),
        .R(1'b0));
  FDRE \s_reg[22][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[21] [0]),
        .Q(\s_reg[22] [0]),
        .R(1'b0));
  FDRE \s_reg[22][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[21] [10]),
        .Q(\s_reg[22] [10]),
        .R(1'b0));
  FDRE \s_reg[22][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[21] [1]),
        .Q(\s_reg[22] [1]),
        .R(1'b0));
  FDRE \s_reg[22][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[21] [2]),
        .Q(\s_reg[22] [2]),
        .R(1'b0));
  FDRE \s_reg[22][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[21] [3]),
        .Q(\s_reg[22] [3]),
        .R(1'b0));
  FDRE \s_reg[22][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[21] [4]),
        .Q(\s_reg[22] [4]),
        .R(1'b0));
  FDRE \s_reg[22][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[21] [5]),
        .Q(\s_reg[22] [5]),
        .R(1'b0));
  FDRE \s_reg[22][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[21] [6]),
        .Q(\s_reg[22] [6]),
        .R(1'b0));
  FDRE \s_reg[22][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[21] [7]),
        .Q(\s_reg[22] [7]),
        .R(1'b0));
  FDRE \s_reg[22][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[21] [8]),
        .Q(\s_reg[22] [8]),
        .R(1'b0));
  FDRE \s_reg[22][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[21] [9]),
        .Q(\s_reg[22] [9]),
        .R(1'b0));
  FDRE \s_reg[23][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[22] [0]),
        .Q(\s_reg[23] [0]),
        .R(1'b0));
  FDRE \s_reg[23][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[22] [10]),
        .Q(\s_reg[23] [10]),
        .R(1'b0));
  FDRE \s_reg[23][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[22] [1]),
        .Q(\s_reg[23] [1]),
        .R(1'b0));
  FDRE \s_reg[23][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[22] [2]),
        .Q(\s_reg[23] [2]),
        .R(1'b0));
  FDRE \s_reg[23][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[22] [3]),
        .Q(\s_reg[23] [3]),
        .R(1'b0));
  FDRE \s_reg[23][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[22] [4]),
        .Q(\s_reg[23] [4]),
        .R(1'b0));
  FDRE \s_reg[23][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[22] [5]),
        .Q(\s_reg[23] [5]),
        .R(1'b0));
  FDRE \s_reg[23][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[22] [6]),
        .Q(\s_reg[23] [6]),
        .R(1'b0));
  FDRE \s_reg[23][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[22] [7]),
        .Q(\s_reg[23] [7]),
        .R(1'b0));
  FDRE \s_reg[23][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[22] [8]),
        .Q(\s_reg[23] [8]),
        .R(1'b0));
  FDRE \s_reg[23][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[22] [9]),
        .Q(\s_reg[23] [9]),
        .R(1'b0));
  FDRE \s_reg[24][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[23] [0]),
        .Q(\s_reg[24] [0]),
        .R(1'b0));
  FDRE \s_reg[24][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[23] [10]),
        .Q(\s_reg[24] [10]),
        .R(1'b0));
  FDRE \s_reg[24][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[23] [1]),
        .Q(\s_reg[24] [1]),
        .R(1'b0));
  FDRE \s_reg[24][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[23] [2]),
        .Q(\s_reg[24] [2]),
        .R(1'b0));
  FDRE \s_reg[24][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[23] [3]),
        .Q(\s_reg[24] [3]),
        .R(1'b0));
  FDRE \s_reg[24][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[23] [4]),
        .Q(\s_reg[24] [4]),
        .R(1'b0));
  FDRE \s_reg[24][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[23] [5]),
        .Q(\s_reg[24] [5]),
        .R(1'b0));
  FDRE \s_reg[24][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[23] [6]),
        .Q(\s_reg[24] [6]),
        .R(1'b0));
  FDRE \s_reg[24][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[23] [7]),
        .Q(\s_reg[24] [7]),
        .R(1'b0));
  FDRE \s_reg[24][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[23] [8]),
        .Q(\s_reg[24] [8]),
        .R(1'b0));
  FDRE \s_reg[24][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[23] [9]),
        .Q(\s_reg[24] [9]),
        .R(1'b0));
  FDRE \s_reg[25][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[24] [0]),
        .Q(\s_reg[25] [0]),
        .R(1'b0));
  FDRE \s_reg[25][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[24] [10]),
        .Q(\s_reg[25] [10]),
        .R(1'b0));
  FDRE \s_reg[25][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[24] [1]),
        .Q(\s_reg[25] [1]),
        .R(1'b0));
  FDRE \s_reg[25][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[24] [2]),
        .Q(\s_reg[25] [2]),
        .R(1'b0));
  FDRE \s_reg[25][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[24] [3]),
        .Q(\s_reg[25] [3]),
        .R(1'b0));
  FDRE \s_reg[25][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[24] [4]),
        .Q(\s_reg[25] [4]),
        .R(1'b0));
  FDRE \s_reg[25][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[24] [5]),
        .Q(\s_reg[25] [5]),
        .R(1'b0));
  FDRE \s_reg[25][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[24] [6]),
        .Q(\s_reg[25] [6]),
        .R(1'b0));
  FDRE \s_reg[25][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[24] [7]),
        .Q(\s_reg[25] [7]),
        .R(1'b0));
  FDRE \s_reg[25][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[24] [8]),
        .Q(\s_reg[25] [8]),
        .R(1'b0));
  FDRE \s_reg[25][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[24] [9]),
        .Q(\s_reg[25] [9]),
        .R(1'b0));
  FDRE \s_reg[26][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[25] [0]),
        .Q(\s_reg[26] [0]),
        .R(1'b0));
  FDRE \s_reg[26][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[25] [10]),
        .Q(\s_reg[26] [10]),
        .R(1'b0));
  FDRE \s_reg[26][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[25] [1]),
        .Q(\s_reg[26] [1]),
        .R(1'b0));
  FDRE \s_reg[26][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[25] [2]),
        .Q(\s_reg[26] [2]),
        .R(1'b0));
  FDRE \s_reg[26][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[25] [3]),
        .Q(\s_reg[26] [3]),
        .R(1'b0));
  FDRE \s_reg[26][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[25] [4]),
        .Q(\s_reg[26] [4]),
        .R(1'b0));
  FDRE \s_reg[26][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[25] [5]),
        .Q(\s_reg[26] [5]),
        .R(1'b0));
  FDRE \s_reg[26][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[25] [6]),
        .Q(\s_reg[26] [6]),
        .R(1'b0));
  FDRE \s_reg[26][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[25] [7]),
        .Q(\s_reg[26] [7]),
        .R(1'b0));
  FDRE \s_reg[26][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[25] [8]),
        .Q(\s_reg[26] [8]),
        .R(1'b0));
  FDRE \s_reg[26][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[25] [9]),
        .Q(\s_reg[26] [9]),
        .R(1'b0));
  FDRE \s_reg[27][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[26] [0]),
        .Q(\s_reg[27] [0]),
        .R(1'b0));
  FDRE \s_reg[27][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[26] [10]),
        .Q(\s_reg[27] [10]),
        .R(1'b0));
  FDRE \s_reg[27][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[26] [1]),
        .Q(\s_reg[27] [1]),
        .R(1'b0));
  FDRE \s_reg[27][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[26] [2]),
        .Q(\s_reg[27] [2]),
        .R(1'b0));
  FDRE \s_reg[27][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[26] [3]),
        .Q(\s_reg[27] [3]),
        .R(1'b0));
  FDRE \s_reg[27][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[26] [4]),
        .Q(\s_reg[27] [4]),
        .R(1'b0));
  FDRE \s_reg[27][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[26] [5]),
        .Q(\s_reg[27] [5]),
        .R(1'b0));
  FDRE \s_reg[27][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[26] [6]),
        .Q(\s_reg[27] [6]),
        .R(1'b0));
  FDRE \s_reg[27][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[26] [7]),
        .Q(\s_reg[27] [7]),
        .R(1'b0));
  FDRE \s_reg[27][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[26] [8]),
        .Q(\s_reg[27] [8]),
        .R(1'b0));
  FDRE \s_reg[27][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[26] [9]),
        .Q(\s_reg[27] [9]),
        .R(1'b0));
  FDRE \s_reg[28][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[27] [0]),
        .Q(\s_reg[28] [0]),
        .R(1'b0));
  FDRE \s_reg[28][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[27] [10]),
        .Q(\s_reg[28] [10]),
        .R(1'b0));
  FDRE \s_reg[28][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[27] [1]),
        .Q(\s_reg[28] [1]),
        .R(1'b0));
  FDRE \s_reg[28][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[27] [2]),
        .Q(\s_reg[28] [2]),
        .R(1'b0));
  FDRE \s_reg[28][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[27] [3]),
        .Q(\s_reg[28] [3]),
        .R(1'b0));
  FDRE \s_reg[28][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[27] [4]),
        .Q(\s_reg[28] [4]),
        .R(1'b0));
  FDRE \s_reg[28][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[27] [5]),
        .Q(\s_reg[28] [5]),
        .R(1'b0));
  FDRE \s_reg[28][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[27] [6]),
        .Q(\s_reg[28] [6]),
        .R(1'b0));
  FDRE \s_reg[28][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[27] [7]),
        .Q(\s_reg[28] [7]),
        .R(1'b0));
  FDRE \s_reg[28][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[27] [8]),
        .Q(\s_reg[28] [8]),
        .R(1'b0));
  FDRE \s_reg[28][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[27] [9]),
        .Q(\s_reg[28] [9]),
        .R(1'b0));
  FDRE \s_reg[29][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[28] [0]),
        .Q(\s_reg[29] [0]),
        .R(1'b0));
  FDRE \s_reg[29][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[28] [10]),
        .Q(\s_reg[29] [10]),
        .R(1'b0));
  FDRE \s_reg[29][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[28] [1]),
        .Q(\s_reg[29] [1]),
        .R(1'b0));
  FDRE \s_reg[29][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[28] [2]),
        .Q(\s_reg[29] [2]),
        .R(1'b0));
  FDRE \s_reg[29][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[28] [3]),
        .Q(\s_reg[29] [3]),
        .R(1'b0));
  FDRE \s_reg[29][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[28] [4]),
        .Q(\s_reg[29] [4]),
        .R(1'b0));
  FDRE \s_reg[29][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[28] [5]),
        .Q(\s_reg[29] [5]),
        .R(1'b0));
  FDRE \s_reg[29][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[28] [6]),
        .Q(\s_reg[29] [6]),
        .R(1'b0));
  FDRE \s_reg[29][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[28] [7]),
        .Q(\s_reg[29] [7]),
        .R(1'b0));
  FDRE \s_reg[29][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[28] [8]),
        .Q(\s_reg[29] [8]),
        .R(1'b0));
  FDRE \s_reg[29][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[28] [9]),
        .Q(\s_reg[29] [9]),
        .R(1'b0));
  FDRE \s_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[1] [0]),
        .Q(\s_reg[2] [0]),
        .R(1'b0));
  FDRE \s_reg[2][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[1] [10]),
        .Q(\s_reg[2] [10]),
        .R(1'b0));
  FDRE \s_reg[2][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[1] [1]),
        .Q(\s_reg[2] [1]),
        .R(1'b0));
  FDRE \s_reg[2][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[1] [2]),
        .Q(\s_reg[2] [2]),
        .R(1'b0));
  FDRE \s_reg[2][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[1] [3]),
        .Q(\s_reg[2] [3]),
        .R(1'b0));
  FDRE \s_reg[2][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[1] [4]),
        .Q(\s_reg[2] [4]),
        .R(1'b0));
  FDRE \s_reg[2][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[1] [5]),
        .Q(\s_reg[2] [5]),
        .R(1'b0));
  FDRE \s_reg[2][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[1] [6]),
        .Q(\s_reg[2] [6]),
        .R(1'b0));
  FDRE \s_reg[2][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[1] [7]),
        .Q(\s_reg[2] [7]),
        .R(1'b0));
  FDRE \s_reg[2][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[1] [8]),
        .Q(\s_reg[2] [8]),
        .R(1'b0));
  FDRE \s_reg[2][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[1] [9]),
        .Q(\s_reg[2] [9]),
        .R(1'b0));
  FDRE \s_reg[30][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[29] [0]),
        .Q(\s_reg[30] [0]),
        .R(1'b0));
  FDRE \s_reg[30][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[29] [10]),
        .Q(\s_reg[30] [10]),
        .R(1'b0));
  FDRE \s_reg[30][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[29] [1]),
        .Q(\s_reg[30] [1]),
        .R(1'b0));
  FDRE \s_reg[30][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[29] [2]),
        .Q(\s_reg[30] [2]),
        .R(1'b0));
  FDRE \s_reg[30][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[29] [3]),
        .Q(\s_reg[30] [3]),
        .R(1'b0));
  FDRE \s_reg[30][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[29] [4]),
        .Q(\s_reg[30] [4]),
        .R(1'b0));
  FDRE \s_reg[30][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[29] [5]),
        .Q(\s_reg[30] [5]),
        .R(1'b0));
  FDRE \s_reg[30][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[29] [6]),
        .Q(\s_reg[30] [6]),
        .R(1'b0));
  FDRE \s_reg[30][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[29] [7]),
        .Q(\s_reg[30] [7]),
        .R(1'b0));
  FDRE \s_reg[30][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[29] [8]),
        .Q(\s_reg[30] [8]),
        .R(1'b0));
  FDRE \s_reg[30][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[29] [9]),
        .Q(\s_reg[30] [9]),
        .R(1'b0));
  FDRE \s_reg[31][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[30] [0]),
        .Q(\s_reg[31] [0]),
        .R(1'b0));
  FDRE \s_reg[31][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[30] [10]),
        .Q(\s_reg[31] [10]),
        .R(1'b0));
  FDRE \s_reg[31][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[30] [1]),
        .Q(\s_reg[31] [1]),
        .R(1'b0));
  FDRE \s_reg[31][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[30] [2]),
        .Q(\s_reg[31] [2]),
        .R(1'b0));
  FDRE \s_reg[31][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[30] [3]),
        .Q(\s_reg[31] [3]),
        .R(1'b0));
  FDRE \s_reg[31][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[30] [4]),
        .Q(\s_reg[31] [4]),
        .R(1'b0));
  FDRE \s_reg[31][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[30] [5]),
        .Q(\s_reg[31] [5]),
        .R(1'b0));
  FDRE \s_reg[31][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[30] [6]),
        .Q(\s_reg[31] [6]),
        .R(1'b0));
  FDRE \s_reg[31][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[30] [7]),
        .Q(\s_reg[31] [7]),
        .R(1'b0));
  FDRE \s_reg[31][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[30] [8]),
        .Q(\s_reg[31] [8]),
        .R(1'b0));
  FDRE \s_reg[31][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[30] [9]),
        .Q(\s_reg[31] [9]),
        .R(1'b0));
  FDRE \s_reg[32][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[31] [0]),
        .Q(\s_reg[32] [0]),
        .R(1'b0));
  FDRE \s_reg[32][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[31] [10]),
        .Q(\s_reg[32] [10]),
        .R(1'b0));
  FDRE \s_reg[32][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[31] [1]),
        .Q(\s_reg[32] [1]),
        .R(1'b0));
  FDRE \s_reg[32][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[31] [2]),
        .Q(\s_reg[32] [2]),
        .R(1'b0));
  FDRE \s_reg[32][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[31] [3]),
        .Q(\s_reg[32] [3]),
        .R(1'b0));
  FDRE \s_reg[32][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[31] [4]),
        .Q(\s_reg[32] [4]),
        .R(1'b0));
  FDRE \s_reg[32][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[31] [5]),
        .Q(\s_reg[32] [5]),
        .R(1'b0));
  FDRE \s_reg[32][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[31] [6]),
        .Q(\s_reg[32] [6]),
        .R(1'b0));
  FDRE \s_reg[32][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[31] [7]),
        .Q(\s_reg[32] [7]),
        .R(1'b0));
  FDRE \s_reg[32][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[31] [8]),
        .Q(\s_reg[32] [8]),
        .R(1'b0));
  FDRE \s_reg[32][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[31] [9]),
        .Q(\s_reg[32] [9]),
        .R(1'b0));
  FDRE \s_reg[33][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[32] [0]),
        .Q(\s_reg[33] [0]),
        .R(1'b0));
  FDRE \s_reg[33][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[32] [10]),
        .Q(\s_reg[33] [10]),
        .R(1'b0));
  FDRE \s_reg[33][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[32] [1]),
        .Q(\s_reg[33] [1]),
        .R(1'b0));
  FDRE \s_reg[33][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[32] [2]),
        .Q(\s_reg[33] [2]),
        .R(1'b0));
  FDRE \s_reg[33][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[32] [3]),
        .Q(\s_reg[33] [3]),
        .R(1'b0));
  FDRE \s_reg[33][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[32] [4]),
        .Q(\s_reg[33] [4]),
        .R(1'b0));
  FDRE \s_reg[33][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[32] [5]),
        .Q(\s_reg[33] [5]),
        .R(1'b0));
  FDRE \s_reg[33][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[32] [6]),
        .Q(\s_reg[33] [6]),
        .R(1'b0));
  FDRE \s_reg[33][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[32] [7]),
        .Q(\s_reg[33] [7]),
        .R(1'b0));
  FDRE \s_reg[33][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[32] [8]),
        .Q(\s_reg[33] [8]),
        .R(1'b0));
  FDRE \s_reg[33][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[32] [9]),
        .Q(\s_reg[33] [9]),
        .R(1'b0));
  FDRE \s_reg[34][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[33] [0]),
        .Q(\s_reg[34] [0]),
        .R(1'b0));
  FDRE \s_reg[34][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[33] [10]),
        .Q(\s_reg[34] [10]),
        .R(1'b0));
  FDRE \s_reg[34][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[33] [1]),
        .Q(\s_reg[34] [1]),
        .R(1'b0));
  FDRE \s_reg[34][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[33] [2]),
        .Q(\s_reg[34] [2]),
        .R(1'b0));
  FDRE \s_reg[34][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[33] [3]),
        .Q(\s_reg[34] [3]),
        .R(1'b0));
  FDRE \s_reg[34][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[33] [4]),
        .Q(\s_reg[34] [4]),
        .R(1'b0));
  FDRE \s_reg[34][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[33] [5]),
        .Q(\s_reg[34] [5]),
        .R(1'b0));
  FDRE \s_reg[34][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[33] [6]),
        .Q(\s_reg[34] [6]),
        .R(1'b0));
  FDRE \s_reg[34][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[33] [7]),
        .Q(\s_reg[34] [7]),
        .R(1'b0));
  FDRE \s_reg[34][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[33] [8]),
        .Q(\s_reg[34] [8]),
        .R(1'b0));
  FDRE \s_reg[34][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[33] [9]),
        .Q(\s_reg[34] [9]),
        .R(1'b0));
  FDRE \s_reg[35][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[34] [0]),
        .Q(\s_reg[35] [0]),
        .R(1'b0));
  FDRE \s_reg[35][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[34] [10]),
        .Q(\s_reg[35] [10]),
        .R(1'b0));
  FDRE \s_reg[35][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[34] [1]),
        .Q(\s_reg[35] [1]),
        .R(1'b0));
  FDRE \s_reg[35][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[34] [2]),
        .Q(\s_reg[35] [2]),
        .R(1'b0));
  FDRE \s_reg[35][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[34] [3]),
        .Q(\s_reg[35] [3]),
        .R(1'b0));
  FDRE \s_reg[35][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[34] [4]),
        .Q(\s_reg[35] [4]),
        .R(1'b0));
  FDRE \s_reg[35][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[34] [5]),
        .Q(\s_reg[35] [5]),
        .R(1'b0));
  FDRE \s_reg[35][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[34] [6]),
        .Q(\s_reg[35] [6]),
        .R(1'b0));
  FDRE \s_reg[35][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[34] [7]),
        .Q(\s_reg[35] [7]),
        .R(1'b0));
  FDRE \s_reg[35][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[34] [8]),
        .Q(\s_reg[35] [8]),
        .R(1'b0));
  FDRE \s_reg[35][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[34] [9]),
        .Q(\s_reg[35] [9]),
        .R(1'b0));
  FDRE \s_reg[36][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[35] [0]),
        .Q(\s_reg[36] [0]),
        .R(1'b0));
  FDRE \s_reg[36][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[35] [10]),
        .Q(\s_reg[36] [10]),
        .R(1'b0));
  FDRE \s_reg[36][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[35] [1]),
        .Q(\s_reg[36] [1]),
        .R(1'b0));
  FDRE \s_reg[36][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[35] [2]),
        .Q(\s_reg[36] [2]),
        .R(1'b0));
  FDRE \s_reg[36][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[35] [3]),
        .Q(\s_reg[36] [3]),
        .R(1'b0));
  FDRE \s_reg[36][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[35] [4]),
        .Q(\s_reg[36] [4]),
        .R(1'b0));
  FDRE \s_reg[36][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[35] [5]),
        .Q(\s_reg[36] [5]),
        .R(1'b0));
  FDRE \s_reg[36][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[35] [6]),
        .Q(\s_reg[36] [6]),
        .R(1'b0));
  FDRE \s_reg[36][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[35] [7]),
        .Q(\s_reg[36] [7]),
        .R(1'b0));
  FDRE \s_reg[36][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[35] [8]),
        .Q(\s_reg[36] [8]),
        .R(1'b0));
  FDRE \s_reg[36][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[35] [9]),
        .Q(\s_reg[36] [9]),
        .R(1'b0));
  FDRE \s_reg[37][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[36] [0]),
        .Q(\s_reg[37] [0]),
        .R(1'b0));
  FDRE \s_reg[37][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[36] [10]),
        .Q(\s_reg[37] [10]),
        .R(1'b0));
  FDRE \s_reg[37][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[36] [1]),
        .Q(\s_reg[37] [1]),
        .R(1'b0));
  FDRE \s_reg[37][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[36] [2]),
        .Q(\s_reg[37] [2]),
        .R(1'b0));
  FDRE \s_reg[37][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[36] [3]),
        .Q(\s_reg[37] [3]),
        .R(1'b0));
  FDRE \s_reg[37][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[36] [4]),
        .Q(\s_reg[37] [4]),
        .R(1'b0));
  FDRE \s_reg[37][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[36] [5]),
        .Q(\s_reg[37] [5]),
        .R(1'b0));
  FDRE \s_reg[37][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[36] [6]),
        .Q(\s_reg[37] [6]),
        .R(1'b0));
  FDRE \s_reg[37][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[36] [7]),
        .Q(\s_reg[37] [7]),
        .R(1'b0));
  FDRE \s_reg[37][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[36] [8]),
        .Q(\s_reg[37] [8]),
        .R(1'b0));
  FDRE \s_reg[37][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[36] [9]),
        .Q(\s_reg[37] [9]),
        .R(1'b0));
  FDRE \s_reg[38][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[37] [0]),
        .Q(\s_reg[38] [0]),
        .R(1'b0));
  FDRE \s_reg[38][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[37] [10]),
        .Q(\s_reg[38] [10]),
        .R(1'b0));
  FDRE \s_reg[38][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[37] [1]),
        .Q(\s_reg[38] [1]),
        .R(1'b0));
  FDRE \s_reg[38][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[37] [2]),
        .Q(\s_reg[38] [2]),
        .R(1'b0));
  FDRE \s_reg[38][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[37] [3]),
        .Q(\s_reg[38] [3]),
        .R(1'b0));
  FDRE \s_reg[38][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[37] [4]),
        .Q(\s_reg[38] [4]),
        .R(1'b0));
  FDRE \s_reg[38][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[37] [5]),
        .Q(\s_reg[38] [5]),
        .R(1'b0));
  FDRE \s_reg[38][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[37] [6]),
        .Q(\s_reg[38] [6]),
        .R(1'b0));
  FDRE \s_reg[38][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[37] [7]),
        .Q(\s_reg[38] [7]),
        .R(1'b0));
  FDRE \s_reg[38][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[37] [8]),
        .Q(\s_reg[38] [8]),
        .R(1'b0));
  FDRE \s_reg[38][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[37] [9]),
        .Q(\s_reg[38] [9]),
        .R(1'b0));
  FDRE \s_reg[39][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[38] [0]),
        .Q(\s_reg[39] [0]),
        .R(1'b0));
  FDRE \s_reg[39][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[38] [10]),
        .Q(\s_reg[39] [10]),
        .R(1'b0));
  FDRE \s_reg[39][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[38] [1]),
        .Q(\s_reg[39] [1]),
        .R(1'b0));
  FDRE \s_reg[39][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[38] [2]),
        .Q(\s_reg[39] [2]),
        .R(1'b0));
  FDRE \s_reg[39][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[38] [3]),
        .Q(\s_reg[39] [3]),
        .R(1'b0));
  FDRE \s_reg[39][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[38] [4]),
        .Q(\s_reg[39] [4]),
        .R(1'b0));
  FDRE \s_reg[39][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[38] [5]),
        .Q(\s_reg[39] [5]),
        .R(1'b0));
  FDRE \s_reg[39][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[38] [6]),
        .Q(\s_reg[39] [6]),
        .R(1'b0));
  FDRE \s_reg[39][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[38] [7]),
        .Q(\s_reg[39] [7]),
        .R(1'b0));
  FDRE \s_reg[39][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[38] [8]),
        .Q(\s_reg[39] [8]),
        .R(1'b0));
  FDRE \s_reg[39][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[38] [9]),
        .Q(\s_reg[39] [9]),
        .R(1'b0));
  FDRE \s_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2] [0]),
        .Q(\s_reg[3] [0]),
        .R(1'b0));
  FDRE \s_reg[3][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2] [10]),
        .Q(\s_reg[3] [10]),
        .R(1'b0));
  FDRE \s_reg[3][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2] [1]),
        .Q(\s_reg[3] [1]),
        .R(1'b0));
  FDRE \s_reg[3][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2] [2]),
        .Q(\s_reg[3] [2]),
        .R(1'b0));
  FDRE \s_reg[3][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2] [3]),
        .Q(\s_reg[3] [3]),
        .R(1'b0));
  FDRE \s_reg[3][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2] [4]),
        .Q(\s_reg[3] [4]),
        .R(1'b0));
  FDRE \s_reg[3][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2] [5]),
        .Q(\s_reg[3] [5]),
        .R(1'b0));
  FDRE \s_reg[3][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2] [6]),
        .Q(\s_reg[3] [6]),
        .R(1'b0));
  FDRE \s_reg[3][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2] [7]),
        .Q(\s_reg[3] [7]),
        .R(1'b0));
  FDRE \s_reg[3][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2] [8]),
        .Q(\s_reg[3] [8]),
        .R(1'b0));
  FDRE \s_reg[3][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2] [9]),
        .Q(\s_reg[3] [9]),
        .R(1'b0));
  FDRE \s_reg[40][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[39] [0]),
        .Q(\s_reg[40] [0]),
        .R(1'b0));
  FDRE \s_reg[40][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[39] [10]),
        .Q(\s_reg[40] [10]),
        .R(1'b0));
  FDRE \s_reg[40][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[39] [1]),
        .Q(\s_reg[40] [1]),
        .R(1'b0));
  FDRE \s_reg[40][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[39] [2]),
        .Q(\s_reg[40] [2]),
        .R(1'b0));
  FDRE \s_reg[40][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[39] [3]),
        .Q(\s_reg[40] [3]),
        .R(1'b0));
  FDRE \s_reg[40][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[39] [4]),
        .Q(\s_reg[40] [4]),
        .R(1'b0));
  FDRE \s_reg[40][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[39] [5]),
        .Q(\s_reg[40] [5]),
        .R(1'b0));
  FDRE \s_reg[40][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[39] [6]),
        .Q(\s_reg[40] [6]),
        .R(1'b0));
  FDRE \s_reg[40][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[39] [7]),
        .Q(\s_reg[40] [7]),
        .R(1'b0));
  FDRE \s_reg[40][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[39] [8]),
        .Q(\s_reg[40] [8]),
        .R(1'b0));
  FDRE \s_reg[40][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[39] [9]),
        .Q(\s_reg[40] [9]),
        .R(1'b0));
  FDRE \s_reg[41][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[40] [0]),
        .Q(\s_reg[41] [0]),
        .R(1'b0));
  FDRE \s_reg[41][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[40] [10]),
        .Q(\s_reg[41] [10]),
        .R(1'b0));
  FDRE \s_reg[41][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[40] [1]),
        .Q(\s_reg[41] [1]),
        .R(1'b0));
  FDRE \s_reg[41][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[40] [2]),
        .Q(\s_reg[41] [2]),
        .R(1'b0));
  FDRE \s_reg[41][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[40] [3]),
        .Q(\s_reg[41] [3]),
        .R(1'b0));
  FDRE \s_reg[41][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[40] [4]),
        .Q(\s_reg[41] [4]),
        .R(1'b0));
  FDRE \s_reg[41][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[40] [5]),
        .Q(\s_reg[41] [5]),
        .R(1'b0));
  FDRE \s_reg[41][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[40] [6]),
        .Q(\s_reg[41] [6]),
        .R(1'b0));
  FDRE \s_reg[41][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[40] [7]),
        .Q(\s_reg[41] [7]),
        .R(1'b0));
  FDRE \s_reg[41][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[40] [8]),
        .Q(\s_reg[41] [8]),
        .R(1'b0));
  FDRE \s_reg[41][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[40] [9]),
        .Q(\s_reg[41] [9]),
        .R(1'b0));
  FDRE \s_reg[42][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[41] [0]),
        .Q(\s_reg[42] [0]),
        .R(1'b0));
  FDRE \s_reg[42][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[41] [10]),
        .Q(\s_reg[42] [10]),
        .R(1'b0));
  FDRE \s_reg[42][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[41] [1]),
        .Q(\s_reg[42] [1]),
        .R(1'b0));
  FDRE \s_reg[42][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[41] [2]),
        .Q(\s_reg[42] [2]),
        .R(1'b0));
  FDRE \s_reg[42][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[41] [3]),
        .Q(\s_reg[42] [3]),
        .R(1'b0));
  FDRE \s_reg[42][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[41] [4]),
        .Q(\s_reg[42] [4]),
        .R(1'b0));
  FDRE \s_reg[42][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[41] [5]),
        .Q(\s_reg[42] [5]),
        .R(1'b0));
  FDRE \s_reg[42][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[41] [6]),
        .Q(\s_reg[42] [6]),
        .R(1'b0));
  FDRE \s_reg[42][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[41] [7]),
        .Q(\s_reg[42] [7]),
        .R(1'b0));
  FDRE \s_reg[42][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[41] [8]),
        .Q(\s_reg[42] [8]),
        .R(1'b0));
  FDRE \s_reg[42][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[41] [9]),
        .Q(\s_reg[42] [9]),
        .R(1'b0));
  FDRE \s_reg[43][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[42] [0]),
        .Q(\s_reg[43] [0]),
        .R(1'b0));
  FDRE \s_reg[43][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[42] [10]),
        .Q(\s_reg[43] [10]),
        .R(1'b0));
  FDRE \s_reg[43][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[42] [1]),
        .Q(\s_reg[43] [1]),
        .R(1'b0));
  FDRE \s_reg[43][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[42] [2]),
        .Q(\s_reg[43] [2]),
        .R(1'b0));
  FDRE \s_reg[43][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[42] [3]),
        .Q(\s_reg[43] [3]),
        .R(1'b0));
  FDRE \s_reg[43][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[42] [4]),
        .Q(\s_reg[43] [4]),
        .R(1'b0));
  FDRE \s_reg[43][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[42] [5]),
        .Q(\s_reg[43] [5]),
        .R(1'b0));
  FDRE \s_reg[43][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[42] [6]),
        .Q(\s_reg[43] [6]),
        .R(1'b0));
  FDRE \s_reg[43][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[42] [7]),
        .Q(\s_reg[43] [7]),
        .R(1'b0));
  FDRE \s_reg[43][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[42] [8]),
        .Q(\s_reg[43] [8]),
        .R(1'b0));
  FDRE \s_reg[43][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[42] [9]),
        .Q(\s_reg[43] [9]),
        .R(1'b0));
  FDRE \s_reg[44][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[43] [0]),
        .Q(\s_reg[44] [0]),
        .R(1'b0));
  FDRE \s_reg[44][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[43] [10]),
        .Q(\s_reg[44] [10]),
        .R(1'b0));
  FDRE \s_reg[44][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[43] [1]),
        .Q(\s_reg[44] [1]),
        .R(1'b0));
  FDRE \s_reg[44][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[43] [2]),
        .Q(\s_reg[44] [2]),
        .R(1'b0));
  FDRE \s_reg[44][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[43] [3]),
        .Q(\s_reg[44] [3]),
        .R(1'b0));
  FDRE \s_reg[44][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[43] [4]),
        .Q(\s_reg[44] [4]),
        .R(1'b0));
  FDRE \s_reg[44][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[43] [5]),
        .Q(\s_reg[44] [5]),
        .R(1'b0));
  FDRE \s_reg[44][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[43] [6]),
        .Q(\s_reg[44] [6]),
        .R(1'b0));
  FDRE \s_reg[44][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[43] [7]),
        .Q(\s_reg[44] [7]),
        .R(1'b0));
  FDRE \s_reg[44][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[43] [8]),
        .Q(\s_reg[44] [8]),
        .R(1'b0));
  FDRE \s_reg[44][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[43] [9]),
        .Q(\s_reg[44] [9]),
        .R(1'b0));
  FDRE \s_reg[45][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[44] [0]),
        .Q(\s_reg[45] [0]),
        .R(1'b0));
  FDRE \s_reg[45][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[44] [10]),
        .Q(\s_reg[45] [10]),
        .R(1'b0));
  FDRE \s_reg[45][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[44] [1]),
        .Q(\s_reg[45] [1]),
        .R(1'b0));
  FDRE \s_reg[45][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[44] [2]),
        .Q(\s_reg[45] [2]),
        .R(1'b0));
  FDRE \s_reg[45][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[44] [3]),
        .Q(\s_reg[45] [3]),
        .R(1'b0));
  FDRE \s_reg[45][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[44] [4]),
        .Q(\s_reg[45] [4]),
        .R(1'b0));
  FDRE \s_reg[45][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[44] [5]),
        .Q(\s_reg[45] [5]),
        .R(1'b0));
  FDRE \s_reg[45][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[44] [6]),
        .Q(\s_reg[45] [6]),
        .R(1'b0));
  FDRE \s_reg[45][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[44] [7]),
        .Q(\s_reg[45] [7]),
        .R(1'b0));
  FDRE \s_reg[45][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[44] [8]),
        .Q(\s_reg[45] [8]),
        .R(1'b0));
  FDRE \s_reg[45][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[44] [9]),
        .Q(\s_reg[45] [9]),
        .R(1'b0));
  FDRE \s_reg[46][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[45] [0]),
        .Q(\s_reg[46] [0]),
        .R(1'b0));
  FDRE \s_reg[46][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[45] [10]),
        .Q(\s_reg[46] [10]),
        .R(1'b0));
  FDRE \s_reg[46][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[45] [1]),
        .Q(\s_reg[46] [1]),
        .R(1'b0));
  FDRE \s_reg[46][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[45] [2]),
        .Q(\s_reg[46] [2]),
        .R(1'b0));
  FDRE \s_reg[46][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[45] [3]),
        .Q(\s_reg[46] [3]),
        .R(1'b0));
  FDRE \s_reg[46][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[45] [4]),
        .Q(\s_reg[46] [4]),
        .R(1'b0));
  FDRE \s_reg[46][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[45] [5]),
        .Q(\s_reg[46] [5]),
        .R(1'b0));
  FDRE \s_reg[46][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[45] [6]),
        .Q(\s_reg[46] [6]),
        .R(1'b0));
  FDRE \s_reg[46][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[45] [7]),
        .Q(\s_reg[46] [7]),
        .R(1'b0));
  FDRE \s_reg[46][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[45] [8]),
        .Q(\s_reg[46] [8]),
        .R(1'b0));
  FDRE \s_reg[46][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[45] [9]),
        .Q(\s_reg[46] [9]),
        .R(1'b0));
  FDRE \s_reg[47][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[46] [0]),
        .Q(\s_reg[47] [0]),
        .R(1'b0));
  FDRE \s_reg[47][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[46] [10]),
        .Q(\s_reg[47] [10]),
        .R(1'b0));
  FDRE \s_reg[47][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[46] [1]),
        .Q(\s_reg[47] [1]),
        .R(1'b0));
  FDRE \s_reg[47][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[46] [2]),
        .Q(\s_reg[47] [2]),
        .R(1'b0));
  FDRE \s_reg[47][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[46] [3]),
        .Q(\s_reg[47] [3]),
        .R(1'b0));
  FDRE \s_reg[47][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[46] [4]),
        .Q(\s_reg[47] [4]),
        .R(1'b0));
  FDRE \s_reg[47][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[46] [5]),
        .Q(\s_reg[47] [5]),
        .R(1'b0));
  FDRE \s_reg[47][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[46] [6]),
        .Q(\s_reg[47] [6]),
        .R(1'b0));
  FDRE \s_reg[47][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[46] [7]),
        .Q(\s_reg[47] [7]),
        .R(1'b0));
  FDRE \s_reg[47][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[46] [8]),
        .Q(\s_reg[47] [8]),
        .R(1'b0));
  FDRE \s_reg[47][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[46] [9]),
        .Q(\s_reg[47] [9]),
        .R(1'b0));
  FDRE \s_reg[48][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[47] [0]),
        .Q(\s_reg[48] [0]),
        .R(1'b0));
  FDRE \s_reg[48][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[47] [10]),
        .Q(\s_reg[48] [10]),
        .R(1'b0));
  FDRE \s_reg[48][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[47] [1]),
        .Q(\s_reg[48] [1]),
        .R(1'b0));
  FDRE \s_reg[48][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[47] [2]),
        .Q(\s_reg[48] [2]),
        .R(1'b0));
  FDRE \s_reg[48][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[47] [3]),
        .Q(\s_reg[48] [3]),
        .R(1'b0));
  FDRE \s_reg[48][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[47] [4]),
        .Q(\s_reg[48] [4]),
        .R(1'b0));
  FDRE \s_reg[48][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[47] [5]),
        .Q(\s_reg[48] [5]),
        .R(1'b0));
  FDRE \s_reg[48][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[47] [6]),
        .Q(\s_reg[48] [6]),
        .R(1'b0));
  FDRE \s_reg[48][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[47] [7]),
        .Q(\s_reg[48] [7]),
        .R(1'b0));
  FDRE \s_reg[48][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[47] [8]),
        .Q(\s_reg[48] [8]),
        .R(1'b0));
  FDRE \s_reg[48][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[47] [9]),
        .Q(\s_reg[48] [9]),
        .R(1'b0));
  FDRE \s_reg[49][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[48] [0]),
        .Q(\s_reg[49] [0]),
        .R(1'b0));
  FDRE \s_reg[49][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[48] [10]),
        .Q(\s_reg[49] [10]),
        .R(1'b0));
  FDRE \s_reg[49][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[48] [1]),
        .Q(\s_reg[49] [1]),
        .R(1'b0));
  FDRE \s_reg[49][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[48] [2]),
        .Q(\s_reg[49] [2]),
        .R(1'b0));
  FDRE \s_reg[49][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[48] [3]),
        .Q(\s_reg[49] [3]),
        .R(1'b0));
  FDRE \s_reg[49][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[48] [4]),
        .Q(\s_reg[49] [4]),
        .R(1'b0));
  FDRE \s_reg[49][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[48] [5]),
        .Q(\s_reg[49] [5]),
        .R(1'b0));
  FDRE \s_reg[49][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[48] [6]),
        .Q(\s_reg[49] [6]),
        .R(1'b0));
  FDRE \s_reg[49][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[48] [7]),
        .Q(\s_reg[49] [7]),
        .R(1'b0));
  FDRE \s_reg[49][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[48] [8]),
        .Q(\s_reg[49] [8]),
        .R(1'b0));
  FDRE \s_reg[49][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[48] [9]),
        .Q(\s_reg[49] [9]),
        .R(1'b0));
  FDRE \s_reg[4][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[3] [0]),
        .Q(\s_reg[4] [0]),
        .R(1'b0));
  FDRE \s_reg[4][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[3] [10]),
        .Q(\s_reg[4] [10]),
        .R(1'b0));
  FDRE \s_reg[4][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[3] [1]),
        .Q(\s_reg[4] [1]),
        .R(1'b0));
  FDRE \s_reg[4][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[3] [2]),
        .Q(\s_reg[4] [2]),
        .R(1'b0));
  FDRE \s_reg[4][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[3] [3]),
        .Q(\s_reg[4] [3]),
        .R(1'b0));
  FDRE \s_reg[4][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[3] [4]),
        .Q(\s_reg[4] [4]),
        .R(1'b0));
  FDRE \s_reg[4][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[3] [5]),
        .Q(\s_reg[4] [5]),
        .R(1'b0));
  FDRE \s_reg[4][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[3] [6]),
        .Q(\s_reg[4] [6]),
        .R(1'b0));
  FDRE \s_reg[4][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[3] [7]),
        .Q(\s_reg[4] [7]),
        .R(1'b0));
  FDRE \s_reg[4][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[3] [8]),
        .Q(\s_reg[4] [8]),
        .R(1'b0));
  FDRE \s_reg[4][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[3] [9]),
        .Q(\s_reg[4] [9]),
        .R(1'b0));
  FDRE \s_reg[50][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[49] [0]),
        .Q(\s_reg[50] [0]),
        .R(1'b0));
  FDRE \s_reg[50][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[49] [10]),
        .Q(\s_reg[50] [10]),
        .R(1'b0));
  FDRE \s_reg[50][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[49] [1]),
        .Q(\s_reg[50] [1]),
        .R(1'b0));
  FDRE \s_reg[50][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[49] [2]),
        .Q(\s_reg[50] [2]),
        .R(1'b0));
  FDRE \s_reg[50][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[49] [3]),
        .Q(\s_reg[50] [3]),
        .R(1'b0));
  FDRE \s_reg[50][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[49] [4]),
        .Q(\s_reg[50] [4]),
        .R(1'b0));
  FDRE \s_reg[50][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[49] [5]),
        .Q(\s_reg[50] [5]),
        .R(1'b0));
  FDRE \s_reg[50][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[49] [6]),
        .Q(\s_reg[50] [6]),
        .R(1'b0));
  FDRE \s_reg[50][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[49] [7]),
        .Q(\s_reg[50] [7]),
        .R(1'b0));
  FDRE \s_reg[50][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[49] [8]),
        .Q(\s_reg[50] [8]),
        .R(1'b0));
  FDRE \s_reg[50][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[49] [9]),
        .Q(\s_reg[50] [9]),
        .R(1'b0));
  FDRE \s_reg[51][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[50] [0]),
        .Q(\s_reg[51] [0]),
        .R(1'b0));
  FDRE \s_reg[51][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[50] [10]),
        .Q(\s_reg[51] [10]),
        .R(1'b0));
  FDRE \s_reg[51][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[50] [1]),
        .Q(\s_reg[51] [1]),
        .R(1'b0));
  FDRE \s_reg[51][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[50] [2]),
        .Q(\s_reg[51] [2]),
        .R(1'b0));
  FDRE \s_reg[51][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[50] [3]),
        .Q(\s_reg[51] [3]),
        .R(1'b0));
  FDRE \s_reg[51][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[50] [4]),
        .Q(\s_reg[51] [4]),
        .R(1'b0));
  FDRE \s_reg[51][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[50] [5]),
        .Q(\s_reg[51] [5]),
        .R(1'b0));
  FDRE \s_reg[51][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[50] [6]),
        .Q(\s_reg[51] [6]),
        .R(1'b0));
  FDRE \s_reg[51][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[50] [7]),
        .Q(\s_reg[51] [7]),
        .R(1'b0));
  FDRE \s_reg[51][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[50] [8]),
        .Q(\s_reg[51] [8]),
        .R(1'b0));
  FDRE \s_reg[51][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[50] [9]),
        .Q(\s_reg[51] [9]),
        .R(1'b0));
  FDRE \s_reg[52][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[51] [0]),
        .Q(\s_reg[52] [0]),
        .R(1'b0));
  FDRE \s_reg[52][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[51] [10]),
        .Q(\s_reg[52] [10]),
        .R(1'b0));
  FDRE \s_reg[52][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[51] [1]),
        .Q(\s_reg[52] [1]),
        .R(1'b0));
  FDRE \s_reg[52][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[51] [2]),
        .Q(\s_reg[52] [2]),
        .R(1'b0));
  FDRE \s_reg[52][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[51] [3]),
        .Q(\s_reg[52] [3]),
        .R(1'b0));
  FDRE \s_reg[52][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[51] [4]),
        .Q(\s_reg[52] [4]),
        .R(1'b0));
  FDRE \s_reg[52][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[51] [5]),
        .Q(\s_reg[52] [5]),
        .R(1'b0));
  FDRE \s_reg[52][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[51] [6]),
        .Q(\s_reg[52] [6]),
        .R(1'b0));
  FDRE \s_reg[52][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[51] [7]),
        .Q(\s_reg[52] [7]),
        .R(1'b0));
  FDRE \s_reg[52][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[51] [8]),
        .Q(\s_reg[52] [8]),
        .R(1'b0));
  FDRE \s_reg[52][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[51] [9]),
        .Q(\s_reg[52] [9]),
        .R(1'b0));
  FDRE \s_reg[53][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[52] [0]),
        .Q(\s_reg[53] [0]),
        .R(1'b0));
  FDRE \s_reg[53][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[52] [10]),
        .Q(\s_reg[53] [10]),
        .R(1'b0));
  FDRE \s_reg[53][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[52] [1]),
        .Q(\s_reg[53] [1]),
        .R(1'b0));
  FDRE \s_reg[53][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[52] [2]),
        .Q(\s_reg[53] [2]),
        .R(1'b0));
  FDRE \s_reg[53][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[52] [3]),
        .Q(\s_reg[53] [3]),
        .R(1'b0));
  FDRE \s_reg[53][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[52] [4]),
        .Q(\s_reg[53] [4]),
        .R(1'b0));
  FDRE \s_reg[53][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[52] [5]),
        .Q(\s_reg[53] [5]),
        .R(1'b0));
  FDRE \s_reg[53][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[52] [6]),
        .Q(\s_reg[53] [6]),
        .R(1'b0));
  FDRE \s_reg[53][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[52] [7]),
        .Q(\s_reg[53] [7]),
        .R(1'b0));
  FDRE \s_reg[53][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[52] [8]),
        .Q(\s_reg[53] [8]),
        .R(1'b0));
  FDRE \s_reg[53][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[52] [9]),
        .Q(\s_reg[53] [9]),
        .R(1'b0));
  FDRE \s_reg[54][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[53] [0]),
        .Q(\s_reg[54] [0]),
        .R(1'b0));
  FDRE \s_reg[54][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[53] [10]),
        .Q(\s_reg[54] [10]),
        .R(1'b0));
  FDRE \s_reg[54][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[53] [1]),
        .Q(\s_reg[54] [1]),
        .R(1'b0));
  FDRE \s_reg[54][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[53] [2]),
        .Q(\s_reg[54] [2]),
        .R(1'b0));
  FDRE \s_reg[54][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[53] [3]),
        .Q(\s_reg[54] [3]),
        .R(1'b0));
  FDRE \s_reg[54][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[53] [4]),
        .Q(\s_reg[54] [4]),
        .R(1'b0));
  FDRE \s_reg[54][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[53] [5]),
        .Q(\s_reg[54] [5]),
        .R(1'b0));
  FDRE \s_reg[54][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[53] [6]),
        .Q(\s_reg[54] [6]),
        .R(1'b0));
  FDRE \s_reg[54][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[53] [7]),
        .Q(\s_reg[54] [7]),
        .R(1'b0));
  FDRE \s_reg[54][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[53] [8]),
        .Q(\s_reg[54] [8]),
        .R(1'b0));
  FDRE \s_reg[54][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[53] [9]),
        .Q(\s_reg[54] [9]),
        .R(1'b0));
  FDRE \s_reg[55][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[54] [0]),
        .Q(\s_reg[55] [0]),
        .R(1'b0));
  FDRE \s_reg[55][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[54] [10]),
        .Q(\s_reg[55] [10]),
        .R(1'b0));
  FDRE \s_reg[55][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[54] [1]),
        .Q(\s_reg[55] [1]),
        .R(1'b0));
  FDRE \s_reg[55][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[54] [2]),
        .Q(\s_reg[55] [2]),
        .R(1'b0));
  FDRE \s_reg[55][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[54] [3]),
        .Q(\s_reg[55] [3]),
        .R(1'b0));
  FDRE \s_reg[55][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[54] [4]),
        .Q(\s_reg[55] [4]),
        .R(1'b0));
  FDRE \s_reg[55][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[54] [5]),
        .Q(\s_reg[55] [5]),
        .R(1'b0));
  FDRE \s_reg[55][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[54] [6]),
        .Q(\s_reg[55] [6]),
        .R(1'b0));
  FDRE \s_reg[55][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[54] [7]),
        .Q(\s_reg[55] [7]),
        .R(1'b0));
  FDRE \s_reg[55][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[54] [8]),
        .Q(\s_reg[55] [8]),
        .R(1'b0));
  FDRE \s_reg[55][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[54] [9]),
        .Q(\s_reg[55] [9]),
        .R(1'b0));
  FDRE \s_reg[56][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[55] [0]),
        .Q(\s_reg[56] [0]),
        .R(1'b0));
  FDRE \s_reg[56][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[55] [10]),
        .Q(\s_reg[56] [10]),
        .R(1'b0));
  FDRE \s_reg[56][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[55] [1]),
        .Q(\s_reg[56] [1]),
        .R(1'b0));
  FDRE \s_reg[56][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[55] [2]),
        .Q(\s_reg[56] [2]),
        .R(1'b0));
  FDRE \s_reg[56][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[55] [3]),
        .Q(\s_reg[56] [3]),
        .R(1'b0));
  FDRE \s_reg[56][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[55] [4]),
        .Q(\s_reg[56] [4]),
        .R(1'b0));
  FDRE \s_reg[56][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[55] [5]),
        .Q(\s_reg[56] [5]),
        .R(1'b0));
  FDRE \s_reg[56][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[55] [6]),
        .Q(\s_reg[56] [6]),
        .R(1'b0));
  FDRE \s_reg[56][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[55] [7]),
        .Q(\s_reg[56] [7]),
        .R(1'b0));
  FDRE \s_reg[56][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[55] [8]),
        .Q(\s_reg[56] [8]),
        .R(1'b0));
  FDRE \s_reg[56][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[55] [9]),
        .Q(\s_reg[56] [9]),
        .R(1'b0));
  FDRE \s_reg[57][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[56] [0]),
        .Q(\s_reg[57] [0]),
        .R(1'b0));
  FDRE \s_reg[57][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[56] [10]),
        .Q(\s_reg[57] [10]),
        .R(1'b0));
  FDRE \s_reg[57][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[56] [1]),
        .Q(\s_reg[57] [1]),
        .R(1'b0));
  FDRE \s_reg[57][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[56] [2]),
        .Q(\s_reg[57] [2]),
        .R(1'b0));
  FDRE \s_reg[57][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[56] [3]),
        .Q(\s_reg[57] [3]),
        .R(1'b0));
  FDRE \s_reg[57][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[56] [4]),
        .Q(\s_reg[57] [4]),
        .R(1'b0));
  FDRE \s_reg[57][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[56] [5]),
        .Q(\s_reg[57] [5]),
        .R(1'b0));
  FDRE \s_reg[57][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[56] [6]),
        .Q(\s_reg[57] [6]),
        .R(1'b0));
  FDRE \s_reg[57][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[56] [7]),
        .Q(\s_reg[57] [7]),
        .R(1'b0));
  FDRE \s_reg[57][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[56] [8]),
        .Q(\s_reg[57] [8]),
        .R(1'b0));
  FDRE \s_reg[57][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[56] [9]),
        .Q(\s_reg[57] [9]),
        .R(1'b0));
  FDRE \s_reg[58][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[57] [0]),
        .Q(\s_reg[58] [0]),
        .R(1'b0));
  FDRE \s_reg[58][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[57] [10]),
        .Q(\s_reg[58] [10]),
        .R(1'b0));
  FDRE \s_reg[58][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[57] [1]),
        .Q(\s_reg[58] [1]),
        .R(1'b0));
  FDRE \s_reg[58][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[57] [2]),
        .Q(\s_reg[58] [2]),
        .R(1'b0));
  FDRE \s_reg[58][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[57] [3]),
        .Q(\s_reg[58] [3]),
        .R(1'b0));
  FDRE \s_reg[58][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[57] [4]),
        .Q(\s_reg[58] [4]),
        .R(1'b0));
  FDRE \s_reg[58][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[57] [5]),
        .Q(\s_reg[58] [5]),
        .R(1'b0));
  FDRE \s_reg[58][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[57] [6]),
        .Q(\s_reg[58] [6]),
        .R(1'b0));
  FDRE \s_reg[58][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[57] [7]),
        .Q(\s_reg[58] [7]),
        .R(1'b0));
  FDRE \s_reg[58][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[57] [8]),
        .Q(\s_reg[58] [8]),
        .R(1'b0));
  FDRE \s_reg[58][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[57] [9]),
        .Q(\s_reg[58] [9]),
        .R(1'b0));
  FDRE \s_reg[59][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[58] [0]),
        .Q(\s_reg[59] [0]),
        .R(1'b0));
  FDRE \s_reg[59][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[58] [10]),
        .Q(\s_reg[59] [10]),
        .R(1'b0));
  FDRE \s_reg[59][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[58] [1]),
        .Q(\s_reg[59] [1]),
        .R(1'b0));
  FDRE \s_reg[59][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[58] [2]),
        .Q(\s_reg[59] [2]),
        .R(1'b0));
  FDRE \s_reg[59][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[58] [3]),
        .Q(\s_reg[59] [3]),
        .R(1'b0));
  FDRE \s_reg[59][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[58] [4]),
        .Q(\s_reg[59] [4]),
        .R(1'b0));
  FDRE \s_reg[59][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[58] [5]),
        .Q(\s_reg[59] [5]),
        .R(1'b0));
  FDRE \s_reg[59][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[58] [6]),
        .Q(\s_reg[59] [6]),
        .R(1'b0));
  FDRE \s_reg[59][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[58] [7]),
        .Q(\s_reg[59] [7]),
        .R(1'b0));
  FDRE \s_reg[59][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[58] [8]),
        .Q(\s_reg[59] [8]),
        .R(1'b0));
  FDRE \s_reg[59][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[58] [9]),
        .Q(\s_reg[59] [9]),
        .R(1'b0));
  FDRE \s_reg[5][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[4] [0]),
        .Q(\s_reg[5] [0]),
        .R(1'b0));
  FDRE \s_reg[5][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[4] [10]),
        .Q(\s_reg[5] [10]),
        .R(1'b0));
  FDRE \s_reg[5][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[4] [1]),
        .Q(\s_reg[5] [1]),
        .R(1'b0));
  FDRE \s_reg[5][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[4] [2]),
        .Q(\s_reg[5] [2]),
        .R(1'b0));
  FDRE \s_reg[5][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[4] [3]),
        .Q(\s_reg[5] [3]),
        .R(1'b0));
  FDRE \s_reg[5][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[4] [4]),
        .Q(\s_reg[5] [4]),
        .R(1'b0));
  FDRE \s_reg[5][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[4] [5]),
        .Q(\s_reg[5] [5]),
        .R(1'b0));
  FDRE \s_reg[5][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[4] [6]),
        .Q(\s_reg[5] [6]),
        .R(1'b0));
  FDRE \s_reg[5][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[4] [7]),
        .Q(\s_reg[5] [7]),
        .R(1'b0));
  FDRE \s_reg[5][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[4] [8]),
        .Q(\s_reg[5] [8]),
        .R(1'b0));
  FDRE \s_reg[5][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[4] [9]),
        .Q(\s_reg[5] [9]),
        .R(1'b0));
  FDRE \s_reg[60][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[59] [0]),
        .Q(\s_reg[60] [0]),
        .R(1'b0));
  FDRE \s_reg[60][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[59] [10]),
        .Q(\s_reg[60] [10]),
        .R(1'b0));
  FDRE \s_reg[60][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[59] [1]),
        .Q(\s_reg[60] [1]),
        .R(1'b0));
  FDRE \s_reg[60][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[59] [2]),
        .Q(\s_reg[60] [2]),
        .R(1'b0));
  FDRE \s_reg[60][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[59] [3]),
        .Q(\s_reg[60] [3]),
        .R(1'b0));
  FDRE \s_reg[60][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[59] [4]),
        .Q(\s_reg[60] [4]),
        .R(1'b0));
  FDRE \s_reg[60][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[59] [5]),
        .Q(\s_reg[60] [5]),
        .R(1'b0));
  FDRE \s_reg[60][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[59] [6]),
        .Q(\s_reg[60] [6]),
        .R(1'b0));
  FDRE \s_reg[60][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[59] [7]),
        .Q(\s_reg[60] [7]),
        .R(1'b0));
  FDRE \s_reg[60][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[59] [8]),
        .Q(\s_reg[60] [8]),
        .R(1'b0));
  FDRE \s_reg[60][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[59] [9]),
        .Q(\s_reg[60] [9]),
        .R(1'b0));
  FDRE \s_reg[61][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[60] [0]),
        .Q(\s_reg[61] [0]),
        .R(1'b0));
  FDRE \s_reg[61][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[60] [10]),
        .Q(\s_reg[61] [10]),
        .R(1'b0));
  FDRE \s_reg[61][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[60] [1]),
        .Q(\s_reg[61] [1]),
        .R(1'b0));
  FDRE \s_reg[61][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[60] [2]),
        .Q(\s_reg[61] [2]),
        .R(1'b0));
  FDRE \s_reg[61][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[60] [3]),
        .Q(\s_reg[61] [3]),
        .R(1'b0));
  FDRE \s_reg[61][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[60] [4]),
        .Q(\s_reg[61] [4]),
        .R(1'b0));
  FDRE \s_reg[61][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[60] [5]),
        .Q(\s_reg[61] [5]),
        .R(1'b0));
  FDRE \s_reg[61][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[60] [6]),
        .Q(\s_reg[61] [6]),
        .R(1'b0));
  FDRE \s_reg[61][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[60] [7]),
        .Q(\s_reg[61] [7]),
        .R(1'b0));
  FDRE \s_reg[61][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[60] [8]),
        .Q(\s_reg[61] [8]),
        .R(1'b0));
  FDRE \s_reg[61][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[60] [9]),
        .Q(\s_reg[61] [9]),
        .R(1'b0));
  FDRE \s_reg[62][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[61] [0]),
        .Q(\s_reg[62] [0]),
        .R(1'b0));
  FDRE \s_reg[62][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[61] [10]),
        .Q(\s_reg[62] [10]),
        .R(1'b0));
  FDRE \s_reg[62][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[61] [1]),
        .Q(\s_reg[62] [1]),
        .R(1'b0));
  FDRE \s_reg[62][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[61] [2]),
        .Q(\s_reg[62] [2]),
        .R(1'b0));
  FDRE \s_reg[62][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[61] [3]),
        .Q(\s_reg[62] [3]),
        .R(1'b0));
  FDRE \s_reg[62][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[61] [4]),
        .Q(\s_reg[62] [4]),
        .R(1'b0));
  FDRE \s_reg[62][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[61] [5]),
        .Q(\s_reg[62] [5]),
        .R(1'b0));
  FDRE \s_reg[62][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[61] [6]),
        .Q(\s_reg[62] [6]),
        .R(1'b0));
  FDRE \s_reg[62][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[61] [7]),
        .Q(\s_reg[62] [7]),
        .R(1'b0));
  FDRE \s_reg[62][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[61] [8]),
        .Q(\s_reg[62] [8]),
        .R(1'b0));
  FDRE \s_reg[62][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[61] [9]),
        .Q(\s_reg[62] [9]),
        .R(1'b0));
  FDRE \s_reg[63][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[62] [0]),
        .Q(\s_reg[63] [0]),
        .R(1'b0));
  FDRE \s_reg[63][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[62] [10]),
        .Q(\s_reg[63] [10]),
        .R(1'b0));
  FDRE \s_reg[63][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[62] [1]),
        .Q(\s_reg[63] [1]),
        .R(1'b0));
  FDRE \s_reg[63][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[62] [2]),
        .Q(\s_reg[63] [2]),
        .R(1'b0));
  FDRE \s_reg[63][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[62] [3]),
        .Q(\s_reg[63] [3]),
        .R(1'b0));
  FDRE \s_reg[63][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[62] [4]),
        .Q(\s_reg[63] [4]),
        .R(1'b0));
  FDRE \s_reg[63][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[62] [5]),
        .Q(\s_reg[63] [5]),
        .R(1'b0));
  FDRE \s_reg[63][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[62] [6]),
        .Q(\s_reg[63] [6]),
        .R(1'b0));
  FDRE \s_reg[63][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[62] [7]),
        .Q(\s_reg[63] [7]),
        .R(1'b0));
  FDRE \s_reg[63][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[62] [8]),
        .Q(\s_reg[63] [8]),
        .R(1'b0));
  FDRE \s_reg[63][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[62] [9]),
        .Q(\s_reg[63] [9]),
        .R(1'b0));
  FDRE \s_reg[6][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[5] [0]),
        .Q(\s_reg[6] [0]),
        .R(1'b0));
  FDRE \s_reg[6][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[5] [10]),
        .Q(\s_reg[6] [10]),
        .R(1'b0));
  FDRE \s_reg[6][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[5] [1]),
        .Q(\s_reg[6] [1]),
        .R(1'b0));
  FDRE \s_reg[6][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[5] [2]),
        .Q(\s_reg[6] [2]),
        .R(1'b0));
  FDRE \s_reg[6][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[5] [3]),
        .Q(\s_reg[6] [3]),
        .R(1'b0));
  FDRE \s_reg[6][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[5] [4]),
        .Q(\s_reg[6] [4]),
        .R(1'b0));
  FDRE \s_reg[6][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[5] [5]),
        .Q(\s_reg[6] [5]),
        .R(1'b0));
  FDRE \s_reg[6][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[5] [6]),
        .Q(\s_reg[6] [6]),
        .R(1'b0));
  FDRE \s_reg[6][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[5] [7]),
        .Q(\s_reg[6] [7]),
        .R(1'b0));
  FDRE \s_reg[6][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[5] [8]),
        .Q(\s_reg[6] [8]),
        .R(1'b0));
  FDRE \s_reg[6][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[5] [9]),
        .Q(\s_reg[6] [9]),
        .R(1'b0));
  FDRE \s_reg[7][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[6] [0]),
        .Q(\s_reg[7] [0]),
        .R(1'b0));
  FDRE \s_reg[7][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[6] [10]),
        .Q(\s_reg[7] [10]),
        .R(1'b0));
  FDRE \s_reg[7][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[6] [1]),
        .Q(\s_reg[7] [1]),
        .R(1'b0));
  FDRE \s_reg[7][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[6] [2]),
        .Q(\s_reg[7] [2]),
        .R(1'b0));
  FDRE \s_reg[7][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[6] [3]),
        .Q(\s_reg[7] [3]),
        .R(1'b0));
  FDRE \s_reg[7][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[6] [4]),
        .Q(\s_reg[7] [4]),
        .R(1'b0));
  FDRE \s_reg[7][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[6] [5]),
        .Q(\s_reg[7] [5]),
        .R(1'b0));
  FDRE \s_reg[7][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[6] [6]),
        .Q(\s_reg[7] [6]),
        .R(1'b0));
  FDRE \s_reg[7][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[6] [7]),
        .Q(\s_reg[7] [7]),
        .R(1'b0));
  FDRE \s_reg[7][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[6] [8]),
        .Q(\s_reg[7] [8]),
        .R(1'b0));
  FDRE \s_reg[7][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[6] [9]),
        .Q(\s_reg[7] [9]),
        .R(1'b0));
  FDRE \s_reg[8][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[7] [0]),
        .Q(\s_reg[8] [0]),
        .R(1'b0));
  FDRE \s_reg[8][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[7] [10]),
        .Q(\s_reg[8] [10]),
        .R(1'b0));
  FDRE \s_reg[8][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[7] [1]),
        .Q(\s_reg[8] [1]),
        .R(1'b0));
  FDRE \s_reg[8][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[7] [2]),
        .Q(\s_reg[8] [2]),
        .R(1'b0));
  FDRE \s_reg[8][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[7] [3]),
        .Q(\s_reg[8] [3]),
        .R(1'b0));
  FDRE \s_reg[8][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[7] [4]),
        .Q(\s_reg[8] [4]),
        .R(1'b0));
  FDRE \s_reg[8][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[7] [5]),
        .Q(\s_reg[8] [5]),
        .R(1'b0));
  FDRE \s_reg[8][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[7] [6]),
        .Q(\s_reg[8] [6]),
        .R(1'b0));
  FDRE \s_reg[8][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[7] [7]),
        .Q(\s_reg[8] [7]),
        .R(1'b0));
  FDRE \s_reg[8][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[7] [8]),
        .Q(\s_reg[8] [8]),
        .R(1'b0));
  FDRE \s_reg[8][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[7] [9]),
        .Q(\s_reg[8] [9]),
        .R(1'b0));
  FDRE \s_reg[9][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[8] [0]),
        .Q(\s_reg[9] [0]),
        .R(1'b0));
  FDRE \s_reg[9][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[8] [10]),
        .Q(\s_reg[9] [10]),
        .R(1'b0));
  FDRE \s_reg[9][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[8] [1]),
        .Q(\s_reg[9] [1]),
        .R(1'b0));
  FDRE \s_reg[9][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[8] [2]),
        .Q(\s_reg[9] [2]),
        .R(1'b0));
  FDRE \s_reg[9][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[8] [3]),
        .Q(\s_reg[9] [3]),
        .R(1'b0));
  FDRE \s_reg[9][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[8] [4]),
        .Q(\s_reg[9] [4]),
        .R(1'b0));
  FDRE \s_reg[9][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[8] [5]),
        .Q(\s_reg[9] [5]),
        .R(1'b0));
  FDRE \s_reg[9][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[8] [6]),
        .Q(\s_reg[9] [6]),
        .R(1'b0));
  FDRE \s_reg[9][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[8] [7]),
        .Q(\s_reg[9] [7]),
        .R(1'b0));
  FDRE \s_reg[9][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[8] [8]),
        .Q(\s_reg[9] [8]),
        .R(1'b0));
  FDRE \s_reg[9][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[8] [9]),
        .Q(\s_reg[9] [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_enc8b10b" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_enc8b10b
   (clk,
    rst,
    en,
    d,
    k,
    q);
  input clk;
  input rst;
  input en;
  input [7:0]d;
  input k;
  output [9:0]q;

  wire alt6;
  wire clk;
  wire [7:0]d;
  wire [9:0]dataOut;
  wire dataOut112_out;
  wire dataOut122_out;
  wire dataOut17_out;
  wire disp;
  wire dispOut1;
  wire dispOut143_out;
  wire dispOut240_out;
  wire disp_i_1_n_0;
  wire disp_i_3_n_0;
  wire en;
  wire k;
  wire p_11_in;
  wire p_41_in;
  wire [9:0]q;
  wire rst;

  LUT6 #(
    .INIT(64'h000000009C9C9C6C)) 
    disp_i_1
       (.I0(dispOut143_out),
        .I1(disp),
        .I2(en),
        .I3(disp_i_3_n_0),
        .I4(dispOut1),
        .I5(rst),
        .O(disp_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFE8818137)) 
    disp_i_2
       (.I0(d[4]),
        .I1(d[2]),
        .I2(d[3]),
        .I3(d[1]),
        .I4(d[0]),
        .I5(k),
        .O(dispOut143_out));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    disp_i_3
       (.I0(d[5]),
        .I1(d[6]),
        .O(disp_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    disp_i_4
       (.I0(d[7]),
        .I1(d[5]),
        .I2(d[6]),
        .O(dispOut1));
  FDRE #(
    .INIT(1'b0)) 
    disp_reg
       (.C(clk),
        .CE(1'b1),
        .D(disp_i_1_n_0),
        .Q(disp),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[0]_i_1 
       (.I0(dataOut17_out),
        .I1(d[0]),
        .O(dataOut[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h9555AAA9)) 
    \q[1]_i_1 
       (.I0(dataOut17_out),
        .I1(d[2]),
        .I2(d[3]),
        .I3(d[0]),
        .I4(d[1]),
        .O(dataOut[1]));
  LUT6 #(
    .INIT(64'h55555555A9AAA9A9)) 
    \q[2]_i_1 
       (.I0(dataOut17_out),
        .I1(d[0]),
        .I2(d[1]),
        .I3(d[4]),
        .I4(d[3]),
        .I5(d[2]),
        .O(dataOut[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h9555AAAA)) 
    \q[3]_i_1 
       (.I0(dataOut17_out),
        .I1(d[2]),
        .I2(d[1]),
        .I3(d[0]),
        .I4(d[3]),
        .O(dataOut[3]));
  LUT6 #(
    .INIT(64'h5A5A5A595A595996)) 
    \q[4]_i_1 
       (.I0(dataOut17_out),
        .I1(d[3]),
        .I2(d[4]),
        .I3(d[2]),
        .I4(d[1]),
        .I5(d[0]),
        .O(dataOut[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[5]_i_1 
       (.I0(dataOut17_out),
        .I1(dataOut112_out),
        .O(dataOut[5]));
  LUT6 #(
    .INIT(64'hCCCFCCCCAAAAAAAA)) 
    \q[5]_i_2 
       (.I0(dispOut240_out),
        .I1(p_41_in),
        .I2(d[3]),
        .I3(d[4]),
        .I4(p_11_in),
        .I5(disp),
        .O(dataOut17_out));
  LUT6 #(
    .INIT(64'h9016176880161768)) 
    \q[5]_i_3 
       (.I0(d[1]),
        .I1(d[0]),
        .I2(d[2]),
        .I3(d[4]),
        .I4(d[3]),
        .I5(k),
        .O(dataOut112_out));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00108117)) 
    \q[5]_i_4 
       (.I0(d[0]),
        .I1(d[1]),
        .I2(d[3]),
        .I3(d[2]),
        .I4(d[4]),
        .O(dispOut240_out));
  LUT6 #(
    .INIT(64'hFEEAEAABAAAAAAAA)) 
    \q[5]_i_5 
       (.I0(k),
        .I1(d[0]),
        .I2(d[1]),
        .I3(d[3]),
        .I4(d[2]),
        .I5(d[4]),
        .O(p_41_in));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[5]_i_6 
       (.I0(d[2]),
        .I1(d[1]),
        .I2(d[0]),
        .O(p_11_in));
  LUT6 #(
    .INIT(64'hE0FF00FF1F00FF00)) 
    \q[6]_i_1 
       (.I0(alt6),
        .I1(k),
        .I2(d[6]),
        .I3(d[5]),
        .I4(d[7]),
        .I5(dataOut122_out),
        .O(dataOut[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6665)) 
    \q[7]_i_1 
       (.I0(dataOut122_out),
        .I1(d[6]),
        .I2(d[5]),
        .I3(d[7]),
        .O(dataOut[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \q[8]_i_1 
       (.I0(dataOut122_out),
        .I1(d[7]),
        .O(dataOut[8]));
  LUT6 #(
    .INIT(64'h1FFFF00FE0000FF0)) 
    \q[9]_i_1 
       (.I0(alt6),
        .I1(k),
        .I2(d[6]),
        .I3(d[5]),
        .I4(d[7]),
        .I5(dataOut122_out),
        .O(dataOut[9]));
  LUT6 #(
    .INIT(64'h0000011428800000)) 
    \q[9]_i_2 
       (.I0(disp),
        .I1(d[0]),
        .I2(d[1]),
        .I3(d[2]),
        .I4(d[3]),
        .I5(d[4]),
        .O(alt6));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h2BC0C02B)) 
    \q[9]_i_3 
       (.I0(k),
        .I1(d[6]),
        .I2(d[5]),
        .I3(dispOut143_out),
        .I4(disp),
        .O(dataOut122_out));
  FDRE \q_reg[0] 
       (.C(clk),
        .CE(en),
        .D(dataOut[0]),
        .Q(q[0]),
        .R(1'b0));
  FDRE \q_reg[1] 
       (.C(clk),
        .CE(en),
        .D(dataOut[1]),
        .Q(q[1]),
        .R(1'b0));
  FDRE \q_reg[2] 
       (.C(clk),
        .CE(en),
        .D(dataOut[2]),
        .Q(q[2]),
        .R(1'b0));
  FDRE \q_reg[3] 
       (.C(clk),
        .CE(en),
        .D(dataOut[3]),
        .Q(q[3]),
        .R(1'b0));
  FDRE \q_reg[4] 
       (.C(clk),
        .CE(en),
        .D(dataOut[4]),
        .Q(q[4]),
        .R(1'b0));
  FDRE \q_reg[5] 
       (.C(clk),
        .CE(en),
        .D(dataOut[5]),
        .Q(q[5]),
        .R(1'b0));
  FDRE \q_reg[6] 
       (.C(clk),
        .CE(en),
        .D(dataOut[6]),
        .Q(q[6]),
        .R(1'b0));
  FDRE \q_reg[7] 
       (.C(clk),
        .CE(en),
        .D(dataOut[7]),
        .Q(q[7]),
        .R(1'b0));
  FDRE \q_reg[8] 
       (.C(clk),
        .CE(en),
        .D(dataOut[8]),
        .Q(q[8]),
        .R(1'b0));
  FDRE \q_reg[9] 
       (.C(clk),
        .CE(en),
        .D(dataOut[9]),
        .Q(q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_endpoint" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint
   (debug,
    rst,
    D,
    clk,
    Q,
    stat,
    tstamp,
    sync_stb,
    sync_first,
    tx_dis,
    txd,
    rec_clk,
    rec_d,
    sclk,
    srst,
    pll_locked,
    cdr_lol,
    cdr_los,
    sfp_los,
    addr,
    tgrp);
  output [21:0]debug;
  output rst;
  output [3:0]D;
  output clk;
  output [0:0]Q;
  output [3:0]stat;
  output [63:0]tstamp;
  output sync_stb;
  output sync_first;
  output tx_dis;
  output txd;
  input rec_clk;
  input rec_d;
  input sclk;
  input srst;
  input pll_locked;
  input cdr_lol;
  input cdr_los;
  input sfp_los;
  input [7:0]addr;
  input [1:0]tgrp;

  wire [3:0]D;
  wire [0:0]Q;
  wire a_first;
  wire a_stb;
  wire \acmd_out[d]1 ;
  wire acmd_rx_n_0;
  wire acmd_rx_n_1;
  wire acmd_rx_n_10;
  wire acmd_rx_n_11;
  wire acmd_rx_n_12;
  wire acmd_rx_n_3;
  wire acmd_rx_n_4;
  wire acmd_rx_n_5;
  wire acmd_rx_n_6;
  wire acmd_rx_n_7;
  wire acmd_rx_n_8;
  wire acmd_rx_n_9;
  wire \acmdr[ren] ;
  wire \acmdw[last] ;
  wire active;
  wire active0;
  wire [7:0]addr;
  wire adj_ack_i;
  wire adj_req;
  wire [3:3]c;
  wire [5:0]cdel;
  wire cdr_lol;
  wire cdr_los;
  wire clk;
  wire [7:4]d;
  wire [21:0]debug;
  wire [3:0]fdel;
  wire k;
  wire merge_n_2;
  wire merge_n_4;
  wire p_1_in;
  wire phase_locked;
  wire phase_rst;
  wire pll_locked;
  wire [7:0]r;
  wire rdy_i;
  wire rec_clk;
  wire rec_d;
  wire rec_rst;
  wire rst;
  wire rst_i;
  wire rx_err_f;
  wire rx_n_0;
  wire rx_n_3;
  wire rx_n_5;
  wire rx_n_8;
  wire rxphy_aligned;
  wire rxphy_locked;
  wire rxphy_rst;
  wire s_first;
  wire \s_reg[4] ;
  wire s_stb;
  wire sclk;
  wire sfp_los;
  wire [3:3]slen;
  wire smode_r2;
  wire src;
  wire srst;
  wire startup_n_28;
  wire [3:0]stat;
  wire stb;
  wire sync_first;
  wire sync_stb;
  wire [1:0]tgrp;
  wire [63:0]tstamp;
  wire tx_dis;
  wire tx_en;
  wire tx_k;
  wire tx_n_0;
  wire [7:0]tx_q;
  wire txd;
  wire txdi;
  wire [7:0]w;
  wire w0;
  wire NLW_rxphy_edge_UNCONNECTED;
  wire [3:0]NLW_rxphy_fdel_out_UNCONNECTED;

  design_1_pdts_endpoint_stdlog_0_0_pdts_acmd_rx acmd_rx
       (.E(rx_n_8),
        .Q({acmd_rx_n_1,p_1_in,acmd_rx_n_3,acmd_rx_n_4,acmd_rx_n_5,acmd_rx_n_6,acmd_rx_n_7,acmd_rx_n_8,acmd_rx_n_9,acmd_rx_n_10,acmd_rx_n_11,acmd_rx_n_12}),
        .SR(c),
        .a_first(a_first),
        .a_stb(a_stb),
        .clk(clk),
        .out(rst_i),
        .q({d,D}),
        .s_reg_0(acmd_rx_n_0));
  design_1_pdts_endpoint_stdlog_0_0_pdts_adjust adj
       (.Q({acmd_rx_n_1,p_1_in,acmd_rx_n_3,acmd_rx_n_4,acmd_rx_n_5,acmd_rx_n_6,acmd_rx_n_7,acmd_rx_n_8,acmd_rx_n_9,acmd_rx_n_10,acmd_rx_n_11,acmd_rx_n_12}),
        .adj_ack_i(adj_ack_i),
        .adj_req(adj_req),
        .\cdel_reg[5]_0 (cdel),
        .clk(clk),
        .\da_reg[0] (acmd_rx_n_0),
        .\fdel_reg[3]_0 (fdel),
        .\s_reg[4] (\s_reg[4] ),
        .\s_reg[4][0] (startup_n_28),
        .sclk(sclk),
        .srst(srst),
        .tx_dis(tx_dis),
        .tx_en(tx_en));
  design_1_pdts_endpoint_stdlog_0_0_pdts_rx_div_mmcm clkgen
       (.clk(clk),
        .phase_locked(phase_locked),
        .phase_rst(phase_rst),
        .rec_clk(rec_clk));
  design_1_pdts_endpoint_stdlog_0_0_pdts_idle_gen idle
       (.E(\acmdr[ren] ),
        .Q(r),
        .\acmd_out[d]1 (\acmd_out[d]1 ),
        .\acmdw[last] (\acmdw[last] ),
        .clk(clk),
        .out(rst_i));
  design_1_pdts_endpoint_stdlog_0_0_pdts_scmd_merge merge
       (.E(w0),
        .Q(w),
        .SR(smode_r2),
        .active(active),
        .active0(active0),
        .active_reg_0(merge_n_2),
        .clk(clk),
        .out(rst_i),
        .q({d,D}),
        .\q_reg[2] (merge_n_4),
        .src(src),
        .src_reg_0(tx_n_0),
        .stbo(stb));
  design_1_pdts_endpoint_stdlog_0_0_pdts_rx rx
       (.D({rdy_i,rx_err_f}),
        .E(rx_n_8),
        .SR(c),
        .a_first(a_first),
        .a_stb(a_stb),
        .active(active),
        .active_reg(rx_n_3),
        .addr(addr),
        .clk(clk),
        .\err_reg[0]_0 (rx_n_0),
        .k(k),
        .out(rst_i),
        .q({d,D}),
        .\q_reg[1] (rx_n_5),
        .s_first(s_first),
        .s_stb(s_stb),
        .slen(slen),
        .src_reg(merge_n_4),
        .stbo(stb),
        .sync_first(sync_first),
        .sync_stb(sync_stb),
        .tgrp(tgrp));
  (* KEEP_HIERARCHY = "soft" *) 
  (* UPSTREAM_MODE = "FALSE" *) 
  design_1_pdts_endpoint_stdlog_0_0_pdts_rx_phy rxphy
       (.aligned(rxphy_aligned),
        .cdel(cdel),
        .clk(clk),
        .\edge (NLW_rxphy_edge_UNCONNECTED),
        .fdel(fdel),
        .fdel_out(NLW_rxphy_fdel_out_UNCONNECTED[3:0]),
        .k(k),
        .phase_locked(phase_locked),
        .phase_rst(phase_rst),
        .q({d,D}),
        .rec_rst(rec_rst),
        .rst(rxphy_rst),
        .rx_locked(rxphy_locked),
        .rxclk(rec_clk),
        .rxd(rec_d),
        .stbo(stb));
  design_1_pdts_endpoint_stdlog_0_0_pdts_ep_startup startup
       (.D(rx_err_f),
        .Q({startup_n_28,Q}),
        .adj_ack_i(adj_ack_i),
        .adj_req(adj_req),
        .cdr_lol(cdr_lol),
        .cdr_los(cdr_los),
        .clk(clk),
        .\da_reg[1] ({rxphy_locked,rxphy_aligned}),
        .\da_reg[3] (rdy_i),
        .debug(debug),
        .out({rst,rst_i,rxphy_rst,rec_rst}),
        .pll_locked(pll_locked),
        .q(txdi),
        .rec_clk(rec_clk),
        .rx_err_f_reg_0(rx_n_0),
        .\s_reg[4] (\s_reg[4] ),
        .sclk(sclk),
        .sfp_los(sfp_los),
        .srst(srst),
        .stat(stat),
        .tx_en(tx_en),
        .txd(txd));
  design_1_pdts_endpoint_stdlog_0_0_pdts_tstamp ts
       (.clk(clk),
        .lock_reg_0(rdy_i),
        .out(rst_i),
        .q({d,D}),
        .s_first(s_first),
        .s_stb(s_stb),
        .slen(slen),
        .tstamp(tstamp[63:1]),
        .\tstamp_i_reg[0]_0 (tstamp[0]));
  design_1_pdts_endpoint_stdlog_0_0_pdts_tx tx
       (.E(w0),
        .\FSM_sequential_state_reg[2]_0 (\acmdr[ren] ),
        .Q(w),
        .SR(smode_r2),
        .\acmd_out[d]1 (\acmd_out[d]1 ),
        .\acmdw[last] (\acmdw[last] ),
        .active(active),
        .active0(active0),
        .addr(addr),
        .clk(clk),
        .d(tx_q),
        .k(tx_k),
        .\lfsr_q_reg[0] (merge_n_2),
        .\lfsr_q_reg[8] (r),
        .out(rst_i),
        .s_first(s_first),
        .s_ok_reg_0(tx_n_0),
        .s_stb(s_stb),
        .src(src),
        .src_reg(rx_n_3),
        .stbo(stb),
        .txphy_i_7(rx_n_5));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_pdts_endpoint_stdlog_0_0_pdts_tx_phy txphy
       (.clk(clk),
        .d(tx_q),
        .k(tx_k),
        .q(txdi),
        .rst(rst_i),
        .stb(stb),
        .txclk(rec_clk));
endmodule

(* ORIG_REF_NAME = "pdts_endpoint_stdlogic" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint_stdlogic
   (debug,
    rst,
    q,
    clk,
    Q,
    stat,
    tstamp,
    sync_stb,
    sync_first,
    tx_dis,
    txd,
    rec_clk,
    rec_d,
    sclk,
    srst,
    pll_locked,
    cdr_lol,
    cdr_los,
    sfp_los,
    addr,
    tgrp);
  output [21:0]debug;
  output rst;
  output [3:0]q;
  output clk;
  output [0:0]Q;
  output [3:0]stat;
  output [63:0]tstamp;
  output sync_stb;
  output sync_first;
  output tx_dis;
  output txd;
  input rec_clk;
  input rec_d;
  input sclk;
  input srst;
  input pll_locked;
  input cdr_lol;
  input cdr_los;
  input sfp_los;
  input [7:0]addr;
  input [1:0]tgrp;

  wire [0:0]Q;
  wire [7:0]addr;
  wire cdr_lol;
  wire cdr_los;
  wire clk;
  wire [21:0]debug;
  wire pll_locked;
  wire [3:0]q;
  wire rec_clk;
  wire rec_d;
  wire rst;
  wire sclk;
  wire sfp_los;
  wire srst;
  wire [3:0]stat;
  wire sync_first;
  wire sync_stb;
  wire [1:0]tgrp;
  wire [63:0]tstamp;
  wire tx_dis;
  wire txd;

  design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint ep
       (.D(q),
        .Q(Q),
        .addr(addr),
        .cdr_lol(cdr_lol),
        .cdr_los(cdr_los),
        .clk(clk),
        .debug(debug),
        .pll_locked(pll_locked),
        .rec_clk(rec_clk),
        .rec_d(rec_d),
        .rst(rst),
        .sclk(sclk),
        .sfp_los(sfp_los),
        .srst(srst),
        .stat(stat),
        .sync_first(sync_first),
        .sync_stb(sync_stb),
        .tgrp(tgrp),
        .tstamp(tstamp),
        .tx_dis(tx_dis),
        .txd(txd));
endmodule

(* ORIG_REF_NAME = "pdts_ep_startup" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_ep_startup
   (debug,
    out,
    D,
    \s_reg[4] ,
    Q,
    stat,
    txd,
    sclk,
    rec_clk,
    rx_err_f_reg_0,
    clk,
    adj_ack_i,
    pll_locked,
    cdr_lol,
    srst,
    cdr_los,
    sfp_los,
    adj_req,
    tx_en,
    q,
    \da_reg[3] ,
    \da_reg[1] );
  output [21:0]debug;
  output [3:0]out;
  output [0:0]D;
  output \s_reg[4] ;
  output [1:0]Q;
  output [3:0]stat;
  output txd;
  input sclk;
  input rec_clk;
  input rx_err_f_reg_0;
  input clk;
  input adj_ack_i;
  input pll_locked;
  input cdr_lol;
  input srst;
  input cdr_los;
  input sfp_los;
  input adj_req;
  input tx_en;
  input q;
  input [0:0]\da_reg[3] ;
  input [1:0]\da_reg[1] ;

  wire [0:0]D;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[0]_i_7_n_0 ;
  wire \FSM_onehot_state[0]_i_8_n_0 ;
  wire \FSM_onehot_state[0]_i_9_n_0 ;
  wire \FSM_onehot_state[7]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire [1:0]Q;
  wire adj_ack_i;
  wire adj_req;
  wire cctr;
  wire cctr0;
  wire \cctr[15]_i_1_n_0 ;
  wire [15:0]cctr_reg;
  wire \cctr_rnd[15]_i_2_n_0 ;
  wire \cctr_rnd[15]_i_3_n_0 ;
  wire cdr_lol;
  wire cdr_los;
  wire chk_n_1;
  wire chk_n_2;
  wire chk_n_3;
  wire chk_n_4;
  wire chk_n_5;
  wire clear;
  wire clk;
  wire [1:0]\da_reg[1] ;
  wire [0:0]\da_reg[3] ;
  wire [21:0]debug;
  wire \debug[1]_INST_0_i_1_n_0 ;
  wire \debug[1]_INST_0_i_2_n_0 ;
  wire [3:0]out;
  wire p_0_in;
  wire p_0_in5_in;
  wire p_1_in;
  wire p_1_in7_in;
  wire pll_locked;
  wire [15:0]plusOp;
  wire [15:0]plusOp__0;
  wire plusOp__28_carry__0_n_2;
  wire plusOp__28_carry__0_n_3;
  wire plusOp__28_carry__0_n_4;
  wire plusOp__28_carry__0_n_5;
  wire plusOp__28_carry__0_n_6;
  wire plusOp__28_carry__0_n_7;
  wire plusOp__28_carry_n_0;
  wire plusOp__28_carry_n_1;
  wire plusOp__28_carry_n_2;
  wire plusOp__28_carry_n_3;
  wire plusOp__28_carry_n_4;
  wire plusOp__28_carry_n_5;
  wire plusOp__28_carry_n_6;
  wire plusOp__28_carry_n_7;
  wire [7:0]plusOp__7;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire q;
  wire \rctr[7]_i_3_n_0 ;
  wire [7:7]rctr_reg;
  wire \rctr_reg_n_0_[0] ;
  wire \rctr_reg_n_0_[1] ;
  wire \rctr_reg_n_0_[2] ;
  wire \rctr_reg_n_0_[3] ;
  wire \rctr_reg_n_0_[4] ;
  wire \rctr_reg_n_0_[5] ;
  wire \rctr_reg_n_0_[6] ;
  wire rec_clk;
  wire rx_err_f_reg_0;
  wire \s_reg[4] ;
  wire sclk;
  wire [15:0]sctr_reg;
  wire sfp_los;
  wire srst;
  wire [3:0]stat;
  wire sync_sclk_n_4;
  wire sync_sclk_n_5;
  wire sync_sclk_n_6;
  wire sync_sclk_n_7;
  wire sync_sclk_n_8;
  wire sync_sclk_n_9;
  wire t;
  wire td;
  wire tx_en;
  wire txd;
  wire [7:6]NLW_plusOp__28_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_plusOp__28_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_plusOp_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(p_1_in7_in),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_state[0]_i_7 
       (.I0(debug[9]),
        .I1(debug[10]),
        .I2(debug[8]),
        .I3(debug[7]),
        .I4(debug[6]),
        .I5(\FSM_onehot_state[0]_i_9_n_0 ),
        .O(\FSM_onehot_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_state[0]_i_8 
       (.I0(debug[19]),
        .I1(debug[20]),
        .I2(debug[17]),
        .I3(debug[18]),
        .I4(debug[21]),
        .I5(p_0_in),
        .O(\FSM_onehot_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \FSM_onehot_state[0]_i_9 
       (.I0(debug[14]),
        .I1(debug[13]),
        .I2(debug[11]),
        .I3(debug[12]),
        .I4(debug[16]),
        .I5(debug[15]),
        .O(\FSM_onehot_state[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(p_0_in5_in),
        .I2(p_0_in),
        .I3(Q[1]),
        .O(\FSM_onehot_state[7]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(sclk),
        .CE(sync_sclk_n_4),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(Q[0]),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[10] 
       (.C(sclk),
        .CE(sync_sclk_n_4),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .S(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sclk),
        .CE(sync_sclk_n_4),
        .D(sync_sclk_n_9),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sclk),
        .CE(sync_sclk_n_4),
        .D(sync_sclk_n_8),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(sclk),
        .CE(sync_sclk_n_4),
        .D(chk_n_4),
        .Q(Q[1]),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(sclk),
        .CE(sync_sclk_n_4),
        .D(p_1_in7_in),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(sclk),
        .CE(sync_sclk_n_4),
        .D(sync_sclk_n_7),
        .Q(p_1_in7_in),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(sclk),
        .CE(sync_sclk_n_4),
        .D(chk_n_3),
        .Q(p_0_in5_in),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(sclk),
        .CE(sync_sclk_n_4),
        .D(chk_n_2),
        .Q(p_1_in),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(sclk),
        .CE(sync_sclk_n_4),
        .D(sync_sclk_n_6),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(sclk),
        .CE(sync_sclk_n_4),
        .D(p_1_in),
        .Q(p_0_in),
        .R(srst));
  design_1_pdts_endpoint_stdlog_0_0_pdts_del adel
       (.adj_ack_i(adj_ack_i),
        .\s_reg[4] (\s_reg[4] ),
        .sclk(sclk));
  LUT1 #(
    .INIT(2'h1)) 
    \cctr[0]_i_1 
       (.I0(cctr_reg[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \cctr[15]_i_1 
       (.I0(cctr),
        .I1(srst),
        .O(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[0] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[0]),
        .Q(cctr_reg[0]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[10] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[10]),
        .Q(cctr_reg[10]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[11] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[11]),
        .Q(cctr_reg[11]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[12] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[12]),
        .Q(cctr_reg[12]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[13] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[13]),
        .Q(cctr_reg[13]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[14] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[14]),
        .Q(cctr_reg[14]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[15] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[15]),
        .Q(cctr_reg[15]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[1] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[1]),
        .Q(cctr_reg[1]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[2] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[2]),
        .Q(cctr_reg[2]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[3] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[3]),
        .Q(cctr_reg[3]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[4] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[4]),
        .Q(cctr_reg[4]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[5] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[5]),
        .Q(cctr_reg[5]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[6] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[6]),
        .Q(cctr_reg[6]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[7] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[7]),
        .Q(cctr_reg[7]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[8] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[8]),
        .Q(cctr_reg[8]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[9] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__0[9]),
        .Q(cctr_reg[9]),
        .R(\cctr[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cctr_rnd[15]_i_1 
       (.I0(\cctr_rnd[15]_i_2_n_0 ),
        .I1(sctr_reg[1]),
        .I2(sctr_reg[0]),
        .I3(sctr_reg[3]),
        .I4(sctr_reg[2]),
        .I5(\cctr_rnd[15]_i_3_n_0 ),
        .O(cctr));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cctr_rnd[15]_i_2 
       (.I0(sctr_reg[12]),
        .I1(sctr_reg[13]),
        .I2(sctr_reg[10]),
        .I3(sctr_reg[11]),
        .I4(sctr_reg[15]),
        .I5(sctr_reg[14]),
        .O(\cctr_rnd[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cctr_rnd[15]_i_3 
       (.I0(sctr_reg[6]),
        .I1(sctr_reg[7]),
        .I2(sctr_reg[4]),
        .I3(sctr_reg[5]),
        .I4(sctr_reg[9]),
        .I5(sctr_reg[8]),
        .O(\cctr_rnd[15]_i_3_n_0 ));
  FDRE \cctr_rnd_reg[0] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[0]),
        .Q(debug[6]),
        .R(srst));
  FDRE \cctr_rnd_reg[10] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[10]),
        .Q(debug[16]),
        .R(srst));
  FDRE \cctr_rnd_reg[11] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[11]),
        .Q(debug[17]),
        .R(srst));
  FDRE \cctr_rnd_reg[12] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[12]),
        .Q(debug[18]),
        .R(srst));
  FDRE \cctr_rnd_reg[13] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[13]),
        .Q(debug[19]),
        .R(srst));
  FDRE \cctr_rnd_reg[14] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[14]),
        .Q(debug[20]),
        .R(srst));
  FDRE \cctr_rnd_reg[15] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[15]),
        .Q(debug[21]),
        .R(srst));
  FDRE \cctr_rnd_reg[1] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[1]),
        .Q(debug[7]),
        .R(srst));
  FDRE \cctr_rnd_reg[2] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[2]),
        .Q(debug[8]),
        .R(srst));
  FDRE \cctr_rnd_reg[3] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[3]),
        .Q(debug[9]),
        .R(srst));
  FDRE \cctr_rnd_reg[4] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[4]),
        .Q(debug[10]),
        .R(srst));
  FDRE \cctr_rnd_reg[5] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[5]),
        .Q(debug[11]),
        .R(srst));
  FDRE \cctr_rnd_reg[6] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[6]),
        .Q(debug[12]),
        .R(srst));
  FDRE \cctr_rnd_reg[7] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[7]),
        .Q(debug[13]),
        .R(srst));
  FDRE \cctr_rnd_reg[8] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[8]),
        .Q(debug[14]),
        .R(srst));
  FDRE \cctr_rnd_reg[9] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[9]),
        .Q(debug[15]),
        .R(srst));
  design_1_pdts_endpoint_stdlog_0_0_pdts_chklock chk
       (.D({chk_n_2,chk_n_3,chk_n_4}),
        .\FSM_onehot_state_reg[3] (sync_sclk_n_5),
        .\FSM_onehot_state_reg[7] (\FSM_onehot_state[7]_i_2_n_0 ),
        .\FSM_onehot_state_reg[8] (chk_n_5),
        .Q({\FSM_onehot_state_reg_n_0_[10] ,p_0_in,\FSM_onehot_state_reg_n_0_[8] ,p_0_in5_in,Q[1],\FSM_onehot_state_reg_n_0_[2] ,\FSM_onehot_state_reg_n_0_[1] ,Q[0]}),
        .cdr_lol(cdr_lol),
        .cdr_los(cdr_los),
        .\ctrs_reg[0][6]_0 (chk_n_1),
        .debug(debug[1]),
        .pll_locked(pll_locked),
        .sclk(sclk),
        .sfp_los(sfp_los),
        .srst(srst));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \debug[1]_INST_0 
       (.I0(\debug[1]_INST_0_i_1_n_0 ),
        .I1(debug[7]),
        .I2(debug[6]),
        .I3(debug[9]),
        .I4(debug[8]),
        .I5(\debug[1]_INST_0_i_2_n_0 ),
        .O(debug[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \debug[1]_INST_0_i_1 
       (.I0(debug[18]),
        .I1(debug[19]),
        .I2(debug[16]),
        .I3(debug[17]),
        .I4(debug[21]),
        .I5(debug[20]),
        .O(\debug[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \debug[1]_INST_0_i_2 
       (.I0(debug[12]),
        .I1(debug[13]),
        .I2(debug[11]),
        .I3(debug[10]),
        .I4(debug[15]),
        .I5(debug[14]),
        .O(\debug[1]_INST_0_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__28_carry
       (.CI(cctr_reg[0]),
        .CI_TOP(1'b0),
        .CO({plusOp__28_carry_n_0,plusOp__28_carry_n_1,plusOp__28_carry_n_2,plusOp__28_carry_n_3,plusOp__28_carry_n_4,plusOp__28_carry_n_5,plusOp__28_carry_n_6,plusOp__28_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__0[8:1]),
        .S(cctr_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__28_carry__0
       (.CI(plusOp__28_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp__28_carry__0_CO_UNCONNECTED[7:6],plusOp__28_carry__0_n_2,plusOp__28_carry__0_n_3,plusOp__28_carry__0_n_4,plusOp__28_carry__0_n_5,plusOp__28_carry__0_n_6,plusOp__28_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp__28_carry__0_O_UNCONNECTED[7],plusOp__0[15:9]}),
        .S({1'b0,cctr_reg[15:9]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry
       (.CI(sctr_reg[0]),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:1]),
        .S(sctr_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[7:6],plusOp_carry__0_n_2,plusOp_carry__0_n_3,plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[7],plusOp[15:9]}),
        .S({1'b0,sctr_reg[15:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \rctr[0]_i_1 
       (.I0(\rctr_reg_n_0_[0] ),
        .O(plusOp__7[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rctr[1]_i_1 
       (.I0(\rctr_reg_n_0_[0] ),
        .I1(\rctr_reg_n_0_[1] ),
        .O(plusOp__7[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rctr[2]_i_1 
       (.I0(\rctr_reg_n_0_[0] ),
        .I1(\rctr_reg_n_0_[1] ),
        .I2(\rctr_reg_n_0_[2] ),
        .O(plusOp__7[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rctr[3]_i_1 
       (.I0(\rctr_reg_n_0_[1] ),
        .I1(\rctr_reg_n_0_[0] ),
        .I2(\rctr_reg_n_0_[2] ),
        .I3(\rctr_reg_n_0_[3] ),
        .O(plusOp__7[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rctr[4]_i_1 
       (.I0(\rctr_reg_n_0_[2] ),
        .I1(\rctr_reg_n_0_[0] ),
        .I2(\rctr_reg_n_0_[1] ),
        .I3(\rctr_reg_n_0_[3] ),
        .I4(\rctr_reg_n_0_[4] ),
        .O(plusOp__7[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rctr[5]_i_1 
       (.I0(\rctr_reg_n_0_[3] ),
        .I1(\rctr_reg_n_0_[1] ),
        .I2(\rctr_reg_n_0_[0] ),
        .I3(\rctr_reg_n_0_[2] ),
        .I4(\rctr_reg_n_0_[4] ),
        .I5(\rctr_reg_n_0_[5] ),
        .O(plusOp__7[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \rctr[6]_i_1 
       (.I0(\rctr[7]_i_3_n_0 ),
        .I1(\rctr_reg_n_0_[6] ),
        .O(plusOp__7[6]));
  LUT3 #(
    .INIT(8'h78)) 
    \rctr[7]_i_2 
       (.I0(\rctr[7]_i_3_n_0 ),
        .I1(\rctr_reg_n_0_[6] ),
        .I2(rctr_reg),
        .O(plusOp__7[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rctr[7]_i_3 
       (.I0(\rctr_reg_n_0_[5] ),
        .I1(\rctr_reg_n_0_[3] ),
        .I2(\rctr_reg_n_0_[1] ),
        .I3(\rctr_reg_n_0_[0] ),
        .I4(\rctr_reg_n_0_[2] ),
        .I5(\rctr_reg_n_0_[4] ),
        .O(\rctr[7]_i_3_n_0 ));
  FDRE \rctr_reg[0] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__7[0]),
        .Q(\rctr_reg_n_0_[0] ),
        .R(clear));
  FDRE \rctr_reg[1] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__7[1]),
        .Q(\rctr_reg_n_0_[1] ),
        .R(clear));
  FDRE \rctr_reg[2] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__7[2]),
        .Q(\rctr_reg_n_0_[2] ),
        .R(clear));
  FDRE \rctr_reg[3] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__7[3]),
        .Q(\rctr_reg_n_0_[3] ),
        .R(clear));
  FDRE \rctr_reg[4] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__7[4]),
        .Q(\rctr_reg_n_0_[4] ),
        .R(clear));
  FDRE \rctr_reg[5] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__7[5]),
        .Q(\rctr_reg_n_0_[5] ),
        .R(clear));
  FDRE \rctr_reg[6] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__7[6]),
        .Q(\rctr_reg_n_0_[6] ),
        .R(clear));
  FDSE \rctr_reg[7] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__7[7]),
        .Q(rctr_reg),
        .S(clear));
  FDRE rx_err_f_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx_err_f_reg_0),
        .Q(D),
        .R(out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \sctr[0]_i_1 
       (.I0(sctr_reg[0]),
        .O(plusOp[0]));
  FDRE \sctr_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(sctr_reg[0]),
        .R(srst));
  FDRE \sctr_reg[10] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(sctr_reg[10]),
        .R(srst));
  FDRE \sctr_reg[11] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[11]),
        .Q(sctr_reg[11]),
        .R(srst));
  FDRE \sctr_reg[12] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[12]),
        .Q(sctr_reg[12]),
        .R(srst));
  FDRE \sctr_reg[13] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[13]),
        .Q(sctr_reg[13]),
        .R(srst));
  FDRE \sctr_reg[14] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[14]),
        .Q(sctr_reg[14]),
        .R(srst));
  FDRE \sctr_reg[15] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[15]),
        .Q(sctr_reg[15]),
        .R(srst));
  FDRE \sctr_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(sctr_reg[1]),
        .R(srst));
  FDRE \sctr_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(sctr_reg[2]),
        .R(srst));
  FDRE \sctr_reg[3] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(sctr_reg[3]),
        .R(srst));
  FDRE \sctr_reg[4] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(sctr_reg[4]),
        .R(srst));
  FDRE \sctr_reg[5] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(sctr_reg[5]),
        .R(srst));
  FDRE \sctr_reg[6] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(sctr_reg[6]),
        .R(srst));
  FDRE \sctr_reg[7] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(sctr_reg[7]),
        .R(srst));
  FDRE \sctr_reg[8] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(sctr_reg[8]),
        .R(srst));
  FDRE \sctr_reg[9] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(sctr_reg[9]),
        .R(srst));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[0]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(p_1_in),
        .I3(p_0_in5_in),
        .O(stat[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \stat[1]_INST_0 
       (.I0(Q[1]),
        .I1(p_0_in),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(p_1_in7_in),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(stat[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \stat[2]_INST_0 
       (.I0(p_0_in5_in),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(p_1_in7_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(stat[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    \stat[3]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(Q[0]),
        .O(stat[3]));
  design_1_pdts_endpoint_stdlog_0_0_pdts_synchro sync_c
       (.SR(clear),
        .debug(debug[1]),
        .rec_clk(rec_clk),
        .sclk(sclk));
  design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0 sync_clk
       (.Q({\FSM_onehot_state_reg_n_0_[10] ,p_0_in,\FSM_onehot_state_reg_n_0_[8] ,p_1_in,p_0_in5_in,p_1_in7_in,Q[1]}),
        .clk(clk),
        .out(out),
        .q(q),
        .sclk(sclk),
        .tx_en(tx_en),
        .txd(txd));
  design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0_0 sync_sclk
       (.D({sync_sclk_n_6,sync_sclk_n_7,sync_sclk_n_8,sync_sclk_n_9}),
        .E(sync_sclk_n_4),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state[0]_i_3_n_0 ),
        .\FSM_onehot_state_reg[0]_0 (chk_n_5),
        .\FSM_onehot_state_reg[0]_1 (\FSM_onehot_state[0]_i_7_n_0 ),
        .\FSM_onehot_state_reg[0]_2 (\FSM_onehot_state[0]_i_8_n_0 ),
        .\FSM_onehot_state_reg[5] (chk_n_1),
        .Q({\FSM_onehot_state_reg_n_0_[8] ,p_1_in,p_0_in5_in,Q[1],\FSM_onehot_state_reg_n_0_[2] ,\FSM_onehot_state_reg_n_0_[1] ,Q[0]}),
        .adj_req(adj_req),
        .clk(clk),
        .\da_reg[3]_0 ({\da_reg[3] ,D,\da_reg[1] }),
        .debug(debug[5:2]),
        .\q_reg[1]_0 (sync_sclk_n_5),
        .sclk(sclk));
  design_1_pdts_endpoint_stdlog_0_0_pdts_synchro_1 sync_t
       (.E(cctr0),
        .Q(rctr_reg),
        .out(t),
        .rec_clk(rec_clk),
        .sclk(sclk),
        .td(td));
  FDRE td_reg
       (.C(sclk),
        .CE(1'b1),
        .D(t),
        .Q(td),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_idle_gen" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_idle_gen
   (\acmdw[last] ,
    \acmd_out[d]1 ,
    Q,
    out,
    E,
    clk);
  output \acmdw[last] ;
  output \acmd_out[d]1 ;
  output [7:0]Q;
  input [0:0]out;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire [7:0]Q;
  wire \acmd_out[d]1 ;
  wire \acmdw[last] ;
  wire clk;
  wire \ctr[5]_i_2_n_0 ;
  wire \ctr[7]_i_2__0_n_0 ;
  wire [7:0]ctr_reg;
  wire [0:0]out;
  wire [7:0]p_0_in;
  wire [0:0]p_0_out;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(ctr_reg[4]),
        .I1(ctr_reg[5]),
        .I2(ctr_reg[6]),
        .I3(ctr_reg[7]),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\acmdw[last] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(ctr_reg[1]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[3]),
        .I3(ctr_reg[2]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctr[0]_i_1 
       (.I0(\acmdw[last] ),
        .I1(ctr_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \ctr[1]_i_1 
       (.I0(\acmdw[last] ),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \ctr[2]_i_1 
       (.I0(\acmdw[last] ),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \ctr[3]_i_1 
       (.I0(\acmdw[last] ),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[0]),
        .I3(ctr_reg[2]),
        .I4(ctr_reg[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \ctr[4]_i_1 
       (.I0(ctr_reg[3]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[0]),
        .I3(ctr_reg[2]),
        .I4(\acmdw[last] ),
        .I5(ctr_reg[4]),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'h12)) 
    \ctr[5]_i_1 
       (.I0(\ctr[5]_i_2_n_0 ),
        .I1(\acmdw[last] ),
        .I2(ctr_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \ctr[5]_i_2 
       (.I0(ctr_reg[4]),
        .I1(ctr_reg[2]),
        .I2(ctr_reg[0]),
        .I3(ctr_reg[1]),
        .I4(ctr_reg[3]),
        .O(\ctr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \ctr[6]_i_1 
       (.I0(\ctr[7]_i_2__0_n_0 ),
        .I1(\acmdw[last] ),
        .I2(ctr_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \ctr[7]_i_1__0 
       (.I0(ctr_reg[6]),
        .I1(\ctr[7]_i_2__0_n_0 ),
        .I2(\acmdw[last] ),
        .I3(ctr_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ctr[7]_i_2__0 
       (.I0(ctr_reg[5]),
        .I1(ctr_reg[3]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[0]),
        .I4(ctr_reg[2]),
        .I5(ctr_reg[4]),
        .O(\ctr[7]_i_2__0_n_0 ));
  FDRE \ctr_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[0]),
        .Q(ctr_reg[0]),
        .R(out));
  FDRE \ctr_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(ctr_reg[1]),
        .R(out));
  FDRE \ctr_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(ctr_reg[2]),
        .R(out));
  FDRE \ctr_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(ctr_reg[3]),
        .R(out));
  FDRE \ctr_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(ctr_reg[4]),
        .R(out));
  FDRE \ctr_reg[5] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[5]),
        .Q(ctr_reg[5]),
        .R(out));
  FDRE \ctr_reg[6] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[6]),
        .Q(ctr_reg[6]),
        .R(out));
  FDRE \ctr_reg[7] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[7]),
        .Q(ctr_reg[7]),
        .R(out));
  LUT4 #(
    .INIT(16'h6996)) 
    \r[0]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[7]),
        .I3(Q[3]),
        .O(p_0_out));
  FDSE \r_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_0_out),
        .Q(Q[0]),
        .S(out));
  FDRE \r_reg[1] 
       (.C(clk),
        .CE(E),
        .D(Q[0]),
        .Q(Q[1]),
        .R(out));
  FDRE \r_reg[2] 
       (.C(clk),
        .CE(E),
        .D(Q[1]),
        .Q(Q[2]),
        .R(out));
  FDRE \r_reg[3] 
       (.C(clk),
        .CE(E),
        .D(Q[2]),
        .Q(Q[3]),
        .R(out));
  FDRE \r_reg[4] 
       (.C(clk),
        .CE(E),
        .D(Q[3]),
        .Q(Q[4]),
        .R(out));
  FDRE \r_reg[5] 
       (.C(clk),
        .CE(E),
        .D(Q[4]),
        .Q(Q[5]),
        .R(out));
  FDRE \r_reg[6] 
       (.C(clk),
        .CE(E),
        .D(Q[5]),
        .Q(Q[6]),
        .R(out));
  FDRE \r_reg[7] 
       (.C(clk),
        .CE(E),
        .D(Q[6]),
        .Q(Q[7]),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    txphy_i_21
       (.I0(ctr_reg[4]),
        .I1(ctr_reg[5]),
        .I2(ctr_reg[6]),
        .I3(ctr_reg[7]),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\acmd_out[d]1 ));
endmodule

(* ORIG_REF_NAME = "pdts_rx" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_rx
   (\err_reg[0]_0 ,
    sync_stb,
    s_stb,
    active_reg,
    s_first,
    \q_reg[1] ,
    sync_first,
    slen,
    E,
    SR,
    a_stb,
    a_first,
    clk,
    D,
    stbo,
    k,
    active,
    q,
    src_reg,
    out,
    addr,
    tgrp);
  output \err_reg[0]_0 ;
  output sync_stb;
  output s_stb;
  output active_reg;
  output s_first;
  output \q_reg[1] ;
  output sync_first;
  output [0:0]slen;
  output [0:0]E;
  output [0:0]SR;
  output a_stb;
  output a_first;
  input clk;
  input [1:0]D;
  input stbo;
  input k;
  input active;
  input [7:0]q;
  input src_reg;
  input [0:0]out;
  input [7:0]addr;
  input [1:0]tgrp;

  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]SR;
  wire a_first;
  wire a_match_i_1_n_0;
  wire a_match_i_2_n_0;
  wire a_match_i_3_n_0;
  wire a_match_i_4_n_0;
  wire a_match_i_5_n_0;
  wire a_match_i_6_n_0;
  wire a_match_i_7_n_0;
  wire a_match_i_8_n_0;
  wire a_match_reg_n_0;
  wire a_stb;
  wire active;
  wire active_reg;
  wire [4:0]actr_reg;
  wire [7:0]addr;
  wire \c[3]_i_5_n_0 ;
  wire cksum_n_0;
  wire clk;
  wire cstb;
  wire [2:0]err;
  wire err114_out__4;
  wire err116_out__2;
  wire err1__6;
  wire \err[1]_i_3_n_0 ;
  wire \err[2]_i_4_n_0 ;
  wire \err[2]_i_5_n_0 ;
  wire [2:0]err_c;
  wire \err_reg[0]_0 ;
  wire issue;
  wire k;
  wire ka;
  wire ks;
  wire [0:0]out;
  wire pend;
  wire pend0;
  wire pend1__0;
  wire pend_f;
  wire pend_f0;
  wire pend_f_i_2_n_0;
  wire [4:1]plusOp__2;
  wire [4:0]plusOp__3;
  wire [7:0]q;
  wire \q_reg[1] ;
  wire s_first;
  wire s_match;
  wire s_match_r_reg_n_0;
  wire s_stb;
  wire sctr0;
  wire \sctr[0]_i_1__0_n_0 ;
  wire [4:0]sctr_reg;
  wire [0:0]slen;
  wire [3:0]slen_r;
  wire \slen_r[3]_i_1_n_0 ;
  wire \slen_r[3]_i_3_n_0 ;
  wire src_reg;
  wire [1:0]state;
  wire state32_in;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[1]_i_7_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire stbo;
  wire sync_first;
  wire sync_stb;
  wire sync_stb_INST_0_i_3_n_0;
  wire [1:0]tgrp;
  wire [3:0]ts;
  wire \ts[3]_i_1_n_0 ;
  wire \vctr[0]_i_1_n_0 ;
  wire \vctr[1]_i_1_n_0 ;
  wire \vctr[2]_i_1_n_0 ;
  wire \vctr[3]_i_1_n_0 ;
  wire \vctr_reg_n_0_[0] ;
  wire \vctr_reg_n_0_[1] ;
  wire \vctr_reg_n_0_[2] ;
  wire \vctr_reg_n_0_[3] ;

  LUT6 #(
    .INIT(64'h00000000BABABAAA)) 
    a_match_i_1
       (.I0(a_match_reg_n_0),
        .I1(a_match_i_2_n_0),
        .I2(a_match_i_3_n_0),
        .I3(a_match_i_4_n_0),
        .I4(a_match_i_5_n_0),
        .I5(ka),
        .O(a_match_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    a_match_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(a_match_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    a_match_i_3
       (.I0(stbo),
        .I1(actr_reg[2]),
        .I2(actr_reg[0]),
        .I3(actr_reg[1]),
        .I4(actr_reg[4]),
        .I5(actr_reg[3]),
        .O(a_match_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000041000A4B)) 
    a_match_i_4
       (.I0(actr_reg[0]),
        .I1(addr[6]),
        .I2(q[6]),
        .I3(addr[7]),
        .I4(q[7]),
        .I5(a_match_i_6_n_0),
        .O(a_match_i_4_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    a_match_i_5
       (.I0(q[6]),
        .I1(q[7]),
        .I2(q[4]),
        .I3(q[5]),
        .I4(slen),
        .O(a_match_i_5_n_0));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFBBEFBA)) 
    a_match_i_6
       (.I0(a_match_i_7_n_0),
        .I1(actr_reg[0]),
        .I2(addr[2]),
        .I3(q[2]),
        .I4(addr[5]),
        .I5(q[5]),
        .O(a_match_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFF5B4)) 
    a_match_i_7
       (.I0(actr_reg[0]),
        .I1(addr[0]),
        .I2(q[0]),
        .I3(addr[1]),
        .I4(q[1]),
        .I5(a_match_i_8_n_0),
        .O(a_match_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFAFA6FF6)) 
    a_match_i_8
       (.I0(q[4]),
        .I1(addr[4]),
        .I2(q[3]),
        .I3(addr[3]),
        .I4(actr_reg[0]),
        .O(a_match_i_8_n_0));
  FDRE a_match_reg
       (.C(clk),
        .CE(1'b1),
        .D(a_match_i_1_n_0),
        .Q(a_match_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    active_i_3
       (.I0(s_stb),
        .I1(active),
        .I2(q[0]),
        .I3(q[1]),
        .I4(src_reg),
        .I5(s_first),
        .O(active_reg));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \actr[0]_i_1 
       (.I0(actr_reg[0]),
        .O(plusOp__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \actr[1]_i_1 
       (.I0(actr_reg[0]),
        .I1(actr_reg[1]),
        .O(plusOp__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \actr[2]_i_1 
       (.I0(actr_reg[0]),
        .I1(actr_reg[1]),
        .I2(actr_reg[2]),
        .O(plusOp__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \actr[3]_i_1 
       (.I0(actr_reg[1]),
        .I1(actr_reg[0]),
        .I2(actr_reg[2]),
        .I3(actr_reg[3]),
        .O(plusOp__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \actr[4]_i_1 
       (.I0(actr_reg[2]),
        .I1(actr_reg[0]),
        .I2(actr_reg[1]),
        .I3(actr_reg[3]),
        .I4(actr_reg[4]),
        .O(plusOp__3[4]));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[0] 
       (.C(clk),
        .CE(cstb),
        .D(plusOp__3[0]),
        .Q(actr_reg[0]),
        .R(ka));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[1] 
       (.C(clk),
        .CE(cstb),
        .D(plusOp__3[1]),
        .Q(actr_reg[1]),
        .R(ka));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[2] 
       (.C(clk),
        .CE(cstb),
        .D(plusOp__3[2]),
        .Q(actr_reg[2]),
        .R(ka));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[3] 
       (.C(clk),
        .CE(cstb),
        .D(plusOp__3[3]),
        .Q(actr_reg[3]),
        .R(ka));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[4] 
       (.C(clk),
        .CE(cstb),
        .D(plusOp__3[4]),
        .Q(actr_reg[4]),
        .R(ka));
  LUT3 #(
    .INIT(8'hF8)) 
    \c[3]_i_1 
       (.I0(a_stb),
        .I1(a_first),
        .I2(out),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \c[3]_i_2 
       (.I0(\c[3]_i_5_n_0 ),
        .I1(actr_reg[2]),
        .I2(actr_reg[3]),
        .I3(actr_reg[4]),
        .I4(actr_reg[1]),
        .O(a_stb));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \c[3]_i_4 
       (.I0(actr_reg[3]),
        .I1(actr_reg[4]),
        .I2(actr_reg[2]),
        .I3(actr_reg[1]),
        .I4(actr_reg[0]),
        .I5(\c[3]_i_5_n_0 ),
        .O(a_first));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \c[3]_i_5 
       (.I0(a_match_reg_n_0),
        .I1(stbo),
        .I2(k),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\c[3]_i_5_n_0 ));
  design_1_pdts_endpoint_stdlog_0_0_pdts_cksum_2 cksum
       (.D(state),
        .E(cksum_n_0),
        .Q({\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .clk(clk),
        .err114_out__4(err114_out__4),
        .err116_out__2(err116_out__2),
        .err1__6(err1__6),
        .k(k),
        .ka(ka),
        .ks(ks),
        .q(q),
        .\state_reg[0] (err_c[0]),
        .\state_reg[0]_0 (\state[1]_i_3_n_0 ),
        .\state_reg[0]_1 (\state[1]_i_4_n_0 ),
        .\state_reg[0]_2 (\state[1]_i_6_n_0 ),
        .\state_reg[1] (cstb),
        .stbo(stbo));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000060)) 
    \err[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(err1__6),
        .I3(err114_out__4),
        .I4(err116_out__2),
        .O(err_c[1]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \err[1]_i_2 
       (.I0(\err[1]_i_3_n_0 ),
        .I1(actr_reg[4]),
        .I2(actr_reg[3]),
        .I3(sctr_reg[4]),
        .I4(sctr_reg[3]),
        .O(err1__6));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \err[1]_i_3 
       (.I0(sctr_reg[4]),
        .I1(sctr_reg[1]),
        .I2(sctr_reg[2]),
        .I3(actr_reg[4]),
        .I4(actr_reg[1]),
        .I5(actr_reg[2]),
        .O(\err[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \err[2]_i_1 
       (.I0(err116_out__2),
        .I1(err114_out__4),
        .O(err_c[2]));
  LUT6 #(
    .INIT(64'h00000E0000000000)) 
    \err[2]_i_2 
       (.I0(ka),
        .I1(ks),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(sctr_reg[4]),
        .I5(\err[2]_i_4_n_0 ),
        .O(err116_out__2));
  LUT6 #(
    .INIT(64'h0000001F00000000)) 
    \err[2]_i_3 
       (.I0(actr_reg[1]),
        .I1(actr_reg[0]),
        .I2(actr_reg[2]),
        .I3(a_match_i_2_n_0),
        .I4(\err[2]_i_5_n_0 ),
        .I5(ka),
        .O(err114_out__4));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h4444444D)) 
    \err[2]_i_4 
       (.I0(sctr_reg[3]),
        .I1(slen),
        .I2(sctr_reg[1]),
        .I3(sctr_reg[2]),
        .I4(sctr_reg[0]),
        .O(\err[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \err[2]_i_5 
       (.I0(actr_reg[3]),
        .I1(actr_reg[4]),
        .O(\err[2]_i_5_n_0 ));
  FDRE \err_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(err_c[0]),
        .Q(err[0]),
        .R(1'b0));
  FDRE \err_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(err_c[1]),
        .Q(err[1]),
        .R(1'b0));
  FDRE \err_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(err_c[2]),
        .Q(err[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88888888A8888888)) 
    pend_f_i_1
       (.I0(pend_f_i_2_n_0),
        .I1(pend_f),
        .I2(sctr0),
        .I3(sctr_reg[0]),
        .I4(s_match_r_reg_n_0),
        .I5(state32_in),
        .O(pend_f0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h1)) 
    pend_f_i_2
       (.I0(issue),
        .I1(out),
        .O(pend_f_i_2_n_0));
  FDRE pend_f_reg
       (.C(clk),
        .CE(1'b1),
        .D(pend_f0),
        .Q(pend_f),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h11101010)) 
    pend_i_1
       (.I0(out),
        .I1(issue),
        .I2(pend),
        .I3(sctr0),
        .I4(s_match_r_reg_n_0),
        .O(pend0));
  FDRE pend_reg
       (.C(clk),
        .CE(1'b1),
        .D(pend0),
        .Q(pend),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \q[15]_i_1 
       (.I0(\c[3]_i_5_n_0 ),
        .I1(actr_reg[0]),
        .I2(actr_reg[1]),
        .I3(actr_reg[2]),
        .I4(actr_reg[4]),
        .I5(actr_reg[3]),
        .O(E));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_err_f_i_1
       (.I0(err[0]),
        .I1(err[2]),
        .I2(err[1]),
        .I3(D[0]),
        .O(\err_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    s_match_r_i_1
       (.I0(q[6]),
        .I1(q[7]),
        .I2(tgrp[1]),
        .I3(q[4]),
        .I4(tgrp[0]),
        .I5(q[5]),
        .O(s_match));
  FDRE s_match_r_reg
       (.C(clk),
        .CE(\ts[3]_i_1_n_0 ),
        .D(s_match),
        .Q(s_match_r_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sctr[0]_i_1__0 
       (.I0(sctr_reg[0]),
        .O(\sctr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sctr[1]_i_1 
       (.I0(sctr_reg[0]),
        .I1(sctr_reg[1]),
        .O(plusOp__2[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \sctr[2]_i_1 
       (.I0(sctr_reg[0]),
        .I1(sctr_reg[1]),
        .I2(sctr_reg[2]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sctr[3]_i_1 
       (.I0(sctr_reg[1]),
        .I1(sctr_reg[0]),
        .I2(sctr_reg[2]),
        .I3(sctr_reg[3]),
        .O(plusOp__2[3]));
  LUT3 #(
    .INIT(8'h40)) 
    \sctr[4]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(stbo),
        .O(sctr0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sctr[4]_i_3 
       (.I0(sctr_reg[2]),
        .I1(sctr_reg[0]),
        .I2(sctr_reg[1]),
        .I3(sctr_reg[3]),
        .I4(sctr_reg[4]),
        .O(plusOp__2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \sctr_reg[0] 
       (.C(clk),
        .CE(sctr0),
        .D(\sctr[0]_i_1__0_n_0 ),
        .Q(sctr_reg[0]),
        .R(ks));
  FDRE #(
    .INIT(1'b0)) 
    \sctr_reg[1] 
       (.C(clk),
        .CE(sctr0),
        .D(plusOp__2[1]),
        .Q(sctr_reg[1]),
        .R(ks));
  FDRE #(
    .INIT(1'b0)) 
    \sctr_reg[2] 
       (.C(clk),
        .CE(sctr0),
        .D(plusOp__2[2]),
        .Q(sctr_reg[2]),
        .R(ks));
  FDRE #(
    .INIT(1'b0)) 
    \sctr_reg[3] 
       (.C(clk),
        .CE(sctr0),
        .D(plusOp__2[3]),
        .Q(sctr_reg[3]),
        .R(ks));
  FDRE #(
    .INIT(1'b0)) 
    \sctr_reg[4] 
       (.C(clk),
        .CE(sctr0),
        .D(plusOp__2[4]),
        .Q(sctr_reg[4]),
        .R(ks));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slen_r[3]_i_1 
       (.I0(\slen_r[3]_i_3_n_0 ),
        .I1(sctr_reg[4]),
        .I2(sctr_reg[1]),
        .I3(sctr_reg[2]),
        .I4(sctr_reg[3]),
        .I5(sctr_reg[0]),
        .O(\slen_r[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \slen_r[3]_i_2 
       (.I0(q[3]),
        .I1(q[2]),
        .I2(q[0]),
        .I3(q[1]),
        .O(slen));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \slen_r[3]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\slen_r[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slen_r_reg[0] 
       (.C(clk),
        .CE(\slen_r[3]_i_1_n_0 ),
        .D(1'b1),
        .Q(slen_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \slen_r_reg[3] 
       (.C(clk),
        .CE(\slen_r[3]_i_1_n_0 ),
        .D(slen),
        .Q(slen_r[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \state[1]_i_3 
       (.I0(stbo),
        .I1(\state[1]_i_7_n_0 ),
        .I2(sctr_reg[4]),
        .I3(sctr_reg[3]),
        .I4(sctr_reg[2]),
        .I5(sctr_reg[1]),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \state[1]_i_4 
       (.I0(slen),
        .I1(stbo),
        .I2(state32_in),
        .I3(sctr_reg[0]),
        .O(\state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \state[1]_i_6 
       (.I0(ks),
        .I1(ka),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \state[1]_i_7 
       (.I0(sctr_reg[3]),
        .I1(slen_r[3]),
        .I2(sctr_reg[0]),
        .I3(slen_r[0]),
        .O(\state[1]_i_7_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(cksum_n_0),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(out));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(cksum_n_0),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sync_first_INST_0
       (.I0(s_first),
        .I1(D[1]),
        .O(sync_first));
  LUT6 #(
    .INIT(64'h88888888A8888888)) 
    sync_first_INST_0_i_1
       (.I0(issue),
        .I1(pend_f),
        .I2(sctr0),
        .I3(sctr_reg[0]),
        .I4(s_match_r_reg_n_0),
        .I5(state32_in),
        .O(s_first));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sync_first_INST_0_i_2
       (.I0(sctr_reg[1]),
        .I1(sctr_reg[2]),
        .I2(sctr_reg[3]),
        .I3(sctr_reg[4]),
        .O(state32_in));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sync_stb_INST_0
       (.I0(s_stb),
        .I1(D[1]),
        .O(sync_stb));
  LUT6 #(
    .INIT(64'h8888A88888888888)) 
    sync_stb_INST_0_i_1
       (.I0(issue),
        .I1(pend),
        .I2(stbo),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(s_match_r_reg_n_0),
        .O(s_stb));
  LUT5 #(
    .INIT(32'h90090000)) 
    sync_stb_INST_0_i_2
       (.I0(ts[3]),
        .I1(\vctr_reg_n_0_[3] ),
        .I2(ts[2]),
        .I3(\vctr_reg_n_0_[2] ),
        .I4(sync_stb_INST_0_i_3_n_0),
        .O(issue));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    sync_stb_INST_0_i_3
       (.I0(\vctr_reg_n_0_[0] ),
        .I1(ts[0]),
        .I2(\vctr_reg_n_0_[1] ),
        .I3(ts[1]),
        .O(sync_stb_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \ts[3]_i_1 
       (.I0(sctr_reg[0]),
        .I1(\slen_r[3]_i_3_n_0 ),
        .I2(sctr_reg[4]),
        .I3(sctr_reg[3]),
        .I4(sctr_reg[2]),
        .I5(sctr_reg[1]),
        .O(\ts[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ts_reg[0] 
       (.C(clk),
        .CE(\ts[3]_i_1_n_0 ),
        .D(q[0]),
        .Q(ts[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_reg[1] 
       (.C(clk),
        .CE(\ts[3]_i_1_n_0 ),
        .D(q[1]),
        .Q(ts[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_reg[2] 
       (.C(clk),
        .CE(\ts[3]_i_1_n_0 ),
        .D(q[2]),
        .Q(ts[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_reg[3] 
       (.C(clk),
        .CE(\ts[3]_i_1_n_0 ),
        .D(q[3]),
        .Q(ts[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    txphy_i_24
       (.I0(src_reg),
        .I1(q[1]),
        .I2(q[0]),
        .I3(active),
        .I4(pend1__0),
        .I5(issue),
        .O(\q_reg[1] ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    txphy_i_33
       (.I0(s_match_r_reg_n_0),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(stbo),
        .I4(pend),
        .O(pend1__0));
  LUT1 #(
    .INIT(2'h1)) 
    \vctr[0]_i_1 
       (.I0(\vctr_reg_n_0_[0] ),
        .O(\vctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h3C2C)) 
    \vctr[1]_i_1 
       (.I0(\vctr_reg_n_0_[3] ),
        .I1(\vctr_reg_n_0_[1] ),
        .I2(\vctr_reg_n_0_[0] ),
        .I3(\vctr_reg_n_0_[2] ),
        .O(\vctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vctr[2]_i_1 
       (.I0(\vctr_reg_n_0_[1] ),
        .I1(\vctr_reg_n_0_[0] ),
        .I2(\vctr_reg_n_0_[2] ),
        .O(\vctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vctr[3]_i_1 
       (.I0(\vctr_reg_n_0_[3] ),
        .I1(\vctr_reg_n_0_[1] ),
        .I2(\vctr_reg_n_0_[0] ),
        .I3(\vctr_reg_n_0_[2] ),
        .O(\vctr[3]_i_1_n_0 ));
  FDSE \vctr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\vctr[0]_i_1_n_0 ),
        .Q(\vctr_reg_n_0_[0] ),
        .S(stbo));
  FDRE \vctr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\vctr[1]_i_1_n_0 ),
        .Q(\vctr_reg_n_0_[1] ),
        .R(stbo));
  FDRE \vctr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\vctr[2]_i_1_n_0 ),
        .Q(\vctr_reg_n_0_[2] ),
        .R(stbo));
  FDRE \vctr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\vctr[3]_i_1_n_0 ),
        .Q(\vctr_reg_n_0_[3] ),
        .R(stbo));
endmodule

(* ORIG_REF_NAME = "pdts_rx_div_mmcm" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_rx_div_mmcm
   (phase_locked,
    clk,
    rec_clk,
    phase_rst);
  output phase_locked;
  output clk;
  input rec_clk;
  input phase_rst;

  wire bufgcp_n_0;
  wire clk;
  wire clkfbin;
  wire clkfbout;
  wire clki;
  wire phase_locked;
  wire phase_rst;
  wire rec_clk;
  wire scpyi;
  wire NLW_mmcm_CDDCDONE_UNCONNECTED;
  wire NLW_mmcm_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_DRDY_UNCONNECTED;
  wire NLW_mmcm_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_DO_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    bufg0
       (.CE(1'b1),
        .I(clki),
        .O(clk));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    bufgcp
       (.CE(1'b1),
        .I(scpyi),
        .O(bufgcp_n_0));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    bufgfb
       (.CE(1'b1),
        .I(clkfbout),
        .O(clkfbin));
  (* XILINX_LEGACY_PRIM = "MMCME2_BASE" *) 
  (* box_type = "PRIMITIVE" *) 
  MMCME4_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(4.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(3.200000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE_F(20.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(4),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm
       (.CDDCDONE(NLW_mmcm_CDDCDONE_UNCONNECTED),
        .CDDCREQ(1'b0),
        .CLKFBIN(clkfbin),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(rec_clk),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clki),
        .CLKOUT0B(NLW_mmcm_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(scpyi),
        .CLKOUT1B(NLW_mmcm_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(phase_locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(phase_rst));
endmodule

(* ORIG_REF_NAME = "pdts_rx_phy" *) (* UPSTREAM_MODE = "FALSE" *) (* keep_hierarchy = "soft" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_rx_phy
   (rxclk,
    rxd,
    fdel,
    cdel,
    fdel_out,
    \edge ,
    clk,
    rec_rst,
    rst,
    phase_rst,
    phase_locked,
    aligned,
    rx_locked,
    q,
    k,
    stbo);
  input rxclk;
  input rxd;
  input [3:0]fdel;
  input [5:0]cdel;
  output [3:0]fdel_out;
  output \edge ;
  input clk;
  input rec_rst;
  input rst;
  output phase_rst;
  input phase_locked;
  output aligned;
  output rx_locked;
  output [7:0]q;
  output k;
  output stbo;

  wire \<const0> ;
  (* MARK_DEBUG *) wire aligned_i;
  wire aligned_i_i_1_n_0;
  (* MARK_DEBUG *) wire c;
  wire c_del_n_1;
  wire c_del_n_10;
  wire c_del_n_2;
  wire c_del_n_3;
  wire c_del_n_4;
  wire c_del_n_5;
  wire c_del_n_6;
  wire c_del_n_7;
  wire c_del_n_8;
  wire c_del_n_9;
  wire c_inferred_i_2_n_0;
  wire c_inferred_i_3_n_0;
  wire [7:0]cctr_reg;
  wire [5:0]cdel;
  (* MARK_DEBUG *) wire cerr;
  wire clk;
  (* MARK_DEBUG *) wire derr;
  wire ectr0;
  wire [7:0]ectr_reg;
  (* MARK_DEBUG *) wire eok;
  wire eok_inferred_i_2_n_0;
  wire [3:0]fdel;
  wire k;
  wire [1:0]kctr;
  wire kctr0;
  wire \kctr[0]_i_1_n_0 ;
  wire \kctr[1]_i_2_n_0 ;
  (* MARK_DEBUG *) wire kok;
  wire p_0_in__0;
  wire phase_locked;
  wire phase_rst;
  wire [7:0]plusOp;
  wire [7:0]plusOp__0;
  (* MARK_DEBUG *) wire pr;
  (* MARK_DEBUG *) wire prst;
  wire [7:0]q;
  wire rec_rst;
  wire rst;
  wire rxclk;
  wire rxd;
  wire \s[15]_0 ;
  wire [3:0]sctr;
  wire sctr0;
  wire \sctr_reg_n_0_[0] ;
  wire \sctr_reg_n_0_[1] ;
  wire \sctr_reg_n_0_[2] ;
  wire \sctr_reg_n_0_[3] ;
  wire sel;
  (* MARK_DEBUG *) wire stb;
  wire stbd;
  wire stbo;
  wire stbo0;
  (* MARK_DEBUG *) wire tc;
  wire tc_inferred_i_2_n_0;
  (* MARK_DEBUG *) wire [9:0]w;
  wire [9:0]wa;

  assign aligned = aligned_i;
  assign \edge  = \<const0> ;
  assign fdel_out[3] = \<const0> ;
  assign fdel_out[2] = \<const0> ;
  assign fdel_out[1] = \<const0> ;
  assign fdel_out[0] = \<const0> ;
  assign rx_locked = eok;
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'hB8)) 
    aligned_i_i_1
       (.I0(kok),
        .I1(tc),
        .I2(aligned_i),
        .O(aligned_i_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE aligned_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(aligned_i_i_1_n_0),
        .Q(aligned_i),
        .R(sctr0));
  (* DEL_RADIX = "6" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* WIDTH = "11" *) 
  design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized1 c_del
       (.a(cdel),
        .clk(clk),
        .d({stb,w}),
        .q({stbd,c_del_n_1,c_del_n_2,c_del_n_3,c_del_n_4,c_del_n_5,c_del_n_6,c_del_n_7,c_del_n_8,c_del_n_9,c_del_n_10}));
  LUT6 #(
    .INIT(64'h8080000000000300)) 
    c_inferred_i_1
       (.I0(c_inferred_i_2_n_0),
        .I1(w[3]),
        .I2(w[5]),
        .I3(c_inferred_i_3_n_0),
        .I4(w[2]),
        .I5(w[6]),
        .O(c));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    c_inferred_i_2
       (.I0(w[4]),
        .I1(w[1]),
        .I2(w[7]),
        .I3(w[9]),
        .I4(w[0]),
        .I5(w[8]),
        .O(c_inferred_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    c_inferred_i_3
       (.I0(w[4]),
        .I1(w[1]),
        .I2(w[7]),
        .I3(w[9]),
        .I4(w[0]),
        .I5(w[8]),
        .O(c_inferred_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cctr[0]_i_1 
       (.I0(cctr_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cctr[1]_i_1 
       (.I0(cctr_reg[0]),
        .I1(cctr_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cctr[2]_i_1 
       (.I0(cctr_reg[1]),
        .I1(cctr_reg[0]),
        .I2(cctr_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cctr[3]_i_1 
       (.I0(cctr_reg[2]),
        .I1(cctr_reg[0]),
        .I2(cctr_reg[1]),
        .I3(cctr_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cctr[4]_i_1 
       (.I0(cctr_reg[3]),
        .I1(cctr_reg[1]),
        .I2(cctr_reg[0]),
        .I3(cctr_reg[2]),
        .I4(cctr_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cctr[5]_i_1 
       (.I0(cctr_reg[4]),
        .I1(cctr_reg[2]),
        .I2(cctr_reg[0]),
        .I3(cctr_reg[1]),
        .I4(cctr_reg[3]),
        .I5(cctr_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cctr[6]_i_1 
       (.I0(tc_inferred_i_2_n_0),
        .I1(cctr_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \cctr[7]_i_1 
       (.I0(cctr_reg[6]),
        .I1(tc_inferred_i_2_n_0),
        .I2(cctr_reg[7]),
        .O(plusOp[7]));
  FDRE \cctr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(cctr_reg[0]),
        .R(sctr0));
  FDRE \cctr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(cctr_reg[1]),
        .R(sctr0));
  FDRE \cctr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(cctr_reg[2]),
        .R(sctr0));
  FDRE \cctr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(cctr_reg[3]),
        .R(sctr0));
  FDRE \cctr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(cctr_reg[4]),
        .R(sctr0));
  FDRE \cctr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(cctr_reg[5]),
        .R(sctr0));
  FDRE \cctr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(cctr_reg[6]),
        .R(sctr0));
  FDRE \cctr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(cctr_reg[7]),
        .R(sctr0));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_pdts_endpoint_stdlog_0_0_pdts_dec8b10b dec
       (.cerr(cerr),
        .clk(clk),
        .d({c_del_n_1,c_del_n_2,c_del_n_3,c_del_n_4,c_del_n_5,c_del_n_6,c_del_n_7,c_del_n_8,c_del_n_9,c_del_n_10}),
        .derr(derr),
        .en(stbd),
        .k(k),
        .q(q),
        .rst(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \ectr[0]_i_1 
       (.I0(ectr_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ectr[1]_i_1 
       (.I0(ectr_reg[0]),
        .I1(ectr_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ectr[2]_i_1 
       (.I0(ectr_reg[1]),
        .I1(ectr_reg[0]),
        .I2(ectr_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ectr[3]_i_1 
       (.I0(ectr_reg[2]),
        .I1(ectr_reg[0]),
        .I2(ectr_reg[1]),
        .I3(ectr_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ectr[4]_i_1 
       (.I0(ectr_reg[3]),
        .I1(ectr_reg[1]),
        .I2(ectr_reg[0]),
        .I3(ectr_reg[2]),
        .I4(ectr_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ectr[5]_i_1 
       (.I0(ectr_reg[4]),
        .I1(ectr_reg[2]),
        .I2(ectr_reg[0]),
        .I3(ectr_reg[1]),
        .I4(ectr_reg[3]),
        .I5(ectr_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \ectr[6]_i_1 
       (.I0(eok_inferred_i_2_n_0),
        .I1(ectr_reg[6]),
        .O(plusOp__0[6]));
  LUT3 #(
    .INIT(8'hFE)) 
    \ectr[7]_i_1 
       (.I0(cerr),
        .I1(derr),
        .I2(rst),
        .O(ectr0));
  LUT1 #(
    .INIT(2'h1)) 
    \ectr[7]_i_2 
       (.I0(eok),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \ectr[7]_i_3 
       (.I0(ectr_reg[6]),
        .I1(eok_inferred_i_2_n_0),
        .I2(ectr_reg[7]),
        .O(plusOp__0[7]));
  FDRE \ectr_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(plusOp__0[0]),
        .Q(ectr_reg[0]),
        .R(ectr0));
  FDRE \ectr_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(plusOp__0[1]),
        .Q(ectr_reg[1]),
        .R(ectr0));
  FDRE \ectr_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(plusOp__0[2]),
        .Q(ectr_reg[2]),
        .R(ectr0));
  FDRE \ectr_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(plusOp__0[3]),
        .Q(ectr_reg[3]),
        .R(ectr0));
  FDRE \ectr_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(plusOp__0[4]),
        .Q(ectr_reg[4]),
        .R(ectr0));
  FDRE \ectr_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(plusOp__0[5]),
        .Q(ectr_reg[5]),
        .R(ectr0));
  FDRE \ectr_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(plusOp__0[6]),
        .Q(ectr_reg[6]),
        .R(ectr0));
  FDRE \ectr_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(plusOp__0[7]),
        .Q(ectr_reg[7]),
        .R(ectr0));
  LUT3 #(
    .INIT(8'h08)) 
    eok_inferred_i_1
       (.I0(ectr_reg[7]),
        .I1(ectr_reg[6]),
        .I2(eok_inferred_i_2_n_0),
        .O(eok));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    eok_inferred_i_2
       (.I0(ectr_reg[4]),
        .I1(ectr_reg[2]),
        .I2(ectr_reg[0]),
        .I3(ectr_reg[1]),
        .I4(ectr_reg[3]),
        .I5(ectr_reg[5]),
        .O(eok_inferred_i_2_n_0));
  design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized0 f_del
       (.D(\s[15]_0 ),
        .fdel(fdel),
        .rxclk(rxclk),
        .rxd(rxd));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \kctr[0]_i_1 
       (.I0(kctr[0]),
        .O(\kctr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \kctr[1]_i_1 
       (.I0(stb),
        .I1(kok),
        .I2(c),
        .O(kctr0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \kctr[1]_i_2 
       (.I0(kctr[0]),
        .I1(kctr[1]),
        .O(\kctr[1]_i_2_n_0 ));
  FDRE \kctr_reg[0] 
       (.C(clk),
        .CE(kctr0),
        .D(\kctr[0]_i_1_n_0 ),
        .Q(kctr[0]),
        .R(sctr0));
  FDRE \kctr_reg[1] 
       (.C(clk),
        .CE(kctr0),
        .D(\kctr[1]_i_2_n_0 ),
        .Q(kctr[1]),
        .R(sctr0));
  LUT2 #(
    .INIT(4'h8)) 
    kok_inferred_i_1
       (.I0(kctr[0]),
        .I1(kctr[1]),
        .O(kok));
  LUT2 #(
    .INIT(4'h8)) 
    phase_rst_INST_0
       (.I0(pr),
        .I1(phase_locked),
        .O(phase_rst));
  LUT2 #(
    .INIT(4'h2)) 
    pr_inferred_i_1
       (.I0(tc),
        .I1(kok),
        .O(pr));
  LUT2 #(
    .INIT(4'hB)) 
    prst_inferred_i_1
       (.I0(rec_rst),
        .I1(phase_locked),
        .O(prst));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hD555)) 
    \sctr[0]_i_1 
       (.I0(\sctr_reg_n_0_[0] ),
        .I1(\sctr_reg_n_0_[2] ),
        .I2(\sctr_reg_n_0_[3] ),
        .I3(\sctr_reg_n_0_[1] ),
        .O(sctr[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5A4A)) 
    \sctr[1]_i_1 
       (.I0(\sctr_reg_n_0_[1] ),
        .I1(\sctr_reg_n_0_[2] ),
        .I2(\sctr_reg_n_0_[0] ),
        .I3(\sctr_reg_n_0_[3] ),
        .O(sctr[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \sctr[2]_i_1 
       (.I0(\sctr_reg_n_0_[1] ),
        .I1(\sctr_reg_n_0_[2] ),
        .I2(\sctr_reg_n_0_[0] ),
        .O(sctr[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \sctr[3]_i_1 
       (.I0(prst),
        .I1(pr),
        .O(sctr0));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \sctr[3]_i_2 
       (.I0(\sctr_reg_n_0_[0] ),
        .I1(\sctr_reg_n_0_[1] ),
        .I2(\sctr_reg_n_0_[2] ),
        .I3(c),
        .I4(\sctr_reg_n_0_[3] ),
        .O(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sctr[3]_i_3 
       (.I0(\sctr_reg_n_0_[1] ),
        .I1(\sctr_reg_n_0_[2] ),
        .I2(\sctr_reg_n_0_[0] ),
        .I3(\sctr_reg_n_0_[3] ),
        .O(sctr[3]));
  FDSE \sctr_reg[0] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(sctr[0]),
        .Q(\sctr_reg_n_0_[0] ),
        .S(sctr0));
  FDSE \sctr_reg[1] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(sctr[1]),
        .Q(\sctr_reg_n_0_[1] ),
        .S(sctr0));
  FDSE \sctr_reg[2] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(sctr[2]),
        .Q(\sctr_reg_n_0_[2] ),
        .S(sctr0));
  FDSE \sctr_reg[3] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(sctr[3]),
        .Q(\sctr_reg_n_0_[3] ),
        .S(sctr0));
  LUT4 #(
    .INIT(16'h0001)) 
    stb_inferred_i_1
       (.I0(\sctr_reg_n_0_[1] ),
        .I1(\sctr_reg_n_0_[0] ),
        .I2(\sctr_reg_n_0_[3] ),
        .I3(\sctr_reg_n_0_[2] ),
        .O(stb));
  LUT2 #(
    .INIT(4'h8)) 
    stbo_i_1
       (.I0(stbd),
        .I1(eok),
        .O(stbo0));
  FDRE stbo_reg
       (.C(clk),
        .CE(1'b1),
        .D(stbo0),
        .Q(stbo),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    tc_inferred_i_1
       (.I0(cctr_reg[7]),
        .I1(cctr_reg[6]),
        .I2(tc_inferred_i_2_n_0),
        .O(tc));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    tc_inferred_i_2
       (.I0(cctr_reg[4]),
        .I1(cctr_reg[2]),
        .I2(cctr_reg[0]),
        .I3(cctr_reg[1]),
        .I4(cctr_reg[3]),
        .I5(cctr_reg[5]),
        .O(tc_inferred_i_2_n_0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[0]),
        .Q(w[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[1]),
        .Q(w[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[2]),
        .Q(w[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[3]),
        .Q(w[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[4]),
        .Q(w[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[5]),
        .Q(w[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[6]),
        .Q(w[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[7]),
        .Q(w[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[8]),
        .Q(w[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[9]),
        .Q(w[9]),
        .R(1'b0));
  FDRE \wa_reg[0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[1]),
        .Q(wa[0]),
        .R(1'b0));
  FDRE \wa_reg[1] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[2]),
        .Q(wa[1]),
        .R(1'b0));
  FDRE \wa_reg[2] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[3]),
        .Q(wa[2]),
        .R(1'b0));
  FDRE \wa_reg[3] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[4]),
        .Q(wa[3]),
        .R(1'b0));
  FDRE \wa_reg[4] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[5]),
        .Q(wa[4]),
        .R(1'b0));
  FDRE \wa_reg[5] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[6]),
        .Q(wa[5]),
        .R(1'b0));
  FDRE \wa_reg[6] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[7]),
        .Q(wa[6]),
        .R(1'b0));
  FDRE \wa_reg[7] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[8]),
        .Q(wa[7]),
        .R(1'b0));
  FDRE \wa_reg[8] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[9]),
        .Q(wa[8]),
        .R(1'b0));
  FDRE \wa_reg[9] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s[15]_0 ),
        .Q(wa[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_scmd_merge" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_scmd_merge
   (active,
    src,
    active_reg_0,
    SR,
    \q_reg[2] ,
    Q,
    out,
    active0,
    clk,
    src_reg_0,
    q,
    stbo,
    E);
  output active;
  output src;
  output active_reg_0;
  output [0:0]SR;
  output \q_reg[2] ;
  output [7:0]Q;
  input [0:0]out;
  input active0;
  input clk;
  input src_reg_0;
  input [7:0]q;
  input stbo;
  input [0:0]E;

  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire active;
  wire active0;
  wire active_reg_0;
  wire clk;
  wire [0:0]out;
  wire [7:0]q;
  wire \q_reg[2] ;
  wire src;
  wire src_reg_0;
  wire stbo;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(active),
        .I1(q[0]),
        .I2(q[1]),
        .I3(q[3]),
        .I4(q[2]),
        .O(active_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    active_i_4
       (.I0(q[2]),
        .I1(q[3]),
        .O(\q_reg[2] ));
  FDRE active_reg
       (.C(clk),
        .CE(1'b1),
        .D(active0),
        .Q(active),
        .R(out));
  LUT3 #(
    .INIT(8'hF8)) 
    \spctr[3]_i_1 
       (.I0(stbo),
        .I1(src),
        .I2(out),
        .O(SR));
  FDRE src_reg
       (.C(clk),
        .CE(1'b1),
        .D(src_reg_0),
        .Q(src),
        .R(out));
  FDRE \w_reg[0] 
       (.C(clk),
        .CE(E),
        .D(q[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \w_reg[1] 
       (.C(clk),
        .CE(E),
        .D(q[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \w_reg[2] 
       (.C(clk),
        .CE(E),
        .D(q[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \w_reg[3] 
       (.C(clk),
        .CE(E),
        .D(q[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \w_reg[4] 
       (.C(clk),
        .CE(E),
        .D(q[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \w_reg[5] 
       (.C(clk),
        .CE(E),
        .D(q[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \w_reg[6] 
       (.C(clk),
        .CE(E),
        .D(q[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \w_reg[7] 
       (.C(clk),
        .CE(E),
        .D(q[7]),
        .Q(Q[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_synchro
   (SR,
    debug,
    sclk,
    rec_clk);
  output [0:0]SR;
  input [0:0]debug;
  input sclk;
  input rec_clk;

  wire [0:0]SR;
  wire da;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire db;
  wire [0:0]debug;
  (* async_reg = "yes" *) wire f_en;
  wire rec_clk;
  wire sclk;

  FDRE \da_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(debug),
        .Q(da),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[0] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(da),
        .Q(db),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[0] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(db),
        .Q(f_en),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \rctr[7]_i_1 
       (.I0(f_en),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_synchro_1
   (out,
    E,
    Q,
    rec_clk,
    sclk,
    td);
  output out;
  output [0:0]E;
  input [0:0]Q;
  input rec_clk;
  input sclk;
  input td;

  wire [0:0]E;
  wire [0:0]Q;
  wire da;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire db;
  (* async_reg = "yes" *) wire out;
  wire rec_clk;
  wire sclk;
  wire td;

  LUT2 #(
    .INIT(4'h2)) 
    \cctr[15]_i_2 
       (.I0(out),
        .I1(td),
        .O(E));
  FDRE \da_reg[0] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(Q),
        .Q(da),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(da),
        .Q(db),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(db),
        .Q(out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0
   (out,
    txd,
    Q,
    tx_en,
    q,
    sclk,
    clk);
  output [3:0]out;
  output txd;
  input [6:0]Q;
  input tx_en;
  input q;
  input sclk;
  input clk;

  wire [6:0]Q;
  wire clk;
  wire [3:0]da;
  wire \da[3]_i_2_n_0 ;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire [3:0]db;
  (* async_reg = "yes" *) wire [3:0]out;
  wire [3:1]p_2_out;
  wire p_4_in;
  wire q;
  wire sclk;
  wire tx_en;
  wire txd;

  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \da[0]_i_1 
       (.I0(Q[6]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(Q[0]),
        .O(p_4_in));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \da[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[6]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[4]),
        .O(p_2_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \da[2]_i_1 
       (.I0(Q[6]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(p_2_out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \da[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[6]),
        .I2(Q[1]),
        .I3(\da[3]_i_2_n_0 ),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(p_2_out[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \da[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[5]),
        .O(\da[3]_i_2_n_0 ));
  FDRE \da_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_4_in),
        .Q(da[0]),
        .R(1'b0));
  FDRE \da_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_2_out[1]),
        .Q(da[1]),
        .R(1'b0));
  FDRE \da_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_2_out[2]),
        .Q(da[2]),
        .R(1'b0));
  FDRE \da_reg[3] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_2_out[3]),
        .Q(da[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(da[0]),
        .Q(db[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(da[1]),
        .Q(db[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(da[2]),
        .Q(db[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(da[3]),
        .Q(db[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(db[0]),
        .Q(out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(db[1]),
        .Q(out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(db[2]),
        .Q(out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(db[3]),
        .Q(out[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    txd_INST_0
       (.I0(out[2]),
        .I1(tx_en),
        .I2(q),
        .O(txd));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0_0
   (debug,
    E,
    \q_reg[1]_0 ,
    D,
    Q,
    \FSM_onehot_state_reg[0] ,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    \FSM_onehot_state_reg[0]_2 ,
    \FSM_onehot_state_reg[5] ,
    adj_req,
    \da_reg[3]_0 ,
    clk,
    sclk);
  output [3:0]debug;
  output [0:0]E;
  output \q_reg[1]_0 ;
  output [3:0]D;
  input [6:0]Q;
  input \FSM_onehot_state_reg[0] ;
  input \FSM_onehot_state_reg[0]_0 ;
  input \FSM_onehot_state_reg[0]_1 ;
  input \FSM_onehot_state_reg[0]_2 ;
  input \FSM_onehot_state_reg[5] ;
  input adj_req;
  input [3:0]\da_reg[3]_0 ;
  input clk;
  input sclk;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_5_n_0 ;
  wire \FSM_onehot_state[0]_i_6_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[0]_2 ;
  wire \FSM_onehot_state_reg[5] ;
  wire [6:0]Q;
  wire adj_req;
  wire clk;
  wire [3:0]da;
  wire [3:0]\da_reg[3]_0 ;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire [3:0]db;
  (* async_reg = "yes" *) wire [3:0]debug;
  wire \q_reg[1]_0 ;
  wire sclk;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\q_reg[1]_0 ),
        .I1(Q[0]),
        .I2(\FSM_onehot_state_reg[0] ),
        .I3(\FSM_onehot_state_reg[0]_0 ),
        .I4(\FSM_onehot_state[0]_i_5_n_0 ),
        .I5(\FSM_onehot_state[0]_i_6_n_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(debug[2]),
        .I1(\FSM_onehot_state_reg[5] ),
        .I2(debug[3]),
        .I3(debug[1]),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFAFAFFFCAAAACFCC)) 
    \FSM_onehot_state[0]_i_5 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(adj_req),
        .I3(Q[3]),
        .I4(debug[3]),
        .I5(Q[0]),
        .O(\FSM_onehot_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \FSM_onehot_state[0]_i_6 
       (.I0(\FSM_onehot_state_reg[0]_1 ),
        .I1(\FSM_onehot_state_reg[0]_2 ),
        .I2(debug[2]),
        .I3(Q[4]),
        .I4(\FSM_onehot_state_reg[5] ),
        .I5(Q[5]),
        .O(\FSM_onehot_state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDF00)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(debug[2]),
        .I1(\FSM_onehot_state_reg[5] ),
        .I2(debug[3]),
        .I3(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Q[0]),
        .I1(debug[1]),
        .I2(debug[2]),
        .I3(\FSM_onehot_state_reg[5] ),
        .I4(debug[3]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(Q[4]),
        .I1(debug[3]),
        .I2(\FSM_onehot_state_reg[5] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hEEEEFFFFEEEEEFEE)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(debug[3]),
        .I3(Q[4]),
        .I4(\FSM_onehot_state_reg[5] ),
        .I5(Q[3]),
        .O(D[3]));
  FDRE \da_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\da_reg[3]_0 [0]),
        .Q(da[0]),
        .R(1'b0));
  FDRE \da_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\da_reg[3]_0 [1]),
        .Q(da[1]),
        .R(1'b0));
  FDRE \da_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\da_reg[3]_0 [2]),
        .Q(da[2]),
        .R(1'b0));
  FDRE \da_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\da_reg[3]_0 [3]),
        .Q(da[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(da[0]),
        .Q(db[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(da[1]),
        .Q(db[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(da[2]),
        .Q(db[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[3] 
       (.C(sclk),
        .CE(1'b1),
        .D(da[3]),
        .Q(db[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[0]),
        .Q(debug[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[1]),
        .Q(debug[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[2]),
        .Q(debug[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[3] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[3]),
        .Q(debug[0]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized1
   (out,
    srst_0,
    E,
    \q_reg[15] ,
    \da_reg[0]_0 ,
    clk,
    sclk,
    srst,
    \s_reg[4] ,
    adj_req,
    ud,
    Q,
    tx_en);
  output out;
  output srst_0;
  output [0:0]E;
  output \q_reg[15] ;
  input \da_reg[0]_0 ;
  input clk;
  input sclk;
  input srst;
  input \s_reg[4] ;
  input adj_req;
  input ud;
  input [1:0]Q;
  input tx_en;

  wire [0:0]E;
  wire [1:0]Q;
  wire adj_req;
  wire clk;
  wire da;
  wire \da_reg[0]_0 ;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire db;
  (* async_reg = "yes" *) wire out;
  wire \q_reg[15] ;
  wire \s_reg[4] ;
  wire sclk;
  wire srst;
  wire srst_0;
  wire tx_en;
  wire ud;

  LUT6 #(
    .INIT(64'h1011101010001010)) 
    adj_req_i_1
       (.I0(srst),
        .I1(\s_reg[4] ),
        .I2(adj_req),
        .I3(ud),
        .I4(out),
        .I5(Q[0]),
        .O(srst_0));
  FDRE \da_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\da_reg[0]_0 ),
        .Q(da),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(da),
        .Q(db),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0004)) 
    \fdel_i[3]_i_1 
       (.I0(\s_reg[4] ),
        .I1(out),
        .I2(srst),
        .I3(ud),
        .O(E));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(db),
        .Q(out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    tx_en_i_1
       (.I0(Q[1]),
        .I1(ud),
        .I2(out),
        .I3(\s_reg[4] ),
        .I4(tx_en),
        .O(\q_reg[15] ));
endmodule

(* ORIG_REF_NAME = "pdts_tstamp" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_tstamp
   (lock_reg_0,
    \tstamp_i_reg[0]_0 ,
    tstamp,
    clk,
    out,
    s_stb,
    slen,
    s_first,
    q);
  output [0:0]lock_reg_0;
  output \tstamp_i_reg[0]_0 ;
  output [62:0]tstamp;
  input clk;
  input [0:0]out;
  input s_stb;
  input [0:0]slen;
  input s_first;
  input [7:0]q;

  wire clk;
  wire ctr0;
  wire \ctr[6]_i_2_n_0 ;
  wire \ctr[7]_i_3_n_0 ;
  wire \ctr[7]_i_4_n_0 ;
  wire [7:0]ctr_reg;
  wire [63:1]data;
  wire i__carry_i_1_n_0;
  wire init;
  wire init_i_1_n_0;
  wire lock1;
  wire lock1_carry__0_i_1_n_0;
  wire lock1_carry__0_i_2_n_0;
  wire lock1_carry__0_i_3_n_0;
  wire lock1_carry__0_i_4_n_0;
  wire lock1_carry__0_i_5_n_0;
  wire lock1_carry__0_i_6_n_0;
  wire lock1_carry__0_i_7_n_0;
  wire lock1_carry__0_i_8_n_0;
  wire lock1_carry__0_n_0;
  wire lock1_carry__0_n_1;
  wire lock1_carry__0_n_2;
  wire lock1_carry__0_n_3;
  wire lock1_carry__0_n_4;
  wire lock1_carry__0_n_5;
  wire lock1_carry__0_n_6;
  wire lock1_carry__0_n_7;
  wire lock1_carry__1_i_1_n_0;
  wire lock1_carry__1_i_2_n_0;
  wire lock1_carry__1_i_3_n_0;
  wire lock1_carry__1_i_4_n_0;
  wire lock1_carry__1_i_5_n_0;
  wire lock1_carry__1_i_6_n_0;
  wire lock1_carry__1_n_3;
  wire lock1_carry__1_n_4;
  wire lock1_carry__1_n_5;
  wire lock1_carry__1_n_6;
  wire lock1_carry__1_n_7;
  wire lock1_carry_i_1_n_0;
  wire lock1_carry_i_2_n_0;
  wire lock1_carry_i_3_n_0;
  wire lock1_carry_i_4_n_0;
  wire lock1_carry_i_5_n_0;
  wire lock1_carry_i_6_n_0;
  wire lock1_carry_i_7_n_0;
  wire lock1_carry_i_8_n_0;
  wire lock1_carry_n_0;
  wire lock1_carry_n_1;
  wire lock1_carry_n_2;
  wire lock1_carry_n_3;
  wire lock1_carry_n_4;
  wire lock1_carry_n_5;
  wire lock1_carry_n_6;
  wire lock1_carry_n_7;
  wire lock_i_1_n_0;
  wire [0:0]lock_reg_0;
  wire [0:0]out;
  wire pkt_end;
  wire pkt_end_d;
  wire pkt_end_i_1_n_0;
  wire pkt_end_i_2_n_0;
  wire [7:0]plusOp__4;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__0_n_4 ;
  wire \plusOp_inferred__0/i__carry__0_n_5 ;
  wire \plusOp_inferred__0/i__carry__0_n_6 ;
  wire \plusOp_inferred__0/i__carry__0_n_7 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_4 ;
  wire \plusOp_inferred__0/i__carry__1_n_5 ;
  wire \plusOp_inferred__0/i__carry__1_n_6 ;
  wire \plusOp_inferred__0/i__carry__1_n_7 ;
  wire \plusOp_inferred__0/i__carry__2_n_0 ;
  wire \plusOp_inferred__0/i__carry__2_n_1 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_4 ;
  wire \plusOp_inferred__0/i__carry__2_n_5 ;
  wire \plusOp_inferred__0/i__carry__2_n_6 ;
  wire \plusOp_inferred__0/i__carry__2_n_7 ;
  wire \plusOp_inferred__0/i__carry__3_n_0 ;
  wire \plusOp_inferred__0/i__carry__3_n_1 ;
  wire \plusOp_inferred__0/i__carry__3_n_2 ;
  wire \plusOp_inferred__0/i__carry__3_n_3 ;
  wire \plusOp_inferred__0/i__carry__3_n_4 ;
  wire \plusOp_inferred__0/i__carry__3_n_5 ;
  wire \plusOp_inferred__0/i__carry__3_n_6 ;
  wire \plusOp_inferred__0/i__carry__3_n_7 ;
  wire \plusOp_inferred__0/i__carry__4_n_0 ;
  wire \plusOp_inferred__0/i__carry__4_n_1 ;
  wire \plusOp_inferred__0/i__carry__4_n_2 ;
  wire \plusOp_inferred__0/i__carry__4_n_3 ;
  wire \plusOp_inferred__0/i__carry__4_n_4 ;
  wire \plusOp_inferred__0/i__carry__4_n_5 ;
  wire \plusOp_inferred__0/i__carry__4_n_6 ;
  wire \plusOp_inferred__0/i__carry__4_n_7 ;
  wire \plusOp_inferred__0/i__carry__5_n_0 ;
  wire \plusOp_inferred__0/i__carry__5_n_1 ;
  wire \plusOp_inferred__0/i__carry__5_n_2 ;
  wire \plusOp_inferred__0/i__carry__5_n_3 ;
  wire \plusOp_inferred__0/i__carry__5_n_4 ;
  wire \plusOp_inferred__0/i__carry__5_n_5 ;
  wire \plusOp_inferred__0/i__carry__5_n_6 ;
  wire \plusOp_inferred__0/i__carry__5_n_7 ;
  wire \plusOp_inferred__0/i__carry__6_n_2 ;
  wire \plusOp_inferred__0/i__carry__6_n_3 ;
  wire \plusOp_inferred__0/i__carry__6_n_4 ;
  wire \plusOp_inferred__0/i__carry__6_n_5 ;
  wire \plusOp_inferred__0/i__carry__6_n_6 ;
  wire \plusOp_inferred__0/i__carry__6_n_7 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_4 ;
  wire \plusOp_inferred__0/i__carry_n_5 ;
  wire \plusOp_inferred__0/i__carry_n_6 ;
  wire \plusOp_inferred__0/i__carry_n_7 ;
  wire [7:0]q;
  wire s_first;
  wire s_stb;
  wire [0:0]slen;
  wire [63:0]sr;
  wire \sr[63]_i_2_n_0 ;
  wire \sr[63]_i_3_n_0 ;
  wire sr_0;
  wire [62:0]tstamp;
  wire \tstamp_i[15]_i_2_n_0 ;
  wire \tstamp_i[15]_i_3_n_0 ;
  wire \tstamp_i[15]_i_4_n_0 ;
  wire \tstamp_i[15]_i_5_n_0 ;
  wire \tstamp_i[15]_i_6_n_0 ;
  wire \tstamp_i[15]_i_7_n_0 ;
  wire \tstamp_i[15]_i_8_n_0 ;
  wire \tstamp_i[15]_i_9_n_0 ;
  wire \tstamp_i[23]_i_2_n_0 ;
  wire \tstamp_i[23]_i_3_n_0 ;
  wire \tstamp_i[23]_i_4_n_0 ;
  wire \tstamp_i[23]_i_5_n_0 ;
  wire \tstamp_i[23]_i_6_n_0 ;
  wire \tstamp_i[23]_i_7_n_0 ;
  wire \tstamp_i[23]_i_8_n_0 ;
  wire \tstamp_i[23]_i_9_n_0 ;
  wire \tstamp_i[31]_i_2_n_0 ;
  wire \tstamp_i[31]_i_3_n_0 ;
  wire \tstamp_i[31]_i_4_n_0 ;
  wire \tstamp_i[31]_i_5_n_0 ;
  wire \tstamp_i[31]_i_6_n_0 ;
  wire \tstamp_i[31]_i_7_n_0 ;
  wire \tstamp_i[31]_i_8_n_0 ;
  wire \tstamp_i[31]_i_9_n_0 ;
  wire \tstamp_i[39]_i_2_n_0 ;
  wire \tstamp_i[39]_i_3_n_0 ;
  wire \tstamp_i[39]_i_4_n_0 ;
  wire \tstamp_i[39]_i_5_n_0 ;
  wire \tstamp_i[39]_i_6_n_0 ;
  wire \tstamp_i[39]_i_7_n_0 ;
  wire \tstamp_i[39]_i_8_n_0 ;
  wire \tstamp_i[39]_i_9_n_0 ;
  wire \tstamp_i[47]_i_2_n_0 ;
  wire \tstamp_i[47]_i_3_n_0 ;
  wire \tstamp_i[47]_i_4_n_0 ;
  wire \tstamp_i[47]_i_5_n_0 ;
  wire \tstamp_i[47]_i_6_n_0 ;
  wire \tstamp_i[47]_i_7_n_0 ;
  wire \tstamp_i[47]_i_8_n_0 ;
  wire \tstamp_i[47]_i_9_n_0 ;
  wire \tstamp_i[55]_i_2_n_0 ;
  wire \tstamp_i[55]_i_3_n_0 ;
  wire \tstamp_i[55]_i_4_n_0 ;
  wire \tstamp_i[55]_i_5_n_0 ;
  wire \tstamp_i[55]_i_6_n_0 ;
  wire \tstamp_i[55]_i_7_n_0 ;
  wire \tstamp_i[55]_i_8_n_0 ;
  wire \tstamp_i[55]_i_9_n_0 ;
  wire \tstamp_i[63]_i_10_n_0 ;
  wire \tstamp_i[63]_i_1_n_0 ;
  wire \tstamp_i[63]_i_3_n_0 ;
  wire \tstamp_i[63]_i_4_n_0 ;
  wire \tstamp_i[63]_i_5_n_0 ;
  wire \tstamp_i[63]_i_6_n_0 ;
  wire \tstamp_i[63]_i_7_n_0 ;
  wire \tstamp_i[63]_i_8_n_0 ;
  wire \tstamp_i[63]_i_9_n_0 ;
  wire \tstamp_i[7]_i_10_n_0 ;
  wire \tstamp_i[7]_i_2_n_0 ;
  wire \tstamp_i[7]_i_3_n_0 ;
  wire \tstamp_i[7]_i_4_n_0 ;
  wire \tstamp_i[7]_i_5_n_0 ;
  wire \tstamp_i[7]_i_6_n_0 ;
  wire \tstamp_i[7]_i_7_n_0 ;
  wire \tstamp_i[7]_i_8_n_0 ;
  wire \tstamp_i[7]_i_9_n_0 ;
  wire \tstamp_i_reg[0]_0 ;
  wire \tstamp_i_reg[15]_i_1_n_0 ;
  wire \tstamp_i_reg[15]_i_1_n_1 ;
  wire \tstamp_i_reg[15]_i_1_n_10 ;
  wire \tstamp_i_reg[15]_i_1_n_11 ;
  wire \tstamp_i_reg[15]_i_1_n_12 ;
  wire \tstamp_i_reg[15]_i_1_n_13 ;
  wire \tstamp_i_reg[15]_i_1_n_14 ;
  wire \tstamp_i_reg[15]_i_1_n_15 ;
  wire \tstamp_i_reg[15]_i_1_n_2 ;
  wire \tstamp_i_reg[15]_i_1_n_3 ;
  wire \tstamp_i_reg[15]_i_1_n_4 ;
  wire \tstamp_i_reg[15]_i_1_n_5 ;
  wire \tstamp_i_reg[15]_i_1_n_6 ;
  wire \tstamp_i_reg[15]_i_1_n_7 ;
  wire \tstamp_i_reg[15]_i_1_n_8 ;
  wire \tstamp_i_reg[15]_i_1_n_9 ;
  wire \tstamp_i_reg[23]_i_1_n_0 ;
  wire \tstamp_i_reg[23]_i_1_n_1 ;
  wire \tstamp_i_reg[23]_i_1_n_10 ;
  wire \tstamp_i_reg[23]_i_1_n_11 ;
  wire \tstamp_i_reg[23]_i_1_n_12 ;
  wire \tstamp_i_reg[23]_i_1_n_13 ;
  wire \tstamp_i_reg[23]_i_1_n_14 ;
  wire \tstamp_i_reg[23]_i_1_n_15 ;
  wire \tstamp_i_reg[23]_i_1_n_2 ;
  wire \tstamp_i_reg[23]_i_1_n_3 ;
  wire \tstamp_i_reg[23]_i_1_n_4 ;
  wire \tstamp_i_reg[23]_i_1_n_5 ;
  wire \tstamp_i_reg[23]_i_1_n_6 ;
  wire \tstamp_i_reg[23]_i_1_n_7 ;
  wire \tstamp_i_reg[23]_i_1_n_8 ;
  wire \tstamp_i_reg[23]_i_1_n_9 ;
  wire \tstamp_i_reg[31]_i_1_n_0 ;
  wire \tstamp_i_reg[31]_i_1_n_1 ;
  wire \tstamp_i_reg[31]_i_1_n_10 ;
  wire \tstamp_i_reg[31]_i_1_n_11 ;
  wire \tstamp_i_reg[31]_i_1_n_12 ;
  wire \tstamp_i_reg[31]_i_1_n_13 ;
  wire \tstamp_i_reg[31]_i_1_n_14 ;
  wire \tstamp_i_reg[31]_i_1_n_15 ;
  wire \tstamp_i_reg[31]_i_1_n_2 ;
  wire \tstamp_i_reg[31]_i_1_n_3 ;
  wire \tstamp_i_reg[31]_i_1_n_4 ;
  wire \tstamp_i_reg[31]_i_1_n_5 ;
  wire \tstamp_i_reg[31]_i_1_n_6 ;
  wire \tstamp_i_reg[31]_i_1_n_7 ;
  wire \tstamp_i_reg[31]_i_1_n_8 ;
  wire \tstamp_i_reg[31]_i_1_n_9 ;
  wire \tstamp_i_reg[39]_i_1_n_0 ;
  wire \tstamp_i_reg[39]_i_1_n_1 ;
  wire \tstamp_i_reg[39]_i_1_n_10 ;
  wire \tstamp_i_reg[39]_i_1_n_11 ;
  wire \tstamp_i_reg[39]_i_1_n_12 ;
  wire \tstamp_i_reg[39]_i_1_n_13 ;
  wire \tstamp_i_reg[39]_i_1_n_14 ;
  wire \tstamp_i_reg[39]_i_1_n_15 ;
  wire \tstamp_i_reg[39]_i_1_n_2 ;
  wire \tstamp_i_reg[39]_i_1_n_3 ;
  wire \tstamp_i_reg[39]_i_1_n_4 ;
  wire \tstamp_i_reg[39]_i_1_n_5 ;
  wire \tstamp_i_reg[39]_i_1_n_6 ;
  wire \tstamp_i_reg[39]_i_1_n_7 ;
  wire \tstamp_i_reg[39]_i_1_n_8 ;
  wire \tstamp_i_reg[39]_i_1_n_9 ;
  wire \tstamp_i_reg[47]_i_1_n_0 ;
  wire \tstamp_i_reg[47]_i_1_n_1 ;
  wire \tstamp_i_reg[47]_i_1_n_10 ;
  wire \tstamp_i_reg[47]_i_1_n_11 ;
  wire \tstamp_i_reg[47]_i_1_n_12 ;
  wire \tstamp_i_reg[47]_i_1_n_13 ;
  wire \tstamp_i_reg[47]_i_1_n_14 ;
  wire \tstamp_i_reg[47]_i_1_n_15 ;
  wire \tstamp_i_reg[47]_i_1_n_2 ;
  wire \tstamp_i_reg[47]_i_1_n_3 ;
  wire \tstamp_i_reg[47]_i_1_n_4 ;
  wire \tstamp_i_reg[47]_i_1_n_5 ;
  wire \tstamp_i_reg[47]_i_1_n_6 ;
  wire \tstamp_i_reg[47]_i_1_n_7 ;
  wire \tstamp_i_reg[47]_i_1_n_8 ;
  wire \tstamp_i_reg[47]_i_1_n_9 ;
  wire \tstamp_i_reg[55]_i_1_n_0 ;
  wire \tstamp_i_reg[55]_i_1_n_1 ;
  wire \tstamp_i_reg[55]_i_1_n_10 ;
  wire \tstamp_i_reg[55]_i_1_n_11 ;
  wire \tstamp_i_reg[55]_i_1_n_12 ;
  wire \tstamp_i_reg[55]_i_1_n_13 ;
  wire \tstamp_i_reg[55]_i_1_n_14 ;
  wire \tstamp_i_reg[55]_i_1_n_15 ;
  wire \tstamp_i_reg[55]_i_1_n_2 ;
  wire \tstamp_i_reg[55]_i_1_n_3 ;
  wire \tstamp_i_reg[55]_i_1_n_4 ;
  wire \tstamp_i_reg[55]_i_1_n_5 ;
  wire \tstamp_i_reg[55]_i_1_n_6 ;
  wire \tstamp_i_reg[55]_i_1_n_7 ;
  wire \tstamp_i_reg[55]_i_1_n_8 ;
  wire \tstamp_i_reg[55]_i_1_n_9 ;
  wire \tstamp_i_reg[63]_i_2_n_1 ;
  wire \tstamp_i_reg[63]_i_2_n_10 ;
  wire \tstamp_i_reg[63]_i_2_n_11 ;
  wire \tstamp_i_reg[63]_i_2_n_12 ;
  wire \tstamp_i_reg[63]_i_2_n_13 ;
  wire \tstamp_i_reg[63]_i_2_n_14 ;
  wire \tstamp_i_reg[63]_i_2_n_15 ;
  wire \tstamp_i_reg[63]_i_2_n_2 ;
  wire \tstamp_i_reg[63]_i_2_n_3 ;
  wire \tstamp_i_reg[63]_i_2_n_4 ;
  wire \tstamp_i_reg[63]_i_2_n_5 ;
  wire \tstamp_i_reg[63]_i_2_n_6 ;
  wire \tstamp_i_reg[63]_i_2_n_7 ;
  wire \tstamp_i_reg[63]_i_2_n_8 ;
  wire \tstamp_i_reg[63]_i_2_n_9 ;
  wire \tstamp_i_reg[7]_i_1_n_0 ;
  wire \tstamp_i_reg[7]_i_1_n_1 ;
  wire \tstamp_i_reg[7]_i_1_n_10 ;
  wire \tstamp_i_reg[7]_i_1_n_11 ;
  wire \tstamp_i_reg[7]_i_1_n_12 ;
  wire \tstamp_i_reg[7]_i_1_n_13 ;
  wire \tstamp_i_reg[7]_i_1_n_14 ;
  wire \tstamp_i_reg[7]_i_1_n_15 ;
  wire \tstamp_i_reg[7]_i_1_n_2 ;
  wire \tstamp_i_reg[7]_i_1_n_3 ;
  wire \tstamp_i_reg[7]_i_1_n_4 ;
  wire \tstamp_i_reg[7]_i_1_n_5 ;
  wire \tstamp_i_reg[7]_i_1_n_6 ;
  wire \tstamp_i_reg[7]_i_1_n_7 ;
  wire \tstamp_i_reg[7]_i_1_n_8 ;
  wire \tstamp_i_reg[7]_i_1_n_9 ;
  wire [7:0]NLW_lock1_carry_O_UNCONNECTED;
  wire [7:0]NLW_lock1_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_lock1_carry__1_CO_UNCONNECTED;
  wire [7:0]NLW_lock1_carry__1_O_UNCONNECTED;
  wire [7:6]\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [7:7]\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [7:7]\NLW_tstamp_i_reg[63]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ctr[0]_i_1__0 
       (.I0(ctr_reg[0]),
        .O(plusOp__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctr[1]_i_1__0 
       (.I0(ctr_reg[0]),
        .I1(ctr_reg[1]),
        .O(plusOp__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ctr[2]_i_1__0 
       (.I0(ctr_reg[1]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[2]),
        .O(plusOp__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ctr[3]_i_1__0 
       (.I0(ctr_reg[0]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[2]),
        .I3(ctr_reg[3]),
        .O(plusOp__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ctr[4]_i_1__0 
       (.I0(ctr_reg[2]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[0]),
        .I3(ctr_reg[3]),
        .I4(ctr_reg[4]),
        .O(plusOp__4[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ctr[5]_i_1__0 
       (.I0(ctr_reg[3]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[2]),
        .I4(ctr_reg[4]),
        .I5(ctr_reg[5]),
        .O(plusOp__4[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ctr[6]_i_1__0 
       (.I0(ctr_reg[4]),
        .I1(ctr_reg[2]),
        .I2(\ctr[6]_i_2_n_0 ),
        .I3(ctr_reg[3]),
        .I4(ctr_reg[5]),
        .I5(ctr_reg[6]),
        .O(plusOp__4[6]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ctr[6]_i_2 
       (.I0(ctr_reg[0]),
        .I1(ctr_reg[1]),
        .O(\ctr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    \ctr[7]_i_1 
       (.I0(\ctr[7]_i_3_n_0 ),
        .I1(slen),
        .I2(s_stb),
        .I3(s_first),
        .I4(ctr_reg[6]),
        .I5(ctr_reg[7]),
        .O(ctr0));
  LUT3 #(
    .INIT(8'h78)) 
    \ctr[7]_i_2 
       (.I0(\ctr[7]_i_4_n_0 ),
        .I1(ctr_reg[6]),
        .I2(ctr_reg[7]),
        .O(plusOp__4[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctr[7]_i_3 
       (.I0(ctr_reg[5]),
        .I1(ctr_reg[4]),
        .I2(ctr_reg[3]),
        .I3(ctr_reg[2]),
        .I4(ctr_reg[0]),
        .I5(ctr_reg[1]),
        .O(\ctr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ctr[7]_i_4 
       (.I0(ctr_reg[5]),
        .I1(ctr_reg[3]),
        .I2(ctr_reg[0]),
        .I3(ctr_reg[1]),
        .I4(ctr_reg[2]),
        .I5(ctr_reg[4]),
        .O(\ctr[7]_i_4_n_0 ));
  FDRE \ctr_reg[0] 
       (.C(clk),
        .CE(ctr0),
        .D(plusOp__4[0]),
        .Q(ctr_reg[0]),
        .R(out));
  FDRE \ctr_reg[1] 
       (.C(clk),
        .CE(ctr0),
        .D(plusOp__4[1]),
        .Q(ctr_reg[1]),
        .R(out));
  FDRE \ctr_reg[2] 
       (.C(clk),
        .CE(ctr0),
        .D(plusOp__4[2]),
        .Q(ctr_reg[2]),
        .R(out));
  FDRE \ctr_reg[3] 
       (.C(clk),
        .CE(ctr0),
        .D(plusOp__4[3]),
        .Q(ctr_reg[3]),
        .R(out));
  FDRE \ctr_reg[4] 
       (.C(clk),
        .CE(ctr0),
        .D(plusOp__4[4]),
        .Q(ctr_reg[4]),
        .R(out));
  FDRE \ctr_reg[5] 
       (.C(clk),
        .CE(ctr0),
        .D(plusOp__4[5]),
        .Q(ctr_reg[5]),
        .R(out));
  FDRE \ctr_reg[6] 
       (.C(clk),
        .CE(ctr0),
        .D(plusOp__4[6]),
        .Q(ctr_reg[6]),
        .R(out));
  FDRE \ctr_reg[7] 
       (.C(clk),
        .CE(ctr0),
        .D(plusOp__4[7]),
        .Q(ctr_reg[7]),
        .R(out));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(sr[8]),
        .O(i__carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    init_i_1
       (.I0(pkt_end),
        .I1(lock_reg_0),
        .I2(init),
        .O(init_i_1_n_0));
  FDRE init_reg
       (.C(clk),
        .CE(1'b1),
        .D(init_i_1_n_0),
        .Q(init),
        .R(out));
  CARRY8 lock1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({lock1_carry_n_0,lock1_carry_n_1,lock1_carry_n_2,lock1_carry_n_3,lock1_carry_n_4,lock1_carry_n_5,lock1_carry_n_6,lock1_carry_n_7}),
        .DI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_lock1_carry_O_UNCONNECTED[7:0]),
        .S({lock1_carry_i_1_n_0,lock1_carry_i_2_n_0,lock1_carry_i_3_n_0,lock1_carry_i_4_n_0,lock1_carry_i_5_n_0,lock1_carry_i_6_n_0,lock1_carry_i_7_n_0,lock1_carry_i_8_n_0}));
  CARRY8 lock1_carry__0
       (.CI(lock1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({lock1_carry__0_n_0,lock1_carry__0_n_1,lock1_carry__0_n_2,lock1_carry__0_n_3,lock1_carry__0_n_4,lock1_carry__0_n_5,lock1_carry__0_n_6,lock1_carry__0_n_7}),
        .DI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_lock1_carry__0_O_UNCONNECTED[7:0]),
        .S({lock1_carry__0_i_1_n_0,lock1_carry__0_i_2_n_0,lock1_carry__0_i_3_n_0,lock1_carry__0_i_4_n_0,lock1_carry__0_i_5_n_0,lock1_carry__0_i_6_n_0,lock1_carry__0_i_7_n_0,lock1_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_1
       (.I0(tstamp[45]),
        .I1(data[46]),
        .I2(tstamp[44]),
        .I3(data[45]),
        .I4(tstamp[46]),
        .I5(data[47]),
        .O(lock1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_2
       (.I0(tstamp[42]),
        .I1(data[43]),
        .I2(tstamp[41]),
        .I3(data[42]),
        .I4(tstamp[43]),
        .I5(data[44]),
        .O(lock1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_3
       (.I0(tstamp[39]),
        .I1(data[40]),
        .I2(tstamp[38]),
        .I3(data[39]),
        .I4(tstamp[40]),
        .I5(data[41]),
        .O(lock1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_4
       (.I0(tstamp[36]),
        .I1(data[37]),
        .I2(tstamp[35]),
        .I3(data[36]),
        .I4(tstamp[37]),
        .I5(data[38]),
        .O(lock1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_5
       (.I0(tstamp[33]),
        .I1(data[34]),
        .I2(tstamp[32]),
        .I3(data[33]),
        .I4(tstamp[34]),
        .I5(data[35]),
        .O(lock1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_6
       (.I0(tstamp[30]),
        .I1(data[31]),
        .I2(tstamp[29]),
        .I3(data[30]),
        .I4(tstamp[31]),
        .I5(data[32]),
        .O(lock1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_7
       (.I0(tstamp[27]),
        .I1(data[28]),
        .I2(tstamp[26]),
        .I3(data[27]),
        .I4(tstamp[28]),
        .I5(data[29]),
        .O(lock1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_8
       (.I0(tstamp[24]),
        .I1(data[25]),
        .I2(tstamp[23]),
        .I3(data[24]),
        .I4(tstamp[25]),
        .I5(data[26]),
        .O(lock1_carry__0_i_8_n_0));
  CARRY8 lock1_carry__1
       (.CI(lock1_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_lock1_carry__1_CO_UNCONNECTED[7:6],lock1,lock1_carry__1_n_3,lock1_carry__1_n_4,lock1_carry__1_n_5,lock1_carry__1_n_6,lock1_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_lock1_carry__1_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,lock1_carry__1_i_1_n_0,lock1_carry__1_i_2_n_0,lock1_carry__1_i_3_n_0,lock1_carry__1_i_4_n_0,lock1_carry__1_i_5_n_0,lock1_carry__1_i_6_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    lock1_carry__1_i_1
       (.I0(data[63]),
        .I1(tstamp[62]),
        .O(lock1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_2
       (.I0(tstamp[60]),
        .I1(data[61]),
        .I2(tstamp[59]),
        .I3(data[60]),
        .I4(tstamp[61]),
        .I5(data[62]),
        .O(lock1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_3
       (.I0(tstamp[57]),
        .I1(data[58]),
        .I2(tstamp[56]),
        .I3(data[57]),
        .I4(tstamp[58]),
        .I5(data[59]),
        .O(lock1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_4
       (.I0(tstamp[54]),
        .I1(data[55]),
        .I2(tstamp[53]),
        .I3(data[54]),
        .I4(tstamp[55]),
        .I5(data[56]),
        .O(lock1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_5
       (.I0(tstamp[51]),
        .I1(data[52]),
        .I2(tstamp[50]),
        .I3(data[51]),
        .I4(tstamp[52]),
        .I5(data[53]),
        .O(lock1_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_6
       (.I0(tstamp[48]),
        .I1(data[49]),
        .I2(tstamp[47]),
        .I3(data[48]),
        .I4(tstamp[49]),
        .I5(data[50]),
        .O(lock1_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_1
       (.I0(tstamp[21]),
        .I1(data[22]),
        .I2(tstamp[20]),
        .I3(data[21]),
        .I4(tstamp[22]),
        .I5(data[23]),
        .O(lock1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_2
       (.I0(tstamp[18]),
        .I1(data[19]),
        .I2(tstamp[17]),
        .I3(data[18]),
        .I4(tstamp[19]),
        .I5(data[20]),
        .O(lock1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_3
       (.I0(tstamp[15]),
        .I1(data[16]),
        .I2(tstamp[14]),
        .I3(data[15]),
        .I4(tstamp[16]),
        .I5(data[17]),
        .O(lock1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_4
       (.I0(tstamp[12]),
        .I1(data[13]),
        .I2(tstamp[11]),
        .I3(data[12]),
        .I4(tstamp[13]),
        .I5(data[14]),
        .O(lock1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_5
       (.I0(tstamp[9]),
        .I1(data[10]),
        .I2(tstamp[8]),
        .I3(data[9]),
        .I4(tstamp[10]),
        .I5(data[11]),
        .O(lock1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_6
       (.I0(tstamp[6]),
        .I1(data[7]),
        .I2(tstamp[5]),
        .I3(data[6]),
        .I4(tstamp[7]),
        .I5(data[8]),
        .O(lock1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_7
       (.I0(tstamp[3]),
        .I1(data[4]),
        .I2(tstamp[2]),
        .I3(data[3]),
        .I4(tstamp[4]),
        .I5(data[5]),
        .O(lock1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    lock1_carry_i_8
       (.I0(tstamp[0]),
        .I1(data[1]),
        .I2(sr[0]),
        .I3(\tstamp_i_reg[0]_0 ),
        .I4(tstamp[1]),
        .I5(data[2]),
        .O(lock1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h02CECECE)) 
    lock_i_1
       (.I0(pkt_end),
        .I1(lock_reg_0),
        .I2(init),
        .I3(pkt_end_d),
        .I4(lock1),
        .O(lock_i_1_n_0));
  FDRE lock_reg
       (.C(clk),
        .CE(1'b1),
        .D(lock_i_1_n_0),
        .Q(lock_reg_0),
        .R(out));
  FDRE pkt_end_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(pkt_end),
        .Q(pkt_end_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    pkt_end_i_1
       (.I0(ctr_reg[4]),
        .I1(ctr_reg[5]),
        .I2(ctr_reg[6]),
        .I3(ctr_reg[7]),
        .I4(pkt_end_i_2_n_0),
        .O(pkt_end_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    pkt_end_i_2
       (.I0(ctr_reg[1]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[3]),
        .I3(ctr_reg[2]),
        .O(pkt_end_i_2_n_0));
  FDRE pkt_end_reg
       (.C(clk),
        .CE(1'b1),
        .D(pkt_end_i_1_n_0),
        .Q(pkt_end),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry 
       (.CI(sr[0]),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 ,\plusOp_inferred__0/i__carry_n_4 ,\plusOp_inferred__0/i__carry_n_5 ,\plusOp_inferred__0/i__carry_n_6 ,\plusOp_inferred__0/i__carry_n_7 }),
        .DI({sr[8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data[8:1]),
        .S({i__carry_i_1_n_0,sr[7:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 ,\plusOp_inferred__0/i__carry__0_n_4 ,\plusOp_inferred__0/i__carry__0_n_5 ,\plusOp_inferred__0/i__carry__0_n_6 ,\plusOp_inferred__0/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data[16:9]),
        .S(sr[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 ,\plusOp_inferred__0/i__carry__1_n_4 ,\plusOp_inferred__0/i__carry__1_n_5 ,\plusOp_inferred__0/i__carry__1_n_6 ,\plusOp_inferred__0/i__carry__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data[24:17]),
        .S(sr[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__2_n_0 ,\plusOp_inferred__0/i__carry__2_n_1 ,\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 ,\plusOp_inferred__0/i__carry__2_n_4 ,\plusOp_inferred__0/i__carry__2_n_5 ,\plusOp_inferred__0/i__carry__2_n_6 ,\plusOp_inferred__0/i__carry__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data[32:25]),
        .S(sr[32:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__3 
       (.CI(\plusOp_inferred__0/i__carry__2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__3_n_0 ,\plusOp_inferred__0/i__carry__3_n_1 ,\plusOp_inferred__0/i__carry__3_n_2 ,\plusOp_inferred__0/i__carry__3_n_3 ,\plusOp_inferred__0/i__carry__3_n_4 ,\plusOp_inferred__0/i__carry__3_n_5 ,\plusOp_inferred__0/i__carry__3_n_6 ,\plusOp_inferred__0/i__carry__3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data[40:33]),
        .S(sr[40:33]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__4 
       (.CI(\plusOp_inferred__0/i__carry__3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__4_n_0 ,\plusOp_inferred__0/i__carry__4_n_1 ,\plusOp_inferred__0/i__carry__4_n_2 ,\plusOp_inferred__0/i__carry__4_n_3 ,\plusOp_inferred__0/i__carry__4_n_4 ,\plusOp_inferred__0/i__carry__4_n_5 ,\plusOp_inferred__0/i__carry__4_n_6 ,\plusOp_inferred__0/i__carry__4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data[48:41]),
        .S(sr[48:41]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__5 
       (.CI(\plusOp_inferred__0/i__carry__4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__5_n_0 ,\plusOp_inferred__0/i__carry__5_n_1 ,\plusOp_inferred__0/i__carry__5_n_2 ,\plusOp_inferred__0/i__carry__5_n_3 ,\plusOp_inferred__0/i__carry__5_n_4 ,\plusOp_inferred__0/i__carry__5_n_5 ,\plusOp_inferred__0/i__carry__5_n_6 ,\plusOp_inferred__0/i__carry__5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data[56:49]),
        .S(sr[56:49]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__6 
       (.CI(\plusOp_inferred__0/i__carry__5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED [7:6],\plusOp_inferred__0/i__carry__6_n_2 ,\plusOp_inferred__0/i__carry__6_n_3 ,\plusOp_inferred__0/i__carry__6_n_4 ,\plusOp_inferred__0/i__carry__6_n_5 ,\plusOp_inferred__0/i__carry__6_n_6 ,\plusOp_inferred__0/i__carry__6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED [7],data[63:57]}),
        .S({1'b0,sr[63:57]}));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \sr[63]_i_1 
       (.I0(s_stb),
        .I1(out),
        .I2(\sr[63]_i_2_n_0 ),
        .I3(ctr_reg[5]),
        .I4(\sr[63]_i_3_n_0 ),
        .I5(ctr0),
        .O(sr_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sr[63]_i_2 
       (.I0(ctr_reg[6]),
        .I1(ctr_reg[7]),
        .O(\sr[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \sr[63]_i_3 
       (.I0(ctr_reg[1]),
        .I1(ctr_reg[3]),
        .I2(ctr_reg[2]),
        .I3(ctr_reg[4]),
        .O(\sr[63]_i_3_n_0 ));
  FDRE \sr_reg[0] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[8]),
        .Q(sr[0]),
        .R(1'b0));
  FDRE \sr_reg[10] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[18]),
        .Q(sr[10]),
        .R(1'b0));
  FDRE \sr_reg[11] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[19]),
        .Q(sr[11]),
        .R(1'b0));
  FDRE \sr_reg[12] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[20]),
        .Q(sr[12]),
        .R(1'b0));
  FDRE \sr_reg[13] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[21]),
        .Q(sr[13]),
        .R(1'b0));
  FDRE \sr_reg[14] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[22]),
        .Q(sr[14]),
        .R(1'b0));
  FDRE \sr_reg[15] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[23]),
        .Q(sr[15]),
        .R(1'b0));
  FDRE \sr_reg[16] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[24]),
        .Q(sr[16]),
        .R(1'b0));
  FDRE \sr_reg[17] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[25]),
        .Q(sr[17]),
        .R(1'b0));
  FDRE \sr_reg[18] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[26]),
        .Q(sr[18]),
        .R(1'b0));
  FDRE \sr_reg[19] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[27]),
        .Q(sr[19]),
        .R(1'b0));
  FDRE \sr_reg[1] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[9]),
        .Q(sr[1]),
        .R(1'b0));
  FDRE \sr_reg[20] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[28]),
        .Q(sr[20]),
        .R(1'b0));
  FDRE \sr_reg[21] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[29]),
        .Q(sr[21]),
        .R(1'b0));
  FDRE \sr_reg[22] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[30]),
        .Q(sr[22]),
        .R(1'b0));
  FDRE \sr_reg[23] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[31]),
        .Q(sr[23]),
        .R(1'b0));
  FDRE \sr_reg[24] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[32]),
        .Q(sr[24]),
        .R(1'b0));
  FDRE \sr_reg[25] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[33]),
        .Q(sr[25]),
        .R(1'b0));
  FDRE \sr_reg[26] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[34]),
        .Q(sr[26]),
        .R(1'b0));
  FDRE \sr_reg[27] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[35]),
        .Q(sr[27]),
        .R(1'b0));
  FDRE \sr_reg[28] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[36]),
        .Q(sr[28]),
        .R(1'b0));
  FDRE \sr_reg[29] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[37]),
        .Q(sr[29]),
        .R(1'b0));
  FDRE \sr_reg[2] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[10]),
        .Q(sr[2]),
        .R(1'b0));
  FDRE \sr_reg[30] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[38]),
        .Q(sr[30]),
        .R(1'b0));
  FDRE \sr_reg[31] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[39]),
        .Q(sr[31]),
        .R(1'b0));
  FDRE \sr_reg[32] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[40]),
        .Q(sr[32]),
        .R(1'b0));
  FDRE \sr_reg[33] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[41]),
        .Q(sr[33]),
        .R(1'b0));
  FDRE \sr_reg[34] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[42]),
        .Q(sr[34]),
        .R(1'b0));
  FDRE \sr_reg[35] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[43]),
        .Q(sr[35]),
        .R(1'b0));
  FDRE \sr_reg[36] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[44]),
        .Q(sr[36]),
        .R(1'b0));
  FDRE \sr_reg[37] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[45]),
        .Q(sr[37]),
        .R(1'b0));
  FDRE \sr_reg[38] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[46]),
        .Q(sr[38]),
        .R(1'b0));
  FDRE \sr_reg[39] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[47]),
        .Q(sr[39]),
        .R(1'b0));
  FDRE \sr_reg[3] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[11]),
        .Q(sr[3]),
        .R(1'b0));
  FDRE \sr_reg[40] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[48]),
        .Q(sr[40]),
        .R(1'b0));
  FDRE \sr_reg[41] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[49]),
        .Q(sr[41]),
        .R(1'b0));
  FDRE \sr_reg[42] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[50]),
        .Q(sr[42]),
        .R(1'b0));
  FDRE \sr_reg[43] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[51]),
        .Q(sr[43]),
        .R(1'b0));
  FDRE \sr_reg[44] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[52]),
        .Q(sr[44]),
        .R(1'b0));
  FDRE \sr_reg[45] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[53]),
        .Q(sr[45]),
        .R(1'b0));
  FDRE \sr_reg[46] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[54]),
        .Q(sr[46]),
        .R(1'b0));
  FDRE \sr_reg[47] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[55]),
        .Q(sr[47]),
        .R(1'b0));
  FDRE \sr_reg[48] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[56]),
        .Q(sr[48]),
        .R(1'b0));
  FDRE \sr_reg[49] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[57]),
        .Q(sr[49]),
        .R(1'b0));
  FDRE \sr_reg[4] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[12]),
        .Q(sr[4]),
        .R(1'b0));
  FDRE \sr_reg[50] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[58]),
        .Q(sr[50]),
        .R(1'b0));
  FDRE \sr_reg[51] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[59]),
        .Q(sr[51]),
        .R(1'b0));
  FDRE \sr_reg[52] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[60]),
        .Q(sr[52]),
        .R(1'b0));
  FDRE \sr_reg[53] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[61]),
        .Q(sr[53]),
        .R(1'b0));
  FDRE \sr_reg[54] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[62]),
        .Q(sr[54]),
        .R(1'b0));
  FDRE \sr_reg[55] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[63]),
        .Q(sr[55]),
        .R(1'b0));
  FDRE \sr_reg[56] 
       (.C(clk),
        .CE(sr_0),
        .D(q[0]),
        .Q(sr[56]),
        .R(1'b0));
  FDRE \sr_reg[57] 
       (.C(clk),
        .CE(sr_0),
        .D(q[1]),
        .Q(sr[57]),
        .R(1'b0));
  FDRE \sr_reg[58] 
       (.C(clk),
        .CE(sr_0),
        .D(q[2]),
        .Q(sr[58]),
        .R(1'b0));
  FDRE \sr_reg[59] 
       (.C(clk),
        .CE(sr_0),
        .D(q[3]),
        .Q(sr[59]),
        .R(1'b0));
  FDRE \sr_reg[5] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[13]),
        .Q(sr[5]),
        .R(1'b0));
  FDRE \sr_reg[60] 
       (.C(clk),
        .CE(sr_0),
        .D(q[4]),
        .Q(sr[60]),
        .R(1'b0));
  FDRE \sr_reg[61] 
       (.C(clk),
        .CE(sr_0),
        .D(q[5]),
        .Q(sr[61]),
        .R(1'b0));
  FDRE \sr_reg[62] 
       (.C(clk),
        .CE(sr_0),
        .D(q[6]),
        .Q(sr[62]),
        .R(1'b0));
  FDRE \sr_reg[63] 
       (.C(clk),
        .CE(sr_0),
        .D(q[7]),
        .Q(sr[63]),
        .R(1'b0));
  FDRE \sr_reg[6] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[14]),
        .Q(sr[6]),
        .R(1'b0));
  FDRE \sr_reg[7] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[15]),
        .Q(sr[7]),
        .R(1'b0));
  FDRE \sr_reg[8] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[16]),
        .Q(sr[8]),
        .R(1'b0));
  FDRE \sr_reg[9] 
       (.C(clk),
        .CE(sr_0),
        .D(sr[17]),
        .Q(sr[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[15]_i_2 
       (.I0(data[15]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[14]),
        .O(\tstamp_i[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[15]_i_3 
       (.I0(data[14]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[13]),
        .O(\tstamp_i[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[15]_i_4 
       (.I0(data[13]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[12]),
        .O(\tstamp_i[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[15]_i_5 
       (.I0(data[12]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[11]),
        .O(\tstamp_i[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[15]_i_6 
       (.I0(data[11]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[10]),
        .O(\tstamp_i[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[15]_i_7 
       (.I0(data[10]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[9]),
        .O(\tstamp_i[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[15]_i_8 
       (.I0(data[9]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[8]),
        .O(\tstamp_i[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[15]_i_9 
       (.I0(data[8]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[7]),
        .O(\tstamp_i[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[23]_i_2 
       (.I0(data[23]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[22]),
        .O(\tstamp_i[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[23]_i_3 
       (.I0(data[22]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[21]),
        .O(\tstamp_i[23]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[23]_i_4 
       (.I0(data[21]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[20]),
        .O(\tstamp_i[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[23]_i_5 
       (.I0(data[20]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[19]),
        .O(\tstamp_i[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[23]_i_6 
       (.I0(data[19]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[18]),
        .O(\tstamp_i[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[23]_i_7 
       (.I0(data[18]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[17]),
        .O(\tstamp_i[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[23]_i_8 
       (.I0(data[17]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[16]),
        .O(\tstamp_i[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[23]_i_9 
       (.I0(data[16]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[15]),
        .O(\tstamp_i[23]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[31]_i_2 
       (.I0(data[31]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[30]),
        .O(\tstamp_i[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[31]_i_3 
       (.I0(data[30]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[29]),
        .O(\tstamp_i[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[31]_i_4 
       (.I0(data[29]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[28]),
        .O(\tstamp_i[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[31]_i_5 
       (.I0(data[28]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[27]),
        .O(\tstamp_i[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[31]_i_6 
       (.I0(data[27]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[26]),
        .O(\tstamp_i[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[31]_i_7 
       (.I0(data[26]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[25]),
        .O(\tstamp_i[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[31]_i_8 
       (.I0(data[25]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[24]),
        .O(\tstamp_i[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[31]_i_9 
       (.I0(data[24]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[23]),
        .O(\tstamp_i[31]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[39]_i_2 
       (.I0(data[39]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[38]),
        .O(\tstamp_i[39]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[39]_i_3 
       (.I0(data[38]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[37]),
        .O(\tstamp_i[39]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[39]_i_4 
       (.I0(data[37]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[36]),
        .O(\tstamp_i[39]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[39]_i_5 
       (.I0(data[36]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[35]),
        .O(\tstamp_i[39]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[39]_i_6 
       (.I0(data[35]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[34]),
        .O(\tstamp_i[39]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[39]_i_7 
       (.I0(data[34]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[33]),
        .O(\tstamp_i[39]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[39]_i_8 
       (.I0(data[33]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[32]),
        .O(\tstamp_i[39]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[39]_i_9 
       (.I0(data[32]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[31]),
        .O(\tstamp_i[39]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[47]_i_2 
       (.I0(data[47]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[46]),
        .O(\tstamp_i[47]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[47]_i_3 
       (.I0(data[46]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[45]),
        .O(\tstamp_i[47]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[47]_i_4 
       (.I0(data[45]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[44]),
        .O(\tstamp_i[47]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[47]_i_5 
       (.I0(data[44]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[43]),
        .O(\tstamp_i[47]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[47]_i_6 
       (.I0(data[43]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[42]),
        .O(\tstamp_i[47]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[47]_i_7 
       (.I0(data[42]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[41]),
        .O(\tstamp_i[47]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[47]_i_8 
       (.I0(data[41]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[40]),
        .O(\tstamp_i[47]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[47]_i_9 
       (.I0(data[40]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[39]),
        .O(\tstamp_i[47]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[55]_i_2 
       (.I0(data[55]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[54]),
        .O(\tstamp_i[55]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[55]_i_3 
       (.I0(data[54]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[53]),
        .O(\tstamp_i[55]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[55]_i_4 
       (.I0(data[53]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[52]),
        .O(\tstamp_i[55]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[55]_i_5 
       (.I0(data[52]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[51]),
        .O(\tstamp_i[55]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[55]_i_6 
       (.I0(data[51]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[50]),
        .O(\tstamp_i[55]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[55]_i_7 
       (.I0(data[50]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[49]),
        .O(\tstamp_i[55]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[55]_i_8 
       (.I0(data[49]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[48]),
        .O(\tstamp_i[55]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[55]_i_9 
       (.I0(data[48]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[47]),
        .O(\tstamp_i[55]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \tstamp_i[63]_i_1 
       (.I0(pkt_end),
        .I1(init),
        .I2(lock_reg_0),
        .O(\tstamp_i[63]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[63]_i_10 
       (.I0(data[56]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[55]),
        .O(\tstamp_i[63]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[63]_i_3 
       (.I0(data[63]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[62]),
        .O(\tstamp_i[63]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[63]_i_4 
       (.I0(data[62]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[61]),
        .O(\tstamp_i[63]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[63]_i_5 
       (.I0(data[61]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[60]),
        .O(\tstamp_i[63]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[63]_i_6 
       (.I0(data[60]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[59]),
        .O(\tstamp_i[63]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[63]_i_7 
       (.I0(data[59]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[58]),
        .O(\tstamp_i[63]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[63]_i_8 
       (.I0(data[58]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[57]),
        .O(\tstamp_i[63]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[63]_i_9 
       (.I0(data[57]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[56]),
        .O(\tstamp_i[63]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h5553)) 
    \tstamp_i[7]_i_10 
       (.I0(\tstamp_i_reg[0]_0 ),
        .I1(sr[0]),
        .I2(init),
        .I3(lock_reg_0),
        .O(\tstamp_i[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFD01)) 
    \tstamp_i[7]_i_2 
       (.I0(sr[0]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(\tstamp_i_reg[0]_0 ),
        .O(\tstamp_i[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[7]_i_3 
       (.I0(data[7]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[6]),
        .O(\tstamp_i[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[7]_i_4 
       (.I0(data[6]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[5]),
        .O(\tstamp_i[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[7]_i_5 
       (.I0(data[5]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[4]),
        .O(\tstamp_i[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[7]_i_6 
       (.I0(data[4]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[3]),
        .O(\tstamp_i[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[7]_i_7 
       (.I0(data[3]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[2]),
        .O(\tstamp_i[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[7]_i_8 
       (.I0(data[2]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[1]),
        .O(\tstamp_i[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[7]_i_9 
       (.I0(data[1]),
        .I1(lock_reg_0),
        .I2(init),
        .I3(tstamp[0]),
        .O(\tstamp_i[7]_i_9_n_0 ));
  FDRE \tstamp_i_reg[0] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_15 ),
        .Q(\tstamp_i_reg[0]_0 ),
        .R(out));
  FDRE \tstamp_i_reg[10] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_13 ),
        .Q(tstamp[9]),
        .R(out));
  FDRE \tstamp_i_reg[11] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_12 ),
        .Q(tstamp[10]),
        .R(out));
  FDRE \tstamp_i_reg[12] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_11 ),
        .Q(tstamp[11]),
        .R(out));
  FDRE \tstamp_i_reg[13] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_10 ),
        .Q(tstamp[12]),
        .R(out));
  FDRE \tstamp_i_reg[14] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_9 ),
        .Q(tstamp[13]),
        .R(out));
  FDRE \tstamp_i_reg[15] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_8 ),
        .Q(tstamp[14]),
        .R(out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tstamp_i_reg[15]_i_1 
       (.CI(\tstamp_i_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tstamp_i_reg[15]_i_1_n_0 ,\tstamp_i_reg[15]_i_1_n_1 ,\tstamp_i_reg[15]_i_1_n_2 ,\tstamp_i_reg[15]_i_1_n_3 ,\tstamp_i_reg[15]_i_1_n_4 ,\tstamp_i_reg[15]_i_1_n_5 ,\tstamp_i_reg[15]_i_1_n_6 ,\tstamp_i_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\tstamp_i_reg[15]_i_1_n_8 ,\tstamp_i_reg[15]_i_1_n_9 ,\tstamp_i_reg[15]_i_1_n_10 ,\tstamp_i_reg[15]_i_1_n_11 ,\tstamp_i_reg[15]_i_1_n_12 ,\tstamp_i_reg[15]_i_1_n_13 ,\tstamp_i_reg[15]_i_1_n_14 ,\tstamp_i_reg[15]_i_1_n_15 }),
        .S({\tstamp_i[15]_i_2_n_0 ,\tstamp_i[15]_i_3_n_0 ,\tstamp_i[15]_i_4_n_0 ,\tstamp_i[15]_i_5_n_0 ,\tstamp_i[15]_i_6_n_0 ,\tstamp_i[15]_i_7_n_0 ,\tstamp_i[15]_i_8_n_0 ,\tstamp_i[15]_i_9_n_0 }));
  FDRE \tstamp_i_reg[16] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_15 ),
        .Q(tstamp[15]),
        .R(out));
  FDRE \tstamp_i_reg[17] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_14 ),
        .Q(tstamp[16]),
        .R(out));
  FDRE \tstamp_i_reg[18] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_13 ),
        .Q(tstamp[17]),
        .R(out));
  FDRE \tstamp_i_reg[19] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_12 ),
        .Q(tstamp[18]),
        .R(out));
  FDRE \tstamp_i_reg[1] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_14 ),
        .Q(tstamp[0]),
        .R(out));
  FDRE \tstamp_i_reg[20] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_11 ),
        .Q(tstamp[19]),
        .R(out));
  FDRE \tstamp_i_reg[21] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_10 ),
        .Q(tstamp[20]),
        .R(out));
  FDRE \tstamp_i_reg[22] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_9 ),
        .Q(tstamp[21]),
        .R(out));
  FDRE \tstamp_i_reg[23] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_8 ),
        .Q(tstamp[22]),
        .R(out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tstamp_i_reg[23]_i_1 
       (.CI(\tstamp_i_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tstamp_i_reg[23]_i_1_n_0 ,\tstamp_i_reg[23]_i_1_n_1 ,\tstamp_i_reg[23]_i_1_n_2 ,\tstamp_i_reg[23]_i_1_n_3 ,\tstamp_i_reg[23]_i_1_n_4 ,\tstamp_i_reg[23]_i_1_n_5 ,\tstamp_i_reg[23]_i_1_n_6 ,\tstamp_i_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\tstamp_i_reg[23]_i_1_n_8 ,\tstamp_i_reg[23]_i_1_n_9 ,\tstamp_i_reg[23]_i_1_n_10 ,\tstamp_i_reg[23]_i_1_n_11 ,\tstamp_i_reg[23]_i_1_n_12 ,\tstamp_i_reg[23]_i_1_n_13 ,\tstamp_i_reg[23]_i_1_n_14 ,\tstamp_i_reg[23]_i_1_n_15 }),
        .S({\tstamp_i[23]_i_2_n_0 ,\tstamp_i[23]_i_3_n_0 ,\tstamp_i[23]_i_4_n_0 ,\tstamp_i[23]_i_5_n_0 ,\tstamp_i[23]_i_6_n_0 ,\tstamp_i[23]_i_7_n_0 ,\tstamp_i[23]_i_8_n_0 ,\tstamp_i[23]_i_9_n_0 }));
  FDRE \tstamp_i_reg[24] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_15 ),
        .Q(tstamp[23]),
        .R(out));
  FDRE \tstamp_i_reg[25] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_14 ),
        .Q(tstamp[24]),
        .R(out));
  FDRE \tstamp_i_reg[26] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_13 ),
        .Q(tstamp[25]),
        .R(out));
  FDRE \tstamp_i_reg[27] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_12 ),
        .Q(tstamp[26]),
        .R(out));
  FDRE \tstamp_i_reg[28] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_11 ),
        .Q(tstamp[27]),
        .R(out));
  FDRE \tstamp_i_reg[29] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_10 ),
        .Q(tstamp[28]),
        .R(out));
  FDRE \tstamp_i_reg[2] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_13 ),
        .Q(tstamp[1]),
        .R(out));
  FDRE \tstamp_i_reg[30] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_9 ),
        .Q(tstamp[29]),
        .R(out));
  FDRE \tstamp_i_reg[31] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_8 ),
        .Q(tstamp[30]),
        .R(out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tstamp_i_reg[31]_i_1 
       (.CI(\tstamp_i_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tstamp_i_reg[31]_i_1_n_0 ,\tstamp_i_reg[31]_i_1_n_1 ,\tstamp_i_reg[31]_i_1_n_2 ,\tstamp_i_reg[31]_i_1_n_3 ,\tstamp_i_reg[31]_i_1_n_4 ,\tstamp_i_reg[31]_i_1_n_5 ,\tstamp_i_reg[31]_i_1_n_6 ,\tstamp_i_reg[31]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\tstamp_i_reg[31]_i_1_n_8 ,\tstamp_i_reg[31]_i_1_n_9 ,\tstamp_i_reg[31]_i_1_n_10 ,\tstamp_i_reg[31]_i_1_n_11 ,\tstamp_i_reg[31]_i_1_n_12 ,\tstamp_i_reg[31]_i_1_n_13 ,\tstamp_i_reg[31]_i_1_n_14 ,\tstamp_i_reg[31]_i_1_n_15 }),
        .S({\tstamp_i[31]_i_2_n_0 ,\tstamp_i[31]_i_3_n_0 ,\tstamp_i[31]_i_4_n_0 ,\tstamp_i[31]_i_5_n_0 ,\tstamp_i[31]_i_6_n_0 ,\tstamp_i[31]_i_7_n_0 ,\tstamp_i[31]_i_8_n_0 ,\tstamp_i[31]_i_9_n_0 }));
  FDRE \tstamp_i_reg[32] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_15 ),
        .Q(tstamp[31]),
        .R(out));
  FDRE \tstamp_i_reg[33] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_14 ),
        .Q(tstamp[32]),
        .R(out));
  FDRE \tstamp_i_reg[34] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_13 ),
        .Q(tstamp[33]),
        .R(out));
  FDRE \tstamp_i_reg[35] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_12 ),
        .Q(tstamp[34]),
        .R(out));
  FDRE \tstamp_i_reg[36] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_11 ),
        .Q(tstamp[35]),
        .R(out));
  FDRE \tstamp_i_reg[37] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_10 ),
        .Q(tstamp[36]),
        .R(out));
  FDRE \tstamp_i_reg[38] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_9 ),
        .Q(tstamp[37]),
        .R(out));
  FDRE \tstamp_i_reg[39] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_8 ),
        .Q(tstamp[38]),
        .R(out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tstamp_i_reg[39]_i_1 
       (.CI(\tstamp_i_reg[31]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tstamp_i_reg[39]_i_1_n_0 ,\tstamp_i_reg[39]_i_1_n_1 ,\tstamp_i_reg[39]_i_1_n_2 ,\tstamp_i_reg[39]_i_1_n_3 ,\tstamp_i_reg[39]_i_1_n_4 ,\tstamp_i_reg[39]_i_1_n_5 ,\tstamp_i_reg[39]_i_1_n_6 ,\tstamp_i_reg[39]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\tstamp_i_reg[39]_i_1_n_8 ,\tstamp_i_reg[39]_i_1_n_9 ,\tstamp_i_reg[39]_i_1_n_10 ,\tstamp_i_reg[39]_i_1_n_11 ,\tstamp_i_reg[39]_i_1_n_12 ,\tstamp_i_reg[39]_i_1_n_13 ,\tstamp_i_reg[39]_i_1_n_14 ,\tstamp_i_reg[39]_i_1_n_15 }),
        .S({\tstamp_i[39]_i_2_n_0 ,\tstamp_i[39]_i_3_n_0 ,\tstamp_i[39]_i_4_n_0 ,\tstamp_i[39]_i_5_n_0 ,\tstamp_i[39]_i_6_n_0 ,\tstamp_i[39]_i_7_n_0 ,\tstamp_i[39]_i_8_n_0 ,\tstamp_i[39]_i_9_n_0 }));
  FDRE \tstamp_i_reg[3] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_12 ),
        .Q(tstamp[2]),
        .R(out));
  FDRE \tstamp_i_reg[40] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_15 ),
        .Q(tstamp[39]),
        .R(out));
  FDRE \tstamp_i_reg[41] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_14 ),
        .Q(tstamp[40]),
        .R(out));
  FDRE \tstamp_i_reg[42] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_13 ),
        .Q(tstamp[41]),
        .R(out));
  FDRE \tstamp_i_reg[43] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_12 ),
        .Q(tstamp[42]),
        .R(out));
  FDRE \tstamp_i_reg[44] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_11 ),
        .Q(tstamp[43]),
        .R(out));
  FDRE \tstamp_i_reg[45] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_10 ),
        .Q(tstamp[44]),
        .R(out));
  FDRE \tstamp_i_reg[46] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_9 ),
        .Q(tstamp[45]),
        .R(out));
  FDRE \tstamp_i_reg[47] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_8 ),
        .Q(tstamp[46]),
        .R(out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tstamp_i_reg[47]_i_1 
       (.CI(\tstamp_i_reg[39]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tstamp_i_reg[47]_i_1_n_0 ,\tstamp_i_reg[47]_i_1_n_1 ,\tstamp_i_reg[47]_i_1_n_2 ,\tstamp_i_reg[47]_i_1_n_3 ,\tstamp_i_reg[47]_i_1_n_4 ,\tstamp_i_reg[47]_i_1_n_5 ,\tstamp_i_reg[47]_i_1_n_6 ,\tstamp_i_reg[47]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\tstamp_i_reg[47]_i_1_n_8 ,\tstamp_i_reg[47]_i_1_n_9 ,\tstamp_i_reg[47]_i_1_n_10 ,\tstamp_i_reg[47]_i_1_n_11 ,\tstamp_i_reg[47]_i_1_n_12 ,\tstamp_i_reg[47]_i_1_n_13 ,\tstamp_i_reg[47]_i_1_n_14 ,\tstamp_i_reg[47]_i_1_n_15 }),
        .S({\tstamp_i[47]_i_2_n_0 ,\tstamp_i[47]_i_3_n_0 ,\tstamp_i[47]_i_4_n_0 ,\tstamp_i[47]_i_5_n_0 ,\tstamp_i[47]_i_6_n_0 ,\tstamp_i[47]_i_7_n_0 ,\tstamp_i[47]_i_8_n_0 ,\tstamp_i[47]_i_9_n_0 }));
  FDRE \tstamp_i_reg[48] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_15 ),
        .Q(tstamp[47]),
        .R(out));
  FDRE \tstamp_i_reg[49] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_14 ),
        .Q(tstamp[48]),
        .R(out));
  FDRE \tstamp_i_reg[4] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_11 ),
        .Q(tstamp[3]),
        .R(out));
  FDRE \tstamp_i_reg[50] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_13 ),
        .Q(tstamp[49]),
        .R(out));
  FDRE \tstamp_i_reg[51] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_12 ),
        .Q(tstamp[50]),
        .R(out));
  FDRE \tstamp_i_reg[52] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_11 ),
        .Q(tstamp[51]),
        .R(out));
  FDRE \tstamp_i_reg[53] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_10 ),
        .Q(tstamp[52]),
        .R(out));
  FDRE \tstamp_i_reg[54] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_9 ),
        .Q(tstamp[53]),
        .R(out));
  FDRE \tstamp_i_reg[55] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_8 ),
        .Q(tstamp[54]),
        .R(out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tstamp_i_reg[55]_i_1 
       (.CI(\tstamp_i_reg[47]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tstamp_i_reg[55]_i_1_n_0 ,\tstamp_i_reg[55]_i_1_n_1 ,\tstamp_i_reg[55]_i_1_n_2 ,\tstamp_i_reg[55]_i_1_n_3 ,\tstamp_i_reg[55]_i_1_n_4 ,\tstamp_i_reg[55]_i_1_n_5 ,\tstamp_i_reg[55]_i_1_n_6 ,\tstamp_i_reg[55]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\tstamp_i_reg[55]_i_1_n_8 ,\tstamp_i_reg[55]_i_1_n_9 ,\tstamp_i_reg[55]_i_1_n_10 ,\tstamp_i_reg[55]_i_1_n_11 ,\tstamp_i_reg[55]_i_1_n_12 ,\tstamp_i_reg[55]_i_1_n_13 ,\tstamp_i_reg[55]_i_1_n_14 ,\tstamp_i_reg[55]_i_1_n_15 }),
        .S({\tstamp_i[55]_i_2_n_0 ,\tstamp_i[55]_i_3_n_0 ,\tstamp_i[55]_i_4_n_0 ,\tstamp_i[55]_i_5_n_0 ,\tstamp_i[55]_i_6_n_0 ,\tstamp_i[55]_i_7_n_0 ,\tstamp_i[55]_i_8_n_0 ,\tstamp_i[55]_i_9_n_0 }));
  FDRE \tstamp_i_reg[56] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_15 ),
        .Q(tstamp[55]),
        .R(out));
  FDRE \tstamp_i_reg[57] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_14 ),
        .Q(tstamp[56]),
        .R(out));
  FDRE \tstamp_i_reg[58] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_13 ),
        .Q(tstamp[57]),
        .R(out));
  FDRE \tstamp_i_reg[59] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_12 ),
        .Q(tstamp[58]),
        .R(out));
  FDRE \tstamp_i_reg[5] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_10 ),
        .Q(tstamp[4]),
        .R(out));
  FDRE \tstamp_i_reg[60] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_11 ),
        .Q(tstamp[59]),
        .R(out));
  FDRE \tstamp_i_reg[61] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_10 ),
        .Q(tstamp[60]),
        .R(out));
  FDRE \tstamp_i_reg[62] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_9 ),
        .Q(tstamp[61]),
        .R(out));
  FDRE \tstamp_i_reg[63] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_8 ),
        .Q(tstamp[62]),
        .R(out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tstamp_i_reg[63]_i_2 
       (.CI(\tstamp_i_reg[55]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tstamp_i_reg[63]_i_2_CO_UNCONNECTED [7],\tstamp_i_reg[63]_i_2_n_1 ,\tstamp_i_reg[63]_i_2_n_2 ,\tstamp_i_reg[63]_i_2_n_3 ,\tstamp_i_reg[63]_i_2_n_4 ,\tstamp_i_reg[63]_i_2_n_5 ,\tstamp_i_reg[63]_i_2_n_6 ,\tstamp_i_reg[63]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\tstamp_i_reg[63]_i_2_n_8 ,\tstamp_i_reg[63]_i_2_n_9 ,\tstamp_i_reg[63]_i_2_n_10 ,\tstamp_i_reg[63]_i_2_n_11 ,\tstamp_i_reg[63]_i_2_n_12 ,\tstamp_i_reg[63]_i_2_n_13 ,\tstamp_i_reg[63]_i_2_n_14 ,\tstamp_i_reg[63]_i_2_n_15 }),
        .S({\tstamp_i[63]_i_3_n_0 ,\tstamp_i[63]_i_4_n_0 ,\tstamp_i[63]_i_5_n_0 ,\tstamp_i[63]_i_6_n_0 ,\tstamp_i[63]_i_7_n_0 ,\tstamp_i[63]_i_8_n_0 ,\tstamp_i[63]_i_9_n_0 ,\tstamp_i[63]_i_10_n_0 }));
  FDRE \tstamp_i_reg[6] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_9 ),
        .Q(tstamp[5]),
        .R(out));
  FDRE \tstamp_i_reg[7] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_8 ),
        .Q(tstamp[6]),
        .R(out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tstamp_i_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\tstamp_i_reg[7]_i_1_n_0 ,\tstamp_i_reg[7]_i_1_n_1 ,\tstamp_i_reg[7]_i_1_n_2 ,\tstamp_i_reg[7]_i_1_n_3 ,\tstamp_i_reg[7]_i_1_n_4 ,\tstamp_i_reg[7]_i_1_n_5 ,\tstamp_i_reg[7]_i_1_n_6 ,\tstamp_i_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\tstamp_i[7]_i_2_n_0 }),
        .O({\tstamp_i_reg[7]_i_1_n_8 ,\tstamp_i_reg[7]_i_1_n_9 ,\tstamp_i_reg[7]_i_1_n_10 ,\tstamp_i_reg[7]_i_1_n_11 ,\tstamp_i_reg[7]_i_1_n_12 ,\tstamp_i_reg[7]_i_1_n_13 ,\tstamp_i_reg[7]_i_1_n_14 ,\tstamp_i_reg[7]_i_1_n_15 }),
        .S({\tstamp_i[7]_i_3_n_0 ,\tstamp_i[7]_i_4_n_0 ,\tstamp_i[7]_i_5_n_0 ,\tstamp_i[7]_i_6_n_0 ,\tstamp_i[7]_i_7_n_0 ,\tstamp_i[7]_i_8_n_0 ,\tstamp_i[7]_i_9_n_0 ,\tstamp_i[7]_i_10_n_0 }));
  FDRE \tstamp_i_reg[8] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_15 ),
        .Q(tstamp[7]),
        .R(out));
  FDRE \tstamp_i_reg[9] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_14 ),
        .Q(tstamp[8]),
        .R(out));
endmodule

(* ORIG_REF_NAME = "pdts_tx" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_tx
   (s_ok_reg_0,
    active0,
    E,
    d,
    k,
    \FSM_sequential_state_reg[2]_0 ,
    clk,
    out,
    src_reg,
    active,
    src,
    stbo,
    Q,
    txphy_i_7,
    s_first,
    s_stb,
    \lfsr_q_reg[0] ,
    \acmd_out[d]1 ,
    \lfsr_q_reg[8] ,
    addr,
    \acmdw[last] ,
    SR);
  output s_ok_reg_0;
  output active0;
  output [0:0]E;
  output [7:0]d;
  output k;
  output [0:0]\FSM_sequential_state_reg[2]_0 ;
  input clk;
  input [0:0]out;
  input src_reg;
  input active;
  input src;
  input stbo;
  input [7:0]Q;
  input txphy_i_7;
  input s_first;
  input s_stb;
  input \lfsr_q_reg[0] ;
  input \acmd_out[d]1 ;
  input [7:0]\lfsr_q_reg[8] ;
  input [7:0]addr;
  input \acmdw[last] ;
  input [0:0]SR;

  wire [0:0]E;
  wire \FSM_sequential_state[2]_i_11_n_0 ;
  wire \FSM_sequential_state[2]_i_12_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire [0:0]\FSM_sequential_state_reg[2]_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \acmd_out[d]1 ;
  wire \acmdw[last] ;
  wire active;
  wire active0;
  wire active_i_2_n_0;
  wire [7:0]actr_i;
  wire \actr_i[1]_i_1_n_0 ;
  wire \actr_i[2]_i_1_n_0 ;
  wire \actr_i[3]_i_1_n_0 ;
  wire \actr_i[4]_i_1_n_0 ;
  wire \actr_i[5]_i_1_n_0 ;
  wire \actr_i[6]_i_1_n_0 ;
  wire \actr_i[7]_i_2_n_0 ;
  wire \actr_i[7]_i_3_n_0 ;
  wire [7:0]addr;
  wire cksum_n_9;
  wire clk;
  wire [7:0]d;
  wire icsum0;
  wire k;
  wire \lfsr_q_reg[0] ;
  wire [7:0]\lfsr_q_reg[8] ;
  wire [0:0]out;
  wire p_0_in5_in;
  wire p_8_in;
  wire [3:0]plusOp__5;
  wire [3:0]plusOp__6;
  wire s_first;
  wire s_ok;
  wire s_ok_i_1_n_0;
  wire s_ok_reg_0;
  wire s_stb;
  wire [3:0]sctr_reg;
  wire smode__1;
  wire smode_r;
  wire smode_r_i_1_n_0;
  wire \spctr[3]_i_2_n_0 ;
  wire [3:0]spctr_reg;
  wire src;
  wire src_reg;
  wire [2:0]state__0;
  wire [2:0]state__1;
  wire state__14;
  wire stbo;
  wire [7:0]sw;
  wire sw0;
  wire \sw[7]_i_1_n_0 ;
  wire trans;
  wire trans_i_1_n_0;
  wire trans_reg_n_0;
  wire txphy_i_11_n_0;
  wire txphy_i_12_n_0;
  wire txphy_i_19_n_0;
  wire txphy_i_23_n_0;
  wire txphy_i_7;
  wire \w[7]_i_2_n_0 ;

  LUT4 #(
    .INIT(16'h225F)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\acmdw[last] ),
        .I3(state__0[2]),
        .O(state__1[0]));
  LUT4 #(
    .INIT(16'h0310)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\acmdw[last] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .O(state__1[1]));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(smode__1),
        .I1(stbo),
        .I2(state__14),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \FSM_sequential_state[2]_i_11 
       (.I0(actr_i[5]),
        .I1(actr_i[6]),
        .I2(actr_i[7]),
        .I3(trans_reg_n_0),
        .I4(actr_i[4]),
        .O(\FSM_sequential_state[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \FSM_sequential_state[2]_i_12 
       (.I0(actr_i[3]),
        .I1(trans_reg_n_0),
        .I2(actr_i[2]),
        .O(\FSM_sequential_state[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(state__1[2]));
  LUT6 #(
    .INIT(64'hBFAFBFAABAAFBAAA)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\FSM_sequential_state[2]_i_6_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(\FSM_sequential_state[2]_i_7_n_0 ),
        .I5(\FSM_sequential_state[2]_i_8_n_0 ),
        .O(state__14));
  LUT5 #(
    .INIT(32'h40404440)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\acmdw[last] ),
        .I3(\FSM_sequential_state[2]_i_9_n_0 ),
        .I4(cksum_n_9),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\FSM_sequential_state[2]_i_11_n_0 ),
        .I1(actr_i[1]),
        .I2(trans_reg_n_0),
        .I3(actr_i[0]),
        .I4(\FSM_sequential_state[2]_i_12_n_0 ),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCCCCCCD)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(actr_i[3]),
        .I1(trans_reg_n_0),
        .I2(actr_i[2]),
        .I3(actr_i[1]),
        .I4(actr_i[0]),
        .I5(\FSM_sequential_state[2]_i_11_n_0 ),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(actr_i[1]),
        .I1(actr_i[4]),
        .I2(actr_i[0]),
        .I3(actr_i[2]),
        .I4(trans_reg_n_0),
        .I5(actr_i[3]),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "start:110,st_k:001,st_a:101,st_s:100,st_d:010,st_e:011,st_c:000" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .D(state__1[0]),
        .Q(state__0[0]),
        .R(out));
  (* FSM_ENCODED_STATES = "start:110,st_k:001,st_a:101,st_s:100,st_d:010,st_e:011,st_c:000" *) 
  FDSE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .D(state__1[1]),
        .Q(state__0[1]),
        .S(out));
  (* FSM_ENCODED_STATES = "start:110,st_k:001,st_a:101,st_s:100,st_d:010,st_e:011,st_c:000" *) 
  FDSE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .D(state__1[2]),
        .Q(state__0[2]),
        .S(out));
  LUT6 #(
    .INIT(64'h7F0F77007F007F00)) 
    active_i_1
       (.I0(src),
        .I1(active_i_2_n_0),
        .I2(smode_r),
        .I3(active),
        .I4(src_reg),
        .I5(s_ok),
        .O(active0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    active_i_2
       (.I0(stbo),
        .I1(spctr_reg[0]),
        .I2(spctr_reg[2]),
        .I3(spctr_reg[1]),
        .I4(spctr_reg[3]),
        .O(active_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \actr_i[0]_i_1 
       (.I0(trans_reg_n_0),
        .I1(actr_i[0]),
        .O(icsum0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \actr_i[1]_i_1 
       (.I0(actr_i[0]),
        .I1(trans_reg_n_0),
        .I2(actr_i[1]),
        .O(\actr_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \actr_i[2]_i_1 
       (.I0(actr_i[0]),
        .I1(actr_i[1]),
        .I2(trans_reg_n_0),
        .I3(actr_i[2]),
        .O(\actr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \actr_i[3]_i_1 
       (.I0(actr_i[1]),
        .I1(actr_i[0]),
        .I2(actr_i[2]),
        .I3(trans_reg_n_0),
        .I4(actr_i[3]),
        .O(\actr_i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \actr_i[4]_i_1 
       (.I0(actr_i[2]),
        .I1(actr_i[0]),
        .I2(actr_i[1]),
        .I3(actr_i[3]),
        .I4(trans_reg_n_0),
        .I5(actr_i[4]),
        .O(\actr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \actr_i[5]_i_1 
       (.I0(\actr_i[7]_i_3_n_0 ),
        .I1(trans_reg_n_0),
        .I2(actr_i[5]),
        .O(\actr_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \actr_i[6]_i_1 
       (.I0(\actr_i[7]_i_3_n_0 ),
        .I1(actr_i[5]),
        .I2(trans_reg_n_0),
        .I3(actr_i[6]),
        .O(\actr_i[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \actr_i[7]_i_1 
       (.I0(stbo),
        .I1(smode__1),
        .O(p_8_in));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \actr_i[7]_i_2 
       (.I0(actr_i[5]),
        .I1(\actr_i[7]_i_3_n_0 ),
        .I2(actr_i[6]),
        .I3(trans_reg_n_0),
        .I4(actr_i[7]),
        .O(\actr_i[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \actr_i[7]_i_3 
       (.I0(actr_i[4]),
        .I1(actr_i[2]),
        .I2(actr_i[0]),
        .I3(trans_reg_n_0),
        .I4(actr_i[1]),
        .I5(actr_i[3]),
        .O(\actr_i[7]_i_3_n_0 ));
  FDRE \actr_i_reg[0] 
       (.C(clk),
        .CE(p_8_in),
        .D(icsum0),
        .Q(actr_i[0]),
        .R(1'b0));
  FDRE \actr_i_reg[1] 
       (.C(clk),
        .CE(p_8_in),
        .D(\actr_i[1]_i_1_n_0 ),
        .Q(actr_i[1]),
        .R(1'b0));
  FDRE \actr_i_reg[2] 
       (.C(clk),
        .CE(p_8_in),
        .D(\actr_i[2]_i_1_n_0 ),
        .Q(actr_i[2]),
        .R(1'b0));
  FDRE \actr_i_reg[3] 
       (.C(clk),
        .CE(p_8_in),
        .D(\actr_i[3]_i_1_n_0 ),
        .Q(actr_i[3]),
        .R(1'b0));
  FDRE \actr_i_reg[4] 
       (.C(clk),
        .CE(p_8_in),
        .D(\actr_i[4]_i_1_n_0 ),
        .Q(actr_i[4]),
        .R(1'b0));
  FDRE \actr_i_reg[5] 
       (.C(clk),
        .CE(p_8_in),
        .D(\actr_i[5]_i_1_n_0 ),
        .Q(actr_i[5]),
        .R(1'b0));
  FDRE \actr_i_reg[6] 
       (.C(clk),
        .CE(p_8_in),
        .D(\actr_i[6]_i_1_n_0 ),
        .Q(actr_i[6]),
        .R(1'b0));
  FDRE \actr_i_reg[7] 
       (.C(clk),
        .CE(p_8_in),
        .D(\actr_i[7]_i_2_n_0 ),
        .Q(actr_i[7]),
        .R(1'b0));
  design_1_pdts_endpoint_stdlog_0_0_pdts_cksum cksum
       (.Q(Q[7:1]),
        .SS(p_0_in5_in),
        .\acmd_out[d]1 (\acmd_out[d]1 ),
        .active(active),
        .\actr_i_reg[7] (cksum_n_9),
        .addr(addr),
        .clk(clk),
        .d(d),
        .d_tx_inferred_i_1(txphy_i_19_n_0),
        .d_tx_inferred_i_7(txphy_i_11_n_0),
        .d_tx_inferred_i_7_0(txphy_i_12_n_0),
        .\lfsr_q_reg[0] (\lfsr_q_reg[0] ),
        .\lfsr_q_reg[0]_0 (state__0),
        .\lfsr_q_reg[8] (\lfsr_q_reg[8] ),
        .s_first(s_first),
        .s_ok(s_ok),
        .s_stb(s_stb),
        .smode__1(smode__1),
        .smode_r(smode_r),
        .stbo(stbo),
        .sw(sw[7:1]),
        .txphy_i_31(actr_i),
        .txphy_i_31_0(trans_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00240000)) 
    \r[7]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(smode__1),
        .I4(stbo),
        .O(\FSM_sequential_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    s_ok_i_1
       (.I0(stbo),
        .I1(smode__1),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(s_ok),
        .O(s_ok_i_1_n_0));
  FDRE s_ok_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_ok_i_1_n_0),
        .Q(s_ok),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sctr[0]_i_1__1 
       (.I0(sctr_reg[0]),
        .O(plusOp__6[0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sctr[1]_i_1__0 
       (.I0(sctr_reg[0]),
        .I1(sctr_reg[1]),
        .O(plusOp__6[1]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sctr[2]_i_1__0 
       (.I0(sctr_reg[0]),
        .I1(sctr_reg[1]),
        .I2(sctr_reg[2]),
        .O(plusOp__6[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sctr[3]_i_1__0 
       (.I0(sctr_reg[1]),
        .I1(sctr_reg[0]),
        .I2(sctr_reg[2]),
        .I3(sctr_reg[3]),
        .O(plusOp__6[3]));
  FDRE \sctr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp__6[0]),
        .Q(sctr_reg[0]),
        .R(stbo));
  FDRE \sctr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp__6[1]),
        .Q(sctr_reg[1]),
        .R(stbo));
  FDRE \sctr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp__6[2]),
        .Q(sctr_reg[2]),
        .R(stbo));
  FDRE \sctr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp__6[3]),
        .Q(sctr_reg[3]),
        .R(stbo));
  LUT4 #(
    .INIT(16'h0222)) 
    smode_r_i_1
       (.I0(smode__1),
        .I1(out),
        .I2(src),
        .I3(stbo),
        .O(smode_r_i_1_n_0));
  FDRE smode_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(smode_r_i_1_n_0),
        .Q(smode_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \spctr[0]_i_1 
       (.I0(spctr_reg[0]),
        .O(plusOp__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spctr[1]_i_1 
       (.I0(spctr_reg[0]),
        .I1(spctr_reg[1]),
        .O(plusOp__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \spctr[2]_i_1 
       (.I0(spctr_reg[0]),
        .I1(spctr_reg[1]),
        .I2(spctr_reg[2]),
        .O(plusOp__5[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \spctr[3]_i_2 
       (.I0(stbo),
        .I1(smode__1),
        .O(\spctr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \spctr[3]_i_3 
       (.I0(spctr_reg[1]),
        .I1(spctr_reg[0]),
        .I2(spctr_reg[2]),
        .I3(spctr_reg[3]),
        .O(plusOp__5[3]));
  FDRE \spctr_reg[0] 
       (.C(clk),
        .CE(\spctr[3]_i_2_n_0 ),
        .D(plusOp__5[0]),
        .Q(spctr_reg[0]),
        .R(SR));
  FDRE \spctr_reg[1] 
       (.C(clk),
        .CE(\spctr[3]_i_2_n_0 ),
        .D(plusOp__5[1]),
        .Q(spctr_reg[1]),
        .R(SR));
  FDRE \spctr_reg[2] 
       (.C(clk),
        .CE(\spctr[3]_i_2_n_0 ),
        .D(plusOp__5[2]),
        .Q(spctr_reg[2]),
        .R(SR));
  FDRE \spctr_reg[3] 
       (.C(clk),
        .CE(\spctr[3]_i_2_n_0 ),
        .D(plusOp__5[3]),
        .Q(spctr_reg[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h5555777FAA008880)) 
    src_i_1
       (.I0(active_i_2_n_0),
        .I1(s_ok),
        .I2(src_reg),
        .I3(active),
        .I4(smode_r),
        .I5(src),
        .O(s_ok_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \sw[3]_i_1 
       (.I0(smode__1),
        .I1(smode_r),
        .O(sw0));
  LUT3 #(
    .INIT(8'h04)) 
    \sw[7]_i_1 
       (.I0(smode_r),
        .I1(smode__1),
        .I2(src),
        .O(\sw[7]_i_1_n_0 ));
  FDRE \sw_reg[0] 
       (.C(clk),
        .CE(sw0),
        .D(sctr_reg[0]),
        .Q(sw[0]),
        .R(1'b0));
  FDRE \sw_reg[1] 
       (.C(clk),
        .CE(sw0),
        .D(sctr_reg[1]),
        .Q(sw[1]),
        .R(1'b0));
  FDRE \sw_reg[2] 
       (.C(clk),
        .CE(sw0),
        .D(sctr_reg[2]),
        .Q(sw[2]),
        .R(1'b0));
  FDRE \sw_reg[3] 
       (.C(clk),
        .CE(sw0),
        .D(sctr_reg[3]),
        .Q(sw[3]),
        .R(1'b0));
  FDRE \sw_reg[4] 
       (.C(clk),
        .CE(sw0),
        .D(Q[4]),
        .Q(sw[4]),
        .R(\sw[7]_i_1_n_0 ));
  FDRE \sw_reg[5] 
       (.C(clk),
        .CE(sw0),
        .D(Q[5]),
        .Q(sw[5]),
        .R(\sw[7]_i_1_n_0 ));
  FDRE \sw_reg[6] 
       (.C(clk),
        .CE(sw0),
        .D(Q[6]),
        .Q(sw[6]),
        .R(\sw[7]_i_1_n_0 ));
  FDRE \sw_reg[7] 
       (.C(clk),
        .CE(sw0),
        .D(Q[7]),
        .Q(sw[7]),
        .R(\sw[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    trans_i_1
       (.I0(trans),
        .I1(smode__1),
        .I2(stbo),
        .I3(out),
        .I4(trans_reg_n_0),
        .O(trans_i_1_n_0));
  LUT5 #(
    .INIT(32'h30BB30B8)) 
    trans_i_2
       (.I0(\FSM_sequential_state[2]_i_8_n_0 ),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[2]_i_6_n_0 ),
        .I3(state__0[1]),
        .I4(\FSM_sequential_state[2]_i_7_n_0 ),
        .O(trans));
  FDRE trans_reg
       (.C(clk),
        .CE(1'b1),
        .D(trans_i_1_n_0),
        .Q(trans_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5444444400000000)) 
    txphy_i_11
       (.I0(\w[7]_i_2_n_0 ),
        .I1(txphy_i_23_n_0),
        .I2(txphy_i_7),
        .I3(s_first),
        .I4(s_ok),
        .I5(spctr_reg[0]),
        .O(txphy_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    txphy_i_12
       (.I0(spctr_reg[3]),
        .I1(spctr_reg[1]),
        .I2(spctr_reg[2]),
        .I3(src),
        .O(txphy_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hF0DD00DD)) 
    txphy_i_19
       (.I0(spctr_reg[0]),
        .I1(sw[0]),
        .I2(Q[0]),
        .I3(\w[7]_i_2_n_0 ),
        .I4(src),
        .O(txphy_i_19_n_0));
  LUT3 #(
    .INIT(8'hF8)) 
    txphy_i_23
       (.I0(active),
        .I1(s_ok),
        .I2(smode_r),
        .O(txphy_i_23_n_0));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    txphy_i_9
       (.I0(spctr_reg[3]),
        .I1(spctr_reg[1]),
        .I2(spctr_reg[2]),
        .I3(spctr_reg[0]),
        .I4(smode__1),
        .I5(p_0_in5_in),
        .O(k));
  LUT6 #(
    .INIT(64'hFEAAAAAAAAAAAAAA)) 
    \w[7]_i_1 
       (.I0(src_reg),
        .I1(\w[7]_i_2_n_0 ),
        .I2(spctr_reg[0]),
        .I3(stbo),
        .I4(smode__1),
        .I5(src),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \w[7]_i_2 
       (.I0(spctr_reg[2]),
        .I1(spctr_reg[1]),
        .I2(spctr_reg[3]),
        .O(\w[7]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "pdts_tx_phy" *) (* keep_hierarchy = "soft" *) 
module design_1_pdts_endpoint_stdlog_0_0_pdts_tx_phy
   (clk,
    rst,
    d,
    k,
    stb,
    txclk,
    q);
  input clk;
  input rst;
  input [7:0]d;
  (* mark_debug = "true" *) input k;
  input stb;
  input txclk;
  output q;

  wire clk;
  wire [7:0]d;
  (* MARK_DEBUG *) wire [7:0]d_tx;
  (* MARK_DEBUG *) wire k;
  wire q;
  wire rst;
  wire rsta;
  wire s;
  wire stb;
  wire [0:0]t;
  wire [4:1]t__0;
  wire txclk;
  (* MARK_DEBUG *) wire [9:0]w;
  wire [9:1]wb;
  wire \wb[0]_i_1_n_0 ;
  wire \wb[1]_i_1_n_0 ;
  wire \wb[2]_i_1_n_0 ;
  wire \wb[3]_i_1_n_0 ;
  wire \wb[4]_i_1_n_0 ;
  wire \wb[5]_i_1_n_0 ;
  wire \wb[6]_i_1_n_0 ;
  wire \wb[7]_i_1_n_0 ;
  wire \wb[8]_i_1_n_0 ;
  wire \wb[9]_i_1_n_0 ;
  wire [9:0]wc;

  LUT3 #(
    .INIT(8'h74)) 
    d_tx_inferred_i_1
       (.I0(d[0]),
        .I1(k),
        .I2(d[7]),
        .O(d_tx[7]));
  LUT2 #(
    .INIT(4'h2)) 
    d_tx_inferred_i_2
       (.I0(d[6]),
        .I1(k),
        .O(d_tx[6]));
  LUT2 #(
    .INIT(4'hE)) 
    d_tx_inferred_i_3
       (.I0(k),
        .I1(d[5]),
        .O(d_tx[5]));
  LUT2 #(
    .INIT(4'hE)) 
    d_tx_inferred_i_4
       (.I0(k),
        .I1(d[4]),
        .O(d_tx[4]));
  LUT2 #(
    .INIT(4'hE)) 
    d_tx_inferred_i_5
       (.I0(k),
        .I1(d[3]),
        .O(d_tx[3]));
  LUT2 #(
    .INIT(4'hE)) 
    d_tx_inferred_i_6
       (.I0(k),
        .I1(d[2]),
        .O(d_tx[2]));
  LUT2 #(
    .INIT(4'h2)) 
    d_tx_inferred_i_7
       (.I0(d[1]),
        .I1(k),
        .O(d_tx[1]));
  LUT2 #(
    .INIT(4'h2)) 
    d_tx_inferred_i_8
       (.I0(d[0]),
        .I1(k),
        .O(d_tx[0]));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_pdts_endpoint_stdlog_0_0_pdts_enc8b10b enc
       (.clk(clk),
        .d(d_tx),
        .en(stb),
        .k(k),
        .q(w),
        .rst(rst));
  FDRE rsta_reg
       (.C(txclk),
        .CE(1'b1),
        .D(rst),
        .Q(rsta),
        .R(1'b0));
  FDRE s_reg
       (.C(clk),
        .CE(1'b1),
        .D(stb),
        .Q(s),
        .R(1'b0));
  FDSE \t_reg[0] 
       (.C(txclk),
        .CE(1'b1),
        .D(t__0[1]),
        .Q(t),
        .S(rsta));
  FDRE \t_reg[1] 
       (.C(txclk),
        .CE(1'b1),
        .D(t__0[2]),
        .Q(t__0[1]),
        .R(rsta));
  FDRE \t_reg[2] 
       (.C(txclk),
        .CE(1'b1),
        .D(t__0[3]),
        .Q(t__0[2]),
        .R(rsta));
  FDRE \t_reg[3] 
       (.C(txclk),
        .CE(1'b1),
        .D(t__0[4]),
        .Q(t__0[3]),
        .R(rsta));
  FDRE \t_reg[4] 
       (.C(txclk),
        .CE(1'b1),
        .D(t),
        .Q(t__0[4]),
        .R(rsta));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wb[0]_i_1 
       (.I0(wc[0]),
        .I1(s),
        .I2(t),
        .I3(wb[1]),
        .O(\wb[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wb[1]_i_1 
       (.I0(wc[1]),
        .I1(s),
        .I2(t),
        .I3(wb[2]),
        .O(\wb[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wb[2]_i_1 
       (.I0(wc[2]),
        .I1(s),
        .I2(t),
        .I3(wb[3]),
        .O(\wb[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wb[3]_i_1 
       (.I0(wc[3]),
        .I1(s),
        .I2(t),
        .I3(wb[4]),
        .O(\wb[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wb[4]_i_1 
       (.I0(wc[4]),
        .I1(s),
        .I2(t),
        .I3(wb[5]),
        .O(\wb[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wb[5]_i_1 
       (.I0(wc[5]),
        .I1(s),
        .I2(t),
        .I3(wb[6]),
        .O(\wb[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wb[6]_i_1 
       (.I0(wc[6]),
        .I1(s),
        .I2(t),
        .I3(wb[7]),
        .O(\wb[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wb[7]_i_1 
       (.I0(wc[7]),
        .I1(s),
        .I2(t),
        .I3(wb[8]),
        .O(\wb[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \wb[8]_i_1 
       (.I0(wc[8]),
        .I1(s),
        .I2(t),
        .I3(wb[9]),
        .O(\wb[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \wb[9]_i_1 
       (.I0(t),
        .I1(s),
        .I2(wc[9]),
        .O(\wb[9]_i_1_n_0 ));
  FDRE \wb_reg[0] 
       (.C(txclk),
        .CE(1'b1),
        .D(\wb[0]_i_1_n_0 ),
        .Q(q),
        .R(1'b0));
  FDRE \wb_reg[1] 
       (.C(txclk),
        .CE(1'b1),
        .D(\wb[1]_i_1_n_0 ),
        .Q(wb[1]),
        .R(1'b0));
  FDRE \wb_reg[2] 
       (.C(txclk),
        .CE(1'b1),
        .D(\wb[2]_i_1_n_0 ),
        .Q(wb[2]),
        .R(1'b0));
  FDRE \wb_reg[3] 
       (.C(txclk),
        .CE(1'b1),
        .D(\wb[3]_i_1_n_0 ),
        .Q(wb[3]),
        .R(1'b0));
  FDRE \wb_reg[4] 
       (.C(txclk),
        .CE(1'b1),
        .D(\wb[4]_i_1_n_0 ),
        .Q(wb[4]),
        .R(1'b0));
  FDRE \wb_reg[5] 
       (.C(txclk),
        .CE(1'b1),
        .D(\wb[5]_i_1_n_0 ),
        .Q(wb[5]),
        .R(1'b0));
  FDRE \wb_reg[6] 
       (.C(txclk),
        .CE(1'b1),
        .D(\wb[6]_i_1_n_0 ),
        .Q(wb[6]),
        .R(1'b0));
  FDRE \wb_reg[7] 
       (.C(txclk),
        .CE(1'b1),
        .D(\wb[7]_i_1_n_0 ),
        .Q(wb[7]),
        .R(1'b0));
  FDRE \wb_reg[8] 
       (.C(txclk),
        .CE(1'b1),
        .D(\wb[8]_i_1_n_0 ),
        .Q(wb[8]),
        .R(1'b0));
  FDRE \wb_reg[9] 
       (.C(txclk),
        .CE(1'b1),
        .D(\wb[9]_i_1_n_0 ),
        .Q(wb[9]),
        .R(1'b0));
  FDRE \wc_reg[0] 
       (.C(txclk),
        .CE(1'b1),
        .D(w[0]),
        .Q(wc[0]),
        .R(1'b0));
  FDRE \wc_reg[1] 
       (.C(txclk),
        .CE(1'b1),
        .D(w[1]),
        .Q(wc[1]),
        .R(1'b0));
  FDRE \wc_reg[2] 
       (.C(txclk),
        .CE(1'b1),
        .D(w[2]),
        .Q(wc[2]),
        .R(1'b0));
  FDRE \wc_reg[3] 
       (.C(txclk),
        .CE(1'b1),
        .D(w[3]),
        .Q(wc[3]),
        .R(1'b0));
  FDRE \wc_reg[4] 
       (.C(txclk),
        .CE(1'b1),
        .D(w[4]),
        .Q(wc[4]),
        .R(1'b0));
  FDRE \wc_reg[5] 
       (.C(txclk),
        .CE(1'b1),
        .D(w[5]),
        .Q(wc[5]),
        .R(1'b0));
  FDRE \wc_reg[6] 
       (.C(txclk),
        .CE(1'b1),
        .D(w[6]),
        .Q(wc[6]),
        .R(1'b0));
  FDRE \wc_reg[7] 
       (.C(txclk),
        .CE(1'b1),
        .D(w[7]),
        .Q(wc[7]),
        .R(1'b0));
  FDRE \wc_reg[8] 
       (.C(txclk),
        .CE(1'b1),
        .D(w[8]),
        .Q(wc[8]),
        .R(1'b0));
  FDRE \wc_reg[9] 
       (.C(txclk),
        .CE(1'b1),
        .D(w[9]),
        .Q(wc[9]),
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
