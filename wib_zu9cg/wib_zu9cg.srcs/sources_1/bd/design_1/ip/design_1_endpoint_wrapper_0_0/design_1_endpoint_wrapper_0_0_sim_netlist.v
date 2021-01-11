// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Sat Jan  9 23:45:10 2021
// Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/github/wib_sim/wib_zu9cg/wib_zu9cg.srcs/sources_1/bd/design_1/ip/design_1_endpoint_wrapper_0_0/design_1_endpoint_wrapper_0_0_sim_netlist.v
// Design      : design_1_endpoint_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9cg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_endpoint_wrapper_0_0,endpoint_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "endpoint_wrapper,Vivado 2020.1.1_AR73018" *) 
(* NotValidForBitStream *)
module design_1_endpoint_wrapper_0_0
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
    clk,
    rst,
    rdy,
    sync,
    sync_stb,
    sync_first,
    tstamp);
  input sclk;
  input srst;
  input [7:0]addr;
  input [1:0]tgrp;
  output [3:0]stat;
  input rec_clk;
  input rec_d;
  input sfp_los;
  input cdr_los;
  input cdr_lol;
  output clk;
  output rst;
  output rdy;
  output [3:0]sync;
  output sync_stb;
  output sync_first;
  output [63:0]tstamp;

  wire [7:0]addr;
  wire cdr_lol;
  wire cdr_los;
  wire clk;
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

  design_1_endpoint_wrapper_0_0_endpoint_wrapper U0
       (.addr(addr),
        .cdr_lol(cdr_lol),
        .cdr_los(cdr_los),
        .clk(clk),
        .rdy(rdy),
        .rec_clk(rec_clk),
        .rec_d(rec_d),
        .rst(rst),
        .sclk(sclk),
        .sfp_los(sfp_los),
        .srst(srst),
        .stat(stat),
        .sync(sync),
        .sync_first(sync_first),
        .sync_stb(sync_stb),
        .tgrp(tgrp),
        .tstamp(tstamp));
endmodule

(* ORIG_REF_NAME = "endpoint_wrapper" *) 
module design_1_endpoint_wrapper_0_0_endpoint_wrapper
   (sync,
    tstamp,
    rst,
    rdy,
    clk,
    stat,
    sync_stb,
    sync_first,
    sclk,
    srst,
    rec_clk,
    rec_d,
    sfp_los,
    cdr_los,
    cdr_lol,
    addr,
    tgrp);
  output [3:0]sync;
  output [63:0]tstamp;
  output rst;
  output rdy;
  output clk;
  output [3:0]stat;
  output sync_stb;
  output sync_first;
  input sclk;
  input srst;
  input rec_clk;
  input rec_d;
  input sfp_los;
  input cdr_los;
  input cdr_lol;
  input [7:0]addr;
  input [1:0]tgrp;

  wire [7:0]addr;
  wire cdr_lol;
  wire cdr_los;
  wire clk;
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

  design_1_endpoint_wrapper_0_0_pdts_endpoint ep
       (.Q(rdy),
        .addr(addr),
        .cdr_lol(cdr_lol),
        .cdr_los(cdr_los),
        .clk(clk),
        .rec_clk(rec_clk),
        .rec_d(rec_d),
        .rst(rst),
        .sclk(sclk),
        .sfp_los(sfp_los),
        .srst(srst),
        .stat(stat),
        .sync(sync),
        .sync_first(sync_first),
        .sync_stb(sync_stb),
        .tgrp(tgrp),
        .tstamp(tstamp));
endmodule

