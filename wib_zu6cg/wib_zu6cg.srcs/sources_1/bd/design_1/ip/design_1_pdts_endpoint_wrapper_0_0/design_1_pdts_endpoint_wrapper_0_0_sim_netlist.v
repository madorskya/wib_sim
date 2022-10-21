// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Oct 21 12:58:34 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_pdts_endpoint_wrapper_0_0/design_1_pdts_endpoint_wrapper_0_0_sim_netlist.v
// Design      : design_1_pdts_endpoint_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pdts_endpoint_wrapper_0_0,pdts_endpoint_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pdts_endpoint_wrapper,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_pdts_endpoint_wrapper_0_0
   (sclk,
    srst,
    addr,
    tgrp,
    ts_clk_sel,
    rec_clk,
    rec_d,
    sfp_los,
    cdr_los,
    cdr_lol,
    pll_locked,
    stat,
    clk,
    clkx2,
    rst,
    rdy,
    sync,
    sync_stb,
    sync_first,
    tstamp,
    txd,
    tx_dis);
  input sclk;
  input srst;
  input [15:0]addr;
  input [1:0]tgrp;
  input ts_clk_sel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rec_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rec_clk, FREQ_HZ 312500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ts_rec_d_clk, INSERT_VIP 0" *) input rec_clk;
  input rec_d;
  input sfp_los;
  input cdr_los;
  input cdr_lol;
  input pll_locked;
  output [3:0]stat;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_pdts_endpoint_wrapper_0_0_clk, INSERT_VIP 0" *) output clk;
  output clkx2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output rst;
  output rdy;
  output [7:0]sync;
  output sync_stb;
  output sync_first;
  output [63:0]tstamp;
  output txd;
  output tx_dis;

  wire \<const0> ;
  wire [15:0]addr;
  wire clk;
  wire rdy;
  wire rec_clk;
  wire rec_d;
  wire rst;
  wire sclk;
  wire srst;
  wire [3:0]stat;
  wire [7:0]sync;
  wire sync_stb;
  wire ts_clk_sel;
  wire [63:0]tstamp;
  wire tx_dis;
  wire txd;

  assign clkx2 = \<const0> ;
  assign sync_first = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint_wrapper inst
       (.addr(addr),
        .clk(clk),
        .out(stat[3]),
        .rdy(rdy),
        .rec_clk(rec_clk),
        .rec_d(rec_d),
        .rst(rst),
        .sclk(sclk),
        .srst(srst),
        .stat(stat[2:0]),
        .sync(sync),
        .sync_stb(sync_stb),
        .ts_clk_sel(ts_clk_sel),
        .tstamp(tstamp),
        .tx_dis(tx_dis),
        .txd(txd));
endmodule

(* ORIG_REF_NAME = "outputlogic_crc16" *) 
module design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16
   (SS,
    D,
    stbo_reg,
    Q,
    stbo,
    \lfsr_q_reg[15]_0 ,
    in5,
    \lfsr_q_reg[1]_0 ,
    k,
    disp,
    \q_reg[0] ,
    \q[2]_i_2_0 ,
    \q_reg[3] ,
    \q_reg[1] ,
    \q_reg[3]_0 ,
    \q_reg[6] ,
    \q_reg[6]_0 ,
    \q_reg[6]_1 ,
    CLK);
  output [0:0]SS;
  output [9:0]D;
  output stbo_reg;
  input [2:0]Q;
  input stbo;
  input \lfsr_q_reg[15]_0 ;
  input [7:0]in5;
  input \lfsr_q_reg[1]_0 ;
  input k;
  input disp;
  input \q_reg[0] ;
  input \q[2]_i_2_0 ;
  input \q_reg[3] ;
  input \q_reg[1] ;
  input \q_reg[3]_0 ;
  input \q_reg[6] ;
  input \q_reg[6]_0 ;
  input [1:0]\q_reg[6]_1 ;
  input CLK;

  wire CLK;
  wire [9:0]D;
  wire [2:0]Q;
  wire [0:0]SS;
  wire [15:0]csum;
  wire dataOut34_out;
  wire disp;
  wire [7:0]in5;
  wire k;
  wire [15:0]lfsr_c;
  wire \lfsr_q[15]_i_2__0_n_0 ;
  wire \lfsr_q[15]_i_5__0_n_0 ;
  wire \lfsr_q[15]_i_6_n_0 ;
  wire \lfsr_q[15]_i_8_n_0 ;
  wire \lfsr_q[6]_i_2_n_0 ;
  wire \lfsr_q[8]_i_2_n_0 ;
  wire \lfsr_q[9]_i_2_n_0 ;
  wire \lfsr_q_reg[15]_0 ;
  wire \lfsr_q_reg[1]_0 ;
  wire \phy/enc/alt6__0 ;
  wire \phy/enc/dataOut10_out ;
  wire \phy/enc/dataOut112_out ;
  wire \phy/enc/dataOut122_out ;
  wire \phy/enc/dataOut15_out__1 ;
  wire \phy/enc/dataOut31_out__0 ;
  wire \phy/enc/dispOut0__0 ;
  wire \phy/enc/dispOut1055_out__0 ;
  wire \phy/enc/dispOut240_out ;
  wire \phy/enc/p_41_in ;
  wire \phy/enc/p_60_in ;
  wire \q[1]_i_4_n_0 ;
  wire \q[1]_i_6_n_0 ;
  wire \q[2]_i_2_0 ;
  wire \q[3]_i_4_n_0 ;
  wire \q[3]_i_7_n_0 ;
  wire \q[3]_i_9_n_0 ;
  wire \q[9]_i_11_n_0 ;
  wire \q[9]_i_12_n_0 ;
  wire \q[9]_i_15_n_0 ;
  wire \q[9]_i_17_n_0 ;
  wire \q[9]_i_9_n_0 ;
  wire [5:0]q_a__4;
  wire \q_reg[0] ;
  wire \q_reg[1] ;
  wire \q_reg[3] ;
  wire \q_reg[3]_0 ;
  wire \q_reg[6] ;
  wire \q_reg[6]_0 ;
  wire [1:0]\q_reg[6]_1 ;
  wire stbo;
  wire stbo_reg;
  wire [4:1]txd;
  wire [7:0]txd__0;

  LUT6 #(
    .INIT(64'h7C83FFFF7C830000)) 
    disp_i_1
       (.I0(txd__0[7]),
        .I1(txd__0[5]),
        .I2(txd__0[6]),
        .I3(\phy/enc/dispOut0__0 ),
        .I4(stbo),
        .I5(disp),
        .O(stbo_reg));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    disp_i_2
       (.I0(\phy/enc/p_41_in ),
        .I1(\phy/enc/dispOut240_out ),
        .I2(disp),
        .O(\phy/enc/dispOut0__0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[0]_i_1 
       (.I0(csum[8]),
        .I1(q_a__4[0]),
        .I2(\lfsr_q[15]_i_6_n_0 ),
        .I3(\lfsr_q[15]_i_5__0_n_0 ),
        .O(lfsr_c[0]));
  LUT3 #(
    .INIT(8'h02)) 
    \lfsr_q[15]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(SS));
  LUT4 #(
    .INIT(16'h2220)) 
    \lfsr_q[15]_i_2__0 
       (.I0(stbo),
        .I1(\lfsr_q_reg[15]_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\lfsr_q[15]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[15]_i_3 
       (.I0(q_a__4[0]),
        .I1(csum[8]),
        .I2(csum[7]),
        .I3(\lfsr_q[15]_i_5__0_n_0 ),
        .I4(\lfsr_q[15]_i_6_n_0 ),
        .O(lfsr_c[15]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \lfsr_q[15]_i_4__0 
       (.I0(in5[0]),
        .I1(\lfsr_q[15]_i_8_n_0 ),
        .I2(csum[0]),
        .I3(\lfsr_q_reg[1]_0 ),
        .I4(csum[8]),
        .I5(Q[0]),
        .O(q_a__4[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[15]_i_5__0 
       (.I0(q_a__4[5]),
        .I1(csum[13]),
        .I2(q_a__4[1]),
        .I3(csum[10]),
        .I4(q_a__4[2]),
        .I5(csum[9]),
        .O(\lfsr_q[15]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[15]_i_6 
       (.I0(csum[11]),
        .I1(q_a__4[3]),
        .I2(\lfsr_q[9]_i_2_n_0 ),
        .I3(\lfsr_q[6]_i_2_n_0 ),
        .I4(\lfsr_q[8]_i_2_n_0 ),
        .O(\lfsr_q[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \lfsr_q[15]_i_8 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\lfsr_q[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[1]_i_1__0 
       (.I0(csum[11]),
        .I1(q_a__4[3]),
        .I2(\lfsr_q[15]_i_5__0_n_0 ),
        .I3(\lfsr_q[8]_i_2_n_0 ),
        .I4(\lfsr_q[6]_i_2_n_0 ),
        .I5(\lfsr_q[9]_i_2_n_0 ),
        .O(lfsr_c[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[2]_i_1 
       (.I0(q_a__4[1]),
        .I1(csum[8]),
        .I2(csum[9]),
        .I3(q_a__4[0]),
        .O(lfsr_c[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[3]_i_1 
       (.I0(q_a__4[1]),
        .I1(csum[10]),
        .I2(csum[9]),
        .I3(q_a__4[2]),
        .O(lfsr_c[3]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \lfsr_q[3]_i_2 
       (.I0(in5[1]),
        .I1(\lfsr_q[15]_i_8_n_0 ),
        .I2(csum[1]),
        .I3(\lfsr_q_reg[1]_0 ),
        .I4(csum[9]),
        .I5(Q[0]),
        .O(q_a__4[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[4]_i_1__0 
       (.I0(csum[11]),
        .I1(q_a__4[3]),
        .I2(csum[10]),
        .I3(q_a__4[2]),
        .O(lfsr_c[4]));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8BBB8)) 
    \lfsr_q[4]_i_2 
       (.I0(in5[2]),
        .I1(\lfsr_q[15]_i_8_n_0 ),
        .I2(Q[0]),
        .I3(csum[2]),
        .I4(\lfsr_q_reg[1]_0 ),
        .I5(csum[10]),
        .O(q_a__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[5]_i_1__0 
       (.I0(csum[11]),
        .I1(q_a__4[3]),
        .I2(\lfsr_q[6]_i_2_n_0 ),
        .O(lfsr_c[5]));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8BBB8)) 
    \lfsr_q[5]_i_2 
       (.I0(in5[3]),
        .I1(\lfsr_q[15]_i_8_n_0 ),
        .I2(Q[0]),
        .I3(csum[3]),
        .I4(\lfsr_q_reg[1]_0 ),
        .I5(csum[11]),
        .O(q_a__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[6]_i_1__0 
       (.I0(q_a__4[5]),
        .I1(csum[13]),
        .I2(\lfsr_q[6]_i_2_n_0 ),
        .O(lfsr_c[6]));
  LUT6 #(
    .INIT(64'h44444447B8B8BBB8)) 
    \lfsr_q[6]_i_2 
       (.I0(in5[4]),
        .I1(\lfsr_q[15]_i_8_n_0 ),
        .I2(Q[0]),
        .I3(csum[4]),
        .I4(\lfsr_q_reg[1]_0 ),
        .I5(csum[12]),
        .O(\lfsr_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[7]_i_1__0 
       (.I0(q_a__4[5]),
        .I1(csum[13]),
        .I2(\lfsr_q[8]_i_2_n_0 ),
        .O(lfsr_c[7]));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8BBB8)) 
    \lfsr_q[7]_i_2 
       (.I0(in5[5]),
        .I1(\lfsr_q[15]_i_8_n_0 ),
        .I2(Q[0]),
        .I3(csum[5]),
        .I4(\lfsr_q_reg[1]_0 ),
        .I5(csum[13]),
        .O(q_a__4[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[8]_i_1 
       (.I0(\lfsr_q[9]_i_2_n_0 ),
        .I1(\lfsr_q[8]_i_2_n_0 ),
        .I2(csum[0]),
        .O(lfsr_c[8]));
  LUT6 #(
    .INIT(64'h77778888444788B8)) 
    \lfsr_q[8]_i_2 
       (.I0(in5[6]),
        .I1(\lfsr_q[15]_i_8_n_0 ),
        .I2(csum[6]),
        .I3(\lfsr_q_reg[1]_0 ),
        .I4(csum[14]),
        .I5(Q[0]),
        .O(\lfsr_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[9]_i_1 
       (.I0(csum[1]),
        .I1(\lfsr_q[9]_i_2_n_0 ),
        .O(lfsr_c[9]));
  LUT6 #(
    .INIT(64'h44444447B8B8BBB8)) 
    \lfsr_q[9]_i_2 
       (.I0(in5[7]),
        .I1(\lfsr_q[15]_i_8_n_0 ),
        .I2(Q[0]),
        .I3(csum[7]),
        .I4(\lfsr_q_reg[1]_0 ),
        .I5(csum[15]),
        .O(\lfsr_q[9]_i_2_n_0 ));
  FDSE \lfsr_q_reg[0] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(lfsr_c[0]),
        .Q(csum[0]),
        .S(SS));
  FDSE \lfsr_q_reg[10] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(csum[2]),
        .Q(csum[10]),
        .S(SS));
  FDSE \lfsr_q_reg[11] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(csum[3]),
        .Q(csum[11]),
        .S(SS));
  FDSE \lfsr_q_reg[12] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(csum[4]),
        .Q(csum[12]),
        .S(SS));
  FDSE \lfsr_q_reg[13] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(csum[5]),
        .Q(csum[13]),
        .S(SS));
  FDSE \lfsr_q_reg[14] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(csum[6]),
        .Q(csum[14]),
        .S(SS));
  FDSE \lfsr_q_reg[15] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(lfsr_c[15]),
        .Q(csum[15]),
        .S(SS));
  FDSE \lfsr_q_reg[1] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(lfsr_c[1]),
        .Q(csum[1]),
        .S(SS));
  FDSE \lfsr_q_reg[2] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(lfsr_c[2]),
        .Q(csum[2]),
        .S(SS));
  FDSE \lfsr_q_reg[3] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(lfsr_c[3]),
        .Q(csum[3]),
        .S(SS));
  FDSE \lfsr_q_reg[4] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(lfsr_c[4]),
        .Q(csum[4]),
        .S(SS));
  FDSE \lfsr_q_reg[5] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(lfsr_c[5]),
        .Q(csum[5]),
        .S(SS));
  FDSE \lfsr_q_reg[6] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(lfsr_c[6]),
        .Q(csum[6]),
        .S(SS));
  FDSE \lfsr_q_reg[7] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(lfsr_c[7]),
        .Q(csum[7]),
        .S(SS));
  FDSE \lfsr_q_reg[8] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(lfsr_c[8]),
        .Q(csum[8]),
        .S(SS));
  FDSE \lfsr_q_reg[9] 
       (.C(CLK),
        .CE(\lfsr_q[15]_i_2__0_n_0 ),
        .D(lfsr_c[9]),
        .Q(csum[9]),
        .S(SS));
  LUT6 #(
    .INIT(64'h272727D8D8D827D8)) 
    \q[0]_i_1 
       (.I0(disp),
        .I1(dataOut34_out),
        .I2(\phy/enc/dispOut240_out ),
        .I3(q_a__4[0]),
        .I4(\lfsr_q_reg[15]_0 ),
        .I5(\q_reg[0] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h27D827D8272727D8)) 
    \q[1]_i_1 
       (.I0(disp),
        .I1(dataOut34_out),
        .I2(\phy/enc/dispOut240_out ),
        .I3(\phy/enc/dataOut31_out__0 ),
        .I4(txd[1]),
        .I5(\q[1]_i_4_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[1]_i_2 
       (.I0(txd[3]),
        .I1(txd[2]),
        .I2(\phy/enc/dispOut1055_out__0 ),
        .O(\phy/enc/dataOut31_out__0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \q[1]_i_3 
       (.I0(\q_reg[1] ),
        .I1(\lfsr_q_reg[15]_0 ),
        .I2(in5[1]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\q[1]_i_6_n_0 ),
        .O(txd[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[1]_i_4 
       (.I0(txd[3]),
        .I1(txd[2]),
        .I2(\phy/enc/p_60_in ),
        .O(\q[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[1]_i_6 
       (.I0(csum[1]),
        .I1(\lfsr_q_reg[1]_0 ),
        .I2(csum[9]),
        .I3(Q[0]),
        .O(\q[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h27D8)) 
    \q[2]_i_1 
       (.I0(disp),
        .I1(dataOut34_out),
        .I2(\phy/enc/dispOut240_out ),
        .I3(\phy/enc/dataOut10_out ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    \q[2]_i_2 
       (.I0(txd[2]),
        .I1(txd[3]),
        .I2(txd[4]),
        .I3(\phy/enc/dispOut1055_out__0 ),
        .O(\phy/enc/dataOut10_out ));
  LUT6 #(
    .INIT(64'h0A5FF5A0F5A0F7A2)) 
    \q[3]_i_1 
       (.I0(disp),
        .I1(txd[4]),
        .I2(\phy/enc/p_41_in ),
        .I3(\phy/enc/dispOut240_out ),
        .I4(\q[3]_i_4_n_0 ),
        .I5(txd[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \q[3]_i_2 
       (.I0(\q_reg[3]_0 ),
        .I1(\lfsr_q_reg[15]_0 ),
        .I2(in5[4]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\q[3]_i_7_n_0 ),
        .O(txd[4]));
  LUT6 #(
    .INIT(64'hFEEAEAABAAAAAAAA)) 
    \q[3]_i_3 
       (.I0(k),
        .I1(txd__0[0]),
        .I2(txd[1]),
        .I3(txd[3]),
        .I4(txd[2]),
        .I5(txd[4]),
        .O(\phy/enc/p_41_in ));
  LUT2 #(
    .INIT(4'h7)) 
    \q[3]_i_4 
       (.I0(\phy/enc/p_60_in ),
        .I1(txd[2]),
        .O(\q[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \q[3]_i_5 
       (.I0(\q_reg[3] ),
        .I1(\lfsr_q_reg[15]_0 ),
        .I2(in5[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\q[3]_i_9_n_0 ),
        .O(txd[3]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \q[3]_i_7 
       (.I0(Q[0]),
        .I1(csum[4]),
        .I2(\lfsr_q_reg[1]_0 ),
        .I3(csum[12]),
        .O(\q[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \q[3]_i_9 
       (.I0(Q[0]),
        .I1(csum[3]),
        .I2(\lfsr_q_reg[1]_0 ),
        .I3(csum[11]),
        .O(\q[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h27D8)) 
    \q[4]_i_1 
       (.I0(disp),
        .I1(dataOut34_out),
        .I2(\phy/enc/dispOut240_out ),
        .I3(\phy/enc/dataOut15_out__1 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hF30CFFC1)) 
    \q[4]_i_2 
       (.I0(\phy/enc/p_60_in ),
        .I1(\phy/enc/dispOut1055_out__0 ),
        .I2(txd[2]),
        .I3(txd[4]),
        .I4(txd[3]),
        .O(\phy/enc/dataOut15_out__1 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h27D8)) 
    \q[5]_i_1 
       (.I0(disp),
        .I1(dataOut34_out),
        .I2(\phy/enc/dispOut240_out ),
        .I3(\phy/enc/dataOut112_out ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hDDCFDCCCDCCCCECC)) 
    \q[5]_i_2 
       (.I0(\phy/enc/dispOut1055_out__0 ),
        .I1(k),
        .I2(txd[3]),
        .I3(txd[4]),
        .I4(\phy/enc/p_60_in ),
        .I5(txd[2]),
        .O(dataOut34_out));
  LUT5 #(
    .INIT(32'h00108117)) 
    \q[5]_i_3 
       (.I0(txd__0[0]),
        .I1(txd[1]),
        .I2(txd[3]),
        .I3(txd[2]),
        .I4(txd[4]),
        .O(\phy/enc/dispOut240_out ));
  LUT6 #(
    .INIT(64'hCCD28CD281168116)) 
    \q[5]_i_4 
       (.I0(\phy/enc/p_60_in ),
        .I1(txd[2]),
        .I2(txd[4]),
        .I3(txd[3]),
        .I4(k),
        .I5(\phy/enc/dispOut1055_out__0 ),
        .O(\phy/enc/dataOut112_out ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0151)) 
    \q[5]_i_5 
       (.I0(txd[1]),
        .I1(q_a__4[0]),
        .I2(\lfsr_q_reg[15]_0 ),
        .I3(\q_reg[0] ),
        .O(\phy/enc/dispOut1055_out__0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \q[5]_i_6 
       (.I0(q_a__4[0]),
        .I1(\lfsr_q_reg[15]_0 ),
        .I2(\q_reg[0] ),
        .I3(txd[1]),
        .O(\phy/enc/p_60_in ));
  LUT6 #(
    .INIT(64'hB3B3B3334C4C4CCC)) 
    \q[6]_i_1 
       (.I0(txd__0[7]),
        .I1(txd__0[5]),
        .I2(txd__0[6]),
        .I3(\phy/enc/alt6__0 ),
        .I4(k),
        .I5(\phy/enc/dataOut122_out ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h6665)) 
    \q[7]_i_1 
       (.I0(\phy/enc/dataOut122_out ),
        .I1(txd__0[6]),
        .I2(txd__0[5]),
        .I3(txd__0[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[8]_i_1 
       (.I0(\phy/enc/dataOut122_out ),
        .I1(txd__0[7]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h6B6B6BEB94949414)) 
    \q[9]_i_1 
       (.I0(txd__0[7]),
        .I1(txd__0[5]),
        .I2(txd__0[6]),
        .I3(\phy/enc/alt6__0 ),
        .I4(k),
        .I5(\phy/enc/dataOut122_out ),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \q[9]_i_11 
       (.I0(Q[0]),
        .I1(csum[5]),
        .I2(\lfsr_q_reg[1]_0 ),
        .I3(csum[13]),
        .O(\q[9]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[9]_i_12 
       (.I0(csum[6]),
        .I1(\lfsr_q_reg[1]_0 ),
        .I2(csum[14]),
        .I3(Q[0]),
        .O(\q[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \q[9]_i_13 
       (.I0(\q_reg[0] ),
        .I1(\lfsr_q_reg[15]_0 ),
        .I2(in5[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\q[9]_i_15_n_0 ),
        .O(txd__0[0]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \q[9]_i_14 
       (.I0(\q[2]_i_2_0 ),
        .I1(\lfsr_q_reg[15]_0 ),
        .I2(in5[2]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\q[9]_i_17_n_0 ),
        .O(txd[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[9]_i_15 
       (.I0(csum[0]),
        .I1(\lfsr_q_reg[1]_0 ),
        .I2(csum[8]),
        .I3(Q[0]),
        .O(\q[9]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \q[9]_i_17 
       (.I0(Q[0]),
        .I1(csum[2]),
        .I2(\lfsr_q_reg[1]_0 ),
        .I3(csum[10]),
        .O(\q[9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \q[9]_i_2 
       (.I0(\q_reg[6]_0 ),
        .I1(\q_reg[6]_1 [1]),
        .I2(\lfsr_q_reg[15]_0 ),
        .I3(in5[7]),
        .I4(\lfsr_q[15]_i_8_n_0 ),
        .I5(\q[9]_i_9_n_0 ),
        .O(txd__0[7]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \q[9]_i_3 
       (.I0(\q_reg[6] ),
        .I1(\lfsr_q_reg[15]_0 ),
        .I2(in5[5]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\q[9]_i_11_n_0 ),
        .O(txd__0[5]));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \q[9]_i_4 
       (.I0(\q_reg[6]_0 ),
        .I1(\q_reg[6]_1 [0]),
        .I2(\lfsr_q_reg[15]_0 ),
        .I3(in5[6]),
        .I4(\lfsr_q[15]_i_8_n_0 ),
        .I5(\q[9]_i_12_n_0 ),
        .O(txd__0[6]));
  LUT6 #(
    .INIT(64'h0000011428800000)) 
    \q[9]_i_5 
       (.I0(disp),
        .I1(txd__0[0]),
        .I2(txd[1]),
        .I3(txd[2]),
        .I4(txd[3]),
        .I5(txd[4]),
        .O(\phy/enc/alt6__0 ));
  LUT6 #(
    .INIT(64'h2B2B2BC0C0C0C02B)) 
    \q[9]_i_7 
       (.I0(k),
        .I1(txd__0[6]),
        .I2(txd__0[5]),
        .I3(\phy/enc/p_41_in ),
        .I4(\phy/enc/dispOut240_out ),
        .I5(disp),
        .O(\phy/enc/dataOut122_out ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \q[9]_i_9 
       (.I0(Q[0]),
        .I1(csum[7]),
        .I2(\lfsr_q_reg[1]_0 ),
        .I3(csum[15]),
        .O(\q[9]_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "outputlogic_crc16" *) 
module design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16_2
   (E,
    ks,
    SS,
    D,
    s0,
    d,
    \state_reg[0] ,
    \q_reg[4] ,
    Q,
    state0__0,
    p_11_in,
    \acmd_rx_w[valid] ,
    \acmdw_rx[valid] ,
    txdone__0,
    trst,
    a_match,
    last_reg,
    state5,
    state40_in,
    s_reg,
    s_reg_0,
    state35_out,
    \lfsr_q_reg[0]_0 ,
    k,
    q,
    CLK);
  output [0:0]E;
  output ks;
  output [0:0]SS;
  output [1:0]D;
  output s0;
  output [0:0]d;
  output [0:0]\state_reg[0] ;
  output \q_reg[4] ;
  input [1:0]Q;
  input state0__0;
  input p_11_in;
  input \acmd_rx_w[valid] ;
  input \acmdw_rx[valid] ;
  input txdone__0;
  input trst;
  input a_match;
  input last_reg;
  input state5;
  input state40_in;
  input s_reg;
  input s_reg_0;
  input state35_out;
  input [0:0]\lfsr_q_reg[0]_0 ;
  input k;
  input [7:0]q;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SS;
  wire a_match;
  wire \acmd_rx_w[valid] ;
  wire \acmdw_rx[valid] ;
  wire [0:0]d;
  wire err_i;
  wire k;
  wire ks;
  wire last_reg;
  wire [15:0]lfsr_c;
  wire \lfsr_q[15]_i_5_n_0 ;
  wire \lfsr_q[1]_i_2_n_0 ;
  wire \lfsr_q[1]_i_3_n_0 ;
  wire \lfsr_q[1]_i_4_n_0 ;
  wire \lfsr_q[1]_i_5_n_0 ;
  wire [0:0]\lfsr_q_reg[0]_0 ;
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
  wire p_11_in;
  wire [7:0]q;
  wire \q_reg[4] ;
  wire ram_reg_0_31_8_8_i_10_n_0;
  wire ram_reg_0_31_8_8_i_8_n_0;
  wire ram_reg_0_31_8_8_i_9_n_0;
  wire s0;
  wire s_reg;
  wire s_reg_0;
  wire \sctr[4]_i_3_n_0 ;
  wire \sctr[4]_i_4_n_0 ;
  wire state0__0;
  wire state35_out;
  wire state40_in;
  wire state5;
  wire state67_in;
  wire [0:0]\state_reg[0] ;
  wire trst;
  wire txdone__0;

  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[0]_i_1__0 
       (.I0(\lfsr_q_reg_n_0_[8] ),
        .I1(q[0]),
        .I2(lfsr_c[1]),
        .O(lfsr_c[0]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \lfsr_q[15]_i_1 
       (.I0(k),
        .I1(\lfsr_q_reg[0]_0 ),
        .I2(q[2]),
        .I3(q[3]),
        .I4(\q_reg[4] ),
        .I5(\lfsr_q[15]_i_5_n_0 ),
        .O(SS));
  LUT4 #(
    .INIT(16'h0020)) 
    \lfsr_q[15]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\lfsr_q_reg[0]_0 ),
        .I3(ks),
        .O(\state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[15]_i_3__0 
       (.I0(q[0]),
        .I1(\lfsr_q_reg_n_0_[8] ),
        .I2(\lfsr_q_reg_n_0_[7] ),
        .I3(lfsr_c[1]),
        .O(lfsr_c[15]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \lfsr_q[15]_i_4 
       (.I0(q[4]),
        .I1(q[5]),
        .O(\q_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \lfsr_q[15]_i_5 
       (.I0(q[1]),
        .I1(q[6]),
        .I2(q[7]),
        .I3(q[0]),
        .O(\lfsr_q[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[1]_i_1 
       (.I0(\lfsr_q[1]_i_2_n_0 ),
        .I1(\lfsr_q[1]_i_3_n_0 ),
        .I2(\lfsr_q[1]_i_4_n_0 ),
        .I3(q[3]),
        .I4(\lfsr_q_reg_n_0_[11] ),
        .I5(\lfsr_q[1]_i_5_n_0 ),
        .O(lfsr_c[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[1]_i_2 
       (.I0(q[5]),
        .I1(\lfsr_q_reg_n_0_[13] ),
        .I2(q[1]),
        .I3(\lfsr_q_reg_n_0_[10] ),
        .I4(q[2]),
        .I5(\lfsr_q_reg_n_0_[9] ),
        .O(\lfsr_q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[1]_i_3 
       (.I0(q[6]),
        .I1(\lfsr_q_reg_n_0_[14] ),
        .O(\lfsr_q[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[1]_i_4 
       (.I0(\lfsr_q_reg_n_0_[12] ),
        .I1(q[4]),
        .O(\lfsr_q[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[1]_i_5 
       (.I0(\lfsr_q_reg_n_0_[15] ),
        .I1(q[7]),
        .O(\lfsr_q[1]_i_5_n_0 ));
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
        .I1(\lfsr_q_reg_n_0_[10] ),
        .I2(\lfsr_q_reg_n_0_[9] ),
        .I3(q[2]),
        .O(lfsr_c[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[4]_i_1 
       (.I0(\lfsr_q_reg_n_0_[10] ),
        .I1(\lfsr_q_reg_n_0_[11] ),
        .I2(q[3]),
        .I3(q[2]),
        .O(lfsr_c[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[5]_i_1 
       (.I0(q[3]),
        .I1(\lfsr_q_reg_n_0_[11] ),
        .I2(q[4]),
        .I3(\lfsr_q_reg_n_0_[12] ),
        .O(lfsr_c[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[6]_i_1 
       (.I0(\lfsr_q_reg_n_0_[13] ),
        .I1(q[5]),
        .I2(q[4]),
        .I3(\lfsr_q_reg_n_0_[12] ),
        .O(lfsr_c[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[7]_i_1 
       (.I0(\lfsr_q_reg_n_0_[14] ),
        .I1(q[6]),
        .I2(\lfsr_q_reg_n_0_[13] ),
        .I3(q[5]),
        .O(lfsr_c[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[8]_i_1__0 
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
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(lfsr_c[0]),
        .Q(\lfsr_q_reg_n_0_[0] ),
        .S(SS));
  FDSE \lfsr_q_reg[10] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(\lfsr_q_reg_n_0_[2] ),
        .Q(\lfsr_q_reg_n_0_[10] ),
        .S(SS));
  FDSE \lfsr_q_reg[11] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(\lfsr_q_reg_n_0_[3] ),
        .Q(\lfsr_q_reg_n_0_[11] ),
        .S(SS));
  FDSE \lfsr_q_reg[12] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(\lfsr_q_reg_n_0_[4] ),
        .Q(\lfsr_q_reg_n_0_[12] ),
        .S(SS));
  FDSE \lfsr_q_reg[13] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(\lfsr_q_reg_n_0_[5] ),
        .Q(\lfsr_q_reg_n_0_[13] ),
        .S(SS));
  FDSE \lfsr_q_reg[14] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(\lfsr_q_reg_n_0_[6] ),
        .Q(\lfsr_q_reg_n_0_[14] ),
        .S(SS));
  FDSE \lfsr_q_reg[15] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(lfsr_c[15]),
        .Q(\lfsr_q_reg_n_0_[15] ),
        .S(SS));
  FDSE \lfsr_q_reg[1] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(lfsr_c[1]),
        .Q(\lfsr_q_reg_n_0_[1] ),
        .S(SS));
  FDSE \lfsr_q_reg[2] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(lfsr_c[2]),
        .Q(\lfsr_q_reg_n_0_[2] ),
        .S(SS));
  FDSE \lfsr_q_reg[3] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(lfsr_c[3]),
        .Q(\lfsr_q_reg_n_0_[3] ),
        .S(SS));
  FDSE \lfsr_q_reg[4] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(lfsr_c[4]),
        .Q(\lfsr_q_reg_n_0_[4] ),
        .S(SS));
  FDSE \lfsr_q_reg[5] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(lfsr_c[5]),
        .Q(\lfsr_q_reg_n_0_[5] ),
        .S(SS));
  FDSE \lfsr_q_reg[6] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(lfsr_c[6]),
        .Q(\lfsr_q_reg_n_0_[6] ),
        .S(SS));
  FDSE \lfsr_q_reg[7] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(lfsr_c[7]),
        .Q(\lfsr_q_reg_n_0_[7] ),
        .S(SS));
  FDSE \lfsr_q_reg[8] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(lfsr_c[8]),
        .Q(\lfsr_q_reg_n_0_[8] ),
        .S(SS));
  FDSE \lfsr_q_reg[9] 
       (.C(CLK),
        .CE(\state_reg[0] ),
        .D(lfsr_c[9]),
        .Q(\lfsr_q_reg_n_0_[9] ),
        .S(SS));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    ram_reg_0_31_8_8_i_1
       (.I0(a_match),
        .I1(last_reg),
        .I2(state5),
        .I3(state40_in),
        .I4(state67_in),
        .I5(s_reg),
        .O(d));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ram_reg_0_31_8_8_i_10
       (.I0(\lfsr_q_reg_n_0_[2] ),
        .I1(\lfsr_q_reg_n_0_[3] ),
        .I2(\lfsr_q_reg_n_0_[0] ),
        .I3(\lfsr_q_reg_n_0_[1] ),
        .O(ram_reg_0_31_8_8_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ram_reg_0_31_8_8_i_5
       (.I0(ram_reg_0_31_8_8_i_8_n_0),
        .I1(\lfsr_q_reg_n_0_[15] ),
        .I2(\lfsr_q_reg_n_0_[14] ),
        .I3(\lfsr_q_reg_n_0_[12] ),
        .I4(\lfsr_q_reg_n_0_[13] ),
        .I5(ram_reg_0_31_8_8_i_9_n_0),
        .O(state67_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ram_reg_0_31_8_8_i_8
       (.I0(\lfsr_q_reg_n_0_[10] ),
        .I1(\lfsr_q_reg_n_0_[11] ),
        .I2(\lfsr_q_reg_n_0_[8] ),
        .I3(\lfsr_q_reg_n_0_[9] ),
        .O(ram_reg_0_31_8_8_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ram_reg_0_31_8_8_i_9
       (.I0(\lfsr_q_reg_n_0_[5] ),
        .I1(\lfsr_q_reg_n_0_[4] ),
        .I2(\lfsr_q_reg_n_0_[7] ),
        .I3(\lfsr_q_reg_n_0_[6] ),
        .I4(ram_reg_0_31_8_8_i_10_n_0),
        .O(ram_reg_0_31_8_8_i_9_n_0));
  LUT6 #(
    .INIT(64'h000000000000FF40)) 
    s_i_1
       (.I0(err_i),
        .I1(p_11_in),
        .I2(\acmd_rx_w[valid] ),
        .I3(\acmdw_rx[valid] ),
        .I4(txdone__0),
        .I5(trst),
        .O(s0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \sctr[4]_i_1 
       (.I0(k),
        .I1(\lfsr_q_reg[0]_0 ),
        .I2(\sctr[4]_i_3_n_0 ),
        .I3(q[7]),
        .I4(q[6]),
        .I5(\sctr[4]_i_4_n_0 ),
        .O(ks));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sctr[4]_i_3 
       (.I0(q[2]),
        .I1(q[5]),
        .I2(q[4]),
        .I3(q[3]),
        .O(\sctr[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sctr[4]_i_4 
       (.I0(q[1]),
        .I1(q[0]),
        .O(\sctr[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[0]_i_1 
       (.I0(err_i),
        .I1(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h3330FBFB3330C8C8)) 
    \state[1]_i_2 
       (.I0(ks),
        .I1(Q[0]),
        .I2(err_i),
        .I3(state0__0),
        .I4(Q[1]),
        .I5(SS),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \state[1]_i_3 
       (.I0(Q[0]),
        .I1(err_i),
        .I2(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \state[1]_i_4 
       (.I0(s_reg),
        .I1(state67_in),
        .I2(s_reg_0),
        .I3(\acmdw_rx[valid] ),
        .I4(\acmd_rx_w[valid] ),
        .I5(state35_out),
        .O(err_i));
endmodule

(* ORIG_REF_NAME = "pdts_acmd_arb" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_acmd_arb
   (\p_reg[0]_0 ,
    trst,
    CLK,
    \acmd_tx_w[valid] ,
    d__0,
    \acmdr[rdy] ,
    \acmdw_v[1][last] ,
    \p_reg[0]_1 );
  output \p_reg[0]_0 ;
  input trst;
  input CLK;
  input \acmd_tx_w[valid] ;
  input d__0;
  input \acmdr[rdy] ;
  input \acmdw_v[1][last] ;
  input [0:0]\p_reg[0]_1 ;

  wire CLK;
  wire \acmd_tx_w[valid] ;
  wire \acmdr[rdy] ;
  wire \acmdw_v[1][last] ;
  wire d__0;
  wire \p[0]_i_1_n_0 ;
  wire \p[0]_i_2_n_0 ;
  wire \p_reg[0]_0 ;
  wire [0:0]\p_reg[0]_1 ;
  wire s;
  wire s_i_1__0_n_0;
  wire trst;

  LUT6 #(
    .INIT(64'hF000F1F1F0001111)) 
    \p[0]_i_1 
       (.I0(\acmd_tx_w[valid] ),
        .I1(s),
        .I2(\acmdr[rdy] ),
        .I3(\acmdw_v[1][last] ),
        .I4(\p_reg[0]_0 ),
        .I5(\p_reg[0]_1 ),
        .O(\p[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \p[0]_i_2 
       (.I0(\p_reg[0]_0 ),
        .O(\p[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p_reg[0] 
       (.C(CLK),
        .CE(\p[0]_i_1_n_0 ),
        .D(\p[0]_i_2_n_0 ),
        .Q(\p_reg[0]_0 ),
        .R(trst));
  LUT5 #(
    .INIT(32'h000000FE)) 
    s_i_1__0
       (.I0(s),
        .I1(\acmd_tx_w[valid] ),
        .I2(\p_reg[0]_0 ),
        .I3(trst),
        .I4(d__0),
        .O(s_i_1__0_n_0));
  FDRE s_reg
       (.C(CLK),
        .CE(1'b1),
        .D(s_i_1__0_n_0),
        .Q(s),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_cdr_sampler" *) (* keep_hierarchy = "soft" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_cdr_sampler
   (clk,
    clk4x,
    rst,
    d,
    q,
    locked,
    dbg);
  input clk;
  input clk4x;
  input rst;
  input d;
  output q;
  output locked;
  output [7:0]dbg;

  wire \<const0> ;
  (* MARK_DEBUG *) wire [15:0]bctr;
  wire bctr_reg0;
  wire \bctr_reg[15]_i_2_n_2 ;
  wire \bctr_reg[15]_i_2_n_3 ;
  wire \bctr_reg[15]_i_2_n_4 ;
  wire \bctr_reg[15]_i_2_n_5 ;
  wire \bctr_reg[15]_i_2_n_6 ;
  wire \bctr_reg[15]_i_2_n_7 ;
  wire \bctr_reg[8]_i_1_n_0 ;
  wire \bctr_reg[8]_i_1_n_1 ;
  wire \bctr_reg[8]_i_1_n_2 ;
  wire \bctr_reg[8]_i_1_n_3 ;
  wire \bctr_reg[8]_i_1_n_4 ;
  wire \bctr_reg[8]_i_1_n_5 ;
  wire \bctr_reg[8]_i_1_n_6 ;
  wire \bctr_reg[8]_i_1_n_7 ;
  wire [1:0]cctr;
  wire \cctr[0]_i_1_n_0 ;
  wire \cctr[1]_i_1_n_0 ;
  wire clk;
  wire clk4x;
  wire d;
  wire da;
  wire db;
  (* MARK_DEBUG *) wire [15:0]dctr;
  wire \dctr[0]_i_1_n_0 ;
  wire \dctr_reg[15]_i_1_n_10 ;
  wire \dctr_reg[15]_i_1_n_11 ;
  wire \dctr_reg[15]_i_1_n_12 ;
  wire \dctr_reg[15]_i_1_n_13 ;
  wire \dctr_reg[15]_i_1_n_14 ;
  wire \dctr_reg[15]_i_1_n_15 ;
  wire \dctr_reg[15]_i_1_n_2 ;
  wire \dctr_reg[15]_i_1_n_3 ;
  wire \dctr_reg[15]_i_1_n_4 ;
  wire \dctr_reg[15]_i_1_n_5 ;
  wire \dctr_reg[15]_i_1_n_6 ;
  wire \dctr_reg[15]_i_1_n_7 ;
  wire \dctr_reg[15]_i_1_n_9 ;
  wire \dctr_reg[8]_i_1_n_0 ;
  wire \dctr_reg[8]_i_1_n_1 ;
  wire \dctr_reg[8]_i_1_n_10 ;
  wire \dctr_reg[8]_i_1_n_11 ;
  wire \dctr_reg[8]_i_1_n_12 ;
  wire \dctr_reg[8]_i_1_n_13 ;
  wire \dctr_reg[8]_i_1_n_14 ;
  wire \dctr_reg[8]_i_1_n_15 ;
  wire \dctr_reg[8]_i_1_n_2 ;
  wire \dctr_reg[8]_i_1_n_3 ;
  wire \dctr_reg[8]_i_1_n_4 ;
  wire \dctr_reg[8]_i_1_n_5 ;
  wire \dctr_reg[8]_i_1_n_6 ;
  wire \dctr_reg[8]_i_1_n_7 ;
  wire \dctr_reg[8]_i_1_n_8 ;
  wire \dctr_reg[8]_i_1_n_9 ;
  wire di;
  wire di_i_1_n_0;
  wire di_i_2_n_0;
  (* MARK_DEBUG *) wire good;
  (* MARK_DEBUG *) wire locked_i;
  wire locked_i_i_1_n_0;
  (* MARK_DEBUG *) wire p;
  wire p_i_1_n_0;
  (* MARK_DEBUG *) wire [1:0]patt;
  wire patt1;
  wire \patt[0]_i_1_n_0 ;
  wire \patt[1]_i_2_n_0 ;
  wire patt_reg0;
  wire [15:0]plusOp;
  wire q;
  wire rst;
  (* MARK_DEBUG *) wire [2:0]sctr;
  wire \sctr[2]_i_2_n_0 ;
  wire [2:0]sctr__0;
  (* MARK_DEBUG *) wire tc;
  wire tc_inferred_i_2_n_0;
  wire tc_inferred_i_3_n_0;
  wire [7:6]\NLW_bctr_reg[15]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_bctr_reg[15]_i_2_O_UNCONNECTED ;
  wire [7:6]\NLW_dctr_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_dctr_reg[15]_i_1_O_UNCONNECTED ;

  assign dbg[7] = \<const0> ;
  assign dbg[6] = \<const0> ;
  assign dbg[5] = \<const0> ;
  assign dbg[4] = \<const0> ;
  assign dbg[3] = \<const0> ;
  assign dbg[2] = \<const0> ;
  assign dbg[1] = \<const0> ;
  assign dbg[0] = \<const0> ;
  assign locked = locked_i;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \bctr[0]_i_1 
       (.I0(bctr[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \bctr[15]_i_1 
       (.I0(rst),
        .I1(tc),
        .O(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(bctr[0]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(bctr[10]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[11]),
        .Q(bctr[11]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[12]),
        .Q(bctr[12]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[13]),
        .Q(bctr[13]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[14]),
        .Q(bctr[14]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[15]),
        .Q(bctr[15]),
        .R(bctr_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \bctr_reg[15]_i_2 
       (.CI(\bctr_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_bctr_reg[15]_i_2_CO_UNCONNECTED [7:6],\bctr_reg[15]_i_2_n_2 ,\bctr_reg[15]_i_2_n_3 ,\bctr_reg[15]_i_2_n_4 ,\bctr_reg[15]_i_2_n_5 ,\bctr_reg[15]_i_2_n_6 ,\bctr_reg[15]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bctr_reg[15]_i_2_O_UNCONNECTED [7],plusOp[15:9]}),
        .S({1'b0,bctr[15:9]}));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(bctr[1]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(bctr[2]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(bctr[3]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(bctr[4]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(bctr[5]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(bctr[6]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(bctr[7]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(bctr[8]),
        .R(bctr_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \bctr_reg[8]_i_1 
       (.CI(bctr[0]),
        .CI_TOP(1'b0),
        .CO({\bctr_reg[8]_i_1_n_0 ,\bctr_reg[8]_i_1_n_1 ,\bctr_reg[8]_i_1_n_2 ,\bctr_reg[8]_i_1_n_3 ,\bctr_reg[8]_i_1_n_4 ,\bctr_reg[8]_i_1_n_5 ,\bctr_reg[8]_i_1_n_6 ,\bctr_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:1]),
        .S(bctr[8:1]));
  (* KEEP = "yes" *) 
  FDRE \bctr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(bctr[9]),
        .R(bctr_reg0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cctr[0]_i_1 
       (.I0(cctr[0]),
        .O(\cctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cctr[1]_i_1 
       (.I0(cctr[0]),
        .I1(cctr[1]),
        .O(\cctr[1]_i_1_n_0 ));
  FDSE \cctr_reg[0] 
       (.C(clk4x),
        .CE(1'b1),
        .D(\cctr[0]_i_1_n_0 ),
        .Q(cctr[0]),
        .S(rst));
  FDSE \cctr_reg[1] 
       (.C(clk4x),
        .CE(1'b1),
        .D(\cctr[1]_i_1_n_0 ),
        .Q(cctr[1]),
        .S(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \dctr[0]_i_1 
       (.I0(dctr[0]),
        .O(\dctr[0]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[0] 
       (.C(clk),
        .CE(di),
        .D(\dctr[0]_i_1_n_0 ),
        .Q(dctr[0]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[10] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[15]_i_1_n_14 ),
        .Q(dctr[10]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[11] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[15]_i_1_n_13 ),
        .Q(dctr[11]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[12] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[15]_i_1_n_12 ),
        .Q(dctr[12]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[13] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[15]_i_1_n_11 ),
        .Q(dctr[13]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[14] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[15]_i_1_n_10 ),
        .Q(dctr[14]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[15] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[15]_i_1_n_9 ),
        .Q(dctr[15]),
        .R(bctr_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \dctr_reg[15]_i_1 
       (.CI(\dctr_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_dctr_reg[15]_i_1_CO_UNCONNECTED [7:6],\dctr_reg[15]_i_1_n_2 ,\dctr_reg[15]_i_1_n_3 ,\dctr_reg[15]_i_1_n_4 ,\dctr_reg[15]_i_1_n_5 ,\dctr_reg[15]_i_1_n_6 ,\dctr_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dctr_reg[15]_i_1_O_UNCONNECTED [7],\dctr_reg[15]_i_1_n_9 ,\dctr_reg[15]_i_1_n_10 ,\dctr_reg[15]_i_1_n_11 ,\dctr_reg[15]_i_1_n_12 ,\dctr_reg[15]_i_1_n_13 ,\dctr_reg[15]_i_1_n_14 ,\dctr_reg[15]_i_1_n_15 }),
        .S({1'b0,dctr[15:9]}));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[1] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[8]_i_1_n_15 ),
        .Q(dctr[1]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[2] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[8]_i_1_n_14 ),
        .Q(dctr[2]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[3] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[8]_i_1_n_13 ),
        .Q(dctr[3]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[4] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[8]_i_1_n_12 ),
        .Q(dctr[4]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[5] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[8]_i_1_n_11 ),
        .Q(dctr[5]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[6] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[8]_i_1_n_10 ),
        .Q(dctr[6]),
        .R(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDSE \dctr_reg[7] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[8]_i_1_n_9 ),
        .Q(dctr[7]),
        .S(bctr_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[8] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[8]_i_1_n_8 ),
        .Q(dctr[8]),
        .R(bctr_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \dctr_reg[8]_i_1 
       (.CI(dctr[0]),
        .CI_TOP(1'b0),
        .CO({\dctr_reg[8]_i_1_n_0 ,\dctr_reg[8]_i_1_n_1 ,\dctr_reg[8]_i_1_n_2 ,\dctr_reg[8]_i_1_n_3 ,\dctr_reg[8]_i_1_n_4 ,\dctr_reg[8]_i_1_n_5 ,\dctr_reg[8]_i_1_n_6 ,\dctr_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\dctr_reg[8]_i_1_n_8 ,\dctr_reg[8]_i_1_n_9 ,\dctr_reg[8]_i_1_n_10 ,\dctr_reg[8]_i_1_n_11 ,\dctr_reg[8]_i_1_n_12 ,\dctr_reg[8]_i_1_n_13 ,\dctr_reg[8]_i_1_n_14 ,\dctr_reg[8]_i_1_n_15 }),
        .S(dctr[8:1]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[9] 
       (.C(clk),
        .CE(di),
        .D(\dctr_reg[15]_i_1_n_15 ),
        .Q(dctr[9]),
        .R(bctr_reg0));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    di_i_1
       (.I0(db),
        .I1(da),
        .I2(sctr[0]),
        .I3(di_i_2_n_0),
        .I4(di),
        .O(di_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    di_i_2
       (.I0(cctr[0]),
        .I1(sctr[1]),
        .I2(cctr[1]),
        .I3(sctr[2]),
        .O(di_i_2_n_0));
  FDRE di_reg
       (.C(clk4x),
        .CE(1'b1),
        .D(di_i_1_n_0),
        .Q(di),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    good_inferred_i_1
       (.I0(dctr[15]),
        .I1(dctr[13]),
        .I2(dctr[14]),
        .O(good));
  (* box_type = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    iff
       (.C(clk4x),
        .CB(clk4x),
        .D(d),
        .Q1(da),
        .Q2(db),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    locked_i_i_1
       (.I0(patt1),
        .I1(locked_i),
        .I2(tc),
        .I3(locked_i),
        .O(locked_i_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    locked_i_i_2
       (.I0(patt[1]),
        .I1(patt[0]),
        .I2(good),
        .I3(p),
        .O(patt1));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE locked_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(locked_i_i_1_n_0),
        .Q(locked_i),
        .R(patt_reg0));
  LUT6 #(
    .INIT(64'hAAABFFFFAAAB0000)) 
    p_i_1
       (.I0(p),
        .I1(sctr[2]),
        .I2(sctr[0]),
        .I3(sctr[1]),
        .I4(tc),
        .I5(p),
        .O(p_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE p_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_i_1_n_0),
        .Q(p),
        .R(patt_reg0));
  LUT3 #(
    .INIT(8'hD8)) 
    \patt[0]_i_1 
       (.I0(locked_i),
        .I1(patt[0]),
        .I2(good),
        .O(\patt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \patt[1]_i_1 
       (.I0(rst),
        .I1(locked_i),
        .I2(good),
        .I3(tc),
        .O(patt_reg0));
  LUT5 #(
    .INIT(32'hC8D8D8D8)) 
    \patt[1]_i_2 
       (.I0(locked_i),
        .I1(patt[1]),
        .I2(patt[0]),
        .I3(good),
        .I4(p),
        .O(\patt[1]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \patt_reg[0] 
       (.C(clk),
        .CE(tc),
        .D(\patt[0]_i_1_n_0 ),
        .Q(patt[0]),
        .R(patt_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \patt_reg[1] 
       (.C(clk),
        .CE(tc),
        .D(\patt[1]_i_2_n_0 ),
        .Q(patt[1]),
        .R(patt_reg0));
  FDRE q_reg
       (.C(clk),
        .CE(1'b1),
        .D(di),
        .Q(q),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAA65555555)) 
    \sctr[0]_i_1 
       (.I0(sctr[0]),
        .I1(patt[1]),
        .I2(patt[0]),
        .I3(good),
        .I4(p),
        .I5(locked_i),
        .O(sctr__0[0]));
  LUT3 #(
    .INIT(8'h9C)) 
    \sctr[1]_i_1 
       (.I0(sctr[0]),
        .I1(sctr[1]),
        .I2(\sctr[2]_i_2_n_0 ),
        .O(sctr__0[1]));
  LUT4 #(
    .INIT(16'hE1F0)) 
    \sctr[2]_i_1 
       (.I0(sctr[0]),
        .I1(sctr[1]),
        .I2(sctr[2]),
        .I3(\sctr[2]_i_2_n_0 ),
        .O(sctr__0[2]));
  LUT5 #(
    .INIT(32'h55551555)) 
    \sctr[2]_i_2 
       (.I0(locked_i),
        .I1(p),
        .I2(good),
        .I3(patt[0]),
        .I4(patt[1]),
        .O(\sctr[2]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDSE \sctr_reg[0] 
       (.C(clk),
        .CE(tc),
        .D(sctr__0[0]),
        .Q(sctr[0]),
        .S(patt_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDSE \sctr_reg[1] 
       (.C(clk),
        .CE(tc),
        .D(sctr__0[1]),
        .Q(sctr[1]),
        .S(patt_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDSE \sctr_reg[2] 
       (.C(clk),
        .CE(tc),
        .D(sctr__0[2]),
        .Q(sctr[2]),
        .S(patt_reg0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    tc_inferred_i_1
       (.I0(tc_inferred_i_2_n_0),
        .I1(bctr[1]),
        .I2(bctr[0]),
        .I3(bctr[3]),
        .I4(bctr[2]),
        .I5(tc_inferred_i_3_n_0),
        .O(tc));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    tc_inferred_i_2
       (.I0(bctr[12]),
        .I1(bctr[13]),
        .I2(bctr[10]),
        .I3(bctr[11]),
        .I4(bctr[15]),
        .I5(bctr[14]),
        .O(tc_inferred_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    tc_inferred_i_3
       (.I0(bctr[6]),
        .I1(bctr[7]),
        .I2(bctr[4]),
        .I3(bctr[5]),
        .I4(bctr[9]),
        .I5(bctr[8]),
        .O(tc_inferred_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "pdts_cksum" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_cksum
   (SS,
    D,
    stbo_reg,
    Q,
    stbo,
    \lfsr_q_reg[15] ,
    in5,
    \lfsr_q_reg[1] ,
    k,
    disp,
    \q_reg[0] ,
    \q[2]_i_2 ,
    \q_reg[3] ,
    \q_reg[1] ,
    \q_reg[3]_0 ,
    \q_reg[6] ,
    \q_reg[6]_0 ,
    \q_reg[6]_1 ,
    CLK);
  output [0:0]SS;
  output [9:0]D;
  output stbo_reg;
  input [2:0]Q;
  input stbo;
  input \lfsr_q_reg[15] ;
  input [7:0]in5;
  input \lfsr_q_reg[1] ;
  input k;
  input disp;
  input \q_reg[0] ;
  input \q[2]_i_2 ;
  input \q_reg[3] ;
  input \q_reg[1] ;
  input \q_reg[3]_0 ;
  input \q_reg[6] ;
  input \q_reg[6]_0 ;
  input [1:0]\q_reg[6]_1 ;
  input CLK;

  wire CLK;
  wire [9:0]D;
  wire [2:0]Q;
  wire [0:0]SS;
  wire disp;
  wire [7:0]in5;
  wire k;
  wire \lfsr_q_reg[15] ;
  wire \lfsr_q_reg[1] ;
  wire \q[2]_i_2 ;
  wire \q_reg[0] ;
  wire \q_reg[1] ;
  wire \q_reg[3] ;
  wire \q_reg[3]_0 ;
  wire \q_reg[6] ;
  wire \q_reg[6]_0 ;
  wire [1:0]\q_reg[6]_1 ;
  wire stbo;
  wire stbo_reg;

  design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16 crc
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .SS(SS),
        .disp(disp),
        .in5(in5),
        .k(k),
        .\lfsr_q_reg[15]_0 (\lfsr_q_reg[15] ),
        .\lfsr_q_reg[1]_0 (\lfsr_q_reg[1] ),
        .\q[2]_i_2_0 (\q[2]_i_2 ),
        .\q_reg[0] (\q_reg[0] ),
        .\q_reg[1] (\q_reg[1] ),
        .\q_reg[3] (\q_reg[3] ),
        .\q_reg[3]_0 (\q_reg[3]_0 ),
        .\q_reg[6] (\q_reg[6] ),
        .\q_reg[6]_0 (\q_reg[6]_0 ),
        .\q_reg[6]_1 (\q_reg[6]_1 ),
        .stbo(stbo),
        .stbo_reg(stbo_reg));
endmodule

(* ORIG_REF_NAME = "pdts_cksum" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_cksum_1
   (E,
    ks,
    ka,
    D,
    s0,
    d,
    p_12_in,
    \q_reg[4] ,
    Q,
    state0__0,
    p_11_in,
    \acmd_rx_w[valid] ,
    \acmdw_rx[valid] ,
    txdone__0,
    trst,
    a_match,
    last_reg,
    state5,
    state40_in,
    s_reg,
    s_reg_0,
    state35_out,
    SS,
    k,
    q,
    CLK);
  output [0:0]E;
  output ks;
  output ka;
  output [1:0]D;
  output s0;
  output [0:0]d;
  output p_12_in;
  output \q_reg[4] ;
  input [1:0]Q;
  input state0__0;
  input p_11_in;
  input \acmd_rx_w[valid] ;
  input \acmdw_rx[valid] ;
  input txdone__0;
  input trst;
  input a_match;
  input last_reg;
  input state5;
  input state40_in;
  input s_reg;
  input s_reg_0;
  input state35_out;
  input [0:0]SS;
  input k;
  input [7:0]q;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SS;
  wire a_match;
  wire \acmd_rx_w[valid] ;
  wire \acmdw_rx[valid] ;
  wire [0:0]d;
  wire k;
  wire ka;
  wire ks;
  wire last_reg;
  wire p_11_in;
  wire p_12_in;
  wire [7:0]q;
  wire \q_reg[4] ;
  wire s0;
  wire s_reg;
  wire s_reg_0;
  wire state0__0;
  wire state35_out;
  wire state40_in;
  wire state5;
  wire trst;
  wire txdone__0;

  design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16_2 crc
       (.CLK(CLK),
        .D(D),
        .E(E),
        .Q(Q),
        .SS(ka),
        .a_match(a_match),
        .\acmd_rx_w[valid] (\acmd_rx_w[valid] ),
        .\acmdw_rx[valid] (\acmdw_rx[valid] ),
        .d(d),
        .k(k),
        .ks(ks),
        .last_reg(last_reg),
        .\lfsr_q_reg[0]_0 (SS),
        .p_11_in(p_11_in),
        .q(q),
        .\q_reg[4] (\q_reg[4] ),
        .s0(s0),
        .s_reg(s_reg),
        .s_reg_0(s_reg_0),
        .state0__0(state0__0),
        .state35_out(state35_out),
        .state40_in(state40_in),
        .state5(state5),
        .\state_reg[0] (p_12_in),
        .trst(trst),
        .txdone__0(txdone__0));
endmodule

(* ORIG_REF_NAME = "pdts_dec8b10b" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_dec8b10b
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    cerr_i_12
       (.I0(d[1]),
        .I1(d[0]),
        .I2(d[2]),
        .I3(d[4]),
        .I4(d[5]),
        .O(cerr_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h55404000)) 
    derr_i_3
       (.I0(cerr_i_8_n_0),
        .I1(d[9]),
        .I2(d[8]),
        .I3(d[6]),
        .I4(d[7]),
        .O(derr_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hEEE8)) 
    derr_i_6
       (.I0(d[7]),
        .I1(d[6]),
        .I2(d[8]),
        .I3(d[9]),
        .O(derr_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    disp_i_5
       (.I0(d[9]),
        .I1(d[8]),
        .I2(d[6]),
        .I3(d[7]),
        .O(disp_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    k_i_5
       (.I0(d[9]),
        .I1(d[8]),
        .I2(d[7]),
        .O(k_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hF664266F)) 
    \q[5]_i_1 
       (.I0(d[9]),
        .I1(d[6]),
        .I2(d[8]),
        .I3(\q[7]_i_2_n_0 ),
        .I4(d[7]),
        .O(dataOut[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h4FD42BF2)) 
    \q[6]_i_1 
       (.I0(\q[7]_i_2_n_0 ),
        .I1(d[8]),
        .I2(d[9]),
        .I3(d[6]),
        .I4(d[7]),
        .O(dataOut[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h6A366C56)) 
    \q[7]_i_1 
       (.I0(d[9]),
        .I1(d[8]),
        .I2(d[6]),
        .I3(d[7]),
        .I4(\q[7]_i_2_n_0 ),
        .O(dataOut[7]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
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

(* DEL_RADIX = "4" *) (* ORIG_REF_NAME = "pdts_del" *) (* WIDTH = "1" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_del
   (clk,
    a,
    d,
    q);
  input clk;
  input [3:0]a;
  input [0:0]d;
  output [0:0]q;

  wire [3:0]a;
  wire clk;
  wire [0:0]d;
  wire [0:0]q;
  wire \q[0]_INST_0_i_1_n_0 ;
  wire \q[0]_INST_0_i_2_n_0 ;
  wire \q[0]_INST_0_i_3_n_0 ;
  wire \q[0]_INST_0_i_4_n_0 ;
  wire \q[0]_INST_0_i_5_n_0 ;
  wire \q[0]_INST_0_i_6_n_0 ;
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

  MUXF8 \q[0]_INST_0 
       (.I0(\q[0]_INST_0_i_1_n_0 ),
        .I1(\q[0]_INST_0_i_2_n_0 ),
        .O(q),
        .S(a[3]));
  MUXF7 \q[0]_INST_0_i_1 
       (.I0(\q[0]_INST_0_i_3_n_0 ),
        .I1(\q[0]_INST_0_i_4_n_0 ),
        .O(\q[0]_INST_0_i_1_n_0 ),
        .S(a[2]));
  MUXF7 \q[0]_INST_0_i_2 
       (.I0(\q[0]_INST_0_i_5_n_0 ),
        .I1(\q[0]_INST_0_i_6_n_0 ),
        .O(\q[0]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_3 
       (.I0(\s_reg[3] ),
        .I1(\s_reg[2] ),
        .I2(a[1]),
        .I3(\s_reg[1] ),
        .I4(a[0]),
        .I5(d),
        .O(\q[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_4 
       (.I0(\s_reg[7] ),
        .I1(\s_reg[6] ),
        .I2(a[1]),
        .I3(\s_reg[5] ),
        .I4(a[0]),
        .I5(\s_reg[4] ),
        .O(\q[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_5 
       (.I0(\s_reg[11] ),
        .I1(\s_reg[10] ),
        .I2(a[1]),
        .I3(\s_reg[9] ),
        .I4(a[0]),
        .I5(\s_reg[8] ),
        .O(\q[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_6 
       (.I0(\s_reg[15] ),
        .I1(\s_reg[14] ),
        .I2(a[1]),
        .I3(\s_reg[13] ),
        .I4(a[0]),
        .I5(\s_reg[12] ),
        .O(\q[0]_INST_0_i_6_n_0 ));
  FDRE \s_reg[10][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[9] ),
        .Q(\s_reg[10] ),
        .R(1'b0));
  FDRE \s_reg[11][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[10] ),
        .Q(\s_reg[11] ),
        .R(1'b0));
  FDRE \s_reg[12][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[11] ),
        .Q(\s_reg[12] ),
        .R(1'b0));
  FDRE \s_reg[13][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[12] ),
        .Q(\s_reg[13] ),
        .R(1'b0));
  FDRE \s_reg[14][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[13] ),
        .Q(\s_reg[14] ),
        .R(1'b0));
  FDRE \s_reg[15][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[14] ),
        .Q(\s_reg[15] ),
        .R(1'b0));
  FDRE \s_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .D(d),
        .Q(\s_reg[1] ),
        .R(1'b0));
  FDRE \s_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[1] ),
        .Q(\s_reg[2] ),
        .R(1'b0));
  FDRE \s_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2] ),
        .Q(\s_reg[3] ),
        .R(1'b0));
  FDRE \s_reg[4][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[3] ),
        .Q(\s_reg[4] ),
        .R(1'b0));
  FDRE \s_reg[5][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[4] ),
        .Q(\s_reg[5] ),
        .R(1'b0));
  FDRE \s_reg[6][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[5] ),
        .Q(\s_reg[6] ),
        .R(1'b0));
  FDRE \s_reg[7][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[6] ),
        .Q(\s_reg[7] ),
        .R(1'b0));
  FDRE \s_reg[8][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[7] ),
        .Q(\s_reg[8] ),
        .R(1'b0));
  FDRE \s_reg[9][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[8] ),
        .Q(\s_reg[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_enc8b10b" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_enc8b10b
   (disp,
    Q,
    trst,
    disp_reg_0,
    CLK,
    stbo,
    D);
  output disp;
  output [9:0]Q;
  input trst;
  input disp_reg_0;
  input CLK;
  input stbo;
  input [9:0]D;

  wire CLK;
  wire [9:0]D;
  wire [9:0]Q;
  wire disp;
  wire disp_reg_0;
  wire stbo;
  wire trst;

  FDRE #(
    .INIT(1'b0)) 
    disp_reg
       (.C(CLK),
        .CE(1'b1),
        .D(disp_reg_0),
        .Q(disp),
        .R(trst));
  FDRE \q_reg[0] 
       (.C(CLK),
        .CE(stbo),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \q_reg[1] 
       (.C(CLK),
        .CE(stbo),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \q_reg[2] 
       (.C(CLK),
        .CE(stbo),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \q_reg[3] 
       (.C(CLK),
        .CE(stbo),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \q_reg[4] 
       (.C(CLK),
        .CE(stbo),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \q_reg[5] 
       (.C(CLK),
        .CE(stbo),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \q_reg[6] 
       (.C(CLK),
        .CE(stbo),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \q_reg[7] 
       (.C(CLK),
        .CE(stbo),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \q_reg[8] 
       (.C(CLK),
        .CE(stbo),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \q_reg[9] 
       (.C(CLK),
        .CE(stbo),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_endpoint" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint
   (sync,
    clk,
    rst,
    tstamp,
    rdy,
    stat,
    tx_dis,
    txd,
    sync_stb,
    rec_d,
    sclk,
    addr,
    srst);
  output [7:0]sync;
  output clk;
  output rst;
  output [63:0]tstamp;
  output rdy;
  output [3:0]stat;
  output tx_dis;
  output txd;
  output sync_stb;
  input rec_d;
  input sclk;
  input [15:0]addr;
  input srst;

  wire [15:0]addr;
  wire cdr_locked;
  wire clk;
  wire d;
  wire [11:0]phase;
  wire phase_done;
  wire rdy;
  wire rec_d;
  wire rst;
  wire rxcdr_n_2;
  wire sclk;
  wire srst;
  wire [3:0]stat;
  wire [7:0]sync;
  wire sync_stb;
  wire [63:0]tstamp;
  wire tx_dis;
  wire txd;
  wire [0:0]wb;
  wire NLW_rxcdr_clko2x_UNCONNECTED;
  wire NLW_rxcdr_rclko_UNCONNECTED;
  wire [7:0]NLW_rxcdr_dbg_UNCONNECTED;

  design_1_pdts_endpoint_wrapper_0_0_pdts_ep_core ep
       (.CLK(clk),
        .Q(wb),
        .addr(addr),
        .locked(cdr_locked),
        .out(stat[3]),
        .phase(phase),
        .phase_done(phase_done),
        .q(sync),
        .rdy(rdy),
        .rsto(rst),
        .\s_reg[1][0] (d),
        .sclk(sclk),
        .srst(srst),
        .stat(stat[2:0]),
        .sync_stb(sync_stb),
        .tstamp(tstamp),
        .tx_dis(tx_dis));
  (* EXT_PLL_DIV = "2" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* USE_EXT_PLL = "FALSE" *) 
  design_1_pdts_endpoint_wrapper_0_0_pdts_ep_cdr rxcdr
       (.clko(clk),
        .clko2x(NLW_rxcdr_clko2x_UNCONNECTED),
        .clko4x(rxcdr_n_2),
        .d(rec_d),
        .dbg(NLW_rxcdr_dbg_UNCONNECTED[7:0]),
        .locked(cdr_locked),
        .phase(phase),
        .phase_done(phase_done),
        .q(d),
        .rclki(1'b0),
        .rclko(NLW_rxcdr_rclko_UNCONNECTED),
        .rsti(1'b0),
        .rsto(rst));
  design_1_pdts_endpoint_wrapper_0_0_pdts_mod txmod
       (.CLK(rxcdr_n_2),
        .Q(wb),
        .SS(rst),
        .txd(txd));
endmodule

(* ORIG_REF_NAME = "pdts_endpoint_wrapper" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint_wrapper
   (sync,
    rst,
    tstamp,
    rdy,
    out,
    tx_dis,
    stat,
    txd,
    sync_stb,
    clk,
    rec_d,
    sclk,
    addr,
    srst,
    rec_clk,
    ts_clk_sel);
  output [7:0]sync;
  output rst;
  output [63:0]tstamp;
  output rdy;
  output [0:0]out;
  output tx_dis;
  output [2:0]stat;
  output txd;
  output sync_stb;
  output clk;
  input rec_d;
  input sclk;
  input [15:0]addr;
  input srst;
  input rec_clk;
  input ts_clk_sel;

  wire [15:0]addr;
  wire clk;
  wire clk_from_endpoint;
  wire [0:0]out;
  wire rdy;
  wire rec_clk;
  wire rec_d;
  wire rst;
  wire sclk;
  wire srst;
  wire [2:0]stat;
  wire [7:0]sync;
  wire sync_stb;
  wire ts_clk_sel;
  wire [63:0]tstamp;
  wire tx_dis;
  wire txd;

  (* XILINX_LEGACY_PRIM = "BUFGMUX" *) 
  (* XILINX_TRANSFORM_PINMAP = "S:CE1,CE0" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .IS_CE0_INVERTED(1'b1),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    ts_clk_mux
       (.CE0(ts_clk_sel),
        .CE1(ts_clk_sel),
        .I0(clk_from_endpoint),
        .I1(rec_clk),
        .IGNORE0(1'b0),
        .IGNORE1(1'b0),
        .O(clk),
        .S0(1'b1),
        .S1(1'b1));
  design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint ts_ep
       (.addr(addr),
        .clk(clk_from_endpoint),
        .rdy(rdy),
        .rec_d(rec_d),
        .rst(rst),
        .sclk(sclk),
        .srst(srst),
        .stat({out,stat}),
        .sync(sync),
        .sync_stb(sync_stb),
        .tstamp(tstamp),
        .tx_dis(tx_dis),
        .txd(txd));
endmodule

(* EXT_PLL_DIV = "2" *) (* ORIG_REF_NAME = "pdts_ep_cdr" *) (* USE_EXT_PLL = "FALSE" *) 
(* keep_hierarchy = "soft" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_ep_cdr
   (d,
    rclko,
    rclki,
    rsti,
    clko,
    clko4x,
    clko2x,
    rsto,
    q,
    locked,
    phase,
    phase_done,
    dbg);
  input d;
  output rclko;
  input rclki;
  input rsti;
  output clko;
  output clko4x;
  output clko2x;
  output rsto;
  output q;
  output locked;
  (* mark_debug = "true" *) input [11:0]phase;
  output phase_done;
  output [7:0]dbg;

  wire \<const0> ;
  wire bclk;
  wire bclk_f;
  wire bufg2x_n_0;
  wire clko;
  wire clko4x;
  wire clku;
  wire clku2x;
  wire clku4x;
  (* MARK_DEBUG *) wire [11:0]cphase;
  wire \cphase[11]_i_2_n_0 ;
  wire \cphase[11]_i_3_n_0 ;
  wire \cphase[11]_i_4_n_0 ;
  wire \cphase[11]_i_5_n_0 ;
  wire \cphase[7]_i_10_n_0 ;
  wire \cphase[7]_i_2_n_0 ;
  wire \cphase[7]_i_3_n_0 ;
  wire \cphase[7]_i_4_n_0 ;
  wire \cphase[7]_i_5_n_0 ;
  wire \cphase[7]_i_6_n_0 ;
  wire \cphase[7]_i_7_n_0 ;
  wire \cphase[7]_i_8_n_0 ;
  wire \cphase[7]_i_9_n_0 ;
  wire [11:0]cphase__0;
  wire \cphase_reg[11]_i_1_n_5 ;
  wire \cphase_reg[11]_i_1_n_6 ;
  wire \cphase_reg[11]_i_1_n_7 ;
  wire \cphase_reg[7]_i_1_n_0 ;
  wire \cphase_reg[7]_i_1_n_1 ;
  wire \cphase_reg[7]_i_1_n_2 ;
  wire \cphase_reg[7]_i_1_n_3 ;
  wire \cphase_reg[7]_i_1_n_4 ;
  wire \cphase_reg[7]_i_1_n_5 ;
  wire \cphase_reg[7]_i_1_n_6 ;
  wire \cphase_reg[7]_i_1_n_7 ;
  wire d;
  wire locked;
  wire mlock;
  wire oddr_rclko_n_0;
  wire p_0_in__0;
  (* MARK_DEBUG *) wire [11:0]phase;
  (* MARK_DEBUG *) wire psact;
  wire psact_i_1_n_0;
  (* MARK_DEBUG *) wire psd;
  wire psd_inferred_i_2_n_0;
  wire psd_inferred_i_3_n_0;
  wire psd_inferred_i_4_n_0;
  wire psd_inferred_i_5_n_0;
  (* MARK_DEBUG *) wire psdone;
  (* MARK_DEBUG *) wire psen;
  wire psen_i_1_n_0;
  wire psen_i_2_n_0;
  (* MARK_DEBUG *) wire psincdec;
  wire psincdec_i_10_n_0;
  wire psincdec_i_11_n_0;
  wire psincdec_i_12_n_0;
  wire psincdec_i_13_n_0;
  wire psincdec_i_14_n_0;
  wire psincdec_i_1_n_0;
  wire psincdec_i_3_n_0;
  wire psincdec_i_4_n_0;
  wire psincdec_i_5_n_0;
  wire psincdec_i_6_n_0;
  wire psincdec_i_7_n_0;
  wire psincdec_i_8_n_0;
  wire psincdec_i_9_n_0;
  wire psincdec_reg_i_2_n_2;
  wire psincdec_reg_i_2_n_3;
  wire psincdec_reg_i_2_n_4;
  wire psincdec_reg_i_2_n_5;
  wire psincdec_reg_i_2_n_6;
  wire psincdec_reg_i_2_n_7;
  wire q;
  (* async_reg = "yes" *) wire rst;
  (* async_reg = "yes" *) wire rsta;
  wire [7:3]\NLW_cphase_reg[11]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_cphase_reg[11]_i_1_O_UNCONNECTED ;
  wire NLW_mmcm_CDDCDONE_UNCONNECTED;
  wire NLW_mmcm_CLKFBIN_UNCONNECTED;
  wire NLW_mmcm_CLKFBOUT_UNCONNECTED;
  wire NLW_mmcm_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_DRDY_UNCONNECTED;
  wire [15:0]NLW_mmcm_DO_UNCONNECTED;
  wire NLW_oddr_rclko_CLKDIV_UNCONNECTED;
  wire NLW_oddr_rclko_T_OUT_UNCONNECTED;
  wire [7:1]NLW_oddr_rclko_D_UNCONNECTED;
  wire [7:6]NLW_psincdec_reg_i_2_CO_UNCONNECTED;
  wire [7:0]NLW_psincdec_reg_i_2_O_UNCONNECTED;
  wire [7:0]NLW_sm_dbg_UNCONNECTED;

  assign clko2x = \<const0> ;
  assign dbg[7] = \<const0> ;
  assign dbg[6] = \<const0> ;
  assign dbg[5] = \<const0> ;
  assign dbg[4] = \<const0> ;
  assign dbg[3] = \<const0> ;
  assign dbg[2] = \<const0> ;
  assign dbg[1] = \<const0> ;
  assign dbg[0] = \<const0> ;
  assign phase_done = psd;
  assign rclko = \<const0> ;
  assign rsto = rst;
  GND GND
       (.G(\<const0> ));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    bufg0
       (.CE(1'b1),
        .I(clku),
        .O(clko));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    bufg2x
       (.CE(1'b1),
        .I(clku2x),
        .O(bufg2x_n_0));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    bufg4x
       (.CE(1'b1),
        .I(clku4x),
        .O(clko4x));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    bufgb
       (.CE(1'b1),
        .I(bclk),
        .O(bclk_f));
  (* LOPT_BUFG_MISC *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "BUFR" *) 
  BUFGCE_DIV #(
    .BUFGCE_DIVIDE(2)) 
    bufr0
       (.CE(1'b1),
        .CLR(1'b0),
        .I(d),
        .O(bclk));
  LUT2 #(
    .INIT(4'h9)) 
    \cphase[11]_i_2 
       (.I0(cphase[10]),
        .I1(cphase[11]),
        .O(\cphase[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cphase[11]_i_3 
       (.I0(cphase[9]),
        .I1(cphase[10]),
        .O(\cphase[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cphase[11]_i_4 
       (.I0(cphase[8]),
        .I1(cphase[9]),
        .O(\cphase[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cphase[11]_i_5 
       (.I0(cphase[7]),
        .I1(cphase[8]),
        .O(\cphase[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \cphase[7]_i_10 
       (.I0(psdone),
        .I1(psact),
        .I2(cphase[0]),
        .O(\cphase[7]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cphase[7]_i_2 
       (.I0(cphase[1]),
        .O(\cphase[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cphase[7]_i_3 
       (.I0(cphase[6]),
        .I1(cphase[7]),
        .O(\cphase[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cphase[7]_i_4 
       (.I0(cphase[5]),
        .I1(cphase[6]),
        .O(\cphase[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cphase[7]_i_5 
       (.I0(cphase[4]),
        .I1(cphase[5]),
        .O(\cphase[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cphase[7]_i_6 
       (.I0(cphase[3]),
        .I1(cphase[4]),
        .O(\cphase[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cphase[7]_i_7 
       (.I0(cphase[2]),
        .I1(cphase[3]),
        .O(\cphase[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cphase[7]_i_8 
       (.I0(cphase[1]),
        .I1(cphase[2]),
        .O(\cphase[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \cphase[7]_i_9 
       (.I0(cphase[1]),
        .I1(psdone),
        .I2(psincdec),
        .I3(psact),
        .O(\cphase[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \cphase_reg[0] 
       (.C(clko),
        .CE(1'b1),
        .D(cphase__0[0]),
        .Q(cphase[0]),
        .R(rst));
  (* KEEP = "yes" *) 
  FDRE \cphase_reg[10] 
       (.C(clko),
        .CE(1'b1),
        .D(cphase__0[10]),
        .Q(cphase[10]),
        .R(rst));
  (* KEEP = "yes" *) 
  FDRE \cphase_reg[11] 
       (.C(clko),
        .CE(1'b1),
        .D(cphase__0[11]),
        .Q(cphase[11]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \cphase_reg[11]_i_1 
       (.CI(\cphase_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_cphase_reg[11]_i_1_CO_UNCONNECTED [7:3],\cphase_reg[11]_i_1_n_5 ,\cphase_reg[11]_i_1_n_6 ,\cphase_reg[11]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,cphase[9:7]}),
        .O({\NLW_cphase_reg[11]_i_1_O_UNCONNECTED [7:4],cphase__0[11:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,\cphase[11]_i_2_n_0 ,\cphase[11]_i_3_n_0 ,\cphase[11]_i_4_n_0 ,\cphase[11]_i_5_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \cphase_reg[1] 
       (.C(clko),
        .CE(1'b1),
        .D(cphase__0[1]),
        .Q(cphase[1]),
        .R(rst));
  (* KEEP = "yes" *) 
  FDRE \cphase_reg[2] 
       (.C(clko),
        .CE(1'b1),
        .D(cphase__0[2]),
        .Q(cphase[2]),
        .R(rst));
  (* KEEP = "yes" *) 
  FDRE \cphase_reg[3] 
       (.C(clko),
        .CE(1'b1),
        .D(cphase__0[3]),
        .Q(cphase[3]),
        .R(rst));
  (* KEEP = "yes" *) 
  FDRE \cphase_reg[4] 
       (.C(clko),
        .CE(1'b1),
        .D(cphase__0[4]),
        .Q(cphase[4]),
        .R(rst));
  (* KEEP = "yes" *) 
  FDRE \cphase_reg[5] 
       (.C(clko),
        .CE(1'b1),
        .D(cphase__0[5]),
        .Q(cphase[5]),
        .R(rst));
  (* KEEP = "yes" *) 
  FDRE \cphase_reg[6] 
       (.C(clko),
        .CE(1'b1),
        .D(cphase__0[6]),
        .Q(cphase[6]),
        .R(rst));
  (* KEEP = "yes" *) 
  FDRE \cphase_reg[7] 
       (.C(clko),
        .CE(1'b1),
        .D(cphase__0[7]),
        .Q(cphase[7]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \cphase_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\cphase_reg[7]_i_1_n_0 ,\cphase_reg[7]_i_1_n_1 ,\cphase_reg[7]_i_1_n_2 ,\cphase_reg[7]_i_1_n_3 ,\cphase_reg[7]_i_1_n_4 ,\cphase_reg[7]_i_1_n_5 ,\cphase_reg[7]_i_1_n_6 ,\cphase_reg[7]_i_1_n_7 }),
        .DI({cphase[6:1],\cphase[7]_i_2_n_0 ,cphase[0]}),
        .O(cphase__0[7:0]),
        .S({\cphase[7]_i_3_n_0 ,\cphase[7]_i_4_n_0 ,\cphase[7]_i_5_n_0 ,\cphase[7]_i_6_n_0 ,\cphase[7]_i_7_n_0 ,\cphase[7]_i_8_n_0 ,\cphase[7]_i_9_n_0 ,\cphase[7]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \cphase_reg[8] 
       (.C(clko),
        .CE(1'b1),
        .D(cphase__0[8]),
        .Q(cphase[8]),
        .R(rst));
  (* KEEP = "yes" *) 
  FDRE \cphase_reg[9] 
       (.C(clko),
        .CE(1'b1),
        .D(cphase__0[9]),
        .Q(cphase[9]),
        .R(rst));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "MMCME2_ADV" *) 
  (* box_type = "PRIMITIVE" *) 
  MMCME4_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(32.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(32.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(16.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("TRUE"),
    .CLKOUT1_DIVIDE(4),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("TRUE"),
    .CLKOUT2_DIVIDE(8),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("TRUE"),
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
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.000000),
    .REF_JITTER2(0.000000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm
       (.CDDCDONE(NLW_mmcm_CDDCDONE_UNCONNECTED),
        .CDDCREQ(1'b0),
        .CLKFBIN(NLW_mmcm_CLKFBIN_UNCONNECTED),
        .CLKFBOUT(NLW_mmcm_CLKFBOUT_UNCONNECTED),
        .CLKFBOUTB(NLW_mmcm_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(bclk),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clku),
        .CLKOUT0B(NLW_mmcm_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clku4x),
        .CLKOUT1B(NLW_mmcm_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(clku2x),
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
        .LOCKED(mlock),
        .PSCLK(clko),
        .PSDONE(psdone),
        .PSEN(psen),
        .PSINCDEC(psincdec),
        .PWRDWN(1'b0),
        .RST(1'b0));
  (* XILINX_LEGACY_PRIM = "ODDRE1" *) 
  (* XILINX_TRANSFORM_PINMAP = "C:CLK SR:RST Q:OQ D1:D[0] D2:D[4]" *) 
  (* box_type = "PRIMITIVE" *) 
  OSERDESE3 #(
    .INIT(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .ODDR_MODE("TRUE"),
    .OSERDES_T_BYPASS("TRUE"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    oddr_rclko
       (.CLK(bclk_f),
        .CLKDIV(NLW_oddr_rclko_CLKDIV_UNCONNECTED),
        .D({NLW_oddr_rclko_D_UNCONNECTED[7:5],1'b1,NLW_oddr_rclko_D_UNCONNECTED[3:1],1'b0}),
        .OQ(oddr_rclko_n_0),
        .RST(1'b0),
        .T(1'b0),
        .T_OUT(NLW_oddr_rclko_T_OUT_UNCONNECTED));
  LUT3 #(
    .INIT(8'h53)) 
    psact_i_1
       (.I0(psdone),
        .I1(psd),
        .I2(psact),
        .O(psact_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE psact_reg
       (.C(clko),
        .CE(1'b1),
        .D(psact_i_1_n_0),
        .Q(psact),
        .R(rst));
  LUT4 #(
    .INIT(16'h8000)) 
    psd_inferred_i_1
       (.I0(psd_inferred_i_2_n_0),
        .I1(psd_inferred_i_3_n_0),
        .I2(psd_inferred_i_4_n_0),
        .I3(psd_inferred_i_5_n_0),
        .O(psd));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    psd_inferred_i_2
       (.I0(cphase[3]),
        .I1(phase[3]),
        .I2(phase[5]),
        .I3(cphase[5]),
        .I4(phase[4]),
        .I5(cphase[4]),
        .O(psd_inferred_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    psd_inferred_i_3
       (.I0(cphase[0]),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(cphase[2]),
        .I4(phase[1]),
        .I5(cphase[1]),
        .O(psd_inferred_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    psd_inferred_i_4
       (.I0(cphase[9]),
        .I1(phase[9]),
        .I2(phase[11]),
        .I3(cphase[11]),
        .I4(phase[10]),
        .I5(cphase[10]),
        .O(psd_inferred_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    psd_inferred_i_5
       (.I0(cphase[6]),
        .I1(phase[6]),
        .I2(phase[8]),
        .I3(cphase[8]),
        .I4(phase[7]),
        .I5(cphase[7]),
        .O(psd_inferred_i_5_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    psen_i_1
       (.I0(rst),
        .I1(psact),
        .O(psen_i_1_n_0));
  LUT3 #(
    .INIT(8'hCD)) 
    psen_i_2
       (.I0(rst),
        .I1(psen),
        .I2(psd),
        .O(psen_i_2_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE psen_reg
       (.C(clko),
        .CE(psen_i_1_n_0),
        .D(psen_i_2_n_0),
        .Q(psen),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hCDC8)) 
    psincdec_i_1
       (.I0(rst),
        .I1(psincdec),
        .I2(psd),
        .I3(psincdec_reg_i_2_n_2),
        .O(psincdec_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    psincdec_i_10
       (.I0(phase[8]),
        .I1(cphase[8]),
        .I2(phase[9]),
        .I3(cphase[9]),
        .O(psincdec_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    psincdec_i_11
       (.I0(phase[6]),
        .I1(cphase[6]),
        .I2(phase[7]),
        .I3(cphase[7]),
        .O(psincdec_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    psincdec_i_12
       (.I0(phase[4]),
        .I1(cphase[4]),
        .I2(phase[5]),
        .I3(cphase[5]),
        .O(psincdec_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    psincdec_i_13
       (.I0(phase[2]),
        .I1(cphase[2]),
        .I2(phase[3]),
        .I3(cphase[3]),
        .O(psincdec_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    psincdec_i_14
       (.I0(phase[0]),
        .I1(cphase[0]),
        .I2(phase[1]),
        .I3(cphase[1]),
        .O(psincdec_i_14_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    psincdec_i_3
       (.I0(phase[10]),
        .I1(cphase[10]),
        .I2(cphase[11]),
        .I3(phase[11]),
        .O(psincdec_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    psincdec_i_4
       (.I0(phase[8]),
        .I1(cphase[8]),
        .I2(cphase[9]),
        .I3(phase[9]),
        .O(psincdec_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    psincdec_i_5
       (.I0(phase[6]),
        .I1(cphase[6]),
        .I2(cphase[7]),
        .I3(phase[7]),
        .O(psincdec_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    psincdec_i_6
       (.I0(phase[4]),
        .I1(cphase[4]),
        .I2(cphase[5]),
        .I3(phase[5]),
        .O(psincdec_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    psincdec_i_7
       (.I0(phase[2]),
        .I1(cphase[2]),
        .I2(cphase[3]),
        .I3(phase[3]),
        .O(psincdec_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    psincdec_i_8
       (.I0(phase[0]),
        .I1(cphase[0]),
        .I2(cphase[1]),
        .I3(phase[1]),
        .O(psincdec_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    psincdec_i_9
       (.I0(phase[10]),
        .I1(cphase[10]),
        .I2(phase[11]),
        .I3(cphase[11]),
        .O(psincdec_i_9_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE psincdec_reg
       (.C(clko),
        .CE(psen_i_1_n_0),
        .D(psincdec_i_1_n_0),
        .Q(psincdec),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 psincdec_reg_i_2
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_psincdec_reg_i_2_CO_UNCONNECTED[7:6],psincdec_reg_i_2_n_2,psincdec_reg_i_2_n_3,psincdec_reg_i_2_n_4,psincdec_reg_i_2_n_5,psincdec_reg_i_2_n_6,psincdec_reg_i_2_n_7}),
        .DI({1'b0,1'b0,psincdec_i_3_n_0,psincdec_i_4_n_0,psincdec_i_5_n_0,psincdec_i_6_n_0,psincdec_i_7_n_0,psincdec_i_8_n_0}),
        .O(NLW_psincdec_reg_i_2_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,psincdec_i_9_n_0,psincdec_i_10_n_0,psincdec_i_11_n_0,psincdec_i_12_n_0,psincdec_i_13_n_0,psincdec_i_14_n_0}));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE rst_reg
       (.C(clko),
        .CE(1'b1),
        .D(rsta),
        .Q(rst),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    rsta_i_1
       (.I0(mlock),
        .O(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE rsta_reg
       (.C(clko),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(rsta),
        .R(1'b0));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_pdts_endpoint_wrapper_0_0_pdts_cdr_sampler sm
       (.clk(clko),
        .clk4x(clko4x),
        .d(d),
        .dbg(NLW_sm_dbg_UNCONNECTED[7:0]),
        .locked(locked),
        .q(q),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "pdts_ep_core" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_ep_core
   (q,
    rdy,
    out,
    phase,
    tx_dis,
    stat,
    tstamp,
    Q,
    sync_stb,
    CLK,
    sclk,
    \s_reg[1][0] ,
    addr,
    phase_done,
    locked,
    rsto,
    srst);
  output [7:0]q;
  output rdy;
  output [0:0]out;
  output [11:0]phase;
  output tx_dis;
  output [2:0]stat;
  output [63:0]tstamp;
  output [0:0]Q;
  output sync_stb;
  input CLK;
  input sclk;
  input \s_reg[1][0] ;
  input [15:0]addr;
  input phase_done;
  input locked;
  input rsto;
  input srst;

  wire CLK;
  wire [0:0]Q;
  wire \acmd_rx_w[last] ;
  wire \acmd_tx_w[last] ;
  wire \acmd_tx_w[valid] ;
  wire \acmdr[rdy] ;
  wire \acmdw_rx[valid] ;
  wire [7:0]adc;
  wire [15:0]addr;
  wire [15:0]addr_0;
  wire addr_done;
  wire \arb/sel ;
  wire ctrl_n_1;
  wire ctrl_n_10;
  wire ctrl_n_11;
  wire ctrl_n_12;
  wire ctrl_n_13;
  wire ctrl_n_14;
  wire ctrl_n_15;
  wire ctrl_n_16;
  wire ctrl_n_17;
  wire ctrl_n_2;
  wire ctrl_n_21;
  wire ctrl_n_22;
  wire ctrl_n_23;
  wire ctrl_n_24;
  wire ctrl_n_25;
  wire ctrl_n_26;
  wire ctrl_n_27;
  wire ctrl_n_28;
  wire ctrl_n_29;
  wire ctrl_n_3;
  wire ctrl_n_4;
  wire ctrl_n_5;
  wire ctrl_n_6;
  wire ctrl_n_7;
  wire ctrl_n_8;
  wire [3:0]delay;
  wire deskew_done;
  wire locked;
  wire locked_0;
  wire [0:0]out;
  wire [11:0]phase;
  wire phase_done;
  wire \pkt/p_11_in ;
  wire pkt_err;
  wire [7:0]q;
  wire \rctrl_r[ack] ;
  wire [7:0]\rctrl_r[d] ;
  wire rdy;
  wire reset;
  wire resync;
  wire rrst;
  wire rst_pkt;
  wire rsto;
  wire rx_en;
  wire rx_n_19;
  wire rx_n_20;
  wire rx_rdy;
  wire \rxbuf/s0 ;
  wire \rxbuf/txdone__0 ;
  wire rxdone;
  wire s;
  wire \s_reg[1][0] ;
  wire sclk;
  wire srst;
  wire [2:0]stat;
  wire stb;
  wire sync_stb;
  wire trst;
  wire ts_stb;
  wire tsrdy;
  wire [63:0]tstamp;
  wire [63:0]tstamp_i;
  wire tx_dis;
  wire tx_n_1;
  wire \txbuf/ren__0 ;
  wire \txbuf/txdone__0 ;

  design_1_pdts_endpoint_wrapper_0_0_pdts_ep_ctrl ctrl
       (.CLK(CLK),
        .D(pkt_err),
        .Q(ctrl_n_10),
        .\acmd_tx_w[valid] (\acmd_tx_w[valid] ),
        .\acmdr[rdy] (\acmdr[rdy] ),
        .\acmdw_rx[valid] (\acmdw_rx[valid] ),
        .\addr_reg[6] ({ctrl_n_11,ctrl_n_12,ctrl_n_13,ctrl_n_14,ctrl_n_15,ctrl_n_16,ctrl_n_17}),
        .\ctrl_in[stb] (ctrl_n_29),
        .\ctrl_out[ack] (\rctrl_r[ack] ),
        .\ctrl_out[d] (\rctrl_r[d] ),
        .d({\acmd_rx_w[last] ,adc}),
        .p_11_in(\pkt/p_11_in ),
        .\p_reg[0] ({\acmd_tx_w[last] ,ctrl_n_21,ctrl_n_22,ctrl_n_23,ctrl_n_24,ctrl_n_25,ctrl_n_26,ctrl_n_27,ctrl_n_28}),
        .q({ctrl_n_1,ctrl_n_2,ctrl_n_3,ctrl_n_4,ctrl_n_5,ctrl_n_6,ctrl_n_7,ctrl_n_8}),
        .ren__0(\txbuf/ren__0 ),
        .rxdone(rxdone),
        .s0(\rxbuf/s0 ),
        .sel(\arb/sel ),
        .trst(trst),
        .txdone__0(\rxbuf/txdone__0 ),
        .txdone__0_0(\txbuf/txdone__0 ),
        .wen(rx_n_19));
  (* EXT_ADDR = "TRUE" *) 
  (* FORCE_TX = "FALSE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* SKIP_DESKEW = "TRUE" *) 
  design_1_pdts_endpoint_wrapper_0_0_pdts_ep_regfile regfile
       (.addr(addr_0),
        .addr_done(addr_done),
        .clk(CLK),
        .\ctrl_in[a] ({ctrl_n_11,ctrl_n_12,ctrl_n_13,ctrl_n_14,ctrl_n_15,ctrl_n_16,ctrl_n_17}),
        .\ctrl_in[d] ({ctrl_n_1,ctrl_n_2,ctrl_n_3,ctrl_n_4,ctrl_n_5,ctrl_n_6,ctrl_n_7,ctrl_n_8}),
        .\ctrl_in[rw] (ctrl_n_10),
        .\ctrl_in[stb] (ctrl_n_29),
        .\ctrl_out[ack] (\rctrl_r[ack] ),
        .\ctrl_out[d] (\rctrl_r[d] ),
        .delay(delay),
        .deskew_done(deskew_done),
        .phase(phase),
        .phase_done(phase_done),
        .reset(reset),
        .resync(resync),
        .rst(rrst),
        .stat({out,stat}),
        .sys_addr(addr),
        .ts_stb(ts_stb),
        .tstamp(tstamp_i),
        .txenb(tx_dis));
  design_1_pdts_endpoint_wrapper_0_0_pdts_rx rx
       (.CLK(CLK),
        .D(q),
        .E(rx_n_20),
        .SR(rst_pkt),
        .\acmdw_rx[valid] (\acmdw_rx[valid] ),
        .\actr_i_reg[4] (tx_n_1),
        .addr(addr_0),
        .d({\acmd_rx_w[last] ,adc}),
        .delay(delay),
        .locked(locked_0),
        .p_11_in(\pkt/p_11_in ),
        .rxdone(rxdone),
        .s(s),
        .s0(\rxbuf/s0 ),
        .\s_reg[1][0] (\s_reg[1][0] ),
        .\state_reg[1] (rx_rdy),
        .stbo(stb),
        .sync_stb(sync_stb),
        .trst(trst),
        .txdone__0(\rxbuf/txdone__0 ),
        .wen(rx_n_19));
  design_1_pdts_endpoint_wrapper_0_0_pdts_ep_sm sm
       (.CLK(CLK),
        .D({pkt_err,tsrdy,rx_rdy,locked}),
        .SR(rst_pkt),
        .addr_done(addr_done),
        .\dd_reg[1] (reset),
        .deskew_done(deskew_done),
        .locked(locked_0),
        .q({rx_en,rdy}),
        .resync(resync),
        .rst(rrst),
        .rsto(rsto),
        .sclk(sclk),
        .srst(srst),
        .stat({out,stat}),
        .trst(trst));
  design_1_pdts_endpoint_wrapper_0_0_pdts_ep_tstamp ts
       (.CLK(CLK),
        .D(tsrdy),
        .\ctr_reg[63]_0 (tstamp_i),
        .s(s),
        .trst(trst),
        .ts_stb(ts_stb),
        .tstamp(tstamp));
  design_1_pdts_endpoint_wrapper_0_0_pdts_tx tx
       (.CLK(CLK),
        .E(rx_n_20),
        .Q(Q),
        .\acmd_tx_w[valid] (\acmd_tx_w[valid] ),
        .\acmdr[rdy] (\acmdr[rdy] ),
        .locked(locked),
        .\p_reg[0] ({\acmd_tx_w[last] ,ctrl_n_21,ctrl_n_22,ctrl_n_23,ctrl_n_24,ctrl_n_25,ctrl_n_26,ctrl_n_27,ctrl_n_28}),
        .q(rx_en),
        .ren__0(\txbuf/ren__0 ),
        .resync(resync),
        .rsto(rsto),
        .\sd_reg[7] (q),
        .sel(\arb/sel ),
        .smode_reg(tx_n_1),
        .stbo(stb),
        .sync_stb(sync_stb),
        .trst(trst),
        .txdone__0(\txbuf/txdone__0 ));
endmodule

(* ORIG_REF_NAME = "pdts_ep_ctrl" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_ep_ctrl
   (\acmdw_rx[valid] ,
    q,
    \acmd_tx_w[valid] ,
    Q,
    \addr_reg[6] ,
    txdone__0,
    D,
    \p_reg[0] ,
    \ctrl_in[stb] ,
    s0,
    CLK,
    \ctrl_out[ack] ,
    wen,
    rxdone,
    trst,
    txdone__0_0,
    ren__0,
    sel,
    \acmdr[rdy] ,
    \ctrl_out[d] ,
    p_11_in,
    d);
  output \acmdw_rx[valid] ;
  output [7:0]q;
  output \acmd_tx_w[valid] ;
  output [0:0]Q;
  output [6:0]\addr_reg[6] ;
  output txdone__0;
  output [0:0]D;
  output [8:0]\p_reg[0] ;
  output \ctrl_in[stb] ;
  input s0;
  input CLK;
  input \ctrl_out[ack] ;
  input wen;
  input rxdone;
  input trst;
  input txdone__0_0;
  input ren__0;
  input sel;
  input \acmdr[rdy] ;
  input [7:0]\ctrl_out[d] ;
  input p_11_in;
  input [8:0]d;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire \acmd_tx_w[valid] ;
  wire \acmdr[rdy] ;
  wire \acmdw_rx[last] ;
  wire \acmdw_rx[valid] ;
  wire \acmdw_tx[last] ;
  wire [6:0]\addr_reg[6] ;
  wire \ctrl_in[stb] ;
  wire \ctrl_out[ack] ;
  wire [7:0]\ctrl_out[d] ;
  wire [8:0]d;
  wire err_trans;
  wire err_tx;
  wire p1__0;
  wire p1__0_1;
  wire [7:0]p_0_out;
  wire p_11_in;
  wire [8:0]\p_reg[0] ;
  wire [7:0]q;
  wire ren__0;
  wire rxdone;
  wire rxdone__0;
  wire s0;
  wire s0_0;
  wire sel;
  wire trans_n_2;
  wire trst;
  wire txdone__0;
  wire txdone__0_0;
  wire wen;

  design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf rxbuf
       (.CLK(CLK),
        .D(q),
        .Q(err_trans),
        .\acmdw_rx[last] (\acmdw_rx[last] ),
        .d(d),
        .err_i_reg_0(D),
        .err_tx(err_tx),
        .p1__0(p1__0_1),
        .p_11_in(p_11_in),
        .rxdone(rxdone),
        .s0(s0),
        .s_reg_0(\acmdw_rx[valid] ),
        .trst(trst),
        .txdone__0(txdone__0),
        .wen(wen));
  design_1_pdts_endpoint_wrapper_0_0_pdts_ep_transactor trans
       (.CLK(CLK),
        .D(q),
        .\FSM_onehot_state_reg[0]_0 (\acmd_tx_w[valid] ),
        .\FSM_onehot_state_reg[0]_1 (\acmdw_rx[valid] ),
        .Q({Q,err_trans}),
        .\acmdr[rdy] (\acmdr[rdy] ),
        .\acmdw_rx[last] (\acmdw_rx[last] ),
        .\acmdw_tx[last] (\acmdw_tx[last] ),
        .\addr_reg[6]_0 (\addr_reg[6] ),
        .\ctrl_in[stb] (\ctrl_in[stb] ),
        .\ctrl_out[ack] (\ctrl_out[ack] ),
        .\ctrl_out[d] (\ctrl_out[d] ),
        .d(p_0_out),
        .p1__0(p1__0_1),
        .p1__0_1(p1__0),
        .ren__0(ren__0),
        .rxdone__0(rxdone__0),
        .s0(s0_0),
        .s_reg(\p_reg[0] [8]),
        .sel(sel),
        .trst(trst),
        .txdone__0(txdone__0),
        .wen(wen),
        .wen_0(trans_n_2));
  design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf_3 txbuf
       (.CLK(CLK),
        .\acmd_tx_w[valid] (\acmd_tx_w[valid] ),
        .\acmdr[rdy] (\acmdr[rdy] ),
        .d({\acmdw_tx[last] ,p_0_out}),
        .err_tx(err_tx),
        .p1__0(p1__0),
        .\p_reg[0]_0 (\p_reg[0] ),
        .ren__0(ren__0),
        .rxdone__0(rxdone__0),
        .s0(s0_0),
        .sel(sel),
        .trst(trst),
        .txdone__0_0(txdone__0_0),
        .wen(trans_n_2));
endmodule

(* EXT_ADDR = "TRUE" *) (* FORCE_TX = "FALSE" *) (* ORIG_REF_NAME = "pdts_ep_regfile" *) 
(* SKIP_DESKEW = "TRUE" *) (* keep_hierarchy = "soft" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_ep_regfile
   (clk,
    rst,
    \ctrl_in[a] ,
    \ctrl_in[d] ,
    \ctrl_in[rw] ,
    \ctrl_in[stb] ,
    \ctrl_out[d] ,
    \ctrl_out[ack] ,
    sys_addr,
    addr,
    stat,
    delay,
    phase,
    phase_done,
    resync,
    reset,
    txenb,
    tstamp,
    ts_stb,
    addr_done,
    deskew_done);
  input clk;
  input rst;
  input [6:0]\ctrl_in[a] ;
  input [7:0]\ctrl_in[d] ;
  input \ctrl_in[rw] ;
  input \ctrl_in[stb] ;
  output [7:0]\ctrl_out[d] ;
  output \ctrl_out[ack] ;
  input [15:0]sys_addr;
  output [15:0]addr;
  input [3:0]stat;
  output [3:0]delay;
  output [11:0]phase;
  input phase_done;
  (* mark_debug = "true" *) output resync;
  (* mark_debug = "true" *) output reset;
  (* mark_debug = "true" *) output txenb;
  output [63:0]tstamp;
  output ts_stb;
  (* mark_debug = "true" *) output addr_done;
  (* mark_debug = "true" *) output deskew_done;

  (* MARK_DEBUG *) wire addr_done;
  wire clk;
  wire [6:0]\ctrl_in[a] ;
  wire [7:0]\ctrl_in[d] ;
  wire \ctrl_in[rw] ;
  wire \ctrl_in[stb] ;
  wire \ctrl_out[ack] ;
  wire [7:0]\ctrl_out[d] ;
  wire \ctrl_out[d][0]_INST_0_i_1_n_0 ;
  wire \ctrl_out[d][0]_INST_0_i_2_n_0 ;
  wire \ctrl_out[d][1]_INST_0_i_1_n_0 ;
  wire \ctrl_out[d][1]_INST_0_i_2_n_0 ;
  wire \ctrl_out[d][2]_INST_0_i_1_n_0 ;
  wire \ctrl_out[d][2]_INST_0_i_2_n_0 ;
  wire \ctrl_out[d][3]_INST_0_i_1_n_0 ;
  wire \ctrl_out[d][4]_INST_0_i_1_n_0 ;
  wire \ctrl_out[d][5]_INST_0_i_1_n_0 ;
  wire \ctrl_out[d][6]_INST_0_i_1_n_0 ;
  wire \ctrl_out[d][7]_INST_0_i_1_n_0 ;
  wire \ctrl_out[d][7]_INST_0_i_2_n_0 ;
  wire \ctrl_out[d][7]_INST_0_i_3_n_0 ;
  wire [3:0]delay;
  wire \delay[3]_i_1_n_0 ;
  wire \delay[3]_i_2_n_0 ;
  (* MARK_DEBUG *) wire deskew_done;
  wire p_10_in;
  wire p_11_in;
  wire [11:0]phase;
  wire phase_done;
  wire [2:0]plusOp;
  wire \reg_w[2] ;
  wire \reg_w[3] ;
  wire \reg_w[4] ;
  wire \reg_w[5] ;
  wire [3:0]\reg_w_reg[2] ;
  wire [7:0]\reg_w_reg[4] ;
  wire [7:0]\reg_w_reg[5] ;
  (* MARK_DEBUG *) wire reset;
  wire reset_i_1_n_0;
  wire reset_i_2_n_0;
  (* MARK_DEBUG *) wire resync;
  wire resync_i_1_n_0;
  wire rst;
  wire [3:0]stat;
  wire [15:0]sys_addr;
  wire [2:0]tctr;
  wire ts_stb;
  wire ts_stb0;
  wire [63:0]tstamp;
  wire txen1;
  wire txen_i_1_n_0;
  wire txen_i_2_n_0;
  wire txen_i_3_n_0;
  wire txen_i_4_n_0;
  wire txen_reg_n_0;
  (* MARK_DEBUG *) wire txenb;

  assign addr[15:0] = sys_addr;
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ctrl_out[ack]_INST_0 
       (.I0(\ctrl_in[a] [6]),
        .I1(\ctrl_in[a] [4]),
        .I2(\ctrl_in[a] [5]),
        .I3(\ctrl_in[stb] ),
        .O(\ctrl_out[ack] ));
  LUT6 #(
    .INIT(64'h3033743030007430)) 
    \ctrl_out[d][0]_INST_0 
       (.I0(\ctrl_in[a] [0]),
        .I1(\ctrl_in[a] [3]),
        .I2(\ctrl_out[d][0]_INST_0_i_1_n_0 ),
        .I3(\ctrl_in[a] [1]),
        .I4(\ctrl_in[a] [2]),
        .I5(\ctrl_out[d][0]_INST_0_i_2_n_0 ),
        .O(\ctrl_out[d] [0]));
  LUT6 #(
    .INIT(64'h55C050C005C000C0)) 
    \ctrl_out[d][0]_INST_0_i_1 
       (.I0(\ctrl_in[a] [2]),
        .I1(stat[0]),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [1]),
        .I4(\reg_w_reg[2] [0]),
        .I5(phase[4]),
        .O(\ctrl_out[d][0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEEAE22A2)) 
    \ctrl_out[d][0]_INST_0_i_2 
       (.I0(\reg_w_reg[5] [0]),
        .I1(\ctrl_in[a] [2]),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [1]),
        .I4(\reg_w_reg[4] [0]),
        .O(\ctrl_out[d][0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3033743030007430)) 
    \ctrl_out[d][1]_INST_0 
       (.I0(\ctrl_in[a] [0]),
        .I1(\ctrl_in[a] [3]),
        .I2(\ctrl_out[d][1]_INST_0_i_1_n_0 ),
        .I3(\ctrl_in[a] [1]),
        .I4(\ctrl_in[a] [2]),
        .I5(\ctrl_out[d][1]_INST_0_i_2_n_0 ),
        .O(\ctrl_out[d] [1]));
  LUT6 #(
    .INIT(64'h55C050C005C000C0)) 
    \ctrl_out[d][1]_INST_0_i_1 
       (.I0(\ctrl_in[a] [2]),
        .I1(stat[1]),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [1]),
        .I4(\reg_w_reg[2] [1]),
        .I5(phase[5]),
        .O(\ctrl_out[d][1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEAE22A2)) 
    \ctrl_out[d][1]_INST_0_i_2 
       (.I0(\reg_w_reg[5] [1]),
        .I1(\ctrl_in[a] [2]),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [1]),
        .I4(\reg_w_reg[4] [1]),
        .O(\ctrl_out[d][1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3033743030007430)) 
    \ctrl_out[d][2]_INST_0 
       (.I0(\ctrl_in[a] [0]),
        .I1(\ctrl_in[a] [3]),
        .I2(\ctrl_out[d][2]_INST_0_i_1_n_0 ),
        .I3(\ctrl_in[a] [1]),
        .I4(\ctrl_in[a] [2]),
        .I5(\ctrl_out[d][2]_INST_0_i_2_n_0 ),
        .O(\ctrl_out[d] [2]));
  LUT6 #(
    .INIT(64'h55C050C005C000C0)) 
    \ctrl_out[d][2]_INST_0_i_1 
       (.I0(\ctrl_in[a] [2]),
        .I1(stat[2]),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [1]),
        .I4(\reg_w_reg[2] [2]),
        .I5(phase[6]),
        .O(\ctrl_out[d][2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEAE22A2)) 
    \ctrl_out[d][2]_INST_0_i_2 
       (.I0(\reg_w_reg[5] [2]),
        .I1(\ctrl_in[a] [2]),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [1]),
        .I4(\reg_w_reg[4] [2]),
        .O(\ctrl_out[d][2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \ctrl_out[d][3]_INST_0 
       (.I0(\reg_w_reg[4] [3]),
        .I1(\ctrl_out[d][7]_INST_0_i_1_n_0 ),
        .I2(\reg_w_reg[5] [3]),
        .I3(\ctrl_out[d][7]_INST_0_i_2_n_0 ),
        .I4(\ctrl_out[d][3]_INST_0_i_1_n_0 ),
        .I5(\ctrl_in[a] [3]),
        .O(\ctrl_out[d] [3]));
  LUT6 #(
    .INIT(64'h55C050C005C000C0)) 
    \ctrl_out[d][3]_INST_0_i_1 
       (.I0(\ctrl_in[a] [2]),
        .I1(stat[3]),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [1]),
        .I4(\reg_w_reg[2] [3]),
        .I5(phase[7]),
        .O(\ctrl_out[d][3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \ctrl_out[d][4]_INST_0 
       (.I0(\reg_w_reg[4] [4]),
        .I1(\ctrl_out[d][7]_INST_0_i_1_n_0 ),
        .I2(\reg_w_reg[5] [4]),
        .I3(\ctrl_out[d][7]_INST_0_i_2_n_0 ),
        .I4(\ctrl_out[d][4]_INST_0_i_1_n_0 ),
        .I5(\ctrl_in[a] [3]),
        .O(\ctrl_out[d] [4]));
  LUT6 #(
    .INIT(64'h55C050C005C000C0)) 
    \ctrl_out[d][4]_INST_0_i_1 
       (.I0(\ctrl_in[a] [2]),
        .I1(phase_done),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [1]),
        .I4(phase[0]),
        .I5(phase[8]),
        .O(\ctrl_out[d][4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \ctrl_out[d][5]_INST_0 
       (.I0(\reg_w_reg[4] [5]),
        .I1(\ctrl_out[d][7]_INST_0_i_1_n_0 ),
        .I2(\reg_w_reg[5] [5]),
        .I3(\ctrl_out[d][7]_INST_0_i_2_n_0 ),
        .I4(\ctrl_out[d][5]_INST_0_i_1_n_0 ),
        .I5(\ctrl_in[a] [3]),
        .O(\ctrl_out[d] [5]));
  LUT6 #(
    .INIT(64'h55C050C005C000C0)) 
    \ctrl_out[d][5]_INST_0_i_1 
       (.I0(\ctrl_in[a] [2]),
        .I1(txen_reg_n_0),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [1]),
        .I4(phase[1]),
        .I5(phase[9]),
        .O(\ctrl_out[d][5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \ctrl_out[d][6]_INST_0 
       (.I0(\reg_w_reg[4] [6]),
        .I1(\ctrl_out[d][7]_INST_0_i_1_n_0 ),
        .I2(\reg_w_reg[5] [6]),
        .I3(\ctrl_out[d][7]_INST_0_i_2_n_0 ),
        .I4(\ctrl_out[d][6]_INST_0_i_1_n_0 ),
        .I5(\ctrl_in[a] [3]),
        .O(\ctrl_out[d] [6]));
  LUT5 #(
    .INIT(32'h45400000)) 
    \ctrl_out[d][6]_INST_0_i_1 
       (.I0(\ctrl_in[a] [2]),
        .I1(phase[10]),
        .I2(\ctrl_in[a] [0]),
        .I3(phase[2]),
        .I4(\ctrl_in[a] [1]),
        .O(\ctrl_out[d][6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \ctrl_out[d][7]_INST_0 
       (.I0(\reg_w_reg[4] [7]),
        .I1(\ctrl_out[d][7]_INST_0_i_1_n_0 ),
        .I2(\reg_w_reg[5] [7]),
        .I3(\ctrl_out[d][7]_INST_0_i_2_n_0 ),
        .I4(\ctrl_out[d][7]_INST_0_i_3_n_0 ),
        .I5(\ctrl_in[a] [3]),
        .O(\ctrl_out[d] [7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \ctrl_out[d][7]_INST_0_i_1 
       (.I0(\ctrl_in[a] [2]),
        .I1(\ctrl_in[a] [0]),
        .I2(\ctrl_in[a] [1]),
        .O(\ctrl_out[d][7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ctrl_out[d][7]_INST_0_i_2 
       (.I0(\ctrl_in[a] [1]),
        .I1(\ctrl_in[a] [2]),
        .O(\ctrl_out[d][7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h45400000)) 
    \ctrl_out[d][7]_INST_0_i_3 
       (.I0(\ctrl_in[a] [2]),
        .I1(phase[11]),
        .I2(\ctrl_in[a] [0]),
        .I3(phase[3]),
        .I4(\ctrl_in[a] [1]),
        .O(\ctrl_out[d][7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \delay[3]_i_1 
       (.I0(\ctrl_in[d] [1]),
        .I1(\ctrl_in[d] [0]),
        .I2(\ctrl_in[d] [2]),
        .I3(\delay[3]_i_2_n_0 ),
        .I4(txen1),
        .I5(rst),
        .O(\delay[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \delay[3]_i_2 
       (.I0(\ctrl_in[d] [7]),
        .I1(\ctrl_in[d] [4]),
        .I2(\ctrl_in[d] [3]),
        .I3(\ctrl_in[d] [6]),
        .I4(\ctrl_in[d] [5]),
        .O(\delay[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \delay[3]_i_3 
       (.I0(p_10_in),
        .I1(\ctrl_in[a] [1]),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [2]),
        .I4(\ctrl_in[a] [3]),
        .O(txen1));
  FDRE \delay_reg[0] 
       (.C(clk),
        .CE(\delay[3]_i_1_n_0 ),
        .D(\reg_w_reg[2] [0]),
        .Q(delay[0]),
        .R(1'b0));
  FDRE \delay_reg[1] 
       (.C(clk),
        .CE(\delay[3]_i_1_n_0 ),
        .D(\reg_w_reg[2] [1]),
        .Q(delay[1]),
        .R(1'b0));
  FDRE \delay_reg[2] 
       (.C(clk),
        .CE(\delay[3]_i_1_n_0 ),
        .D(\reg_w_reg[2] [2]),
        .Q(delay[2]),
        .R(1'b0));
  FDRE \delay_reg[3] 
       (.C(clk),
        .CE(\delay[3]_i_1_n_0 ),
        .D(\reg_w_reg[2] [3]),
        .Q(delay[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(addr_done));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(deskew_done));
  LUT5 #(
    .INIT(32'h00000020)) 
    \reg_w[2][7]_i_1 
       (.I0(p_10_in),
        .I1(\ctrl_in[a] [0]),
        .I2(\ctrl_in[a] [1]),
        .I3(\ctrl_in[a] [2]),
        .I4(\ctrl_in[a] [3]),
        .O(\reg_w[2] ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \reg_w[3][7]_i_1 
       (.I0(p_10_in),
        .I1(\ctrl_in[a] [1]),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [2]),
        .I4(\ctrl_in[a] [3]),
        .O(\reg_w[3] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg_w[3][7]_i_2 
       (.I0(\ctrl_in[stb] ),
        .I1(\ctrl_in[a] [5]),
        .I2(\ctrl_in[a] [4]),
        .I3(\ctrl_in[a] [6]),
        .I4(\ctrl_in[rw] ),
        .O(p_10_in));
  LUT5 #(
    .INIT(32'h00000020)) 
    \reg_w[4][7]_i_1 
       (.I0(p_10_in),
        .I1(\ctrl_in[a] [1]),
        .I2(\ctrl_in[a] [2]),
        .I3(\ctrl_in[a] [0]),
        .I4(\ctrl_in[a] [3]),
        .O(\reg_w[4] ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \reg_w[5][7]_i_1 
       (.I0(p_10_in),
        .I1(\ctrl_in[a] [2]),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [1]),
        .I4(\ctrl_in[a] [3]),
        .O(\reg_w[5] ));
  FDRE \reg_w_reg[2][0] 
       (.C(clk),
        .CE(\reg_w[2] ),
        .D(\ctrl_in[d] [0]),
        .Q(\reg_w_reg[2] [0]),
        .R(rst));
  FDRE \reg_w_reg[2][1] 
       (.C(clk),
        .CE(\reg_w[2] ),
        .D(\ctrl_in[d] [1]),
        .Q(\reg_w_reg[2] [1]),
        .R(rst));
  FDRE \reg_w_reg[2][2] 
       (.C(clk),
        .CE(\reg_w[2] ),
        .D(\ctrl_in[d] [2]),
        .Q(\reg_w_reg[2] [2]),
        .R(rst));
  FDRE \reg_w_reg[2][3] 
       (.C(clk),
        .CE(\reg_w[2] ),
        .D(\ctrl_in[d] [3]),
        .Q(\reg_w_reg[2] [3]),
        .R(rst));
  FDRE \reg_w_reg[2][4] 
       (.C(clk),
        .CE(\reg_w[2] ),
        .D(\ctrl_in[d] [4]),
        .Q(phase[0]),
        .R(rst));
  FDRE \reg_w_reg[2][5] 
       (.C(clk),
        .CE(\reg_w[2] ),
        .D(\ctrl_in[d] [5]),
        .Q(phase[1]),
        .R(rst));
  FDRE \reg_w_reg[2][6] 
       (.C(clk),
        .CE(\reg_w[2] ),
        .D(\ctrl_in[d] [6]),
        .Q(phase[2]),
        .R(rst));
  FDRE \reg_w_reg[2][7] 
       (.C(clk),
        .CE(\reg_w[2] ),
        .D(\ctrl_in[d] [7]),
        .Q(phase[3]),
        .R(rst));
  FDRE \reg_w_reg[3][0] 
       (.C(clk),
        .CE(\reg_w[3] ),
        .D(\ctrl_in[d] [0]),
        .Q(phase[4]),
        .R(rst));
  FDRE \reg_w_reg[3][1] 
       (.C(clk),
        .CE(\reg_w[3] ),
        .D(\ctrl_in[d] [1]),
        .Q(phase[5]),
        .R(rst));
  FDRE \reg_w_reg[3][2] 
       (.C(clk),
        .CE(\reg_w[3] ),
        .D(\ctrl_in[d] [2]),
        .Q(phase[6]),
        .R(rst));
  FDRE \reg_w_reg[3][3] 
       (.C(clk),
        .CE(\reg_w[3] ),
        .D(\ctrl_in[d] [3]),
        .Q(phase[7]),
        .R(rst));
  FDRE \reg_w_reg[3][4] 
       (.C(clk),
        .CE(\reg_w[3] ),
        .D(\ctrl_in[d] [4]),
        .Q(phase[8]),
        .R(rst));
  FDRE \reg_w_reg[3][5] 
       (.C(clk),
        .CE(\reg_w[3] ),
        .D(\ctrl_in[d] [5]),
        .Q(phase[9]),
        .R(rst));
  FDRE \reg_w_reg[3][6] 
       (.C(clk),
        .CE(\reg_w[3] ),
        .D(\ctrl_in[d] [6]),
        .Q(phase[10]),
        .R(rst));
  FDRE \reg_w_reg[3][7] 
       (.C(clk),
        .CE(\reg_w[3] ),
        .D(\ctrl_in[d] [7]),
        .Q(phase[11]),
        .R(rst));
  FDRE \reg_w_reg[4][0] 
       (.C(clk),
        .CE(\reg_w[4] ),
        .D(\ctrl_in[d] [0]),
        .Q(\reg_w_reg[4] [0]),
        .R(rst));
  FDRE \reg_w_reg[4][1] 
       (.C(clk),
        .CE(\reg_w[4] ),
        .D(\ctrl_in[d] [1]),
        .Q(\reg_w_reg[4] [1]),
        .R(rst));
  FDRE \reg_w_reg[4][2] 
       (.C(clk),
        .CE(\reg_w[4] ),
        .D(\ctrl_in[d] [2]),
        .Q(\reg_w_reg[4] [2]),
        .R(rst));
  FDRE \reg_w_reg[4][3] 
       (.C(clk),
        .CE(\reg_w[4] ),
        .D(\ctrl_in[d] [3]),
        .Q(\reg_w_reg[4] [3]),
        .R(rst));
  FDRE \reg_w_reg[4][4] 
       (.C(clk),
        .CE(\reg_w[4] ),
        .D(\ctrl_in[d] [4]),
        .Q(\reg_w_reg[4] [4]),
        .R(rst));
  FDRE \reg_w_reg[4][5] 
       (.C(clk),
        .CE(\reg_w[4] ),
        .D(\ctrl_in[d] [5]),
        .Q(\reg_w_reg[4] [5]),
        .R(rst));
  FDRE \reg_w_reg[4][6] 
       (.C(clk),
        .CE(\reg_w[4] ),
        .D(\ctrl_in[d] [6]),
        .Q(\reg_w_reg[4] [6]),
        .R(rst));
  FDRE \reg_w_reg[4][7] 
       (.C(clk),
        .CE(\reg_w[4] ),
        .D(\ctrl_in[d] [7]),
        .Q(\reg_w_reg[4] [7]),
        .R(rst));
  FDRE \reg_w_reg[5][0] 
       (.C(clk),
        .CE(\reg_w[5] ),
        .D(\ctrl_in[d] [0]),
        .Q(\reg_w_reg[5] [0]),
        .R(rst));
  FDRE \reg_w_reg[5][1] 
       (.C(clk),
        .CE(\reg_w[5] ),
        .D(\ctrl_in[d] [1]),
        .Q(\reg_w_reg[5] [1]),
        .R(rst));
  FDRE \reg_w_reg[5][2] 
       (.C(clk),
        .CE(\reg_w[5] ),
        .D(\ctrl_in[d] [2]),
        .Q(\reg_w_reg[5] [2]),
        .R(rst));
  FDRE \reg_w_reg[5][3] 
       (.C(clk),
        .CE(\reg_w[5] ),
        .D(\ctrl_in[d] [3]),
        .Q(\reg_w_reg[5] [3]),
        .R(rst));
  FDRE \reg_w_reg[5][4] 
       (.C(clk),
        .CE(\reg_w[5] ),
        .D(\ctrl_in[d] [4]),
        .Q(\reg_w_reg[5] [4]),
        .R(rst));
  FDRE \reg_w_reg[5][5] 
       (.C(clk),
        .CE(\reg_w[5] ),
        .D(\ctrl_in[d] [5]),
        .Q(\reg_w_reg[5] [5]),
        .R(rst));
  FDRE \reg_w_reg[5][6] 
       (.C(clk),
        .CE(\reg_w[5] ),
        .D(\ctrl_in[d] [6]),
        .Q(\reg_w_reg[5] [6]),
        .R(rst));
  FDRE \reg_w_reg[5][7] 
       (.C(clk),
        .CE(\reg_w[5] ),
        .D(\ctrl_in[d] [7]),
        .Q(\reg_w_reg[5] [7]),
        .R(rst));
  LUT3 #(
    .INIT(8'hB8)) 
    reset_i_1
       (.I0(reset_i_2_n_0),
        .I1(txen1),
        .I2(reset),
        .O(reset_i_1_n_0));
  LUT5 #(
    .INIT(32'hCCCCDCCC)) 
    reset_i_2
       (.I0(\delay[3]_i_2_n_0 ),
        .I1(reset),
        .I2(\ctrl_in[d] [2]),
        .I3(\ctrl_in[d] [0]),
        .I4(\ctrl_in[d] [1]),
        .O(reset_i_2_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE reset_reg
       (.C(clk),
        .CE(1'b1),
        .D(reset_i_1_n_0),
        .Q(reset),
        .R(rst));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA0008)) 
    resync_i_1
       (.I0(txen1),
        .I1(\ctrl_in[d] [2]),
        .I2(\ctrl_in[d] [0]),
        .I3(\ctrl_in[d] [1]),
        .I4(resync),
        .I5(\delay[3]_i_2_n_0 ),
        .O(resync_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE resync_reg
       (.C(clk),
        .CE(1'b1),
        .D(resync_i_1_n_0),
        .Q(resync),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \tctr[0]_i_1 
       (.I0(tctr[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tctr[1]_i_1 
       (.I0(tctr[0]),
        .I1(tctr[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tctr[2]_i_1 
       (.I0(tctr[0]),
        .I1(tctr[1]),
        .I2(tctr[2]),
        .O(plusOp[2]));
  FDRE \tctr_reg[0] 
       (.C(clk),
        .CE(p_11_in),
        .D(plusOp[0]),
        .Q(tctr[0]),
        .R(rst));
  FDRE \tctr_reg[1] 
       (.C(clk),
        .CE(p_11_in),
        .D(plusOp[1]),
        .Q(tctr[1]),
        .R(rst));
  FDRE \tctr_reg[2] 
       (.C(clk),
        .CE(p_11_in),
        .D(plusOp[2]),
        .Q(tctr[2]),
        .R(rst));
  LUT4 #(
    .INIT(16'h8000)) 
    ts_stb_i_1
       (.I0(tctr[1]),
        .I1(tctr[2]),
        .I2(tctr[0]),
        .I3(p_11_in),
        .O(ts_stb0));
  FDRE ts_stb_reg
       (.C(clk),
        .CE(1'b1),
        .D(ts_stb0),
        .Q(ts_stb),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \tstamp_i[63]_i_1 
       (.I0(p_10_in),
        .I1(\ctrl_in[a] [1]),
        .I2(\ctrl_in[a] [0]),
        .I3(\ctrl_in[a] [3]),
        .I4(\ctrl_in[a] [2]),
        .O(p_11_in));
  FDRE \tstamp_i_reg[0] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[8]),
        .Q(tstamp[0]),
        .R(rst));
  FDRE \tstamp_i_reg[10] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[18]),
        .Q(tstamp[10]),
        .R(rst));
  FDRE \tstamp_i_reg[11] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[19]),
        .Q(tstamp[11]),
        .R(rst));
  FDRE \tstamp_i_reg[12] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[20]),
        .Q(tstamp[12]),
        .R(rst));
  FDRE \tstamp_i_reg[13] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[21]),
        .Q(tstamp[13]),
        .R(rst));
  FDRE \tstamp_i_reg[14] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[22]),
        .Q(tstamp[14]),
        .R(rst));
  FDRE \tstamp_i_reg[15] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[23]),
        .Q(tstamp[15]),
        .R(rst));
  FDRE \tstamp_i_reg[16] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[24]),
        .Q(tstamp[16]),
        .R(rst));
  FDRE \tstamp_i_reg[17] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[25]),
        .Q(tstamp[17]),
        .R(rst));
  FDRE \tstamp_i_reg[18] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[26]),
        .Q(tstamp[18]),
        .R(rst));
  FDRE \tstamp_i_reg[19] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[27]),
        .Q(tstamp[19]),
        .R(rst));
  FDRE \tstamp_i_reg[1] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[9]),
        .Q(tstamp[1]),
        .R(rst));
  FDRE \tstamp_i_reg[20] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[28]),
        .Q(tstamp[20]),
        .R(rst));
  FDRE \tstamp_i_reg[21] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[29]),
        .Q(tstamp[21]),
        .R(rst));
  FDRE \tstamp_i_reg[22] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[30]),
        .Q(tstamp[22]),
        .R(rst));
  FDRE \tstamp_i_reg[23] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[31]),
        .Q(tstamp[23]),
        .R(rst));
  FDRE \tstamp_i_reg[24] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[32]),
        .Q(tstamp[24]),
        .R(rst));
  FDRE \tstamp_i_reg[25] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[33]),
        .Q(tstamp[25]),
        .R(rst));
  FDRE \tstamp_i_reg[26] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[34]),
        .Q(tstamp[26]),
        .R(rst));
  FDRE \tstamp_i_reg[27] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[35]),
        .Q(tstamp[27]),
        .R(rst));
  FDRE \tstamp_i_reg[28] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[36]),
        .Q(tstamp[28]),
        .R(rst));
  FDRE \tstamp_i_reg[29] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[37]),
        .Q(tstamp[29]),
        .R(rst));
  FDRE \tstamp_i_reg[2] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[10]),
        .Q(tstamp[2]),
        .R(rst));
  FDRE \tstamp_i_reg[30] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[38]),
        .Q(tstamp[30]),
        .R(rst));
  FDRE \tstamp_i_reg[31] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[39]),
        .Q(tstamp[31]),
        .R(rst));
  FDRE \tstamp_i_reg[32] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[40]),
        .Q(tstamp[32]),
        .R(rst));
  FDRE \tstamp_i_reg[33] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[41]),
        .Q(tstamp[33]),
        .R(rst));
  FDRE \tstamp_i_reg[34] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[42]),
        .Q(tstamp[34]),
        .R(rst));
  FDRE \tstamp_i_reg[35] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[43]),
        .Q(tstamp[35]),
        .R(rst));
  FDRE \tstamp_i_reg[36] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[44]),
        .Q(tstamp[36]),
        .R(rst));
  FDRE \tstamp_i_reg[37] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[45]),
        .Q(tstamp[37]),
        .R(rst));
  FDRE \tstamp_i_reg[38] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[46]),
        .Q(tstamp[38]),
        .R(rst));
  FDRE \tstamp_i_reg[39] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[47]),
        .Q(tstamp[39]),
        .R(rst));
  FDRE \tstamp_i_reg[3] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[11]),
        .Q(tstamp[3]),
        .R(rst));
  FDRE \tstamp_i_reg[40] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[48]),
        .Q(tstamp[40]),
        .R(rst));
  FDRE \tstamp_i_reg[41] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[49]),
        .Q(tstamp[41]),
        .R(rst));
  FDRE \tstamp_i_reg[42] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[50]),
        .Q(tstamp[42]),
        .R(rst));
  FDRE \tstamp_i_reg[43] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[51]),
        .Q(tstamp[43]),
        .R(rst));
  FDRE \tstamp_i_reg[44] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[52]),
        .Q(tstamp[44]),
        .R(rst));
  FDRE \tstamp_i_reg[45] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[53]),
        .Q(tstamp[45]),
        .R(rst));
  FDRE \tstamp_i_reg[46] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[54]),
        .Q(tstamp[46]),
        .R(rst));
  FDRE \tstamp_i_reg[47] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[55]),
        .Q(tstamp[47]),
        .R(rst));
  FDRE \tstamp_i_reg[48] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[56]),
        .Q(tstamp[48]),
        .R(rst));
  FDRE \tstamp_i_reg[49] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[57]),
        .Q(tstamp[49]),
        .R(rst));
  FDRE \tstamp_i_reg[4] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[12]),
        .Q(tstamp[4]),
        .R(rst));
  FDRE \tstamp_i_reg[50] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[58]),
        .Q(tstamp[50]),
        .R(rst));
  FDRE \tstamp_i_reg[51] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[59]),
        .Q(tstamp[51]),
        .R(rst));
  FDRE \tstamp_i_reg[52] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[60]),
        .Q(tstamp[52]),
        .R(rst));
  FDRE \tstamp_i_reg[53] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[61]),
        .Q(tstamp[53]),
        .R(rst));
  FDRE \tstamp_i_reg[54] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[62]),
        .Q(tstamp[54]),
        .R(rst));
  FDRE \tstamp_i_reg[55] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[63]),
        .Q(tstamp[55]),
        .R(rst));
  FDRE \tstamp_i_reg[56] 
       (.C(clk),
        .CE(p_11_in),
        .D(\ctrl_in[d] [0]),
        .Q(tstamp[56]),
        .R(rst));
  FDRE \tstamp_i_reg[57] 
       (.C(clk),
        .CE(p_11_in),
        .D(\ctrl_in[d] [1]),
        .Q(tstamp[57]),
        .R(rst));
  FDRE \tstamp_i_reg[58] 
       (.C(clk),
        .CE(p_11_in),
        .D(\ctrl_in[d] [2]),
        .Q(tstamp[58]),
        .R(rst));
  FDRE \tstamp_i_reg[59] 
       (.C(clk),
        .CE(p_11_in),
        .D(\ctrl_in[d] [3]),
        .Q(tstamp[59]),
        .R(rst));
  FDRE \tstamp_i_reg[5] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[13]),
        .Q(tstamp[5]),
        .R(rst));
  FDRE \tstamp_i_reg[60] 
       (.C(clk),
        .CE(p_11_in),
        .D(\ctrl_in[d] [4]),
        .Q(tstamp[60]),
        .R(rst));
  FDRE \tstamp_i_reg[61] 
       (.C(clk),
        .CE(p_11_in),
        .D(\ctrl_in[d] [5]),
        .Q(tstamp[61]),
        .R(rst));
  FDRE \tstamp_i_reg[62] 
       (.C(clk),
        .CE(p_11_in),
        .D(\ctrl_in[d] [6]),
        .Q(tstamp[62]),
        .R(rst));
  FDRE \tstamp_i_reg[63] 
       (.C(clk),
        .CE(p_11_in),
        .D(\ctrl_in[d] [7]),
        .Q(tstamp[63]),
        .R(rst));
  FDRE \tstamp_i_reg[6] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[14]),
        .Q(tstamp[6]),
        .R(rst));
  FDRE \tstamp_i_reg[7] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[15]),
        .Q(tstamp[7]),
        .R(rst));
  FDRE \tstamp_i_reg[8] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[16]),
        .Q(tstamp[8]),
        .R(rst));
  FDRE \tstamp_i_reg[9] 
       (.C(clk),
        .CE(p_11_in),
        .D(tstamp[17]),
        .Q(tstamp[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h00000000AAAABA0A)) 
    txen_i_1
       (.I0(txen_reg_n_0),
        .I1(txen_i_2_n_0),
        .I2(txen1),
        .I3(txen_i_3_n_0),
        .I4(txen_i_4_n_0),
        .I5(rst),
        .O(txen_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    txen_i_2
       (.I0(\ctrl_in[d] [2]),
        .I1(\ctrl_in[d] [3]),
        .I2(\ctrl_in[d] [0]),
        .I3(\ctrl_in[d] [1]),
        .O(txen_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    txen_i_3
       (.I0(\ctrl_in[d] [2]),
        .I1(\ctrl_in[d] [3]),
        .I2(\ctrl_in[d] [0]),
        .I3(\ctrl_in[d] [1]),
        .O(txen_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    txen_i_4
       (.I0(\ctrl_in[d] [7]),
        .I1(\ctrl_in[d] [6]),
        .I2(\ctrl_in[d] [4]),
        .I3(\ctrl_in[d] [5]),
        .O(txen_i_4_n_0));
  FDRE txen_reg
       (.C(clk),
        .CE(1'b1),
        .D(txen_i_1_n_0),
        .Q(txen_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    txenb_inferred_i_1
       (.I0(txen_reg_n_0),
        .O(txenb));
endmodule

(* ORIG_REF_NAME = "pdts_ep_sm" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_ep_sm
   (q,
    stat,
    SR,
    trst,
    rst,
    sclk,
    CLK,
    srst,
    rsto,
    resync,
    D,
    locked,
    \dd_reg[1] ,
    addr_done,
    deskew_done);
  output [1:0]q;
  output [3:0]stat;
  output [0:0]SR;
  output trst;
  output rst;
  input sclk;
  input CLK;
  input srst;
  input rsto;
  input resync;
  input [3:0]D;
  input locked;
  input [0:0]\dd_reg[1] ;
  input addr_done;
  input deskew_done;

  wire CLK;
  wire [3:0]D;
  wire [0:0]SR;
  wire addr_done;
  wire cctr01_out;
  wire \cctr[15]_i_1_n_0 ;
  wire \cctr[15]_i_3_n_0 ;
  wire \cctr[15]_i_4_n_0 ;
  wire \cctr[15]_i_5_n_0 ;
  wire [15:0]cctr_reg;
  (* MARK_DEBUG *) wire cdr_ok;
  (* MARK_DEBUG *) wire clk_ok;
  wire [0:0]\dd_reg[1] ;
  wire deskew_done;
  wire f_ok_i_1_n_0;
  wire f_ok_i_2_n_0;
  wire f_ok_i_3_n_0;
  wire f_ok_i_4_n_0;
  wire f_ok_i_5_n_0;
  wire f_ok_reg_n_0;
  wire locked;
  wire [3:0]p_0_in__0;
  wire [2:2]p_3_out;
  (* MARK_DEBUG *) wire pkt_err_i;
  wire [7:0]plusOp;
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
  wire [15:0]plusOp__6;
  wire [15:0]plusOp__7;
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
  wire [1:0]q;
  wire \rctr[7]_i_2_n_0 ;
  wire [7:7]rctr_reg;
  wire \rctr_reg_n_0_[0] ;
  wire \rctr_reg_n_0_[1] ;
  wire \rctr_reg_n_0_[2] ;
  wire \rctr_reg_n_0_[3] ;
  wire \rctr_reg_n_0_[4] ;
  wire \rctr_reg_n_0_[5] ;
  wire \rctr_reg_n_0_[6] ;
  (* MARK_DEBUG *) wire rdy;
  wire reg_rst;
  (* MARK_DEBUG *) wire reset_i;
  wire resync;
  (* MARK_DEBUG *) wire resync_i;
  wire rst;
  wire rsto;
  (* MARK_DEBUG *) wire rx_en_i;
  (* MARK_DEBUG *) wire rx_ok;
  wire sclk;
  wire \sctr[15]_i_1_n_0 ;
  wire [15:0]sctr_reg;
  wire srst;
  wire [2:0]\^stat ;
  (* MARK_DEBUG *) wire [3:0]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[1]_i_2__0_n_0 ;
  wire \state[1]_i_3__0_n_0 ;
  wire \state[1]_i_4__0_n_0 ;
  wire \state[1]_i_5__0_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire state_reg0;
  wire t;
  wire td;
  wire trst;
  (* MARK_DEBUG *) wire ts_ok;
  wire [7:6]NLW_plusOp__28_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_plusOp__28_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_plusOp_carry__0_O_UNCONNECTED;

  assign stat[3] = state[3];
  assign stat[2:0] = \^stat [2:0];
  LUT1 #(
    .INIT(2'h1)) 
    \cctr[0]_i_1 
       (.I0(cctr_reg[0]),
        .O(plusOp__7[0]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \cctr[15]_i_1 
       (.I0(\sctr[15]_i_1_n_0 ),
        .I1(\cctr[15]_i_3_n_0 ),
        .I2(\cctr[15]_i_4_n_0 ),
        .I3(sctr_reg[0]),
        .I4(sctr_reg[1]),
        .I5(\cctr[15]_i_5_n_0 ),
        .O(\cctr[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cctr[15]_i_3 
       (.I0(sctr_reg[6]),
        .I1(sctr_reg[7]),
        .I2(sctr_reg[4]),
        .I3(sctr_reg[5]),
        .I4(sctr_reg[9]),
        .I5(sctr_reg[8]),
        .O(\cctr[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cctr[15]_i_4 
       (.I0(sctr_reg[2]),
        .I1(sctr_reg[3]),
        .O(\cctr[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cctr[15]_i_5 
       (.I0(sctr_reg[12]),
        .I1(sctr_reg[13]),
        .I2(sctr_reg[10]),
        .I3(sctr_reg[11]),
        .I4(sctr_reg[15]),
        .I5(sctr_reg[14]),
        .O(\cctr[15]_i_5_n_0 ));
  FDRE \cctr_reg[0] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[0]),
        .Q(cctr_reg[0]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[10] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[10]),
        .Q(cctr_reg[10]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[11] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[11]),
        .Q(cctr_reg[11]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[12] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[12]),
        .Q(cctr_reg[12]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[13] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[13]),
        .Q(cctr_reg[13]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[14] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[14]),
        .Q(cctr_reg[14]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[15] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[15]),
        .Q(cctr_reg[15]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[1] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[1]),
        .Q(cctr_reg[1]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[2] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[2]),
        .Q(cctr_reg[2]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[3] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[3]),
        .Q(cctr_reg[3]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[4] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[4]),
        .Q(cctr_reg[4]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[5] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[5]),
        .Q(cctr_reg[5]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[6] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[6]),
        .Q(cctr_reg[6]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[7] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[7]),
        .Q(cctr_reg[7]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[8] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[8]),
        .Q(cctr_reg[8]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[9] 
       (.C(sclk),
        .CE(cctr01_out),
        .D(plusOp__7[9]),
        .Q(cctr_reg[9]),
        .R(\cctr[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    f_ok_i_1
       (.I0(\cctr[15]_i_5_n_0 ),
        .I1(f_ok_i_2_n_0),
        .I2(f_ok_reg_n_0),
        .O(f_ok_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    f_ok_i_2
       (.I0(\cctr[15]_i_3_n_0 ),
        .I1(f_ok_i_3_n_0),
        .I2(f_ok_i_4_n_0),
        .I3(f_ok_i_5_n_0),
        .I4(cctr_reg[0]),
        .I5(cctr_reg[1]),
        .O(f_ok_i_2_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    f_ok_i_3
       (.I0(sctr_reg[0]),
        .I1(sctr_reg[1]),
        .I2(cctr_reg[14]),
        .I3(cctr_reg[15]),
        .I4(sctr_reg[3]),
        .I5(sctr_reg[2]),
        .O(f_ok_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    f_ok_i_4
       (.I0(cctr_reg[10]),
        .I1(cctr_reg[11]),
        .I2(cctr_reg[8]),
        .I3(cctr_reg[9]),
        .I4(cctr_reg[13]),
        .I5(cctr_reg[12]),
        .O(f_ok_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    f_ok_i_5
       (.I0(cctr_reg[5]),
        .I1(cctr_reg[4]),
        .I2(cctr_reg[2]),
        .I3(cctr_reg[3]),
        .I4(cctr_reg[6]),
        .I5(cctr_reg[7]),
        .O(f_ok_i_5_n_0));
  FDRE f_ok_reg
       (.C(sclk),
        .CE(1'b1),
        .D(f_ok_i_1_n_0),
        .Q(f_ok_reg_n_0),
        .R(\sctr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    phy_i_1
       (.I0(q[1]),
        .I1(rsto),
        .I2(D[0]),
        .I3(resync),
        .O(trst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__28_carry
       (.CI(cctr_reg[0]),
        .CI_TOP(1'b0),
        .CO({plusOp__28_carry_n_0,plusOp__28_carry_n_1,plusOp__28_carry_n_2,plusOp__28_carry_n_3,plusOp__28_carry_n_4,plusOp__28_carry_n_5,plusOp__28_carry_n_6,plusOp__28_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__7[8:1]),
        .S(cctr_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__28_carry__0
       (.CI(plusOp__28_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp__28_carry__0_CO_UNCONNECTED[7:6],plusOp__28_carry__0_n_2,plusOp__28_carry__0_n_3,plusOp__28_carry__0_n_4,plusOp__28_carry__0_n_5,plusOp__28_carry__0_n_6,plusOp__28_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp__28_carry__0_O_UNCONNECTED[7],plusOp__7[15:9]}),
        .S({1'b0,cctr_reg[15:9]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry
       (.CI(sctr_reg[0]),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__6[8:1]),
        .S(sctr_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[7:6],plusOp_carry__0_n_2,plusOp_carry__0_n_3,plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[7],plusOp__6[15:9]}),
        .S({1'b0,sctr_reg[15:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \rctr[0]_i_1 
       (.I0(\rctr_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rctr[1]_i_1 
       (.I0(\rctr_reg_n_0_[0] ),
        .I1(\rctr_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rctr[2]_i_1 
       (.I0(\rctr_reg_n_0_[0] ),
        .I1(\rctr_reg_n_0_[1] ),
        .I2(\rctr_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rctr[3]_i_1 
       (.I0(\rctr_reg_n_0_[1] ),
        .I1(\rctr_reg_n_0_[0] ),
        .I2(\rctr_reg_n_0_[2] ),
        .I3(\rctr_reg_n_0_[3] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rctr[4]_i_1 
       (.I0(\rctr_reg_n_0_[2] ),
        .I1(\rctr_reg_n_0_[0] ),
        .I2(\rctr_reg_n_0_[1] ),
        .I3(\rctr_reg_n_0_[3] ),
        .I4(\rctr_reg_n_0_[4] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rctr[5]_i_1 
       (.I0(\rctr_reg_n_0_[3] ),
        .I1(\rctr_reg_n_0_[1] ),
        .I2(\rctr_reg_n_0_[0] ),
        .I3(\rctr_reg_n_0_[2] ),
        .I4(\rctr_reg_n_0_[4] ),
        .I5(\rctr_reg_n_0_[5] ),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \rctr[6]_i_1 
       (.I0(\rctr[7]_i_2_n_0 ),
        .I1(\rctr_reg_n_0_[6] ),
        .O(plusOp[6]));
  LUT3 #(
    .INIT(8'h78)) 
    \rctr[7]_i_1 
       (.I0(\rctr[7]_i_2_n_0 ),
        .I1(\rctr_reg_n_0_[6] ),
        .I2(rctr_reg),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rctr[7]_i_2 
       (.I0(\rctr_reg_n_0_[5] ),
        .I1(\rctr_reg_n_0_[3] ),
        .I2(\rctr_reg_n_0_[1] ),
        .I3(\rctr_reg_n_0_[0] ),
        .I4(\rctr_reg_n_0_[2] ),
        .I5(\rctr_reg_n_0_[4] ),
        .O(\rctr[7]_i_2_n_0 ));
  FDRE \rctr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\rctr_reg_n_0_[0] ),
        .R(rsto));
  FDRE \rctr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\rctr_reg_n_0_[1] ),
        .R(rsto));
  FDRE \rctr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\rctr_reg_n_0_[2] ),
        .R(rsto));
  FDRE \rctr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\rctr_reg_n_0_[3] ),
        .R(rsto));
  FDRE \rctr_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\rctr_reg_n_0_[4] ),
        .R(rsto));
  FDRE \rctr_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\rctr_reg_n_0_[5] ),
        .R(rsto));
  FDRE \rctr_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(\rctr_reg_n_0_[6] ),
        .R(rsto));
  FDSE \rctr_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(rctr_reg),
        .S(rsto));
  LUT4 #(
    .INIT(16'h0010)) 
    rdy_inferred_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[0]),
        .O(rdy));
  LUT2 #(
    .INIT(4'hE)) 
    regfile_i_1
       (.I0(rsto),
        .I1(reg_rst),
        .O(rst));
  LUT2 #(
    .INIT(4'hE)) 
    rx_en_i_inferred_i_1
       (.I0(state[2]),
        .I1(state[3]),
        .O(rx_en_i));
  LUT1 #(
    .INIT(2'h1)) 
    \sctr[0]_i_1__0 
       (.I0(sctr_reg[0]),
        .O(plusOp__6[0]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \sctr[15]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .O(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[0]),
        .Q(sctr_reg[0]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[10] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[10]),
        .Q(sctr_reg[10]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[11] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[11]),
        .Q(sctr_reg[11]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[12] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[12]),
        .Q(sctr_reg[12]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[13] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[13]),
        .Q(sctr_reg[13]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[14] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[14]),
        .Q(sctr_reg[14]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[15] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[15]),
        .Q(sctr_reg[15]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[1]),
        .Q(sctr_reg[1]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[2]),
        .Q(sctr_reg[2]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[3] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[3]),
        .Q(sctr_reg[3]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[4] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[4]),
        .Q(sctr_reg[4]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[5] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[5]),
        .Q(sctr_reg[5]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[6] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[6]),
        .Q(sctr_reg[6]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[7] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[7]),
        .Q(sctr_reg[7]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[8] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[8]),
        .Q(sctr_reg[8]),
        .R(\sctr[15]_i_1_n_0 ));
  FDRE \sctr_reg[9] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__6[9]),
        .Q(sctr_reg[9]),
        .R(\sctr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBCAC)) 
    \stat[0]_INST_0 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .O(\^stat [0]));
  LUT4 #(
    .INIT(16'hEACC)) 
    \stat[1]_INST_0 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .O(\^stat [1]));
  LUT4 #(
    .INIT(16'hFFA8)) 
    \stat[2]_INST_0 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(\^stat [2]));
  LUT6 #(
    .INIT(64'h00F700F7000000F7)) 
    \state[0]_i_1__0 
       (.I0(cdr_ok),
        .I1(clk_ok),
        .I2(\state[0]_i_2_n_0 ),
        .I3(\state[0]_i_3_n_0 ),
        .I4(\state[0]_i_4_n_0 ),
        .I5(\state[0]_i_5_n_0 ),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hAE00FF5DEE4CFF5D)) 
    \state[0]_i_2 
       (.I0(state[3]),
        .I1(rx_ok),
        .I2(ts_ok),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCCC4440)) 
    \state[0]_i_3 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(resync_i),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000404FF030404)) 
    \state[0]_i_4 
       (.I0(f_ok_reg_n_0),
        .I1(state[1]),
        .I2(state[2]),
        .I3(cdr_ok),
        .I4(state[0]),
        .I5(state[3]),
        .O(\state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF0FDF0F)) 
    \state[0]_i_5 
       (.I0(addr_done),
        .I1(deskew_done),
        .I2(clk_ok),
        .I3(state[2]),
        .I4(state[1]),
        .O(\state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \state[1]_i_1 
       (.I0(resync),
        .I1(D[0]),
        .I2(rsto),
        .I3(q[1]),
        .I4(locked),
        .O(SR));
  LUT5 #(
    .INIT(32'hFFFFBAAA)) 
    \state[1]_i_1__0 
       (.I0(\state[1]_i_2__0_n_0 ),
        .I1(resync_i),
        .I2(state[3]),
        .I3(state[1]),
        .I4(\state[1]_i_3__0_n_0 ),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'h808880888088AAAA)) 
    \state[1]_i_2__0 
       (.I0(\state[3]_i_5_n_0 ),
        .I1(\state[1]_i_4__0_n_0 ),
        .I2(addr_done),
        .I3(rx_ok),
        .I4(resync_i),
        .I5(\state[1]_i_5__0_n_0 ),
        .O(\state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000006E0000)) 
    \state[1]_i_3__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(cdr_ok),
        .I3(state[3]),
        .I4(clk_ok),
        .I5(state[2]),
        .O(\state[1]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \state[1]_i_4__0 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\state[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hF5550000FFFFFBBB)) 
    \state[1]_i_5__0 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(ts_ok),
        .I3(rx_ok),
        .I4(state[0]),
        .I5(state[1]),
        .O(\state[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E0FFF0FFE0FF)) 
    \state[2]_i_1 
       (.I0(resync_i),
        .I1(\state[2]_i_2_n_0 ),
        .I2(state[3]),
        .I3(\state[2]_i_3_n_0 ),
        .I4(state[2]),
        .I5(\state[2]_i_4_n_0 ),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \state[2]_i_2 
       (.I0(state[2]),
        .I1(pkt_err_i),
        .I2(\state[3]_i_5_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\state[2]_i_5_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDDDDDDDDDDDDDDD)) 
    \state[2]_i_3 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(clk_ok),
        .I3(state[1]),
        .I4(state[0]),
        .I5(cdr_ok),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00D5505000FFFFFF)) 
    \state[2]_i_4 
       (.I0(rx_ok),
        .I1(ts_ok),
        .I2(state[0]),
        .I3(resync_i),
        .I4(state[1]),
        .I5(\state[3]_i_5_n_0 ),
        .O(\state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \state[2]_i_5 
       (.I0(ts_ok),
        .I1(rx_ok),
        .O(\state[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[3]_i_1 
       (.I0(srst),
        .I1(reset_i),
        .O(state_reg0));
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    \state[3]_i_2 
       (.I0(resync_i),
        .I1(state[3]),
        .I2(\state[3]_i_3_n_0 ),
        .I3(\state[3]_i_4_n_0 ),
        .I4(state[2]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'hFFFFF8FF8888F8FF)) 
    \state[3]_i_3 
       (.I0(\state[3]_i_5_n_0 ),
        .I1(rx_ok),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(resync_i),
        .O(\state[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \state[3]_i_4 
       (.I0(resync_i),
        .I1(state[1]),
        .I2(state[0]),
        .I3(ts_ok),
        .O(\state[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \state[3]_i_5 
       (.I0(cdr_ok),
        .I1(clk_ok),
        .O(\state[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "st_reset:0000,st_w_clk:0001,st_w_freq:0010,st_w_cdr:0011,st_w_rx:0100,st_w_addr:0101,st_w_deskew:0110,st_w_ts:0111,st_ready:1000,st_err_p:1001,st_err_r:1010,st_err_t:1011,st_err_x:1100" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \state_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(state[0]),
        .R(state_reg0));
  (* FSM_ENCODED_STATES = "st_reset:0000,st_w_clk:0001,st_w_freq:0010,st_w_cdr:0011,st_w_rx:0100,st_w_addr:0101,st_w_deskew:0110,st_w_ts:0111,st_ready:1000,st_err_p:1001,st_err_r:1010,st_err_t:1011,st_err_x:1100" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \state_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(state[1]),
        .R(state_reg0));
  (* FSM_ENCODED_STATES = "st_reset:0000,st_w_clk:0001,st_w_freq:0010,st_w_cdr:0011,st_w_rx:0100,st_w_addr:0101,st_w_deskew:0110,st_w_ts:0111,st_ready:1000,st_err_p:1001,st_err_r:1010,st_err_t:1011,st_err_x:1100" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \state_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(state[2]),
        .R(state_reg0));
  (* FSM_ENCODED_STATES = "st_reset:0000,st_w_clk:0001,st_w_freq:0010,st_w_cdr:0011,st_w_rx:0100,st_w_addr:0101,st_w_deskew:0110,st_w_ts:0111,st_ready:1000,st_err_p:1001,st_err_r:1010,st_err_t:1011,st_err_x:1100" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \state_reg[3] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(state[3]),
        .R(state_reg0));
  (* KEEP_HIERARCHY = "soft" *) 
  (* N = "3" *) 
  design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized2 sync_clk
       (.clk(sclk),
        .clks(CLK),
        .d({p_3_out,rx_en_i,rdy}),
        .q({reg_rst,q}));
  LUT4 #(
    .INIT(16'h0001)) 
    sync_clk_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .O(p_3_out));
  design_1_pdts_endpoint_wrapper_0_0_pdts_synchro sync_sys_clk
       (.CLK(CLK),
        .D(D),
        .out({pkt_err_i,ts_ok,rx_ok,cdr_ok,clk_ok}),
        .rsto(rsto),
        .sclk(sclk));
  design_1_pdts_endpoint_wrapper_0_0_pdts_synchro_pulse sync_sys_clk_p
       (.CLK(CLK),
        .D({\dd_reg[1] ,resync}),
        .in0(resync_i),
        .reset_i(reset_i),
        .rsto(rsto),
        .sclk(sclk));
  design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized1 sync_t
       (.CLK(CLK),
        .E(cctr01_out),
        .Q(rctr_reg),
        .out(t),
        .sclk(sclk),
        .td(td));
  FDRE td_reg
       (.C(sclk),
        .CE(1'b1),
        .D(t),
        .Q(td),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_ep_transactor" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_ep_transactor
   (Q,
    wen_0,
    p1__0,
    \addr_reg[6]_0 ,
    s0,
    \acmdw_tx[last] ,
    txdone__0,
    \ctrl_in[stb] ,
    rxdone__0,
    p1__0_1,
    d,
    D,
    CLK,
    \acmdw_rx[last] ,
    \ctrl_out[ack] ,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    wen,
    ren__0,
    s_reg,
    trst,
    \acmdr[rdy] ,
    sel,
    \ctrl_out[d] );
  output [1:0]Q;
  output wen_0;
  output p1__0;
  output [6:0]\addr_reg[6]_0 ;
  output s0;
  output \acmdw_tx[last] ;
  output txdone__0;
  output \ctrl_in[stb] ;
  output rxdone__0;
  output p1__0_1;
  output [7:0]d;
  input [7:0]D;
  input CLK;
  input \acmdw_rx[last] ;
  input \ctrl_out[ack] ;
  input \FSM_onehot_state_reg[0]_0 ;
  input \FSM_onehot_state_reg[0]_1 ;
  input wen;
  input ren__0;
  input [0:0]s_reg;
  input trst;
  input \acmdr[rdy] ;
  input sel;
  input [7:0]\ctrl_out[d] ;

  wire CLK;
  wire [7:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[11]_i_1_n_0 ;
  wire \FSM_onehot_state[11]_i_2_n_0 ;
  wire \FSM_onehot_state[11]_i_3_n_0 ;
  wire \FSM_onehot_state[11]_i_5_n_0 ;
  wire \FSM_onehot_state[11]_i_7_n_0 ;
  wire \FSM_onehot_state[11]_i_8_n_0 ;
  wire \FSM_onehot_state[11]_i_9_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[1]_i_4_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire [1:0]Q;
  wire \acmdr[rdy] ;
  wire \acmdw_rx[last] ;
  wire \acmdw_tx[last] ;
  wire \acmdw_tx[valid] ;
  wire addr;
  wire addr1__0;
  wire \addr[0]_i_1_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[2]_i_1_n_0 ;
  wire \addr[3]_i_1_n_0 ;
  wire \addr[3]_i_2_n_0 ;
  wire \addr[4]_i_1_n_0 ;
  wire \addr[4]_i_2_n_0 ;
  wire \addr[5]_i_1_n_0 ;
  wire \addr[5]_i_2_n_0 ;
  wire \addr[6]_i_1_n_0 ;
  wire \addr[6]_i_2_n_0 ;
  wire \addr[6]_i_3_n_0 ;
  wire [6:0]\addr_reg[6]_0 ;
  wire \ctrl_in[stb] ;
  wire \ctrl_out[ack] ;
  wire [7:0]\ctrl_out[d] ;
  wire [7:0]d;
  wire last;
  wire lctr;
  wire \lctr[0]_i_1_n_0 ;
  wire \lctr[1]_i_1_n_0 ;
  wire \lctr[2]_i_1_n_0 ;
  wire \lctr[3]_i_1_n_0 ;
  wire \lctr[4]_i_1_n_0 ;
  wire \lctr[5]_i_2_n_0 ;
  wire \lctr[5]_i_3_n_0 ;
  wire \lctr_reg_n_0_[0] ;
  wire \lctr_reg_n_0_[1] ;
  wire \lctr_reg_n_0_[2] ;
  wire \lctr_reg_n_0_[3] ;
  wire \lctr_reg_n_0_[4] ;
  wire \lctr_reg_n_0_[5] ;
  wire p1__0;
  wire p1__0_1;
  wire p_0_in;
  wire p_1_in;
  wire p_1_in0_in;
  wire p_2_in;
  wire p_3_in;
  wire paddr_reg0;
  wire [7:0]plusOp__3;
  wire ram_reg_0_31_0_0_i_4_n_0;
  wire ram_reg_0_31_0_0_i_6_n_0;
  wire ram_reg_0_31_0_0_i_7_n_0;
  wire ren__0;
  wire rep_reg_n_0;
  wire rw;
  wire rxdone__0;
  wire s0;
  wire s_i_5_n_0;
  wire [0:0]s_reg;
  wire sel;
  wire [15:0]sel0;
  wire state0__5;
  wire state1;
  wire \tctr[2]_i_1_n_0 ;
  wire \tctr[6]_i_2_n_0 ;
  wire \tctr[7]_i_1_n_0 ;
  wire \tctr[7]_i_3_n_0 ;
  wire [7:0]tctr_reg;
  wire timeout__6;
  wire trst;
  wire \tx_o[valid]11_in ;
  wire txdone__0;
  wire wen;
  wire wen_0;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\acmdw_rx[last] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(p_0_in),
        .I1(\acmdw_rx[last] ),
        .I2(rw),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF20)) 
    \FSM_onehot_state[11]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_1 ),
        .I1(\FSM_onehot_state_reg[0]_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state[11]_i_3_n_0 ),
        .O(\FSM_onehot_state[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF02)) 
    \FSM_onehot_state[11]_i_2 
       (.I0(p_1_in),
        .I1(timeout__6),
        .I2(last),
        .I3(Q[0]),
        .I4(\FSM_onehot_state[11]_i_5_n_0 ),
        .O(\FSM_onehot_state[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEF0)) 
    \FSM_onehot_state[11]_i_3 
       (.I0(Q[1]),
        .I1(p_1_in),
        .I2(addr),
        .I3(state0__5),
        .I4(timeout__6),
        .I5(\FSM_onehot_state[11]_i_7_n_0 ),
        .O(\FSM_onehot_state[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_onehot_state[11]_i_4 
       (.I0(tctr_reg[2]),
        .I1(tctr_reg[3]),
        .I2(tctr_reg[0]),
        .I3(tctr_reg[1]),
        .I4(\FSM_onehot_state[11]_i_8_n_0 ),
        .O(timeout__6));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2322)) 
    \FSM_onehot_state[11]_i_5 
       (.I0(p_3_in),
        .I1(\acmdw_rx[last] ),
        .I2(timeout__6),
        .I3(Q[1]),
        .O(\FSM_onehot_state[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[11]_i_6 
       (.I0(state1),
        .I1(\ctrl_out[ack] ),
        .O(state0__5));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[11]_i_7 
       (.I0(paddr_reg0),
        .I1(p_1_in0_in),
        .I2(p_0_in),
        .I3(\FSM_onehot_state[11]_i_9_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(p_3_in),
        .O(\FSM_onehot_state[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[11]_i_8 
       (.I0(tctr_reg[5]),
        .I1(tctr_reg[4]),
        .I2(tctr_reg[7]),
        .I3(tctr_reg[6]),
        .O(\FSM_onehot_state[11]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[11]_i_9 
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Q[1]),
        .I1(timeout__6),
        .I2(Q[0]),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state[1]_i_3_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(p_2_in),
        .I1(p_3_in),
        .I2(addr),
        .I3(\acmdw_rx[last] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(p_0_in),
        .I1(rw),
        .I2(\acmdw_rx[last] ),
        .I3(p_1_in),
        .I4(timeout__6),
        .I5(\FSM_onehot_state[1]_i_4_n_0 ),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[1]_i_4 
       (.I0(paddr_reg0),
        .I1(\acmdw_rx[last] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\acmdw_rx[last] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(p_2_in),
        .I1(\acmdw_rx[last] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(paddr_reg0),
        .I1(\acmdw_rx[last] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(Q[1]),
        .I1(timeout__6),
        .I2(\acmdw_rx[last] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(p_1_in0_in),
        .I1(last),
        .I2(timeout__6),
        .I3(p_1_in),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(addr),
        .I1(\acmdw_rx[last] ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(p_0_in),
        .I1(rw),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(trst));
  (* FSM_ENCODED_STATES = "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[10]_i_1_n_0 ),
        .Q(Q[1]),
        .R(trst));
  (* FSM_ENCODED_STATES = "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[11]_i_2_n_0 ),
        .Q(addr),
        .R(trst));
  (* FSM_ENCODED_STATES = "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(Q[0]),
        .R(trst));
  (* FSM_ENCODED_STATES = "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(p_2_in),
        .R(trst));
  (* FSM_ENCODED_STATES = "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(p_3_in),
        .R(trst));
  (* FSM_ENCODED_STATES = "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(trst));
  (* FSM_ENCODED_STATES = "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(p_1_in0_in),
        .R(trst));
  (* FSM_ENCODED_STATES = "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[6] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .S(trst));
  (* FSM_ENCODED_STATES = "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(paddr_reg0),
        .R(trst));
  (* FSM_ENCODED_STATES = "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(p_0_in),
        .R(trst));
  (* FSM_ENCODED_STATES = "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(p_1_in),
        .R(trst));
  LUT4 #(
    .INIT(16'hBF10)) 
    \addr[0]_i_1 
       (.I0(rep_reg_n_0),
        .I1(\addr_reg[6]_0 [0]),
        .I2(addr1__0),
        .I3(D[0]),
        .O(\addr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBEFF1400)) 
    \addr[1]_i_1 
       (.I0(rep_reg_n_0),
        .I1(\addr_reg[6]_0 [0]),
        .I2(\addr_reg[6]_0 [1]),
        .I3(addr1__0),
        .I4(D[1]),
        .O(\addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7F8FFFF07080000)) 
    \addr[2]_i_1 
       (.I0(\addr_reg[6]_0 [1]),
        .I1(\addr_reg[6]_0 [0]),
        .I2(rep_reg_n_0),
        .I3(\addr_reg[6]_0 [2]),
        .I4(addr1__0),
        .I5(D[2]),
        .O(\addr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBEFF1400)) 
    \addr[3]_i_1 
       (.I0(rep_reg_n_0),
        .I1(\addr[3]_i_2_n_0 ),
        .I2(\addr_reg[6]_0 [3]),
        .I3(addr1__0),
        .I4(D[3]),
        .O(\addr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \addr[3]_i_2 
       (.I0(\addr_reg[6]_0 [2]),
        .I1(\addr_reg[6]_0 [0]),
        .I2(\addr_reg[6]_0 [1]),
        .O(\addr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBEFF1400)) 
    \addr[4]_i_1 
       (.I0(rep_reg_n_0),
        .I1(\addr[4]_i_2_n_0 ),
        .I2(\addr_reg[6]_0 [4]),
        .I3(addr1__0),
        .I4(D[4]),
        .O(\addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \addr[4]_i_2 
       (.I0(\addr_reg[6]_0 [3]),
        .I1(\addr_reg[6]_0 [1]),
        .I2(\addr_reg[6]_0 [0]),
        .I3(\addr_reg[6]_0 [2]),
        .O(\addr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBEFF1400)) 
    \addr[5]_i_1 
       (.I0(rep_reg_n_0),
        .I1(\addr[5]_i_2_n_0 ),
        .I2(\addr_reg[6]_0 [5]),
        .I3(addr1__0),
        .I4(D[5]),
        .O(\addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \addr[5]_i_2 
       (.I0(\addr_reg[6]_0 [4]),
        .I1(\addr_reg[6]_0 [2]),
        .I2(\addr_reg[6]_0 [0]),
        .I3(\addr_reg[6]_0 [1]),
        .I4(\addr_reg[6]_0 [3]),
        .O(\addr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEEEA)) 
    \addr[6]_i_1 
       (.I0(addr),
        .I1(\ctrl_out[ack] ),
        .I2(p_1_in),
        .I3(Q[1]),
        .I4(rep_reg_n_0),
        .I5(p_0_in),
        .O(\addr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBEFF1400)) 
    \addr[6]_i_2 
       (.I0(rep_reg_n_0),
        .I1(\addr[6]_i_3_n_0 ),
        .I2(\addr_reg[6]_0 [6]),
        .I3(addr1__0),
        .I4(D[6]),
        .O(\addr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr[6]_i_3 
       (.I0(\addr_reg[6]_0 [5]),
        .I1(\addr_reg[6]_0 [3]),
        .I2(\addr_reg[6]_0 [1]),
        .I3(\addr_reg[6]_0 [0]),
        .I4(\addr_reg[6]_0 [2]),
        .I5(\addr_reg[6]_0 [4]),
        .O(\addr[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \addr[6]_i_4 
       (.I0(Q[1]),
        .I1(p_1_in),
        .I2(\ctrl_out[ack] ),
        .O(addr1__0));
  FDRE \addr_reg[0] 
       (.C(CLK),
        .CE(\addr[6]_i_1_n_0 ),
        .D(\addr[0]_i_1_n_0 ),
        .Q(\addr_reg[6]_0 [0]),
        .R(1'b0));
  FDRE \addr_reg[1] 
       (.C(CLK),
        .CE(\addr[6]_i_1_n_0 ),
        .D(\addr[1]_i_1_n_0 ),
        .Q(\addr_reg[6]_0 [1]),
        .R(1'b0));
  FDRE \addr_reg[2] 
       (.C(CLK),
        .CE(\addr[6]_i_1_n_0 ),
        .D(\addr[2]_i_1_n_0 ),
        .Q(\addr_reg[6]_0 [2]),
        .R(1'b0));
  FDRE \addr_reg[3] 
       (.C(CLK),
        .CE(\addr[6]_i_1_n_0 ),
        .D(\addr[3]_i_1_n_0 ),
        .Q(\addr_reg[6]_0 [3]),
        .R(1'b0));
  FDRE \addr_reg[4] 
       (.C(CLK),
        .CE(\addr[6]_i_1_n_0 ),
        .D(\addr[4]_i_1_n_0 ),
        .Q(\addr_reg[6]_0 [4]),
        .R(1'b0));
  FDRE \addr_reg[5] 
       (.C(CLK),
        .CE(\addr[6]_i_1_n_0 ),
        .D(\addr[5]_i_1_n_0 ),
        .Q(\addr_reg[6]_0 [5]),
        .R(1'b0));
  FDRE \addr_reg[6] 
       (.C(CLK),
        .CE(\addr[6]_i_1_n_0 ),
        .D(\addr[6]_i_2_n_0 ),
        .Q(\addr_reg[6]_0 [6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0CAA)) 
    err_i_i_2__0
       (.I0(\acmdw_tx[valid] ),
        .I1(\acmdr[rdy] ),
        .I2(sel),
        .I3(\FSM_onehot_state_reg[0]_0 ),
        .O(p1__0_1));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    err_i_i_4
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\acmdw_tx[valid] ),
        .I2(\acmdw_tx[last] ),
        .O(rxdone__0));
  FDRE last_reg
       (.C(CLK),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\acmdw_rx[last] ),
        .Q(last),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \lctr[0]_i_1 
       (.I0(D[0]),
        .I1(p_0_in),
        .I2(\lctr_reg_n_0_[0] ),
        .O(\lctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \lctr[1]_i_1 
       (.I0(D[1]),
        .I1(p_0_in),
        .I2(\lctr_reg_n_0_[0] ),
        .I3(\lctr_reg_n_0_[1] ),
        .O(\lctr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \lctr[2]_i_1 
       (.I0(D[2]),
        .I1(p_0_in),
        .I2(\lctr_reg_n_0_[1] ),
        .I3(\lctr_reg_n_0_[0] ),
        .I4(\lctr_reg_n_0_[2] ),
        .O(\lctr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \lctr[3]_i_1 
       (.I0(D[3]),
        .I1(p_0_in),
        .I2(\lctr_reg_n_0_[2] ),
        .I3(\lctr_reg_n_0_[0] ),
        .I4(\lctr_reg_n_0_[1] ),
        .I5(\lctr_reg_n_0_[3] ),
        .O(\lctr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \lctr[4]_i_1 
       (.I0(D[4]),
        .I1(p_0_in),
        .I2(\lctr[5]_i_3_n_0 ),
        .I3(\lctr_reg_n_0_[4] ),
        .O(\lctr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEEEA)) 
    \lctr[5]_i_1 
       (.I0(p_0_in),
        .I1(\ctrl_out[ack] ),
        .I2(p_1_in),
        .I3(Q[1]),
        .O(lctr));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \lctr[5]_i_2 
       (.I0(D[5]),
        .I1(p_0_in),
        .I2(\lctr_reg_n_0_[4] ),
        .I3(\lctr[5]_i_3_n_0 ),
        .I4(\lctr_reg_n_0_[5] ),
        .O(\lctr[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lctr[5]_i_3 
       (.I0(\lctr_reg_n_0_[2] ),
        .I1(\lctr_reg_n_0_[0] ),
        .I2(\lctr_reg_n_0_[1] ),
        .I3(\lctr_reg_n_0_[3] ),
        .O(\lctr[5]_i_3_n_0 ));
  FDRE \lctr_reg[0] 
       (.C(CLK),
        .CE(lctr),
        .D(\lctr[0]_i_1_n_0 ),
        .Q(\lctr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \lctr_reg[1] 
       (.C(CLK),
        .CE(lctr),
        .D(\lctr[1]_i_1_n_0 ),
        .Q(\lctr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \lctr_reg[2] 
       (.C(CLK),
        .CE(lctr),
        .D(\lctr[2]_i_1_n_0 ),
        .Q(\lctr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \lctr_reg[3] 
       (.C(CLK),
        .CE(lctr),
        .D(\lctr[3]_i_1_n_0 ),
        .Q(\lctr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \lctr_reg[4] 
       (.C(CLK),
        .CE(lctr),
        .D(\lctr[4]_i_1_n_0 ),
        .Q(\lctr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \lctr_reg[5] 
       (.C(CLK),
        .CE(lctr),
        .D(\lctr[5]_i_2_n_0 ),
        .Q(\lctr_reg_n_0_[5] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8A8A8)) 
    \p[4]_i_4__0 
       (.I0(\FSM_onehot_state_reg[0]_1 ),
        .I1(s_i_5_n_0),
        .I2(paddr_reg0),
        .I3(\ctrl_out[ack] ),
        .I4(Q[1]),
        .I5(wen),
        .O(p1__0));
  FDRE \paddr_reg[0] 
       (.C(CLK),
        .CE(paddr_reg0),
        .D(D[0]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \paddr_reg[10] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg_n_0_[4] ),
        .D(D[2]),
        .Q(sel0[10]),
        .R(1'b0));
  FDRE \paddr_reg[11] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg_n_0_[4] ),
        .D(D[3]),
        .Q(sel0[11]),
        .R(1'b0));
  FDRE \paddr_reg[12] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg_n_0_[4] ),
        .D(D[4]),
        .Q(sel0[12]),
        .R(1'b0));
  FDRE \paddr_reg[13] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg_n_0_[4] ),
        .D(D[5]),
        .Q(sel0[13]),
        .R(1'b0));
  FDRE \paddr_reg[14] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg_n_0_[4] ),
        .D(D[6]),
        .Q(sel0[14]),
        .R(1'b0));
  FDRE \paddr_reg[15] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg_n_0_[4] ),
        .D(D[7]),
        .Q(sel0[15]),
        .R(1'b0));
  FDRE \paddr_reg[1] 
       (.C(CLK),
        .CE(paddr_reg0),
        .D(D[1]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \paddr_reg[2] 
       (.C(CLK),
        .CE(paddr_reg0),
        .D(D[2]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \paddr_reg[3] 
       (.C(CLK),
        .CE(paddr_reg0),
        .D(D[3]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE \paddr_reg[4] 
       (.C(CLK),
        .CE(paddr_reg0),
        .D(D[4]),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE \paddr_reg[5] 
       (.C(CLK),
        .CE(paddr_reg0),
        .D(D[5]),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE \paddr_reg[6] 
       (.C(CLK),
        .CE(paddr_reg0),
        .D(D[6]),
        .Q(sel0[6]),
        .R(1'b0));
  FDRE \paddr_reg[7] 
       (.C(CLK),
        .CE(paddr_reg0),
        .D(D[7]),
        .Q(sel0[7]),
        .R(1'b0));
  FDRE \paddr_reg[8] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg_n_0_[4] ),
        .D(D[0]),
        .Q(sel0[8]),
        .R(1'b0));
  FDRE \paddr_reg[9] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg_n_0_[4] ),
        .D(D[1]),
        .Q(sel0[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    ram_reg_0_31_0_0_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_2_in),
        .I2(\ctrl_out[d] [0]),
        .I3(p_3_in),
        .I4(D[0]),
        .O(d[0]));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_31_0_0_i_2
       (.I0(\acmdw_tx[valid] ),
        .I1(\FSM_onehot_state_reg[0]_0 ),
        .O(wen_0));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    ram_reg_0_31_0_0_i_3
       (.I0(sel0[15]),
        .I1(sel0[14]),
        .I2(sel0[13]),
        .I3(sel0[12]),
        .I4(ram_reg_0_31_0_0_i_4_n_0),
        .I5(\tx_o[valid]11_in ),
        .O(\acmdw_tx[valid] ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    ram_reg_0_31_0_0_i_4
       (.I0(sel0[11]),
        .I1(sel0[10]),
        .I2(sel0[9]),
        .I3(ram_reg_0_31_0_0_i_6_n_0),
        .O(ram_reg_0_31_0_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    ram_reg_0_31_0_0_i_5
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_3_in),
        .I2(p_2_in),
        .I3(p_1_in0_in),
        .I4(p_1_in),
        .I5(\ctrl_out[ack] ),
        .O(\tx_o[valid]11_in ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    ram_reg_0_31_0_0_i_6
       (.I0(sel0[8]),
        .I1(sel0[7]),
        .I2(sel0[6]),
        .I3(ram_reg_0_31_0_0_i_7_n_0),
        .O(ram_reg_0_31_0_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    ram_reg_0_31_0_0_i_7
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(ram_reg_0_31_0_0_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    ram_reg_0_31_1_1_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_2_in),
        .I2(\ctrl_out[d] [1]),
        .I3(p_3_in),
        .I4(D[1]),
        .O(d[1]));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    ram_reg_0_31_2_2_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_2_in),
        .I2(\ctrl_out[d] [2]),
        .I3(p_3_in),
        .I4(D[2]),
        .O(d[2]));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    ram_reg_0_31_3_3_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_2_in),
        .I2(\ctrl_out[d] [3]),
        .I3(p_3_in),
        .I4(D[3]),
        .O(d[3]));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    ram_reg_0_31_4_4_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_2_in),
        .I2(\ctrl_out[d] [4]),
        .I3(p_3_in),
        .I4(D[4]),
        .O(d[4]));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    ram_reg_0_31_5_5_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_2_in),
        .I2(\ctrl_out[d] [5]),
        .I3(p_3_in),
        .I4(D[5]),
        .O(d[5]));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    ram_reg_0_31_6_6_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_2_in),
        .I2(\ctrl_out[d] [6]),
        .I3(p_3_in),
        .I4(D[6]),
        .O(d[6]));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    ram_reg_0_31_7_7_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_2_in),
        .I2(\ctrl_out[d] [7]),
        .I3(p_3_in),
        .I4(D[7]),
        .O(d[7]));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    ram_reg_0_31_8_8_i_1__0
       (.I0(p_1_in),
        .I1(last),
        .I2(state1),
        .I3(\ctrl_out[ack] ),
        .I4(p_1_in0_in),
        .O(\acmdw_tx[last] ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    ram_reg_0_31_8_8_i_2__0
       (.I0(\lctr_reg_n_0_[5] ),
        .I1(\lctr_reg_n_0_[4] ),
        .I2(\lctr_reg_n_0_[1] ),
        .I3(\lctr_reg_n_0_[0] ),
        .I4(\lctr_reg_n_0_[3] ),
        .I5(\lctr_reg_n_0_[2] ),
        .O(state1));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    regfile_i_2
       (.I0(p_1_in),
        .I1(Q[1]),
        .O(\ctrl_in[stb] ));
  FDRE rep_reg
       (.C(CLK),
        .CE(p_0_in),
        .D(D[7]),
        .Q(rep_reg_n_0),
        .R(1'b0));
  FDRE rw_reg
       (.C(CLK),
        .CE(addr),
        .D(D[7]),
        .Q(rw),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000F8F8F8)) 
    s_i_1__1
       (.I0(\acmdw_tx[last] ),
        .I1(\acmdw_tx[valid] ),
        .I2(\FSM_onehot_state_reg[0]_0 ),
        .I3(ren__0),
        .I4(s_reg),
        .I5(trst),
        .O(s0));
  LUT6 #(
    .INIT(64'hFFF8000000000000)) 
    s_i_4
       (.I0(Q[1]),
        .I1(\ctrl_out[ack] ),
        .I2(paddr_reg0),
        .I3(s_i_5_n_0),
        .I4(\FSM_onehot_state_reg[0]_1 ),
        .I5(\acmdw_rx[last] ),
        .O(txdone__0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_i_5
       (.I0(addr),
        .I1(p_0_in),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(p_3_in),
        .O(s_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \tctr[0]_i_1 
       (.I0(tctr_reg[0]),
        .O(plusOp__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tctr[1]_i_1 
       (.I0(tctr_reg[0]),
        .I1(tctr_reg[1]),
        .O(plusOp__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tctr[2]_i_1 
       (.I0(tctr_reg[1]),
        .I1(tctr_reg[0]),
        .I2(tctr_reg[2]),
        .O(\tctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tctr[3]_i_1 
       (.I0(tctr_reg[0]),
        .I1(tctr_reg[1]),
        .I2(tctr_reg[2]),
        .I3(tctr_reg[3]),
        .O(plusOp__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \tctr[4]_i_1 
       (.I0(tctr_reg[2]),
        .I1(tctr_reg[1]),
        .I2(tctr_reg[0]),
        .I3(tctr_reg[3]),
        .I4(tctr_reg[4]),
        .O(plusOp__3[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \tctr[5]_i_1 
       (.I0(tctr_reg[3]),
        .I1(tctr_reg[0]),
        .I2(tctr_reg[1]),
        .I3(tctr_reg[2]),
        .I4(tctr_reg[4]),
        .I5(tctr_reg[5]),
        .O(plusOp__3[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \tctr[6]_i_1 
       (.I0(tctr_reg[4]),
        .I1(tctr_reg[2]),
        .I2(\tctr[6]_i_2_n_0 ),
        .I3(tctr_reg[3]),
        .I4(tctr_reg[5]),
        .I5(tctr_reg[6]),
        .O(plusOp__3[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tctr[6]_i_2 
       (.I0(tctr_reg[0]),
        .I1(tctr_reg[1]),
        .O(\tctr[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \tctr[7]_i_1 
       (.I0(\ctrl_out[ack] ),
        .I1(Q[1]),
        .I2(p_1_in),
        .O(\tctr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tctr[7]_i_2 
       (.I0(\tctr[7]_i_3_n_0 ),
        .I1(tctr_reg[6]),
        .I2(tctr_reg[7]),
        .O(plusOp__3[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \tctr[7]_i_3 
       (.I0(tctr_reg[5]),
        .I1(tctr_reg[3]),
        .I2(tctr_reg[0]),
        .I3(tctr_reg[1]),
        .I4(tctr_reg[2]),
        .I5(tctr_reg[4]),
        .O(\tctr[7]_i_3_n_0 ));
  FDRE \tctr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__3[0]),
        .Q(tctr_reg[0]),
        .R(\tctr[7]_i_1_n_0 ));
  FDRE \tctr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__3[1]),
        .Q(tctr_reg[1]),
        .R(\tctr[7]_i_1_n_0 ));
  FDRE \tctr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tctr[2]_i_1_n_0 ),
        .Q(tctr_reg[2]),
        .R(\tctr[7]_i_1_n_0 ));
  FDRE \tctr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__3[3]),
        .Q(tctr_reg[3]),
        .R(\tctr[7]_i_1_n_0 ));
  FDRE \tctr_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__3[4]),
        .Q(tctr_reg[4]),
        .R(\tctr[7]_i_1_n_0 ));
  FDRE \tctr_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__3[5]),
        .Q(tctr_reg[5]),
        .R(\tctr[7]_i_1_n_0 ));
  FDRE \tctr_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__3[6]),
        .Q(tctr_reg[6]),
        .R(\tctr[7]_i_1_n_0 ));
  FDRE \tctr_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__3[7]),
        .Q(tctr_reg[7]),
        .R(\tctr[7]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "pdts_ep_tstamp" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_ep_tstamp
   (D,
    tstamp,
    CLK,
    trst,
    \ctr_reg[63]_0 ,
    s,
    ts_stb);
  output [0:0]D;
  output [63:0]tstamp;
  input CLK;
  input trst;
  input [63:0]\ctr_reg[63]_0 ;
  input s;
  input ts_stb;

  wire CLK;
  wire [0:0]D;
  wire \ctr[15]_i_2_n_0 ;
  wire \ctr[15]_i_3_n_0 ;
  wire \ctr[15]_i_4_n_0 ;
  wire \ctr[15]_i_5_n_0 ;
  wire \ctr[15]_i_6_n_0 ;
  wire \ctr[15]_i_7_n_0 ;
  wire \ctr[15]_i_8_n_0 ;
  wire \ctr[15]_i_9_n_0 ;
  wire \ctr[23]_i_2_n_0 ;
  wire \ctr[23]_i_3_n_0 ;
  wire \ctr[23]_i_4_n_0 ;
  wire \ctr[23]_i_5_n_0 ;
  wire \ctr[23]_i_6_n_0 ;
  wire \ctr[23]_i_7_n_0 ;
  wire \ctr[23]_i_8_n_0 ;
  wire \ctr[23]_i_9_n_0 ;
  wire \ctr[31]_i_2_n_0 ;
  wire \ctr[31]_i_3_n_0 ;
  wire \ctr[31]_i_4_n_0 ;
  wire \ctr[31]_i_5_n_0 ;
  wire \ctr[31]_i_6_n_0 ;
  wire \ctr[31]_i_7_n_0 ;
  wire \ctr[31]_i_8_n_0 ;
  wire \ctr[31]_i_9_n_0 ;
  wire \ctr[39]_i_2_n_0 ;
  wire \ctr[39]_i_3_n_0 ;
  wire \ctr[39]_i_4_n_0 ;
  wire \ctr[39]_i_5_n_0 ;
  wire \ctr[39]_i_6_n_0 ;
  wire \ctr[39]_i_7_n_0 ;
  wire \ctr[39]_i_8_n_0 ;
  wire \ctr[39]_i_9_n_0 ;
  wire \ctr[47]_i_2_n_0 ;
  wire \ctr[47]_i_3_n_0 ;
  wire \ctr[47]_i_4_n_0 ;
  wire \ctr[47]_i_5_n_0 ;
  wire \ctr[47]_i_6_n_0 ;
  wire \ctr[47]_i_7_n_0 ;
  wire \ctr[47]_i_8_n_0 ;
  wire \ctr[47]_i_9_n_0 ;
  wire \ctr[55]_i_2_n_0 ;
  wire \ctr[55]_i_3_n_0 ;
  wire \ctr[55]_i_4_n_0 ;
  wire \ctr[55]_i_5_n_0 ;
  wire \ctr[55]_i_6_n_0 ;
  wire \ctr[55]_i_7_n_0 ;
  wire \ctr[55]_i_8_n_0 ;
  wire \ctr[55]_i_9_n_0 ;
  wire \ctr[63]_i_10_n_0 ;
  wire \ctr[63]_i_11_n_0 ;
  wire \ctr[63]_i_1_n_0 ;
  wire \ctr[63]_i_4_n_0 ;
  wire \ctr[63]_i_5_n_0 ;
  wire \ctr[63]_i_6_n_0 ;
  wire \ctr[63]_i_7_n_0 ;
  wire \ctr[63]_i_8_n_0 ;
  wire \ctr[63]_i_9_n_0 ;
  wire \ctr[7]_i_2__0_n_0 ;
  wire \ctr[7]_i_3_n_0 ;
  wire \ctr[7]_i_4_n_0 ;
  wire \ctr[7]_i_5_n_0 ;
  wire \ctr[7]_i_6_n_0 ;
  wire \ctr[7]_i_7_n_0 ;
  wire \ctr[7]_i_8_n_0 ;
  wire \ctr[7]_i_9_n_0 ;
  wire \ctr_reg[15]_i_1_n_0 ;
  wire \ctr_reg[15]_i_1_n_1 ;
  wire \ctr_reg[15]_i_1_n_10 ;
  wire \ctr_reg[15]_i_1_n_11 ;
  wire \ctr_reg[15]_i_1_n_12 ;
  wire \ctr_reg[15]_i_1_n_13 ;
  wire \ctr_reg[15]_i_1_n_14 ;
  wire \ctr_reg[15]_i_1_n_15 ;
  wire \ctr_reg[15]_i_1_n_2 ;
  wire \ctr_reg[15]_i_1_n_3 ;
  wire \ctr_reg[15]_i_1_n_4 ;
  wire \ctr_reg[15]_i_1_n_5 ;
  wire \ctr_reg[15]_i_1_n_6 ;
  wire \ctr_reg[15]_i_1_n_7 ;
  wire \ctr_reg[15]_i_1_n_8 ;
  wire \ctr_reg[15]_i_1_n_9 ;
  wire \ctr_reg[23]_i_1_n_0 ;
  wire \ctr_reg[23]_i_1_n_1 ;
  wire \ctr_reg[23]_i_1_n_10 ;
  wire \ctr_reg[23]_i_1_n_11 ;
  wire \ctr_reg[23]_i_1_n_12 ;
  wire \ctr_reg[23]_i_1_n_13 ;
  wire \ctr_reg[23]_i_1_n_14 ;
  wire \ctr_reg[23]_i_1_n_15 ;
  wire \ctr_reg[23]_i_1_n_2 ;
  wire \ctr_reg[23]_i_1_n_3 ;
  wire \ctr_reg[23]_i_1_n_4 ;
  wire \ctr_reg[23]_i_1_n_5 ;
  wire \ctr_reg[23]_i_1_n_6 ;
  wire \ctr_reg[23]_i_1_n_7 ;
  wire \ctr_reg[23]_i_1_n_8 ;
  wire \ctr_reg[23]_i_1_n_9 ;
  wire \ctr_reg[31]_i_1_n_0 ;
  wire \ctr_reg[31]_i_1_n_1 ;
  wire \ctr_reg[31]_i_1_n_10 ;
  wire \ctr_reg[31]_i_1_n_11 ;
  wire \ctr_reg[31]_i_1_n_12 ;
  wire \ctr_reg[31]_i_1_n_13 ;
  wire \ctr_reg[31]_i_1_n_14 ;
  wire \ctr_reg[31]_i_1_n_15 ;
  wire \ctr_reg[31]_i_1_n_2 ;
  wire \ctr_reg[31]_i_1_n_3 ;
  wire \ctr_reg[31]_i_1_n_4 ;
  wire \ctr_reg[31]_i_1_n_5 ;
  wire \ctr_reg[31]_i_1_n_6 ;
  wire \ctr_reg[31]_i_1_n_7 ;
  wire \ctr_reg[31]_i_1_n_8 ;
  wire \ctr_reg[31]_i_1_n_9 ;
  wire \ctr_reg[39]_i_1_n_0 ;
  wire \ctr_reg[39]_i_1_n_1 ;
  wire \ctr_reg[39]_i_1_n_10 ;
  wire \ctr_reg[39]_i_1_n_11 ;
  wire \ctr_reg[39]_i_1_n_12 ;
  wire \ctr_reg[39]_i_1_n_13 ;
  wire \ctr_reg[39]_i_1_n_14 ;
  wire \ctr_reg[39]_i_1_n_15 ;
  wire \ctr_reg[39]_i_1_n_2 ;
  wire \ctr_reg[39]_i_1_n_3 ;
  wire \ctr_reg[39]_i_1_n_4 ;
  wire \ctr_reg[39]_i_1_n_5 ;
  wire \ctr_reg[39]_i_1_n_6 ;
  wire \ctr_reg[39]_i_1_n_7 ;
  wire \ctr_reg[39]_i_1_n_8 ;
  wire \ctr_reg[39]_i_1_n_9 ;
  wire \ctr_reg[47]_i_1_n_0 ;
  wire \ctr_reg[47]_i_1_n_1 ;
  wire \ctr_reg[47]_i_1_n_10 ;
  wire \ctr_reg[47]_i_1_n_11 ;
  wire \ctr_reg[47]_i_1_n_12 ;
  wire \ctr_reg[47]_i_1_n_13 ;
  wire \ctr_reg[47]_i_1_n_14 ;
  wire \ctr_reg[47]_i_1_n_15 ;
  wire \ctr_reg[47]_i_1_n_2 ;
  wire \ctr_reg[47]_i_1_n_3 ;
  wire \ctr_reg[47]_i_1_n_4 ;
  wire \ctr_reg[47]_i_1_n_5 ;
  wire \ctr_reg[47]_i_1_n_6 ;
  wire \ctr_reg[47]_i_1_n_7 ;
  wire \ctr_reg[47]_i_1_n_8 ;
  wire \ctr_reg[47]_i_1_n_9 ;
  wire \ctr_reg[55]_i_1_n_0 ;
  wire \ctr_reg[55]_i_1_n_1 ;
  wire \ctr_reg[55]_i_1_n_10 ;
  wire \ctr_reg[55]_i_1_n_11 ;
  wire \ctr_reg[55]_i_1_n_12 ;
  wire \ctr_reg[55]_i_1_n_13 ;
  wire \ctr_reg[55]_i_1_n_14 ;
  wire \ctr_reg[55]_i_1_n_15 ;
  wire \ctr_reg[55]_i_1_n_2 ;
  wire \ctr_reg[55]_i_1_n_3 ;
  wire \ctr_reg[55]_i_1_n_4 ;
  wire \ctr_reg[55]_i_1_n_5 ;
  wire \ctr_reg[55]_i_1_n_6 ;
  wire \ctr_reg[55]_i_1_n_7 ;
  wire \ctr_reg[55]_i_1_n_8 ;
  wire \ctr_reg[55]_i_1_n_9 ;
  wire [63:0]\ctr_reg[63]_0 ;
  wire \ctr_reg[63]_i_2_n_1 ;
  wire \ctr_reg[63]_i_2_n_10 ;
  wire \ctr_reg[63]_i_2_n_11 ;
  wire \ctr_reg[63]_i_2_n_12 ;
  wire \ctr_reg[63]_i_2_n_13 ;
  wire \ctr_reg[63]_i_2_n_14 ;
  wire \ctr_reg[63]_i_2_n_15 ;
  wire \ctr_reg[63]_i_2_n_2 ;
  wire \ctr_reg[63]_i_2_n_3 ;
  wire \ctr_reg[63]_i_2_n_4 ;
  wire \ctr_reg[63]_i_2_n_5 ;
  wire \ctr_reg[63]_i_2_n_6 ;
  wire \ctr_reg[63]_i_2_n_7 ;
  wire \ctr_reg[63]_i_2_n_8 ;
  wire \ctr_reg[63]_i_2_n_9 ;
  wire \ctr_reg[7]_i_1_n_0 ;
  wire \ctr_reg[7]_i_1_n_1 ;
  wire \ctr_reg[7]_i_1_n_10 ;
  wire \ctr_reg[7]_i_1_n_11 ;
  wire \ctr_reg[7]_i_1_n_12 ;
  wire \ctr_reg[7]_i_1_n_13 ;
  wire \ctr_reg[7]_i_1_n_14 ;
  wire \ctr_reg[7]_i_1_n_15 ;
  wire \ctr_reg[7]_i_1_n_2 ;
  wire \ctr_reg[7]_i_1_n_3 ;
  wire \ctr_reg[7]_i_1_n_4 ;
  wire \ctr_reg[7]_i_1_n_5 ;
  wire \ctr_reg[7]_i_1_n_6 ;
  wire \ctr_reg[7]_i_1_n_7 ;
  wire \ctr_reg[7]_i_1_n_8 ;
  wire \ctr_reg[7]_i_1_n_9 ;
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
  wire s;
  wire trst;
  wire ts_stb;
  wire [63:0]tstamp;
  wire valid;
  wire valid0;
  wire [7:7]\NLW_ctr_reg[63]_i_2_CO_UNCONNECTED ;
  wire [7:0]NLW_lock1_carry_O_UNCONNECTED;
  wire [7:0]NLW_lock1_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_lock1_carry__1_CO_UNCONNECTED;
  wire [7:0]NLW_lock1_carry__1_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[15]_i_2 
       (.I0(tstamp[15]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [15]),
        .O(\ctr[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[15]_i_3 
       (.I0(tstamp[14]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [14]),
        .O(\ctr[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[15]_i_4 
       (.I0(tstamp[13]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [13]),
        .O(\ctr[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[15]_i_5 
       (.I0(tstamp[12]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [12]),
        .O(\ctr[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[15]_i_6 
       (.I0(tstamp[11]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [11]),
        .O(\ctr[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[15]_i_7 
       (.I0(tstamp[10]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [10]),
        .O(\ctr[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[15]_i_8 
       (.I0(tstamp[9]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [9]),
        .O(\ctr[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[15]_i_9 
       (.I0(tstamp[8]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [8]),
        .O(\ctr[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[23]_i_2 
       (.I0(tstamp[23]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [23]),
        .O(\ctr[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[23]_i_3 
       (.I0(tstamp[22]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [22]),
        .O(\ctr[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[23]_i_4 
       (.I0(tstamp[21]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [21]),
        .O(\ctr[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[23]_i_5 
       (.I0(tstamp[20]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [20]),
        .O(\ctr[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[23]_i_6 
       (.I0(tstamp[19]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [19]),
        .O(\ctr[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[23]_i_7 
       (.I0(tstamp[18]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [18]),
        .O(\ctr[23]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[23]_i_8 
       (.I0(tstamp[17]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [17]),
        .O(\ctr[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[23]_i_9 
       (.I0(tstamp[16]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [16]),
        .O(\ctr[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[31]_i_2 
       (.I0(tstamp[31]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [31]),
        .O(\ctr[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[31]_i_3 
       (.I0(tstamp[30]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [30]),
        .O(\ctr[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[31]_i_4 
       (.I0(tstamp[29]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [29]),
        .O(\ctr[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[31]_i_5 
       (.I0(tstamp[28]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [28]),
        .O(\ctr[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[31]_i_6 
       (.I0(tstamp[27]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [27]),
        .O(\ctr[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[31]_i_7 
       (.I0(tstamp[26]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [26]),
        .O(\ctr[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[31]_i_8 
       (.I0(tstamp[25]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [25]),
        .O(\ctr[31]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[31]_i_9 
       (.I0(tstamp[24]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [24]),
        .O(\ctr[31]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[39]_i_2 
       (.I0(tstamp[39]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [39]),
        .O(\ctr[39]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[39]_i_3 
       (.I0(tstamp[38]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [38]),
        .O(\ctr[39]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[39]_i_4 
       (.I0(tstamp[37]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [37]),
        .O(\ctr[39]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[39]_i_5 
       (.I0(tstamp[36]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [36]),
        .O(\ctr[39]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[39]_i_6 
       (.I0(tstamp[35]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [35]),
        .O(\ctr[39]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[39]_i_7 
       (.I0(tstamp[34]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [34]),
        .O(\ctr[39]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[39]_i_8 
       (.I0(tstamp[33]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [33]),
        .O(\ctr[39]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[39]_i_9 
       (.I0(tstamp[32]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [32]),
        .O(\ctr[39]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[47]_i_2 
       (.I0(tstamp[47]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [47]),
        .O(\ctr[47]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[47]_i_3 
       (.I0(tstamp[46]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [46]),
        .O(\ctr[47]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[47]_i_4 
       (.I0(tstamp[45]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [45]),
        .O(\ctr[47]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[47]_i_5 
       (.I0(tstamp[44]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [44]),
        .O(\ctr[47]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[47]_i_6 
       (.I0(tstamp[43]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [43]),
        .O(\ctr[47]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[47]_i_7 
       (.I0(tstamp[42]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [42]),
        .O(\ctr[47]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[47]_i_8 
       (.I0(tstamp[41]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [41]),
        .O(\ctr[47]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[47]_i_9 
       (.I0(tstamp[40]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [40]),
        .O(\ctr[47]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[55]_i_2 
       (.I0(tstamp[55]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [55]),
        .O(\ctr[55]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[55]_i_3 
       (.I0(tstamp[54]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [54]),
        .O(\ctr[55]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[55]_i_4 
       (.I0(tstamp[53]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [53]),
        .O(\ctr[55]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[55]_i_5 
       (.I0(tstamp[52]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [52]),
        .O(\ctr[55]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[55]_i_6 
       (.I0(tstamp[51]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [51]),
        .O(\ctr[55]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[55]_i_7 
       (.I0(tstamp[50]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [50]),
        .O(\ctr[55]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[55]_i_8 
       (.I0(tstamp[49]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [49]),
        .O(\ctr[55]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[55]_i_9 
       (.I0(tstamp[48]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [48]),
        .O(\ctr[55]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \ctr[63]_i_1 
       (.I0(D),
        .I1(valid),
        .I2(s),
        .O(\ctr[63]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[63]_i_10 
       (.I0(tstamp[57]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [57]),
        .O(\ctr[63]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[63]_i_11 
       (.I0(tstamp[56]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [56]),
        .O(\ctr[63]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[63]_i_4 
       (.I0(tstamp[63]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [63]),
        .O(\ctr[63]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[63]_i_5 
       (.I0(tstamp[62]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [62]),
        .O(\ctr[63]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[63]_i_6 
       (.I0(tstamp[61]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [61]),
        .O(\ctr[63]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[63]_i_7 
       (.I0(tstamp[60]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [60]),
        .O(\ctr[63]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[63]_i_8 
       (.I0(tstamp[59]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [59]),
        .O(\ctr[63]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[63]_i_9 
       (.I0(tstamp[58]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [58]),
        .O(\ctr[63]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[7]_i_2__0 
       (.I0(tstamp[7]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [7]),
        .O(\ctr[7]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[7]_i_3 
       (.I0(tstamp[6]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [6]),
        .O(\ctr[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[7]_i_4 
       (.I0(tstamp[5]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [5]),
        .O(\ctr[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[7]_i_5 
       (.I0(tstamp[4]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [4]),
        .O(\ctr[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[7]_i_6 
       (.I0(tstamp[3]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [3]),
        .O(\ctr[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[7]_i_7 
       (.I0(tstamp[2]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [2]),
        .O(\ctr[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ctr[7]_i_8 
       (.I0(tstamp[1]),
        .I1(D),
        .I2(\ctr_reg[63]_0 [1]),
        .O(\ctr[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \ctr[7]_i_9 
       (.I0(\ctr_reg[63]_0 [0]),
        .I1(D),
        .I2(tstamp[0]),
        .O(\ctr[7]_i_9_n_0 ));
  FDRE \ctr_reg[0] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[7]_i_1_n_15 ),
        .Q(tstamp[0]),
        .R(trst));
  FDRE \ctr_reg[10] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[15]_i_1_n_13 ),
        .Q(tstamp[10]),
        .R(trst));
  FDRE \ctr_reg[11] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[15]_i_1_n_12 ),
        .Q(tstamp[11]),
        .R(trst));
  FDRE \ctr_reg[12] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[15]_i_1_n_11 ),
        .Q(tstamp[12]),
        .R(trst));
  FDRE \ctr_reg[13] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[15]_i_1_n_10 ),
        .Q(tstamp[13]),
        .R(trst));
  FDRE \ctr_reg[14] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[15]_i_1_n_9 ),
        .Q(tstamp[14]),
        .R(trst));
  FDRE \ctr_reg[15] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[15]_i_1_n_8 ),
        .Q(tstamp[15]),
        .R(trst));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \ctr_reg[15]_i_1 
       (.CI(\ctr_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ctr_reg[15]_i_1_n_0 ,\ctr_reg[15]_i_1_n_1 ,\ctr_reg[15]_i_1_n_2 ,\ctr_reg[15]_i_1_n_3 ,\ctr_reg[15]_i_1_n_4 ,\ctr_reg[15]_i_1_n_5 ,\ctr_reg[15]_i_1_n_6 ,\ctr_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[15]_i_1_n_8 ,\ctr_reg[15]_i_1_n_9 ,\ctr_reg[15]_i_1_n_10 ,\ctr_reg[15]_i_1_n_11 ,\ctr_reg[15]_i_1_n_12 ,\ctr_reg[15]_i_1_n_13 ,\ctr_reg[15]_i_1_n_14 ,\ctr_reg[15]_i_1_n_15 }),
        .S({\ctr[15]_i_2_n_0 ,\ctr[15]_i_3_n_0 ,\ctr[15]_i_4_n_0 ,\ctr[15]_i_5_n_0 ,\ctr[15]_i_6_n_0 ,\ctr[15]_i_7_n_0 ,\ctr[15]_i_8_n_0 ,\ctr[15]_i_9_n_0 }));
  FDRE \ctr_reg[16] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[23]_i_1_n_15 ),
        .Q(tstamp[16]),
        .R(trst));
  FDRE \ctr_reg[17] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[23]_i_1_n_14 ),
        .Q(tstamp[17]),
        .R(trst));
  FDRE \ctr_reg[18] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[23]_i_1_n_13 ),
        .Q(tstamp[18]),
        .R(trst));
  FDRE \ctr_reg[19] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[23]_i_1_n_12 ),
        .Q(tstamp[19]),
        .R(trst));
  FDRE \ctr_reg[1] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[7]_i_1_n_14 ),
        .Q(tstamp[1]),
        .R(trst));
  FDRE \ctr_reg[20] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[23]_i_1_n_11 ),
        .Q(tstamp[20]),
        .R(trst));
  FDRE \ctr_reg[21] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[23]_i_1_n_10 ),
        .Q(tstamp[21]),
        .R(trst));
  FDRE \ctr_reg[22] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[23]_i_1_n_9 ),
        .Q(tstamp[22]),
        .R(trst));
  FDRE \ctr_reg[23] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[23]_i_1_n_8 ),
        .Q(tstamp[23]),
        .R(trst));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \ctr_reg[23]_i_1 
       (.CI(\ctr_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ctr_reg[23]_i_1_n_0 ,\ctr_reg[23]_i_1_n_1 ,\ctr_reg[23]_i_1_n_2 ,\ctr_reg[23]_i_1_n_3 ,\ctr_reg[23]_i_1_n_4 ,\ctr_reg[23]_i_1_n_5 ,\ctr_reg[23]_i_1_n_6 ,\ctr_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[23]_i_1_n_8 ,\ctr_reg[23]_i_1_n_9 ,\ctr_reg[23]_i_1_n_10 ,\ctr_reg[23]_i_1_n_11 ,\ctr_reg[23]_i_1_n_12 ,\ctr_reg[23]_i_1_n_13 ,\ctr_reg[23]_i_1_n_14 ,\ctr_reg[23]_i_1_n_15 }),
        .S({\ctr[23]_i_2_n_0 ,\ctr[23]_i_3_n_0 ,\ctr[23]_i_4_n_0 ,\ctr[23]_i_5_n_0 ,\ctr[23]_i_6_n_0 ,\ctr[23]_i_7_n_0 ,\ctr[23]_i_8_n_0 ,\ctr[23]_i_9_n_0 }));
  FDRE \ctr_reg[24] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[31]_i_1_n_15 ),
        .Q(tstamp[24]),
        .R(trst));
  FDRE \ctr_reg[25] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[31]_i_1_n_14 ),
        .Q(tstamp[25]),
        .R(trst));
  FDRE \ctr_reg[26] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[31]_i_1_n_13 ),
        .Q(tstamp[26]),
        .R(trst));
  FDRE \ctr_reg[27] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[31]_i_1_n_12 ),
        .Q(tstamp[27]),
        .R(trst));
  FDRE \ctr_reg[28] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[31]_i_1_n_11 ),
        .Q(tstamp[28]),
        .R(trst));
  FDRE \ctr_reg[29] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[31]_i_1_n_10 ),
        .Q(tstamp[29]),
        .R(trst));
  FDRE \ctr_reg[2] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[7]_i_1_n_13 ),
        .Q(tstamp[2]),
        .R(trst));
  FDRE \ctr_reg[30] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[31]_i_1_n_9 ),
        .Q(tstamp[30]),
        .R(trst));
  FDRE \ctr_reg[31] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[31]_i_1_n_8 ),
        .Q(tstamp[31]),
        .R(trst));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \ctr_reg[31]_i_1 
       (.CI(\ctr_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ctr_reg[31]_i_1_n_0 ,\ctr_reg[31]_i_1_n_1 ,\ctr_reg[31]_i_1_n_2 ,\ctr_reg[31]_i_1_n_3 ,\ctr_reg[31]_i_1_n_4 ,\ctr_reg[31]_i_1_n_5 ,\ctr_reg[31]_i_1_n_6 ,\ctr_reg[31]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[31]_i_1_n_8 ,\ctr_reg[31]_i_1_n_9 ,\ctr_reg[31]_i_1_n_10 ,\ctr_reg[31]_i_1_n_11 ,\ctr_reg[31]_i_1_n_12 ,\ctr_reg[31]_i_1_n_13 ,\ctr_reg[31]_i_1_n_14 ,\ctr_reg[31]_i_1_n_15 }),
        .S({\ctr[31]_i_2_n_0 ,\ctr[31]_i_3_n_0 ,\ctr[31]_i_4_n_0 ,\ctr[31]_i_5_n_0 ,\ctr[31]_i_6_n_0 ,\ctr[31]_i_7_n_0 ,\ctr[31]_i_8_n_0 ,\ctr[31]_i_9_n_0 }));
  FDRE \ctr_reg[32] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[39]_i_1_n_15 ),
        .Q(tstamp[32]),
        .R(trst));
  FDRE \ctr_reg[33] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[39]_i_1_n_14 ),
        .Q(tstamp[33]),
        .R(trst));
  FDRE \ctr_reg[34] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[39]_i_1_n_13 ),
        .Q(tstamp[34]),
        .R(trst));
  FDRE \ctr_reg[35] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[39]_i_1_n_12 ),
        .Q(tstamp[35]),
        .R(trst));
  FDRE \ctr_reg[36] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[39]_i_1_n_11 ),
        .Q(tstamp[36]),
        .R(trst));
  FDRE \ctr_reg[37] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[39]_i_1_n_10 ),
        .Q(tstamp[37]),
        .R(trst));
  FDRE \ctr_reg[38] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[39]_i_1_n_9 ),
        .Q(tstamp[38]),
        .R(trst));
  FDRE \ctr_reg[39] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[39]_i_1_n_8 ),
        .Q(tstamp[39]),
        .R(trst));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \ctr_reg[39]_i_1 
       (.CI(\ctr_reg[31]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ctr_reg[39]_i_1_n_0 ,\ctr_reg[39]_i_1_n_1 ,\ctr_reg[39]_i_1_n_2 ,\ctr_reg[39]_i_1_n_3 ,\ctr_reg[39]_i_1_n_4 ,\ctr_reg[39]_i_1_n_5 ,\ctr_reg[39]_i_1_n_6 ,\ctr_reg[39]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[39]_i_1_n_8 ,\ctr_reg[39]_i_1_n_9 ,\ctr_reg[39]_i_1_n_10 ,\ctr_reg[39]_i_1_n_11 ,\ctr_reg[39]_i_1_n_12 ,\ctr_reg[39]_i_1_n_13 ,\ctr_reg[39]_i_1_n_14 ,\ctr_reg[39]_i_1_n_15 }),
        .S({\ctr[39]_i_2_n_0 ,\ctr[39]_i_3_n_0 ,\ctr[39]_i_4_n_0 ,\ctr[39]_i_5_n_0 ,\ctr[39]_i_6_n_0 ,\ctr[39]_i_7_n_0 ,\ctr[39]_i_8_n_0 ,\ctr[39]_i_9_n_0 }));
  FDRE \ctr_reg[3] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[7]_i_1_n_12 ),
        .Q(tstamp[3]),
        .R(trst));
  FDRE \ctr_reg[40] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[47]_i_1_n_15 ),
        .Q(tstamp[40]),
        .R(trst));
  FDRE \ctr_reg[41] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[47]_i_1_n_14 ),
        .Q(tstamp[41]),
        .R(trst));
  FDRE \ctr_reg[42] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[47]_i_1_n_13 ),
        .Q(tstamp[42]),
        .R(trst));
  FDRE \ctr_reg[43] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[47]_i_1_n_12 ),
        .Q(tstamp[43]),
        .R(trst));
  FDRE \ctr_reg[44] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[47]_i_1_n_11 ),
        .Q(tstamp[44]),
        .R(trst));
  FDRE \ctr_reg[45] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[47]_i_1_n_10 ),
        .Q(tstamp[45]),
        .R(trst));
  FDRE \ctr_reg[46] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[47]_i_1_n_9 ),
        .Q(tstamp[46]),
        .R(trst));
  FDRE \ctr_reg[47] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[47]_i_1_n_8 ),
        .Q(tstamp[47]),
        .R(trst));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \ctr_reg[47]_i_1 
       (.CI(\ctr_reg[39]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ctr_reg[47]_i_1_n_0 ,\ctr_reg[47]_i_1_n_1 ,\ctr_reg[47]_i_1_n_2 ,\ctr_reg[47]_i_1_n_3 ,\ctr_reg[47]_i_1_n_4 ,\ctr_reg[47]_i_1_n_5 ,\ctr_reg[47]_i_1_n_6 ,\ctr_reg[47]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[47]_i_1_n_8 ,\ctr_reg[47]_i_1_n_9 ,\ctr_reg[47]_i_1_n_10 ,\ctr_reg[47]_i_1_n_11 ,\ctr_reg[47]_i_1_n_12 ,\ctr_reg[47]_i_1_n_13 ,\ctr_reg[47]_i_1_n_14 ,\ctr_reg[47]_i_1_n_15 }),
        .S({\ctr[47]_i_2_n_0 ,\ctr[47]_i_3_n_0 ,\ctr[47]_i_4_n_0 ,\ctr[47]_i_5_n_0 ,\ctr[47]_i_6_n_0 ,\ctr[47]_i_7_n_0 ,\ctr[47]_i_8_n_0 ,\ctr[47]_i_9_n_0 }));
  FDRE \ctr_reg[48] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[55]_i_1_n_15 ),
        .Q(tstamp[48]),
        .R(trst));
  FDRE \ctr_reg[49] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[55]_i_1_n_14 ),
        .Q(tstamp[49]),
        .R(trst));
  FDRE \ctr_reg[4] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[7]_i_1_n_11 ),
        .Q(tstamp[4]),
        .R(trst));
  FDRE \ctr_reg[50] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[55]_i_1_n_13 ),
        .Q(tstamp[50]),
        .R(trst));
  FDRE \ctr_reg[51] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[55]_i_1_n_12 ),
        .Q(tstamp[51]),
        .R(trst));
  FDRE \ctr_reg[52] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[55]_i_1_n_11 ),
        .Q(tstamp[52]),
        .R(trst));
  FDRE \ctr_reg[53] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[55]_i_1_n_10 ),
        .Q(tstamp[53]),
        .R(trst));
  FDRE \ctr_reg[54] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[55]_i_1_n_9 ),
        .Q(tstamp[54]),
        .R(trst));
  FDRE \ctr_reg[55] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[55]_i_1_n_8 ),
        .Q(tstamp[55]),
        .R(trst));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \ctr_reg[55]_i_1 
       (.CI(\ctr_reg[47]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ctr_reg[55]_i_1_n_0 ,\ctr_reg[55]_i_1_n_1 ,\ctr_reg[55]_i_1_n_2 ,\ctr_reg[55]_i_1_n_3 ,\ctr_reg[55]_i_1_n_4 ,\ctr_reg[55]_i_1_n_5 ,\ctr_reg[55]_i_1_n_6 ,\ctr_reg[55]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[55]_i_1_n_8 ,\ctr_reg[55]_i_1_n_9 ,\ctr_reg[55]_i_1_n_10 ,\ctr_reg[55]_i_1_n_11 ,\ctr_reg[55]_i_1_n_12 ,\ctr_reg[55]_i_1_n_13 ,\ctr_reg[55]_i_1_n_14 ,\ctr_reg[55]_i_1_n_15 }),
        .S({\ctr[55]_i_2_n_0 ,\ctr[55]_i_3_n_0 ,\ctr[55]_i_4_n_0 ,\ctr[55]_i_5_n_0 ,\ctr[55]_i_6_n_0 ,\ctr[55]_i_7_n_0 ,\ctr[55]_i_8_n_0 ,\ctr[55]_i_9_n_0 }));
  FDRE \ctr_reg[56] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[63]_i_2_n_15 ),
        .Q(tstamp[56]),
        .R(trst));
  FDRE \ctr_reg[57] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[63]_i_2_n_14 ),
        .Q(tstamp[57]),
        .R(trst));
  FDRE \ctr_reg[58] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[63]_i_2_n_13 ),
        .Q(tstamp[58]),
        .R(trst));
  FDRE \ctr_reg[59] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[63]_i_2_n_12 ),
        .Q(tstamp[59]),
        .R(trst));
  FDRE \ctr_reg[5] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[7]_i_1_n_10 ),
        .Q(tstamp[5]),
        .R(trst));
  FDRE \ctr_reg[60] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[63]_i_2_n_11 ),
        .Q(tstamp[60]),
        .R(trst));
  FDRE \ctr_reg[61] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[63]_i_2_n_10 ),
        .Q(tstamp[61]),
        .R(trst));
  FDRE \ctr_reg[62] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[63]_i_2_n_9 ),
        .Q(tstamp[62]),
        .R(trst));
  FDRE \ctr_reg[63] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[63]_i_2_n_8 ),
        .Q(tstamp[63]),
        .R(trst));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \ctr_reg[63]_i_2 
       (.CI(\ctr_reg[55]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_ctr_reg[63]_i_2_CO_UNCONNECTED [7],\ctr_reg[63]_i_2_n_1 ,\ctr_reg[63]_i_2_n_2 ,\ctr_reg[63]_i_2_n_3 ,\ctr_reg[63]_i_2_n_4 ,\ctr_reg[63]_i_2_n_5 ,\ctr_reg[63]_i_2_n_6 ,\ctr_reg[63]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[63]_i_2_n_8 ,\ctr_reg[63]_i_2_n_9 ,\ctr_reg[63]_i_2_n_10 ,\ctr_reg[63]_i_2_n_11 ,\ctr_reg[63]_i_2_n_12 ,\ctr_reg[63]_i_2_n_13 ,\ctr_reg[63]_i_2_n_14 ,\ctr_reg[63]_i_2_n_15 }),
        .S({\ctr[63]_i_4_n_0 ,\ctr[63]_i_5_n_0 ,\ctr[63]_i_6_n_0 ,\ctr[63]_i_7_n_0 ,\ctr[63]_i_8_n_0 ,\ctr[63]_i_9_n_0 ,\ctr[63]_i_10_n_0 ,\ctr[63]_i_11_n_0 }));
  FDRE \ctr_reg[6] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[7]_i_1_n_9 ),
        .Q(tstamp[6]),
        .R(trst));
  FDRE \ctr_reg[7] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[7]_i_1_n_8 ),
        .Q(tstamp[7]),
        .R(trst));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \ctr_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\ctr_reg[7]_i_1_n_0 ,\ctr_reg[7]_i_1_n_1 ,\ctr_reg[7]_i_1_n_2 ,\ctr_reg[7]_i_1_n_3 ,\ctr_reg[7]_i_1_n_4 ,\ctr_reg[7]_i_1_n_5 ,\ctr_reg[7]_i_1_n_6 ,\ctr_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\ctr_reg[7]_i_1_n_8 ,\ctr_reg[7]_i_1_n_9 ,\ctr_reg[7]_i_1_n_10 ,\ctr_reg[7]_i_1_n_11 ,\ctr_reg[7]_i_1_n_12 ,\ctr_reg[7]_i_1_n_13 ,\ctr_reg[7]_i_1_n_14 ,\ctr_reg[7]_i_1_n_15 }),
        .S({\ctr[7]_i_2__0_n_0 ,\ctr[7]_i_3_n_0 ,\ctr[7]_i_4_n_0 ,\ctr[7]_i_5_n_0 ,\ctr[7]_i_6_n_0 ,\ctr[7]_i_7_n_0 ,\ctr[7]_i_8_n_0 ,\ctr[7]_i_9_n_0 }));
  FDRE \ctr_reg[8] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[15]_i_1_n_15 ),
        .Q(tstamp[8]),
        .R(trst));
  FDRE \ctr_reg[9] 
       (.C(CLK),
        .CE(\ctr[63]_i_1_n_0 ),
        .D(\ctr_reg[15]_i_1_n_14 ),
        .Q(tstamp[9]),
        .R(trst));
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
        .I1(\ctr_reg[63]_0 [45]),
        .I2(\ctr_reg[63]_0 [47]),
        .I3(tstamp[47]),
        .I4(\ctr_reg[63]_0 [46]),
        .I5(tstamp[46]),
        .O(lock1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_2
       (.I0(tstamp[42]),
        .I1(\ctr_reg[63]_0 [42]),
        .I2(\ctr_reg[63]_0 [44]),
        .I3(tstamp[44]),
        .I4(\ctr_reg[63]_0 [43]),
        .I5(tstamp[43]),
        .O(lock1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_3
       (.I0(tstamp[39]),
        .I1(\ctr_reg[63]_0 [39]),
        .I2(\ctr_reg[63]_0 [41]),
        .I3(tstamp[41]),
        .I4(\ctr_reg[63]_0 [40]),
        .I5(tstamp[40]),
        .O(lock1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_4
       (.I0(tstamp[36]),
        .I1(\ctr_reg[63]_0 [36]),
        .I2(\ctr_reg[63]_0 [38]),
        .I3(tstamp[38]),
        .I4(\ctr_reg[63]_0 [37]),
        .I5(tstamp[37]),
        .O(lock1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_5
       (.I0(tstamp[33]),
        .I1(\ctr_reg[63]_0 [33]),
        .I2(\ctr_reg[63]_0 [35]),
        .I3(tstamp[35]),
        .I4(\ctr_reg[63]_0 [34]),
        .I5(tstamp[34]),
        .O(lock1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_6
       (.I0(tstamp[30]),
        .I1(\ctr_reg[63]_0 [30]),
        .I2(\ctr_reg[63]_0 [32]),
        .I3(tstamp[32]),
        .I4(\ctr_reg[63]_0 [31]),
        .I5(tstamp[31]),
        .O(lock1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_7
       (.I0(tstamp[27]),
        .I1(\ctr_reg[63]_0 [27]),
        .I2(\ctr_reg[63]_0 [29]),
        .I3(tstamp[29]),
        .I4(\ctr_reg[63]_0 [28]),
        .I5(tstamp[28]),
        .O(lock1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_8
       (.I0(tstamp[24]),
        .I1(\ctr_reg[63]_0 [24]),
        .I2(\ctr_reg[63]_0 [26]),
        .I3(tstamp[26]),
        .I4(\ctr_reg[63]_0 [25]),
        .I5(tstamp[25]),
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
       (.I0(\ctr_reg[63]_0 [63]),
        .I1(tstamp[63]),
        .O(lock1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_2
       (.I0(tstamp[60]),
        .I1(\ctr_reg[63]_0 [60]),
        .I2(\ctr_reg[63]_0 [62]),
        .I3(tstamp[62]),
        .I4(\ctr_reg[63]_0 [61]),
        .I5(tstamp[61]),
        .O(lock1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_3
       (.I0(tstamp[57]),
        .I1(\ctr_reg[63]_0 [57]),
        .I2(\ctr_reg[63]_0 [59]),
        .I3(tstamp[59]),
        .I4(\ctr_reg[63]_0 [58]),
        .I5(tstamp[58]),
        .O(lock1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_4
       (.I0(tstamp[54]),
        .I1(\ctr_reg[63]_0 [54]),
        .I2(\ctr_reg[63]_0 [56]),
        .I3(tstamp[56]),
        .I4(\ctr_reg[63]_0 [55]),
        .I5(tstamp[55]),
        .O(lock1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_5
       (.I0(tstamp[51]),
        .I1(\ctr_reg[63]_0 [51]),
        .I2(\ctr_reg[63]_0 [53]),
        .I3(tstamp[53]),
        .I4(\ctr_reg[63]_0 [52]),
        .I5(tstamp[52]),
        .O(lock1_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_6
       (.I0(tstamp[48]),
        .I1(\ctr_reg[63]_0 [48]),
        .I2(\ctr_reg[63]_0 [50]),
        .I3(tstamp[50]),
        .I4(\ctr_reg[63]_0 [49]),
        .I5(tstamp[49]),
        .O(lock1_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_1
       (.I0(tstamp[21]),
        .I1(\ctr_reg[63]_0 [21]),
        .I2(\ctr_reg[63]_0 [23]),
        .I3(tstamp[23]),
        .I4(\ctr_reg[63]_0 [22]),
        .I5(tstamp[22]),
        .O(lock1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_2
       (.I0(tstamp[18]),
        .I1(\ctr_reg[63]_0 [18]),
        .I2(\ctr_reg[63]_0 [20]),
        .I3(tstamp[20]),
        .I4(\ctr_reg[63]_0 [19]),
        .I5(tstamp[19]),
        .O(lock1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_3
       (.I0(tstamp[15]),
        .I1(\ctr_reg[63]_0 [15]),
        .I2(\ctr_reg[63]_0 [17]),
        .I3(tstamp[17]),
        .I4(\ctr_reg[63]_0 [16]),
        .I5(tstamp[16]),
        .O(lock1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_4
       (.I0(tstamp[12]),
        .I1(\ctr_reg[63]_0 [12]),
        .I2(\ctr_reg[63]_0 [14]),
        .I3(tstamp[14]),
        .I4(\ctr_reg[63]_0 [13]),
        .I5(tstamp[13]),
        .O(lock1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_5
       (.I0(tstamp[9]),
        .I1(\ctr_reg[63]_0 [9]),
        .I2(\ctr_reg[63]_0 [11]),
        .I3(tstamp[11]),
        .I4(\ctr_reg[63]_0 [10]),
        .I5(tstamp[10]),
        .O(lock1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_6
       (.I0(tstamp[6]),
        .I1(\ctr_reg[63]_0 [6]),
        .I2(\ctr_reg[63]_0 [8]),
        .I3(tstamp[8]),
        .I4(\ctr_reg[63]_0 [7]),
        .I5(tstamp[7]),
        .O(lock1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_7
       (.I0(tstamp[3]),
        .I1(\ctr_reg[63]_0 [3]),
        .I2(\ctr_reg[63]_0 [5]),
        .I3(tstamp[5]),
        .I4(\ctr_reg[63]_0 [4]),
        .I5(tstamp[4]),
        .O(lock1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_8
       (.I0(tstamp[0]),
        .I1(\ctr_reg[63]_0 [0]),
        .I2(\ctr_reg[63]_0 [2]),
        .I3(tstamp[2]),
        .I4(\ctr_reg[63]_0 [1]),
        .I5(tstamp[1]),
        .O(lock1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h7CCC)) 
    lock_i_1
       (.I0(lock1),
        .I1(D),
        .I2(s),
        .I3(valid),
        .O(lock_i_1_n_0));
  FDRE lock_reg
       (.C(CLK),
        .CE(1'b1),
        .D(lock_i_1_n_0),
        .Q(D),
        .R(trst));
  LUT4 #(
    .INIT(16'h000E)) 
    valid_i_1
       (.I0(ts_stb),
        .I1(valid),
        .I2(s),
        .I3(trst),
        .O(valid0));
  FDRE valid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(valid0),
        .Q(valid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_idle_gen" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_idle_gen
   (\acmdw_v[1][last] ,
    \acmdw[last] ,
    in5,
    trans_i_2,
    trans_i_2_0,
    trst,
    E,
    CLK);
  output \acmdw_v[1][last] ;
  output \acmdw[last] ;
  output [7:0]in5;
  input trans_i_2;
  input [8:0]trans_i_2_0;
  input trst;
  input [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire \acmdw[last] ;
  wire \acmdw_v[1][last] ;
  wire \ctr[0]_i_1_n_0 ;
  wire \ctr[1]_i_1_n_0 ;
  wire \ctr[2]_i_1_n_0 ;
  wire \ctr[3]_i_1_n_0 ;
  wire \ctr[4]_i_1_n_0 ;
  wire \ctr[5]_i_1_n_0 ;
  wire \ctr[5]_i_2_n_0 ;
  wire \ctr[6]_i_1_n_0 ;
  wire \ctr[7]_i_1_n_0 ;
  wire \ctr[7]_i_2_n_0 ;
  wire [7:0]ctr_reg;
  wire [7:0]in5;
  wire \lfsr_q[15]_i_10_n_0 ;
  wire \p[0]_i_5_n_0 ;
  wire [7:0]r;
  wire \r[0]_i_1_n_0 ;
  wire trans_i_2;
  wire [8:0]trans_i_2_0;
  wire trst;

  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctr[0]_i_1 
       (.I0(ctr_reg[0]),
        .I1(\acmdw_v[1][last] ),
        .O(\ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \ctr[1]_i_1 
       (.I0(ctr_reg[1]),
        .I1(ctr_reg[0]),
        .I2(\acmdw_v[1][last] ),
        .O(\ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \ctr[2]_i_1 
       (.I0(ctr_reg[2]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[0]),
        .I3(\acmdw_v[1][last] ),
        .O(\ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \ctr[3]_i_1 
       (.I0(ctr_reg[3]),
        .I1(ctr_reg[2]),
        .I2(ctr_reg[0]),
        .I3(ctr_reg[1]),
        .I4(\acmdw_v[1][last] ),
        .O(\ctr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \ctr[4]_i_1 
       (.I0(ctr_reg[4]),
        .I1(ctr_reg[3]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[0]),
        .I4(ctr_reg[2]),
        .I5(\acmdw_v[1][last] ),
        .O(\ctr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \ctr[5]_i_1 
       (.I0(ctr_reg[5]),
        .I1(\ctr[5]_i_2_n_0 ),
        .I2(\acmdw_v[1][last] ),
        .O(\ctr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \ctr[5]_i_2 
       (.I0(ctr_reg[4]),
        .I1(ctr_reg[2]),
        .I2(ctr_reg[0]),
        .I3(ctr_reg[1]),
        .I4(ctr_reg[3]),
        .O(\ctr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \ctr[6]_i_1 
       (.I0(ctr_reg[6]),
        .I1(\ctr[7]_i_2_n_0 ),
        .I2(\acmdw_v[1][last] ),
        .O(\ctr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \ctr[7]_i_1 
       (.I0(ctr_reg[7]),
        .I1(ctr_reg[6]),
        .I2(\ctr[7]_i_2_n_0 ),
        .I3(\acmdw_v[1][last] ),
        .O(\ctr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ctr[7]_i_2 
       (.I0(ctr_reg[5]),
        .I1(ctr_reg[3]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[0]),
        .I4(ctr_reg[2]),
        .I5(ctr_reg[4]),
        .O(\ctr[7]_i_2_n_0 ));
  FDRE \ctr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\ctr[0]_i_1_n_0 ),
        .Q(ctr_reg[0]),
        .R(trst));
  FDRE \ctr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\ctr[1]_i_1_n_0 ),
        .Q(ctr_reg[1]),
        .R(trst));
  FDRE \ctr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\ctr[2]_i_1_n_0 ),
        .Q(ctr_reg[2]),
        .R(trst));
  FDRE \ctr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\ctr[3]_i_1_n_0 ),
        .Q(ctr_reg[3]),
        .R(trst));
  FDRE \ctr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\ctr[4]_i_1_n_0 ),
        .Q(ctr_reg[4]),
        .R(trst));
  FDRE \ctr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\ctr[5]_i_1_n_0 ),
        .Q(ctr_reg[5]),
        .R(trst));
  FDRE \ctr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\ctr[6]_i_1_n_0 ),
        .Q(ctr_reg[6]),
        .R(trst));
  FDRE \ctr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\ctr[7]_i_1_n_0 ),
        .Q(ctr_reg[7]),
        .R(trst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \lfsr_q[15]_i_10 
       (.I0(ctr_reg[3]),
        .I1(ctr_reg[2]),
        .I2(ctr_reg[6]),
        .I3(ctr_reg[7]),
        .I4(ctr_reg[4]),
        .I5(ctr_reg[5]),
        .O(\lfsr_q[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FFFFFE020000)) 
    \lfsr_q[15]_i_7 
       (.I0(ctr_reg[0]),
        .I1(\lfsr_q[15]_i_10_n_0 ),
        .I2(ctr_reg[1]),
        .I3(r[0]),
        .I4(trans_i_2),
        .I5(trans_i_2_0[0]),
        .O(in5[0]));
  LUT5 #(
    .INIT(32'hF1FFF100)) 
    \lfsr_q[3]_i_3 
       (.I0(\lfsr_q[15]_i_10_n_0 ),
        .I1(ctr_reg[1]),
        .I2(r[1]),
        .I3(trans_i_2),
        .I4(trans_i_2_0[1]),
        .O(in5[1]));
  LUT5 #(
    .INIT(32'hF1FFF100)) 
    \lfsr_q[4]_i_3 
       (.I0(\lfsr_q[15]_i_10_n_0 ),
        .I1(ctr_reg[1]),
        .I2(r[2]),
        .I3(trans_i_2),
        .I4(trans_i_2_0[2]),
        .O(in5[2]));
  LUT5 #(
    .INIT(32'hF1FFF100)) 
    \lfsr_q[5]_i_3 
       (.I0(\lfsr_q[15]_i_10_n_0 ),
        .I1(ctr_reg[1]),
        .I2(r[3]),
        .I3(trans_i_2),
        .I4(trans_i_2_0[3]),
        .O(in5[3]));
  LUT5 #(
    .INIT(32'hF1FFF100)) 
    \lfsr_q[6]_i_3 
       (.I0(\lfsr_q[15]_i_10_n_0 ),
        .I1(ctr_reg[1]),
        .I2(r[4]),
        .I3(trans_i_2),
        .I4(trans_i_2_0[4]),
        .O(in5[4]));
  LUT5 #(
    .INIT(32'hF1FFF100)) 
    \lfsr_q[7]_i_3 
       (.I0(\lfsr_q[15]_i_10_n_0 ),
        .I1(ctr_reg[1]),
        .I2(r[5]),
        .I3(trans_i_2),
        .I4(trans_i_2_0[5]),
        .O(in5[5]));
  LUT5 #(
    .INIT(32'hF1FFF100)) 
    \lfsr_q[8]_i_3 
       (.I0(\lfsr_q[15]_i_10_n_0 ),
        .I1(ctr_reg[1]),
        .I2(r[6]),
        .I3(trans_i_2),
        .I4(trans_i_2_0[6]),
        .O(in5[6]));
  LUT5 #(
    .INIT(32'hF1FFF100)) 
    \lfsr_q[9]_i_3 
       (.I0(\lfsr_q[15]_i_10_n_0 ),
        .I1(ctr_reg[1]),
        .I2(r[7]),
        .I3(trans_i_2),
        .I4(trans_i_2_0[7]),
        .O(in5[7]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \p[0]_i_4 
       (.I0(ctr_reg[5]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[6]),
        .I3(ctr_reg[7]),
        .I4(\p[0]_i_5_n_0 ),
        .O(\acmdw_v[1][last] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \p[0]_i_5 
       (.I0(ctr_reg[2]),
        .I1(ctr_reg[3]),
        .I2(ctr_reg[0]),
        .I3(ctr_reg[4]),
        .O(\p[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \r[0]_i_1 
       (.I0(r[4]),
        .I1(r[5]),
        .I2(r[7]),
        .I3(r[3]),
        .O(\r[0]_i_1_n_0 ));
  FDSE \r_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\r[0]_i_1_n_0 ),
        .Q(r[0]),
        .S(trst));
  FDRE \r_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(r[0]),
        .Q(r[1]),
        .R(trst));
  FDRE \r_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(r[1]),
        .Q(r[2]),
        .R(trst));
  FDRE \r_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(r[2]),
        .Q(r[3]),
        .R(trst));
  FDRE \r_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(r[3]),
        .Q(r[4]),
        .R(trst));
  FDRE \r_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(r[4]),
        .Q(r[5]),
        .R(trst));
  FDRE \r_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(r[5]),
        .Q(r[6]),
        .R(trst));
  FDRE \r_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(r[6]),
        .Q(r[7]),
        .R(trst));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_i_3__0
       (.I0(\acmdw_v[1][last] ),
        .I1(trans_i_2),
        .I2(trans_i_2_0[8]),
        .O(\acmdw[last] ));
endmodule

(* ORIG_REF_NAME = "pdts_lutram" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_lutram
   (SR,
    \p_reg[0] ,
    trst,
    err_tx,
    d,
    wen,
    ren__0,
    CLK,
    Q);
  output [0:0]SR;
  output [8:0]\p_reg[0] ;
  input trst;
  input err_tx;
  input [8:0]d;
  input wen;
  input ren__0;
  input CLK;
  input [4:0]Q;

  wire CLK;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [8:0]d;
  wire err_tx;
  wire [8:0]\p_reg[0] ;
  wire ren__0;
  wire trst;
  wire wen;

  LUT6 #(
    .INIT(64'hBBBBBAAABAAABAAA)) 
    \p[4]_i_1 
       (.I0(trst),
        .I1(err_tx),
        .I2(d[8]),
        .I3(wen),
        .I4(\p_reg[0] [8]),
        .I5(ren__0),
        .O(SR));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/txbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[0]),
        .O(\p_reg[0] [0]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/txbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_1_1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[1]),
        .O(\p_reg[0] [1]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/txbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_2_2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[2]),
        .O(\p_reg[0] [2]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/txbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_3_3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[3]),
        .O(\p_reg[0] [3]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/txbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_4_4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[4]),
        .O(\p_reg[0] [4]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/txbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_5_5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[5]),
        .O(\p_reg[0] [5]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/txbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_6_6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[6]),
        .O(\p_reg[0] [6]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/txbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_7_7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[7]),
        .O(\p_reg[0] [7]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/txbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_8_8
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[8]),
        .O(\p_reg[0] [8]),
        .WCLK(CLK),
        .WE(wen));
endmodule

(* ORIG_REF_NAME = "pdts_lutram" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_lutram_4
   (D,
    \acmdw_rx[last] ,
    CLK,
    d,
    wen,
    Q);
  output [7:0]D;
  output \acmdw_rx[last] ;
  input CLK;
  input [8:0]d;
  input wen;
  input [4:0]Q;

  wire CLK;
  wire [7:0]D;
  wire [4:0]Q;
  wire \acmdw_rx[last] ;
  wire [8:0]d;
  wire wen;

  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/rxbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[0]),
        .O(D[0]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/rxbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_1_1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[1]),
        .O(D[1]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/rxbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_2_2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[2]),
        .O(D[2]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/rxbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_3_3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[3]),
        .O(D[3]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/rxbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_4_4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[4]),
        .O(D[4]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/rxbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_5_5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[5]),
        .O(D[5]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/rxbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_6_6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[6]),
        .O(D[6]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/rxbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_7_7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[7]),
        .O(D[7]),
        .WCLK(CLK),
        .WE(wen));
  (* RTL_RAM_BITS = "288" *) 
  (* RTL_RAM_NAME = "inst/ts_ep/ep/ctrl/rxbuf/ram/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_8_8
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(d[8]),
        .O(\acmdw_rx[last] ),
        .WCLK(CLK),
        .WE(wen));
endmodule

(* ORIG_REF_NAME = "pdts_mod" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_mod
   (txd,
    CLK,
    SS,
    Q);
  output txd;
  input CLK;
  input [0:0]SS;
  input [0:0]Q;

  wire CLK;
  wire [0:0]Q;
  wire [0:0]SS;
  wire [1:0]cctr;
  wire \cctr[0]_i_1__0_n_0 ;
  wire \cctr[1]_i_1_n_0 ;
  wire q_i_1_n_0;
  wire txd;

  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cctr[0]_i_1__0 
       (.I0(cctr[0]),
        .O(\cctr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cctr[1]_i_1 
       (.I0(cctr[0]),
        .I1(cctr[1]),
        .O(\cctr[1]_i_1_n_0 ));
  FDSE \cctr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cctr[0]_i_1__0_n_0 ),
        .Q(cctr[0]),
        .S(SS));
  FDSE \cctr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cctr[1]_i_1_n_0 ),
        .Q(cctr[1]),
        .S(SS));
  LUT3 #(
    .INIT(8'h4D)) 
    q_i_1
       (.I0(cctr[1]),
        .I1(Q),
        .I2(cctr[0]),
        .O(q_i_1_n_0));
  FDRE q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(q_i_1_n_0),
        .Q(txd),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_pktbuf" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf
   (s_reg_0,
    D,
    \acmdw_rx[last] ,
    err_i_reg_0,
    s0,
    CLK,
    d,
    wen,
    p1__0,
    txdone__0,
    rxdone,
    trst,
    Q,
    err_tx,
    p_11_in);
  output s_reg_0;
  output [7:0]D;
  output \acmdw_rx[last] ;
  output [0:0]err_i_reg_0;
  input s0;
  input CLK;
  input [8:0]d;
  input wen;
  input p1__0;
  input txdone__0;
  input rxdone;
  input trst;
  input [0:0]Q;
  input err_tx;
  input p_11_in;

  wire CLK;
  wire [7:0]D;
  wire [0:0]Q;
  wire \acmdw_rx[last] ;
  wire [8:0]d;
  wire err_i_i_1_n_0;
  wire err_i_i_2_n_0;
  wire [0:0]err_i_reg_0;
  wire err_rx;
  wire err_tx;
  wire p;
  wire p0;
  wire p1__0;
  wire p_11_in;
  wire [4:0]plusOp__2;
  wire rxdone;
  wire s0;
  wire s_reg_0;
  wire [4:0]sel__0;
  wire trst;
  wire txdone__0;
  wire wen;

  LUT3 #(
    .INIT(8'hFE)) 
    \da[4]_i_1 
       (.I0(err_rx),
        .I1(Q),
        .I2(err_tx),
        .O(err_i_reg_0));
  LUT6 #(
    .INIT(64'h00000000FFFF0008)) 
    err_i_i_1
       (.I0(err_i_i_2_n_0),
        .I1(p1__0),
        .I2(txdone__0),
        .I3(rxdone),
        .I4(err_rx),
        .I5(trst),
        .O(err_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    err_i_i_2
       (.I0(sel__0[0]),
        .I1(sel__0[3]),
        .I2(sel__0[4]),
        .I3(sel__0[1]),
        .I4(sel__0[2]),
        .O(err_i_i_2_n_0));
  FDRE err_i_reg
       (.C(CLK),
        .CE(1'b1),
        .D(err_i_i_1_n_0),
        .Q(err_rx),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p[0]_i_1__0 
       (.I0(sel__0[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p[1]_i_1 
       (.I0(sel__0[0]),
        .I1(sel__0[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \p[2]_i_1 
       (.I0(sel__0[0]),
        .I1(sel__0[1]),
        .I2(sel__0[2]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \p[3]_i_1 
       (.I0(sel__0[1]),
        .I1(sel__0[0]),
        .I2(sel__0[2]),
        .I3(sel__0[3]),
        .O(plusOp__2[3]));
  LUT5 #(
    .INIT(32'hBBBBBAAA)) 
    \p[4]_i_1__0 
       (.I0(trst),
        .I1(err_rx),
        .I2(p_11_in),
        .I3(wen),
        .I4(txdone__0),
        .O(p0));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \p[4]_i_2 
       (.I0(p1__0),
        .I1(sel__0[2]),
        .I2(sel__0[1]),
        .I3(sel__0[4]),
        .I4(sel__0[3]),
        .I5(sel__0[0]),
        .O(p));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \p[4]_i_3 
       (.I0(sel__0[2]),
        .I1(sel__0[0]),
        .I2(sel__0[1]),
        .I3(sel__0[3]),
        .I4(sel__0[4]),
        .O(plusOp__2[4]));
  FDRE \p_reg[0] 
       (.C(CLK),
        .CE(p),
        .D(plusOp__2[0]),
        .Q(sel__0[0]),
        .R(p0));
  FDRE \p_reg[1] 
       (.C(CLK),
        .CE(p),
        .D(plusOp__2[1]),
        .Q(sel__0[1]),
        .R(p0));
  FDRE \p_reg[2] 
       (.C(CLK),
        .CE(p),
        .D(plusOp__2[2]),
        .Q(sel__0[2]),
        .R(p0));
  FDRE \p_reg[3] 
       (.C(CLK),
        .CE(p),
        .D(plusOp__2[3]),
        .Q(sel__0[3]),
        .R(p0));
  FDRE \p_reg[4] 
       (.C(CLK),
        .CE(p),
        .D(plusOp__2[4]),
        .Q(sel__0[4]),
        .R(p0));
  design_1_pdts_endpoint_wrapper_0_0_pdts_lutram_4 ram
       (.CLK(CLK),
        .D(D),
        .Q(sel__0),
        .\acmdw_rx[last] (\acmdw_rx[last] ),
        .d(d),
        .wen(wen));
  FDRE s_reg
       (.C(CLK),
        .CE(1'b1),
        .D(s0),
        .Q(s_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_pktbuf" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf_3
   (\acmd_tx_w[valid] ,
    err_tx,
    \p_reg[0]_0 ,
    s0,
    CLK,
    p1__0,
    txdone__0_0,
    rxdone__0,
    trst,
    d,
    wen,
    ren__0,
    sel,
    \acmdr[rdy] );
  output \acmd_tx_w[valid] ;
  output err_tx;
  output [8:0]\p_reg[0]_0 ;
  input s0;
  input CLK;
  input p1__0;
  input txdone__0_0;
  input rxdone__0;
  input trst;
  input [8:0]d;
  input wen;
  input ren__0;
  input sel;
  input \acmdr[rdy] ;

  wire CLK;
  wire \acmd_tx_w[valid] ;
  wire \acmdr[rdy] ;
  wire [8:0]d;
  wire err_i_i_1__0_n_0;
  wire err_tx;
  wire p;
  wire p0;
  wire p1__0;
  wire \p[4]_i_4_n_0 ;
  wire [8:0]\p_reg[0]_0 ;
  wire \p_reg_n_0_[0] ;
  wire \p_reg_n_0_[1] ;
  wire \p_reg_n_0_[2] ;
  wire \p_reg_n_0_[3] ;
  wire \p_reg_n_0_[4] ;
  wire [4:0]plusOp__4;
  wire ren__0;
  wire rxdone__0;
  wire s0;
  wire sel;
  wire trst;
  wire txdone__0_0;
  wire wen;

  LUT6 #(
    .INIT(64'h00000000FFFF0008)) 
    err_i_i_1__0
       (.I0(\p[4]_i_4_n_0 ),
        .I1(p1__0),
        .I2(txdone__0_0),
        .I3(rxdone__0),
        .I4(err_tx),
        .I5(trst),
        .O(err_i_i_1__0_n_0));
  FDRE err_i_reg
       (.C(CLK),
        .CE(1'b1),
        .D(err_i_i_1__0_n_0),
        .Q(err_tx),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p[0]_i_1__1 
       (.I0(\p_reg_n_0_[0] ),
        .O(plusOp__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p[1]_i_1__0 
       (.I0(\p_reg_n_0_[0] ),
        .I1(\p_reg_n_0_[1] ),
        .O(plusOp__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \p[2]_i_1__0 
       (.I0(\p_reg_n_0_[0] ),
        .I1(\p_reg_n_0_[1] ),
        .I2(\p_reg_n_0_[2] ),
        .O(plusOp__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \p[3]_i_1__0 
       (.I0(\p_reg_n_0_[1] ),
        .I1(\p_reg_n_0_[0] ),
        .I2(\p_reg_n_0_[2] ),
        .I3(\p_reg_n_0_[3] ),
        .O(plusOp__4[3]));
  LUT5 #(
    .INIT(32'h0000FF20)) 
    \p[4]_i_2__0 
       (.I0(\acmd_tx_w[valid] ),
        .I1(sel),
        .I2(\acmdr[rdy] ),
        .I3(wen),
        .I4(\p[4]_i_4_n_0 ),
        .O(p));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \p[4]_i_3__0 
       (.I0(\p_reg_n_0_[2] ),
        .I1(\p_reg_n_0_[0] ),
        .I2(\p_reg_n_0_[1] ),
        .I3(\p_reg_n_0_[3] ),
        .I4(\p_reg_n_0_[4] ),
        .O(plusOp__4[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \p[4]_i_4 
       (.I0(\p_reg_n_0_[0] ),
        .I1(\p_reg_n_0_[3] ),
        .I2(\p_reg_n_0_[4] ),
        .I3(\p_reg_n_0_[1] ),
        .I4(\p_reg_n_0_[2] ),
        .O(\p[4]_i_4_n_0 ));
  FDRE \p_reg[0] 
       (.C(CLK),
        .CE(p),
        .D(plusOp__4[0]),
        .Q(\p_reg_n_0_[0] ),
        .R(p0));
  FDRE \p_reg[1] 
       (.C(CLK),
        .CE(p),
        .D(plusOp__4[1]),
        .Q(\p_reg_n_0_[1] ),
        .R(p0));
  FDRE \p_reg[2] 
       (.C(CLK),
        .CE(p),
        .D(plusOp__4[2]),
        .Q(\p_reg_n_0_[2] ),
        .R(p0));
  FDRE \p_reg[3] 
       (.C(CLK),
        .CE(p),
        .D(plusOp__4[3]),
        .Q(\p_reg_n_0_[3] ),
        .R(p0));
  FDRE \p_reg[4] 
       (.C(CLK),
        .CE(p),
        .D(plusOp__4[4]),
        .Q(\p_reg_n_0_[4] ),
        .R(p0));
  design_1_pdts_endpoint_wrapper_0_0_pdts_lutram ram
       (.CLK(CLK),
        .Q({\p_reg_n_0_[4] ,\p_reg_n_0_[3] ,\p_reg_n_0_[2] ,\p_reg_n_0_[1] ,\p_reg_n_0_[0] }),
        .SR(p0),
        .d(d),
        .err_tx(err_tx),
        .\p_reg[0] (\p_reg[0]_0 ),
        .ren__0(ren__0),
        .trst(trst),
        .wen(wen));
  FDRE s_reg
       (.C(CLK),
        .CE(1'b1),
        .D(s0),
        .Q(\acmd_tx_w[valid] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_rx" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_rx
   (D,
    d,
    locked,
    stbo,
    wen,
    E,
    \state_reg[1] ,
    s0,
    p_11_in,
    s,
    sync_stb,
    rxdone,
    CLK,
    trst,
    \s_reg[1][0] ,
    delay,
    \acmdw_rx[valid] ,
    \actr_i_reg[4] ,
    txdone__0,
    addr,
    SR);
  output [7:0]D;
  output [8:0]d;
  output locked;
  output stbo;
  output wen;
  output [0:0]E;
  output [0:0]\state_reg[1] ;
  output s0;
  output p_11_in;
  output s;
  output sync_stb;
  output rxdone;
  input CLK;
  input trst;
  input \s_reg[1][0] ;
  input [3:0]delay;
  input \acmdw_rx[valid] ;
  input \actr_i_reg[4] ;
  input txdone__0;
  input [15:0]addr;
  input [0:0]SR;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]SR;
  wire \acmdw_rx[valid] ;
  wire \actr_i_reg[4] ;
  wire [15:0]addr;
  wire \ctr[63]_i_12_n_0 ;
  wire [8:0]d;
  wire [3:0]delay;
  wire locked;
  wire p_11_in;
  wire rxdone;
  wire rxk;
  wire s;
  wire s0;
  wire \s_reg[1][0] ;
  wire [0:0]\state_reg[1] ;
  wire stbo;
  wire sync_stb;
  wire trst;
  wire txdone__0;
  wire wen;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctr[63]_i_12 
       (.I0(D[2]),
        .I1(D[3]),
        .I2(D[0]),
        .I3(D[1]),
        .O(\ctr[63]_i_12_n_0 ));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_pdts_endpoint_wrapper_0_0_pdts_rx_phy phy
       (.clk(CLK),
        .d(\s_reg[1][0] ),
        .delay(delay),
        .k(rxk),
        .locked(locked),
        .q(D),
        .rst(trst),
        .stbo(stbo));
  design_1_pdts_endpoint_wrapper_0_0_pdts_rx_pkt pkt
       (.CLK(CLK),
        .E(E),
        .SR(SR),
        .SS(stbo),
        .\acmdw_rx[valid] (\acmdw_rx[valid] ),
        .\actr_i_reg[4] (\actr_i_reg[4] ),
        .addr(addr),
        .d(d),
        .k(rxk),
        .lock_reg(\ctr[63]_i_12_n_0 ),
        .locked(locked),
        .p_11_in(p_11_in),
        .q(D),
        .rxdone(rxdone),
        .s(s),
        .s0(s0),
        .\state_reg[1]_0 (\state_reg[1] ),
        .sync_stb(sync_stb),
        .trst(trst),
        .txdone__0(txdone__0),
        .wen(wen));
endmodule

(* ORIG_REF_NAME = "pdts_rx_phy" *) (* keep_hierarchy = "soft" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_rx_phy
   (clk,
    rst,
    d,
    delay,
    locked,
    q,
    k,
    stbo);
  input clk;
  input rst;
  (* mark_debug = "true" *) input d;
  input [3:0]delay;
  output locked;
  (* mark_debug = "true" *) output [7:0]q;
  (* mark_debug = "true" *) output k;
  output stbo;

  (* MARK_DEBUG *) wire c;
  wire c_inferred_i_2_n_0;
  wire c_inferred_i_3_n_0;
  (* MARK_DEBUG *) wire [1:0]cctr;
  wire \cctr[0]_i_1_n_0 ;
  wire \cctr[1]_i_1_n_0 ;
  wire \cctr[1]_i_2_n_0 ;
  (* MARK_DEBUG *) wire cerr;
  wire clk;
  (* MARK_DEBUG *) wire d;
  (* MARK_DEBUG *) wire dd;
  (* MARK_DEBUG *) wire dec_en;
  wire [3:0]delay;
  (* MARK_DEBUG *) wire derr;
  (* MARK_DEBUG *) wire [5:0]ectr;
  wire \ectr[0]_i_1_n_0 ;
  wire \ectr[1]_i_1_n_0 ;
  wire \ectr[2]_i_1_n_0 ;
  wire \ectr[3]_i_1_n_0 ;
  wire \ectr[4]_i_1_n_0 ;
  wire \ectr[5]_i_1_n_0 ;
  wire \ectr[5]_i_3_n_0 ;
  wire ectr_reg0;
  (* MARK_DEBUG *) wire eok;
  (* MARK_DEBUG *) wire k;
  (* MARK_DEBUG *) wire [5:0]lctr;
  wire \lctr[2]_i_1_n_0 ;
  wire \lctr[5]_i_1_n_0 ;
  (* MARK_DEBUG *) wire lock;
  wire [5:0]plusOp;
  (* MARK_DEBUG *) wire [7:0]q;
  wire rst;
  (* MARK_DEBUG *) wire [3:0]sctr;
  wire \sctr[0]_i_1_n_0 ;
  wire \sctr[1]_i_1_n_0 ;
  wire \sctr[2]_i_1_n_0 ;
  wire \sctr[3]_i_2_n_0 ;
  wire \sctr[3]_i_3_n_0 ;
  wire sctr_reg0;
  (* MARK_DEBUG *) wire stb;
  wire stbo;
  wire stbo0;
  (* MARK_DEBUG *) wire [9:0]w;

  assign locked = eok;
  (* DEL_RADIX = "4" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* WIDTH = "1" *) 
  design_1_pdts_endpoint_wrapper_0_0_pdts_del c_del
       (.a(delay),
        .clk(clk),
        .d(d),
        .q(dd));
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
  LUT4 #(
    .INIT(16'h84B4)) 
    \cctr[0]_i_1 
       (.I0(lock),
        .I1(c),
        .I2(cctr[0]),
        .I3(\cctr[1]_i_2_n_0 ),
        .O(\cctr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB040BF40)) 
    \cctr[1]_i_1 
       (.I0(lock),
        .I1(cctr[0]),
        .I2(c),
        .I3(cctr[1]),
        .I4(\cctr[1]_i_2_n_0 ),
        .O(\cctr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cctr[1]_i_2 
       (.I0(lctr[1]),
        .I1(lctr[0]),
        .I2(lctr[4]),
        .I3(lctr[5]),
        .I4(lctr[2]),
        .I5(lctr[3]),
        .O(\cctr[1]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \cctr_reg[0] 
       (.C(clk),
        .CE(stb),
        .D(\cctr[0]_i_1_n_0 ),
        .Q(cctr[0]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \cctr_reg[1] 
       (.C(clk),
        .CE(stb),
        .D(\cctr[1]_i_1_n_0 ),
        .Q(cctr[1]),
        .R(rst));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_pdts_endpoint_wrapper_0_0_pdts_dec8b10b dec
       (.cerr(cerr),
        .clk(clk),
        .d(w),
        .derr(derr),
        .en(dec_en),
        .k(k),
        .q(q),
        .rst(rst));
  LUT2 #(
    .INIT(4'h8)) 
    dec_en_inferred_i_1
       (.I0(stb),
        .I1(lock),
        .O(dec_en));
  LUT1 #(
    .INIT(2'h1)) 
    \ectr[0]_i_1 
       (.I0(ectr[0]),
        .O(\ectr[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ectr[1]_i_1 
       (.I0(ectr[0]),
        .I1(ectr[1]),
        .O(\ectr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \ectr[2]_i_1 
       (.I0(ectr[1]),
        .I1(ectr[0]),
        .I2(ectr[2]),
        .O(\ectr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \ectr[3]_i_1 
       (.I0(ectr[0]),
        .I1(ectr[1]),
        .I2(ectr[2]),
        .I3(ectr[3]),
        .O(\ectr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ectr[4]_i_1 
       (.I0(ectr[2]),
        .I1(ectr[1]),
        .I2(ectr[0]),
        .I3(ectr[3]),
        .I4(ectr[4]),
        .O(\ectr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \ectr[5]_i_1 
       (.I0(lock),
        .I1(rst),
        .I2(cerr),
        .I3(derr),
        .O(\ectr[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ectr[5]_i_2 
       (.I0(dec_en),
        .I1(eok),
        .O(ectr_reg0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ectr[5]_i_3 
       (.I0(ectr[3]),
        .I1(ectr[0]),
        .I2(ectr[1]),
        .I3(ectr[2]),
        .I4(ectr[4]),
        .I5(ectr[5]),
        .O(\ectr[5]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[0] 
       (.C(clk),
        .CE(ectr_reg0),
        .D(\ectr[0]_i_1_n_0 ),
        .Q(ectr[0]),
        .R(\ectr[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[1] 
       (.C(clk),
        .CE(ectr_reg0),
        .D(\ectr[1]_i_1_n_0 ),
        .Q(ectr[1]),
        .R(\ectr[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[2] 
       (.C(clk),
        .CE(ectr_reg0),
        .D(\ectr[2]_i_1_n_0 ),
        .Q(ectr[2]),
        .R(\ectr[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[3] 
       (.C(clk),
        .CE(ectr_reg0),
        .D(\ectr[3]_i_1_n_0 ),
        .Q(ectr[3]),
        .R(\ectr[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[4] 
       (.C(clk),
        .CE(ectr_reg0),
        .D(\ectr[4]_i_1_n_0 ),
        .Q(ectr[4]),
        .R(\ectr[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[5] 
       (.C(clk),
        .CE(ectr_reg0),
        .D(\ectr[5]_i_3_n_0 ),
        .Q(ectr[5]),
        .R(\ectr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    eok_inferred_i_1
       (.I0(ectr[1]),
        .I1(ectr[0]),
        .I2(ectr[4]),
        .I3(ectr[5]),
        .I4(ectr[2]),
        .I5(ectr[3]),
        .O(eok));
  LUT1 #(
    .INIT(2'h1)) 
    \lctr[0]_i_1 
       (.I0(lctr[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \lctr[1]_i_1 
       (.I0(lctr[0]),
        .I1(lctr[1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \lctr[2]_i_1 
       (.I0(lctr[1]),
        .I1(lctr[0]),
        .I2(lctr[2]),
        .O(\lctr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \lctr[3]_i_1 
       (.I0(lctr[0]),
        .I1(lctr[1]),
        .I2(lctr[2]),
        .I3(lctr[3]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lctr[4]_i_1 
       (.I0(lctr[2]),
        .I1(lctr[1]),
        .I2(lctr[0]),
        .I3(lctr[3]),
        .I4(lctr[4]),
        .O(plusOp[4]));
  LUT3 #(
    .INIT(8'hEA)) 
    \lctr[5]_i_1 
       (.I0(rst),
        .I1(c),
        .I2(stb),
        .O(\lctr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \lctr[5]_i_2 
       (.I0(lctr[3]),
        .I1(lctr[0]),
        .I2(lctr[1]),
        .I3(lctr[2]),
        .I4(lctr[4]),
        .I5(lctr[5]),
        .O(plusOp[5]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[0] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[0]),
        .Q(lctr[0]),
        .R(\lctr[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[1] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[1]),
        .Q(lctr[1]),
        .R(\lctr[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[2] 
       (.C(clk),
        .CE(stb),
        .D(\lctr[2]_i_1_n_0 ),
        .Q(lctr[2]),
        .R(\lctr[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[3] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[3]),
        .Q(lctr[3]),
        .R(\lctr[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[4] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[4]),
        .Q(lctr[4]),
        .R(\lctr[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[5] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[5]),
        .Q(lctr[5]),
        .R(\lctr[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    lock_inferred_i_1
       (.I0(cctr[0]),
        .I1(cctr[1]),
        .O(lock));
  LUT1 #(
    .INIT(2'h1)) 
    \sctr[0]_i_1 
       (.I0(sctr[0]),
        .O(\sctr[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sctr[1]_i_1 
       (.I0(sctr[0]),
        .I1(sctr[1]),
        .O(\sctr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \sctr[2]_i_1 
       (.I0(sctr[0]),
        .I1(sctr[1]),
        .I2(sctr[2]),
        .O(\sctr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \sctr[3]_i_1 
       (.I0(rst),
        .I1(c),
        .I2(lock),
        .I3(\sctr[3]_i_3_n_0 ),
        .I4(sctr[0]),
        .I5(sctr[3]),
        .O(sctr_reg0));
  LUT4 #(
    .INIT(16'h7F80)) 
    \sctr[3]_i_2 
       (.I0(sctr[1]),
        .I1(sctr[0]),
        .I2(sctr[2]),
        .I3(sctr[3]),
        .O(\sctr[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sctr[3]_i_3 
       (.I0(sctr[1]),
        .I1(sctr[2]),
        .O(\sctr[3]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \sctr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sctr[0]_i_1_n_0 ),
        .Q(sctr[0]),
        .R(sctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \sctr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sctr[1]_i_1_n_0 ),
        .Q(sctr[1]),
        .R(sctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \sctr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sctr[2]_i_1_n_0 ),
        .Q(sctr[2]),
        .R(sctr_reg0));
  (* KEEP = "yes" *) 
  FDRE \sctr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\sctr[3]_i_2_n_0 ),
        .Q(sctr[3]),
        .R(sctr_reg0));
  LUT4 #(
    .INIT(16'h1000)) 
    stb_inferred_i_1
       (.I0(sctr[2]),
        .I1(sctr[1]),
        .I2(sctr[3]),
        .I3(sctr[0]),
        .O(stb));
  LUT2 #(
    .INIT(4'h8)) 
    stbo_i_1
       (.I0(dec_en),
        .I1(eok),
        .O(stbo0));
  FDRE stbo_reg
       (.C(clk),
        .CE(1'b1),
        .D(stbo0),
        .Q(stbo),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(w[1]),
        .Q(w[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(w[2]),
        .Q(w[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(w[3]),
        .Q(w[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(w[4]),
        .Q(w[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(w[5]),
        .Q(w[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(w[6]),
        .Q(w[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(w[7]),
        .Q(w[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(w[8]),
        .Q(w[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(w[9]),
        .Q(w[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \w_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(dd),
        .Q(w[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_rx_pkt" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_rx_pkt
   (d,
    wen,
    E,
    \state_reg[1]_0 ,
    s0,
    p_11_in,
    s,
    sync_stb,
    rxdone,
    q,
    CLK,
    \acmdw_rx[valid] ,
    SS,
    \actr_i_reg[4] ,
    locked,
    txdone__0,
    trst,
    lock_reg,
    k,
    addr,
    SR);
  output [8:0]d;
  output wen;
  output [0:0]E;
  output [0:0]\state_reg[1]_0 ;
  output s0;
  output p_11_in;
  output s;
  output sync_stb;
  output rxdone;
  input [7:0]q;
  input CLK;
  input \acmdw_rx[valid] ;
  input [0:0]SS;
  input \actr_i_reg[4] ;
  input locked;
  input txdone__0;
  input trst;
  input lock_reg;
  input k;
  input [15:0]addr;
  input [0:0]SR;

  wire CLK;
  wire [0:0]E;
  wire [0:0]SR;
  wire [0:0]SS;
  wire \a_bcast[0]_i_1_n_0 ;
  wire \a_bcast[0]_i_2_n_0 ;
  wire \a_bcast[1]_i_1_n_0 ;
  wire \a_bcast[1]_i_2_n_0 ;
  wire \a_bcast[1]_i_4_n_0 ;
  wire \a_bcast_reg_n_0_[0] ;
  wire \a_bcast_reg_n_0_[1] ;
  wire a_match;
  wire a_match_d;
  wire a_ucast1__2;
  wire \a_ucast[0]_i_1_n_0 ;
  wire \a_ucast[0]_i_2_n_0 ;
  wire \a_ucast[1]_i_10_n_0 ;
  wire \a_ucast[1]_i_11_n_0 ;
  wire \a_ucast[1]_i_12_n_0 ;
  wire \a_ucast[1]_i_13_n_0 ;
  wire \a_ucast[1]_i_1_n_0 ;
  wire \a_ucast[1]_i_2_n_0 ;
  wire \a_ucast[1]_i_3_n_0 ;
  wire \a_ucast[1]_i_4_n_0 ;
  wire \a_ucast[1]_i_5_n_0 ;
  wire \a_ucast[1]_i_6_n_0 ;
  wire \a_ucast[1]_i_7_n_0 ;
  wire \a_ucast[1]_i_8_n_0 ;
  wire \a_ucast[1]_i_9_n_0 ;
  wire \a_ucast_reg_n_0_[0] ;
  wire \a_ucast_reg_n_0_[1] ;
  wire \acmd_rx_w[valid] ;
  wire \acmdw_rx[valid] ;
  wire \actr_i_reg[4] ;
  wire [4:0]actr_reg;
  wire ada0;
  wire \adb_reg[0]_srl2_n_0 ;
  wire \adb_reg[1]_srl2_n_0 ;
  wire \adb_reg[2]_srl2_n_0 ;
  wire \adb_reg[3]_srl2_n_0 ;
  wire \adb_reg[4]_srl2_n_0 ;
  wire \adb_reg[5]_srl2_n_0 ;
  wire \adb_reg[6]_srl2_n_0 ;
  wire \adb_reg[7]_srl2_n_0 ;
  wire [15:0]addr;
  wire avalid0__1;
  wire cksum_n_0;
  wire cksum_n_8;
  wire [8:0]d;
  wire issue;
  wire k;
  wire ka;
  wire ks;
  wire lock_reg;
  wire locked;
  wire p_11_in;
  wire p_12_in;
  wire pend;
  wire pend0;
  wire pend3__3;
  wire [4:0]plusOp__0;
  wire [4:0]plusOp__1;
  wire [7:0]q;
  wire ram_reg_0_31_8_8_i_2_n_0;
  wire ram_reg_0_31_8_8_i_6_n_0;
  wire rxdone;
  wire s;
  wire s0;
  wire [4:0]sctr_reg;
  wire ss;
  wire [1:0]state;
  wire state0__0;
  wire state35_out;
  wire state40_in;
  wire state5;
  wire state6__3;
  wire \state[1]_i_6_n_0 ;
  wire \state[1]_i_8_n_0 ;
  wire [0:0]\state_reg[1]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire sync_stb;
  wire sync_stb_INST_0_i_4_n_0;
  wire trst;
  wire [3:0]ts;
  wire ts0;
  wire txdone__0;
  wire \vctr[0]_i_1_n_0 ;
  wire \vctr[1]_i_1_n_0 ;
  wire \vctr[2]_i_1_n_0 ;
  wire \vctr[3]_i_1_n_0 ;
  wire \vctr_reg_n_0_[0] ;
  wire \vctr_reg_n_0_[1] ;
  wire \vctr_reg_n_0_[2] ;
  wire \vctr_reg_n_0_[3] ;
  wire wen;

  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \a_bcast[0]_i_1 
       (.I0(q[7]),
        .I1(\a_bcast[0]_i_2_n_0 ),
        .I2(q[6]),
        .I3(a_ucast1__2),
        .I4(\a_bcast_reg_n_0_[0] ),
        .O(\a_bcast[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \a_bcast[0]_i_2 
       (.I0(\a_ucast[0]_i_2_n_0 ),
        .I1(q[0]),
        .I2(q[2]),
        .I3(q[1]),
        .I4(\a_bcast[1]_i_4_n_0 ),
        .I5(cksum_n_8),
        .O(\a_bcast[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \a_bcast[1]_i_1 
       (.I0(q[7]),
        .I1(\a_bcast[1]_i_2_n_0 ),
        .I2(q[6]),
        .I3(a_ucast1__2),
        .I4(\a_bcast_reg_n_0_[1] ),
        .O(\a_bcast[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \a_bcast[1]_i_2 
       (.I0(\a_ucast[1]_i_2_n_0 ),
        .I1(q[0]),
        .I2(q[2]),
        .I3(q[1]),
        .I4(\a_bcast[1]_i_4_n_0 ),
        .I5(cksum_n_8),
        .O(\a_bcast[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \a_bcast[1]_i_3 
       (.I0(actr_reg[1]),
        .I1(actr_reg[2]),
        .I2(actr_reg[4]),
        .I3(actr_reg[3]),
        .I4(p_12_in),
        .O(a_ucast1__2));
  LUT3 #(
    .INIT(8'hD5)) 
    \a_bcast[1]_i_4 
       (.I0(q[5]),
        .I1(q[4]),
        .I2(q[3]),
        .O(\a_bcast[1]_i_4_n_0 ));
  FDRE \a_bcast_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\a_bcast[0]_i_1_n_0 ),
        .Q(\a_bcast_reg_n_0_[0] ),
        .R(ka));
  FDRE \a_bcast_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\a_bcast[1]_i_1_n_0 ),
        .Q(\a_bcast_reg_n_0_[1] ),
        .R(ka));
  LUT3 #(
    .INIT(8'h20)) 
    a_match_d_i_1
       (.I0(p_12_in),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(ada0));
  LUT4 #(
    .INIT(16'hF888)) 
    a_match_d_i_2
       (.I0(\a_ucast_reg_n_0_[1] ),
        .I1(\a_ucast_reg_n_0_[0] ),
        .I2(\a_bcast_reg_n_0_[1] ),
        .I3(\a_bcast_reg_n_0_[0] ),
        .O(a_match));
  FDRE a_match_d_reg
       (.C(CLK),
        .CE(ada0),
        .D(a_match),
        .Q(a_match_d),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \a_ucast[0]_i_1 
       (.I0(\a_ucast[0]_i_2_n_0 ),
        .I1(\a_ucast[1]_i_3_n_0 ),
        .I2(\a_ucast[1]_i_4_n_0 ),
        .I3(a_ucast1__2),
        .I4(\a_ucast_reg_n_0_[0] ),
        .O(\a_ucast[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \a_ucast[0]_i_2 
       (.I0(actr_reg[3]),
        .I1(actr_reg[4]),
        .I2(actr_reg[1]),
        .I3(actr_reg[2]),
        .I4(actr_reg[0]),
        .O(\a_ucast[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \a_ucast[1]_i_1 
       (.I0(\a_ucast[1]_i_2_n_0 ),
        .I1(\a_ucast[1]_i_3_n_0 ),
        .I2(\a_ucast[1]_i_4_n_0 ),
        .I3(a_ucast1__2),
        .I4(\a_ucast_reg_n_0_[1] ),
        .O(\a_ucast[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \a_ucast[1]_i_10 
       (.I0(q[2]),
        .I1(q[3]),
        .I2(q[0]),
        .I3(q[1]),
        .O(\a_ucast[1]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h4450BBAF)) 
    \a_ucast[1]_i_11 
       (.I0(actr_reg[1]),
        .I1(addr[15]),
        .I2(addr[7]),
        .I3(actr_reg[0]),
        .I4(q[7]),
        .O(\a_ucast[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h4450BBAF)) 
    \a_ucast[1]_i_12 
       (.I0(actr_reg[1]),
        .I1(addr[13]),
        .I2(addr[5]),
        .I3(actr_reg[0]),
        .I4(q[5]),
        .O(\a_ucast[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h4450BBAF)) 
    \a_ucast[1]_i_13 
       (.I0(actr_reg[1]),
        .I1(addr[10]),
        .I2(addr[2]),
        .I3(actr_reg[0]),
        .I4(q[2]),
        .O(\a_ucast[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \a_ucast[1]_i_2 
       (.I0(actr_reg[0]),
        .I1(actr_reg[3]),
        .I2(actr_reg[4]),
        .I3(actr_reg[1]),
        .I4(actr_reg[2]),
        .O(\a_ucast[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \a_ucast[1]_i_3 
       (.I0(\a_ucast[1]_i_5_n_0 ),
        .I1(\a_ucast[1]_i_6_n_0 ),
        .I2(\a_ucast[1]_i_7_n_0 ),
        .I3(\a_ucast[1]_i_8_n_0 ),
        .I4(\a_ucast[1]_i_9_n_0 ),
        .O(\a_ucast[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \a_ucast[1]_i_4 
       (.I0(q[5]),
        .I1(q[4]),
        .I2(q[6]),
        .I3(q[7]),
        .I4(\a_ucast[1]_i_10_n_0 ),
        .O(\a_ucast[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA569AFFFFFFFF)) 
    \a_ucast[1]_i_5 
       (.I0(q[6]),
        .I1(actr_reg[0]),
        .I2(addr[6]),
        .I3(addr[14]),
        .I4(actr_reg[1]),
        .I5(\a_ucast[1]_i_11_n_0 ),
        .O(\a_ucast[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h4450BBAF)) 
    \a_ucast[1]_i_6 
       (.I0(actr_reg[1]),
        .I1(addr[11]),
        .I2(addr[3]),
        .I3(actr_reg[0]),
        .I4(q[3]),
        .O(\a_ucast[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555A96500000000)) 
    \a_ucast[1]_i_7 
       (.I0(q[4]),
        .I1(actr_reg[0]),
        .I2(addr[4]),
        .I3(addr[12]),
        .I4(actr_reg[1]),
        .I5(\a_ucast[1]_i_12_n_0 ),
        .O(\a_ucast[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h4450BBAF)) 
    \a_ucast[1]_i_8 
       (.I0(actr_reg[1]),
        .I1(addr[8]),
        .I2(addr[0]),
        .I3(actr_reg[0]),
        .I4(q[0]),
        .O(\a_ucast[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555A96500000000)) 
    \a_ucast[1]_i_9 
       (.I0(q[1]),
        .I1(actr_reg[0]),
        .I2(addr[1]),
        .I3(addr[9]),
        .I4(actr_reg[1]),
        .I5(\a_ucast[1]_i_13_n_0 ),
        .O(\a_ucast[1]_i_9_n_0 ));
  FDRE \a_ucast_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\a_ucast[0]_i_1_n_0 ),
        .Q(\a_ucast_reg_n_0_[0] ),
        .R(ka));
  FDRE \a_ucast_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\a_ucast[1]_i_1_n_0 ),
        .Q(\a_ucast_reg_n_0_[1] ),
        .R(ka));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \actr[0]_i_1 
       (.I0(actr_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \actr[1]_i_1 
       (.I0(actr_reg[0]),
        .I1(actr_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \actr[2]_i_1 
       (.I0(actr_reg[0]),
        .I1(actr_reg[1]),
        .I2(actr_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \actr[3]_i_1 
       (.I0(actr_reg[1]),
        .I1(actr_reg[0]),
        .I2(actr_reg[2]),
        .I3(actr_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \actr[4]_i_1 
       (.I0(actr_reg[2]),
        .I1(actr_reg[0]),
        .I2(actr_reg[1]),
        .I3(actr_reg[3]),
        .I4(actr_reg[4]),
        .O(plusOp__0[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \actr_i[4]_i_1 
       (.I0(SS),
        .I1(\actr_i_reg[4] ),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[0] 
       (.C(CLK),
        .CE(p_12_in),
        .D(plusOp__0[0]),
        .Q(actr_reg[0]),
        .R(ka));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[1] 
       (.C(CLK),
        .CE(p_12_in),
        .D(plusOp__0[1]),
        .Q(actr_reg[1]),
        .R(ka));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[2] 
       (.C(CLK),
        .CE(p_12_in),
        .D(plusOp__0[2]),
        .Q(actr_reg[2]),
        .R(ka));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[3] 
       (.C(CLK),
        .CE(p_12_in),
        .D(plusOp__0[3]),
        .Q(actr_reg[3]),
        .R(ka));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[4] 
       (.C(CLK),
        .CE(p_12_in),
        .D(plusOp__0[4]),
        .Q(actr_reg[4]),
        .R(ka));
  (* srl_bus_name = "\inst/ts_ep/ep/rx/pkt/adb_reg " *) 
  (* srl_name = "\inst/ts_ep/ep/rx/pkt/adb_reg[0]_srl2 " *) 
  SRL16E \adb_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ada0),
        .CLK(CLK),
        .D(q[0]),
        .Q(\adb_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "\inst/ts_ep/ep/rx/pkt/adb_reg " *) 
  (* srl_name = "\inst/ts_ep/ep/rx/pkt/adb_reg[1]_srl2 " *) 
  SRL16E \adb_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ada0),
        .CLK(CLK),
        .D(q[1]),
        .Q(\adb_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "\inst/ts_ep/ep/rx/pkt/adb_reg " *) 
  (* srl_name = "\inst/ts_ep/ep/rx/pkt/adb_reg[2]_srl2 " *) 
  SRL16E \adb_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ada0),
        .CLK(CLK),
        .D(q[2]),
        .Q(\adb_reg[2]_srl2_n_0 ));
  (* srl_bus_name = "\inst/ts_ep/ep/rx/pkt/adb_reg " *) 
  (* srl_name = "\inst/ts_ep/ep/rx/pkt/adb_reg[3]_srl2 " *) 
  SRL16E \adb_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ada0),
        .CLK(CLK),
        .D(q[3]),
        .Q(\adb_reg[3]_srl2_n_0 ));
  (* srl_bus_name = "\inst/ts_ep/ep/rx/pkt/adb_reg " *) 
  (* srl_name = "\inst/ts_ep/ep/rx/pkt/adb_reg[4]_srl2 " *) 
  SRL16E \adb_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ada0),
        .CLK(CLK),
        .D(q[4]),
        .Q(\adb_reg[4]_srl2_n_0 ));
  (* srl_bus_name = "\inst/ts_ep/ep/rx/pkt/adb_reg " *) 
  (* srl_name = "\inst/ts_ep/ep/rx/pkt/adb_reg[5]_srl2 " *) 
  SRL16E \adb_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ada0),
        .CLK(CLK),
        .D(q[5]),
        .Q(\adb_reg[5]_srl2_n_0 ));
  (* srl_bus_name = "\inst/ts_ep/ep/rx/pkt/adb_reg " *) 
  (* srl_name = "\inst/ts_ep/ep/rx/pkt/adb_reg[6]_srl2 " *) 
  SRL16E \adb_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ada0),
        .CLK(CLK),
        .D(q[6]),
        .Q(\adb_reg[6]_srl2_n_0 ));
  (* srl_bus_name = "\inst/ts_ep/ep/rx/pkt/adb_reg " *) 
  (* srl_name = "\inst/ts_ep/ep/rx/pkt/adb_reg[7]_srl2 " *) 
  SRL16E \adb_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(ada0),
        .CLK(CLK),
        .D(q[7]),
        .Q(\adb_reg[7]_srl2_n_0 ));
  FDRE \adc_reg[0] 
       (.C(CLK),
        .CE(ada0),
        .D(\adb_reg[0]_srl2_n_0 ),
        .Q(d[0]),
        .R(1'b0));
  FDRE \adc_reg[1] 
       (.C(CLK),
        .CE(ada0),
        .D(\adb_reg[1]_srl2_n_0 ),
        .Q(d[1]),
        .R(1'b0));
  FDRE \adc_reg[2] 
       (.C(CLK),
        .CE(ada0),
        .D(\adb_reg[2]_srl2_n_0 ),
        .Q(d[2]),
        .R(1'b0));
  FDRE \adc_reg[3] 
       (.C(CLK),
        .CE(ada0),
        .D(\adb_reg[3]_srl2_n_0 ),
        .Q(d[3]),
        .R(1'b0));
  FDRE \adc_reg[4] 
       (.C(CLK),
        .CE(ada0),
        .D(\adb_reg[4]_srl2_n_0 ),
        .Q(d[4]),
        .R(1'b0));
  FDRE \adc_reg[5] 
       (.C(CLK),
        .CE(ada0),
        .D(\adb_reg[5]_srl2_n_0 ),
        .Q(d[5]),
        .R(1'b0));
  FDRE \adc_reg[6] 
       (.C(CLK),
        .CE(ada0),
        .D(\adb_reg[6]_srl2_n_0 ),
        .Q(d[6]),
        .R(1'b0));
  FDRE \adc_reg[7] 
       (.C(CLK),
        .CE(ada0),
        .D(\adb_reg[7]_srl2_n_0 ),
        .Q(d[7]),
        .R(1'b0));
  design_1_pdts_endpoint_wrapper_0_0_pdts_cksum_1 cksum
       (.CLK(CLK),
        .D(state),
        .E(cksum_n_0),
        .Q({\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .SS(SS),
        .a_match(a_match),
        .\acmd_rx_w[valid] (\acmd_rx_w[valid] ),
        .\acmdw_rx[valid] (\acmdw_rx[valid] ),
        .d(d[8]),
        .k(k),
        .ka(ka),
        .ks(ks),
        .last_reg(ram_reg_0_31_8_8_i_2_n_0),
        .p_11_in(p_11_in),
        .p_12_in(p_12_in),
        .q(q),
        .\q_reg[4] (cksum_n_8),
        .s0(s0),
        .s_reg(ram_reg_0_31_8_8_i_6_n_0),
        .s_reg_0(\state[1]_i_6_n_0 ),
        .state0__0(state0__0),
        .state35_out(state35_out),
        .state40_in(state40_in),
        .state5(state5),
        .trst(trst),
        .txdone__0(txdone__0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \ctr[63]_i_3 
       (.I0(lock_reg),
        .I1(q[7]),
        .I2(q[6]),
        .I3(q[4]),
        .I4(q[5]),
        .I5(sync_stb),
        .O(s));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \da[2]_i_1 
       (.I0(locked),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\state_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    err_i_i_3__0
       (.I0(\acmd_rx_w[valid] ),
        .I1(\acmdw_rx[valid] ),
        .I2(p_11_in),
        .O(rxdone));
  LUT6 #(
    .INIT(64'h0000000000F80000)) 
    pend_i_1
       (.I0(pend3__3),
        .I1(ss),
        .I2(pend),
        .I3(trst),
        .I4(locked),
        .I5(issue),
        .O(pend0));
  FDRE pend_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pend0),
        .Q(pend),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    ram_reg_0_31_0_0_i_1__0
       (.I0(a_match_d),
        .I1(a_match),
        .I2(p_12_in),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\acmdw_rx[valid] ),
        .O(wen));
  LUT6 #(
    .INIT(64'h00008888FFF00000)) 
    ram_reg_0_31_8_8_i_2
       (.I0(\acmdw_rx[valid] ),
        .I1(avalid0__1),
        .I2(ka),
        .I3(ks),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(ram_reg_0_31_8_8_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    ram_reg_0_31_8_8_i_3
       (.I0(p_12_in),
        .I1(actr_reg[2]),
        .I2(actr_reg[1]),
        .I3(actr_reg[4]),
        .I4(actr_reg[3]),
        .I5(actr_reg[0]),
        .O(state5));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    ram_reg_0_31_8_8_i_4
       (.I0(sctr_reg[3]),
        .I1(sctr_reg[2]),
        .I2(sctr_reg[1]),
        .I3(sctr_reg[0]),
        .I4(sctr_reg[4]),
        .O(state40_in));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h40)) 
    ram_reg_0_31_8_8_i_6
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(ka),
        .O(ram_reg_0_31_8_8_i_6_n_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    ram_reg_0_31_8_8_i_7
       (.I0(ks),
        .I1(SS),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(a_match),
        .I5(a_match_d),
        .O(avalid0__1));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    s_i_2
       (.I0(a_match),
        .I1(ka),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(p_11_in));
  LUT5 #(
    .INIT(32'h40000000)) 
    s_i_3
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(p_12_in),
        .I3(a_match),
        .I4(a_match_d),
        .O(\acmd_rx_w[valid] ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sctr[0]_i_1 
       (.I0(sctr_reg[0]),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sctr[1]_i_1 
       (.I0(sctr_reg[0]),
        .I1(sctr_reg[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sctr[2]_i_1 
       (.I0(sctr_reg[0]),
        .I1(sctr_reg[1]),
        .I2(sctr_reg[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sctr[3]_i_1 
       (.I0(sctr_reg[1]),
        .I1(sctr_reg[0]),
        .I2(sctr_reg[2]),
        .I3(sctr_reg[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sctr[4]_i_2 
       (.I0(sctr_reg[2]),
        .I1(sctr_reg[0]),
        .I2(sctr_reg[1]),
        .I3(sctr_reg[3]),
        .I4(sctr_reg[4]),
        .O(plusOp__1[4]));
  FDRE #(
    .INIT(1'b0)) 
    \sctr_reg[0] 
       (.C(CLK),
        .CE(ss),
        .D(plusOp__1[0]),
        .Q(sctr_reg[0]),
        .R(ks));
  FDRE #(
    .INIT(1'b0)) 
    \sctr_reg[1] 
       (.C(CLK),
        .CE(ss),
        .D(plusOp__1[1]),
        .Q(sctr_reg[1]),
        .R(ks));
  FDRE #(
    .INIT(1'b0)) 
    \sctr_reg[2] 
       (.C(CLK),
        .CE(ss),
        .D(plusOp__1[2]),
        .Q(sctr_reg[2]),
        .R(ks));
  FDRE #(
    .INIT(1'b0)) 
    \sctr_reg[3] 
       (.C(CLK),
        .CE(ss),
        .D(plusOp__1[3]),
        .Q(sctr_reg[3]),
        .R(ks));
  FDRE #(
    .INIT(1'b0)) 
    \sctr_reg[4] 
       (.C(CLK),
        .CE(ss),
        .D(plusOp__1[4]),
        .Q(sctr_reg[4]),
        .R(ks));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \state[1]_i_5 
       (.I0(sctr_reg[2]),
        .I1(sctr_reg[1]),
        .I2(sctr_reg[0]),
        .I3(sctr_reg[4]),
        .I4(sctr_reg[3]),
        .I5(SS),
        .O(state0__0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \state[1]_i_6 
       (.I0(sctr_reg[4]),
        .I1(\state[1]_i_8_n_0 ),
        .I2(sctr_reg[2]),
        .I3(sctr_reg[3]),
        .I4(state6__3),
        .I5(p_12_in),
        .O(\state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \state[1]_i_7 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(ks),
        .I3(ka),
        .O(state35_out));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_8 
       (.I0(sctr_reg[1]),
        .I1(sctr_reg[0]),
        .O(\state[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \state[1]_i_9 
       (.I0(actr_reg[0]),
        .I1(actr_reg[3]),
        .I2(actr_reg[4]),
        .I3(actr_reg[1]),
        .I4(actr_reg[2]),
        .O(state6__3));
  FDRE \state_reg[0] 
       (.C(CLK),
        .CE(cksum_n_0),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE \state_reg[1] 
       (.C(CLK),
        .CE(cksum_n_0),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
  LUT4 #(
    .INIT(16'hF800)) 
    sync_stb_INST_0
       (.I0(pend3__3),
        .I1(ss),
        .I2(pend),
        .I3(issue),
        .O(sync_stb));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    sync_stb_INST_0_i_1
       (.I0(sctr_reg[3]),
        .I1(sctr_reg[4]),
        .I2(sctr_reg[0]),
        .I3(sctr_reg[1]),
        .I4(sctr_reg[2]),
        .O(pend3__3));
  LUT4 #(
    .INIT(16'hFF08)) 
    sync_stb_INST_0_i_2
       (.I0(SS),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(ks),
        .O(ss));
  LUT3 #(
    .INIT(8'h90)) 
    sync_stb_INST_0_i_3
       (.I0(\vctr_reg_n_0_[3] ),
        .I1(ts[3]),
        .I2(sync_stb_INST_0_i_4_n_0),
        .O(issue));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sync_stb_INST_0_i_4
       (.I0(\vctr_reg_n_0_[0] ),
        .I1(ts[0]),
        .I2(ts[2]),
        .I3(\vctr_reg_n_0_[2] ),
        .I4(ts[1]),
        .I5(\vctr_reg_n_0_[1] ),
        .O(sync_stb_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \ts[3]_i_1 
       (.I0(sctr_reg[2]),
        .I1(sctr_reg[4]),
        .I2(sctr_reg[0]),
        .I3(sctr_reg[1]),
        .I4(sctr_reg[3]),
        .I5(ss),
        .O(ts0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_reg[0] 
       (.C(CLK),
        .CE(ts0),
        .D(q[0]),
        .Q(ts[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_reg[1] 
       (.C(CLK),
        .CE(ts0),
        .D(q[1]),
        .Q(ts[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_reg[2] 
       (.C(CLK),
        .CE(ts0),
        .D(q[2]),
        .Q(ts[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ts_reg[3] 
       (.C(CLK),
        .CE(ts0),
        .D(q[3]),
        .Q(ts[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \vctr[0]_i_1 
       (.I0(\vctr_reg_n_0_[0] ),
        .O(\vctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \vctr[1]_i_1 
       (.I0(\vctr_reg_n_0_[2] ),
        .I1(\vctr_reg_n_0_[1] ),
        .I2(\vctr_reg_n_0_[0] ),
        .I3(\vctr_reg_n_0_[3] ),
        .O(\vctr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \vctr[2]_i_1 
       (.I0(\vctr_reg_n_0_[2] ),
        .I1(\vctr_reg_n_0_[1] ),
        .I2(\vctr_reg_n_0_[0] ),
        .O(\vctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \vctr[3]_i_1 
       (.I0(\vctr_reg_n_0_[2] ),
        .I1(\vctr_reg_n_0_[1] ),
        .I2(\vctr_reg_n_0_[0] ),
        .I3(\vctr_reg_n_0_[3] ),
        .O(\vctr[3]_i_1_n_0 ));
  FDSE \vctr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\vctr[0]_i_1_n_0 ),
        .Q(\vctr_reg_n_0_[0] ),
        .S(SS));
  FDRE \vctr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\vctr[1]_i_1_n_0 ),
        .Q(\vctr_reg_n_0_[1] ),
        .R(SS));
  FDRE \vctr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\vctr[2]_i_1_n_0 ),
        .Q(\vctr_reg_n_0_[2] ),
        .R(SS));
  FDRE \vctr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\vctr[3]_i_1_n_0 ),
        .Q(\vctr_reg_n_0_[3] ),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_synchro
   (out,
    rsto,
    D,
    CLK,
    sclk);
  output [4:0]out;
  input rsto;
  input [3:0]D;
  input CLK;
  input sclk;

  wire CLK;
  wire [3:0]D;
  wire [4:0]da;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire [4:0]db;
  (* async_reg = "yes" *) wire [4:0]out;
  wire [0:0]p_0_out;
  wire rsto;
  wire sclk;

  LUT1 #(
    .INIT(2'h1)) 
    \da[0]_i_1 
       (.I0(rsto),
        .O(p_0_out));
  FDRE \da_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out),
        .Q(da[0]),
        .R(1'b0));
  FDRE \da_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(da[1]),
        .R(1'b0));
  FDRE \da_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(da[2]),
        .R(1'b0));
  FDRE \da_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(da[3]),
        .R(1'b0));
  FDRE \da_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(da[4]),
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
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[4] 
       (.C(sclk),
        .CE(1'b1),
        .D(da[4]),
        .Q(db[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[0]),
        .Q(out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[1]),
        .Q(out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[2]),
        .Q(out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[3] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[3]),
        .Q(out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[4] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[4]),
        .Q(out[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0
   (D,
    \da_reg[1]_0 ,
    CLK,
    sclk);
  output [1:0]D;
  input [1:0]\da_reg[1]_0 ;
  input CLK;
  input sclk;

  wire CLK;
  (* async_reg = "yes" *) wire [1:0]D;
  wire [1:0]da;
  wire [1:0]\da_reg[1]_0 ;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire [1:0]db;
  wire sclk;

  FDRE \da_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\da_reg[1]_0 [0]),
        .Q(da[0]),
        .R(1'b0));
  FDRE \da_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\da_reg[1]_0 [1]),
        .Q(da[1]),
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
  FDRE \q_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[0]),
        .Q(D[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[1]),
        .Q(D[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0_0
   (Q,
    D,
    dx12_in,
    \dx_reg[1] ,
    \dx_reg[1]_0 ,
    \dx_reg[1]_1 ,
    \dx_reg[1]_2 ,
    \da_reg[1]_0 ,
    sclk,
    CLK);
  output [1:0]Q;
  output [1:0]D;
  output [1:0]dx12_in;
  input [1:0]\dx_reg[1] ;
  input [1:0]\dx_reg[1]_0 ;
  input [1:0]\dx_reg[1]_1 ;
  input [1:0]\dx_reg[1]_2 ;
  input [1:0]\da_reg[1]_0 ;
  input sclk;
  input CLK;

  wire CLK;
  (* async_reg = "yes" *) wire [1:0]D;
  wire [1:0]da;
  wire [1:0]\da_reg[1]_0 ;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire [1:0]db;
  wire [1:0]dx12_in;
  wire [1:0]\dx_reg[1] ;
  wire [1:0]\dx_reg[1]_0 ;
  wire [1:0]\dx_reg[1]_1 ;
  wire [1:0]\dx_reg[1]_2 ;
  wire sclk;

  assign Q[1:0] = da;
  FDRE \da_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(\da_reg[1]_0 [0]),
        .Q(da[0]),
        .R(1'b0));
  FDRE \da_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(\da_reg[1]_0 [1]),
        .Q(da[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(da[0]),
        .Q(db[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(da[1]),
        .Q(db[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \dx[0]_i_1 
       (.I0(D[0]),
        .I1(\dx_reg[1] [0]),
        .I2(\dx_reg[1]_0 [0]),
        .I3(\dx_reg[1]_1 [0]),
        .I4(\dx_reg[1]_2 [0]),
        .O(dx12_in[0]));
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \dx[1]_i_1 
       (.I0(D[1]),
        .I1(\dx_reg[1] [1]),
        .I2(\dx_reg[1]_0 [1]),
        .I3(\dx_reg[1]_1 [1]),
        .I4(\dx_reg[1]_2 [1]),
        .O(dx12_in[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(db[0]),
        .Q(D[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(db[1]),
        .Q(D[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized1
   (out,
    E,
    Q,
    CLK,
    sclk,
    td);
  output out;
  output [0:0]E;
  input [0:0]Q;
  input CLK;
  input sclk;
  input td;

  wire CLK;
  wire [0:0]E;
  wire [0:0]Q;
  wire da;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire db;
  (* async_reg = "yes" *) wire out;
  wire sclk;
  wire td;

  LUT2 #(
    .INIT(4'h2)) 
    \cctr[15]_i_2 
       (.I0(out),
        .I1(td),
        .O(E));
  FDRE \da_reg[0] 
       (.C(CLK),
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

(* N = "3" *) (* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized2
   (clk,
    clks,
    d,
    q);
  input clk;
  input clks;
  input [2:0]d;
  (* async_reg = "yes" *) output [2:0]q;

  wire clk;
  wire clks;
  wire [2:0]d;
  wire [2:0]da;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire [2:0]db;
  (* async_reg = "yes" *) wire [2:0]q;

  FDRE \da_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(d[0]),
        .Q(da[0]),
        .R(1'b0));
  FDRE \da_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(d[1]),
        .Q(da[1]),
        .R(1'b0));
  FDRE \da_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(d[2]),
        .Q(da[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[0] 
       (.C(clks),
        .CE(1'b1),
        .D(da[0]),
        .Q(db[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[1] 
       (.C(clks),
        .CE(1'b1),
        .D(da[1]),
        .Q(db[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[2] 
       (.C(clks),
        .CE(1'b1),
        .D(da[2]),
        .Q(db[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[0] 
       (.C(clks),
        .CE(1'b1),
        .D(db[0]),
        .Q(q[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[1] 
       (.C(clks),
        .CE(1'b1),
        .D(db[1]),
        .Q(q[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[2] 
       (.C(clks),
        .CE(1'b1),
        .D(db[2]),
        .Q(q[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro_pulse" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_synchro_pulse
   (in0,
    reset_i,
    D,
    rsto,
    CLK,
    sclk);
  output in0;
  output reset_i;
  input [1:0]D;
  input rsto;
  input CLK;
  input sclk;

  wire CLK;
  wire [1:0]D;
  wire [1:0]dd;
  wire [1:0]dx;
  wire [1:0]dx12_in;
  wire in0;
  wire [1:0]qf;
  wire [1:0]qfd;
  wire [1:0]qs;
  wire [1:0]qsd;
  wire reset_i;
  wire rsto;
  wire sclk;

  FDRE \dd_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(dd[0]),
        .R(1'b0));
  FDRE \dd_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(dd[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dx_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(dx12_in[0]),
        .Q(dx[0]),
        .R(rsto));
  FDRE #(
    .INIT(1'b0)) 
    \dx_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(dx12_in[1]),
        .Q(dx[1]),
        .R(rsto));
  FDRE \qfd_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(qf[0]),
        .Q(qfd[0]),
        .R(1'b0));
  FDRE \qfd_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(qf[1]),
        .Q(qfd[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    reset_i_inferred_i_1
       (.I0(qs[1]),
        .I1(qsd[1]),
        .O(reset_i));
  LUT2 #(
    .INIT(4'h2)) 
    resync_i_inferred_i_1
       (.I0(qs[0]),
        .I1(qsd[0]),
        .O(in0));
  design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0 s1
       (.CLK(CLK),
        .D(qs),
        .\da_reg[1]_0 (dx),
        .sclk(sclk));
  design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0_0 s2
       (.CLK(CLK),
        .D(qf),
        .Q(qsd),
        .\da_reg[1]_0 (qs),
        .dx12_in(dx12_in),
        .\dx_reg[1] (qfd),
        .\dx_reg[1]_0 (dx),
        .\dx_reg[1]_1 (dd),
        .\dx_reg[1]_2 (D),
        .sclk(sclk));
endmodule

(* ORIG_REF_NAME = "pdts_tx" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_tx
   (sel,
    smode_reg,
    txdone__0,
    \acmdr[rdy] ,
    ren__0,
    Q,
    trst,
    CLK,
    stbo,
    resync,
    locked,
    rsto,
    q,
    sync_stb,
    \acmd_tx_w[valid] ,
    \p_reg[0] ,
    E,
    \sd_reg[7] );
  output sel;
  output smode_reg;
  output txdone__0;
  output \acmdr[rdy] ;
  output ren__0;
  output [0:0]Q;
  input trst;
  input CLK;
  input stbo;
  input resync;
  input locked;
  input rsto;
  input [0:0]q;
  input sync_stb;
  input \acmd_tx_w[valid] ;
  input [8:0]\p_reg[0] ;
  input [0:0]E;
  input [7:0]\sd_reg[7] ;

  wire CLK;
  wire [0:0]E;
  wire [0:0]Q;
  wire \acmd_tx_w[valid] ;
  wire \acmdr[rdy] ;
  wire \acmdw[last] ;
  wire \acmdw_v[1][last] ;
  wire d__0;
  wire [9:0]\enc/dataOut ;
  wire \enc/disp ;
  wire [7:0]in5;
  wire locked;
  wire [8:0]\p_reg[0] ;
  wire pkt_n_11;
  wire pkt_n_16;
  wire [0:0]q;
  wire ren__0;
  wire resync;
  wire rsto;
  wire [7:0]\sd_reg[7] ;
  wire sel;
  wire smode_reg;
  wire stbo;
  wire sync_stb;
  wire trst;
  wire txdone__0;

  design_1_pdts_endpoint_wrapper_0_0_pdts_acmd_arb arb
       (.CLK(CLK),
        .\acmd_tx_w[valid] (\acmd_tx_w[valid] ),
        .\acmdr[rdy] (\acmdr[rdy] ),
        .\acmdw_v[1][last] (\acmdw_v[1][last] ),
        .d__0(d__0),
        .\p_reg[0]_0 (sel),
        .\p_reg[0]_1 (\p_reg[0] [8]),
        .trst(trst));
  design_1_pdts_endpoint_wrapper_0_0_pdts_idle_gen idle
       (.CLK(CLK),
        .E(pkt_n_16),
        .\acmdw[last] (\acmdw[last] ),
        .\acmdw_v[1][last] (\acmdw_v[1][last] ),
        .in5(in5),
        .trans_i_2(sel),
        .trans_i_2_0(\p_reg[0] ),
        .trst(trst));
  design_1_pdts_endpoint_wrapper_0_0_pdts_tx_phy phy
       (.CLK(CLK),
        .D(\enc/dataOut ),
        .Q(Q),
        .disp(\enc/disp ),
        .disp_reg(pkt_n_11),
        .stbo(stbo),
        .trst(trst));
  design_1_pdts_endpoint_wrapper_0_0_pdts_tx_pkt pkt
       (.CLK(CLK),
        .D(\enc/dataOut ),
        .E(E),
        .\FSM_sequential_state_reg[0]_0 (\p_reg[0] [8]),
        .\acmd_tx_w[valid] (\acmd_tx_w[valid] ),
        .\acmdr[rdy] (\acmdr[rdy] ),
        .\acmdw[last] (\acmdw[last] ),
        .\acmdw_v[1][last] (\acmdw_v[1][last] ),
        .\ctr_reg[7] (sel),
        .d__0(d__0),
        .disp(\enc/disp ),
        .in5(in5),
        .locked(locked),
        .\p_reg[0] (pkt_n_16),
        .q(q),
        .ren__0(ren__0),
        .resync(resync),
        .rsto(rsto),
        .\sd_reg[7]_0 (\sd_reg[7] ),
        .smode_reg_0(smode_reg),
        .stbo(stbo),
        .stbo_reg(pkt_n_11),
        .sync_stb(sync_stb),
        .trst(trst),
        .txdone__0(txdone__0));
endmodule

(* ORIG_REF_NAME = "pdts_tx_phy" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_tx_phy
   (disp,
    Q,
    stbo,
    CLK,
    trst,
    disp_reg,
    D);
  output disp;
  output [0:0]Q;
  input stbo;
  input CLK;
  input trst;
  input disp_reg;
  input [9:0]D;

  wire CLK;
  wire [9:0]D;
  wire [0:0]Q;
  wire disp;
  wire disp_reg;
  wire enc_n_1;
  wire enc_n_10;
  wire enc_n_2;
  wire enc_n_3;
  wire enc_n_4;
  wire enc_n_5;
  wire enc_n_6;
  wire enc_n_7;
  wire enc_n_8;
  wire enc_n_9;
  wire s;
  wire stbo;
  wire trst;
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

  design_1_pdts_endpoint_wrapper_0_0_pdts_enc8b10b enc
       (.CLK(CLK),
        .D(D),
        .Q({enc_n_1,enc_n_2,enc_n_3,enc_n_4,enc_n_5,enc_n_6,enc_n_7,enc_n_8,enc_n_9,enc_n_10}),
        .disp(disp),
        .disp_reg_0(disp_reg),
        .stbo(stbo),
        .trst(trst));
  FDRE s_reg
       (.C(CLK),
        .CE(1'b1),
        .D(stbo),
        .Q(s),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wb[0]_i_1 
       (.I0(enc_n_10),
        .I1(s),
        .I2(wb[1]),
        .O(\wb[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wb[1]_i_1 
       (.I0(enc_n_9),
        .I1(s),
        .I2(wb[2]),
        .O(\wb[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wb[2]_i_1 
       (.I0(enc_n_8),
        .I1(s),
        .I2(wb[3]),
        .O(\wb[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wb[3]_i_1 
       (.I0(enc_n_7),
        .I1(s),
        .I2(wb[4]),
        .O(\wb[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wb[4]_i_1 
       (.I0(enc_n_6),
        .I1(s),
        .I2(wb[5]),
        .O(\wb[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wb[5]_i_1 
       (.I0(enc_n_5),
        .I1(s),
        .I2(wb[6]),
        .O(\wb[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wb[6]_i_1 
       (.I0(enc_n_4),
        .I1(s),
        .I2(wb[7]),
        .O(\wb[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wb[7]_i_1 
       (.I0(enc_n_3),
        .I1(s),
        .I2(wb[8]),
        .O(\wb[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wb[8]_i_1 
       (.I0(enc_n_2),
        .I1(s),
        .I2(wb[9]),
        .O(\wb[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wb[9]_i_1 
       (.I0(s),
        .I1(enc_n_1),
        .O(\wb[9]_i_1_n_0 ));
  FDRE \wb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wb[0]_i_1_n_0 ),
        .Q(Q),
        .R(1'b0));
  FDRE \wb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wb[1]_i_1_n_0 ),
        .Q(wb[1]),
        .R(1'b0));
  FDRE \wb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wb[2]_i_1_n_0 ),
        .Q(wb[2]),
        .R(1'b0));
  FDRE \wb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wb[3]_i_1_n_0 ),
        .Q(wb[3]),
        .R(1'b0));
  FDRE \wb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wb[4]_i_1_n_0 ),
        .Q(wb[4]),
        .R(1'b0));
  FDRE \wb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wb[5]_i_1_n_0 ),
        .Q(wb[5]),
        .R(1'b0));
  FDRE \wb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wb[6]_i_1_n_0 ),
        .Q(wb[6]),
        .R(1'b0));
  FDRE \wb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wb[7]_i_1_n_0 ),
        .Q(wb[7]),
        .R(1'b0));
  FDRE \wb_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wb[8]_i_1_n_0 ),
        .Q(wb[8]),
        .R(1'b0));
  FDRE \wb_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wb[9]_i_1_n_0 ),
        .Q(wb[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_tx_pkt" *) 
module design_1_pdts_endpoint_wrapper_0_0_pdts_tx_pkt
   (smode_reg_0,
    D,
    stbo_reg,
    txdone__0,
    \acmdr[rdy] ,
    ren__0,
    d__0,
    \p_reg[0] ,
    CLK,
    trst,
    resync,
    locked,
    rsto,
    q,
    stbo,
    in5,
    disp,
    sync_stb,
    \ctr_reg[7] ,
    \acmd_tx_w[valid] ,
    \FSM_sequential_state_reg[0]_0 ,
    E,
    \acmdw[last] ,
    \acmdw_v[1][last] ,
    \sd_reg[7]_0 );
  output smode_reg_0;
  output [9:0]D;
  output stbo_reg;
  output txdone__0;
  output \acmdr[rdy] ;
  output ren__0;
  output d__0;
  output [0:0]\p_reg[0] ;
  input CLK;
  input trst;
  input resync;
  input locked;
  input rsto;
  input [0:0]q;
  input stbo;
  input [7:0]in5;
  input disp;
  input sync_stb;
  input \ctr_reg[7] ;
  input \acmd_tx_w[valid] ;
  input [0:0]\FSM_sequential_state_reg[0]_0 ;
  input [0:0]E;
  input \acmdw[last] ;
  input \acmdw_v[1][last] ;
  input [7:0]\sd_reg[7]_0 ;

  wire CLK;
  wire [9:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire [0:0]\FSM_sequential_state_reg[0]_0 ;
  wire \acmd_tx_w[valid] ;
  wire \acmdr[rdy] ;
  wire \acmdw[last] ;
  wire \acmdw_v[1][last] ;
  wire [4:0]actr_i;
  wire \actr_i[1]_i_1_n_0 ;
  wire \actr_i[2]_i_1_n_0 ;
  wire \actr_i[3]_i_1_n_0 ;
  wire \actr_i[4]_i_2_n_0 ;
  wire cksum_n_0;
  wire \ctr_reg[7] ;
  wire d__0;
  wire disp;
  wire iactr0;
  wire [7:0]in5;
  wire k;
  wire \lfsr_q[15]_i_9_n_0 ;
  wire locked;
  wire [0:0]\p_reg[0] ;
  wire [3:1]plusOp__5;
  wire [0:0]q;
  wire \q[0]_i_2_n_0 ;
  wire \q[1]_i_5_n_0 ;
  wire \q[3]_i_6_n_0 ;
  wire \q[3]_i_8_n_0 ;
  wire \q[9]_i_10_n_0 ;
  wire \q[9]_i_16_n_0 ;
  wire \q[9]_i_8_n_0 ;
  wire ren__0;
  wire resync;
  wire rsto;
  wire s_ok;
  wire s_ok_i_1_n_0;
  wire \sctr[0]_i_1__1_n_0 ;
  wire \sctr[1]_i_1_n_0 ;
  wire \sctr[2]_i_1_n_0 ;
  wire \sctr[3]_i_1_n_0 ;
  wire \sctr_reg_n_0_[0] ;
  wire \sctr_reg_n_0_[1] ;
  wire \sctr_reg_n_0_[2] ;
  wire \sctr_reg_n_0_[3] ;
  wire [7:0]sd;
  wire [7:0]\sd_reg[7]_0 ;
  wire smode_i_1_n_0;
  wire smode_i_2_n_0;
  wire smode_reg_0;
  wire \spctr[0]_i_1_n_0 ;
  wire \spctr[3]_i_1_n_0 ;
  wire [3:0]spctr_reg;
  wire [2:0]state__0;
  wire [2:0]state__1;
  wire stbo;
  wire stbo_reg;
  wire svalid;
  wire \sw[3]_i_1_n_0 ;
  wire \sw_reg_n_0_[0] ;
  wire \sw_reg_n_0_[1] ;
  wire \sw_reg_n_0_[2] ;
  wire \sw_reg_n_0_[3] ;
  wire sync_stb;
  wire trans;
  wire trans_i_1_n_0;
  wire trans_reg_n_0;
  wire trst;
  wire txdone__0;

  LUT4 #(
    .INIT(16'h1099)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(state__0[1]),
        .O(state__1[0]));
  LUT4 #(
    .INIT(16'h0062)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(state__0[0]),
        .O(state__1[1]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(actr_i[0]),
        .I1(actr_i[3]),
        .I2(trans_reg_n_0),
        .I3(actr_i[4]),
        .I4(actr_i[1]),
        .I5(actr_i[2]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444000004440)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(smode_reg_0),
        .I1(stbo),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(state__1[2]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(actr_i[4]),
        .I1(actr_i[3]),
        .I2(actr_i[0]),
        .I3(trans_reg_n_0),
        .I4(actr_i[1]),
        .I5(actr_i[2]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFB8)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\acmdw_v[1][last] ),
        .I1(\ctr_reg[7] ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "start:101,st_k:001,st_a:100,st_d:010,st_c:000,st_e:011" *) 
  FDSE \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .D(state__1[0]),
        .Q(state__0[0]),
        .S(trst));
  (* FSM_ENCODED_STATES = "start:101,st_k:001,st_a:100,st_d:010,st_c:000,st_e:011" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .D(state__1[1]),
        .Q(state__0[1]),
        .R(trst));
  (* FSM_ENCODED_STATES = "start:101,st_k:001,st_a:100,st_d:010,st_c:000,st_e:011" *) 
  FDSE \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .D(state__1[2]),
        .Q(state__0[2]),
        .S(trst));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \actr_i[0]_i_1 
       (.I0(trans_reg_n_0),
        .I1(actr_i[0]),
        .O(iactr0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \actr_i[1]_i_1 
       (.I0(actr_i[0]),
        .I1(trans_reg_n_0),
        .I2(actr_i[1]),
        .O(\actr_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \actr_i[2]_i_1 
       (.I0(actr_i[0]),
        .I1(actr_i[1]),
        .I2(trans_reg_n_0),
        .I3(actr_i[2]),
        .O(\actr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
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
    \actr_i[4]_i_2 
       (.I0(actr_i[2]),
        .I1(actr_i[0]),
        .I2(actr_i[1]),
        .I3(actr_i[3]),
        .I4(trans_reg_n_0),
        .I5(actr_i[4]),
        .O(\actr_i[4]_i_2_n_0 ));
  FDRE \actr_i_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(iactr0),
        .Q(actr_i[0]),
        .R(1'b0));
  FDRE \actr_i_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\actr_i[1]_i_1_n_0 ),
        .Q(actr_i[1]),
        .R(1'b0));
  FDRE \actr_i_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\actr_i[2]_i_1_n_0 ),
        .Q(actr_i[2]),
        .R(1'b0));
  FDRE \actr_i_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\actr_i[3]_i_1_n_0 ),
        .Q(actr_i[3]),
        .R(1'b0));
  FDRE \actr_i_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\actr_i[4]_i_2_n_0 ),
        .Q(actr_i[4]),
        .R(1'b0));
  design_1_pdts_endpoint_wrapper_0_0_pdts_cksum cksum
       (.CLK(CLK),
        .D(D),
        .Q(state__0),
        .SS(cksum_n_0),
        .disp(disp),
        .in5(in5),
        .k(k),
        .\lfsr_q_reg[15] (smode_reg_0),
        .\lfsr_q_reg[1] (\lfsr_q[15]_i_9_n_0 ),
        .\q[2]_i_2 (\q[9]_i_16_n_0 ),
        .\q_reg[0] (\q[0]_i_2_n_0 ),
        .\q_reg[1] (\q[1]_i_5_n_0 ),
        .\q_reg[3] (\q[3]_i_8_n_0 ),
        .\q_reg[3]_0 (\q[3]_i_6_n_0 ),
        .\q_reg[6] (\q[9]_i_10_n_0 ),
        .\q_reg[6]_0 (\q[9]_i_8_n_0 ),
        .\q_reg[6]_1 (sd[7:6]),
        .stbo(stbo),
        .stbo_reg(stbo_reg));
  LUT4 #(
    .INIT(16'h2000)) 
    err_i_i_3
       (.I0(\acmdr[rdy] ),
        .I1(\ctr_reg[7] ),
        .I2(\acmd_tx_w[valid] ),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .O(txdone__0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFF0001)) 
    \lfsr_q[15]_i_9 
       (.I0(actr_i[1]),
        .I1(actr_i[2]),
        .I2(actr_i[4]),
        .I3(actr_i[3]),
        .I4(trans_reg_n_0),
        .I5(actr_i[0]),
        .O(\lfsr_q[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h00060000)) 
    \p[0]_i_3 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(smode_reg_0),
        .I4(stbo),
        .O(\acmdr[rdy] ));
  LUT6 #(
    .INIT(64'hAAABAAA8AAA8AAA8)) 
    \q[0]_i_2 
       (.I0(sd[0]),
        .I1(spctr_reg[3]),
        .I2(spctr_reg[1]),
        .I3(spctr_reg[2]),
        .I4(spctr_reg[0]),
        .I5(\sw_reg_n_0_[0] ),
        .O(\q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAA8AAA8AAA8)) 
    \q[1]_i_5 
       (.I0(sd[1]),
        .I1(spctr_reg[3]),
        .I2(spctr_reg[1]),
        .I3(spctr_reg[2]),
        .I4(spctr_reg[0]),
        .I5(\sw_reg_n_0_[1] ),
        .O(\q[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hAAA8AAAB)) 
    \q[3]_i_6 
       (.I0(sd[4]),
        .I1(spctr_reg[3]),
        .I2(spctr_reg[1]),
        .I3(spctr_reg[2]),
        .I4(spctr_reg[0]),
        .O(\q[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAA8AAABAAAB)) 
    \q[3]_i_8 
       (.I0(sd[3]),
        .I1(spctr_reg[3]),
        .I2(spctr_reg[1]),
        .I3(spctr_reg[2]),
        .I4(\sw_reg_n_0_[3] ),
        .I5(spctr_reg[0]),
        .O(\q[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hAAA8AAAB)) 
    \q[9]_i_10 
       (.I0(sd[5]),
        .I1(spctr_reg[3]),
        .I2(spctr_reg[1]),
        .I3(spctr_reg[2]),
        .I4(spctr_reg[0]),
        .O(\q[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAA8AAABAAAB)) 
    \q[9]_i_16 
       (.I0(sd[2]),
        .I1(spctr_reg[3]),
        .I2(spctr_reg[1]),
        .I3(spctr_reg[2]),
        .I4(\sw_reg_n_0_[2] ),
        .I5(spctr_reg[0]),
        .O(\q[9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \q[9]_i_6 
       (.I0(spctr_reg[3]),
        .I1(spctr_reg[2]),
        .I2(spctr_reg[0]),
        .I3(spctr_reg[1]),
        .I4(smode_reg_0),
        .I5(cksum_n_0),
        .O(k));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \q[9]_i_8 
       (.I0(spctr_reg[3]),
        .I1(spctr_reg[1]),
        .I2(spctr_reg[2]),
        .O(\q[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800080000)) 
    \r[7]_i_1 
       (.I0(\ctr_reg[7] ),
        .I1(stbo),
        .I2(smode_reg_0),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(\p_reg[0] ));
  LUT6 #(
    .INIT(64'h0000022000000000)) 
    s_i_2__0
       (.I0(\acmd_tx_w[valid] ),
        .I1(\ctr_reg[7] ),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(E),
        .O(ren__0));
  LUT6 #(
    .INIT(64'h0000000800080000)) 
    s_i_2__1
       (.I0(\acmdw[last] ),
        .I1(stbo),
        .I2(smode_reg_0),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(d__0));
  LUT6 #(
    .INIT(64'hFFFF0FFF00000200)) 
    s_ok_i_1
       (.I0(stbo),
        .I1(smode_reg_0),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(s_ok),
        .O(s_ok_i_1_n_0));
  FDRE s_ok_reg
       (.C(CLK),
        .CE(1'b1),
        .D(s_ok_i_1_n_0),
        .Q(s_ok),
        .R(trst));
  LUT1 #(
    .INIT(2'h1)) 
    \sctr[0]_i_1__1 
       (.I0(\sctr_reg_n_0_[0] ),
        .O(\sctr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \sctr[1]_i_1 
       (.I0(\sctr_reg_n_0_[2] ),
        .I1(\sctr_reg_n_0_[1] ),
        .I2(\sctr_reg_n_0_[0] ),
        .I3(\sctr_reg_n_0_[3] ),
        .O(\sctr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \sctr[2]_i_1 
       (.I0(\sctr_reg_n_0_[2] ),
        .I1(\sctr_reg_n_0_[1] ),
        .I2(\sctr_reg_n_0_[0] ),
        .O(\sctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \sctr[3]_i_1 
       (.I0(\sctr_reg_n_0_[2] ),
        .I1(\sctr_reg_n_0_[1] ),
        .I2(\sctr_reg_n_0_[0] ),
        .I3(\sctr_reg_n_0_[3] ),
        .O(\sctr[3]_i_1_n_0 ));
  FDSE \sctr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sctr[0]_i_1__1_n_0 ),
        .Q(\sctr_reg_n_0_[0] ),
        .S(stbo));
  FDRE \sctr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sctr[1]_i_1_n_0 ),
        .Q(\sctr_reg_n_0_[1] ),
        .R(stbo));
  FDRE \sctr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sctr[2]_i_1_n_0 ),
        .Q(\sctr_reg_n_0_[2] ),
        .R(stbo));
  FDRE \sctr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sctr[3]_i_1_n_0 ),
        .Q(\sctr_reg_n_0_[3] ),
        .R(stbo));
  FDRE \sd_reg[0] 
       (.C(CLK),
        .CE(\sw[3]_i_1_n_0 ),
        .D(\sd_reg[7]_0 [0]),
        .Q(sd[0]),
        .R(1'b0));
  FDRE \sd_reg[1] 
       (.C(CLK),
        .CE(\sw[3]_i_1_n_0 ),
        .D(\sd_reg[7]_0 [1]),
        .Q(sd[1]),
        .R(1'b0));
  FDRE \sd_reg[2] 
       (.C(CLK),
        .CE(\sw[3]_i_1_n_0 ),
        .D(\sd_reg[7]_0 [2]),
        .Q(sd[2]),
        .R(1'b0));
  FDRE \sd_reg[3] 
       (.C(CLK),
        .CE(\sw[3]_i_1_n_0 ),
        .D(\sd_reg[7]_0 [3]),
        .Q(sd[3]),
        .R(1'b0));
  FDRE \sd_reg[4] 
       (.C(CLK),
        .CE(\sw[3]_i_1_n_0 ),
        .D(\sd_reg[7]_0 [4]),
        .Q(sd[4]),
        .R(1'b0));
  FDRE \sd_reg[5] 
       (.C(CLK),
        .CE(\sw[3]_i_1_n_0 ),
        .D(\sd_reg[7]_0 [5]),
        .Q(sd[5]),
        .R(1'b0));
  FDRE \sd_reg[6] 
       (.C(CLK),
        .CE(\sw[3]_i_1_n_0 ),
        .D(\sd_reg[7]_0 [6]),
        .Q(sd[6]),
        .R(1'b0));
  FDRE \sd_reg[7] 
       (.C(CLK),
        .CE(\sw[3]_i_1_n_0 ),
        .D(\sd_reg[7]_0 [7]),
        .Q(sd[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEFFFFFAAAAAAAA)) 
    smode_i_1
       (.I0(svalid),
        .I1(smode_i_2_n_0),
        .I2(spctr_reg[1]),
        .I3(spctr_reg[0]),
        .I4(stbo),
        .I5(smode_reg_0),
        .O(smode_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    smode_i_2
       (.I0(spctr_reg[2]),
        .I1(spctr_reg[3]),
        .O(smode_i_2_n_0));
  FDRE smode_reg
       (.C(CLK),
        .CE(1'b1),
        .D(smode_i_1_n_0),
        .Q(smode_reg_0),
        .R(trst));
  LUT1 #(
    .INIT(2'h1)) 
    \spctr[0]_i_1 
       (.I0(spctr_reg[0]),
        .O(\spctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spctr[1]_i_1 
       (.I0(spctr_reg[0]),
        .I1(spctr_reg[1]),
        .O(plusOp__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \spctr[2]_i_1 
       (.I0(spctr_reg[0]),
        .I1(spctr_reg[1]),
        .I2(spctr_reg[2]),
        .O(plusOp__5[2]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \spctr[3]_i_1 
       (.I0(smode_reg_0),
        .I1(stbo),
        .I2(resync),
        .I3(locked),
        .I4(rsto),
        .I5(q),
        .O(\spctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \spctr[3]_i_2 
       (.I0(spctr_reg[1]),
        .I1(spctr_reg[0]),
        .I2(spctr_reg[2]),
        .I3(spctr_reg[3]),
        .O(plusOp__5[3]));
  FDRE \spctr_reg[0] 
       (.C(CLK),
        .CE(\spctr[3]_i_1_n_0 ),
        .D(\spctr[0]_i_1_n_0 ),
        .Q(spctr_reg[0]),
        .R(\sw[3]_i_1_n_0 ));
  FDRE \spctr_reg[1] 
       (.C(CLK),
        .CE(\spctr[3]_i_1_n_0 ),
        .D(plusOp__5[1]),
        .Q(spctr_reg[1]),
        .R(\sw[3]_i_1_n_0 ));
  FDRE \spctr_reg[2] 
       (.C(CLK),
        .CE(\spctr[3]_i_1_n_0 ),
        .D(plusOp__5[2]),
        .Q(spctr_reg[2]),
        .R(\sw[3]_i_1_n_0 ));
  FDRE \spctr_reg[3] 
       (.C(CLK),
        .CE(\spctr[3]_i_1_n_0 ),
        .D(plusOp__5[3]),
        .Q(spctr_reg[3]),
        .R(\sw[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \sw[3]_i_1 
       (.I0(svalid),
        .I1(resync),
        .I2(locked),
        .I3(rsto),
        .I4(q),
        .O(\sw[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \sw[3]_i_2 
       (.I0(sync_stb),
        .I1(smode_reg_0),
        .I2(s_ok),
        .O(svalid));
  FDRE \sw_reg[0] 
       (.C(CLK),
        .CE(\sw[3]_i_1_n_0 ),
        .D(\sctr_reg_n_0_[0] ),
        .Q(\sw_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sw_reg[1] 
       (.C(CLK),
        .CE(\sw[3]_i_1_n_0 ),
        .D(\sctr_reg_n_0_[1] ),
        .Q(\sw_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \sw_reg[2] 
       (.C(CLK),
        .CE(\sw[3]_i_1_n_0 ),
        .D(\sctr_reg_n_0_[2] ),
        .Q(\sw_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \sw_reg[3] 
       (.C(CLK),
        .CE(\sw[3]_i_1_n_0 ),
        .D(\sctr_reg_n_0_[3] ),
        .Q(\sw_reg_n_0_[3] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    trans_i_1
       (.I0(trans),
        .I1(smode_reg_0),
        .I2(stbo),
        .I3(trst),
        .I4(trans_reg_n_0),
        .O(trans_i_1_n_0));
  LUT6 #(
    .INIT(64'h001055FF001000AA)) 
    trans_i_2
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\acmdw[last] ),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(trans));
  FDRE trans_reg
       (.C(CLK),
        .CE(1'b1),
        .D(trans_i_1_n_0),
        .Q(trans_reg_n_0),
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