(* ORIG_REF_NAME = "outputlogic_crc16" *) 
module design_1_endpoint_wrapper_0_0_outputlogic_crc16
   (E,
    D,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    SS,
    q,
    stbo,
    k,
    Q,
    \state_reg[0]_1 ,
    \state_reg[0]_2 ,
    \state_reg[0]_3 ,
    err113_out__4,
    err1__6,
    err115_out__2,
    \err_reg[0] ,
    clk);
  output [0:0]E;
  output [1:0]D;
  output [0:0]\state_reg[0] ;
  output [0:0]\state_reg[0]_0 ;
  output [0:0]SS;
  input [7:0]q;
  input stbo;
  input k;
  input [1:0]Q;
  input \state_reg[0]_1 ;
  input \state_reg[0]_2 ;
  input \state_reg[0]_3 ;
  input err113_out__4;
  input err1__6;
  input err115_out__2;
  input \err_reg[0] ;
  input clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SS;
  wire clk;
  wire err0__15;
  wire err113_out__4;
  wire err115_out__2;
  wire err1__6;
  wire \err[0]_i_6_n_0 ;
  wire \err[0]_i_7_n_0 ;
  wire \err[0]_i_8_n_0 ;
  wire \err[0]_i_9_n_0 ;
  wire err_i__1;
  wire \err_reg[0] ;
  wire k;
  wire [15:0]lfsr_c;
  wire \lfsr_q[15]_i_4_n_0 ;
  wire \lfsr_q[15]_i_5_n_0 ;
  wire \lfsr_q[1]_i_2_n_0 ;
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
  wire [0:0]\state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire \state_reg[0]_3 ;
  wire stbo;

  LUT6 #(
    .INIT(64'hAAAAAAAAEFAEEEEE)) 
    \err[0]_i_1 
       (.I0(err115_out__2),
        .I1(err0__15),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(err1__6),
        .I5(err113_out__4),
        .O(\state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \err[0]_i_3 
       (.I0(\err_reg[0] ),
        .I1(SS),
        .I2(\err[0]_i_6_n_0 ),
        .I3(\err[0]_i_7_n_0 ),
        .I4(\err[0]_i_8_n_0 ),
        .I5(\err[0]_i_9_n_0 ),
        .O(err0__15));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err[0]_i_6 
       (.I0(\lfsr_q_reg_n_0_[8] ),
        .I1(\lfsr_q_reg_n_0_[9] ),
        .I2(\lfsr_q_reg_n_0_[10] ),
        .I3(\lfsr_q_reg_n_0_[11] ),
        .O(\err[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err[0]_i_7 
       (.I0(\lfsr_q_reg_n_0_[12] ),
        .I1(\lfsr_q_reg_n_0_[13] ),
        .I2(\lfsr_q_reg_n_0_[15] ),
        .I3(\lfsr_q_reg_n_0_[14] ),
        .O(\err[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err[0]_i_8 
       (.I0(\lfsr_q_reg_n_0_[0] ),
        .I1(\lfsr_q_reg_n_0_[1] ),
        .I2(\lfsr_q_reg_n_0_[2] ),
        .I3(\lfsr_q_reg_n_0_[3] ),
        .O(\err[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err[0]_i_9 
       (.I0(\lfsr_q_reg_n_0_[4] ),
        .I1(\lfsr_q_reg_n_0_[5] ),
        .I2(\lfsr_q_reg_n_0_[6] ),
        .I3(\lfsr_q_reg_n_0_[7] ),
        .O(\err[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[0]_i_1 
       (.I0(q[2]),
        .I1(q[7]),
        .I2(\lfsr_q_reg_n_0_[15] ),
        .I3(\lfsr_q_reg_n_0_[8] ),
        .I4(\lfsr_q_reg_n_0_[9] ),
        .I5(\lfsr_q[15]_i_5_n_0 ),
        .O(lfsr_c[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \lfsr_q[15]_i_1 
       (.I0(q[0]),
        .I1(stbo),
        .I2(k),
        .O(SS));
  LUT5 #(
    .INIT(32'h00004C00)) 
    \lfsr_q[15]_i_2 
       (.I0(q[0]),
        .I1(stbo),
        .I2(k),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(E));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[15]_i_3 
       (.I0(q[2]),
        .I1(\lfsr_q[15]_i_4_n_0 ),
        .I2(\lfsr_q_reg_n_0_[7] ),
        .I3(\lfsr_q_reg_n_0_[9] ),
        .I4(\lfsr_q_reg_n_0_[8] ),
        .I5(\lfsr_q[15]_i_5_n_0 ),
        .O(lfsr_c[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[15]_i_4 
       (.I0(\lfsr_q_reg_n_0_[15] ),
        .I1(q[7]),
        .O(\lfsr_q[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[15]_i_5 
       (.I0(\lfsr_q[1]_i_3_n_0 ),
        .I1(\lfsr_q_reg_n_0_[11] ),
        .I2(q[3]),
        .I3(\lfsr_q_reg_n_0_[10] ),
        .I4(q[0]),
        .I5(\lfsr_q[1]_i_4_n_0 ),
        .O(\lfsr_q[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[1]_i_1 
       (.I0(\lfsr_q[1]_i_2_n_0 ),
        .I1(\lfsr_q[1]_i_3_n_0 ),
        .I2(\lfsr_q[1]_i_4_n_0 ),
        .I3(\lfsr_q[15]_i_4_n_0 ),
        .I4(q[3]),
        .I5(\lfsr_q_reg_n_0_[11] ),
        .O(lfsr_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[1]_i_2 
       (.I0(\lfsr_q_reg_n_0_[9] ),
        .I1(\lfsr_q_reg_n_0_[10] ),
        .I2(q[2]),
        .O(\lfsr_q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[1]_i_3 
       (.I0(\lfsr_q_reg_n_0_[12] ),
        .I1(q[4]),
        .O(\lfsr_q[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[1]_i_4 
       (.I0(q[6]),
        .I1(\lfsr_q_reg_n_0_[13] ),
        .I2(q[1]),
        .I3(\lfsr_q_reg_n_0_[14] ),
        .I4(q[5]),
        .O(\lfsr_q[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[2]_i_1 
       (.I0(q[1]),
        .I1(\lfsr_q_reg_n_0_[8] ),
        .I2(\lfsr_q_reg_n_0_[9] ),
        .I3(q[0]),
        .O(lfsr_c[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[3]_i_1 
       (.I0(q[1]),
        .I1(q[2]),
        .I2(\lfsr_q_reg_n_0_[10] ),
        .I3(\lfsr_q_reg_n_0_[9] ),
        .O(lfsr_c[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[6]_i_1 
       (.I0(\lfsr_q_reg_n_0_[13] ),
        .I1(q[5]),
        .I2(q[4]),
        .I3(\lfsr_q_reg_n_0_[12] ),
        .O(lfsr_c[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[7]_i_1 
       (.I0(\lfsr_q_reg_n_0_[14] ),
        .I1(q[6]),
        .I2(\lfsr_q_reg_n_0_[13] ),
        .I3(q[5]),
        .O(lfsr_c[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
    \lfsr_q[9]_i_1 
       (.I0(\lfsr_q_reg_n_0_[1] ),
        .I1(q[7]),
        .I2(\lfsr_q_reg_n_0_[15] ),
        .O(lfsr_c[9]));
  FDSE \lfsr_q_reg[0] 
       (.C(clk),
        .CE(E),
        .D(lfsr_c[0]),
        .Q(\lfsr_q_reg_n_0_[0] ),
        .S(SS));
  FDSE \lfsr_q_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\lfsr_q_reg_n_0_[2] ),
        .Q(\lfsr_q_reg_n_0_[10] ),
        .S(SS));
  FDSE \lfsr_q_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\lfsr_q_reg_n_0_[3] ),
        .Q(\lfsr_q_reg_n_0_[11] ),
        .S(SS));
  FDSE \lfsr_q_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\lfsr_q_reg_n_0_[4] ),
        .Q(\lfsr_q_reg_n_0_[12] ),
        .S(SS));
  FDSE \lfsr_q_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\lfsr_q_reg_n_0_[5] ),
        .Q(\lfsr_q_reg_n_0_[13] ),
        .S(SS));
  FDSE \lfsr_q_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\lfsr_q_reg_n_0_[6] ),
        .Q(\lfsr_q_reg_n_0_[14] ),
        .S(SS));
  FDSE \lfsr_q_reg[15] 
       (.C(clk),
        .CE(E),
        .D(lfsr_c[15]),
        .Q(\lfsr_q_reg_n_0_[15] ),
        .S(SS));
  FDSE \lfsr_q_reg[1] 
       (.C(clk),
        .CE(E),
        .D(lfsr_c[1]),
        .Q(\lfsr_q_reg_n_0_[1] ),
        .S(SS));
  FDSE \lfsr_q_reg[2] 
       (.C(clk),
        .CE(E),
        .D(lfsr_c[2]),
        .Q(\lfsr_q_reg_n_0_[2] ),
        .S(SS));
  FDSE \lfsr_q_reg[3] 
       (.C(clk),
        .CE(E),
        .D(lfsr_c[3]),
        .Q(\lfsr_q_reg_n_0_[3] ),
        .S(SS));
  FDSE \lfsr_q_reg[4] 
       (.C(clk),
        .CE(E),
        .D(lfsr_c[4]),
        .Q(\lfsr_q_reg_n_0_[4] ),
        .S(SS));
  FDSE \lfsr_q_reg[5] 
       (.C(clk),
        .CE(E),
        .D(lfsr_c[5]),
        .Q(\lfsr_q_reg_n_0_[5] ),
        .S(SS));
  FDSE \lfsr_q_reg[6] 
       (.C(clk),
        .CE(E),
        .D(lfsr_c[6]),
        .Q(\lfsr_q_reg_n_0_[6] ),
        .S(SS));
  FDSE \lfsr_q_reg[7] 
       (.C(clk),
        .CE(E),
        .D(lfsr_c[7]),
        .Q(\lfsr_q_reg_n_0_[7] ),
        .S(SS));
  FDSE \lfsr_q_reg[8] 
       (.C(clk),
        .CE(E),
        .D(lfsr_c[8]),
        .Q(\lfsr_q_reg_n_0_[8] ),
        .S(SS));
  FDSE \lfsr_q_reg[9] 
       (.C(clk),
        .CE(E),
        .D(lfsr_c[9]),
        .Q(\lfsr_q_reg_n_0_[9] ),
        .S(SS));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
        .I2(\state_reg[0]_1 ),
        .I3(\state_reg[0]_2 ),
        .I4(err_i__1),
        .I5(\state_reg[0]_3 ),
        .O(\state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
       (.I0(err113_out__4),
        .I1(err1__6),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(err0__15),
        .I5(err115_out__2),
        .O(err_i__1));
endmodule

(* ORIG_REF_NAME = "pdts_acmd_rx" *) 
module design_1_endpoint_wrapper_0_0_pdts_acmd_rx
   (s_reg_0,
    Q,
    clk,
    a_stb,
    a_first,
    SR,
    E,
    debug,
    q);
  output s_reg_0;
  output [10:0]Q;
  input clk;
  input a_stb;
  input a_first;
  input [0:0]SR;
  input [0:0]E;
  input [0:0]debug;
  input [7:0]q;

  wire [0:0]E;
  wire [10:0]Q;
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
  wire [0:0]debug;
  wire [7:0]q;
  wire \q[7]_i_1_n_0 ;
  wire s_i_1_n_0;
  wire s_i_2_n_0;
  wire s_reg_0;

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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \c[2]_i_1 
       (.I0(\c_reg_n_0_[0] ),
        .I1(\c_reg_n_0_[1] ),
        .I2(\c_reg_n_0_[2] ),
        .O(\c[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
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
        .R(debug));
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
        .R(debug));
  FDRE \q_reg[11] 
       (.C(clk),
        .CE(E),
        .D(q[3]),
        .Q(Q[7]),
        .R(debug));
  FDRE \q_reg[12] 
       (.C(clk),
        .CE(E),
        .D(q[4]),
        .Q(Q[8]),
        .R(debug));
  FDRE \q_reg[13] 
       (.C(clk),
        .CE(E),
        .D(q[5]),
        .Q(Q[9]),
        .R(debug));
  FDRE \q_reg[14] 
       (.C(clk),
        .CE(E),
        .D(q[6]),
        .Q(Q[10]),
        .R(debug));
  FDRE \q_reg[4] 
       (.C(clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(q[4]),
        .Q(Q[0]),
        .R(debug));
  FDRE \q_reg[5] 
       (.C(clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(q[5]),
        .Q(Q[1]),
        .R(debug));
  FDRE \q_reg[6] 
       (.C(clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(q[6]),
        .Q(Q[2]),
        .R(debug));
  FDRE \q_reg[7] 
       (.C(clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(q[7]),
        .Q(Q[3]),
        .R(debug));
  FDRE \q_reg[8] 
       (.C(clk),
        .CE(E),
        .D(q[0]),
        .Q(Q[4]),
        .R(debug));
  FDRE \q_reg[9] 
       (.C(clk),
        .CE(E),
        .D(q[1]),
        .Q(Q[5]),
        .R(debug));
  LUT6 #(
    .INIT(64'h00000000EAAAAAAA)) 
    s_i_1
       (.I0(s_reg_0),
        .I1(s_i_2_n_0),
        .I2(\c_reg_n_0_[0] ),
        .I3(\c_reg_n_0_[1] ),
        .I4(a_stb),
        .I5(SR),
        .O(s_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_i_2
       (.I0(\c_reg_n_0_[2] ),
        .I1(\c_reg_n_0_[3] ),
        .O(s_i_2_n_0));
  FDRE s_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_i_1_n_0),
        .Q(s_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_adjust" *) 
module design_1_endpoint_wrapper_0_0_pdts_adjust
   (adj_req_reg_0,
    \cdel_reg[5]_0 ,
    \fdel_reg[3]_0 ,
    \da_reg[0] ,
    clk,
    sclk,
    srst,
    E,
    Q);
  output adj_req_reg_0;
  output [5:0]\cdel_reg[5]_0 ;
  output [3:0]\fdel_reg[3]_0 ;
  input \da_reg[0] ;
  input clk;
  input sclk;
  input srst;
  input [0:0]E;
  input [10:0]Q;

  wire [0:0]E;
  wire [10:0]Q;
  wire adj_req_reg_0;
  wire [5:0]cdel_i;
  wire [5:0]\cdel_reg[5]_0 ;
  wire clk;
  wire \da_reg[0] ;
  wire [3:0]fdel_i;
  wire fdel_i_0;
  wire [3:0]\fdel_reg[3]_0 ;
  wire sclk;
  wire srst;
  wire sync_n_1;
  wire u;
  wire ud;

  FDRE adj_req_reg
       (.C(sclk),
        .CE(1'b1),
        .D(sync_n_1),
        .Q(adj_req_reg_0),
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
        .CE(E),
        .D(cdel_i[0]),
        .Q(\cdel_reg[5]_0 [0]),
        .R(srst));
  FDRE \cdel_reg[1] 
       (.C(sclk),
        .CE(E),
        .D(cdel_i[1]),
        .Q(\cdel_reg[5]_0 [1]),
        .R(srst));
  FDRE \cdel_reg[2] 
       (.C(sclk),
        .CE(E),
        .D(cdel_i[2]),
        .Q(\cdel_reg[5]_0 [2]),
        .R(srst));
  FDRE \cdel_reg[3] 
       (.C(sclk),
        .CE(E),
        .D(cdel_i[3]),
        .Q(\cdel_reg[5]_0 [3]),
        .R(srst));
  FDRE \cdel_reg[4] 
       (.C(sclk),
        .CE(E),
        .D(cdel_i[4]),
        .Q(\cdel_reg[5]_0 [4]),
        .R(srst));
  FDRE \cdel_reg[5] 
       (.C(sclk),
        .CE(E),
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
        .CE(E),
        .D(fdel_i[0]),
        .Q(\fdel_reg[3]_0 [0]),
        .R(srst));
  FDRE \fdel_reg[1] 
       (.C(sclk),
        .CE(E),
        .D(fdel_i[1]),
        .Q(\fdel_reg[3]_0 [1]),
        .R(srst));
  FDRE \fdel_reg[2] 
       (.C(sclk),
        .CE(E),
        .D(fdel_i[2]),
        .Q(\fdel_reg[3]_0 [2]),
        .R(srst));
  FDRE \fdel_reg[3] 
       (.C(sclk),
        .CE(E),
        .D(fdel_i[3]),
        .Q(\fdel_reg[3]_0 [3]),
        .R(srst));
  design_1_endpoint_wrapper_0_0_pdts_synchro__parameterized1_1 sync
       (.E(E),
        .Q(Q[10]),
        .adj_req_reg(adj_req_reg_0),
        .clk(clk),
        .\da_reg[0]_0 (\da_reg[0] ),
        .out(u),
        .\s_reg[4][0] (fdel_i_0),
        .sclk(sclk),
        .srst(srst),
        .srst_0(sync_n_1),
        .ud(ud));
  FDRE ud_reg
       (.C(sclk),
        .CE(1'b1),
        .D(u),
        .Q(ud),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_chklock" *) 
module design_1_endpoint_wrapper_0_0_pdts_chklock
   (\FSM_onehot_state_reg[8] ,
    \ctrs_reg[0][6]_0 ,
    D,
    \ctrs_reg[0][7]_0 ,
    \ctrs_reg[0][4]_0 ,
    link_ok,
    \ctrs_reg[0][7]_1 ,
    sfp_los,
    cdr_los,
    srst,
    cdr_lol,
    \FSM_onehot_state_reg[0] ,
    Q,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    \FSM_onehot_state_reg[8]_0 ,
    \FSM_onehot_state_reg[4] ,
    out,
    sclk);
  output \FSM_onehot_state_reg[8] ;
  output \ctrs_reg[0][6]_0 ;
  output [2:0]D;
  output [1:0]\ctrs_reg[0][7]_0 ;
  output \ctrs_reg[0][4]_0 ;
  output link_ok;
  output \ctrs_reg[0][7]_1 ;
  input sfp_los;
  input cdr_los;
  input srst;
  input cdr_lol;
  input \FSM_onehot_state_reg[0] ;
  input [6:0]Q;
  input \FSM_onehot_state_reg[0]_0 ;
  input \FSM_onehot_state_reg[0]_1 ;
  input \FSM_onehot_state_reg[8]_0 ;
  input \FSM_onehot_state_reg[4] ;
  input [0:0]out;
  input sclk;

  wire [2:0]D;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[4] ;
  wire \FSM_onehot_state_reg[8] ;
  wire \FSM_onehot_state_reg[8]_0 ;
  wire [6:0]Q;
  wire cdr_lol;
  wire cdr_los;
  wire \ctrs[0][7]_i_1_n_0 ;
  wire \ctrs_reg[0][4]_0 ;
  wire \ctrs_reg[0][6]_0 ;
  wire [1:0]\ctrs_reg[0][7]_0 ;
  wire \ctrs_reg[0][7]_1 ;
  wire [5:0]\ctrs_reg[0]_0 ;
  wire link_ok;
  wire [0:0]out;
  wire [7:0]plusOp;
  wire sclk;
  wire sfp_los;
  wire srst;

  LUT6 #(
    .INIT(64'hFFFFFFB8FFB8FFB8)) 
    \FSM_onehot_state[0]_i_5 
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(\ctrs_reg[0][6]_0 ),
        .I2(Q[3]),
        .I3(Q[6]),
        .I4(\FSM_onehot_state_reg[0]_0 ),
        .I5(\FSM_onehot_state_reg[0]_1 ),
        .O(\FSM_onehot_state_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_onehot_state[0]_i_7 
       (.I0(\ctrs_reg[0][7]_0 [1]),
        .I1(\ctrs_reg[0][4]_0 ),
        .I2(\ctrs_reg[0][7]_0 [0]),
        .I3(out),
        .O(\ctrs_reg[0][7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\ctrs_reg[0][6]_0 ),
        .I1(Q[5]),
        .I2(\FSM_onehot_state_reg[4] ),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(Q[4]),
        .I1(\ctrs_reg[0][6]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\ctrs_reg[0][6]_0 ),
        .I5(\FSM_onehot_state_reg[8]_0 ),
        .O(D[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \ctrs[0][0]_i_1 
       (.I0(\ctrs_reg[0]_0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctrs[0][1]_i_1 
       (.I0(\ctrs_reg[0]_0 [0]),
        .I1(\ctrs_reg[0]_0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ctrs[0][2]_i_1 
       (.I0(\ctrs_reg[0]_0 [1]),
        .I1(\ctrs_reg[0]_0 [0]),
        .I2(\ctrs_reg[0]_0 [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ctrs[0][3]_i_1 
       (.I0(\ctrs_reg[0]_0 [2]),
        .I1(\ctrs_reg[0]_0 [0]),
        .I2(\ctrs_reg[0]_0 [1]),
        .I3(\ctrs_reg[0]_0 [3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ctrs[0][4]_i_1 
       (.I0(\ctrs_reg[0]_0 [3]),
        .I1(\ctrs_reg[0]_0 [1]),
        .I2(\ctrs_reg[0]_0 [0]),
        .I3(\ctrs_reg[0]_0 [2]),
        .I4(\ctrs_reg[0]_0 [4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ctrs[0][5]_i_1 
       (.I0(\ctrs_reg[0]_0 [4]),
        .I1(\ctrs_reg[0]_0 [2]),
        .I2(\ctrs_reg[0]_0 [0]),
        .I3(\ctrs_reg[0]_0 [1]),
        .I4(\ctrs_reg[0]_0 [3]),
        .I5(\ctrs_reg[0]_0 [5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \ctrs[0][6]_i_1 
       (.I0(\ctrs_reg[0][4]_0 ),
        .I1(\ctrs_reg[0][7]_0 [0]),
        .O(plusOp[6]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctrs[0][7]_i_1 
       (.I0(sfp_los),
        .I1(cdr_los),
        .I2(srst),
        .I3(cdr_lol),
        .O(\ctrs[0][7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \ctrs[0][7]_i_2 
       (.I0(\ctrs_reg[0][7]_0 [0]),
        .I1(\ctrs_reg[0][4]_0 ),
        .I2(\ctrs_reg[0][7]_0 [1]),
        .O(\ctrs_reg[0][6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \ctrs[0][7]_i_3 
       (.I0(\ctrs_reg[0][7]_0 [0]),
        .I1(\ctrs_reg[0][4]_0 ),
        .I2(\ctrs_reg[0][7]_0 [1]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ctrs[0][7]_i_4 
       (.I0(\ctrs_reg[0]_0 [4]),
        .I1(\ctrs_reg[0]_0 [2]),
        .I2(\ctrs_reg[0]_0 [0]),
        .I3(\ctrs_reg[0]_0 [1]),
        .I4(\ctrs_reg[0]_0 [3]),
        .I5(\ctrs_reg[0]_0 [5]),
        .O(\ctrs_reg[0][4]_0 ));
  FDRE \ctrs_reg[0][0] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(plusOp[0]),
        .Q(\ctrs_reg[0]_0 [0]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][1] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(plusOp[1]),
        .Q(\ctrs_reg[0]_0 [1]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][2] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(plusOp[2]),
        .Q(\ctrs_reg[0]_0 [2]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][3] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(plusOp[3]),
        .Q(\ctrs_reg[0]_0 [3]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][4] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(plusOp[4]),
        .Q(\ctrs_reg[0]_0 [4]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][5] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(plusOp[5]),
        .Q(\ctrs_reg[0]_0 [5]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][6] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(plusOp[6]),
        .Q(\ctrs_reg[0][7]_0 [0]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  FDRE \ctrs_reg[0][7] 
       (.C(sclk),
        .CE(\ctrs_reg[0][6]_0 ),
        .D(plusOp[7]),
        .Q(\ctrs_reg[0][7]_0 [1]),
        .R(\ctrs[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \da[0]_i_1__1 
       (.I0(\ctrs_reg[0][6]_0 ),
        .O(link_ok));
endmodule

(* ORIG_REF_NAME = "pdts_cksum" *) 
module design_1_endpoint_wrapper_0_0_pdts_cksum
   (E,
    D,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    ka,
    q,
    stbo,
    k,
    Q,
    \state_reg[0]_1 ,
    \state_reg[0]_2 ,
    \state_reg[0]_3 ,
    err113_out__4,
    err1__6,
    err115_out__2,
    \err_reg[0] ,
    clk);
  output [0:0]E;
  output [1:0]D;
  output [0:0]\state_reg[0] ;
  output [0:0]\state_reg[0]_0 ;
  output ka;
  input [7:0]q;
  input stbo;
  input k;
  input [1:0]Q;
  input \state_reg[0]_1 ;
  input \state_reg[0]_2 ;
  input \state_reg[0]_3 ;
  input err113_out__4;
  input err1__6;
  input err115_out__2;
  input \err_reg[0] ;
  input clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire err113_out__4;
  wire err115_out__2;
  wire err1__6;
  wire \err_reg[0] ;
  wire k;
  wire ka;
  wire [7:0]q;
  wire [0:0]\state_reg[0] ;
  wire [0:0]\state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire \state_reg[0]_3 ;
  wire stbo;

  design_1_endpoint_wrapper_0_0_outputlogic_crc16 crc
       (.D(D),
        .E(E),
        .Q(Q),
        .SS(ka),
        .clk(clk),
        .err113_out__4(err113_out__4),
        .err115_out__2(err115_out__2),
        .err1__6(err1__6),
        .\err_reg[0] (\err_reg[0] ),
        .k(k),
        .q(q),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[0]_1 (\state_reg[0]_1 ),
        .\state_reg[0]_2 (\state_reg[0]_2 ),
        .\state_reg[0]_3 (\state_reg[0]_3 ),
        .stbo(stbo));
endmodule

(* ORIG_REF_NAME = "pdts_dec8b10b" *) 
module design_1_endpoint_wrapper_0_0_pdts_dec8b10b
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
    .INIT(64'hEAAAEABBEBEEEBFF)) 
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
    .INIT(64'h0EE8E880E8808000)) 
    derr_i_5
       (.I0(d[5]),
        .I1(d[4]),
        .I2(d[1]),
        .I3(d[0]),
        .I4(d[2]),
        .I5(d[3]),
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
    .INIT(64'h555755575FFF577F)) 
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
    .INIT(32'hFFFF1000)) 
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
    .INIT(16'h6880)) 
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
module design_1_endpoint_wrapper_0_0_pdts_del
   (E,
    sclk,
    Q,
    \s_reg[4][0]_0 );
  output [0:0]E;
  input sclk;
  input [0:0]Q;
  input \s_reg[4][0]_0 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire adj_ack_i;
  wire \s_reg[3][0]_srl3_n_0 ;
  wire \s_reg[4][0]_0 ;
  wire sclk;

  (* srl_bus_name = "\U0/ep/startup/adel/s_reg[3] " *) 
  (* srl_name = "\U0/ep/startup/adel/s_reg[3][0]_srl3 " *) 
  SRL16E \s_reg[3][0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(sclk),
        .D(adj_ack_i),
        .Q(\s_reg[3][0]_srl3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_reg[3][0]_srl3_i_1 
       (.I0(Q),
        .I1(\s_reg[4][0]_0 ),
        .O(adj_ack_i));
  FDRE \s_reg[4][0] 
       (.C(sclk),
        .CE(1'b1),
        .D(\s_reg[3][0]_srl3_n_0 ),
        .Q(E),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_del" *) 
module design_1_endpoint_wrapper_0_0_pdts_del__parameterized0
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
module design_1_endpoint_wrapper_0_0_pdts_del__parameterized1
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

(* ORIG_REF_NAME = "pdts_endpoint" *) 
module design_1_endpoint_wrapper_0_0_pdts_endpoint
   (sync,
    tstamp,
    rst,
    Q,
    clk,
    stat,
    sync_stb,
    sync_first,
    sclk,
    srst,
    rec_clk,
    rec_d,
    sfp_los,
    cdr_los,
    cdr_lol,
    addr,
    tgrp);
  output [3:0]sync;
  output [63:0]tstamp;
  output rst;
  output [0:0]Q;
  output clk;
  output [3:0]stat;
  output sync_stb;
  output sync_first;
  input sclk;
  input srst;
  input rec_clk;
  input rec_d;
  input sfp_los;
  input cdr_los;
  input cdr_lol;
  input [7:0]addr;
  input [1:0]tgrp;

  wire [0:0]Q;
  wire a_first;
  wire a_stb;
  wire acmd_rx_n_0;
  wire acmd_rx_n_10;
  wire acmd_rx_n_11;
  wire acmd_rx_n_2;
  wire acmd_rx_n_3;
  wire acmd_rx_n_4;
  wire acmd_rx_n_5;
  wire acmd_rx_n_6;
  wire acmd_rx_n_7;
  wire acmd_rx_n_8;
  wire acmd_rx_n_9;
  wire [7:0]addr;
  wire adj_n_0;
  wire adj_n_1;
  wire adj_n_10;
  wire adj_n_2;
  wire adj_n_3;
  wire adj_n_4;
  wire adj_n_5;
  wire adj_n_6;
  wire adj_n_7;
  wire adj_n_8;
  wire adj_n_9;
  wire [1:1]c;
  wire cdr_lol;
  wire cdr_los;
  wire clk;
  wire clkgen_n_0;
  wire ctr0;
  wire [7:4]d;
  wire k;
  wire p_1_in;
  wire rec_clk;
  wire rec_d;
  wire rst;
  wire rx_err_f;
  wire rx_n_4;
  wire rx_n_8;
  wire rxphy_n_5;
  wire rxphy_n_6;
  wire rxphy_n_7;
  wire \s_reg[4] ;
  wire s_stb;
  wire sclk;
  wire sfp_los;
  wire srst;
  wire startup_n_1;
  wire startup_n_3;
  wire startup_n_4;
  wire [3:0]stat;
  wire stb;
  wire [3:0]sync;
  wire sync_first;
  wire sync_stb;
  wire [1:0]tgrp;
  wire ts_n_64;
  wire ts_n_65;
  wire ts_n_66;
  wire [63:0]tstamp;
  wire NLW_rxphy_edge_UNCONNECTED;
  wire [3:0]NLW_rxphy_fdel_out_UNCONNECTED;

  design_1_endpoint_wrapper_0_0_pdts_acmd_rx acmd_rx
       (.E(rx_n_4),
        .Q({p_1_in,acmd_rx_n_2,acmd_rx_n_3,acmd_rx_n_4,acmd_rx_n_5,acmd_rx_n_6,acmd_rx_n_7,acmd_rx_n_8,acmd_rx_n_9,acmd_rx_n_10,acmd_rx_n_11}),
        .SR(c),
        .a_first(a_first),
        .a_stb(a_stb),
        .clk(clk),
        .debug(startup_n_3),
        .q({d,sync}),
        .s_reg_0(acmd_rx_n_0));
  design_1_endpoint_wrapper_0_0_pdts_adjust adj
       (.E(\s_reg[4] ),
        .Q({p_1_in,acmd_rx_n_2,acmd_rx_n_3,acmd_rx_n_4,acmd_rx_n_5,acmd_rx_n_6,acmd_rx_n_7,acmd_rx_n_8,acmd_rx_n_9,acmd_rx_n_10,acmd_rx_n_11}),
        .adj_req_reg_0(adj_n_0),
        .\cdel_reg[5]_0 ({adj_n_1,adj_n_2,adj_n_3,adj_n_4,adj_n_5,adj_n_6}),
        .clk(clk),
        .\da_reg[0] (acmd_rx_n_0),
        .\fdel_reg[3]_0 ({adj_n_7,adj_n_8,adj_n_9,adj_n_10}),
        .sclk(sclk),
        .srst(srst));
  design_1_endpoint_wrapper_0_0_pdts_rx_div_mmcm clkgen
       (.clk(clk),
        .debug(rxphy_n_5),
        .phase_locked(clkgen_n_0),
        .rec_clk(rec_clk));
  design_1_endpoint_wrapper_0_0_pdts_rx rx
       (.D(rx_err_f),
        .E(ctr0),
        .SR(c),
        .a_first(a_first),
        .a_stb(a_stb),
        .\actr_reg[0]_0 (rx_n_4),
        .addr(addr),
        .clk(clk),
        .\ctr_reg[7] (ts_n_66),
        .\ctr_reg[7]_0 (ts_n_65),
        .\err_reg[0]_0 (rx_n_8),
        .k(k),
        .out(startup_n_3),
        .q({d,sync}),
        .s_stb(s_stb),
        .stbo(stb),
        .sync_first(sync_first),
        .sync_stb(sync_stb),
        .sync_stb_0(ts_n_64),
        .tgrp(tgrp));
  (* KEEP_HIERARCHY = "soft" *) 
  (* UPSTREAM_MODE = "FALSE" *) 
  design_1_endpoint_wrapper_0_0_pdts_rx_phy rxphy
       (.aligned(rxphy_n_6),
        .cdel({adj_n_1,adj_n_2,adj_n_3,adj_n_4,adj_n_5,adj_n_6}),
        .clk(clk),
        .\edge (NLW_rxphy_edge_UNCONNECTED),
        .fclk(sclk),
        .fdel({adj_n_7,adj_n_8,adj_n_9,adj_n_10}),
        .fdel_out(NLW_rxphy_fdel_out_UNCONNECTED[3:0]),
        .k(k),
        .phase_locked(clkgen_n_0),
        .phase_rst(rxphy_n_5),
        .q({d,sync}),
        .rst(startup_n_4),
        .rx_locked(rxphy_n_7),
        .rxclk(rec_clk),
        .rxd(rec_d),
        .rxrst(startup_n_1),
        .stbo(stb));
  design_1_endpoint_wrapper_0_0_pdts_ep_startup startup
       (.D(rx_err_f),
        .E(\s_reg[4] ),
        .\FSM_onehot_state_reg[0]_0 (adj_n_0),
        .Q(Q),
        .cdr_lol(cdr_lol),
        .cdr_los(cdr_los),
        .clk(clk),
        .\da_reg[1] ({rxphy_n_7,rxphy_n_6}),
        .\da_reg[3] (ts_n_64),
        .out(startup_n_1),
        .\q_reg[2] ({rst,startup_n_3,startup_n_4}),
        .rec_clk(rec_clk),
        .rx_err_f_reg_0(rx_n_8),
        .sclk(sclk),
        .sfp_los(sfp_los),
        .srst(srst),
        .stat(stat));
  design_1_endpoint_wrapper_0_0_pdts_tstamp ts
       (.D({d,sync}),
        .E(ctr0),
        .clk(clk),
        .\ctr_reg[0]_0 (startup_n_3),
        .\ctr_reg[5]_0 (ts_n_66),
        .\ctr_reg[6]_0 (ts_n_65),
        .lock_reg_0(ts_n_64),
        .s_stb(s_stb),
        .tstamp(tstamp[63:1]),
        .\tstamp_i_reg[0]_0 (tstamp[0]));
endmodule

(* ORIG_REF_NAME = "pdts_ep_startup" *) 
module design_1_endpoint_wrapper_0_0_pdts_ep_startup
   (E,
    out,
    \q_reg[2] ,
    D,
    stat,
    Q,
    sclk,
    rec_clk,
    rx_err_f_reg_0,
    clk,
    sfp_los,
    cdr_los,
    srst,
    cdr_lol,
    \FSM_onehot_state_reg[0]_0 ,
    \da_reg[3] ,
    \da_reg[1] );
  output [0:0]E;
  output out;
  output [2:0]\q_reg[2] ;
  output [0:0]D;
  output [3:0]stat;
  output [0:0]Q;
  input sclk;
  input rec_clk;
  input rx_err_f_reg_0;
  input clk;
  input sfp_los;
  input cdr_los;
  input srst;
  input cdr_lol;
  input \FSM_onehot_state_reg[0]_0 ;
  input \da_reg[3] ;
  input [1:0]\da_reg[1] ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_10_n_0 ;
  wire \FSM_onehot_state[0]_i_11_n_0 ;
  wire \FSM_onehot_state[0]_i_8_n_0 ;
  wire \FSM_onehot_state[0]_i_9_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[8]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[11] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire [0:0]Q;
  wire cctr;
  wire cctr0;
  wire \cctr[15]_i_1_n_0 ;
  wire [15:0]cctr_reg;
  wire \cctr_rnd[15]_i_2_n_0 ;
  wire \cctr_rnd[15]_i_3_n_0 ;
  wire cdr_lol;
  wire cdr_los;
  wire chk_n_0;
  wire chk_n_1;
  wire chk_n_2;
  wire chk_n_3;
  wire chk_n_4;
  wire chk_n_7;
  wire chk_n_9;
  wire clear;
  wire clk;
  wire [7:6]\ctrs_reg[0]_0 ;
  wire [1:0]\da_reg[1] ;
  wire \da_reg[3] ;
  wire link_ok;
  wire out;
  wire p_0_in;
  wire p_0_in7_in;
  wire p_1_in4_in;
  wire p_6_in;
  wire [15:0]plusOp__0;
  wire [15:0]plusOp__1;
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
  wire [7:0]plusOp__5;
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
  wire [2:0]\q_reg[2] ;
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
  wire rxphy_aligned_i;
  wire sclk;
  wire [15:0]sctr_reg;
  wire [15:0]sel0;
  wire sfp_los;
  wire srst;
  wire [3:0]stat;
  wire \stat[2]_INST_0_i_1_n_0 ;
  wire sync_sclk_n_1;
  wire sync_sclk_n_2;
  wire sync_sclk_n_3;
  wire sync_sclk_n_4;
  wire sync_sclk_n_5;
  wire sync_sclk_n_6;
  wire sync_sclk_n_7;
  wire sync_sclk_n_8;
  wire t;
  wire td;
  wire [7:6]NLW_plusOp__28_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_plusOp__28_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_plusOp_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_state[0]_i_10 
       (.I0(sel0[13]),
        .I1(sel0[14]),
        .I2(sel0[11]),
        .I3(sel0[12]),
        .I4(sel0[15]),
        .I5(p_0_in7_in),
        .O(\FSM_onehot_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_onehot_state[0]_i_11 
       (.I0(sel0[7]),
        .I1(sel0[8]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .I4(sel0[10]),
        .I5(sel0[9]),
        .O(\FSM_onehot_state[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[0]_i_8 
       (.I0(p_0_in7_in),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(p_0_in),
        .O(\FSM_onehot_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_state[0]_i_9 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\FSM_onehot_state[0]_i_11_n_0 ),
        .O(\FSM_onehot_state[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(Q),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(p_0_in),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(p_0_in7_in),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\FSM_onehot_state[8]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "w_adjust:000000010000,w_align:001000000000,w_freq:010000000000,err_p:000000000010,err_t:000000001000,w_link:000100000000,w_rst:100000000000,w_rdy:000000100000,err_r:000000000100,w_phase:000001000000,run:000000000001,w_lock:000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(sclk),
        .CE(sync_sclk_n_1),
        .D(sync_sclk_n_7),
        .Q(Q),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000010000,w_align:001000000000,w_freq:010000000000,err_p:000000000010,err_t:000000001000,w_link:000100000000,w_rst:100000000000,w_rdy:000000100000,err_r:000000000100,w_phase:000001000000,run:000000000001,w_lock:000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(sclk),
        .CE(sync_sclk_n_1),
        .D(p_6_in),
        .Q(p_0_in7_in),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000010000,w_align:001000000000,w_freq:010000000000,err_p:000000000010,err_t:000000001000,w_link:000100000000,w_rst:100000000000,w_rdy:000000100000,err_r:000000000100,w_phase:000001000000,run:000000000001,w_lock:000010000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[11] 
       (.C(sclk),
        .CE(sync_sclk_n_1),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[11] ),
        .S(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000010000,w_align:001000000000,w_freq:010000000000,err_p:000000000010,err_t:000000001000,w_link:000100000000,w_rst:100000000000,w_rdy:000000100000,err_r:000000000100,w_phase:000001000000,run:000000000001,w_lock:000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sclk),
        .CE(sync_sclk_n_1),
        .D(sync_sclk_n_6),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000010000,w_align:001000000000,w_freq:010000000000,err_p:000000000010,err_t:000000001000,w_link:000100000000,w_rst:100000000000,w_rdy:000000100000,err_r:000000000100,w_phase:000001000000,run:000000000001,w_lock:000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sclk),
        .CE(sync_sclk_n_1),
        .D(sync_sclk_n_5),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000010000,w_align:001000000000,w_freq:010000000000,err_p:000000000010,err_t:000000001000,w_link:000100000000,w_rst:100000000000,w_rdy:000000100000,err_r:000000000100,w_phase:000001000000,run:000000000001,w_lock:000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(sclk),
        .CE(sync_sclk_n_1),
        .D(sync_sclk_n_4),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000010000,w_align:001000000000,w_freq:010000000000,err_p:000000000010,err_t:000000001000,w_link:000100000000,w_rst:100000000000,w_rdy:000000100000,err_r:000000000100,w_phase:000001000000,run:000000000001,w_lock:000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(sclk),
        .CE(sync_sclk_n_1),
        .D(chk_n_4),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000010000,w_align:001000000000,w_freq:010000000000,err_p:000000000010,err_t:000000001000,w_link:000100000000,w_rst:100000000000,w_rdy:000000100000,err_r:000000000100,w_phase:000001000000,run:000000000001,w_lock:000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(sclk),
        .CE(sync_sclk_n_1),
        .D(p_1_in4_in),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000010000,w_align:001000000000,w_freq:010000000000,err_p:000000000010,err_t:000000001000,w_link:000100000000,w_rst:100000000000,w_rdy:000000100000,err_r:000000000100,w_phase:000001000000,run:000000000001,w_lock:000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(sclk),
        .CE(sync_sclk_n_1),
        .D(sync_sclk_n_3),
        .Q(p_1_in4_in),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000010000,w_align:001000000000,w_freq:010000000000,err_p:000000000010,err_t:000000001000,w_link:000100000000,w_rst:100000000000,w_rdy:000000100000,err_r:000000000100,w_phase:000001000000,run:000000000001,w_lock:000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(sclk),
        .CE(sync_sclk_n_1),
        .D(chk_n_3),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000010000,w_align:001000000000,w_freq:010000000000,err_p:000000000010,err_t:000000001000,w_link:000100000000,w_rst:100000000000,w_rdy:000000100000,err_r:000000000100,w_phase:000001000000,run:000000000001,w_lock:000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(sclk),
        .CE(sync_sclk_n_1),
        .D(chk_n_2),
        .Q(p_6_in),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_adjust:000000010000,w_align:001000000000,w_freq:010000000000,err_p:000000000010,err_t:000000001000,w_link:000100000000,w_rst:100000000000,w_rdy:000000100000,err_r:000000000100,w_phase:000001000000,run:000000000001,w_lock:000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(sclk),
        .CE(sync_sclk_n_1),
        .D(sync_sclk_n_2),
        .Q(p_0_in),
        .R(srst));
  design_1_endpoint_wrapper_0_0_pdts_del adel
       (.E(E),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .\s_reg[4][0]_0 (\FSM_onehot_state_reg[0]_0 ),
        .sclk(sclk));
  LUT1 #(
    .INIT(2'h1)) 
    \cctr[0]_i_1 
       (.I0(cctr_reg[0]),
        .O(plusOp__1[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \cctr[15]_i_1 
       (.I0(cctr),
        .I1(srst),
        .O(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[0] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[0]),
        .Q(cctr_reg[0]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[10] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[10]),
        .Q(cctr_reg[10]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[11] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[11]),
        .Q(cctr_reg[11]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[12] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[12]),
        .Q(cctr_reg[12]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[13] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[13]),
        .Q(cctr_reg[13]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[14] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[14]),
        .Q(cctr_reg[14]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[15] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[15]),
        .Q(cctr_reg[15]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[1] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[1]),
        .Q(cctr_reg[1]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[2] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[2]),
        .Q(cctr_reg[2]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[3] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[3]),
        .Q(cctr_reg[3]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[4] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[4]),
        .Q(cctr_reg[4]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[5] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[5]),
        .Q(cctr_reg[5]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[6] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[6]),
        .Q(cctr_reg[6]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[7] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[7]),
        .Q(cctr_reg[7]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[8] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[8]),
        .Q(cctr_reg[8]),
        .R(\cctr[15]_i_1_n_0 ));
  FDRE \cctr_reg[9] 
       (.C(sclk),
        .CE(cctr0),
        .D(plusOp__1[9]),
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
        .Q(sel0[0]),
        .R(srst));
  FDRE \cctr_rnd_reg[10] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[10]),
        .Q(sel0[10]),
        .R(srst));
  FDRE \cctr_rnd_reg[11] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[11]),
        .Q(sel0[11]),
        .R(srst));
  FDRE \cctr_rnd_reg[12] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[12]),
        .Q(sel0[12]),
        .R(srst));
  FDRE \cctr_rnd_reg[13] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[13]),
        .Q(sel0[13]),
        .R(srst));
  FDRE \cctr_rnd_reg[14] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[14]),
        .Q(sel0[14]),
        .R(srst));
  FDRE \cctr_rnd_reg[15] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[15]),
        .Q(sel0[15]),
        .R(srst));
  FDRE \cctr_rnd_reg[1] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[1]),
        .Q(sel0[1]),
        .R(srst));
  FDRE \cctr_rnd_reg[2] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[2]),
        .Q(sel0[2]),
        .R(srst));
  FDRE \cctr_rnd_reg[3] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[3]),
        .Q(sel0[3]),
        .R(srst));
  FDRE \cctr_rnd_reg[4] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[4]),
        .Q(sel0[4]),
        .R(srst));
  FDRE \cctr_rnd_reg[5] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[5]),
        .Q(sel0[5]),
        .R(srst));
  FDRE \cctr_rnd_reg[6] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[6]),
        .Q(sel0[6]),
        .R(srst));
  FDRE \cctr_rnd_reg[7] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[7]),
        .Q(sel0[7]),
        .R(srst));
  FDRE \cctr_rnd_reg[8] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[8]),
        .Q(sel0[8]),
        .R(srst));
  FDRE \cctr_rnd_reg[9] 
       (.C(sclk),
        .CE(cctr),
        .D(cctr_reg[9]),
        .Q(sel0[9]),
        .R(srst));
  design_1_endpoint_wrapper_0_0_pdts_chklock chk
       (.D({chk_n_2,chk_n_3,chk_n_4}),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state[0]_i_8_n_0 ),
        .\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state[0]_i_9_n_0 ),
        .\FSM_onehot_state_reg[0]_1 (\FSM_onehot_state[0]_i_10_n_0 ),
        .\FSM_onehot_state_reg[4] (sync_sclk_n_8),
        .\FSM_onehot_state_reg[8] (chk_n_0),
        .\FSM_onehot_state_reg[8]_0 (\FSM_onehot_state[8]_i_2_n_0 ),
        .Q({\FSM_onehot_state_reg_n_0_[11] ,p_0_in7_in,p_0_in,p_6_in,\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,\FSM_onehot_state_reg_n_0_[1] }),
        .cdr_lol(cdr_lol),
        .cdr_los(cdr_los),
        .\ctrs_reg[0][4]_0 (chk_n_7),
        .\ctrs_reg[0][6]_0 (chk_n_1),
        .\ctrs_reg[0][7]_0 (\ctrs_reg[0]_0 ),
        .\ctrs_reg[0][7]_1 (chk_n_9),
        .link_ok(link_ok),
        .out(rxphy_aligned_i),
        .sclk(sclk),
        .sfp_los(sfp_los),
        .srst(srst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__28_carry
       (.CI(cctr_reg[0]),
        .CI_TOP(1'b0),
        .CO({plusOp__28_carry_n_0,plusOp__28_carry_n_1,plusOp__28_carry_n_2,plusOp__28_carry_n_3,plusOp__28_carry_n_4,plusOp__28_carry_n_5,plusOp__28_carry_n_6,plusOp__28_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__1[8:1]),
        .S(cctr_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp__28_carry__0
       (.CI(plusOp__28_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp__28_carry__0_CO_UNCONNECTED[7:6],plusOp__28_carry__0_n_2,plusOp__28_carry__0_n_3,plusOp__28_carry__0_n_4,plusOp__28_carry__0_n_5,plusOp__28_carry__0_n_6,plusOp__28_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp__28_carry__0_O_UNCONNECTED[7],plusOp__1[15:9]}),
        .S({1'b0,cctr_reg[15:9]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry
       (.CI(sctr_reg[0]),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__0[8:1]),
        .S(sctr_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[7:6],plusOp_carry__0_n_2,plusOp_carry__0_n_3,plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[7],plusOp__0[15:9]}),
        .S({1'b0,sctr_reg[15:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \rctr[0]_i_1 
       (.I0(\rctr_reg_n_0_[0] ),
        .O(plusOp__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rctr[1]_i_1 
       (.I0(\rctr_reg_n_0_[0] ),
        .I1(\rctr_reg_n_0_[1] ),
        .O(plusOp__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rctr[2]_i_1 
       (.I0(\rctr_reg_n_0_[0] ),
        .I1(\rctr_reg_n_0_[1] ),
        .I2(\rctr_reg_n_0_[2] ),
        .O(plusOp__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rctr[3]_i_1 
       (.I0(\rctr_reg_n_0_[1] ),
        .I1(\rctr_reg_n_0_[0] ),
        .I2(\rctr_reg_n_0_[2] ),
        .I3(\rctr_reg_n_0_[3] ),
        .O(plusOp__5[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rctr[4]_i_1 
       (.I0(\rctr_reg_n_0_[2] ),
        .I1(\rctr_reg_n_0_[0] ),
        .I2(\rctr_reg_n_0_[1] ),
        .I3(\rctr_reg_n_0_[3] ),
        .I4(\rctr_reg_n_0_[4] ),
        .O(plusOp__5[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rctr[5]_i_1 
       (.I0(\rctr_reg_n_0_[3] ),
        .I1(\rctr_reg_n_0_[1] ),
        .I2(\rctr_reg_n_0_[0] ),
        .I3(\rctr_reg_n_0_[2] ),
        .I4(\rctr_reg_n_0_[4] ),
        .I5(\rctr_reg_n_0_[5] ),
        .O(plusOp__5[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \rctr[6]_i_1 
       (.I0(\rctr[7]_i_3_n_0 ),
        .I1(\rctr_reg_n_0_[6] ),
        .O(plusOp__5[6]));
  LUT3 #(
    .INIT(8'h78)) 
    \rctr[7]_i_2 
       (.I0(\rctr[7]_i_3_n_0 ),
        .I1(\rctr_reg_n_0_[6] ),
        .I2(rctr_reg),
        .O(plusOp__5[7]));
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
        .D(plusOp__5[0]),
        .Q(\rctr_reg_n_0_[0] ),
        .R(clear));
  FDRE \rctr_reg[1] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__5[1]),
        .Q(\rctr_reg_n_0_[1] ),
        .R(clear));
  FDRE \rctr_reg[2] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__5[2]),
        .Q(\rctr_reg_n_0_[2] ),
        .R(clear));
  FDRE \rctr_reg[3] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__5[3]),
        .Q(\rctr_reg_n_0_[3] ),
        .R(clear));
  FDRE \rctr_reg[4] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__5[4]),
        .Q(\rctr_reg_n_0_[4] ),
        .R(clear));
  FDRE \rctr_reg[5] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__5[5]),
        .Q(\rctr_reg_n_0_[5] ),
        .R(clear));
  FDRE \rctr_reg[6] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__5[6]),
        .Q(\rctr_reg_n_0_[6] ),
        .R(clear));
  FDSE \rctr_reg[7] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp__5[7]),
        .Q(rctr_reg),
        .S(clear));
  FDRE rx_err_f_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx_err_f_reg_0),
        .Q(D),
        .R(\q_reg[2] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    \sctr[0]_i_1 
       (.I0(sctr_reg[0]),
        .O(plusOp__0[0]));
  FDRE \sctr_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[0]),
        .Q(sctr_reg[0]),
        .R(srst));
  FDRE \sctr_reg[10] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[10]),
        .Q(sctr_reg[10]),
        .R(srst));
  FDRE \sctr_reg[11] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[11]),
        .Q(sctr_reg[11]),
        .R(srst));
  FDRE \sctr_reg[12] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[12]),
        .Q(sctr_reg[12]),
        .R(srst));
  FDRE \sctr_reg[13] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[13]),
        .Q(sctr_reg[13]),
        .R(srst));
  FDRE \sctr_reg[14] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[14]),
        .Q(sctr_reg[14]),
        .R(srst));
  FDRE \sctr_reg[15] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[15]),
        .Q(sctr_reg[15]),
        .R(srst));
  FDRE \sctr_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(sctr_reg[1]),
        .R(srst));
  FDRE \sctr_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(sctr_reg[2]),
        .R(srst));
  FDRE \sctr_reg[3] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(sctr_reg[3]),
        .R(srst));
  FDRE \sctr_reg[4] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[4]),
        .Q(sctr_reg[4]),
        .R(srst));
  FDRE \sctr_reg[5] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[5]),
        .Q(sctr_reg[5]),
        .R(srst));
  FDRE \sctr_reg[6] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[6]),
        .Q(sctr_reg[6]),
        .R(srst));
  FDRE \sctr_reg[7] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[7]),
        .Q(sctr_reg[7]),
        .R(srst));
  FDRE \sctr_reg[8] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[8]),
        .Q(sctr_reg[8]),
        .R(srst));
  FDRE \sctr_reg[9] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__0[9]),
        .Q(sctr_reg[9]),
        .R(srst));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \stat[0]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(p_6_in),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(stat[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \stat[1]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(p_0_in7_in),
        .I4(p_1_in4_in),
        .O(stat[1]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \stat[2]_INST_0 
       (.I0(\stat[2]_INST_0_i_1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(p_0_in),
        .I3(p_1_in4_in),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(stat[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \stat[2]_INST_0_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\stat[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[3]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(Q),
        .O(stat[3]));
  design_1_endpoint_wrapper_0_0_pdts_synchro sync_c
       (.SR(clear),
        .link_ok(link_ok),
        .rec_clk(rec_clk),
        .sclk(sclk));
  design_1_endpoint_wrapper_0_0_pdts_synchro__parameterized2 sync_clk
       (.Q({\FSM_onehot_state_reg_n_0_[11] ,p_0_in7_in,p_0_in,p_6_in,\FSM_onehot_state_reg_n_0_[7] ,p_1_in4_in,\FSM_onehot_state_reg_n_0_[4] }),
        .clk(clk),
        .\q_reg[2]_0 (\q_reg[2] ),
        .sclk(sclk));
  design_1_endpoint_wrapper_0_0_pdts_synchro__parameterized1 sync_rec_clk
       (.Q({\FSM_onehot_state_reg_n_0_[11] ,p_0_in7_in,p_6_in,\FSM_onehot_state_reg_n_0_[4] }),
        .out(out),
        .rec_clk(rec_clk),
        .sclk(sclk));
  design_1_endpoint_wrapper_0_0_pdts_synchro__parameterized0 sync_sclk
       (.D({sync_sclk_n_2,sync_sclk_n_3,sync_sclk_n_4,sync_sclk_n_5,sync_sclk_n_6,sync_sclk_n_7}),
        .E(sync_sclk_n_1),
        .\FSM_onehot_state[4]_i_2_0 (\ctrs_reg[0]_0 ),
        .\FSM_onehot_state[4]_i_2_1 (chk_n_7),
        .\FSM_onehot_state_reg[0] (chk_n_0),
        .\FSM_onehot_state_reg[0]_0 (chk_n_9),
        .\FSM_onehot_state_reg[0]_1 (\FSM_onehot_state_reg[0]_0 ),
        .\FSM_onehot_state_reg[1] (\stat[2]_INST_0_i_1_n_0 ),
        .\FSM_onehot_state_reg[2] (\FSM_onehot_state[2]_i_2_n_0 ),
        .\FSM_onehot_state_reg[6] (chk_n_1),
        .Q({p_0_in,\FSM_onehot_state_reg_n_0_[7] ,p_1_in4_in,\FSM_onehot_state_reg_n_0_[5] ,\FSM_onehot_state_reg_n_0_[4] ,Q}),
        .adj_req_reg(sync_sclk_n_8),
        .clk(clk),
        .\da_reg[3]_0 ({\da_reg[3] ,D,\da_reg[1] }),
        .out(rxphy_aligned_i),
        .sclk(sclk));
  design_1_endpoint_wrapper_0_0_pdts_synchro_0 sync_t
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

(* ORIG_REF_NAME = "pdts_rx" *) 
module design_1_endpoint_wrapper_0_0_pdts_rx
   (E,
    sync_stb,
    s_stb,
    sync_first,
    \actr_reg[0]_0 ,
    SR,
    a_stb,
    a_first,
    \err_reg[0]_0 ,
    clk,
    q,
    stbo,
    k,
    \ctr_reg[7] ,
    \ctr_reg[7]_0 ,
    sync_stb_0,
    out,
    addr,
    tgrp,
    D);
  output [0:0]E;
  output sync_stb;
  output s_stb;
  output sync_first;
  output [0:0]\actr_reg[0]_0 ;
  output [0:0]SR;
  output a_stb;
  output a_first;
  output \err_reg[0]_0 ;
  input clk;
  input [7:0]q;
  input stbo;
  input k;
  input \ctr_reg[7] ;
  input \ctr_reg[7]_0 ;
  input sync_stb_0;
  input [0:0]out;
  input [7:0]addr;
  input [1:0]tgrp;
  input [0:0]D;

  wire [0:0]D;
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
  wire a_match_reg_n_0;
  wire a_stb;
  wire [4:0]actr_reg;
  wire [0:0]\actr_reg[0]_0 ;
  wire [7:0]addr;
  wire \c[3]_i_5_n_0 ;
  wire cksum_n_0;
  wire cksum_n_3;
  wire clk;
  wire \ctr_reg[7] ;
  wire \ctr_reg[7]_0 ;
  wire [2:0]err;
  wire err113_out__4;
  wire err115_out__2;
  wire err1__6;
  wire \err[0]_i_10_n_0 ;
  wire \err[0]_i_5_n_0 ;
  wire \err[1]_i_3_n_0 ;
  wire \err[2]_i_2_n_0 ;
  wire \err[2]_i_3_n_0 ;
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
  wire pend_f1__1;
  wire [4:1]plusOp__2;
  wire [4:0]plusOp__3;
  wire [7:0]q;
  wire s_match;
  wire s_match_r_reg_n_0;
  wire s_stb;
  wire sctr0;
  wire \sctr[0]_i_1__0_n_0 ;
  wire [4:0]sctr_reg;
  wire [3:3]slen;
  wire [3:0]slen_r;
  wire \slen_r[3]_i_1_n_0 ;
  wire \slen_r[3]_i_3_n_0 ;
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
  wire sync_first_INST_0_i_3_n_0;
  wire sync_stb;
  wire sync_stb_0;
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
    .INIT(64'h00000000EEEEAAAE)) 
    a_match_i_1
       (.I0(a_match_reg_n_0),
        .I1(a_match_i_2_n_0),
        .I2(a_match_i_3_n_0),
        .I3(a_match_i_4_n_0),
        .I4(a_match_i_5_n_0),
        .I5(ka),
        .O(a_match_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    a_match_i_2
       (.I0(\err[0]_i_10_n_0 ),
        .I1(actr_reg[1]),
        .I2(actr_reg[0]),
        .I3(actr_reg[2]),
        .I4(stbo),
        .I5(\err[0]_i_5_n_0 ),
        .O(a_match_i_2_n_0));
  LUT5 #(
    .INIT(32'hFAFA6FF6)) 
    a_match_i_3
       (.I0(q[7]),
        .I1(addr[7]),
        .I2(q[6]),
        .I3(addr[6]),
        .I4(actr_reg[0]),
        .O(a_match_i_3_n_0));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFBBEFBA)) 
    a_match_i_4
       (.I0(a_match_i_6_n_0),
        .I1(actr_reg[0]),
        .I2(addr[2]),
        .I3(q[2]),
        .I4(addr[5]),
        .I5(q[5]),
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
    .INIT(64'hFFFFFFFFBEFFF5B4)) 
    a_match_i_6
       (.I0(actr_reg[0]),
        .I1(addr[0]),
        .I2(q[0]),
        .I3(addr[1]),
        .I4(q[1]),
        .I5(a_match_i_7_n_0),
        .O(a_match_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFAFA6FF6)) 
    a_match_i_7
       (.I0(q[4]),
        .I1(addr[4]),
        .I2(q[3]),
        .I3(addr[3]),
        .I4(actr_reg[0]),
        .O(a_match_i_7_n_0));
  FDRE a_match_reg
       (.C(clk),
        .CE(1'b1),
        .D(a_match_i_1_n_0),
        .Q(a_match_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \actr[0]_i_1 
       (.I0(actr_reg[0]),
        .O(plusOp__3[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \actr[1]_i_1 
       (.I0(actr_reg[0]),
        .I1(actr_reg[1]),
        .O(plusOp__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \actr[2]_i_1 
       (.I0(actr_reg[0]),
        .I1(actr_reg[1]),
        .I2(actr_reg[2]),
        .O(plusOp__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \actr[3]_i_1 
       (.I0(actr_reg[1]),
        .I1(actr_reg[0]),
        .I2(actr_reg[2]),
        .I3(actr_reg[3]),
        .O(plusOp__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
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
        .CE(cksum_n_0),
        .D(plusOp__3[0]),
        .Q(actr_reg[0]),
        .R(ka));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[1] 
       (.C(clk),
        .CE(cksum_n_0),
        .D(plusOp__3[1]),
        .Q(actr_reg[1]),
        .R(ka));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[2] 
       (.C(clk),
        .CE(cksum_n_0),
        .D(plusOp__3[2]),
        .Q(actr_reg[2]),
        .R(ka));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[3] 
       (.C(clk),
        .CE(cksum_n_0),
        .D(plusOp__3[3]),
        .Q(actr_reg[3]),
        .R(ka));
  FDRE #(
    .INIT(1'b0)) 
    \actr_reg[4] 
       (.C(clk),
        .CE(cksum_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \c[3]_i_5 
       (.I0(a_match_reg_n_0),
        .I1(stbo),
        .I2(k),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\c[3]_i_5_n_0 ));
  design_1_endpoint_wrapper_0_0_pdts_cksum cksum
       (.D(state),
        .E(cksum_n_0),
        .Q({\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .clk(clk),
        .err113_out__4(err113_out__4),
        .err115_out__2(err115_out__2),
        .err1__6(err1__6),
        .\err_reg[0] (\err[0]_i_5_n_0 ),
        .k(k),
        .ka(ka),
        .q(q),
        .\state_reg[0] (cksum_n_3),
        .\state_reg[0]_0 (err_c[0]),
        .\state_reg[0]_1 (\state[1]_i_3_n_0 ),
        .\state_reg[0]_2 (\state[1]_i_4_n_0 ),
        .\state_reg[0]_3 (\state[1]_i_6_n_0 ),
        .stbo(stbo));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \ctr[7]_i_1 
       (.I0(\ctr_reg[7] ),
        .I1(issue),
        .I2(pend1__0),
        .I3(slen),
        .I4(pend_f1__1),
        .I5(\ctr_reg[7]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \ctr[7]_i_4 
       (.I0(s_match_r_reg_n_0),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(stbo),
        .I4(pend),
        .O(pend1__0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \err[0]_i_10 
       (.I0(actr_reg[3]),
        .I1(actr_reg[4]),
        .O(\err[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00020000AAAA0002)) 
    \err[0]_i_2 
       (.I0(\err[2]_i_3_n_0 ),
        .I1(sctr_reg[0]),
        .I2(sctr_reg[2]),
        .I3(sctr_reg[1]),
        .I4(slen),
        .I5(sctr_reg[3]),
        .O(err115_out__2));
  LUT6 #(
    .INIT(64'h0000015500000000)) 
    \err[0]_i_4 
       (.I0(\err[0]_i_5_n_0 ),
        .I1(actr_reg[1]),
        .I2(actr_reg[0]),
        .I3(actr_reg[2]),
        .I4(\err[0]_i_10_n_0 ),
        .I5(ka),
        .O(err113_out__4));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \err[0]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\err[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \err[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(err1__6),
        .I3(err_c[2]),
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
  LUT6 #(
    .INIT(64'hFFFFD400D400D400)) 
    \err[2]_i_1 
       (.I0(sctr_reg[3]),
        .I1(slen),
        .I2(\err[2]_i_2_n_0 ),
        .I3(\err[2]_i_3_n_0 ),
        .I4(\err[2]_i_4_n_0 ),
        .I5(\err[2]_i_5_n_0 ),
        .O(err_c[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \err[2]_i_2 
       (.I0(sctr_reg[1]),
        .I1(sctr_reg[2]),
        .I2(sctr_reg[0]),
        .O(\err[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \err[2]_i_3 
       (.I0(sctr_reg[4]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(stbo),
        .I4(k),
        .O(\err[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \err[2]_i_4 
       (.I0(k),
        .I1(stbo),
        .I2(q[0]),
        .I3(actr_reg[4]),
        .I4(actr_reg[3]),
        .O(\err[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00005700)) 
    \err[2]_i_5 
       (.I0(actr_reg[2]),
        .I1(actr_reg[0]),
        .I2(actr_reg[1]),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h10)) 
    pend_f_i_1
       (.I0(out),
        .I1(issue),
        .I2(pend_f1__1),
        .O(pend_f0));
  FDRE pend_f_reg
       (.C(clk),
        .CE(1'b1),
        .D(pend_f0),
        .Q(pend_f),
        .R(1'b0));
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
    \q[14]_i_1 
       (.I0(\c[3]_i_5_n_0 ),
        .I1(actr_reg[0]),
        .I2(actr_reg[1]),
        .I3(actr_reg[2]),
        .I4(actr_reg[4]),
        .I5(actr_reg[3]),
        .O(\actr_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_err_f_i_1
       (.I0(err[0]),
        .I1(err[2]),
        .I2(err[1]),
        .I3(D),
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
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sctr[0]_i_1__0 
       (.I0(sctr_reg[0]),
        .O(\sctr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sctr[3]_i_1 
       (.I0(sctr_reg[1]),
        .I1(sctr_reg[0]),
        .I2(sctr_reg[2]),
        .I3(sctr_reg[3]),
        .O(plusOp__2[3]));
  LUT3 #(
    .INIT(8'h80)) 
    \sctr[4]_i_1 
       (.I0(q[0]),
        .I1(stbo),
        .I2(k),
        .O(ks));
  LUT3 #(
    .INIT(8'h40)) 
    \sctr[4]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(stbo),
        .O(sctr0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
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
       (.I0(q[1]),
        .I1(q[0]),
        .I2(q[3]),
        .I3(q[2]),
        .O(slen));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \state[1]_i_4 
       (.I0(slen),
        .I1(stbo),
        .I2(state32_in),
        .I3(sctr_reg[0]),
        .O(\state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00008040)) 
    \state[1]_i_6 
       (.I0(q[0]),
        .I1(stbo),
        .I2(k),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[1]_i_6_n_0 ));
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
        .CE(cksum_n_3),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(out));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(cksum_n_3),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    sync_first_INST_0
       (.I0(sync_stb_0),
        .I1(issue),
        .I2(pend_f1__1),
        .O(sync_first));
  LUT5 #(
    .INIT(32'h90090000)) 
    sync_first_INST_0_i_1
       (.I0(ts[3]),
        .I1(\vctr_reg_n_0_[3] ),
        .I2(ts[2]),
        .I3(\vctr_reg_n_0_[2] ),
        .I4(sync_first_INST_0_i_3_n_0),
        .O(issue));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    sync_first_INST_0_i_2
       (.I0(state32_in),
        .I1(s_match_r_reg_n_0),
        .I2(sctr_reg[0]),
        .I3(sctr0),
        .I4(pend_f),
        .O(pend_f1__1));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    sync_first_INST_0_i_3
       (.I0(\vctr_reg_n_0_[0] ),
        .I1(ts[0]),
        .I2(\vctr_reg_n_0_[1] ),
        .I3(ts[1]),
        .O(sync_first_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sync_first_INST_0_i_4
       (.I0(sctr_reg[1]),
        .I1(sctr_reg[2]),
        .I2(sctr_reg[3]),
        .I3(sctr_reg[4]),
        .O(state32_in));
  LUT2 #(
    .INIT(4'h8)) 
    sync_stb_INST_0
       (.I0(s_stb),
        .I1(sync_stb_0),
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
  LUT1 #(
    .INIT(2'h1)) 
    \vctr[0]_i_1 
       (.I0(\vctr_reg_n_0_[0] ),
        .O(\vctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h3C2C)) 
    \vctr[1]_i_1 
       (.I0(\vctr_reg_n_0_[3] ),
        .I1(\vctr_reg_n_0_[1] ),
        .I2(\vctr_reg_n_0_[0] ),
        .I3(\vctr_reg_n_0_[2] ),
        .O(\vctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vctr[2]_i_1 
       (.I0(\vctr_reg_n_0_[1] ),
        .I1(\vctr_reg_n_0_[0] ),
        .I2(\vctr_reg_n_0_[2] ),
        .O(\vctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
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
module design_1_endpoint_wrapper_0_0_pdts_rx_div_mmcm
   (phase_locked,
    clk,
    rec_clk,
    debug);
  output phase_locked;
  output clk;
  input rec_clk;
  input [0:0]debug;

  wire clk;
  wire clkfbin;
  wire clkfbout;
  wire clki;
  wire [0:0]debug;
  wire phase_locked;
  wire rec_clk;
  wire NLW_mmcm_CDDCDONE_UNCONNECTED;
  wire NLW_mmcm_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_CLKOUT1_UNCONNECTED;
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
    .CLKIN1_PERIOD(4.000000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE_F(20.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
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
        .CLKOUT1(NLW_mmcm_CLKOUT1_UNCONNECTED),
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
        .RST(debug));
endmodule

(* ORIG_REF_NAME = "pdts_rx_phy" *) (* UPSTREAM_MODE = "FALSE" *) (* keep_hierarchy = "soft" *) 
module design_1_endpoint_wrapper_0_0_pdts_rx_phy
   (fclk,
    fdel,
    cdel,
    fdel_out,
    \edge ,
    rxclk,
    rxrst,
    rxd,
    phase_rst,
    phase_locked,
    aligned,
    clk,
    rst,
    rx_locked,
    q,
    k,
    stbo);
  input fclk;
  input [3:0]fdel;
  input [5:0]cdel;
  output [3:0]fdel_out;
  output \edge ;
  input rxclk;
  input rxrst;
  input rxd;
  output phase_rst;
  input phase_locked;
  output aligned;
  input clk;
  input rst;
  output rx_locked;
  output [7:0]q;
  output k;
  output stbo;

  wire \<const0> ;
  (* MARK_DEBUG *) wire aligned_i;
  wire aligned_i_i_1_n_0;
  wire c;
  wire c0;
  wire c_i_2_n_0;
  wire c_i_3_n_0;
  wire [5:0]cdel;
  (* MARK_DEBUG *) wire cerr;
  wire clk;
  (* MARK_DEBUG *) wire [7:0]ctr;
  wire ctr1;
  wire \ctr[7]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [4:0]dctr;
  wire \dctr[0]_i_1_n_0 ;
  wire \dctr[4]_i_1_n_0 ;
  wire \dctr[4]_i_3_n_0 ;
  wire [4:1]dctr__0;
  (* MARK_DEBUG *) wire derr;
  (* MARK_DEBUG *) wire [7:0]di;
  (* MARK_DEBUG *) wire done;
  wire done_inferred_i_2_n_0;
  (* MARK_DEBUG *) wire [7:0]ectr;
  wire [0:0]ectr0_in;
  wire \ectr[0]_i_1_n_0 ;
  wire \ectr[1]_i_1_n_0 ;
  wire \ectr[2]_i_1_n_0 ;
  wire \ectr[3]_i_1_n_0 ;
  wire \ectr[4]_i_1_n_0 ;
  wire \ectr[5]_i_1_n_0 ;
  wire \ectr[6]_i_1_n_0 ;
  wire \ectr[7]_i_1_n_0 ;
  wire f;
  wire f0;
  wire fclk;
  wire [3:0]fctr_reg;
  wire [3:0]fdel;
  (* MARK_DEBUG *) wire fr;
  (* MARK_DEBUG *) wire [3:0]kctr;
  wire [3:0]kctr0_in;
  wire \kctr[2]_i_2_n_0 ;
  wire \kctr[3]_i_2_n_0 ;
  wire \kctr[3]_i_3_n_0 ;
  wire \kctr[3]_i_4_n_0 ;
  wire \kctr[3]_i_5_n_0 ;
  wire \kctr[3]_i_6_n_0 ;
  (* MARK_DEBUG *) wire kerr;
  (* MARK_DEBUG *) wire ki;
  (* MARK_DEBUG *) wire kok;
  (* MARK_DEBUG *) wire [7:0]lctr;
  wire \lctr[0]_i_1_n_0 ;
  wire \lctr[1]_i_1_n_0 ;
  wire \lctr[2]_i_1_n_0 ;
  wire \lctr[3]_i_1_n_0 ;
  wire \lctr[4]_i_1_n_0 ;
  wire \lctr[5]_i_1_n_0 ;
  wire \lctr[5]_i_2_n_0 ;
  wire \lctr[6]_i_1_n_0 ;
  wire \lctr[7]_i_1_n_0 ;
  wire \lctr[7]_i_2_n_0 ;
  (* MARK_DEBUG *) wire lock;
  wire lock_i_1_n_0;
  wire lock_i_2_n_0;
  (* MARK_DEBUG *) wire m;
  wire m_i_1_n_0;
  wire p_0_in__0;
  wire phase_locked;
  wire phase_rst;
  (* MARK_DEBUG *) wire phase_rst_i;
  wire phase_rst_i_reg0;
  wire phase_rst_i_reg5;
  wire [7:0]plusOp;
  wire [3:0]plusOp__0;
  wire [7:0]q;
  wire \q[0]_INST_0_i_1_n_0 ;
  wire rst;
  wire rx_locked;
  wire rx_locked_INST_0_i_1_n_0;
  wire rxclk;
  wire rxd;
  wire rxrst;
  wire \s[15]_0 ;
  wire \sctr[0]_i_1_n_0 ;
  wire \sctr[1]_i_1_n_0 ;
  wire \sctr[2]_i_1_n_0 ;
  wire \sctr[3]_i_1_n_0 ;
  wire \sctr_reg_n_0_[0] ;
  wire \sctr_reg_n_0_[1] ;
  wire \sctr_reg_n_0_[2] ;
  wire \sctr_reg_n_0_[3] ;
  (* MARK_DEBUG *) wire stb;
  wire stbd;
  wire stbdd;
  wire stbo;
  wire stbo_INST_0_i_1_n_0;
  wire \t_reg_n_0_[0] ;
  wire \t_reg_n_0_[1] ;
  wire \t_reg_n_0_[3] ;
  wire \t_reg_n_0_[4] ;
  wire \t_reg_n_0_[5] ;
  wire \t_reg_n_0_[6] ;
  wire \t_reg_n_0_[7] ;
  wire \t_reg_n_0_[8] ;
  wire \t_reg_n_0_[9] ;
  (* MARK_DEBUG *) wire tr;
  (* MARK_DEBUG *) wire [9:0]w;
  wire [9:0]wa;
  (* MARK_DEBUG *) wire [9:0]wd;

  assign aligned = aligned_i;
  assign \edge  = dctr[0];
  assign fdel_out[3] = \<const0> ;
  assign fdel_out[2] = \<const0> ;
  assign fdel_out[1] = \<const0> ;
  assign fdel_out[0] = \<const0> ;
  assign k = ki;
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h0000E222)) 
    aligned_i_i_1
       (.I0(aligned_i),
        .I1(done),
        .I2(kok),
        .I3(m),
        .I4(rxrst),
        .O(aligned_i_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE aligned_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(aligned_i_i_1_n_0),
        .Q(aligned_i),
        .R(1'b0));
  (* DEL_RADIX = "6" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* WIDTH = "11" *) 
  design_1_endpoint_wrapper_0_0_pdts_del__parameterized1 c_del
       (.a(cdel),
        .clk(clk),
        .d({stb,w}),
        .q({stbd,wd}));
  LUT6 #(
    .INIT(64'h8080000000000300)) 
    c_i_1
       (.I0(c_i_2_n_0),
        .I1(wa[3]),
        .I2(wa[5]),
        .I3(c_i_3_n_0),
        .I4(wa[2]),
        .I5(wa[6]),
        .O(c0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    c_i_2
       (.I0(wa[4]),
        .I1(wa[1]),
        .I2(wa[7]),
        .I3(wa[9]),
        .I4(wa[0]),
        .I5(wa[8]),
        .O(c_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    c_i_3
       (.I0(wa[4]),
        .I1(wa[1]),
        .I2(wa[7]),
        .I3(wa[9]),
        .I4(wa[0]),
        .I5(wa[8]),
        .O(c_i_3_n_0));
  FDRE c_reg
       (.C(rxclk),
        .CE(1'b1),
        .D(c0),
        .Q(c),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \ctr[0]_i_1 
       (.I0(ctr[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \ctr[1]_i_1 
       (.I0(ctr[0]),
        .I1(ctr[1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \ctr[2]_i_1 
       (.I0(ctr[1]),
        .I1(ctr[0]),
        .I2(ctr[2]),
        .O(plusOp[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \ctr[3]_i_1 
       (.I0(ctr[2]),
        .I1(ctr[0]),
        .I2(ctr[1]),
        .I3(ctr[3]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ctr[4]_i_1 
       (.I0(ctr[3]),
        .I1(ctr[1]),
        .I2(ctr[0]),
        .I3(ctr[2]),
        .I4(ctr[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ctr[5]_i_1 
       (.I0(ctr[4]),
        .I1(ctr[2]),
        .I2(ctr[0]),
        .I3(ctr[1]),
        .I4(ctr[3]),
        .I5(ctr[5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \ctr[6]_i_1 
       (.I0(done_inferred_i_2_n_0),
        .I1(ctr[6]),
        .O(plusOp[6]));
  LUT4 #(
    .INIT(16'hF777)) 
    \ctr[7]_i_1 
       (.I0(fr),
        .I1(phase_locked),
        .I2(done),
        .I3(stb),
        .O(\ctr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \ctr[7]_i_2 
       (.I0(ctr[6]),
        .I1(done_inferred_i_2_n_0),
        .I2(ctr[7]),
        .O(plusOp[7]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[0] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[0]),
        .Q(ctr[0]),
        .R(\ctr[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[1] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[1]),
        .Q(ctr[1]),
        .R(\ctr[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[2] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[2]),
        .Q(ctr[2]),
        .R(\ctr[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[3] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[3]),
        .Q(ctr[3]),
        .R(\ctr[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[4] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[4]),
        .Q(ctr[4]),
        .R(\ctr[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[5] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[5]),
        .Q(ctr[5]),
        .R(\ctr[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[6] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[6]),
        .Q(ctr[6]),
        .R(\ctr[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[7] 
       (.C(clk),
        .CE(stb),
        .D(plusOp[7]),
        .Q(ctr[7]),
        .R(\ctr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \dctr[0]_i_1 
       (.I0(dctr[0]),
        .I1(kok),
        .I2(m),
        .O(\dctr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F70)) 
    \dctr[1]_i_1 
       (.I0(m),
        .I1(kok),
        .I2(dctr[0]),
        .I3(dctr[1]),
        .O(dctr__0[1]));
  LUT5 #(
    .INIT(32'hD5FF2A00)) 
    \dctr[2]_i_1 
       (.I0(dctr[0]),
        .I1(kok),
        .I2(m),
        .I3(dctr[1]),
        .I4(dctr[2]),
        .O(dctr__0[2]));
  LUT6 #(
    .INIT(64'hD5FFFFFF2A000000)) 
    \dctr[3]_i_1 
       (.I0(dctr[1]),
        .I1(m),
        .I2(kok),
        .I3(dctr[0]),
        .I4(dctr[2]),
        .I5(dctr[3]),
        .O(dctr__0[3]));
  LUT5 #(
    .INIT(32'hAEEEAAAA)) 
    \dctr[4]_i_1 
       (.I0(rxrst),
        .I1(\dctr[4]_i_3_n_0 ),
        .I2(kok),
        .I3(m),
        .I4(done),
        .O(\dctr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \dctr[4]_i_2 
       (.I0(dctr[2]),
        .I1(dctr[0]),
        .I2(phase_rst_i_reg5),
        .I3(dctr[1]),
        .I4(dctr[3]),
        .I5(dctr[4]),
        .O(dctr__0[4]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \dctr[4]_i_3 
       (.I0(dctr[4]),
        .I1(dctr[2]),
        .I2(dctr[1]),
        .I3(dctr[0]),
        .I4(dctr[3]),
        .O(\dctr[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dctr[4]_i_4 
       (.I0(m),
        .I1(kok),
        .O(phase_rst_i_reg5));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[0] 
       (.C(clk),
        .CE(done),
        .D(\dctr[0]_i_1_n_0 ),
        .Q(dctr[0]),
        .R(\dctr[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[1] 
       (.C(clk),
        .CE(done),
        .D(dctr__0[1]),
        .Q(dctr[1]),
        .R(\dctr[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[2] 
       (.C(clk),
        .CE(done),
        .D(dctr__0[2]),
        .Q(dctr[2]),
        .R(\dctr[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[3] 
       (.C(clk),
        .CE(done),
        .D(dctr__0[3]),
        .Q(dctr[3]),
        .R(\dctr[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \dctr_reg[4] 
       (.C(clk),
        .CE(done),
        .D(dctr__0[4]),
        .Q(dctr[4]),
        .R(\dctr[4]_i_1_n_0 ));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_endpoint_wrapper_0_0_pdts_dec8b10b dec
       (.cerr(cerr),
        .clk(clk),
        .d(wd),
        .derr(derr),
        .en(stbd),
        .k(ki),
        .q(di),
        .rst(rst));
  LUT3 #(
    .INIT(8'h08)) 
    done_inferred_i_1
       (.I0(ctr[7]),
        .I1(ctr[6]),
        .I2(done_inferred_i_2_n_0),
        .O(done));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    done_inferred_i_2
       (.I0(ctr[4]),
        .I1(ctr[2]),
        .I2(ctr[0]),
        .I3(ctr[1]),
        .I4(ctr[3]),
        .I5(ctr[5]),
        .O(done_inferred_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \ectr[0]_i_1 
       (.I0(stbdd),
        .I1(lock),
        .O(\ectr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555595555555)) 
    \ectr[0]_i_2 
       (.I0(ectr[0]),
        .I1(ectr[5]),
        .I2(ectr[6]),
        .I3(ectr[7]),
        .I4(ectr[4]),
        .I5(rx_locked_INST_0_i_1_n_0),
        .O(ectr0_in));
  LUT6 #(
    .INIT(64'h2000AAAAAAAA0000)) 
    \ectr[1]_i_1 
       (.I0(lock),
        .I1(stbo_INST_0_i_1_n_0),
        .I2(ectr[2]),
        .I3(ectr[3]),
        .I4(ectr[0]),
        .I5(ectr[1]),
        .O(\ectr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2A2AAA2A80808080)) 
    \ectr[2]_i_1 
       (.I0(lock),
        .I1(ectr[0]),
        .I2(ectr[1]),
        .I3(ectr[3]),
        .I4(stbo_INST_0_i_1_n_0),
        .I5(ectr[2]),
        .O(\ectr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAA0000000)) 
    \ectr[3]_i_1 
       (.I0(lock),
        .I1(stbo_INST_0_i_1_n_0),
        .I2(ectr[2]),
        .I3(ectr[1]),
        .I4(ectr[0]),
        .I5(ectr[3]),
        .O(\ectr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA888888822222222)) 
    \ectr[4]_i_1 
       (.I0(lock),
        .I1(rx_locked_INST_0_i_1_n_0),
        .I2(ectr[5]),
        .I3(ectr[6]),
        .I4(ectr[7]),
        .I5(ectr[4]),
        .O(\ectr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA888AAAA22220000)) 
    \ectr[5]_i_1 
       (.I0(lock),
        .I1(rx_locked_INST_0_i_1_n_0),
        .I2(ectr[6]),
        .I3(ectr[7]),
        .I4(ectr[4]),
        .I5(ectr[5]),
        .O(\ectr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8AAA20002000)) 
    \ectr[6]_i_1 
       (.I0(lock),
        .I1(rx_locked_INST_0_i_1_n_0),
        .I2(ectr[5]),
        .I3(ectr[4]),
        .I4(ectr[7]),
        .I5(ectr[6]),
        .O(\ectr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA20000000)) 
    \ectr[7]_i_1 
       (.I0(lock),
        .I1(rx_locked_INST_0_i_1_n_0),
        .I2(ectr[5]),
        .I3(ectr[4]),
        .I4(ectr[6]),
        .I5(ectr[7]),
        .O(\ectr[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[0] 
       (.C(clk),
        .CE(stbdd),
        .D(ectr0_in),
        .Q(ectr[0]),
        .R(\ectr[0]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[1] 
       (.C(clk),
        .CE(stbdd),
        .D(\ectr[1]_i_1_n_0 ),
        .Q(ectr[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[2] 
       (.C(clk),
        .CE(stbdd),
        .D(\ectr[2]_i_1_n_0 ),
        .Q(ectr[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[3] 
       (.C(clk),
        .CE(stbdd),
        .D(\ectr[3]_i_1_n_0 ),
        .Q(ectr[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[4] 
       (.C(clk),
        .CE(stbdd),
        .D(\ectr[4]_i_1_n_0 ),
        .Q(ectr[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[5] 
       (.C(clk),
        .CE(stbdd),
        .D(\ectr[5]_i_1_n_0 ),
        .Q(ectr[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[6] 
       (.C(clk),
        .CE(stbdd),
        .D(\ectr[6]_i_1_n_0 ),
        .Q(ectr[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \ectr_reg[7] 
       (.C(clk),
        .CE(stbdd),
        .D(\ectr[7]_i_1_n_0 ),
        .Q(ectr[7]),
        .R(1'b0));
  design_1_endpoint_wrapper_0_0_pdts_del__parameterized0 f_del
       (.D(\s[15]_0 ),
        .fdel(fdel),
        .rxclk(rxclk),
        .rxd(rxd));
  LUT4 #(
    .INIT(16'h000E)) 
    f_i_1
       (.I0(c),
        .I1(f),
        .I2(phase_rst_i),
        .I3(rxrst),
        .O(f0));
  FDRE f_reg
       (.C(rxclk),
        .CE(1'b1),
        .D(f0),
        .Q(f),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fctr[0]_i_1 
       (.I0(fctr_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fctr[1]_i_1 
       (.I0(fctr_reg[0]),
        .I1(fctr_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fctr[2]_i_1 
       (.I0(fctr_reg[0]),
        .I1(fctr_reg[1]),
        .I2(fctr_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \fctr[3]_i_1 
       (.I0(fctr_reg[1]),
        .I1(fctr_reg[0]),
        .I2(fctr_reg[2]),
        .I3(fctr_reg[3]),
        .O(plusOp__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \fctr_reg[0] 
       (.C(fclk),
        .CE(1'b1),
        .D(plusOp__0[0]),
        .Q(fctr_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fctr_reg[1] 
       (.C(fclk),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(fctr_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fctr_reg[2] 
       (.C(fclk),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(fctr_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fctr_reg[3] 
       (.C(fclk),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(fctr_reg[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE fr_reg
       (.C(clk),
        .CE(1'b1),
        .D(f),
        .Q(fr),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h556A6A6A)) 
    \kctr[0]_i_1 
       (.I0(kctr[0]),
        .I1(\kctr[3]_i_5_n_0 ),
        .I2(\kctr[3]_i_4_n_0 ),
        .I3(\kctr[3]_i_3_n_0 ),
        .I4(\kctr[3]_i_2_n_0 ),
        .O(kctr0_in[0]));
  LUT6 #(
    .INIT(64'h557F7F7FAA808080)) 
    \kctr[1]_i_1 
       (.I0(kctr[0]),
        .I1(\kctr[3]_i_2_n_0 ),
        .I2(\kctr[3]_i_3_n_0 ),
        .I3(\kctr[3]_i_4_n_0 ),
        .I4(\kctr[3]_i_5_n_0 ),
        .I5(kctr[1]),
        .O(kctr0_in[1]));
  LUT6 #(
    .INIT(64'h0777FFFFF8880000)) 
    \kctr[2]_i_1 
       (.I0(\kctr[3]_i_2_n_0 ),
        .I1(\kctr[3]_i_3_n_0 ),
        .I2(\kctr[3]_i_4_n_0 ),
        .I3(\kctr[3]_i_5_n_0 ),
        .I4(\kctr[2]_i_2_n_0 ),
        .I5(kctr[2]),
        .O(kctr0_in[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \kctr[2]_i_2 
       (.I0(kctr[0]),
        .I1(kctr[1]),
        .O(\kctr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0777FFFFF8880000)) 
    \kctr[3]_i_1 
       (.I0(\kctr[3]_i_2_n_0 ),
        .I1(\kctr[3]_i_3_n_0 ),
        .I2(\kctr[3]_i_4_n_0 ),
        .I3(\kctr[3]_i_5_n_0 ),
        .I4(\kctr[3]_i_6_n_0 ),
        .I5(kctr[3]),
        .O(kctr0_in[3]));
  LUT4 #(
    .INIT(16'h0008)) 
    \kctr[3]_i_2 
       (.I0(w[1]),
        .I1(w[0]),
        .I2(w[3]),
        .I3(w[2]),
        .O(\kctr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \kctr[3]_i_3 
       (.I0(w[4]),
        .I1(w[5]),
        .I2(w[7]),
        .I3(w[6]),
        .I4(w[8]),
        .I5(w[9]),
        .O(\kctr[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \kctr[3]_i_4 
       (.I0(w[1]),
        .I1(w[0]),
        .I2(w[3]),
        .I3(w[2]),
        .O(\kctr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \kctr[3]_i_5 
       (.I0(w[4]),
        .I1(w[5]),
        .I2(w[6]),
        .I3(w[7]),
        .I4(w[9]),
        .I5(w[8]),
        .O(\kctr[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \kctr[3]_i_6 
       (.I0(kctr[2]),
        .I1(kctr[1]),
        .I2(kctr[0]),
        .O(\kctr[3]_i_6_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \kctr_reg[0] 
       (.C(clk),
        .CE(stb),
        .D(kctr0_in[0]),
        .Q(kctr[0]),
        .R(\ctr[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \kctr_reg[1] 
       (.C(clk),
        .CE(stb),
        .D(kctr0_in[1]),
        .Q(kctr[1]),
        .R(\ctr[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \kctr_reg[2] 
       (.C(clk),
        .CE(stb),
        .D(kctr0_in[2]),
        .Q(kctr[2]),
        .R(\ctr[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \kctr_reg[3] 
       (.C(clk),
        .CE(stb),
        .D(kctr0_in[3]),
        .Q(kctr[3]),
        .R(\ctr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    kerr_inferred_i_1
       (.I0(di[0]),
        .I1(ki),
        .I2(\q[0]_INST_0_i_1_n_0 ),
        .O(kerr));
  LUT4 #(
    .INIT(16'hF0E0)) 
    kok_inferred_i_1
       (.I0(kctr[2]),
        .I1(kctr[1]),
        .I2(kctr[3]),
        .I3(kctr[0]),
        .O(kok));
  LUT3 #(
    .INIT(8'h01)) 
    \lctr[0]_i_1 
       (.I0(ki),
        .I1(rst),
        .I2(lctr[0]),
        .O(\lctr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0110)) 
    \lctr[1]_i_1 
       (.I0(ki),
        .I1(rst),
        .I2(lctr[0]),
        .I3(lctr[1]),
        .O(\lctr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01111000)) 
    \lctr[2]_i_1 
       (.I0(ki),
        .I1(rst),
        .I2(lctr[1]),
        .I3(lctr[0]),
        .I4(lctr[2]),
        .O(\lctr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \lctr[3]_i_1 
       (.I0(ki),
        .I1(rst),
        .I2(lctr[2]),
        .I3(lctr[0]),
        .I4(lctr[1]),
        .I5(lctr[3]),
        .O(\lctr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lctr[4]_i_1 
       (.I0(lctr[3]),
        .I1(lctr[1]),
        .I2(lctr[0]),
        .I3(lctr[2]),
        .I4(lctr[4]),
        .O(\lctr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \lctr[5]_i_1 
       (.I0(ki),
        .I1(stbdd),
        .I2(rst),
        .O(\lctr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \lctr[5]_i_2 
       (.I0(lctr[4]),
        .I1(lctr[2]),
        .I2(lctr[0]),
        .I3(lctr[1]),
        .I4(lctr[3]),
        .I5(lctr[5]),
        .O(\lctr[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1001)) 
    \lctr[6]_i_1 
       (.I0(ki),
        .I1(rst),
        .I2(\lctr[7]_i_2_n_0 ),
        .I3(lctr[6]),
        .O(\lctr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11010010)) 
    \lctr[7]_i_1 
       (.I0(ki),
        .I1(rst),
        .I2(lctr[6]),
        .I3(\lctr[7]_i_2_n_0 ),
        .I4(lctr[7]),
        .O(\lctr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \lctr[7]_i_2 
       (.I0(lctr[4]),
        .I1(lctr[2]),
        .I2(lctr[0]),
        .I3(lctr[1]),
        .I4(lctr[3]),
        .I5(lctr[5]),
        .O(\lctr[7]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[0] 
       (.C(clk),
        .CE(stbdd),
        .D(\lctr[0]_i_1_n_0 ),
        .Q(lctr[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[1] 
       (.C(clk),
        .CE(stbdd),
        .D(\lctr[1]_i_1_n_0 ),
        .Q(lctr[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[2] 
       (.C(clk),
        .CE(stbdd),
        .D(\lctr[2]_i_1_n_0 ),
        .Q(lctr[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[3] 
       (.C(clk),
        .CE(stbdd),
        .D(\lctr[3]_i_1_n_0 ),
        .Q(lctr[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[4] 
       (.C(clk),
        .CE(stbdd),
        .D(\lctr[4]_i_1_n_0 ),
        .Q(lctr[4]),
        .R(\lctr[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[5] 
       (.C(clk),
        .CE(stbdd),
        .D(\lctr[5]_i_2_n_0 ),
        .Q(lctr[5]),
        .R(\lctr[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[6] 
       (.C(clk),
        .CE(stbdd),
        .D(\lctr[6]_i_1_n_0 ),
        .Q(lctr[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \lctr_reg[7] 
       (.C(clk),
        .CE(stbdd),
        .D(\lctr[7]_i_1_n_0 ),
        .Q(lctr[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA2AAFFFFA2AA0000)) 
    lock_i_1
       (.I0(lock_i_2_n_0),
        .I1(lctr[7]),
        .I2(\lctr[7]_i_2_n_0 ),
        .I3(lctr[6]),
        .I4(stbdd),
        .I5(lock),
        .O(lock_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    lock_i_2
       (.I0(derr),
        .I1(rst),
        .I2(cerr),
        .I3(kerr),
        .I4(lock),
        .I5(ki),
        .O(lock_i_2_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE lock_reg
       (.C(clk),
        .CE(1'b1),
        .D(lock_i_1_n_0),
        .Q(lock),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFC0AAAA)) 
    m_i_1
       (.I0(m),
        .I1(m),
        .I2(tr),
        .I3(done),
        .I4(stb),
        .I5(ctr1),
        .O(m_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE m_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_i_1_n_0),
        .Q(m),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    phase_rst_INST_0
       (.I0(phase_locked),
        .I1(phase_rst_i),
        .O(phase_rst));
  LUT6 #(
    .INIT(64'h000000008AAA8888)) 
    phase_rst_i_i_1
       (.I0(fr),
        .I1(phase_rst_i),
        .I2(m),
        .I3(kok),
        .I4(done),
        .I5(rxrst),
        .O(phase_rst_i_reg0));
  (* KEEP = "yes" *) 
  FDRE phase_rst_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(phase_rst_i_reg0),
        .Q(phase_rst_i),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFABA)) 
    \q[0]_INST_0 
       (.I0(di[0]),
        .I1(di[7]),
        .I2(ki),
        .I3(\q[0]_INST_0_i_1_n_0 ),
        .O(q[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \q[0]_INST_0_i_1 
       (.I0(di[6]),
        .I1(di[5]),
        .I2(di[3]),
        .I3(di[4]),
        .I4(di[2]),
        .I5(di[1]),
        .O(\q[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q[1]_INST_0 
       (.I0(di[1]),
        .I1(ki),
        .O(q[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[2]_INST_0 
       (.I0(di[2]),
        .I1(ki),
        .O(q[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[3]_INST_0 
       (.I0(di[3]),
        .I1(ki),
        .O(q[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[4]_INST_0 
       (.I0(di[4]),
        .I1(ki),
        .O(q[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[5]_INST_0 
       (.I0(di[5]),
        .I1(ki),
        .O(q[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[6]_INST_0 
       (.I0(di[6]),
        .I1(ki),
        .O(q[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_INST_0 
       (.I0(di[7]),
        .I1(ki),
        .O(q[7]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    rx_locked_INST_0
       (.I0(aligned_i),
        .I1(ectr[5]),
        .I2(ectr[6]),
        .I3(ectr[7]),
        .I4(ectr[4]),
        .I5(rx_locked_INST_0_i_1_n_0),
        .O(rx_locked));
  LUT4 #(
    .INIT(16'h7FFF)) 
    rx_locked_INST_0_i_1
       (.I0(ectr[1]),
        .I1(ectr[0]),
        .I2(ectr[3]),
        .I3(ectr[2]),
        .O(rx_locked_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h8B)) 
    \sctr[0]_i_1 
       (.I0(fctr_reg[0]),
        .I1(ctr1),
        .I2(\sctr_reg_n_0_[0] ),
        .O(\sctr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B88B8B8B8B8)) 
    \sctr[1]_i_1 
       (.I0(fctr_reg[1]),
        .I1(ctr1),
        .I2(\sctr_reg_n_0_[1] ),
        .I3(\sctr_reg_n_0_[3] ),
        .I4(\sctr_reg_n_0_[2] ),
        .I5(\sctr_reg_n_0_[0] ),
        .O(\sctr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BB8BB88)) 
    \sctr[2]_i_1 
       (.I0(fctr_reg[2]),
        .I1(ctr1),
        .I2(\sctr_reg_n_0_[1] ),
        .I3(\sctr_reg_n_0_[2] ),
        .I4(\sctr_reg_n_0_[0] ),
        .O(\sctr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BB88BB88BB88)) 
    \sctr[3]_i_1 
       (.I0(fctr_reg[3]),
        .I1(ctr1),
        .I2(\sctr_reg_n_0_[1] ),
        .I3(\sctr_reg_n_0_[3] ),
        .I4(\sctr_reg_n_0_[2] ),
        .I5(\sctr_reg_n_0_[0] ),
        .O(\sctr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sctr[3]_i_2 
       (.I0(phase_locked),
        .I1(fr),
        .O(ctr1));
  FDRE \sctr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sctr[0]_i_1_n_0 ),
        .Q(\sctr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sctr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sctr[1]_i_1_n_0 ),
        .Q(\sctr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \sctr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sctr[2]_i_1_n_0 ),
        .Q(\sctr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \sctr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\sctr[3]_i_1_n_0 ),
        .Q(\sctr_reg_n_0_[3] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    stb_inferred_i_1
       (.I0(\sctr_reg_n_0_[1] ),
        .I1(\sctr_reg_n_0_[0] ),
        .I2(\sctr_reg_n_0_[3] ),
        .I3(\sctr_reg_n_0_[2] ),
        .O(stb));
  FDRE stbdd_reg
       (.C(clk),
        .CE(1'b1),
        .D(stbd),
        .Q(stbdd),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    stbo_INST_0
       (.I0(stbdd),
        .I1(aligned_i),
        .I2(stbo_INST_0_i_1_n_0),
        .I3(rx_locked_INST_0_i_1_n_0),
        .O(stbo));
  LUT4 #(
    .INIT(16'h7FFF)) 
    stbo_INST_0_i_1
       (.I0(ectr[5]),
        .I1(ectr[6]),
        .I2(ectr[7]),
        .I3(ectr[4]),
        .O(stbo_INST_0_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \t_reg[0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\t_reg_n_0_[1] ),
        .Q(\t_reg_n_0_[0] ),
        .S(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[1] 
       (.C(rxclk),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(\t_reg_n_0_[1] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[2] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\t_reg_n_0_[3] ),
        .Q(p_0_in__0),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[3] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\t_reg_n_0_[4] ),
        .Q(\t_reg_n_0_[3] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[4] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\t_reg_n_0_[5] ),
        .Q(\t_reg_n_0_[4] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[5] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\t_reg_n_0_[6] ),
        .Q(\t_reg_n_0_[5] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[6] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\t_reg_n_0_[7] ),
        .Q(\t_reg_n_0_[6] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[7] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\t_reg_n_0_[8] ),
        .Q(\t_reg_n_0_[7] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[8] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\t_reg_n_0_[9] ),
        .Q(\t_reg_n_0_[8] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[9] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\t_reg_n_0_[0] ),
        .Q(\t_reg_n_0_[9] ),
        .R(c));
  (* KEEP = "yes" *) 
  FDRE tr_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(tr),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[0]),
        .Q(w[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[1]),
        .Q(w[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[2]),
        .Q(w[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[3]),
        .Q(w[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[4]),
        .Q(w[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[5]),
        .Q(w[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[6]),
        .Q(w[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[7]),
        .Q(w[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[8]),
        .Q(w[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(wa[9]),
        .Q(w[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[0] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[1]),
        .Q(wa[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[1] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[2]),
        .Q(wa[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[2] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[3]),
        .Q(wa[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[3] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[4]),
        .Q(wa[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[4] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[5]),
        .Q(wa[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[5] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[6]),
        .Q(wa[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[6] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[7]),
        .Q(wa[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[7] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[8]),
        .Q(wa[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[8] 
       (.C(rxclk),
        .CE(1'b1),
        .D(wa[9]),
        .Q(wa[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[9] 
       (.C(rxclk),
        .CE(1'b1),
        .D(\s[15]_0 ),
        .Q(wa[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_endpoint_wrapper_0_0_pdts_synchro
   (SR,
    link_ok,
    sclk,
    rec_clk);
  output [0:0]SR;
  input link_ok;
  input sclk;
  input rec_clk;

  wire [0:0]SR;
  wire da;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire db;
  (* async_reg = "yes" *) wire f_en;
  wire link_ok;
  wire rec_clk;
  wire sclk;

  FDRE \da_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(link_ok),
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
module design_1_endpoint_wrapper_0_0_pdts_synchro_0
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
module design_1_endpoint_wrapper_0_0_pdts_synchro__parameterized0
   (out,
    E,
    D,
    adj_req_reg,
    Q,
    \FSM_onehot_state_reg[0] ,
    \FSM_onehot_state_reg[6] ,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[2] ,
    \FSM_onehot_state_reg[0]_1 ,
    \FSM_onehot_state[4]_i_2_0 ,
    \FSM_onehot_state[4]_i_2_1 ,
    \da_reg[3]_0 ,
    clk,
    sclk);
  output [0:0]out;
  output [0:0]E;
  output [5:0]D;
  output adj_req_reg;
  input [5:0]Q;
  input \FSM_onehot_state_reg[0] ;
  input \FSM_onehot_state_reg[6] ;
  input \FSM_onehot_state_reg[0]_0 ;
  input \FSM_onehot_state_reg[1] ;
  input \FSM_onehot_state_reg[2] ;
  input \FSM_onehot_state_reg[0]_1 ;
  input [1:0]\FSM_onehot_state[4]_i_2_0 ;
  input \FSM_onehot_state[4]_i_2_1 ;
  input [3:0]\da_reg[3]_0 ;
  input clk;
  input sclk;

  wire [5:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[0]_i_4_n_0 ;
  wire \FSM_onehot_state[0]_i_6_n_0 ;
  wire [1:0]\FSM_onehot_state[4]_i_2_0 ;
  wire \FSM_onehot_state[4]_i_2_1 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[6] ;
  wire [5:0]Q;
  wire adj_req_reg;
  wire clk;
  wire [3:0]da;
  wire [3:0]\da_reg[3]_0 ;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire [3:0]db;
  (* async_reg = "yes" *) wire [0:0]out;
  (* async_reg = "yes" *) wire rx_err_i;
  (* async_reg = "yes" *) wire rxphy_locked_i;
  wire sclk;
  (* async_reg = "yes" *) wire tsrdy_i;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_3_n_0 ),
        .I1(\FSM_onehot_state[0]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(\FSM_onehot_state_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[0]_1 ),
        .I2(rxphy_locked_i),
        .I3(\FSM_onehot_state_reg[6] ),
        .I4(out),
        .I5(rx_err_i),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFC0FFC0FFE2E2E2)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(Q[1]),
        .I1(out),
        .I2(Q[5]),
        .I3(\FSM_onehot_state_reg[2] ),
        .I4(\FSM_onehot_state[0]_i_6_n_0 ),
        .I5(\FSM_onehot_state_reg[0]_1 ),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFECCFA00FECC)) 
    \FSM_onehot_state[0]_i_4 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(Q[0]),
        .I2(rxphy_locked_i),
        .I3(Q[4]),
        .I4(tsrdy_i),
        .I5(Q[2]),
        .O(\FSM_onehot_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    \FSM_onehot_state[0]_i_6 
       (.I0(rxphy_locked_i),
        .I1(\FSM_onehot_state[4]_i_2_0 [1]),
        .I2(\FSM_onehot_state[4]_i_2_1 ),
        .I3(\FSM_onehot_state[4]_i_2_0 [0]),
        .I4(out),
        .I5(rx_err_i),
        .O(\FSM_onehot_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEE0EEEEE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(out),
        .I3(\FSM_onehot_state_reg[6] ),
        .I4(rxphy_locked_i),
        .I5(\FSM_onehot_state_reg[1] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(out),
        .I1(\FSM_onehot_state_reg[6] ),
        .I2(rxphy_locked_i),
        .I3(\FSM_onehot_state_reg[2] ),
        .I4(rx_err_i),
        .I5(\FSM_onehot_state_reg[1] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(tsrdy_i),
        .I1(Q[0]),
        .I2(rx_err_i),
        .I3(out),
        .I4(\FSM_onehot_state_reg[6] ),
        .I5(rxphy_locked_i),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAFFAAEAAAEAAAEA)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\FSM_onehot_state_reg[1] ),
        .I1(\FSM_onehot_state_reg[0]_1 ),
        .I2(Q[2]),
        .I3(\FSM_onehot_state[0]_i_6_n_0 ),
        .I4(tsrdy_i),
        .I5(Q[0]),
        .O(adj_req_reg));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(Q[4]),
        .I1(out),
        .I2(\FSM_onehot_state_reg[6] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hAAFFAABA)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state_reg[1] ),
        .I1(out),
        .I2(Q[4]),
        .I3(\FSM_onehot_state_reg[6] ),
        .I4(Q[1]),
        .O(D[5]));
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
        .Q(out),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[1]),
        .Q(rxphy_locked_i),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[2]),
        .Q(rx_err_i),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[3] 
       (.C(sclk),
        .CE(1'b1),
        .D(db[3]),
        .Q(tsrdy_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_endpoint_wrapper_0_0_pdts_synchro__parameterized1
   (out,
    sclk,
    rec_clk,
    Q);
  output out;
  input sclk;
  input rec_clk;
  input [3:0]Q;

  wire [3:0]Q;
  wire da;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire db;
  (* async_reg = "yes" *) wire out;
  wire rec_clk;
  wire rec_rst_i;
  wire sclk;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \da[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(rec_rst_i));
  FDRE \da_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(rec_rst_i),
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
        .Q(out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_endpoint_wrapper_0_0_pdts_synchro__parameterized1_1
   (out,
    srst_0,
    \s_reg[4][0] ,
    \da_reg[0]_0 ,
    clk,
    sclk,
    srst,
    E,
    adj_req_reg,
    ud,
    Q);
  output out;
  output srst_0;
  output [0:0]\s_reg[4][0] ;
  input \da_reg[0]_0 ;
  input clk;
  input sclk;
  input srst;
  input [0:0]E;
  input adj_req_reg;
  input ud;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire adj_req_reg;
  wire clk;
  wire da;
  wire \da_reg[0]_0 ;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire db;
  (* async_reg = "yes" *) wire out;
  wire [0:0]\s_reg[4][0] ;
  wire sclk;
  wire srst;
  wire srst_0;
  wire ud;

  LUT6 #(
    .INIT(64'h1011101010001010)) 
    adj_req_i_1
       (.I0(srst),
        .I1(E),
        .I2(adj_req_reg),
        .I3(ud),
        .I4(out),
        .I5(Q),
        .O(srst_0));
  LUT4 #(
    .INIT(16'h0004)) 
    \cdel_i[5]_i_1 
       (.I0(E),
        .I1(out),
        .I2(srst),
        .I3(ud),
        .O(\s_reg[4][0] ));
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
module design_1_endpoint_wrapper_0_0_pdts_synchro__parameterized2
   (\q_reg[2]_0 ,
    Q,
    sclk,
    clk);
  output [2:0]\q_reg[2]_0 ;
  input [6:0]Q;
  input sclk;
  input clk;

  wire [6:0]Q;
  wire clk;
  wire [2:0]da;
  wire \da[2]_i_2_n_0 ;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire [2:0]db;
  wire [2:1]p_2_out;
  wire p_3_in;
  (* async_reg = "yes" *) wire [2:0]\q_reg[2]_0 ;
  wire sclk;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \da[0]_i_1__0 
       (.I0(Q[6]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[5]),
        .O(p_3_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \da[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[3]),
        .O(p_2_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \da[2]_i_1 
       (.I0(\da[2]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(p_2_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \da[2]_i_2 
       (.I0(Q[3]),
        .I1(Q[6]),
        .O(\da[2]_i_2_n_0 ));
  FDRE \da_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_3_in),
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
  FDRE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(db[0]),
        .Q(\q_reg[2]_0 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(db[1]),
        .Q(\q_reg[2]_0 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(db[2]),
        .Q(\q_reg[2]_0 [2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_tstamp" *) 
module design_1_endpoint_wrapper_0_0_pdts_tstamp
   (\tstamp_i_reg[0]_0 ,
    tstamp,
    lock_reg_0,
    \ctr_reg[6]_0 ,
    \ctr_reg[5]_0 ,
    clk,
    \ctr_reg[0]_0 ,
    s_stb,
    E,
    D);
  output \tstamp_i_reg[0]_0 ;
  output [62:0]tstamp;
  output lock_reg_0;
  output \ctr_reg[6]_0 ;
  output \ctr_reg[5]_0 ;
  input clk;
  input [0:0]\ctr_reg[0]_0 ;
  input s_stb;
  input [0:0]E;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire clk;
  wire \ctr[6]_i_2_n_0 ;
  wire \ctr[7]_i_5_n_0 ;
  wire [7:0]ctr_reg;
  wire [0:0]\ctr_reg[0]_0 ;
  wire \ctr_reg[5]_0 ;
  wire \ctr_reg[6]_0 ;
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
  wire lock_reg_0;
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
  wire s_stb;
  wire [63:0]sr;
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

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ctr[0]_i_1 
       (.I0(ctr_reg[0]),
        .O(plusOp__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctr[1]_i_1 
       (.I0(ctr_reg[0]),
        .I1(ctr_reg[1]),
        .O(plusOp__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ctr[2]_i_1 
       (.I0(ctr_reg[1]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[2]),
        .O(plusOp__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ctr[3]_i_1 
       (.I0(ctr_reg[0]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[2]),
        .I3(ctr_reg[3]),
        .O(plusOp__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ctr[4]_i_1 
       (.I0(ctr_reg[2]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[0]),
        .I3(ctr_reg[3]),
        .I4(ctr_reg[4]),
        .O(plusOp__4[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ctr[5]_i_1 
       (.I0(ctr_reg[3]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[2]),
        .I4(ctr_reg[4]),
        .I5(ctr_reg[5]),
        .O(plusOp__4[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ctr[6]_i_1 
       (.I0(ctr_reg[4]),
        .I1(ctr_reg[2]),
        .I2(\ctr[6]_i_2_n_0 ),
        .I3(ctr_reg[3]),
        .I4(ctr_reg[5]),
        .I5(ctr_reg[6]),
        .O(plusOp__4[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ctr[6]_i_2 
       (.I0(ctr_reg[0]),
        .I1(ctr_reg[1]),
        .O(\ctr[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \ctr[7]_i_2 
       (.I0(\ctr[7]_i_5_n_0 ),
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
        .O(\ctr_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ctr[7]_i_5 
       (.I0(ctr_reg[5]),
        .I1(ctr_reg[3]),
        .I2(ctr_reg[0]),
        .I3(ctr_reg[1]),
        .I4(ctr_reg[2]),
        .I5(ctr_reg[4]),
        .O(\ctr[7]_i_5_n_0 ));
  FDRE \ctr_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__4[0]),
        .Q(ctr_reg[0]),
        .R(\ctr_reg[0]_0 ));
  FDRE \ctr_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp__4[1]),
        .Q(ctr_reg[1]),
        .R(\ctr_reg[0]_0 ));
  FDRE \ctr_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp__4[2]),
        .Q(ctr_reg[2]),
        .R(\ctr_reg[0]_0 ));
  FDRE \ctr_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp__4[3]),
        .Q(ctr_reg[3]),
        .R(\ctr_reg[0]_0 ));
  FDRE \ctr_reg[4] 
       (.C(clk),
        .CE(E),
        .D(plusOp__4[4]),
        .Q(ctr_reg[4]),
        .R(\ctr_reg[0]_0 ));
  FDRE \ctr_reg[5] 
       (.C(clk),
        .CE(E),
        .D(plusOp__4[5]),
        .Q(ctr_reg[5]),
        .R(\ctr_reg[0]_0 ));
  FDRE \ctr_reg[6] 
       (.C(clk),
        .CE(E),
        .D(plusOp__4[6]),
        .Q(ctr_reg[6]),
        .R(\ctr_reg[0]_0 ));
  FDRE \ctr_reg[7] 
       (.C(clk),
        .CE(E),
        .D(plusOp__4[7]),
        .Q(ctr_reg[7]),
        .R(\ctr_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(sr[8]),
        .O(i__carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
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
        .R(\ctr_reg[0]_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
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
        .R(\ctr_reg[0]_0 ));
  FDRE pkt_end_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(pkt_end),
        .Q(pkt_end_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    pkt_end_i_1
       (.I0(ctr_reg[4]),
        .I1(ctr_reg[5]),
        .I2(ctr_reg[6]),
        .I3(ctr_reg[7]),
        .I4(pkt_end_i_2_n_0),
        .O(pkt_end_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
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
        .I1(\ctr_reg[0]_0 ),
        .I2(\ctr_reg[6]_0 ),
        .I3(ctr_reg[5]),
        .I4(\sr[63]_i_3_n_0 ),
        .I5(E),
        .O(sr_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sr[63]_i_2 
       (.I0(ctr_reg[6]),
        .I1(ctr_reg[7]),
        .O(\ctr_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
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
        .D(D[0]),
        .Q(sr[56]),
        .R(1'b0));
  FDRE \sr_reg[57] 
       (.C(clk),
        .CE(sr_0),
        .D(D[1]),
        .Q(sr[57]),
        .R(1'b0));
  FDRE \sr_reg[58] 
       (.C(clk),
        .CE(sr_0),
        .D(D[2]),
        .Q(sr[58]),
        .R(1'b0));
  FDRE \sr_reg[59] 
       (.C(clk),
        .CE(sr_0),
        .D(D[3]),
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
        .D(D[4]),
        .Q(sr[60]),
        .R(1'b0));
  FDRE \sr_reg[61] 
       (.C(clk),
        .CE(sr_0),
        .D(D[5]),
        .Q(sr[61]),
        .R(1'b0));
  FDRE \sr_reg[62] 
       (.C(clk),
        .CE(sr_0),
        .D(D[6]),
        .Q(sr[62]),
        .R(1'b0));
  FDRE \sr_reg[63] 
       (.C(clk),
        .CE(sr_0),
        .D(D[7]),
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
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[10] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_13 ),
        .Q(tstamp[9]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[11] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_12 ),
        .Q(tstamp[10]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[12] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_11 ),
        .Q(tstamp[11]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[13] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_10 ),
        .Q(tstamp[12]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[14] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_9 ),
        .Q(tstamp[13]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[15] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_8 ),
        .Q(tstamp[14]),
        .R(\ctr_reg[0]_0 ));
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
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[17] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_14 ),
        .Q(tstamp[16]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[18] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_13 ),
        .Q(tstamp[17]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[19] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_12 ),
        .Q(tstamp[18]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[1] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_14 ),
        .Q(tstamp[0]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[20] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_11 ),
        .Q(tstamp[19]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[21] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_10 ),
        .Q(tstamp[20]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[22] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_9 ),
        .Q(tstamp[21]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[23] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[23]_i_1_n_8 ),
        .Q(tstamp[22]),
        .R(\ctr_reg[0]_0 ));
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
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[25] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_14 ),
        .Q(tstamp[24]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[26] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_13 ),
        .Q(tstamp[25]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[27] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_12 ),
        .Q(tstamp[26]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[28] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_11 ),
        .Q(tstamp[27]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[29] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_10 ),
        .Q(tstamp[28]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[2] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_13 ),
        .Q(tstamp[1]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[30] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_9 ),
        .Q(tstamp[29]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[31] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[31]_i_1_n_8 ),
        .Q(tstamp[30]),
        .R(\ctr_reg[0]_0 ));
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
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[33] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_14 ),
        .Q(tstamp[32]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[34] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_13 ),
        .Q(tstamp[33]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[35] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_12 ),
        .Q(tstamp[34]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[36] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_11 ),
        .Q(tstamp[35]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[37] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_10 ),
        .Q(tstamp[36]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[38] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_9 ),
        .Q(tstamp[37]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[39] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[39]_i_1_n_8 ),
        .Q(tstamp[38]),
        .R(\ctr_reg[0]_0 ));
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
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[40] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_15 ),
        .Q(tstamp[39]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[41] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_14 ),
        .Q(tstamp[40]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[42] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_13 ),
        .Q(tstamp[41]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[43] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_12 ),
        .Q(tstamp[42]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[44] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_11 ),
        .Q(tstamp[43]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[45] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_10 ),
        .Q(tstamp[44]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[46] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_9 ),
        .Q(tstamp[45]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[47] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[47]_i_1_n_8 ),
        .Q(tstamp[46]),
        .R(\ctr_reg[0]_0 ));
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
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[49] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_14 ),
        .Q(tstamp[48]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[4] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_11 ),
        .Q(tstamp[3]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[50] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_13 ),
        .Q(tstamp[49]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[51] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_12 ),
        .Q(tstamp[50]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[52] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_11 ),
        .Q(tstamp[51]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[53] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_10 ),
        .Q(tstamp[52]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[54] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_9 ),
        .Q(tstamp[53]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[55] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[55]_i_1_n_8 ),
        .Q(tstamp[54]),
        .R(\ctr_reg[0]_0 ));
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
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[57] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_14 ),
        .Q(tstamp[56]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[58] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_13 ),
        .Q(tstamp[57]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[59] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_12 ),
        .Q(tstamp[58]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[5] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_10 ),
        .Q(tstamp[4]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[60] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_11 ),
        .Q(tstamp[59]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[61] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_10 ),
        .Q(tstamp[60]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[62] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_9 ),
        .Q(tstamp[61]),
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[63] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[63]_i_2_n_8 ),
        .Q(tstamp[62]),
        .R(\ctr_reg[0]_0 ));
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
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[7] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[7]_i_1_n_8 ),
        .Q(tstamp[6]),
        .R(\ctr_reg[0]_0 ));
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
        .R(\ctr_reg[0]_0 ));
  FDRE \tstamp_i_reg[9] 
       (.C(clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(\tstamp_i_reg[15]_i_1_n_14 ),
        .Q(tstamp[8]),
        .R(\ctr_reg[0]_0 ));
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
