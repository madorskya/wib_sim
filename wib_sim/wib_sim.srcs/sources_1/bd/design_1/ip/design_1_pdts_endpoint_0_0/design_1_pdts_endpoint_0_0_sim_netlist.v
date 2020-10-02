// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Aug 23 18:51:09 2020
// Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_pdts_endpoint_0_0 -prefix
//               design_1_pdts_endpoint_0_0_ design_1_pdts_endpoint_0_0_sim_netlist.v
// Design      : design_1_pdts_endpoint_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pdts_endpoint_0_0,pdts_endpoint,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "pdts_endpoint,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_pdts_endpoint_0_0
   (sclk,
    srst,
    addr,
    tgrp,
    stat,
    rec_clk,
    rec_d_clk,
    rec_d,
    rec_clk_locked,
    rec_clk_reset,
    sfp_los,
    cdr_los,
    cdr_lol,
    clk,
    rst,
    rdy,
    sync,
    sync_v,
    tstamp,
    evtctr);
  input sclk;
  input srst;
  input [7:0]addr;
  input [1:0]tgrp;
  output [3:0]stat;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 rec_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME rec_clk, ASSOCIATED_RESET rec_clk_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ts_rec_clk, INSERT_VIP 0" *) input rec_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 rec_d_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME rec_d_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ts_rec_d_clk, INSERT_VIP 0" *) input rec_d_clk;
  input rec_d;
  input rec_clk_locked;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rec_clk_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rec_clk_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output rec_clk_reset;
  input sfp_los;
  input cdr_los;
  input cdr_lol;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_pdts_endpoint_0_0_clk, INSERT_VIP 0" *) output clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output rst;
  output rdy;
  output [3:0]sync;
  output sync_v;
  output [63:0]tstamp;
  output [31:0]evtctr;

  wire cdr_lol;
  wire cdr_los;
  wire [31:0]evtctr;
  wire rdy;
  wire rec_clk;
  wire rec_clk_locked;
  wire rec_clk_reset;
  wire rec_d;
  wire rec_d_clk;
  wire rst;
  wire sclk;
  wire sfp_los;
  wire srst;
  wire [3:0]stat;
  wire [3:0]sync;
  wire sync_v;
  wire [1:0]tgrp;
  wire [63:0]tstamp;

  assign clk = rec_clk;
  design_1_pdts_endpoint_0_0_pdts_endpoint U0
       (.cdr_lol(cdr_lol),
        .cdr_los(cdr_los),
        .evtctr(evtctr),
        .lock_reg(rdy),
        .\q_reg[7] (sync[0]),
        .rec_clk(rec_clk),
        .rec_clk_locked(rec_clk_locked),
        .rec_clk_reset(rec_clk_reset),
        .rec_d(rec_d),
        .rec_d_clk(rec_d_clk),
        .rst(rst),
        .sclk(sclk),
        .sfp_los(sfp_los),
        .srst(srst),
        .stat(stat),
        .sync(sync[3:1]),
        .sync_v(sync_v),
        .tgrp(tgrp),
        .tstamp(tstamp));
endmodule

module design_1_pdts_endpoint_0_0_outputlogic_crc16
   (D,
    \lfsr_q_reg[15]_0 ,
    \state_reg[1] ,
    E,
    \state_reg[0] ,
    Q,
    err_c,
    \lfsr_q_reg[9]_0 ,
    k,
    \err_reg[0] ,
    \lfsr_q_reg[0]_0 ,
    \err_reg[0]_0 ,
    SR,
    \state_reg[0]_0 ,
    \lfsr_q_reg[15]_1 ,
    \lfsr_q_reg[15]_2 ,
    rec_clk);
  output [1:0]D;
  output [9:0]\lfsr_q_reg[15]_0 ;
  output [0:0]\state_reg[1] ;
  output [0:0]E;
  input \state_reg[0] ;
  input [1:0]Q;
  input [0:0]err_c;
  input [0:0]\lfsr_q_reg[9]_0 ;
  input k;
  input \err_reg[0] ;
  input \lfsr_q_reg[0]_0 ;
  input \err_reg[0]_0 ;
  input [0:0]SR;
  input \state_reg[0]_0 ;
  input [0:0]\lfsr_q_reg[15]_1 ;
  input [9:0]\lfsr_q_reg[15]_2 ;
  input rec_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \err[0]_i_3_n_0 ;
  wire \err[0]_i_5_n_0 ;
  wire \err[0]_i_6_n_0 ;
  wire \err[0]_i_7_n_0 ;
  wire \err[0]_i_8_n_0 ;
  wire [0:0]err_c;
  wire \err_reg[0] ;
  wire \err_reg[0]_0 ;
  wire k;
  wire [9:9]lfsr_c;
  wire \lfsr_q_reg[0]_0 ;
  wire [9:0]\lfsr_q_reg[15]_0 ;
  wire [0:0]\lfsr_q_reg[15]_1 ;
  wire [9:0]\lfsr_q_reg[15]_2 ;
  wire [0:0]\lfsr_q_reg[9]_0 ;
  wire \lfsr_q_reg_n_0_[1] ;
  wire \lfsr_q_reg_n_0_[2] ;
  wire \lfsr_q_reg_n_0_[3] ;
  wire \lfsr_q_reg_n_0_[4] ;
  wire \lfsr_q_reg_n_0_[5] ;
  wire \lfsr_q_reg_n_0_[6] ;
  wire rec_clk;
  wire \state[1]_i_3_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire [0:0]\state_reg[1] ;

  LUT6 #(
    .INIT(64'hBBBBBBABBBBBBBBB)) 
    \err[0]_i_1 
       (.I0(\err_reg[0] ),
        .I1(\err[0]_i_3_n_0 ),
        .I2(\lfsr_q_reg[0]_0 ),
        .I3(\err_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFF0075FFFFFF)) 
    \err[0]_i_3 
       (.I0(\lfsr_q_reg[0]_0 ),
        .I1(\err[0]_i_5_n_0 ),
        .I2(\err[0]_i_6_n_0 ),
        .I3(\state_reg[0] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\err[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \err[0]_i_5 
       (.I0(\lfsr_q_reg[15]_0 [6]),
        .I1(\lfsr_q_reg_n_0_[6] ),
        .I2(\lfsr_q_reg[15]_0 [9]),
        .I3(\lfsr_q_reg[15]_0 [0]),
        .I4(\err[0]_i_7_n_0 ),
        .O(\err[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \err[0]_i_6 
       (.I0(\lfsr_q_reg_n_0_[1] ),
        .I1(\lfsr_q_reg_n_0_[2] ),
        .I2(\lfsr_q_reg_n_0_[3] ),
        .I3(\lfsr_q_reg_n_0_[4] ),
        .I4(\err[0]_i_8_n_0 ),
        .O(\err[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err[0]_i_7 
       (.I0(\lfsr_q_reg_n_0_[5] ),
        .I1(\lfsr_q_reg[15]_0 [5]),
        .I2(\lfsr_q_reg[15]_0 [1]),
        .I3(\lfsr_q_reg[15]_0 [4]),
        .O(\err[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \err[0]_i_8 
       (.I0(\lfsr_q_reg[15]_0 [2]),
        .I1(\lfsr_q_reg[15]_0 [3]),
        .I2(\lfsr_q_reg[15]_0 [8]),
        .I3(\lfsr_q_reg[15]_0 [7]),
        .O(\err[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h59A6)) 
    \lfsr_q[9]_i_1 
       (.I0(\lfsr_q_reg_n_0_[1] ),
        .I1(\lfsr_q_reg[9]_0 ),
        .I2(k),
        .I3(\lfsr_q_reg[15]_0 [9]),
        .O(lfsr_c));
  FDSE \lfsr_q_reg[0] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg[15]_2 [0]),
        .Q(\lfsr_q_reg[15]_0 [0]),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[10] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg_n_0_[2] ),
        .Q(\lfsr_q_reg[15]_0 [4]),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[11] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg_n_0_[3] ),
        .Q(\lfsr_q_reg[15]_0 [5]),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[12] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg_n_0_[4] ),
        .Q(\lfsr_q_reg[15]_0 [6]),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[13] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg_n_0_[5] ),
        .Q(\lfsr_q_reg[15]_0 [7]),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[14] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg_n_0_[6] ),
        .Q(\lfsr_q_reg[15]_0 [8]),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[15] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg[15]_2 [9]),
        .Q(\lfsr_q_reg[15]_0 [9]),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[1] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg[15]_2 [1]),
        .Q(\lfsr_q_reg_n_0_[1] ),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[2] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg[15]_2 [2]),
        .Q(\lfsr_q_reg_n_0_[2] ),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[3] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg[15]_2 [3]),
        .Q(\lfsr_q_reg_n_0_[3] ),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[4] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg[15]_2 [4]),
        .Q(\lfsr_q_reg_n_0_[4] ),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[5] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg[15]_2 [5]),
        .Q(\lfsr_q_reg_n_0_[5] ),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[6] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg[15]_2 [6]),
        .Q(\lfsr_q_reg_n_0_[6] ),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[7] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg[15]_2 [7]),
        .Q(\lfsr_q_reg[15]_0 [1]),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[8] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(\lfsr_q_reg[15]_2 [8]),
        .Q(\lfsr_q_reg[15]_0 [2]),
        .S(\lfsr_q_reg[0]_0 ));
  FDSE \lfsr_q_reg[9] 
       (.C(rec_clk),
        .CE(\lfsr_q_reg[15]_1 ),
        .D(lfsr_c),
        .Q(\lfsr_q_reg[15]_0 [3]),
        .S(\lfsr_q_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF37FF)) 
    \state[0]_i_1 
       (.I0(\state_reg[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\err[0]_i_3_n_0 ),
        .I4(err_c),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h3F3F3F3B3C3C3C08)) 
    \state[1]_i_1 
       (.I0(SR),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(err_c),
        .I4(\state[1]_i_3_n_0 ),
        .I5(\state_reg[0]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFCDCFCFC)) 
    \state[1]_i_2 
       (.I0(\state_reg[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(err_c),
        .I4(\err[0]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h4646064606060606)) 
    \state[1]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\state_reg[0] ),
        .I3(\err[0]_i_6_n_0 ),
        .I4(\err[0]_i_5_n_0 ),
        .I5(\lfsr_q_reg[0]_0 ),
        .O(\state[1]_i_3_n_0 ));
endmodule

module design_1_pdts_endpoint_0_0_pdts_cksum
   (D,
    \lfsr_q_reg[15] ,
    \state_reg[1] ,
    E,
    \state_reg[0] ,
    Q,
    err_c,
    \lfsr_q_reg[9] ,
    k,
    \err_reg[0] ,
    \lfsr_q_reg[0] ,
    \err_reg[0]_0 ,
    SR,
    \state_reg[0]_0 ,
    \lfsr_q_reg[15]_0 ,
    \lfsr_q_reg[15]_1 ,
    rec_clk);
  output [1:0]D;
  output [9:0]\lfsr_q_reg[15] ;
  output [0:0]\state_reg[1] ;
  output [0:0]E;
  input \state_reg[0] ;
  input [1:0]Q;
  input [0:0]err_c;
  input [0:0]\lfsr_q_reg[9] ;
  input k;
  input \err_reg[0] ;
  input \lfsr_q_reg[0] ;
  input \err_reg[0]_0 ;
  input [0:0]SR;
  input \state_reg[0]_0 ;
  input [0:0]\lfsr_q_reg[15]_0 ;
  input [9:0]\lfsr_q_reg[15]_1 ;
  input rec_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [0:0]err_c;
  wire \err_reg[0] ;
  wire \err_reg[0]_0 ;
  wire k;
  wire \lfsr_q_reg[0] ;
  wire [9:0]\lfsr_q_reg[15] ;
  wire [0:0]\lfsr_q_reg[15]_0 ;
  wire [9:0]\lfsr_q_reg[15]_1 ;
  wire [0:0]\lfsr_q_reg[9] ;
  wire rec_clk;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire [0:0]\state_reg[1] ;

  design_1_pdts_endpoint_0_0_outputlogic_crc16 crc
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .err_c(err_c),
        .\err_reg[0] (\err_reg[0] ),
        .\err_reg[0]_0 (\err_reg[0]_0 ),
        .k(k),
        .\lfsr_q_reg[0]_0 (\lfsr_q_reg[0] ),
        .\lfsr_q_reg[15]_0 (\lfsr_q_reg[15] ),
        .\lfsr_q_reg[15]_1 (\lfsr_q_reg[15]_0 ),
        .\lfsr_q_reg[15]_2 (\lfsr_q_reg[15]_1 ),
        .\lfsr_q_reg[9]_0 (\lfsr_q_reg[9] ),
        .rec_clk(rec_clk),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[1] (\state_reg[1] ));
endmodule

module design_1_pdts_endpoint_0_0_pdts_dec8b10b
   (k_reg_0,
    D,
    \q_reg[3]_0 ,
    Q,
    \q_reg[7]_0 ,
    \q_reg[0]_0 ,
    stb_0,
    s_match,
    \q_reg[7]_1 ,
    stbd_reg,
    slen,
    pkt_end_reg,
    \state_reg[1] ,
    \state_reg[1]_0 ,
    k_reg_1,
    SR,
    \lctr_reg[6] ,
    rec_clk,
    \lfsr_q_reg[8] ,
    \lctr_reg[0] ,
    lock_reg,
    lock_reg_0,
    disp_reg_0,
    derr_reg_0,
    tgrp,
    E,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \lfsr_q_reg[15] ,
    pkt_end,
    \evtctr_i_reg[31] ,
    lock,
    \err_reg[2] );
  output k_reg_0;
  output [9:0]D;
  output \q_reg[3]_0 ;
  output [0:0]Q;
  output \q_reg[7]_0 ;
  output [5:0]\q_reg[0]_0 ;
  output stb_0;
  output s_match;
  output [6:0]\q_reg[7]_1 ;
  output stbd_reg;
  output [0:0]slen;
  output pkt_end_reg;
  output [0:0]\state_reg[1] ;
  output \state_reg[1]_0 ;
  output [0:0]k_reg_1;
  output [0:0]SR;
  output \lctr_reg[6] ;
  input rec_clk;
  input [9:0]\lfsr_q_reg[8] ;
  input [0:0]\lctr_reg[0] ;
  input [5:0]lock_reg;
  input lock_reg_0;
  input [9:0]disp_reg_0;
  input [3:0]derr_reg_0;
  input [1:0]tgrp;
  input [0:0]E;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input [1:0]\lfsr_q_reg[15] ;
  input pkt_end;
  input \evtctr_i_reg[31] ;
  input lock;
  input \err_reg[2] ;

  wire [9:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire cerr;
  wire cerr_i_10_n_0;
  wire cerr_i_11_n_0;
  wire cerr_i_12_n_0;
  wire cerr_i_13_n_0;
  wire cerr_i_2_n_0;
  wire cerr_i_3_n_0;
  wire cerr_i_4_n_0;
  wire cerr_i_5_n_0;
  wire cerr_i_6_n_0;
  wire cerr_i_7_n_0;
  wire cerr_i_8_n_0;
  wire cerr_i_9_n_0;
  wire codeErr;
  wire dataKOut;
  wire [7:0]dataOut;
  wire derr;
  wire derr_i_10_n_0;
  wire derr_i_11_n_0;
  wire derr_i_12_n_0;
  wire derr_i_13_n_0;
  wire derr_i_14_n_0;
  wire derr_i_15_n_0;
  wire derr_i_16_n_0;
  wire derr_i_17_n_0;
  wire derr_i_2_n_0;
  wire derr_i_3_n_0;
  wire derr_i_4_n_0;
  wire derr_i_5_n_0;
  wire derr_i_6_n_0;
  wire derr_i_7_n_0;
  wire derr_i_8_n_0;
  wire derr_i_9_n_0;
  wire [3:0]derr_reg_0;
  wire [6:0]di;
  wire disp;
  wire dispErr;
  wire disp_i_1_n_0;
  wire disp_i_2_n_0;
  wire disp_i_4_n_0;
  wire disp_i_5_n_0;
  wire [9:0]disp_reg_0;
  wire disp_reg_i_3_n_0;
  wire \err[2]_i_6_n_0 ;
  wire \err[2]_i_7_n_0 ;
  wire \err_reg[2] ;
  wire \evtctr_i[31]_i_3_n_0 ;
  wire \evtctr_i[31]_i_4_n_0 ;
  wire \evtctr_i_reg[31] ;
  wire k_i_2_n_0;
  wire k_i_3_n_0;
  wire k_i_4_n_0;
  wire k_reg_0;
  wire [0:0]k_reg_1;
  wire [0:0]\lctr_reg[0] ;
  wire \lctr_reg[6] ;
  wire \lfsr_q[15]_i_4_n_0 ;
  wire \lfsr_q[15]_i_5_n_0 ;
  wire \lfsr_q[15]_i_6_n_0 ;
  wire \lfsr_q[15]_i_7_n_0 ;
  wire \lfsr_q[1]_i_2_n_0 ;
  wire \lfsr_q[1]_i_3_n_0 ;
  wire \lfsr_q[1]_i_4_n_0 ;
  wire \lfsr_q[1]_i_5_n_0 ;
  wire [1:0]\lfsr_q_reg[15] ;
  wire [9:0]\lfsr_q_reg[8] ;
  wire lock;
  wire lock_i_2_n_0;
  wire lock_i_3_n_0;
  wire [5:0]lock_reg;
  wire lock_reg_0;
  wire pkt_end;
  wire pkt_end_reg;
  wire \q[7]_i_1_n_0 ;
  wire \q[7]_i_3_n_0 ;
  wire \q[7]_i_4_n_0 ;
  wire [5:0]\q_reg[0]_0 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[7]_0 ;
  wire [6:0]\q_reg[7]_1 ;
  wire rec_clk;
  wire s_match;
  wire s_match_r_i_2_n_0;
  wire [0:0]slen;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire [0:0]\state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire stb_0;
  wire stbd_reg;
  wire \sync[0]_INST_0_i_1_n_0 ;
  wire \sync[0]_INST_0_i_2_n_0 ;
  wire [1:0]tgrp;

  LUT6 #(
    .INIT(64'hF88080018001011F)) 
    cerr_i_10
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[3]),
        .I3(disp_reg_0[0]),
        .I4(disp_reg_0[1]),
        .I5(disp_reg_0[2]),
        .O(cerr_i_10_n_0));
  LUT6 #(
    .INIT(64'hE8898117D557577F)) 
    cerr_i_11
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[2]),
        .I2(disp_reg_0[1]),
        .I3(disp_reg_0[0]),
        .I4(disp_reg_0[3]),
        .I5(disp_reg_0[4]),
        .O(cerr_i_11_n_0));
  LUT6 #(
    .INIT(64'hF88181179117177F)) 
    cerr_i_12
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[2]),
        .I3(disp_reg_0[1]),
        .I4(disp_reg_0[0]),
        .I5(disp_reg_0[3]),
        .O(cerr_i_12_n_0));
  LUT6 #(
    .INIT(64'hFEE8E889E989899F)) 
    cerr_i_13
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[3]),
        .I3(disp_reg_0[0]),
        .I4(disp_reg_0[1]),
        .I5(disp_reg_0[2]),
        .O(cerr_i_13_n_0));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    cerr_i_2
       (.I0(cerr_i_4_n_0),
        .I1(disp_reg_0[9]),
        .I2(cerr_i_5_n_0),
        .I3(disp_reg_0[7]),
        .I4(cerr_i_6_n_0),
        .I5(disp_reg_0[6]),
        .O(cerr_i_2_n_0));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    cerr_i_3
       (.I0(cerr_i_7_n_0),
        .I1(disp_reg_0[6]),
        .I2(disp_reg_0[7]),
        .I3(cerr_i_5_n_0),
        .I4(disp_reg_0[9]),
        .I5(cerr_i_8_n_0),
        .O(cerr_i_3_n_0));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    cerr_i_4
       (.I0(cerr_i_9_n_0),
        .I1(disp_reg_0[7]),
        .I2(cerr_i_10_n_0),
        .I3(disp_reg_0[6]),
        .I4(cerr_i_11_n_0),
        .O(cerr_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    cerr_i_5
       (.I0(cerr_i_9_n_0),
        .I1(disp_reg_0[6]),
        .I2(cerr_i_12_n_0),
        .O(cerr_i_5_n_0));
  LUT6 #(
    .INIT(64'hFAAFAF7FBFFFFFFF)) 
    cerr_i_6
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[2]),
        .I3(disp_reg_0[1]),
        .I4(disp_reg_0[0]),
        .I5(disp_reg_0[3]),
        .O(cerr_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFDFDDFFFEDFDD7)) 
    cerr_i_7
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[3]),
        .I2(disp_reg_0[1]),
        .I3(disp_reg_0[2]),
        .I4(disp_reg_0[0]),
        .I5(disp_reg_0[4]),
        .O(cerr_i_7_n_0));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    cerr_i_8
       (.I0(cerr_i_13_n_0),
        .I1(disp_reg_0[7]),
        .I2(cerr_i_10_n_0),
        .I3(disp_reg_0[6]),
        .I4(cerr_i_12_n_0),
        .O(cerr_i_8_n_0));
  LUT6 #(
    .INIT(64'hFEE8E881E881819F)) 
    cerr_i_9
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[3]),
        .I3(disp_reg_0[0]),
        .I4(disp_reg_0[1]),
        .I5(disp_reg_0[2]),
        .O(cerr_i_9_n_0));
  FDRE cerr_reg
       (.C(rec_clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(codeErr),
        .Q(cerr),
        .R(1'b0));
  MUXF7 cerr_reg_i_1
       (.I0(cerr_i_2_n_0),
        .I1(cerr_i_3_n_0),
        .O(codeErr),
        .S(disp_reg_0[8]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    derr_i_1
       (.I0(derr_i_2_n_0),
        .I1(disp_reg_0[8]),
        .I2(derr_i_3_n_0),
        .I3(disp_reg_0[9]),
        .I4(derr_i_4_n_0),
        .O(dispErr));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFEE9)) 
    derr_i_10
       (.I0(disp_reg_0[3]),
        .I1(disp_reg_0[0]),
        .I2(disp_reg_0[1]),
        .I3(disp_reg_0[2]),
        .O(derr_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hE881)) 
    derr_i_11
       (.I0(disp_reg_0[3]),
        .I1(disp_reg_0[0]),
        .I2(disp_reg_0[2]),
        .I3(disp_reg_0[1]),
        .O(derr_i_11_n_0));
  LUT6 #(
    .INIT(64'h00010117011717FF)) 
    derr_i_12
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[3]),
        .I3(disp_reg_0[2]),
        .I4(disp_reg_0[1]),
        .I5(disp_reg_0[0]),
        .O(derr_i_12_n_0));
  LUT6 #(
    .INIT(64'h0EE9E997E99797FF)) 
    derr_i_13
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[3]),
        .I3(disp_reg_0[2]),
        .I4(disp_reg_0[1]),
        .I5(disp_reg_0[0]),
        .O(derr_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFE8E880E8808000)) 
    derr_i_14
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[3]),
        .I2(disp_reg_0[4]),
        .I3(disp_reg_0[1]),
        .I4(disp_reg_0[2]),
        .I5(disp_reg_0[0]),
        .O(derr_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8117)) 
    derr_i_15
       (.I0(disp_reg_0[3]),
        .I1(disp_reg_0[0]),
        .I2(disp_reg_0[1]),
        .I3(disp_reg_0[2]),
        .O(derr_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h977F)) 
    derr_i_16
       (.I0(disp_reg_0[3]),
        .I1(disp_reg_0[2]),
        .I2(disp_reg_0[1]),
        .I3(disp_reg_0[0]),
        .O(derr_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFE9E997E9979770)) 
    derr_i_17
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[3]),
        .I3(disp_reg_0[2]),
        .I4(disp_reg_0[1]),
        .I5(disp_reg_0[0]),
        .O(derr_i_17_n_0));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    derr_i_2
       (.I0(derr_i_5_n_0),
        .I1(disp_reg_0[7]),
        .I2(derr_i_6_n_0),
        .I3(disp_reg_0[6]),
        .I4(derr_i_7_n_0),
        .O(derr_i_2_n_0));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    derr_i_3
       (.I0(derr_i_6_n_0),
        .I1(disp_reg_0[7]),
        .I2(derr_i_8_n_0),
        .I3(disp_reg_0[6]),
        .I4(derr_i_9_n_0),
        .O(derr_i_3_n_0));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    derr_i_4
       (.I0(derr_i_5_n_0),
        .I1(disp_reg_0[7]),
        .I2(derr_i_9_n_0),
        .I3(disp_reg_0[6]),
        .I4(derr_i_7_n_0),
        .O(derr_i_4_n_0));
  LUT6 #(
    .INIT(64'hEDE8FFFFEDE80000)) 
    derr_i_5
       (.I0(disp_reg_0[5]),
        .I1(derr_i_10_n_0),
        .I2(disp_reg_0[4]),
        .I3(derr_i_11_n_0),
        .I4(disp),
        .I5(derr_i_12_n_0),
        .O(derr_i_5_n_0));
  LUT6 #(
    .INIT(64'hEDE8FFFFEDE80000)) 
    derr_i_6
       (.I0(disp_reg_0[5]),
        .I1(derr_i_10_n_0),
        .I2(disp_reg_0[4]),
        .I3(derr_i_11_n_0),
        .I4(disp),
        .I5(derr_i_13_n_0),
        .O(derr_i_6_n_0));
  LUT6 #(
    .INIT(64'hB8BBB888BBBB88BB)) 
    derr_i_7
       (.I0(derr_i_14_n_0),
        .I1(disp),
        .I2(derr_i_15_n_0),
        .I3(disp_reg_0[5]),
        .I4(derr_i_16_n_0),
        .I5(disp_reg_0[4]),
        .O(derr_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    derr_i_8
       (.I0(derr_i_14_n_0),
        .I1(disp),
        .I2(derr_i_12_n_0),
        .O(derr_i_8_n_0));
  LUT6 #(
    .INIT(64'hB8BBB888BBBB88BB)) 
    derr_i_9
       (.I0(derr_i_17_n_0),
        .I1(disp),
        .I2(derr_i_15_n_0),
        .I3(disp_reg_0[5]),
        .I4(derr_i_16_n_0),
        .I5(disp_reg_0[4]),
        .O(derr_i_9_n_0));
  FDRE derr_reg
       (.C(rec_clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(dispErr),
        .Q(derr),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE2E222)) 
    disp_i_1
       (.I0(disp),
        .I1(stb_0),
        .I2(disp_reg_0[9]),
        .I3(disp_i_2_n_0),
        .I4(disp_reg_0[8]),
        .I5(\lctr_reg[0] ),
        .O(disp_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    disp_i_2
       (.I0(disp_reg_0[7]),
        .I1(disp_reg_i_3_n_0),
        .I2(disp_reg_0[6]),
        .O(disp_i_2_n_0));
  LUT6 #(
    .INIT(64'hBEEAE88228808000)) 
    disp_i_4
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[0]),
        .I2(disp_reg_0[2]),
        .I3(disp_reg_0[1]),
        .I4(disp_reg_0[3]),
        .I5(disp_reg_0[4]),
        .O(disp_i_4_n_0));
  LUT6 #(
    .INIT(64'h8FFEFEE8EEE8E888)) 
    disp_i_5
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[1]),
        .I3(disp_reg_0[2]),
        .I4(disp_reg_0[0]),
        .I5(disp_reg_0[3]),
        .O(disp_i_5_n_0));
  FDRE disp_reg
       (.C(rec_clk),
        .CE(1'b1),
        .D(disp_i_1_n_0),
        .Q(disp),
        .R(1'b0));
  MUXF7 disp_reg_i_3
       (.I0(disp_i_4_n_0),
        .I1(disp_i_5_n_0),
        .O(disp_reg_i_3_n_0),
        .S(disp));
  LUT6 #(
    .INIT(64'h000000004040404F)) 
    \err[2]_i_4 
       (.I0(\err[2]_i_6_n_0 ),
        .I1(\sync[0]_INST_0_i_2_n_0 ),
        .I2(k_reg_0),
        .I3(di[0]),
        .I4(di[1]),
        .I5(\err[2]_i_7_n_0 ),
        .O(slen));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \err[2]_i_5 
       (.I0(\lfsr_q[15]_i_4_n_0 ),
        .I1(\err[2]_i_6_n_0 ),
        .I2(\sync[0]_INST_0_i_2_n_0 ),
        .I3(\err_reg[2] ),
        .I4(\lfsr_q_reg[15] [1]),
        .I5(\lfsr_q_reg[15] [0]),
        .O(\state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \err[2]_i_6 
       (.I0(di[3]),
        .I1(di[6]),
        .I2(di[2]),
        .I3(Q),
        .O(\err[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \err[2]_i_7 
       (.I0(di[3]),
        .I1(di[2]),
        .I2(k_reg_0),
        .O(\err[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \evtctr_i[31]_i_1 
       (.I0(pkt_end),
        .I1(\q_reg[7]_0 ),
        .I2(\evtctr_i[31]_i_3_n_0 ),
        .I3(\evtctr_i[31]_i_4_n_0 ),
        .I4(di[3]),
        .I5(\evtctr_i_reg[31] ),
        .O(pkt_end_reg));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \evtctr_i[31]_i_3 
       (.I0(k_reg_0),
        .I1(di[1]),
        .O(\evtctr_i[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \evtctr_i[31]_i_4 
       (.I0(k_reg_0),
        .I1(di[2]),
        .O(\evtctr_i[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FF03BF80FC00)) 
    k_i_1
       (.I0(k_i_2_n_0),
        .I1(disp_reg_0[8]),
        .I2(disp_reg_0[9]),
        .I3(k_i_3_n_0),
        .I4(disp_reg_0[7]),
        .I5(k_i_4_n_0),
        .O(dataKOut));
  LUT6 #(
    .INIT(64'hF00000000010106F)) 
    k_i_2
       (.I0(disp_reg_0[0]),
        .I1(disp_reg_0[1]),
        .I2(disp_reg_0[5]),
        .I3(disp_reg_0[3]),
        .I4(disp_reg_0[2]),
        .I5(disp_reg_0[4]),
        .O(k_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    k_i_3
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[3]),
        .I2(disp_reg_0[2]),
        .I3(disp_reg_0[4]),
        .O(k_i_3_n_0));
  LUT6 #(
    .INIT(64'hBE00400040000055)) 
    k_i_4
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[1]),
        .I2(disp_reg_0[0]),
        .I3(disp_reg_0[4]),
        .I4(disp_reg_0[2]),
        .I5(disp_reg_0[3]),
        .O(k_i_4_n_0));
  FDRE k_reg
       (.C(rec_clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(dataKOut),
        .Q(k_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \lctr[0]_i_1 
       (.I0(\lctr_reg[0] ),
        .I1(k_reg_0),
        .I2(lock_reg[0]),
        .O(\q_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \lctr[1]_i_1 
       (.I0(\lctr_reg[0] ),
        .I1(k_reg_0),
        .I2(lock_reg[0]),
        .I3(lock_reg[1]),
        .O(\q_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h01101010)) 
    \lctr[2]_i_1 
       (.I0(\lctr_reg[0] ),
        .I1(k_reg_0),
        .I2(lock_reg[2]),
        .I3(lock_reg[1]),
        .I4(lock_reg[0]),
        .O(\q_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'h0110101010101010)) 
    \lctr[3]_i_1 
       (.I0(\lctr_reg[0] ),
        .I1(k_reg_0),
        .I2(lock_reg[3]),
        .I3(lock_reg[0]),
        .I4(lock_reg[1]),
        .I5(lock_reg[2]),
        .O(\q_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \lctr[5]_i_1 
       (.I0(E),
        .I1(\lctr_reg[0] ),
        .I2(k_reg_0),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \lctr[6]_i_1 
       (.I0(\lctr_reg[0] ),
        .I1(k_reg_0),
        .I2(lock_reg[4]),
        .I3(lock_reg_0),
        .O(\q_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h01101010)) 
    \lctr[7]_i_1 
       (.I0(\lctr_reg[0] ),
        .I1(k_reg_0),
        .I2(lock_reg[5]),
        .I3(lock_reg_0),
        .I4(lock_reg[4]),
        .O(\q_reg[0]_0 [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[0]_i_1 
       (.I0(D[5]),
        .I1(\lfsr_q[15]_i_6_n_0 ),
        .I2(\lfsr_q_reg[8] [4]),
        .I3(\q_reg[7]_0 ),
        .I4(\lfsr_q[15]_i_7_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \lfsr_q[15]_i_1 
       (.I0(\sync[0]_INST_0_i_2_n_0 ),
        .I1(di[3]),
        .I2(di[6]),
        .I3(di[2]),
        .I4(Q),
        .I5(\lfsr_q[15]_i_4_n_0 ),
        .O(\q_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00404040)) 
    \lfsr_q[15]_i_2 
       (.I0(\lfsr_q_reg[15] [1]),
        .I1(\lfsr_q_reg[15] [0]),
        .I2(E),
        .I3(\lfsr_q[15]_i_5_n_0 ),
        .I4(k_reg_0),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[15]_i_3 
       (.I0(D[5]),
        .I1(\lfsr_q[15]_i_6_n_0 ),
        .I2(\lfsr_q_reg[8] [4]),
        .I3(\q_reg[7]_0 ),
        .I4(\lfsr_q[15]_i_7_n_0 ),
        .I5(\lfsr_q_reg[8] [1]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \lfsr_q[15]_i_4 
       (.I0(E),
        .I1(k_reg_0),
        .O(\lfsr_q[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \lfsr_q[15]_i_5 
       (.I0(Q),
        .I1(di[2]),
        .I2(di[6]),
        .I3(di[3]),
        .I4(\sync[0]_INST_0_i_2_n_0 ),
        .O(\lfsr_q[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9999699699999669)) 
    \lfsr_q[15]_i_6 
       (.I0(\lfsr_q_reg[8] [7]),
        .I1(\lfsr_q_reg[8] [8]),
        .I2(di[1]),
        .I3(di[5]),
        .I4(k_reg_0),
        .I5(di[6]),
        .O(\lfsr_q[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3CC369963CC39669)) 
    \lfsr_q[15]_i_7 
       (.I0(Q),
        .I1(\lfsr_q_reg[8] [9]),
        .I2(\lfsr_q_reg[8] [3]),
        .I3(\lfsr_q_reg[8] [2]),
        .I4(k_reg_0),
        .I5(di[2]),
        .O(\lfsr_q[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[1]_i_1 
       (.I0(\lfsr_q[15]_i_6_n_0 ),
        .I1(\lfsr_q[1]_i_2_n_0 ),
        .I2(\lfsr_q_reg[8] [3]),
        .I3(\lfsr_q[1]_i_3_n_0 ),
        .I4(\lfsr_q[1]_i_4_n_0 ),
        .I5(\lfsr_q[1]_i_5_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \lfsr_q[1]_i_2 
       (.I0(\lfsr_q_reg[8] [6]),
        .I1(k_reg_0),
        .I2(di[4]),
        .O(\lfsr_q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \lfsr_q[1]_i_3 
       (.I0(\lfsr_q_reg[8] [9]),
        .I1(k_reg_0),
        .I2(Q),
        .O(\lfsr_q[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \lfsr_q[1]_i_4 
       (.I0(\lfsr_q_reg[8] [5]),
        .I1(k_reg_0),
        .I2(di[3]),
        .O(\lfsr_q[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h59)) 
    \lfsr_q[1]_i_5 
       (.I0(\lfsr_q_reg[8] [4]),
        .I1(di[2]),
        .I2(k_reg_0),
        .O(\lfsr_q[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h96699696)) 
    \lfsr_q[2]_i_1 
       (.I0(\lfsr_q_reg[8] [2]),
        .I1(\lfsr_q_reg[8] [3]),
        .I2(\q_reg[7]_0 ),
        .I3(k_reg_0),
        .I4(di[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h3C693C96)) 
    \lfsr_q[3]_i_1 
       (.I0(di[1]),
        .I1(\lfsr_q_reg[8] [3]),
        .I2(\lfsr_q_reg[8] [4]),
        .I3(k_reg_0),
        .I4(di[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h3C3C6996)) 
    \lfsr_q[4]_i_1 
       (.I0(di[3]),
        .I1(\lfsr_q_reg[8] [5]),
        .I2(\lfsr_q_reg[8] [4]),
        .I3(di[2]),
        .I4(k_reg_0),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h3369CC96)) 
    \lfsr_q[5]_i_1 
       (.I0(di[3]),
        .I1(\lfsr_q_reg[8] [5]),
        .I2(di[4]),
        .I3(k_reg_0),
        .I4(\lfsr_q_reg[8] [6]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h3369CC96)) 
    \lfsr_q[6]_i_1 
       (.I0(di[4]),
        .I1(\lfsr_q_reg[8] [6]),
        .I2(di[5]),
        .I3(k_reg_0),
        .I4(\lfsr_q_reg[8] [7]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h3369CC96)) 
    \lfsr_q[7]_i_1 
       (.I0(di[6]),
        .I1(\lfsr_q_reg[8] [8]),
        .I2(di[5]),
        .I3(k_reg_0),
        .I4(\lfsr_q_reg[8] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hC396C3693C693C96)) 
    \lfsr_q[8]_i_1 
       (.I0(Q),
        .I1(\lfsr_q_reg[8] [9]),
        .I2(\lfsr_q_reg[8] [8]),
        .I3(k_reg_0),
        .I4(di[6]),
        .I5(\lfsr_q_reg[8] [0]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h007FFFFF007F0000)) 
    lock_i_1__0
       (.I0(lock_reg[4]),
        .I1(lock_reg_0),
        .I2(lock_reg[5]),
        .I3(lock_i_2_n_0),
        .I4(E),
        .I5(lock),
        .O(\lctr_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFFFF)) 
    lock_i_2
       (.I0(lock_i_3_n_0),
        .I1(cerr),
        .I2(derr),
        .I3(\lctr_reg[0] ),
        .I4(lock),
        .I5(k_reg_0),
        .O(lock_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hA2AAAAAA)) 
    lock_i_3
       (.I0(k_reg_0),
        .I1(di[3]),
        .I2(di[6]),
        .I3(di[2]),
        .I4(\sync[0]_INST_0_i_2_n_0 ),
        .O(lock_i_3_n_0));
  LUT6 #(
    .INIT(64'h75A05F0356936CB1)) 
    \q[0]_i_1 
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[3]),
        .I3(disp_reg_0[0]),
        .I4(disp_reg_0[1]),
        .I5(disp_reg_0[2]),
        .O(dataOut[0]));
  LUT6 #(
    .INIT(64'h755656FCA90303B1)) 
    \q[1]_i_1 
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[3]),
        .I3(disp_reg_0[2]),
        .I4(disp_reg_0[0]),
        .I5(disp_reg_0[1]),
        .O(dataOut[1]));
  LUT6 #(
    .INIT(64'hF55F5E6CA0139B31)) 
    \q[2]_i_1 
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[1]),
        .I3(disp_reg_0[3]),
        .I4(disp_reg_0[0]),
        .I5(disp_reg_0[2]),
        .O(dataOut[2]));
  LUT6 #(
    .INIT(64'h3B8877877787380B)) 
    \q[3]_i_1 
       (.I0(disp_reg_0[0]),
        .I1(disp_reg_0[5]),
        .I2(disp_reg_0[4]),
        .I3(disp_reg_0[3]),
        .I4(disp_reg_0[1]),
        .I5(disp_reg_0[2]),
        .O(dataOut[3]));
  LUT6 #(
    .INIT(64'hCCCCCCDBCD5B5B3D)) 
    \q[4]_i_1 
       (.I0(disp_reg_0[5]),
        .I1(disp_reg_0[4]),
        .I2(disp_reg_0[3]),
        .I3(disp_reg_0[0]),
        .I4(disp_reg_0[1]),
        .I5(disp_reg_0[2]),
        .O(dataOut[4]));
  LUT6 #(
    .INIT(64'h8F5F8F05E8F5E8F0)) 
    \q[5]_i_1 
       (.I0(disp_reg_0[8]),
        .I1(\q[7]_i_4_n_0 ),
        .I2(disp_reg_0[9]),
        .I3(disp_reg_0[7]),
        .I4(\q[7]_i_3_n_0 ),
        .I5(disp_reg_0[6]),
        .O(dataOut[5]));
  LUT6 #(
    .INIT(64'h8F5F8F05E8F5E8F0)) 
    \q[6]_i_1 
       (.I0(disp_reg_0[8]),
        .I1(\q[7]_i_3_n_0 ),
        .I2(disp_reg_0[9]),
        .I3(disp_reg_0[7]),
        .I4(\q[7]_i_4_n_0 ),
        .I5(disp_reg_0[6]),
        .O(dataOut[6]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[7]_i_1 
       (.I0(derr_reg_0[3]),
        .I1(derr_reg_0[2]),
        .I2(derr_reg_0[1]),
        .I3(derr_reg_0[0]),
        .I4(\lctr_reg[0] ),
        .O(\q[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33CCFC8830BB33CC)) 
    \q[7]_i_2 
       (.I0(\q[7]_i_3_n_0 ),
        .I1(disp_reg_0[8]),
        .I2(\q[7]_i_4_n_0 ),
        .I3(disp_reg_0[9]),
        .I4(disp_reg_0[6]),
        .I5(disp_reg_0[7]),
        .O(dataOut[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[7]_i_3 
       (.I0(disp_reg_0[4]),
        .I1(disp_reg_0[3]),
        .I2(disp_reg_0[2]),
        .I3(disp_reg_0[5]),
        .O(\q[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[7]_i_4 
       (.I0(disp_reg_0[4]),
        .I1(disp_reg_0[2]),
        .I2(disp_reg_0[3]),
        .I3(disp_reg_0[5]),
        .O(\q[7]_i_4_n_0 ));
  FDRE \q_reg[0] 
       (.C(rec_clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(dataOut[0]),
        .Q(di[0]),
        .R(1'b0));
  FDRE \q_reg[1] 
       (.C(rec_clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(dataOut[1]),
        .Q(di[1]),
        .R(1'b0));
  FDRE \q_reg[2] 
       (.C(rec_clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(dataOut[2]),
        .Q(di[2]),
        .R(1'b0));
  FDRE \q_reg[3] 
       (.C(rec_clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(dataOut[3]),
        .Q(di[3]),
        .R(1'b0));
  FDRE \q_reg[4] 
       (.C(rec_clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(dataOut[4]),
        .Q(di[4]),
        .R(1'b0));
  FDRE \q_reg[5] 
       (.C(rec_clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(dataOut[5]),
        .Q(di[5]),
        .R(1'b0));
  FDRE \q_reg[6] 
       (.C(rec_clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(dataOut[6]),
        .Q(di[6]),
        .R(1'b0));
  FDRE \q_reg[7] 
       (.C(rec_clk),
        .CE(\q[7]_i_1_n_0 ),
        .D(dataOut[7]),
        .Q(Q),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF04050400)) 
    s_match_r_i_1
       (.I0(tgrp[1]),
        .I1(di[5]),
        .I2(k_reg_0),
        .I3(tgrp[0]),
        .I4(di[4]),
        .I5(s_match_r_i_2_n_0),
        .O(s_match));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0B080000)) 
    s_match_r_i_2
       (.I0(Q),
        .I1(tgrp[0]),
        .I2(k_reg_0),
        .I3(di[6]),
        .I4(tgrp[1]),
        .O(s_match_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sctr[4]_i_1 
       (.I0(\lfsr_q[15]_i_5_n_0 ),
        .I1(k_reg_0),
        .I2(E),
        .O(k_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr[92]_i_1 
       (.I0(di[4]),
        .I1(k_reg_0),
        .O(\q_reg[7]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr[93]_i_1 
       (.I0(di[5]),
        .I1(k_reg_0),
        .O(\q_reg[7]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr[94]_i_1 
       (.I0(di[6]),
        .I1(k_reg_0),
        .O(\q_reg[7]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr[95]_i_2 
       (.I0(Q),
        .I1(k_reg_0),
        .O(\q_reg[7]_1 [6]));
  LUT6 #(
    .INIT(64'h888AFFFF888A0000)) 
    \state[1]_i_4 
       (.I0(E),
        .I1(\state_reg[0] ),
        .I2(\state_reg[0]_0 ),
        .I3(slen),
        .I4(\lfsr_q_reg[15] [1]),
        .I5(\q_reg[3]_0 ),
        .O(stbd_reg));
  LUT4 #(
    .INIT(16'h0001)) 
    stbd_i_1
       (.I0(derr_reg_0[0]),
        .I1(derr_reg_0[1]),
        .I2(derr_reg_0[2]),
        .I3(derr_reg_0[3]),
        .O(stb_0));
  LUT6 #(
    .INIT(64'hF7FFFFFFF7FF0000)) 
    \sync[0]_INST_0 
       (.I0(Q),
        .I1(di[2]),
        .I2(\sync[0]_INST_0_i_1_n_0 ),
        .I3(\sync[0]_INST_0_i_2_n_0 ),
        .I4(k_reg_0),
        .I5(di[0]),
        .O(\q_reg[7]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sync[0]_INST_0_i_1 
       (.I0(di[6]),
        .I1(di[3]),
        .O(\sync[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \sync[0]_INST_0_i_2 
       (.I0(di[1]),
        .I1(di[4]),
        .I2(di[5]),
        .I3(di[0]),
        .O(\sync[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync[1]_INST_0 
       (.I0(di[1]),
        .I1(k_reg_0),
        .O(\q_reg[7]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync[2]_INST_0 
       (.I0(di[2]),
        .I1(k_reg_0),
        .O(\q_reg[7]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync[3]_INST_0 
       (.I0(di[3]),
        .I1(k_reg_0),
        .O(\q_reg[7]_1 [2]));
endmodule

module design_1_pdts_endpoint_0_0_pdts_endpoint
   (lock_reg,
    evtctr,
    tstamp,
    \q_reg[7] ,
    rst,
    sync,
    stat,
    rec_clk_reset,
    sync_v,
    srst,
    sclk,
    rec_clk,
    rec_d_clk,
    rec_d,
    sfp_los,
    cdr_los,
    cdr_lol,
    rec_clk_locked,
    tgrp);
  output lock_reg;
  output [31:0]evtctr;
  output [63:0]tstamp;
  output \q_reg[7] ;
  output rst;
  output [2:0]sync;
  output [3:0]stat;
  output rec_clk_reset;
  output sync_v;
  input srst;
  input sclk;
  input rec_clk;
  input rec_d_clk;
  input rec_d;
  input sfp_los;
  input cdr_los;
  input cdr_lol;
  input rec_clk_locked;
  input [1:0]tgrp;

  wire cdr_lol;
  wire cdr_los;
  wire [15:0]\cksum/crc/lfsr_c ;
  wire cstb;
  wire [7:4]d;
  wire [7:7]di;
  wire [31:0]evtctr;
  wire k;
  wire ks;
  wire lock_reg;
  wire pkt_end;
  wire \q_reg[7] ;
  wire rec_clk;
  wire rec_clk_locked;
  wire rec_clk_reset;
  wire rec_d;
  wire rec_d_clk;
  wire rec_rst;
  wire rst;
  wire rx_err_f;
  wire rx_n_0;
  wire rx_n_1;
  wire rx_n_10;
  wire rx_n_11;
  wire rx_n_12;
  wire rx_n_14;
  wire rx_n_15;
  wire rx_n_16;
  wire rx_n_17;
  wire rx_n_18;
  wire rx_n_2;
  wire rx_n_3;
  wire rx_n_4;
  wire rx_n_5;
  wire rx_n_6;
  wire rx_n_7;
  wire rx_n_8;
  wire rx_n_9;
  wire rxphy_aligned;
  wire rxphy_locked;
  wire rxphy_n_13;
  wire rxphy_n_23;
  wire rxphy_n_27;
  wire rxphy_n_29;
  wire rxphy_n_31;
  wire rxphy_n_8;
  wire rxphy_rst;
  wire s_match;
  wire sclk;
  wire sfp_los;
  wire [3:3]slen;
  wire srst;
  wire [3:0]stat;
  wire stb;
  wire [2:0]sync;
  wire sync_v;
  wire [1:0]tgrp;
  wire [63:0]tstamp;

  design_1_pdts_endpoint_0_0_pdts_rx rx
       (.D({\cksum/crc/lfsr_c [15],\cksum/crc/lfsr_c [8:4],rxphy_n_8,\cksum/crc/lfsr_c [2:0]}),
        .E(cstb),
        .Q({rx_n_0,rx_n_1}),
        .SR(ks),
        .\actr_reg[0]_0 (rx_n_12),
        .\err_reg[0]_0 (rx_n_18),
        .\err_reg[2]_0 (rxphy_n_31),
        .k(k),
        .\lfsr_q_reg[0] (rxphy_n_13),
        .\lfsr_q_reg[15] ({rx_n_2,rx_n_3,rx_n_4,rx_n_5,rx_n_6,rx_n_7,rx_n_8,rx_n_9,rx_n_10,rx_n_11}),
        .\lfsr_q_reg[9] (di),
        .pend_f_reg_0(rx_n_15),
        .rec_clk(rec_clk),
        .rx_err_f_reg(rx_err_f),
        .s_match(s_match),
        .s_match_r_reg_0(rx_n_16),
        .\sctr_reg[1]_0 (rx_n_14),
        .\sctr_reg[2]_0 (rx_n_17),
        .slen(slen),
        .\state_reg[0]_0 (rxphy_n_27),
        .\state_reg[0]_1 (rst),
        .stb(stb),
        .sync_v(sync_v),
        .\ts_reg[3]_0 ({sync,\q_reg[7] }));
  design_1_pdts_endpoint_0_0_pdts_rx_phy rxphy
       (.D({\cksum/crc/lfsr_c [15],\cksum/crc/lfsr_c [8:4],rxphy_n_8,\cksum/crc/lfsr_c [2:0]}),
        .E(cstb),
        .Q(di),
        .SR(rxphy_n_23),
        .\err_reg[2] (rx_n_12),
        .\evtctr_i_reg[31] (rx_n_16),
        .k(k),
        .k_reg(ks),
        .\lctr_reg[0]_0 (rxphy_rst),
        .\lfsr_q_reg[15] ({rx_n_0,rx_n_1}),
        .\lfsr_q_reg[8] ({rx_n_2,rx_n_3,rx_n_4,rx_n_5,rx_n_6,rx_n_7,rx_n_8,rx_n_9,rx_n_10,rx_n_11}),
        .lock_reg_0({rxphy_locked,rxphy_aligned}),
        .out(rec_rst),
        .pkt_end(pkt_end),
        .pkt_end_reg(rxphy_n_29),
        .\q_reg[3] (rxphy_n_13),
        .\q_reg[7] ({d,sync,\q_reg[7] }),
        .rec_clk(rec_clk),
        .rec_clk_locked(rec_clk_locked),
        .rec_clk_reset(rec_clk_reset),
        .rec_d(rec_d),
        .rec_d_clk(rec_d_clk),
        .s_match(s_match),
        .sclk(sclk),
        .slen(slen),
        .\state_reg[0] (rx_n_17),
        .\state_reg[0]_0 (rx_n_14),
        .\state_reg[1] (rxphy_n_31),
        .stb(stb),
        .stbd_reg_0(rxphy_n_27),
        .tgrp(tgrp));
  design_1_pdts_endpoint_0_0_pdts_ep_startup startup
       (.D(rx_err_f),
        .SR(rxphy_n_23),
        .cdr_lol(cdr_lol),
        .cdr_los(cdr_los),
        .\da_reg[3] ({lock_reg,rxphy_locked,rxphy_aligned}),
        .out(rec_rst),
        .\q_reg[1] ({rst,rxphy_rst}),
        .rec_clk(rec_clk),
        .rec_d_clk(rec_d_clk),
        .rx_err_f_reg_0(rx_n_18),
        .sclk(sclk),
        .sfp_los(sfp_los),
        .srst(srst),
        .stat(stat));
  design_1_pdts_endpoint_0_0_pdts_tstamp ts
       (.D({d,sync,\q_reg[7] }),
        .Q(tstamp),
        .SR(rst),
        .evtctr(evtctr),
        .\evtctr_i_reg[31]_0 (rxphy_n_29),
        .lock_reg_0(lock_reg),
        .pkt_end(pkt_end),
        .rec_clk(rec_clk),
        .slen(slen),
        .\sr_reg[9]_0 (rx_n_15),
        .\sr_reg[9]_1 (rx_n_16),
        .sync_v(sync_v));
endmodule

module design_1_pdts_endpoint_0_0_pdts_ep_startup
   (out,
    \q_reg[1] ,
    D,
    stat,
    rec_clk,
    sclk,
    rec_d_clk,
    rx_err_f_reg_0,
    sfp_los,
    srst,
    cdr_los,
    cdr_lol,
    \da_reg[3] ,
    SR);
  output out;
  output [1:0]\q_reg[1] ;
  output [0:0]D;
  output [3:0]stat;
  input rec_clk;
  input sclk;
  input rec_d_clk;
  input rx_err_f_reg_0;
  input sfp_los;
  input srst;
  input cdr_los;
  input cdr_lol;
  input [2:0]\da_reg[3] ;
  input [0:0]SR;

  wire [0:0]D;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_2_n_0 ;
  wire \FSM_onehot_state[9]_i_4_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [0:0]SR;
  wire \cdr_ctr[4]_i_1_n_0 ;
  wire \cdr_ctr[7]_i_1_n_0 ;
  wire \cdr_ctr[7]_i_2_n_0 ;
  wire \cdr_ctr[7]_i_4_n_0 ;
  wire [7:0]cdr_ctr_reg;
  wire cdr_lol;
  wire cdr_los;
  wire [2:0]\da_reg[3] ;
  wire out;
  wire p_0_in2_in;
  wire p_0_in5_in;
  wire p_4_in;
  wire [4:0]plusOp;
  wire [7:0]plusOp__0;
  wire [7:0]plusOp__1;
  wire [1:0]\q_reg[1] ;
  wire [4:4]rctr_reg;
  wire \rctr_reg_n_0_[0] ;
  wire \rctr_reg_n_0_[1] ;
  wire \rctr_reg_n_0_[2] ;
  wire \rctr_reg_n_0_[3] ;
  wire rec_clk;
  wire rec_d_clk;
  wire rx_err_f_reg_0;
  wire sclk;
  wire sfp_los;
  wire \sfp_los_ctr[4]_i_1_n_0 ;
  wire \sfp_los_ctr[7]_i_1_n_0 ;
  wire \sfp_los_ctr[7]_i_2_n_0 ;
  wire \sfp_los_ctr[7]_i_4_n_0 ;
  wire [7:0]sfp_los_ctr_reg;
  wire srst;
  wire [3:0]stat;
  wire sync_sclk_n_0;
  wire sync_sclk_n_1;
  wire sync_sclk_n_2;
  wire sync_sclk_n_3;
  wire sync_sclk_n_4;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEF00)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(p_0_in2_in),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state[9]_i_2_n_0 ),
        .I3(\FSM_onehot_state[9]_i_4_n_0 ),
        .I4(\FSM_onehot_state[3]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_0_in2_in),
        .I1(\FSM_onehot_state[9]_i_4_n_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[9]_i_4_n_0 ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[9]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[9]_i_4 
       (.I0(\cdr_ctr[7]_i_2_n_0 ),
        .I1(\sfp_los_ctr[7]_i_2_n_0 ),
        .O(\FSM_onehot_state[9]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(sclk),
        .CE(sync_sclk_n_0),
        .D(sync_sclk_n_4),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sclk),
        .CE(sync_sclk_n_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(p_4_in),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sclk),
        .CE(sync_sclk_n_0),
        .D(sync_sclk_n_3),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(sclk),
        .CE(sync_sclk_n_0),
        .D(sync_sclk_n_2),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(sclk),
        .CE(sync_sclk_n_0),
        .D(sync_sclk_n_1),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(sclk),
        .CE(sync_sclk_n_0),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(sclk),
        .CE(sync_sclk_n_0),
        .D(\FSM_onehot_state_reg_n_0_[7] ),
        .Q(p_0_in2_in),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(sclk),
        .CE(sync_sclk_n_0),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(sclk),
        .CE(sync_sclk_n_0),
        .D(p_4_in),
        .Q(p_0_in5_in),
        .R(srst));
  (* FSM_ENCODED_STATES = "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[9] 
       (.C(sclk),
        .CE(sync_sclk_n_0),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .S(srst));
  LUT1 #(
    .INIT(2'h1)) 
    \cdr_ctr[0]_i_1 
       (.I0(cdr_ctr_reg[0]),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cdr_ctr[1]_i_1 
       (.I0(cdr_ctr_reg[0]),
        .I1(cdr_ctr_reg[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cdr_ctr[2]_i_1 
       (.I0(cdr_ctr_reg[2]),
        .I1(cdr_ctr_reg[0]),
        .I2(cdr_ctr_reg[1]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cdr_ctr[3]_i_1 
       (.I0(cdr_ctr_reg[3]),
        .I1(cdr_ctr_reg[1]),
        .I2(cdr_ctr_reg[0]),
        .I3(cdr_ctr_reg[2]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cdr_ctr[4]_i_1 
       (.I0(cdr_ctr_reg[4]),
        .I1(cdr_ctr_reg[3]),
        .I2(cdr_ctr_reg[1]),
        .I3(cdr_ctr_reg[0]),
        .I4(cdr_ctr_reg[2]),
        .O(\cdr_ctr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cdr_ctr[5]_i_1 
       (.I0(cdr_ctr_reg[5]),
        .I1(cdr_ctr_reg[3]),
        .I2(cdr_ctr_reg[1]),
        .I3(cdr_ctr_reg[0]),
        .I4(cdr_ctr_reg[2]),
        .I5(cdr_ctr_reg[4]),
        .O(plusOp__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cdr_ctr[6]_i_1 
       (.I0(cdr_ctr_reg[6]),
        .I1(\cdr_ctr[7]_i_4_n_0 ),
        .O(plusOp__1[6]));
  LUT3 #(
    .INIT(8'hFE)) 
    \cdr_ctr[7]_i_1 
       (.I0(cdr_los),
        .I1(cdr_lol),
        .I2(srst),
        .O(\cdr_ctr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \cdr_ctr[7]_i_2 
       (.I0(cdr_ctr_reg[6]),
        .I1(\cdr_ctr[7]_i_4_n_0 ),
        .I2(cdr_ctr_reg[7]),
        .O(\cdr_ctr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \cdr_ctr[7]_i_3 
       (.I0(cdr_ctr_reg[7]),
        .I1(\cdr_ctr[7]_i_4_n_0 ),
        .I2(cdr_ctr_reg[6]),
        .O(plusOp__1[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cdr_ctr[7]_i_4 
       (.I0(cdr_ctr_reg[4]),
        .I1(cdr_ctr_reg[2]),
        .I2(cdr_ctr_reg[0]),
        .I3(cdr_ctr_reg[1]),
        .I4(cdr_ctr_reg[3]),
        .I5(cdr_ctr_reg[5]),
        .O(\cdr_ctr[7]_i_4_n_0 ));
  FDRE \cdr_ctr_reg[0] 
       (.C(sclk),
        .CE(\cdr_ctr[7]_i_2_n_0 ),
        .D(plusOp__1[0]),
        .Q(cdr_ctr_reg[0]),
        .R(\cdr_ctr[7]_i_1_n_0 ));
  FDRE \cdr_ctr_reg[1] 
       (.C(sclk),
        .CE(\cdr_ctr[7]_i_2_n_0 ),
        .D(plusOp__1[1]),
        .Q(cdr_ctr_reg[1]),
        .R(\cdr_ctr[7]_i_1_n_0 ));
  FDRE \cdr_ctr_reg[2] 
       (.C(sclk),
        .CE(\cdr_ctr[7]_i_2_n_0 ),
        .D(plusOp__1[2]),
        .Q(cdr_ctr_reg[2]),
        .R(\cdr_ctr[7]_i_1_n_0 ));
  FDRE \cdr_ctr_reg[3] 
       (.C(sclk),
        .CE(\cdr_ctr[7]_i_2_n_0 ),
        .D(plusOp__1[3]),
        .Q(cdr_ctr_reg[3]),
        .R(\cdr_ctr[7]_i_1_n_0 ));
  FDRE \cdr_ctr_reg[4] 
       (.C(sclk),
        .CE(\cdr_ctr[7]_i_2_n_0 ),
        .D(\cdr_ctr[4]_i_1_n_0 ),
        .Q(cdr_ctr_reg[4]),
        .R(\cdr_ctr[7]_i_1_n_0 ));
  FDRE \cdr_ctr_reg[5] 
       (.C(sclk),
        .CE(\cdr_ctr[7]_i_2_n_0 ),
        .D(plusOp__1[5]),
        .Q(cdr_ctr_reg[5]),
        .R(\cdr_ctr[7]_i_1_n_0 ));
  FDRE \cdr_ctr_reg[6] 
       (.C(sclk),
        .CE(\cdr_ctr[7]_i_2_n_0 ),
        .D(plusOp__1[6]),
        .Q(cdr_ctr_reg[6]),
        .R(\cdr_ctr[7]_i_1_n_0 ));
  FDRE \cdr_ctr_reg[7] 
       (.C(sclk),
        .CE(\cdr_ctr[7]_i_2_n_0 ),
        .D(plusOp__1[7]),
        .Q(cdr_ctr_reg[7]),
        .R(\cdr_ctr[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rctr[0]_i_1 
       (.I0(\rctr_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rctr[1]_i_1 
       (.I0(\rctr_reg_n_0_[0] ),
        .I1(\rctr_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rctr[2]_i_1 
       (.I0(\rctr_reg_n_0_[2] ),
        .I1(\rctr_reg_n_0_[1] ),
        .I2(\rctr_reg_n_0_[0] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rctr[3]_i_1 
       (.I0(\rctr_reg_n_0_[3] ),
        .I1(\rctr_reg_n_0_[0] ),
        .I2(\rctr_reg_n_0_[1] ),
        .I3(\rctr_reg_n_0_[2] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rctr[4]_i_2 
       (.I0(rctr_reg),
        .I1(\rctr_reg_n_0_[2] ),
        .I2(\rctr_reg_n_0_[1] ),
        .I3(\rctr_reg_n_0_[0] ),
        .I4(\rctr_reg_n_0_[3] ),
        .O(plusOp[4]));
  FDRE \rctr_reg[0] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\rctr_reg_n_0_[0] ),
        .R(SR));
  FDRE \rctr_reg[1] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\rctr_reg_n_0_[1] ),
        .R(SR));
  FDRE \rctr_reg[2] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\rctr_reg_n_0_[2] ),
        .R(SR));
  FDRE \rctr_reg[3] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\rctr_reg_n_0_[3] ),
        .R(SR));
  FDRE \rctr_reg[4] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(rctr_reg),
        .R(SR));
  FDRE rx_err_f_reg
       (.C(rec_clk),
        .CE(1'b1),
        .D(rx_err_f_reg_0),
        .Q(D),
        .R(\q_reg[1] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    \sfp_los_ctr[0]_i_1 
       (.I0(sfp_los_ctr_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sfp_los_ctr[1]_i_1 
       (.I0(sfp_los_ctr_reg[0]),
        .I1(sfp_los_ctr_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sfp_los_ctr[2]_i_1 
       (.I0(sfp_los_ctr_reg[2]),
        .I1(sfp_los_ctr_reg[0]),
        .I2(sfp_los_ctr_reg[1]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sfp_los_ctr[3]_i_1 
       (.I0(sfp_los_ctr_reg[3]),
        .I1(sfp_los_ctr_reg[1]),
        .I2(sfp_los_ctr_reg[0]),
        .I3(sfp_los_ctr_reg[2]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sfp_los_ctr[4]_i_1 
       (.I0(sfp_los_ctr_reg[4]),
        .I1(sfp_los_ctr_reg[3]),
        .I2(sfp_los_ctr_reg[1]),
        .I3(sfp_los_ctr_reg[0]),
        .I4(sfp_los_ctr_reg[2]),
        .O(\sfp_los_ctr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sfp_los_ctr[5]_i_1 
       (.I0(sfp_los_ctr_reg[5]),
        .I1(sfp_los_ctr_reg[3]),
        .I2(sfp_los_ctr_reg[1]),
        .I3(sfp_los_ctr_reg[0]),
        .I4(sfp_los_ctr_reg[2]),
        .I5(sfp_los_ctr_reg[4]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sfp_los_ctr[6]_i_1 
       (.I0(sfp_los_ctr_reg[6]),
        .I1(\sfp_los_ctr[7]_i_4_n_0 ),
        .O(plusOp__0[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \sfp_los_ctr[7]_i_1 
       (.I0(sfp_los),
        .I1(srst),
        .O(\sfp_los_ctr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \sfp_los_ctr[7]_i_2 
       (.I0(sfp_los_ctr_reg[6]),
        .I1(\sfp_los_ctr[7]_i_4_n_0 ),
        .I2(sfp_los_ctr_reg[7]),
        .O(\sfp_los_ctr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \sfp_los_ctr[7]_i_3 
       (.I0(sfp_los_ctr_reg[7]),
        .I1(\sfp_los_ctr[7]_i_4_n_0 ),
        .I2(sfp_los_ctr_reg[6]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sfp_los_ctr[7]_i_4 
       (.I0(sfp_los_ctr_reg[4]),
        .I1(sfp_los_ctr_reg[2]),
        .I2(sfp_los_ctr_reg[0]),
        .I3(sfp_los_ctr_reg[1]),
        .I4(sfp_los_ctr_reg[3]),
        .I5(sfp_los_ctr_reg[5]),
        .O(\sfp_los_ctr[7]_i_4_n_0 ));
  FDRE \sfp_los_ctr_reg[0] 
       (.C(sclk),
        .CE(\sfp_los_ctr[7]_i_2_n_0 ),
        .D(plusOp__0[0]),
        .Q(sfp_los_ctr_reg[0]),
        .R(\sfp_los_ctr[7]_i_1_n_0 ));
  FDRE \sfp_los_ctr_reg[1] 
       (.C(sclk),
        .CE(\sfp_los_ctr[7]_i_2_n_0 ),
        .D(plusOp__0[1]),
        .Q(sfp_los_ctr_reg[1]),
        .R(\sfp_los_ctr[7]_i_1_n_0 ));
  FDRE \sfp_los_ctr_reg[2] 
       (.C(sclk),
        .CE(\sfp_los_ctr[7]_i_2_n_0 ),
        .D(plusOp__0[2]),
        .Q(sfp_los_ctr_reg[2]),
        .R(\sfp_los_ctr[7]_i_1_n_0 ));
  FDRE \sfp_los_ctr_reg[3] 
       (.C(sclk),
        .CE(\sfp_los_ctr[7]_i_2_n_0 ),
        .D(plusOp__0[3]),
        .Q(sfp_los_ctr_reg[3]),
        .R(\sfp_los_ctr[7]_i_1_n_0 ));
  FDRE \sfp_los_ctr_reg[4] 
       (.C(sclk),
        .CE(\sfp_los_ctr[7]_i_2_n_0 ),
        .D(\sfp_los_ctr[4]_i_1_n_0 ),
        .Q(sfp_los_ctr_reg[4]),
        .R(\sfp_los_ctr[7]_i_1_n_0 ));
  FDRE \sfp_los_ctr_reg[5] 
       (.C(sclk),
        .CE(\sfp_los_ctr[7]_i_2_n_0 ),
        .D(plusOp__0[5]),
        .Q(sfp_los_ctr_reg[5]),
        .R(\sfp_los_ctr[7]_i_1_n_0 ));
  FDRE \sfp_los_ctr_reg[6] 
       (.C(sclk),
        .CE(\sfp_los_ctr[7]_i_2_n_0 ),
        .D(plusOp__0[6]),
        .Q(sfp_los_ctr_reg[6]),
        .R(\sfp_los_ctr[7]_i_1_n_0 ));
  FDRE \sfp_los_ctr_reg[7] 
       (.C(sclk),
        .CE(\sfp_los_ctr[7]_i_2_n_0 ),
        .D(plusOp__0[7]),
        .Q(sfp_los_ctr_reg[7]),
        .R(\sfp_los_ctr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \stat[0]_INST_0 
       (.I0(p_0_in2_in),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(p_4_in),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(stat[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \stat[1]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(p_0_in5_in),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(stat[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \stat[2]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(p_0_in2_in),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .O(stat[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \stat[3]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(stat[3]));
  design_1_pdts_endpoint_0_0_pdts_synchro__parameterized2 sync_clk
       (.Q({\FSM_onehot_state_reg_n_0_[9] ,p_0_in5_in,\FSM_onehot_state_reg_n_0_[7] ,p_0_in2_in,\FSM_onehot_state_reg_n_0_[2] ,p_4_in}),
        .\q_reg[1]_0 (\q_reg[1] ),
        .rec_clk(rec_clk),
        .sclk(sclk));
  design_1_pdts_endpoint_0_0_pdts_synchro__parameterized1 sync_rec_clk
       (.Q({\FSM_onehot_state_reg_n_0_[9] ,p_0_in5_in,\FSM_onehot_state_reg_n_0_[7] ,p_4_in}),
        .out(out),
        .rec_d_clk(rec_d_clk),
        .sclk(sclk));
  design_1_pdts_endpoint_0_0_pdts_synchro__parameterized0 sync_sclk
       (.D({sync_sclk_n_1,sync_sclk_n_2,sync_sclk_n_3,sync_sclk_n_4}),
        .E(sync_sclk_n_0),
        .\FSM_onehot_state[9]_i_3_0 (sfp_los_ctr_reg[7:6]),
        .\FSM_onehot_state[9]_i_3_1 (\sfp_los_ctr[7]_i_4_n_0 ),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state[9]_i_2_n_0 ),
        .\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state[9]_i_4_n_0 ),
        .\FSM_onehot_state_reg[0]_1 (\sfp_los_ctr[7]_i_2_n_0 ),
        .\FSM_onehot_state_reg[0]_2 (\cdr_ctr[7]_i_2_n_0 ),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state[3]_i_2_n_0 ),
        .Q({\FSM_onehot_state_reg_n_0_[9] ,p_0_in5_in,\FSM_onehot_state_reg_n_0_[7] ,p_0_in2_in,\FSM_onehot_state_reg_n_0_[5] ,\FSM_onehot_state_reg_n_0_[2] ,p_4_in,\FSM_onehot_state_reg_n_0_[0] }),
        .\da_reg[3]_0 ({\da_reg[3] [2],D,\da_reg[3] [1:0]}),
        .rec_clk(rec_clk),
        .sclk(sclk));
  design_1_pdts_endpoint_0_0_pdts_synchro sync_t
       (.Q(rctr_reg),
        .rec_clk(rec_clk),
        .sclk(sclk));
endmodule

module design_1_pdts_endpoint_0_0_pdts_rx
   (Q,
    \lfsr_q_reg[15] ,
    \actr_reg[0]_0 ,
    sync_v,
    \sctr_reg[1]_0 ,
    pend_f_reg_0,
    s_match_r_reg_0,
    \sctr_reg[2]_0 ,
    \err_reg[0]_0 ,
    rec_clk,
    s_match,
    D,
    \lfsr_q_reg[9] ,
    k,
    \lfsr_q_reg[0] ,
    SR,
    \state_reg[0]_0 ,
    slen,
    \err_reg[2]_0 ,
    stb,
    \state_reg[0]_1 ,
    rx_err_f_reg,
    E,
    \ts_reg[3]_0 );
  output [1:0]Q;
  output [9:0]\lfsr_q_reg[15] ;
  output \actr_reg[0]_0 ;
  output sync_v;
  output \sctr_reg[1]_0 ;
  output pend_f_reg_0;
  output s_match_r_reg_0;
  output \sctr_reg[2]_0 ;
  output \err_reg[0]_0 ;
  input rec_clk;
  input s_match;
  input [9:0]D;
  input [0:0]\lfsr_q_reg[9] ;
  input k;
  input \lfsr_q_reg[0] ;
  input [0:0]SR;
  input \state_reg[0]_0 ;
  input [0:0]slen;
  input \err_reg[2]_0 ;
  input stb;
  input [0:0]\state_reg[0]_1 ;
  input [0:0]rx_err_f_reg;
  input [0:0]E;
  input [3:0]\ts_reg[3]_0 ;

  wire [9:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [4:0]actr_reg;
  wire \actr_reg[0]_0 ;
  wire cksum_n_1;
  wire cksum_n_13;
  wire [2:0]err;
  wire \err[0]_i_2_n_0 ;
  wire \err[1]_i_2_n_0 ;
  wire \err[1]_i_3_n_0 ;
  wire \err[2]_i_2_n_0 ;
  wire \err[2]_i_3_n_0 ;
  wire [2:0]err_c;
  wire \err_reg[0]_0 ;
  wire \err_reg[2]_0 ;
  wire k;
  wire \lfsr_q_reg[0] ;
  wire [9:0]\lfsr_q_reg[15] ;
  wire [0:0]\lfsr_q_reg[9] ;
  wire pend;
  wire pend0;
  wire pend_f;
  wire pend_f0;
  wire pend_f_reg_0;
  wire pend_i_2_n_0;
  wire [4:1]plusOp__5;
  wire [4:0]plusOp__6;
  wire rec_clk;
  wire [0:0]rx_err_f_reg;
  wire s_match;
  wire s_match_r_reg_0;
  wire s_match_r_reg_n_0;
  wire sctr0;
  wire \sctr[0]_i_1__0_n_0 ;
  wire [4:0]sctr_reg;
  wire \sctr_reg[1]_0 ;
  wire \sctr_reg[2]_0 ;
  wire [0:0]slen;
  wire [2:2]slen_r;
  wire \slen_r[2]_i_1_n_0 ;
  wire [1:1]state;
  wire \state_reg[0]_0 ;
  wire [0:0]\state_reg[0]_1 ;
  wire stb;
  wire sync_v;
  wire sync_v_INST_0_i_1_n_0;
  wire sync_v_INST_0_i_4_n_0;
  wire [3:0]ts;
  wire \ts[3]_i_1_n_0 ;
  wire \ts[3]_i_2_n_0 ;
  wire [3:0]\ts_reg[3]_0 ;
  wire \vctr[0]_i_1_n_0 ;
  wire \vctr[1]_i_1_n_0 ;
  wire \vctr[2]_i_1_n_0 ;
  wire \vctr[3]_i_1_n_0 ;
  wire \vctr_reg_n_0_[0] ;
  wire \vctr_reg_n_0_[1] ;
  wire \vctr_reg_n_0_[2] ;
  wire \vctr_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \actr[0]_i_1 
       (.I0(actr_reg[0]),
        .O(plusOp__6[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \actr[1]_i_1 
       (.I0(actr_reg[0]),
        .I1(actr_reg[1]),
        .O(plusOp__6[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \actr[2]_i_1 
       (.I0(actr_reg[2]),
        .I1(actr_reg[1]),
        .I2(actr_reg[0]),
        .O(plusOp__6[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \actr[3]_i_1 
       (.I0(actr_reg[3]),
        .I1(actr_reg[0]),
        .I2(actr_reg[1]),
        .I3(actr_reg[2]),
        .O(plusOp__6[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \actr[4]_i_1 
       (.I0(actr_reg[4]),
        .I1(actr_reg[2]),
        .I2(actr_reg[1]),
        .I3(actr_reg[0]),
        .I4(actr_reg[3]),
        .O(plusOp__6[4]));
  FDRE \actr_reg[0] 
       (.C(rec_clk),
        .CE(E),
        .D(plusOp__6[0]),
        .Q(actr_reg[0]),
        .R(\lfsr_q_reg[0] ));
  FDRE \actr_reg[1] 
       (.C(rec_clk),
        .CE(E),
        .D(plusOp__6[1]),
        .Q(actr_reg[1]),
        .R(\lfsr_q_reg[0] ));
  FDRE \actr_reg[2] 
       (.C(rec_clk),
        .CE(E),
        .D(plusOp__6[2]),
        .Q(actr_reg[2]),
        .R(\lfsr_q_reg[0] ));
  FDRE \actr_reg[3] 
       (.C(rec_clk),
        .CE(E),
        .D(plusOp__6[3]),
        .Q(actr_reg[3]),
        .R(\lfsr_q_reg[0] ));
  FDRE \actr_reg[4] 
       (.C(rec_clk),
        .CE(E),
        .D(plusOp__6[4]),
        .Q(actr_reg[4]),
        .R(\lfsr_q_reg[0] ));
  design_1_pdts_endpoint_0_0_pdts_cksum cksum
       (.D({state,cksum_n_1}),
        .E(cksum_n_13),
        .Q(Q),
        .SR(SR),
        .err_c(err_c[2]),
        .\err_reg[0] (\err[0]_i_2_n_0 ),
        .\err_reg[0]_0 (\actr_reg[0]_0 ),
        .k(k),
        .\lfsr_q_reg[0] (\lfsr_q_reg[0] ),
        .\lfsr_q_reg[15] (\lfsr_q_reg[15] ),
        .\lfsr_q_reg[15]_0 (E),
        .\lfsr_q_reg[15]_1 (D),
        .\lfsr_q_reg[9] (\lfsr_q_reg[9] ),
        .rec_clk(rec_clk),
        .\state_reg[0] (\err[1]_i_2_n_0 ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[1] (err_c[0]));
  LUT6 #(
    .INIT(64'h0222022202222223)) 
    \err[0]_i_2 
       (.I0(slen),
        .I1(\err[2]_i_3_n_0 ),
        .I2(sctr_reg[3]),
        .I3(sctr_reg[2]),
        .I4(sctr_reg[0]),
        .I5(sctr_reg[1]),
        .O(\err[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \err[0]_i_4 
       (.I0(actr_reg[0]),
        .I1(actr_reg[1]),
        .I2(actr_reg[2]),
        .I3(actr_reg[4]),
        .I4(actr_reg[3]),
        .O(\actr_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0014)) 
    \err[1]_i_1 
       (.I0(\err[1]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(err_c[2]),
        .O(err_c[1]));
  LUT5 #(
    .INIT(32'h000015FF)) 
    \err[1]_i_2 
       (.I0(actr_reg[3]),
        .I1(actr_reg[2]),
        .I2(actr_reg[1]),
        .I3(actr_reg[4]),
        .I4(\err[1]_i_3_n_0 ),
        .O(\err[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \err[1]_i_3 
       (.I0(sctr_reg[4]),
        .I1(sctr_reg[3]),
        .I2(sctr_reg[1]),
        .I3(sctr_reg[2]),
        .O(\err[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00BF0002)) 
    \err[2]_i_1 
       (.I0(\err[2]_i_2_n_0 ),
        .I1(sctr_reg[2]),
        .I2(sctr_reg[3]),
        .I3(\err[2]_i_3_n_0 ),
        .I4(slen),
        .I5(\err_reg[2]_0 ),
        .O(err_c[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \err[2]_i_2 
       (.I0(sctr_reg[1]),
        .I1(sctr_reg[0]),
        .O(\err[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \err[2]_i_3 
       (.I0(k),
        .I1(stb),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(sctr_reg[4]),
        .O(\err[2]_i_3_n_0 ));
  FDRE \err_reg[0] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(err_c[0]),
        .Q(err[0]),
        .R(1'b0));
  FDRE \err_reg[1] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(err_c[1]),
        .Q(err[1]),
        .R(1'b0));
  FDRE \err_reg[2] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(err_c[2]),
        .Q(err[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF200000000000)) 
    \evtctr_i[31]_i_5 
       (.I0(s_match_r_reg_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(stb),
        .I4(pend),
        .I5(sync_v_INST_0_i_1_n_0),
        .O(s_match_r_reg_0));
  LUT5 #(
    .INIT(32'hAAAA0080)) 
    pend_f_i_1
       (.I0(pend_i_2_n_0),
        .I1(sctr0),
        .I2(s_match_r_reg_n_0),
        .I3(\sctr_reg[1]_0 ),
        .I4(pend_f),
        .O(pend_f0));
  FDRE pend_f_reg
       (.C(rec_clk),
        .CE(1'b1),
        .D(pend_f0),
        .Q(pend_f),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF200000000000)) 
    pend_i_1
       (.I0(s_match_r_reg_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(stb),
        .I4(pend),
        .I5(pend_i_2_n_0),
        .O(pend0));
  LUT6 #(
    .INIT(64'h4554555555554554)) 
    pend_i_2
       (.I0(\state_reg[0]_1 ),
        .I1(sync_v_INST_0_i_4_n_0),
        .I2(ts[1]),
        .I3(\vctr_reg_n_0_[1] ),
        .I4(ts[0]),
        .I5(\vctr_reg_n_0_[0] ),
        .O(pend_i_2_n_0));
  FDRE pend_reg
       (.C(rec_clk),
        .CE(1'b1),
        .D(pend0),
        .Q(pend),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_err_f_i_1
       (.I0(err[0]),
        .I1(err[2]),
        .I2(err[1]),
        .I3(rx_err_f_reg),
        .O(\err_reg[0]_0 ));
  FDRE s_match_r_reg
       (.C(rec_clk),
        .CE(\ts[3]_i_1_n_0 ),
        .D(s_match),
        .Q(s_match_r_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sctr[0]_i_1__0 
       (.I0(sctr_reg[0]),
        .O(\sctr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sctr[1]_i_1__0 
       (.I0(sctr_reg[1]),
        .I1(sctr_reg[0]),
        .O(plusOp__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sctr[2]_i_1__0 
       (.I0(sctr_reg[2]),
        .I1(sctr_reg[0]),
        .I2(sctr_reg[1]),
        .O(plusOp__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sctr[3]_i_1__0 
       (.I0(sctr_reg[3]),
        .I1(sctr_reg[1]),
        .I2(sctr_reg[0]),
        .I3(sctr_reg[2]),
        .O(plusOp__5[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sctr[4]_i_2 
       (.I0(sctr_reg[4]),
        .I1(sctr_reg[2]),
        .I2(sctr_reg[3]),
        .I3(sctr_reg[1]),
        .I4(sctr_reg[0]),
        .O(plusOp__5[4]));
  FDRE \sctr_reg[0] 
       (.C(rec_clk),
        .CE(sctr0),
        .D(\sctr[0]_i_1__0_n_0 ),
        .Q(sctr_reg[0]),
        .R(SR));
  FDRE \sctr_reg[1] 
       (.C(rec_clk),
        .CE(sctr0),
        .D(plusOp__5[1]),
        .Q(sctr_reg[1]),
        .R(SR));
  FDRE \sctr_reg[2] 
       (.C(rec_clk),
        .CE(sctr0),
        .D(plusOp__5[2]),
        .Q(sctr_reg[2]),
        .R(SR));
  FDRE \sctr_reg[3] 
       (.C(rec_clk),
        .CE(sctr0),
        .D(plusOp__5[3]),
        .Q(sctr_reg[3]),
        .R(SR));
  FDRE \sctr_reg[4] 
       (.C(rec_clk),
        .CE(sctr0),
        .D(plusOp__5[4]),
        .Q(sctr_reg[4]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \slen_r[2]_i_1 
       (.I0(slen),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\sctr_reg[1]_0 ),
        .I4(slen_r),
        .O(\slen_r[2]_i_1_n_0 ));
  FDRE \slen_r_reg[2] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(\slen_r[2]_i_1_n_0 ),
        .Q(slen_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5545555555555555)) 
    \sr[95]_i_3 
       (.I0(pend_f),
        .I1(\sctr_reg[1]_0 ),
        .I2(s_match_r_reg_n_0),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(stb),
        .O(pend_f_reg_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \state[1]_i_5 
       (.I0(sctr_reg[2]),
        .I1(sctr_reg[3]),
        .I2(slen_r),
        .I3(sctr_reg[1]),
        .I4(sctr_reg[0]),
        .I5(sctr_reg[4]),
        .O(\sctr_reg[2]_0 ));
  FDRE \state_reg[0] 
       (.C(rec_clk),
        .CE(cksum_n_13),
        .D(cksum_n_1),
        .Q(Q[0]),
        .R(\state_reg[0]_1 ));
  FDRE \state_reg[1] 
       (.C(rec_clk),
        .CE(cksum_n_13),
        .D(state),
        .Q(Q[1]),
        .R(\state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hA888A8880000A000)) 
    sync_v_INST_0
       (.I0(sync_v_INST_0_i_1_n_0),
        .I1(pend),
        .I2(sctr0),
        .I3(s_match_r_reg_n_0),
        .I4(\sctr_reg[1]_0 ),
        .I5(pend_f),
        .O(sync_v));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00009009)) 
    sync_v_INST_0_i_1
       (.I0(\vctr_reg_n_0_[0] ),
        .I1(ts[0]),
        .I2(\vctr_reg_n_0_[1] ),
        .I3(ts[1]),
        .I4(sync_v_INST_0_i_4_n_0),
        .O(sync_v_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    sync_v_INST_0_i_2
       (.I0(stb),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(sctr0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    sync_v_INST_0_i_3
       (.I0(sctr_reg[1]),
        .I1(sctr_reg[0]),
        .I2(sctr_reg[4]),
        .I3(sctr_reg[3]),
        .I4(sctr_reg[2]),
        .O(\sctr_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    sync_v_INST_0_i_4
       (.I0(ts[2]),
        .I1(\vctr_reg_n_0_[2] ),
        .I2(ts[3]),
        .I3(\vctr_reg_n_0_[3] ),
        .O(sync_v_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ts[3]_i_1 
       (.I0(sctr_reg[1]),
        .I1(sctr_reg[0]),
        .I2(sctr_reg[2]),
        .I3(sctr_reg[3]),
        .I4(\ts[3]_i_2_n_0 ),
        .I5(sctr_reg[4]),
        .O(\ts[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ts[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\ts[3]_i_2_n_0 ));
  FDRE \ts_reg[0] 
       (.C(rec_clk),
        .CE(\ts[3]_i_1_n_0 ),
        .D(\ts_reg[3]_0 [0]),
        .Q(ts[0]),
        .R(1'b0));
  FDRE \ts_reg[1] 
       (.C(rec_clk),
        .CE(\ts[3]_i_1_n_0 ),
        .D(\ts_reg[3]_0 [1]),
        .Q(ts[1]),
        .R(1'b0));
  FDRE \ts_reg[2] 
       (.C(rec_clk),
        .CE(\ts[3]_i_1_n_0 ),
        .D(\ts_reg[3]_0 [2]),
        .Q(ts[2]),
        .R(1'b0));
  FDRE \ts_reg[3] 
       (.C(rec_clk),
        .CE(\ts[3]_i_1_n_0 ),
        .D(\ts_reg[3]_0 [3]),
        .Q(ts[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vctr[0]_i_1 
       (.I0(\vctr_reg_n_0_[0] ),
        .O(\vctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0EF0)) 
    \vctr[1]_i_1 
       (.I0(\vctr_reg_n_0_[2] ),
        .I1(\vctr_reg_n_0_[3] ),
        .I2(\vctr_reg_n_0_[1] ),
        .I3(\vctr_reg_n_0_[0] ),
        .O(\vctr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \vctr[2]_i_1 
       (.I0(\vctr_reg_n_0_[2] ),
        .I1(\vctr_reg_n_0_[1] ),
        .I2(\vctr_reg_n_0_[0] ),
        .O(\vctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vctr[3]_i_1 
       (.I0(\vctr_reg_n_0_[3] ),
        .I1(\vctr_reg_n_0_[0] ),
        .I2(\vctr_reg_n_0_[1] ),
        .I3(\vctr_reg_n_0_[2] ),
        .O(\vctr[3]_i_1_n_0 ));
  FDSE \vctr_reg[0] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(\vctr[0]_i_1_n_0 ),
        .Q(\vctr_reg_n_0_[0] ),
        .S(stb));
  FDRE \vctr_reg[1] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(\vctr[1]_i_1_n_0 ),
        .Q(\vctr_reg_n_0_[1] ),
        .R(stb));
  FDRE \vctr_reg[2] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(\vctr[2]_i_1_n_0 ),
        .Q(\vctr_reg_n_0_[2] ),
        .R(stb));
  FDRE \vctr_reg[3] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(\vctr[3]_i_1_n_0 ),
        .Q(\vctr_reg_n_0_[3] ),
        .R(stb));
endmodule

module design_1_pdts_endpoint_0_0_pdts_rx_phy
   (k,
    stb,
    D,
    Q,
    \q_reg[3] ,
    \q_reg[7] ,
    rec_clk_reset,
    SR,
    lock_reg_0,
    s_match,
    stbd_reg_0,
    slen,
    pkt_end_reg,
    E,
    \state_reg[1] ,
    k_reg,
    out,
    rec_clk,
    rec_d_clk,
    \lfsr_q_reg[8] ,
    \lctr_reg[0]_0 ,
    rec_clk_locked,
    tgrp,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \lfsr_q_reg[15] ,
    pkt_end,
    \evtctr_i_reg[31] ,
    \err_reg[2] ,
    rec_d,
    sclk);
  output k;
  output stb;
  output [9:0]D;
  output [0:0]Q;
  output \q_reg[3] ;
  output [7:0]\q_reg[7] ;
  output rec_clk_reset;
  output [0:0]SR;
  output [1:0]lock_reg_0;
  output s_match;
  output stbd_reg_0;
  output [0:0]slen;
  output pkt_end_reg;
  output [0:0]E;
  output \state_reg[1] ;
  output [0:0]k_reg;
  input out;
  input rec_clk;
  input rec_d_clk;
  input [9:0]\lfsr_q_reg[8] ;
  input [0:0]\lctr_reg[0]_0 ;
  input rec_clk_locked;
  input [1:0]tgrp;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input [1:0]\lfsr_q_reg[15] ;
  input pkt_end;
  input \evtctr_i_reg[31] ;
  input \err_reg[2] ;
  input rec_d;
  input sclk;

  wire [9:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire c;
  wire c0;
  wire c_i_2_n_0;
  wire c_i_3_n_0;
  wire ctr0;
  wire [4:0]ctr_reg;
  wire dec_n_14;
  wire dec_n_15;
  wire dec_n_16;
  wire dec_n_17;
  wire dec_n_18;
  wire dec_n_19;
  wire dec_n_36;
  wire \err_reg[2] ;
  wire \evtctr_i_reg[31] ;
  wire f;
  wire f0__0;
  wire [3:0]fctr_reg;
  wire fr;
  wire k;
  wire [0:0]k_reg;
  wire lctr;
  wire \lctr[7]_i_2_n_0 ;
  wire [7:0]lctr_reg;
  wire [0:0]\lctr_reg[0]_0 ;
  wire [1:0]\lfsr_q_reg[15] ;
  wire [9:0]\lfsr_q_reg[8] ;
  wire lock;
  wire [1:0]lock_reg_0;
  wire m;
  wire m0;
  wire m_i_1_n_0;
  wire out;
  wire pkt_end;
  wire pkt_end_reg;
  wire [4:0]plusOp__2;
  wire [3:0]plusOp__3;
  wire [5:4]plusOp__4;
  wire \q_reg[3] ;
  wire [7:0]\q_reg[7] ;
  wire rec_clk;
  wire rec_clk_locked;
  wire rec_clk_reset;
  wire rec_clk_reset_INST_0_i_1_n_0;
  wire rec_d;
  wire rec_d_clk;
  wire s_match;
  wire sclk;
  wire \sctr[0]_i_1_n_0 ;
  wire \sctr[1]_i_1_n_0 ;
  wire \sctr[2]_i_1_n_0 ;
  wire \sctr[3]_i_1_n_0 ;
  wire \sctr_reg_n_0_[0] ;
  wire \sctr_reg_n_0_[1] ;
  wire \sctr_reg_n_0_[2] ;
  wire \sctr_reg_n_0_[3] ;
  wire [0:0]slen;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1] ;
  wire stb;
  wire stb_0;
  wire stbd_reg_0;
  wire [9:0]t;
  wire [1:0]tgrp;
  wire tr;
  wire [9:0]w;
  wire [9:0]wa;

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
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(c0),
        .Q(c),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ctr[0]_i_1 
       (.I0(ctr_reg[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctr[1]_i_1 
       (.I0(ctr_reg[0]),
        .I1(ctr_reg[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \ctr[2]_i_1 
       (.I0(ctr_reg[2]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[0]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \ctr[3]_i_1 
       (.I0(ctr_reg[3]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[2]),
        .O(plusOp__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \ctr[4]_i_1 
       (.I0(ctr_reg[4]),
        .I1(ctr_reg[2]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[0]),
        .I4(ctr_reg[3]),
        .O(plusOp__2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[0] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__2[0]),
        .Q(ctr_reg[0]),
        .R(m_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[1] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__2[1]),
        .Q(ctr_reg[1]),
        .R(m_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[2] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__2[2]),
        .Q(ctr_reg[2]),
        .R(m_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[3] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__2[3]),
        .Q(ctr_reg[3]),
        .R(m_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[4] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__2[4]),
        .Q(ctr_reg[4]),
        .R(m_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \da[0]_i_1__1 
       (.I0(m),
        .I1(ctr_reg[3]),
        .I2(ctr_reg[0]),
        .I3(ctr_reg[1]),
        .I4(ctr_reg[2]),
        .I5(ctr_reg[4]),
        .O(lock_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \da[1]_i_1__0 
       (.I0(lock),
        .I1(rec_clk_reset_INST_0_i_1_n_0),
        .I2(m),
        .O(lock_reg_0[1]));
  design_1_pdts_endpoint_0_0_pdts_dec8b10b dec
       (.D(D),
        .E(stb),
        .Q(Q),
        .SR(lctr),
        .derr_reg_0({\sctr_reg_n_0_[3] ,\sctr_reg_n_0_[2] ,\sctr_reg_n_0_[1] ,\sctr_reg_n_0_[0] }),
        .disp_reg_0(w),
        .\err_reg[2] (\err_reg[2] ),
        .\evtctr_i_reg[31] (\evtctr_i_reg[31] ),
        .k_reg_0(k),
        .k_reg_1(k_reg),
        .\lctr_reg[0] (\lctr_reg[0]_0 ),
        .\lctr_reg[6] (dec_n_36),
        .\lfsr_q_reg[15] (\lfsr_q_reg[15] ),
        .\lfsr_q_reg[8] (\lfsr_q_reg[8] ),
        .lock(lock),
        .lock_reg({lctr_reg[7:6],lctr_reg[3:0]}),
        .lock_reg_0(\lctr[7]_i_2_n_0 ),
        .pkt_end(pkt_end),
        .pkt_end_reg(pkt_end_reg),
        .\q_reg[0]_0 ({dec_n_14,dec_n_15,dec_n_16,dec_n_17,dec_n_18,dec_n_19}),
        .\q_reg[3]_0 (\q_reg[3] ),
        .\q_reg[7]_0 (\q_reg[7] [0]),
        .\q_reg[7]_1 (\q_reg[7] [7:1]),
        .rec_clk(rec_clk),
        .s_match(s_match),
        .slen(slen),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[1] (E),
        .\state_reg[1]_0 (\state_reg[1] ),
        .stb_0(stb_0),
        .stbd_reg(stbd_reg_0),
        .tgrp(tgrp));
  LUT3 #(
    .INIT(8'h0E)) 
    f0
       (.I0(c),
        .I1(f),
        .I2(out),
        .O(f0__0));
  FDRE f_reg
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(f0__0),
        .Q(f),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fctr[0]_i_1 
       (.I0(fctr_reg[0]),
        .O(plusOp__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fctr[1]_i_1 
       (.I0(fctr_reg[0]),
        .I1(fctr_reg[1]),
        .O(plusOp__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \fctr[2]_i_1 
       (.I0(fctr_reg[2]),
        .I1(fctr_reg[1]),
        .I2(fctr_reg[0]),
        .O(plusOp__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \fctr[3]_i_1 
       (.I0(fctr_reg[3]),
        .I1(fctr_reg[0]),
        .I2(fctr_reg[1]),
        .I3(fctr_reg[2]),
        .O(plusOp__3[3]));
  FDRE #(
    .INIT(1'b0)) 
    \fctr_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__3[0]),
        .Q(fctr_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fctr_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__3[1]),
        .Q(fctr_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fctr_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__3[2]),
        .Q(fctr_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fctr_reg[3] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp__3[3]),
        .Q(fctr_reg[3]),
        .R(1'b0));
  FDRE fr_reg
       (.C(rec_clk),
        .CE(1'b1),
        .D(f),
        .Q(fr),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \lctr[4]_i_1 
       (.I0(lctr_reg[4]),
        .I1(lctr_reg[2]),
        .I2(lctr_reg[1]),
        .I3(lctr_reg[0]),
        .I4(lctr_reg[3]),
        .O(plusOp__4[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \lctr[5]_i_2 
       (.I0(lctr_reg[5]),
        .I1(lctr_reg[3]),
        .I2(lctr_reg[0]),
        .I3(lctr_reg[1]),
        .I4(lctr_reg[2]),
        .I5(lctr_reg[4]),
        .O(plusOp__4[5]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \lctr[7]_i_2 
       (.I0(lctr_reg[5]),
        .I1(lctr_reg[3]),
        .I2(lctr_reg[0]),
        .I3(lctr_reg[1]),
        .I4(lctr_reg[2]),
        .I5(lctr_reg[4]),
        .O(\lctr[7]_i_2_n_0 ));
  FDRE \lctr_reg[0] 
       (.C(rec_clk),
        .CE(stb),
        .D(dec_n_19),
        .Q(lctr_reg[0]),
        .R(1'b0));
  FDRE \lctr_reg[1] 
       (.C(rec_clk),
        .CE(stb),
        .D(dec_n_18),
        .Q(lctr_reg[1]),
        .R(1'b0));
  FDRE \lctr_reg[2] 
       (.C(rec_clk),
        .CE(stb),
        .D(dec_n_17),
        .Q(lctr_reg[2]),
        .R(1'b0));
  FDRE \lctr_reg[3] 
       (.C(rec_clk),
        .CE(stb),
        .D(dec_n_16),
        .Q(lctr_reg[3]),
        .R(1'b0));
  FDRE \lctr_reg[4] 
       (.C(rec_clk),
        .CE(stb),
        .D(plusOp__4[4]),
        .Q(lctr_reg[4]),
        .R(lctr));
  FDRE \lctr_reg[5] 
       (.C(rec_clk),
        .CE(stb),
        .D(plusOp__4[5]),
        .Q(lctr_reg[5]),
        .R(lctr));
  FDRE \lctr_reg[6] 
       (.C(rec_clk),
        .CE(stb),
        .D(dec_n_15),
        .Q(lctr_reg[6]),
        .R(1'b0));
  FDRE \lctr_reg[7] 
       (.C(rec_clk),
        .CE(stb),
        .D(dec_n_14),
        .Q(lctr_reg[7]),
        .R(1'b0));
  FDRE lock_reg
       (.C(rec_clk),
        .CE(1'b1),
        .D(dec_n_36),
        .Q(lock),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    m_i_1
       (.I0(fr),
        .I1(rec_clk_locked),
        .O(m_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    m_i_2
       (.I0(ctr_reg[3]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[2]),
        .I4(ctr_reg[4]),
        .I5(stb_0),
        .O(ctr0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_i_3
       (.I0(tr),
        .I1(m),
        .O(m0));
  FDSE m_reg
       (.C(rec_clk),
        .CE(ctr0),
        .D(m0),
        .Q(m),
        .S(m_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rctr[4]_i_1 
       (.I0(m),
        .I1(rec_clk_reset_INST_0_i_1_n_0),
        .I2(lock),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h04)) 
    rec_clk_reset_INST_0
       (.I0(rec_clk_reset_INST_0_i_1_n_0),
        .I1(rec_clk_locked),
        .I2(m),
        .O(rec_clk_reset));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    rec_clk_reset_INST_0_i_1
       (.I0(ctr_reg[4]),
        .I1(ctr_reg[2]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[0]),
        .I4(ctr_reg[3]),
        .O(rec_clk_reset_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2AEA)) 
    \sctr[0]_i_1 
       (.I0(fctr_reg[0]),
        .I1(fr),
        .I2(rec_clk_locked),
        .I3(\sctr_reg_n_0_[0] ),
        .O(\sctr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888BBBBBBB88888)) 
    \sctr[1]_i_1 
       (.I0(fctr_reg[1]),
        .I1(m_i_1_n_0),
        .I2(\sctr_reg_n_0_[3] ),
        .I3(\sctr_reg_n_0_[2] ),
        .I4(\sctr_reg_n_0_[0] ),
        .I5(\sctr_reg_n_0_[1] ),
        .O(\sctr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AEAEA2AEA2AEA2A)) 
    \sctr[2]_i_1 
       (.I0(fctr_reg[2]),
        .I1(fr),
        .I2(rec_clk_locked),
        .I3(\sctr_reg_n_0_[2] ),
        .I4(\sctr_reg_n_0_[0] ),
        .I5(\sctr_reg_n_0_[1] ),
        .O(\sctr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \sctr[3]_i_1 
       (.I0(fctr_reg[3]),
        .I1(m_i_1_n_0),
        .I2(\sctr_reg_n_0_[3] ),
        .I3(\sctr_reg_n_0_[1] ),
        .I4(\sctr_reg_n_0_[0] ),
        .I5(\sctr_reg_n_0_[2] ),
        .O(\sctr[3]_i_1_n_0 ));
  FDRE \sctr_reg[0] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(\sctr[0]_i_1_n_0 ),
        .Q(\sctr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sctr_reg[1] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(\sctr[1]_i_1_n_0 ),
        .Q(\sctr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \sctr_reg[2] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(\sctr[2]_i_1_n_0 ),
        .Q(\sctr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \sctr_reg[3] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(\sctr[3]_i_1_n_0 ),
        .Q(\sctr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE stbd_reg
       (.C(rec_clk),
        .CE(1'b1),
        .D(stb_0),
        .Q(stb),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \t_reg[0] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(t[1]),
        .Q(t[0]),
        .S(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[1] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(t[2]),
        .Q(t[1]),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[2] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(t[3]),
        .Q(t[2]),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[3] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(t[4]),
        .Q(t[3]),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[4] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(t[5]),
        .Q(t[4]),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[5] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(t[6]),
        .Q(t[5]),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[6] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(t[7]),
        .Q(t[6]),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[7] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(t[8]),
        .Q(t[7]),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[8] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(t[9]),
        .Q(t[8]),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[9] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(t[0]),
        .Q(t[9]),
        .R(c));
  FDRE tr_reg
       (.C(rec_clk),
        .CE(1'b1),
        .D(t[2]),
        .Q(tr),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[0] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(wa[0]),
        .Q(w[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[1] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(wa[1]),
        .Q(w[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[2] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(wa[2]),
        .Q(w[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[3] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(wa[3]),
        .Q(w[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[4] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(wa[4]),
        .Q(w[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[5] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(wa[5]),
        .Q(w[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[6] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(wa[6]),
        .Q(w[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[7] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(wa[7]),
        .Q(w[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[8] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(wa[8]),
        .Q(w[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w_reg[9] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(wa[9]),
        .Q(w[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[0] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(wa[1]),
        .Q(wa[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[1] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(wa[2]),
        .Q(wa[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[2] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(wa[3]),
        .Q(wa[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[3] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(wa[4]),
        .Q(wa[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[4] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(wa[5]),
        .Q(wa[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[5] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(wa[6]),
        .Q(wa[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[6] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(wa[7]),
        .Q(wa[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[7] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(wa[8]),
        .Q(wa[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[8] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(wa[9]),
        .Q(wa[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[9] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(rec_d),
        .Q(wa[9]),
        .R(1'b0));
endmodule

module design_1_pdts_endpoint_0_0_pdts_synchro
   (Q,
    rec_clk,
    sclk);
  input [0:0]Q;
  input rec_clk;
  input sclk;

  wire [0:0]Q;
  wire da;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire db;
  (* async_reg = "yes" *) wire \q_reg_n_0_[0] ;
  wire rec_clk;
  wire sclk;

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
        .Q(\q_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_0_0_pdts_synchro__parameterized0
   (E,
    D,
    \FSM_onehot_state_reg[0] ,
    Q,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    \FSM_onehot_state_reg[0]_2 ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state[9]_i_3_0 ,
    \FSM_onehot_state[9]_i_3_1 ,
    \da_reg[3]_0 ,
    rec_clk,
    sclk);
  output [0:0]E;
  output [3:0]D;
  input \FSM_onehot_state_reg[0] ;
  input [7:0]Q;
  input \FSM_onehot_state_reg[0]_0 ;
  input [0:0]\FSM_onehot_state_reg[0]_1 ;
  input [0:0]\FSM_onehot_state_reg[0]_2 ;
  input \FSM_onehot_state_reg[3] ;
  input [1:0]\FSM_onehot_state[9]_i_3_0 ;
  input \FSM_onehot_state[9]_i_3_1 ;
  input [3:0]\da_reg[3]_0 ;
  input rec_clk;
  input sclk;

  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_state[9]_i_3_0 ;
  wire \FSM_onehot_state[9]_i_3_1 ;
  wire \FSM_onehot_state[9]_i_3_n_0 ;
  wire \FSM_onehot_state[9]_i_5_n_0 ;
  wire \FSM_onehot_state[9]_i_6_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire [0:0]\FSM_onehot_state_reg[0]_1 ;
  wire [0:0]\FSM_onehot_state_reg[0]_2 ;
  wire \FSM_onehot_state_reg[3] ;
  wire [7:0]Q;
  wire [3:0]da;
  wire [3:0]\da_reg[3]_0 ;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire [3:0]db;
  (* async_reg = "yes" *) wire p_0_in;
  (* async_reg = "yes" *) wire rdy_i;
  wire rec_clk;
  (* async_reg = "yes" *) wire rx_err_i;
  (* async_reg = "yes" *) wire rxphy_locked_i;
  wire sclk;

  LUT4 #(
    .INIT(16'h0020)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(Q[3]),
        .I1(\FSM_onehot_state_reg[0]_0 ),
        .I2(rxphy_locked_i),
        .I3(rx_err_i),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1110)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(rxphy_locked_i),
        .I1(\FSM_onehot_state_reg[0]_0 ),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(\FSM_onehot_state_reg[3] ),
        .I5(Q[6]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAAFEAAAAAAAAAA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg[3] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(rx_err_i),
        .I4(\FSM_onehot_state_reg[0]_0 ),
        .I5(rxphy_locked_i),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h0020)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[0]_0 ),
        .I2(rxphy_locked_i),
        .I3(rx_err_i),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFF5FFF4FFF5F5F5)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(rx_err_i),
        .I2(\FSM_onehot_state[9]_i_3_n_0 ),
        .I3(Q[4]),
        .I4(\FSM_onehot_state_reg[0]_0 ),
        .I5(rxphy_locked_i),
        .O(E));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFFFFFE0)) 
    \FSM_onehot_state[9]_i_3 
       (.I0(p_0_in),
        .I1(\FSM_onehot_state_reg[0]_1 ),
        .I2(Q[2]),
        .I3(\FSM_onehot_state[9]_i_5_n_0 ),
        .I4(Q[6]),
        .I5(\FSM_onehot_state_reg[0]_2 ),
        .O(\FSM_onehot_state[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \FSM_onehot_state[9]_i_5 
       (.I0(\FSM_onehot_state[9]_i_3_0 [0]),
        .I1(\FSM_onehot_state[9]_i_3_1 ),
        .I2(\FSM_onehot_state[9]_i_3_0 [1]),
        .I3(Q[1]),
        .I4(\FSM_onehot_state[9]_i_6_n_0 ),
        .O(\FSM_onehot_state[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    \FSM_onehot_state[9]_i_6 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(rdy_i),
        .I4(Q[3]),
        .O(\FSM_onehot_state[9]_i_6_n_0 ));
  FDRE \da_reg[0] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(\da_reg[3]_0 [0]),
        .Q(da[0]),
        .R(1'b0));
  FDRE \da_reg[1] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(\da_reg[3]_0 [1]),
        .Q(da[1]),
        .R(1'b0));
  FDRE \da_reg[2] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(\da_reg[3]_0 [2]),
        .Q(da[2]),
        .R(1'b0));
  FDRE \da_reg[3] 
       (.C(rec_clk),
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
        .Q(p_0_in),
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
        .Q(rdy_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_0_0_pdts_synchro__parameterized1
   (out,
    sclk,
    rec_d_clk,
    Q);
  output out;
  input sclk;
  input rec_d_clk;
  input [3:0]Q;

  wire [3:0]Q;
  wire da;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire db;
  (* async_reg = "yes" *) wire out;
  wire rec_d_clk;
  wire rec_rst_i;
  wire sclk;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \da[0]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
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
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(da),
        .Q(db),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[0] 
       (.C(rec_d_clk),
        .CE(1'b1),
        .D(db),
        .Q(out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pdts_synchro" *) 
module design_1_pdts_endpoint_0_0_pdts_synchro__parameterized2
   (\q_reg[1]_0 ,
    Q,
    sclk,
    rec_clk);
  output [1:0]\q_reg[1]_0 ;
  input [5:0]Q;
  input sclk;
  input rec_clk;

  wire [5:0]Q;
  wire [1:0]da;
  (* async_reg = "yes" *) (* shreg_extract = "no" *) wire [1:0]db;
  wire [1:1]p_1_out;
  wire p_3_in;
  (* async_reg = "yes" *) wire [1:0]\q_reg[1]_0 ;
  wire rec_clk;
  wire sclk;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \da[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(p_3_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \da[1]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(p_1_out));
  FDRE \da_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_3_in),
        .Q(da[0]),
        .R(1'b0));
  FDRE \da_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(da[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[0] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(da[0]),
        .Q(db[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \db_reg[1] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(da[1]),
        .Q(db[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[0] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(db[0]),
        .Q(\q_reg[1]_0 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \q_reg[1] 
       (.C(rec_clk),
        .CE(1'b1),
        .D(db[1]),
        .Q(\q_reg[1]_0 [1]),
        .R(1'b0));
endmodule

module design_1_pdts_endpoint_0_0_pdts_tstamp
   (pkt_end,
    evtctr,
    Q,
    lock_reg_0,
    rec_clk,
    SR,
    \evtctr_i_reg[31]_0 ,
    \sr_reg[9]_0 ,
    slen,
    \sr_reg[9]_1 ,
    sync_v,
    D);
  output pkt_end;
  output [31:0]evtctr;
  output [63:0]Q;
  output [0:0]lock_reg_0;
  input rec_clk;
  input [0:0]SR;
  input \evtctr_i_reg[31]_0 ;
  input \sr_reg[9]_0 ;
  input [0:0]slen;
  input \sr_reg[9]_1 ;
  input sync_v;
  input [7:0]D;

  wire [7:0]D;
  wire [63:0]Q;
  wire [0:0]SR;
  wire ctr0;
  wire [7:0]ctr_reg;
  wire [31:0]data;
  wire [31:0]evtctr;
  wire \evtctr_i[15]_i_2_n_0 ;
  wire \evtctr_i[15]_i_3_n_0 ;
  wire \evtctr_i[15]_i_4_n_0 ;
  wire \evtctr_i[15]_i_5_n_0 ;
  wire \evtctr_i[15]_i_6_n_0 ;
  wire \evtctr_i[15]_i_7_n_0 ;
  wire \evtctr_i[15]_i_8_n_0 ;
  wire \evtctr_i[15]_i_9_n_0 ;
  wire \evtctr_i[23]_i_2_n_0 ;
  wire \evtctr_i[23]_i_3_n_0 ;
  wire \evtctr_i[23]_i_4_n_0 ;
  wire \evtctr_i[23]_i_5_n_0 ;
  wire \evtctr_i[23]_i_6_n_0 ;
  wire \evtctr_i[23]_i_7_n_0 ;
  wire \evtctr_i[23]_i_8_n_0 ;
  wire \evtctr_i[23]_i_9_n_0 ;
  wire \evtctr_i[31]_i_10_n_0 ;
  wire \evtctr_i[31]_i_11_n_0 ;
  wire \evtctr_i[31]_i_12_n_0 ;
  wire \evtctr_i[31]_i_13_n_0 ;
  wire \evtctr_i[31]_i_6_n_0 ;
  wire \evtctr_i[31]_i_7_n_0 ;
  wire \evtctr_i[31]_i_8_n_0 ;
  wire \evtctr_i[31]_i_9_n_0 ;
  wire \evtctr_i[7]_i_10_n_0 ;
  wire \evtctr_i[7]_i_2_n_0 ;
  wire \evtctr_i[7]_i_3_n_0 ;
  wire \evtctr_i[7]_i_4_n_0 ;
  wire \evtctr_i[7]_i_5_n_0 ;
  wire \evtctr_i[7]_i_6_n_0 ;
  wire \evtctr_i[7]_i_7_n_0 ;
  wire \evtctr_i[7]_i_8_n_0 ;
  wire \evtctr_i[7]_i_9_n_0 ;
  wire \evtctr_i_reg[15]_i_1_n_0 ;
  wire \evtctr_i_reg[15]_i_1_n_1 ;
  wire \evtctr_i_reg[15]_i_1_n_10 ;
  wire \evtctr_i_reg[15]_i_1_n_11 ;
  wire \evtctr_i_reg[15]_i_1_n_12 ;
  wire \evtctr_i_reg[15]_i_1_n_13 ;
  wire \evtctr_i_reg[15]_i_1_n_14 ;
  wire \evtctr_i_reg[15]_i_1_n_15 ;
  wire \evtctr_i_reg[15]_i_1_n_2 ;
  wire \evtctr_i_reg[15]_i_1_n_3 ;
  wire \evtctr_i_reg[15]_i_1_n_4 ;
  wire \evtctr_i_reg[15]_i_1_n_5 ;
  wire \evtctr_i_reg[15]_i_1_n_6 ;
  wire \evtctr_i_reg[15]_i_1_n_7 ;
  wire \evtctr_i_reg[15]_i_1_n_8 ;
  wire \evtctr_i_reg[15]_i_1_n_9 ;
  wire \evtctr_i_reg[23]_i_1_n_0 ;
  wire \evtctr_i_reg[23]_i_1_n_1 ;
  wire \evtctr_i_reg[23]_i_1_n_10 ;
  wire \evtctr_i_reg[23]_i_1_n_11 ;
  wire \evtctr_i_reg[23]_i_1_n_12 ;
  wire \evtctr_i_reg[23]_i_1_n_13 ;
  wire \evtctr_i_reg[23]_i_1_n_14 ;
  wire \evtctr_i_reg[23]_i_1_n_15 ;
  wire \evtctr_i_reg[23]_i_1_n_2 ;
  wire \evtctr_i_reg[23]_i_1_n_3 ;
  wire \evtctr_i_reg[23]_i_1_n_4 ;
  wire \evtctr_i_reg[23]_i_1_n_5 ;
  wire \evtctr_i_reg[23]_i_1_n_6 ;
  wire \evtctr_i_reg[23]_i_1_n_7 ;
  wire \evtctr_i_reg[23]_i_1_n_8 ;
  wire \evtctr_i_reg[23]_i_1_n_9 ;
  wire \evtctr_i_reg[31]_0 ;
  wire \evtctr_i_reg[31]_i_2_n_1 ;
  wire \evtctr_i_reg[31]_i_2_n_10 ;
  wire \evtctr_i_reg[31]_i_2_n_11 ;
  wire \evtctr_i_reg[31]_i_2_n_12 ;
  wire \evtctr_i_reg[31]_i_2_n_13 ;
  wire \evtctr_i_reg[31]_i_2_n_14 ;
  wire \evtctr_i_reg[31]_i_2_n_15 ;
  wire \evtctr_i_reg[31]_i_2_n_2 ;
  wire \evtctr_i_reg[31]_i_2_n_3 ;
  wire \evtctr_i_reg[31]_i_2_n_4 ;
  wire \evtctr_i_reg[31]_i_2_n_5 ;
  wire \evtctr_i_reg[31]_i_2_n_6 ;
  wire \evtctr_i_reg[31]_i_2_n_7 ;
  wire \evtctr_i_reg[31]_i_2_n_8 ;
  wire \evtctr_i_reg[31]_i_2_n_9 ;
  wire \evtctr_i_reg[7]_i_1_n_0 ;
  wire \evtctr_i_reg[7]_i_1_n_1 ;
  wire \evtctr_i_reg[7]_i_1_n_10 ;
  wire \evtctr_i_reg[7]_i_1_n_11 ;
  wire \evtctr_i_reg[7]_i_1_n_12 ;
  wire \evtctr_i_reg[7]_i_1_n_13 ;
  wire \evtctr_i_reg[7]_i_1_n_14 ;
  wire \evtctr_i_reg[7]_i_1_n_15 ;
  wire \evtctr_i_reg[7]_i_1_n_2 ;
  wire \evtctr_i_reg[7]_i_1_n_3 ;
  wire \evtctr_i_reg[7]_i_1_n_4 ;
  wire \evtctr_i_reg[7]_i_1_n_5 ;
  wire \evtctr_i_reg[7]_i_1_n_6 ;
  wire \evtctr_i_reg[7]_i_1_n_7 ;
  wire \evtctr_i_reg[7]_i_1_n_8 ;
  wire \evtctr_i_reg[7]_i_1_n_9 ;
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
  wire [63:1]p_2_in;
  wire pkt_end;
  wire pkt_end_d;
  wire pkt_end_i_1_n_0;
  wire pkt_end_i_2_n_0;
  wire [7:0]plusOp__7;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_10 ;
  wire \plusOp_inferred__0/i__carry__0_n_11 ;
  wire \plusOp_inferred__0/i__carry__0_n_12 ;
  wire \plusOp_inferred__0/i__carry__0_n_13 ;
  wire \plusOp_inferred__0/i__carry__0_n_14 ;
  wire \plusOp_inferred__0/i__carry__0_n_15 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__0_n_4 ;
  wire \plusOp_inferred__0/i__carry__0_n_5 ;
  wire \plusOp_inferred__0/i__carry__0_n_6 ;
  wire \plusOp_inferred__0/i__carry__0_n_7 ;
  wire \plusOp_inferred__0/i__carry__0_n_8 ;
  wire \plusOp_inferred__0/i__carry__0_n_9 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_10 ;
  wire \plusOp_inferred__0/i__carry__1_n_11 ;
  wire \plusOp_inferred__0/i__carry__1_n_12 ;
  wire \plusOp_inferred__0/i__carry__1_n_13 ;
  wire \plusOp_inferred__0/i__carry__1_n_14 ;
  wire \plusOp_inferred__0/i__carry__1_n_15 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_4 ;
  wire \plusOp_inferred__0/i__carry__1_n_5 ;
  wire \plusOp_inferred__0/i__carry__1_n_6 ;
  wire \plusOp_inferred__0/i__carry__1_n_7 ;
  wire \plusOp_inferred__0/i__carry__1_n_8 ;
  wire \plusOp_inferred__0/i__carry__1_n_9 ;
  wire \plusOp_inferred__0/i__carry__2_n_0 ;
  wire \plusOp_inferred__0/i__carry__2_n_1 ;
  wire \plusOp_inferred__0/i__carry__2_n_10 ;
  wire \plusOp_inferred__0/i__carry__2_n_11 ;
  wire \plusOp_inferred__0/i__carry__2_n_12 ;
  wire \plusOp_inferred__0/i__carry__2_n_13 ;
  wire \plusOp_inferred__0/i__carry__2_n_14 ;
  wire \plusOp_inferred__0/i__carry__2_n_15 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_4 ;
  wire \plusOp_inferred__0/i__carry__2_n_5 ;
  wire \plusOp_inferred__0/i__carry__2_n_6 ;
  wire \plusOp_inferred__0/i__carry__2_n_7 ;
  wire \plusOp_inferred__0/i__carry__2_n_8 ;
  wire \plusOp_inferred__0/i__carry__2_n_9 ;
  wire \plusOp_inferred__0/i__carry__3_n_0 ;
  wire \plusOp_inferred__0/i__carry__3_n_1 ;
  wire \plusOp_inferred__0/i__carry__3_n_10 ;
  wire \plusOp_inferred__0/i__carry__3_n_11 ;
  wire \plusOp_inferred__0/i__carry__3_n_12 ;
  wire \plusOp_inferred__0/i__carry__3_n_13 ;
  wire \plusOp_inferred__0/i__carry__3_n_14 ;
  wire \plusOp_inferred__0/i__carry__3_n_15 ;
  wire \plusOp_inferred__0/i__carry__3_n_2 ;
  wire \plusOp_inferred__0/i__carry__3_n_3 ;
  wire \plusOp_inferred__0/i__carry__3_n_4 ;
  wire \plusOp_inferred__0/i__carry__3_n_5 ;
  wire \plusOp_inferred__0/i__carry__3_n_6 ;
  wire \plusOp_inferred__0/i__carry__3_n_7 ;
  wire \plusOp_inferred__0/i__carry__3_n_8 ;
  wire \plusOp_inferred__0/i__carry__3_n_9 ;
  wire \plusOp_inferred__0/i__carry__4_n_0 ;
  wire \plusOp_inferred__0/i__carry__4_n_1 ;
  wire \plusOp_inferred__0/i__carry__4_n_10 ;
  wire \plusOp_inferred__0/i__carry__4_n_11 ;
  wire \plusOp_inferred__0/i__carry__4_n_12 ;
  wire \plusOp_inferred__0/i__carry__4_n_13 ;
  wire \plusOp_inferred__0/i__carry__4_n_14 ;
  wire \plusOp_inferred__0/i__carry__4_n_15 ;
  wire \plusOp_inferred__0/i__carry__4_n_2 ;
  wire \plusOp_inferred__0/i__carry__4_n_3 ;
  wire \plusOp_inferred__0/i__carry__4_n_4 ;
  wire \plusOp_inferred__0/i__carry__4_n_5 ;
  wire \plusOp_inferred__0/i__carry__4_n_6 ;
  wire \plusOp_inferred__0/i__carry__4_n_7 ;
  wire \plusOp_inferred__0/i__carry__4_n_8 ;
  wire \plusOp_inferred__0/i__carry__4_n_9 ;
  wire \plusOp_inferred__0/i__carry__5_n_0 ;
  wire \plusOp_inferred__0/i__carry__5_n_1 ;
  wire \plusOp_inferred__0/i__carry__5_n_10 ;
  wire \plusOp_inferred__0/i__carry__5_n_11 ;
  wire \plusOp_inferred__0/i__carry__5_n_12 ;
  wire \plusOp_inferred__0/i__carry__5_n_13 ;
  wire \plusOp_inferred__0/i__carry__5_n_14 ;
  wire \plusOp_inferred__0/i__carry__5_n_15 ;
  wire \plusOp_inferred__0/i__carry__5_n_2 ;
  wire \plusOp_inferred__0/i__carry__5_n_3 ;
  wire \plusOp_inferred__0/i__carry__5_n_4 ;
  wire \plusOp_inferred__0/i__carry__5_n_5 ;
  wire \plusOp_inferred__0/i__carry__5_n_6 ;
  wire \plusOp_inferred__0/i__carry__5_n_7 ;
  wire \plusOp_inferred__0/i__carry__5_n_8 ;
  wire \plusOp_inferred__0/i__carry__5_n_9 ;
  wire \plusOp_inferred__0/i__carry__6_n_10 ;
  wire \plusOp_inferred__0/i__carry__6_n_11 ;
  wire \plusOp_inferred__0/i__carry__6_n_12 ;
  wire \plusOp_inferred__0/i__carry__6_n_13 ;
  wire \plusOp_inferred__0/i__carry__6_n_14 ;
  wire \plusOp_inferred__0/i__carry__6_n_15 ;
  wire \plusOp_inferred__0/i__carry__6_n_2 ;
  wire \plusOp_inferred__0/i__carry__6_n_3 ;
  wire \plusOp_inferred__0/i__carry__6_n_4 ;
  wire \plusOp_inferred__0/i__carry__6_n_5 ;
  wire \plusOp_inferred__0/i__carry__6_n_6 ;
  wire \plusOp_inferred__0/i__carry__6_n_7 ;
  wire \plusOp_inferred__0/i__carry__6_n_9 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_10 ;
  wire \plusOp_inferred__0/i__carry_n_11 ;
  wire \plusOp_inferred__0/i__carry_n_12 ;
  wire \plusOp_inferred__0/i__carry_n_13 ;
  wire \plusOp_inferred__0/i__carry_n_14 ;
  wire \plusOp_inferred__0/i__carry_n_15 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_4 ;
  wire \plusOp_inferred__0/i__carry_n_5 ;
  wire \plusOp_inferred__0/i__carry_n_6 ;
  wire \plusOp_inferred__0/i__carry_n_7 ;
  wire \plusOp_inferred__0/i__carry_n_8 ;
  wire \plusOp_inferred__0/i__carry_n_9 ;
  wire rec_clk;
  wire [0:0]slen;
  wire sr;
  wire \sr[95]_i_4_n_0 ;
  wire \sr[95]_i_5_n_0 ;
  wire \sr[95]_i_6_n_0 ;
  wire \sr_reg[9]_0 ;
  wire \sr_reg[9]_1 ;
  wire \sr_reg_n_0_[10] ;
  wire \sr_reg_n_0_[11] ;
  wire \sr_reg_n_0_[12] ;
  wire \sr_reg_n_0_[13] ;
  wire \sr_reg_n_0_[14] ;
  wire \sr_reg_n_0_[15] ;
  wire \sr_reg_n_0_[16] ;
  wire \sr_reg_n_0_[17] ;
  wire \sr_reg_n_0_[18] ;
  wire \sr_reg_n_0_[19] ;
  wire \sr_reg_n_0_[20] ;
  wire \sr_reg_n_0_[21] ;
  wire \sr_reg_n_0_[22] ;
  wire \sr_reg_n_0_[23] ;
  wire \sr_reg_n_0_[24] ;
  wire \sr_reg_n_0_[25] ;
  wire \sr_reg_n_0_[26] ;
  wire \sr_reg_n_0_[27] ;
  wire \sr_reg_n_0_[28] ;
  wire \sr_reg_n_0_[29] ;
  wire \sr_reg_n_0_[30] ;
  wire \sr_reg_n_0_[31] ;
  wire \sr_reg_n_0_[32] ;
  wire \sr_reg_n_0_[33] ;
  wire \sr_reg_n_0_[34] ;
  wire \sr_reg_n_0_[35] ;
  wire \sr_reg_n_0_[36] ;
  wire \sr_reg_n_0_[37] ;
  wire \sr_reg_n_0_[38] ;
  wire \sr_reg_n_0_[39] ;
  wire \sr_reg_n_0_[40] ;
  wire \sr_reg_n_0_[41] ;
  wire \sr_reg_n_0_[42] ;
  wire \sr_reg_n_0_[43] ;
  wire \sr_reg_n_0_[44] ;
  wire \sr_reg_n_0_[45] ;
  wire \sr_reg_n_0_[46] ;
  wire \sr_reg_n_0_[47] ;
  wire \sr_reg_n_0_[48] ;
  wire \sr_reg_n_0_[49] ;
  wire \sr_reg_n_0_[50] ;
  wire \sr_reg_n_0_[51] ;
  wire \sr_reg_n_0_[52] ;
  wire \sr_reg_n_0_[53] ;
  wire \sr_reg_n_0_[54] ;
  wire \sr_reg_n_0_[55] ;
  wire \sr_reg_n_0_[56] ;
  wire \sr_reg_n_0_[57] ;
  wire \sr_reg_n_0_[58] ;
  wire \sr_reg_n_0_[59] ;
  wire \sr_reg_n_0_[60] ;
  wire \sr_reg_n_0_[61] ;
  wire \sr_reg_n_0_[62] ;
  wire \sr_reg_n_0_[63] ;
  wire \sr_reg_n_0_[9] ;
  wire sync_v;
  wire \tstamp_i[0]_i_1_n_0 ;
  wire \tstamp_i[63]_i_1_n_0 ;
  wire \tstamp_i[7]_i_1_n_0 ;
  wire \tstamp_i[8]_i_1_n_0 ;
  wire \tstamp_i[8]_i_2_n_0 ;
  wire [7:7]\NLW_evtctr_i_reg[31]_i_2_CO_UNCONNECTED ;
  wire [7:0]NLW_lock1_carry_O_UNCONNECTED;
  wire [7:0]NLW_lock1_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_lock1_carry__1_CO_UNCONNECTED;
  wire [7:0]NLW_lock1_carry__1_O_UNCONNECTED;
  wire [7:6]\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [7:7]\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \ctr[0]_i_1__0 
       (.I0(ctr_reg[0]),
        .O(plusOp__7[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctr[1]_i_1__0 
       (.I0(ctr_reg[0]),
        .I1(ctr_reg[1]),
        .O(plusOp__7[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \ctr[2]_i_1__0 
       (.I0(ctr_reg[2]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[0]),
        .O(plusOp__7[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \ctr[3]_i_1__0 
       (.I0(ctr_reg[3]),
        .I1(ctr_reg[0]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[2]),
        .O(plusOp__7[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \ctr[4]_i_1__0 
       (.I0(ctr_reg[4]),
        .I1(ctr_reg[2]),
        .I2(ctr_reg[1]),
        .I3(ctr_reg[0]),
        .I4(ctr_reg[3]),
        .O(plusOp__7[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \ctr[5]_i_1 
       (.I0(ctr_reg[5]),
        .I1(ctr_reg[3]),
        .I2(ctr_reg[4]),
        .I3(ctr_reg[2]),
        .I4(ctr_reg[1]),
        .I5(ctr_reg[0]),
        .O(plusOp__7[5]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \ctr[6]_i_1 
       (.I0(ctr_reg[6]),
        .I1(pkt_end_i_2_n_0),
        .I2(ctr_reg[4]),
        .I3(ctr_reg[3]),
        .I4(ctr_reg[5]),
        .O(plusOp__7[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \ctr[7]_i_1 
       (.I0(\sr[95]_i_4_n_0 ),
        .I1(ctr_reg[5]),
        .I2(ctr_reg[7]),
        .I3(ctr_reg[6]),
        .I4(slen),
        .I5(sync_v),
        .O(ctr0));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \ctr[7]_i_2 
       (.I0(ctr_reg[7]),
        .I1(ctr_reg[5]),
        .I2(ctr_reg[3]),
        .I3(ctr_reg[4]),
        .I4(pkt_end_i_2_n_0),
        .I5(ctr_reg[6]),
        .O(plusOp__7[7]));
  FDRE \ctr_reg[0] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__7[0]),
        .Q(ctr_reg[0]),
        .R(SR));
  FDRE \ctr_reg[1] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__7[1]),
        .Q(ctr_reg[1]),
        .R(SR));
  FDRE \ctr_reg[2] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__7[2]),
        .Q(ctr_reg[2]),
        .R(SR));
  FDRE \ctr_reg[3] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__7[3]),
        .Q(ctr_reg[3]),
        .R(SR));
  FDRE \ctr_reg[4] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__7[4]),
        .Q(ctr_reg[4]),
        .R(SR));
  FDRE \ctr_reg[5] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__7[5]),
        .Q(ctr_reg[5]),
        .R(SR));
  FDRE \ctr_reg[6] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__7[6]),
        .Q(ctr_reg[6]),
        .R(SR));
  FDRE \ctr_reg[7] 
       (.C(rec_clk),
        .CE(ctr0),
        .D(plusOp__7[7]),
        .Q(ctr_reg[7]),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[15]_i_2 
       (.I0(data[15]),
        .I1(pkt_end),
        .I2(evtctr[15]),
        .O(\evtctr_i[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[15]_i_3 
       (.I0(data[14]),
        .I1(pkt_end),
        .I2(evtctr[14]),
        .O(\evtctr_i[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[15]_i_4 
       (.I0(data[13]),
        .I1(pkt_end),
        .I2(evtctr[13]),
        .O(\evtctr_i[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[15]_i_5 
       (.I0(data[12]),
        .I1(pkt_end),
        .I2(evtctr[12]),
        .O(\evtctr_i[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[15]_i_6 
       (.I0(data[11]),
        .I1(pkt_end),
        .I2(evtctr[11]),
        .O(\evtctr_i[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[15]_i_7 
       (.I0(data[10]),
        .I1(pkt_end),
        .I2(evtctr[10]),
        .O(\evtctr_i[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[15]_i_8 
       (.I0(data[9]),
        .I1(pkt_end),
        .I2(evtctr[9]),
        .O(\evtctr_i[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[15]_i_9 
       (.I0(data[8]),
        .I1(pkt_end),
        .I2(evtctr[8]),
        .O(\evtctr_i[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[23]_i_2 
       (.I0(data[23]),
        .I1(pkt_end),
        .I2(evtctr[23]),
        .O(\evtctr_i[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[23]_i_3 
       (.I0(data[22]),
        .I1(pkt_end),
        .I2(evtctr[22]),
        .O(\evtctr_i[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[23]_i_4 
       (.I0(data[21]),
        .I1(pkt_end),
        .I2(evtctr[21]),
        .O(\evtctr_i[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[23]_i_5 
       (.I0(data[20]),
        .I1(pkt_end),
        .I2(evtctr[20]),
        .O(\evtctr_i[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[23]_i_6 
       (.I0(data[19]),
        .I1(pkt_end),
        .I2(evtctr[19]),
        .O(\evtctr_i[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[23]_i_7 
       (.I0(data[18]),
        .I1(pkt_end),
        .I2(evtctr[18]),
        .O(\evtctr_i[23]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[23]_i_8 
       (.I0(data[17]),
        .I1(pkt_end),
        .I2(evtctr[17]),
        .O(\evtctr_i[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[23]_i_9 
       (.I0(data[16]),
        .I1(pkt_end),
        .I2(evtctr[16]),
        .O(\evtctr_i[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[31]_i_10 
       (.I0(data[27]),
        .I1(pkt_end),
        .I2(evtctr[27]),
        .O(\evtctr_i[31]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[31]_i_11 
       (.I0(data[26]),
        .I1(pkt_end),
        .I2(evtctr[26]),
        .O(\evtctr_i[31]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[31]_i_12 
       (.I0(data[25]),
        .I1(pkt_end),
        .I2(evtctr[25]),
        .O(\evtctr_i[31]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[31]_i_13 
       (.I0(data[24]),
        .I1(pkt_end),
        .I2(evtctr[24]),
        .O(\evtctr_i[31]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[31]_i_6 
       (.I0(data[31]),
        .I1(pkt_end),
        .I2(evtctr[31]),
        .O(\evtctr_i[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[31]_i_7 
       (.I0(data[30]),
        .I1(pkt_end),
        .I2(evtctr[30]),
        .O(\evtctr_i[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[31]_i_8 
       (.I0(data[29]),
        .I1(pkt_end),
        .I2(evtctr[29]),
        .O(\evtctr_i[31]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[31]_i_9 
       (.I0(data[28]),
        .I1(pkt_end),
        .I2(evtctr[28]),
        .O(\evtctr_i[31]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \evtctr_i[7]_i_10 
       (.I0(evtctr[0]),
        .I1(data[0]),
        .I2(pkt_end),
        .O(\evtctr_i[7]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \evtctr_i[7]_i_2 
       (.I0(pkt_end),
        .O(\evtctr_i[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[7]_i_3 
       (.I0(data[7]),
        .I1(pkt_end),
        .I2(evtctr[7]),
        .O(\evtctr_i[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[7]_i_4 
       (.I0(data[6]),
        .I1(pkt_end),
        .I2(evtctr[6]),
        .O(\evtctr_i[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[7]_i_5 
       (.I0(data[5]),
        .I1(pkt_end),
        .I2(evtctr[5]),
        .O(\evtctr_i[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[7]_i_6 
       (.I0(data[4]),
        .I1(pkt_end),
        .I2(evtctr[4]),
        .O(\evtctr_i[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[7]_i_7 
       (.I0(data[3]),
        .I1(pkt_end),
        .I2(evtctr[3]),
        .O(\evtctr_i[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[7]_i_8 
       (.I0(data[2]),
        .I1(pkt_end),
        .I2(evtctr[2]),
        .O(\evtctr_i[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \evtctr_i[7]_i_9 
       (.I0(data[1]),
        .I1(pkt_end),
        .I2(evtctr[1]),
        .O(\evtctr_i[7]_i_9_n_0 ));
  FDRE \evtctr_i_reg[0] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[7]_i_1_n_15 ),
        .Q(evtctr[0]),
        .R(SR));
  FDRE \evtctr_i_reg[10] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[15]_i_1_n_13 ),
        .Q(evtctr[10]),
        .R(SR));
  FDRE \evtctr_i_reg[11] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[15]_i_1_n_12 ),
        .Q(evtctr[11]),
        .R(SR));
  FDRE \evtctr_i_reg[12] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[15]_i_1_n_11 ),
        .Q(evtctr[12]),
        .R(SR));
  FDRE \evtctr_i_reg[13] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[15]_i_1_n_10 ),
        .Q(evtctr[13]),
        .R(SR));
  FDRE \evtctr_i_reg[14] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[15]_i_1_n_9 ),
        .Q(evtctr[14]),
        .R(SR));
  FDRE \evtctr_i_reg[15] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[15]_i_1_n_8 ),
        .Q(evtctr[15]),
        .R(SR));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \evtctr_i_reg[15]_i_1 
       (.CI(\evtctr_i_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\evtctr_i_reg[15]_i_1_n_0 ,\evtctr_i_reg[15]_i_1_n_1 ,\evtctr_i_reg[15]_i_1_n_2 ,\evtctr_i_reg[15]_i_1_n_3 ,\evtctr_i_reg[15]_i_1_n_4 ,\evtctr_i_reg[15]_i_1_n_5 ,\evtctr_i_reg[15]_i_1_n_6 ,\evtctr_i_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\evtctr_i_reg[15]_i_1_n_8 ,\evtctr_i_reg[15]_i_1_n_9 ,\evtctr_i_reg[15]_i_1_n_10 ,\evtctr_i_reg[15]_i_1_n_11 ,\evtctr_i_reg[15]_i_1_n_12 ,\evtctr_i_reg[15]_i_1_n_13 ,\evtctr_i_reg[15]_i_1_n_14 ,\evtctr_i_reg[15]_i_1_n_15 }),
        .S({\evtctr_i[15]_i_2_n_0 ,\evtctr_i[15]_i_3_n_0 ,\evtctr_i[15]_i_4_n_0 ,\evtctr_i[15]_i_5_n_0 ,\evtctr_i[15]_i_6_n_0 ,\evtctr_i[15]_i_7_n_0 ,\evtctr_i[15]_i_8_n_0 ,\evtctr_i[15]_i_9_n_0 }));
  FDRE \evtctr_i_reg[16] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[23]_i_1_n_15 ),
        .Q(evtctr[16]),
        .R(SR));
  FDRE \evtctr_i_reg[17] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[23]_i_1_n_14 ),
        .Q(evtctr[17]),
        .R(SR));
  FDRE \evtctr_i_reg[18] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[23]_i_1_n_13 ),
        .Q(evtctr[18]),
        .R(SR));
  FDRE \evtctr_i_reg[19] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[23]_i_1_n_12 ),
        .Q(evtctr[19]),
        .R(SR));
  FDRE \evtctr_i_reg[1] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[7]_i_1_n_14 ),
        .Q(evtctr[1]),
        .R(SR));
  FDRE \evtctr_i_reg[20] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[23]_i_1_n_11 ),
        .Q(evtctr[20]),
        .R(SR));
  FDRE \evtctr_i_reg[21] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[23]_i_1_n_10 ),
        .Q(evtctr[21]),
        .R(SR));
  FDRE \evtctr_i_reg[22] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[23]_i_1_n_9 ),
        .Q(evtctr[22]),
        .R(SR));
  FDRE \evtctr_i_reg[23] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[23]_i_1_n_8 ),
        .Q(evtctr[23]),
        .R(SR));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \evtctr_i_reg[23]_i_1 
       (.CI(\evtctr_i_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\evtctr_i_reg[23]_i_1_n_0 ,\evtctr_i_reg[23]_i_1_n_1 ,\evtctr_i_reg[23]_i_1_n_2 ,\evtctr_i_reg[23]_i_1_n_3 ,\evtctr_i_reg[23]_i_1_n_4 ,\evtctr_i_reg[23]_i_1_n_5 ,\evtctr_i_reg[23]_i_1_n_6 ,\evtctr_i_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\evtctr_i_reg[23]_i_1_n_8 ,\evtctr_i_reg[23]_i_1_n_9 ,\evtctr_i_reg[23]_i_1_n_10 ,\evtctr_i_reg[23]_i_1_n_11 ,\evtctr_i_reg[23]_i_1_n_12 ,\evtctr_i_reg[23]_i_1_n_13 ,\evtctr_i_reg[23]_i_1_n_14 ,\evtctr_i_reg[23]_i_1_n_15 }),
        .S({\evtctr_i[23]_i_2_n_0 ,\evtctr_i[23]_i_3_n_0 ,\evtctr_i[23]_i_4_n_0 ,\evtctr_i[23]_i_5_n_0 ,\evtctr_i[23]_i_6_n_0 ,\evtctr_i[23]_i_7_n_0 ,\evtctr_i[23]_i_8_n_0 ,\evtctr_i[23]_i_9_n_0 }));
  FDRE \evtctr_i_reg[24] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[31]_i_2_n_15 ),
        .Q(evtctr[24]),
        .R(SR));
  FDRE \evtctr_i_reg[25] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[31]_i_2_n_14 ),
        .Q(evtctr[25]),
        .R(SR));
  FDRE \evtctr_i_reg[26] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[31]_i_2_n_13 ),
        .Q(evtctr[26]),
        .R(SR));
  FDRE \evtctr_i_reg[27] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[31]_i_2_n_12 ),
        .Q(evtctr[27]),
        .R(SR));
  FDRE \evtctr_i_reg[28] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[31]_i_2_n_11 ),
        .Q(evtctr[28]),
        .R(SR));
  FDRE \evtctr_i_reg[29] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[31]_i_2_n_10 ),
        .Q(evtctr[29]),
        .R(SR));
  FDRE \evtctr_i_reg[2] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[7]_i_1_n_13 ),
        .Q(evtctr[2]),
        .R(SR));
  FDRE \evtctr_i_reg[30] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[31]_i_2_n_9 ),
        .Q(evtctr[30]),
        .R(SR));
  FDRE \evtctr_i_reg[31] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[31]_i_2_n_8 ),
        .Q(evtctr[31]),
        .R(SR));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \evtctr_i_reg[31]_i_2 
       (.CI(\evtctr_i_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_evtctr_i_reg[31]_i_2_CO_UNCONNECTED [7],\evtctr_i_reg[31]_i_2_n_1 ,\evtctr_i_reg[31]_i_2_n_2 ,\evtctr_i_reg[31]_i_2_n_3 ,\evtctr_i_reg[31]_i_2_n_4 ,\evtctr_i_reg[31]_i_2_n_5 ,\evtctr_i_reg[31]_i_2_n_6 ,\evtctr_i_reg[31]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\evtctr_i_reg[31]_i_2_n_8 ,\evtctr_i_reg[31]_i_2_n_9 ,\evtctr_i_reg[31]_i_2_n_10 ,\evtctr_i_reg[31]_i_2_n_11 ,\evtctr_i_reg[31]_i_2_n_12 ,\evtctr_i_reg[31]_i_2_n_13 ,\evtctr_i_reg[31]_i_2_n_14 ,\evtctr_i_reg[31]_i_2_n_15 }),
        .S({\evtctr_i[31]_i_6_n_0 ,\evtctr_i[31]_i_7_n_0 ,\evtctr_i[31]_i_8_n_0 ,\evtctr_i[31]_i_9_n_0 ,\evtctr_i[31]_i_10_n_0 ,\evtctr_i[31]_i_11_n_0 ,\evtctr_i[31]_i_12_n_0 ,\evtctr_i[31]_i_13_n_0 }));
  FDRE \evtctr_i_reg[3] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[7]_i_1_n_12 ),
        .Q(evtctr[3]),
        .R(SR));
  FDRE \evtctr_i_reg[4] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[7]_i_1_n_11 ),
        .Q(evtctr[4]),
        .R(SR));
  FDRE \evtctr_i_reg[5] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[7]_i_1_n_10 ),
        .Q(evtctr[5]),
        .R(SR));
  FDRE \evtctr_i_reg[6] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[7]_i_1_n_9 ),
        .Q(evtctr[6]),
        .R(SR));
  FDRE \evtctr_i_reg[7] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[7]_i_1_n_8 ),
        .Q(evtctr[7]),
        .R(SR));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \evtctr_i_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\evtctr_i_reg[7]_i_1_n_0 ,\evtctr_i_reg[7]_i_1_n_1 ,\evtctr_i_reg[7]_i_1_n_2 ,\evtctr_i_reg[7]_i_1_n_3 ,\evtctr_i_reg[7]_i_1_n_4 ,\evtctr_i_reg[7]_i_1_n_5 ,\evtctr_i_reg[7]_i_1_n_6 ,\evtctr_i_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\evtctr_i[7]_i_2_n_0 }),
        .O({\evtctr_i_reg[7]_i_1_n_8 ,\evtctr_i_reg[7]_i_1_n_9 ,\evtctr_i_reg[7]_i_1_n_10 ,\evtctr_i_reg[7]_i_1_n_11 ,\evtctr_i_reg[7]_i_1_n_12 ,\evtctr_i_reg[7]_i_1_n_13 ,\evtctr_i_reg[7]_i_1_n_14 ,\evtctr_i_reg[7]_i_1_n_15 }),
        .S({\evtctr_i[7]_i_3_n_0 ,\evtctr_i[7]_i_4_n_0 ,\evtctr_i[7]_i_5_n_0 ,\evtctr_i[7]_i_6_n_0 ,\evtctr_i[7]_i_7_n_0 ,\evtctr_i[7]_i_8_n_0 ,\evtctr_i[7]_i_9_n_0 ,\evtctr_i[7]_i_10_n_0 }));
  FDRE \evtctr_i_reg[8] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[15]_i_1_n_15 ),
        .Q(evtctr[8]),
        .R(SR));
  FDRE \evtctr_i_reg[9] 
       (.C(rec_clk),
        .CE(\evtctr_i_reg[31]_0 ),
        .D(\evtctr_i_reg[15]_i_1_n_14 ),
        .Q(evtctr[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    init_i_1
       (.I0(pkt_end),
        .I1(lock_reg_0),
        .I2(init),
        .O(init_i_1_n_0));
  FDRE init_reg
       (.C(rec_clk),
        .CE(1'b1),
        .D(init_i_1_n_0),
        .Q(init),
        .R(SR));
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
       (.I0(Q[45]),
        .I1(\sr_reg_n_0_[45] ),
        .I2(Q[46]),
        .I3(\sr_reg_n_0_[46] ),
        .I4(\sr_reg_n_0_[47] ),
        .I5(Q[47]),
        .O(lock1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_2
       (.I0(Q[42]),
        .I1(\sr_reg_n_0_[42] ),
        .I2(Q[43]),
        .I3(\sr_reg_n_0_[43] ),
        .I4(\sr_reg_n_0_[44] ),
        .I5(Q[44]),
        .O(lock1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_3
       (.I0(Q[40]),
        .I1(\sr_reg_n_0_[40] ),
        .I2(Q[39]),
        .I3(\sr_reg_n_0_[39] ),
        .I4(\sr_reg_n_0_[41] ),
        .I5(Q[41]),
        .O(lock1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_4
       (.I0(Q[36]),
        .I1(\sr_reg_n_0_[36] ),
        .I2(Q[37]),
        .I3(\sr_reg_n_0_[37] ),
        .I4(\sr_reg_n_0_[38] ),
        .I5(Q[38]),
        .O(lock1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_5
       (.I0(Q[33]),
        .I1(\sr_reg_n_0_[33] ),
        .I2(Q[34]),
        .I3(\sr_reg_n_0_[34] ),
        .I4(\sr_reg_n_0_[35] ),
        .I5(Q[35]),
        .O(lock1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_6
       (.I0(Q[30]),
        .I1(\sr_reg_n_0_[30] ),
        .I2(Q[31]),
        .I3(\sr_reg_n_0_[31] ),
        .I4(\sr_reg_n_0_[32] ),
        .I5(Q[32]),
        .O(lock1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_7
       (.I0(Q[27]),
        .I1(\sr_reg_n_0_[27] ),
        .I2(Q[28]),
        .I3(\sr_reg_n_0_[28] ),
        .I4(\sr_reg_n_0_[29] ),
        .I5(Q[29]),
        .O(lock1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__0_i_8
       (.I0(Q[26]),
        .I1(\sr_reg_n_0_[26] ),
        .I2(Q[24]),
        .I3(\sr_reg_n_0_[24] ),
        .I4(\sr_reg_n_0_[25] ),
        .I5(Q[25]),
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
       (.I0(\sr_reg_n_0_[63] ),
        .I1(Q[63]),
        .O(lock1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_2
       (.I0(Q[60]),
        .I1(\sr_reg_n_0_[60] ),
        .I2(Q[61]),
        .I3(\sr_reg_n_0_[61] ),
        .I4(\sr_reg_n_0_[62] ),
        .I5(Q[62]),
        .O(lock1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_3
       (.I0(Q[57]),
        .I1(\sr_reg_n_0_[57] ),
        .I2(Q[58]),
        .I3(\sr_reg_n_0_[58] ),
        .I4(\sr_reg_n_0_[59] ),
        .I5(Q[59]),
        .O(lock1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_4
       (.I0(Q[54]),
        .I1(\sr_reg_n_0_[54] ),
        .I2(Q[55]),
        .I3(\sr_reg_n_0_[55] ),
        .I4(\sr_reg_n_0_[56] ),
        .I5(Q[56]),
        .O(lock1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_5
       (.I0(Q[51]),
        .I1(\sr_reg_n_0_[51] ),
        .I2(Q[52]),
        .I3(\sr_reg_n_0_[52] ),
        .I4(\sr_reg_n_0_[53] ),
        .I5(Q[53]),
        .O(lock1_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry__1_i_6
       (.I0(Q[48]),
        .I1(\sr_reg_n_0_[48] ),
        .I2(Q[49]),
        .I3(\sr_reg_n_0_[49] ),
        .I4(\sr_reg_n_0_[50] ),
        .I5(Q[50]),
        .O(lock1_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_1
       (.I0(Q[22]),
        .I1(\sr_reg_n_0_[22] ),
        .I2(Q[21]),
        .I3(\sr_reg_n_0_[21] ),
        .I4(\sr_reg_n_0_[23] ),
        .I5(Q[23]),
        .O(lock1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_2
       (.I0(Q[18]),
        .I1(\sr_reg_n_0_[18] ),
        .I2(Q[19]),
        .I3(\sr_reg_n_0_[19] ),
        .I4(\sr_reg_n_0_[20] ),
        .I5(Q[20]),
        .O(lock1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_3
       (.I0(Q[15]),
        .I1(\sr_reg_n_0_[15] ),
        .I2(Q[16]),
        .I3(\sr_reg_n_0_[16] ),
        .I4(\sr_reg_n_0_[17] ),
        .I5(Q[17]),
        .O(lock1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_4
       (.I0(Q[12]),
        .I1(\sr_reg_n_0_[12] ),
        .I2(Q[13]),
        .I3(\sr_reg_n_0_[13] ),
        .I4(\sr_reg_n_0_[14] ),
        .I5(Q[14]),
        .O(lock1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    lock1_carry_i_5
       (.I0(Q[9]),
        .I1(\sr_reg_n_0_[9] ),
        .I2(Q[10]),
        .I3(\sr_reg_n_0_[10] ),
        .I4(\sr_reg_n_0_[11] ),
        .I5(Q[11]),
        .O(lock1_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    lock1_carry_i_6
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[6]),
        .O(lock1_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    lock1_carry_i_7
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .O(lock1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    lock1_carry_i_8
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(lock1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h02F2F2F2)) 
    lock_i_1
       (.I0(pkt_end),
        .I1(init),
        .I2(lock_reg_0),
        .I3(lock1),
        .I4(pkt_end_d),
        .O(lock_i_1_n_0));
  FDRE lock_reg
       (.C(rec_clk),
        .CE(1'b1),
        .D(lock_i_1_n_0),
        .Q(lock_reg_0),
        .R(SR));
  FDRE pkt_end_d_reg
       (.C(rec_clk),
        .CE(1'b1),
        .D(pkt_end),
        .Q(pkt_end_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    pkt_end_i_1
       (.I0(ctr_reg[7]),
        .I1(ctr_reg[5]),
        .I2(ctr_reg[3]),
        .I3(ctr_reg[4]),
        .I4(pkt_end_i_2_n_0),
        .I5(ctr_reg[6]),
        .O(pkt_end_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h80)) 
    pkt_end_i_2
       (.I0(ctr_reg[2]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[0]),
        .O(pkt_end_i_2_n_0));
  FDRE pkt_end_reg
       (.C(rec_clk),
        .CE(1'b1),
        .D(pkt_end_i_1_n_0),
        .Q(pkt_end),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry 
       (.CI(Q[0]),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 ,\plusOp_inferred__0/i__carry_n_4 ,\plusOp_inferred__0/i__carry_n_5 ,\plusOp_inferred__0/i__carry_n_6 ,\plusOp_inferred__0/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry_n_8 ,\plusOp_inferred__0/i__carry_n_9 ,\plusOp_inferred__0/i__carry_n_10 ,\plusOp_inferred__0/i__carry_n_11 ,\plusOp_inferred__0/i__carry_n_12 ,\plusOp_inferred__0/i__carry_n_13 ,\plusOp_inferred__0/i__carry_n_14 ,\plusOp_inferred__0/i__carry_n_15 }),
        .S(Q[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 ,\plusOp_inferred__0/i__carry__0_n_4 ,\plusOp_inferred__0/i__carry__0_n_5 ,\plusOp_inferred__0/i__carry__0_n_6 ,\plusOp_inferred__0/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__0_n_8 ,\plusOp_inferred__0/i__carry__0_n_9 ,\plusOp_inferred__0/i__carry__0_n_10 ,\plusOp_inferred__0/i__carry__0_n_11 ,\plusOp_inferred__0/i__carry__0_n_12 ,\plusOp_inferred__0/i__carry__0_n_13 ,\plusOp_inferred__0/i__carry__0_n_14 ,\plusOp_inferred__0/i__carry__0_n_15 }),
        .S(Q[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 ,\plusOp_inferred__0/i__carry__1_n_4 ,\plusOp_inferred__0/i__carry__1_n_5 ,\plusOp_inferred__0/i__carry__1_n_6 ,\plusOp_inferred__0/i__carry__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__1_n_8 ,\plusOp_inferred__0/i__carry__1_n_9 ,\plusOp_inferred__0/i__carry__1_n_10 ,\plusOp_inferred__0/i__carry__1_n_11 ,\plusOp_inferred__0/i__carry__1_n_12 ,\plusOp_inferred__0/i__carry__1_n_13 ,\plusOp_inferred__0/i__carry__1_n_14 ,\plusOp_inferred__0/i__carry__1_n_15 }),
        .S(Q[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__2_n_0 ,\plusOp_inferred__0/i__carry__2_n_1 ,\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 ,\plusOp_inferred__0/i__carry__2_n_4 ,\plusOp_inferred__0/i__carry__2_n_5 ,\plusOp_inferred__0/i__carry__2_n_6 ,\plusOp_inferred__0/i__carry__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__2_n_8 ,\plusOp_inferred__0/i__carry__2_n_9 ,\plusOp_inferred__0/i__carry__2_n_10 ,\plusOp_inferred__0/i__carry__2_n_11 ,\plusOp_inferred__0/i__carry__2_n_12 ,\plusOp_inferred__0/i__carry__2_n_13 ,\plusOp_inferred__0/i__carry__2_n_14 ,\plusOp_inferred__0/i__carry__2_n_15 }),
        .S(Q[32:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__3 
       (.CI(\plusOp_inferred__0/i__carry__2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__3_n_0 ,\plusOp_inferred__0/i__carry__3_n_1 ,\plusOp_inferred__0/i__carry__3_n_2 ,\plusOp_inferred__0/i__carry__3_n_3 ,\plusOp_inferred__0/i__carry__3_n_4 ,\plusOp_inferred__0/i__carry__3_n_5 ,\plusOp_inferred__0/i__carry__3_n_6 ,\plusOp_inferred__0/i__carry__3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__3_n_8 ,\plusOp_inferred__0/i__carry__3_n_9 ,\plusOp_inferred__0/i__carry__3_n_10 ,\plusOp_inferred__0/i__carry__3_n_11 ,\plusOp_inferred__0/i__carry__3_n_12 ,\plusOp_inferred__0/i__carry__3_n_13 ,\plusOp_inferred__0/i__carry__3_n_14 ,\plusOp_inferred__0/i__carry__3_n_15 }),
        .S(Q[40:33]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__4 
       (.CI(\plusOp_inferred__0/i__carry__3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__4_n_0 ,\plusOp_inferred__0/i__carry__4_n_1 ,\plusOp_inferred__0/i__carry__4_n_2 ,\plusOp_inferred__0/i__carry__4_n_3 ,\plusOp_inferred__0/i__carry__4_n_4 ,\plusOp_inferred__0/i__carry__4_n_5 ,\plusOp_inferred__0/i__carry__4_n_6 ,\plusOp_inferred__0/i__carry__4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__4_n_8 ,\plusOp_inferred__0/i__carry__4_n_9 ,\plusOp_inferred__0/i__carry__4_n_10 ,\plusOp_inferred__0/i__carry__4_n_11 ,\plusOp_inferred__0/i__carry__4_n_12 ,\plusOp_inferred__0/i__carry__4_n_13 ,\plusOp_inferred__0/i__carry__4_n_14 ,\plusOp_inferred__0/i__carry__4_n_15 }),
        .S(Q[48:41]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__5 
       (.CI(\plusOp_inferred__0/i__carry__4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__5_n_0 ,\plusOp_inferred__0/i__carry__5_n_1 ,\plusOp_inferred__0/i__carry__5_n_2 ,\plusOp_inferred__0/i__carry__5_n_3 ,\plusOp_inferred__0/i__carry__5_n_4 ,\plusOp_inferred__0/i__carry__5_n_5 ,\plusOp_inferred__0/i__carry__5_n_6 ,\plusOp_inferred__0/i__carry__5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__5_n_8 ,\plusOp_inferred__0/i__carry__5_n_9 ,\plusOp_inferred__0/i__carry__5_n_10 ,\plusOp_inferred__0/i__carry__5_n_11 ,\plusOp_inferred__0/i__carry__5_n_12 ,\plusOp_inferred__0/i__carry__5_n_13 ,\plusOp_inferred__0/i__carry__5_n_14 ,\plusOp_inferred__0/i__carry__5_n_15 }),
        .S(Q[56:49]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__6 
       (.CI(\plusOp_inferred__0/i__carry__5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED [7:6],\plusOp_inferred__0/i__carry__6_n_2 ,\plusOp_inferred__0/i__carry__6_n_3 ,\plusOp_inferred__0/i__carry__6_n_4 ,\plusOp_inferred__0/i__carry__6_n_5 ,\plusOp_inferred__0/i__carry__6_n_6 ,\plusOp_inferred__0/i__carry__6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED [7],\plusOp_inferred__0/i__carry__6_n_9 ,\plusOp_inferred__0/i__carry__6_n_10 ,\plusOp_inferred__0/i__carry__6_n_11 ,\plusOp_inferred__0/i__carry__6_n_12 ,\plusOp_inferred__0/i__carry__6_n_13 ,\plusOp_inferred__0/i__carry__6_n_14 ,\plusOp_inferred__0/i__carry__6_n_15 }),
        .S({1'b0,Q[63:57]}));
  LUT6 #(
    .INIT(64'h000000F400000000)) 
    \sr[95]_i_1 
       (.I0(\sr_reg[9]_0 ),
        .I1(slen),
        .I2(\sr[95]_i_4_n_0 ),
        .I3(\sr[95]_i_5_n_0 ),
        .I4(\sr[95]_i_6_n_0 ),
        .I5(\sr_reg[9]_1 ),
        .O(sr));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sr[95]_i_4 
       (.I0(ctr_reg[2]),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[3]),
        .I3(ctr_reg[4]),
        .I4(ctr_reg[0]),
        .O(\sr[95]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sr[95]_i_5 
       (.I0(ctr_reg[5]),
        .I1(ctr_reg[7]),
        .I2(ctr_reg[6]),
        .O(\sr[95]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEAAAAAA)) 
    \sr[95]_i_6 
       (.I0(SR),
        .I1(ctr_reg[1]),
        .I2(ctr_reg[2]),
        .I3(ctr_reg[3]),
        .I4(ctr_reg[4]),
        .O(\sr[95]_i_6_n_0 ));
  FDRE \sr_reg[10] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[18] ),
        .Q(\sr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \sr_reg[11] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[19] ),
        .Q(\sr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \sr_reg[12] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[20] ),
        .Q(\sr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \sr_reg[13] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[21] ),
        .Q(\sr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \sr_reg[14] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[22] ),
        .Q(\sr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \sr_reg[15] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[23] ),
        .Q(\sr_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \sr_reg[16] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[24] ),
        .Q(\sr_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \sr_reg[17] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[25] ),
        .Q(\sr_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \sr_reg[18] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[26] ),
        .Q(\sr_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \sr_reg[19] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[27] ),
        .Q(\sr_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \sr_reg[20] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[28] ),
        .Q(\sr_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \sr_reg[21] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[29] ),
        .Q(\sr_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \sr_reg[22] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[30] ),
        .Q(\sr_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \sr_reg[23] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[31] ),
        .Q(\sr_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \sr_reg[24] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[32] ),
        .Q(\sr_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \sr_reg[25] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[33] ),
        .Q(\sr_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \sr_reg[26] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[34] ),
        .Q(\sr_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \sr_reg[27] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[35] ),
        .Q(\sr_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \sr_reg[28] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[36] ),
        .Q(\sr_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \sr_reg[29] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[37] ),
        .Q(\sr_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \sr_reg[30] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[38] ),
        .Q(\sr_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \sr_reg[31] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[39] ),
        .Q(\sr_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \sr_reg[32] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[40] ),
        .Q(\sr_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \sr_reg[33] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[41] ),
        .Q(\sr_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \sr_reg[34] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[42] ),
        .Q(\sr_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \sr_reg[35] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[43] ),
        .Q(\sr_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \sr_reg[36] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[44] ),
        .Q(\sr_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \sr_reg[37] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[45] ),
        .Q(\sr_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \sr_reg[38] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[46] ),
        .Q(\sr_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \sr_reg[39] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[47] ),
        .Q(\sr_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \sr_reg[40] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[48] ),
        .Q(\sr_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \sr_reg[41] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[49] ),
        .Q(\sr_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \sr_reg[42] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[50] ),
        .Q(\sr_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \sr_reg[43] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[51] ),
        .Q(\sr_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \sr_reg[44] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[52] ),
        .Q(\sr_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \sr_reg[45] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[53] ),
        .Q(\sr_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \sr_reg[46] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[54] ),
        .Q(\sr_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \sr_reg[47] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[55] ),
        .Q(\sr_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \sr_reg[48] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[56] ),
        .Q(\sr_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \sr_reg[49] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[57] ),
        .Q(\sr_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \sr_reg[50] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[58] ),
        .Q(\sr_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \sr_reg[51] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[59] ),
        .Q(\sr_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \sr_reg[52] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[60] ),
        .Q(\sr_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \sr_reg[53] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[61] ),
        .Q(\sr_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \sr_reg[54] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[62] ),
        .Q(\sr_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \sr_reg[55] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[63] ),
        .Q(\sr_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \sr_reg[56] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[0]),
        .Q(\sr_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \sr_reg[57] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[1]),
        .Q(\sr_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \sr_reg[58] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[2]),
        .Q(\sr_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \sr_reg[59] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[3]),
        .Q(\sr_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \sr_reg[60] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[4]),
        .Q(\sr_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \sr_reg[61] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[5]),
        .Q(\sr_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \sr_reg[62] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[6]),
        .Q(\sr_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \sr_reg[63] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[7]),
        .Q(\sr_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \sr_reg[64] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[8]),
        .Q(data[0]),
        .R(1'b0));
  FDRE \sr_reg[65] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[9]),
        .Q(data[1]),
        .R(1'b0));
  FDRE \sr_reg[66] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[10]),
        .Q(data[2]),
        .R(1'b0));
  FDRE \sr_reg[67] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[11]),
        .Q(data[3]),
        .R(1'b0));
  FDRE \sr_reg[68] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[12]),
        .Q(data[4]),
        .R(1'b0));
  FDRE \sr_reg[69] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[13]),
        .Q(data[5]),
        .R(1'b0));
  FDRE \sr_reg[70] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[14]),
        .Q(data[6]),
        .R(1'b0));
  FDRE \sr_reg[71] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[15]),
        .Q(data[7]),
        .R(1'b0));
  FDRE \sr_reg[72] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[16]),
        .Q(data[8]),
        .R(1'b0));
  FDRE \sr_reg[73] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[17]),
        .Q(data[9]),
        .R(1'b0));
  FDRE \sr_reg[74] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[18]),
        .Q(data[10]),
        .R(1'b0));
  FDRE \sr_reg[75] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[19]),
        .Q(data[11]),
        .R(1'b0));
  FDRE \sr_reg[76] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[20]),
        .Q(data[12]),
        .R(1'b0));
  FDRE \sr_reg[77] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[21]),
        .Q(data[13]),
        .R(1'b0));
  FDRE \sr_reg[78] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[22]),
        .Q(data[14]),
        .R(1'b0));
  FDRE \sr_reg[79] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[23]),
        .Q(data[15]),
        .R(1'b0));
  FDRE \sr_reg[80] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[24]),
        .Q(data[16]),
        .R(1'b0));
  FDRE \sr_reg[81] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[25]),
        .Q(data[17]),
        .R(1'b0));
  FDRE \sr_reg[82] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[26]),
        .Q(data[18]),
        .R(1'b0));
  FDRE \sr_reg[83] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[27]),
        .Q(data[19]),
        .R(1'b0));
  FDRE \sr_reg[84] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[28]),
        .Q(data[20]),
        .R(1'b0));
  FDRE \sr_reg[85] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[29]),
        .Q(data[21]),
        .R(1'b0));
  FDRE \sr_reg[86] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[30]),
        .Q(data[22]),
        .R(1'b0));
  FDRE \sr_reg[87] 
       (.C(rec_clk),
        .CE(sr),
        .D(data[31]),
        .Q(data[23]),
        .R(1'b0));
  FDRE \sr_reg[88] 
       (.C(rec_clk),
        .CE(sr),
        .D(D[0]),
        .Q(data[24]),
        .R(1'b0));
  FDRE \sr_reg[89] 
       (.C(rec_clk),
        .CE(sr),
        .D(D[1]),
        .Q(data[25]),
        .R(1'b0));
  FDRE \sr_reg[90] 
       (.C(rec_clk),
        .CE(sr),
        .D(D[2]),
        .Q(data[26]),
        .R(1'b0));
  FDRE \sr_reg[91] 
       (.C(rec_clk),
        .CE(sr),
        .D(D[3]),
        .Q(data[27]),
        .R(1'b0));
  FDRE \sr_reg[92] 
       (.C(rec_clk),
        .CE(sr),
        .D(D[4]),
        .Q(data[28]),
        .R(1'b0));
  FDRE \sr_reg[93] 
       (.C(rec_clk),
        .CE(sr),
        .D(D[5]),
        .Q(data[29]),
        .R(1'b0));
  FDRE \sr_reg[94] 
       (.C(rec_clk),
        .CE(sr),
        .D(D[6]),
        .Q(data[30]),
        .R(1'b0));
  FDRE \sr_reg[95] 
       (.C(rec_clk),
        .CE(sr),
        .D(D[7]),
        .Q(data[31]),
        .R(1'b0));
  FDRE \sr_reg[9] 
       (.C(rec_clk),
        .CE(sr),
        .D(\sr_reg_n_0_[17] ),
        .Q(\sr_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h555C)) 
    \tstamp_i[0]_i_1 
       (.I0(Q[0]),
        .I1(pkt_end),
        .I2(init),
        .I3(lock_reg_0),
        .O(\tstamp_i[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[10]_i_1 
       (.I0(\sr_reg_n_0_[10] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__0_n_14 ),
        .O(p_2_in[10]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[11]_i_1 
       (.I0(\sr_reg_n_0_[11] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__0_n_13 ),
        .O(p_2_in[11]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[12]_i_1 
       (.I0(\sr_reg_n_0_[12] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__0_n_12 ),
        .O(p_2_in[12]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[13]_i_1 
       (.I0(\sr_reg_n_0_[13] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__0_n_11 ),
        .O(p_2_in[13]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[14]_i_1 
       (.I0(\sr_reg_n_0_[14] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__0_n_10 ),
        .O(p_2_in[14]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[15]_i_1 
       (.I0(\sr_reg_n_0_[15] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__0_n_9 ),
        .O(p_2_in[15]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[16]_i_1 
       (.I0(\sr_reg_n_0_[16] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__0_n_8 ),
        .O(p_2_in[16]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[17]_i_1 
       (.I0(\sr_reg_n_0_[17] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__1_n_15 ),
        .O(p_2_in[17]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[18]_i_1 
       (.I0(\sr_reg_n_0_[18] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__1_n_14 ),
        .O(p_2_in[18]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[19]_i_1 
       (.I0(\sr_reg_n_0_[19] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__1_n_13 ),
        .O(p_2_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tstamp_i[1]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_15 ),
        .I1(lock_reg_0),
        .I2(init),
        .O(p_2_in[1]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[20]_i_1 
       (.I0(\sr_reg_n_0_[20] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__1_n_12 ),
        .O(p_2_in[20]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[21]_i_1 
       (.I0(\sr_reg_n_0_[21] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__1_n_11 ),
        .O(p_2_in[21]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[22]_i_1 
       (.I0(\sr_reg_n_0_[22] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__1_n_10 ),
        .O(p_2_in[22]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[23]_i_1 
       (.I0(\sr_reg_n_0_[23] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__1_n_9 ),
        .O(p_2_in[23]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[24]_i_1 
       (.I0(\sr_reg_n_0_[24] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__1_n_8 ),
        .O(p_2_in[24]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[25]_i_1 
       (.I0(\sr_reg_n_0_[25] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__2_n_15 ),
        .O(p_2_in[25]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[26]_i_1 
       (.I0(\sr_reg_n_0_[26] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__2_n_14 ),
        .O(p_2_in[26]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[27]_i_1 
       (.I0(\sr_reg_n_0_[27] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__2_n_13 ),
        .O(p_2_in[27]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[28]_i_1 
       (.I0(\sr_reg_n_0_[28] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__2_n_12 ),
        .O(p_2_in[28]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[29]_i_1 
       (.I0(\sr_reg_n_0_[29] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__2_n_11 ),
        .O(p_2_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tstamp_i[2]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_14 ),
        .I1(lock_reg_0),
        .I2(init),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[30]_i_1 
       (.I0(\sr_reg_n_0_[30] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__2_n_10 ),
        .O(p_2_in[30]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[31]_i_1 
       (.I0(\sr_reg_n_0_[31] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__2_n_9 ),
        .O(p_2_in[31]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[32]_i_1 
       (.I0(\sr_reg_n_0_[32] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__2_n_8 ),
        .O(p_2_in[32]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[33]_i_1 
       (.I0(\sr_reg_n_0_[33] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__3_n_15 ),
        .O(p_2_in[33]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[34]_i_1 
       (.I0(\sr_reg_n_0_[34] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__3_n_14 ),
        .O(p_2_in[34]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[35]_i_1 
       (.I0(\sr_reg_n_0_[35] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__3_n_13 ),
        .O(p_2_in[35]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[36]_i_1 
       (.I0(\sr_reg_n_0_[36] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__3_n_12 ),
        .O(p_2_in[36]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[37]_i_1 
       (.I0(\sr_reg_n_0_[37] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__3_n_11 ),
        .O(p_2_in[37]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[38]_i_1 
       (.I0(\sr_reg_n_0_[38] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__3_n_10 ),
        .O(p_2_in[38]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[39]_i_1 
       (.I0(\sr_reg_n_0_[39] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__3_n_9 ),
        .O(p_2_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tstamp_i[3]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_13 ),
        .I1(lock_reg_0),
        .I2(init),
        .O(p_2_in[3]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[40]_i_1 
       (.I0(\sr_reg_n_0_[40] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__3_n_8 ),
        .O(p_2_in[40]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[41]_i_1 
       (.I0(\sr_reg_n_0_[41] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__4_n_15 ),
        .O(p_2_in[41]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[42]_i_1 
       (.I0(\sr_reg_n_0_[42] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__4_n_14 ),
        .O(p_2_in[42]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[43]_i_1 
       (.I0(\sr_reg_n_0_[43] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__4_n_13 ),
        .O(p_2_in[43]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[44]_i_1 
       (.I0(\sr_reg_n_0_[44] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__4_n_12 ),
        .O(p_2_in[44]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[45]_i_1 
       (.I0(\sr_reg_n_0_[45] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__4_n_11 ),
        .O(p_2_in[45]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[46]_i_1 
       (.I0(\sr_reg_n_0_[46] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__4_n_10 ),
        .O(p_2_in[46]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[47]_i_1 
       (.I0(\sr_reg_n_0_[47] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__4_n_9 ),
        .O(p_2_in[47]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[48]_i_1 
       (.I0(\sr_reg_n_0_[48] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__4_n_8 ),
        .O(p_2_in[48]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[49]_i_1 
       (.I0(\sr_reg_n_0_[49] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__5_n_15 ),
        .O(p_2_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tstamp_i[4]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_12 ),
        .I1(lock_reg_0),
        .I2(init),
        .O(p_2_in[4]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[50]_i_1 
       (.I0(\sr_reg_n_0_[50] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__5_n_14 ),
        .O(p_2_in[50]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[51]_i_1 
       (.I0(\sr_reg_n_0_[51] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__5_n_13 ),
        .O(p_2_in[51]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[52]_i_1 
       (.I0(\sr_reg_n_0_[52] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__5_n_12 ),
        .O(p_2_in[52]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[53]_i_1 
       (.I0(\sr_reg_n_0_[53] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__5_n_11 ),
        .O(p_2_in[53]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[54]_i_1 
       (.I0(\sr_reg_n_0_[54] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__5_n_10 ),
        .O(p_2_in[54]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[55]_i_1 
       (.I0(\sr_reg_n_0_[55] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__5_n_9 ),
        .O(p_2_in[55]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[56]_i_1 
       (.I0(\sr_reg_n_0_[56] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__5_n_8 ),
        .O(p_2_in[56]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[57]_i_1 
       (.I0(\sr_reg_n_0_[57] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__6_n_15 ),
        .O(p_2_in[57]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[58]_i_1 
       (.I0(\sr_reg_n_0_[58] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__6_n_14 ),
        .O(p_2_in[58]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[59]_i_1 
       (.I0(\sr_reg_n_0_[59] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__6_n_13 ),
        .O(p_2_in[59]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tstamp_i[5]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_11 ),
        .I1(lock_reg_0),
        .I2(init),
        .O(p_2_in[5]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[60]_i_1 
       (.I0(\sr_reg_n_0_[60] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__6_n_12 ),
        .O(p_2_in[60]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[61]_i_1 
       (.I0(\sr_reg_n_0_[61] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__6_n_11 ),
        .O(p_2_in[61]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[62]_i_1 
       (.I0(\sr_reg_n_0_[62] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__6_n_10 ),
        .O(p_2_in[62]));
  LUT3 #(
    .INIT(8'hFE)) 
    \tstamp_i[63]_i_1 
       (.I0(pkt_end),
        .I1(lock_reg_0),
        .I2(init),
        .O(\tstamp_i[63]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[63]_i_2 
       (.I0(\sr_reg_n_0_[63] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__6_n_9 ),
        .O(p_2_in[63]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tstamp_i[6]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_10 ),
        .I1(lock_reg_0),
        .I2(init),
        .O(p_2_in[6]));
  LUT4 #(
    .INIT(16'hAAAE)) 
    \tstamp_i[7]_i_1 
       (.I0(SR),
        .I1(pkt_end),
        .I2(init),
        .I3(lock_reg_0),
        .O(\tstamp_i[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \tstamp_i[7]_i_2 
       (.I0(\plusOp_inferred__0/i__carry_n_9 ),
        .I1(lock_reg_0),
        .I2(init),
        .O(p_2_in[7]));
  LUT3 #(
    .INIT(8'hFE)) 
    \tstamp_i[8]_i_1 
       (.I0(pkt_end),
        .I1(init),
        .I2(lock_reg_0),
        .O(\tstamp_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hAAAC)) 
    \tstamp_i[8]_i_2 
       (.I0(\plusOp_inferred__0/i__carry_n_8 ),
        .I1(pkt_end),
        .I2(init),
        .I3(lock_reg_0),
        .O(\tstamp_i[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \tstamp_i[9]_i_1 
       (.I0(\sr_reg_n_0_[9] ),
        .I1(init),
        .I2(lock_reg_0),
        .I3(\plusOp_inferred__0/i__carry__0_n_15 ),
        .O(p_2_in[9]));
  FDRE \tstamp_i_reg[0] 
       (.C(rec_clk),
        .CE(\tstamp_i[8]_i_1_n_0 ),
        .D(\tstamp_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \tstamp_i_reg[10] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \tstamp_i_reg[11] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \tstamp_i_reg[12] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \tstamp_i_reg[13] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \tstamp_i_reg[14] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \tstamp_i_reg[15] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \tstamp_i_reg[16] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \tstamp_i_reg[17] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \tstamp_i_reg[18] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \tstamp_i_reg[19] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \tstamp_i_reg[1] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(Q[1]),
        .R(\tstamp_i[7]_i_1_n_0 ));
  FDRE \tstamp_i_reg[20] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \tstamp_i_reg[21] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \tstamp_i_reg[22] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \tstamp_i_reg[23] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \tstamp_i_reg[24] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \tstamp_i_reg[25] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \tstamp_i_reg[26] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \tstamp_i_reg[27] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \tstamp_i_reg[28] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \tstamp_i_reg[29] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \tstamp_i_reg[2] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(Q[2]),
        .R(\tstamp_i[7]_i_1_n_0 ));
  FDRE \tstamp_i_reg[30] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \tstamp_i_reg[31] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \tstamp_i_reg[32] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[32]),
        .Q(Q[32]),
        .R(SR));
  FDRE \tstamp_i_reg[33] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[33]),
        .Q(Q[33]),
        .R(SR));
  FDRE \tstamp_i_reg[34] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[34]),
        .Q(Q[34]),
        .R(SR));
  FDRE \tstamp_i_reg[35] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[35]),
        .Q(Q[35]),
        .R(SR));
  FDRE \tstamp_i_reg[36] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[36]),
        .Q(Q[36]),
        .R(SR));
  FDRE \tstamp_i_reg[37] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[37]),
        .Q(Q[37]),
        .R(SR));
  FDRE \tstamp_i_reg[38] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[38]),
        .Q(Q[38]),
        .R(SR));
  FDRE \tstamp_i_reg[39] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[39]),
        .Q(Q[39]),
        .R(SR));
  FDRE \tstamp_i_reg[3] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(Q[3]),
        .R(\tstamp_i[7]_i_1_n_0 ));
  FDRE \tstamp_i_reg[40] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[40]),
        .Q(Q[40]),
        .R(SR));
  FDRE \tstamp_i_reg[41] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[41]),
        .Q(Q[41]),
        .R(SR));
  FDRE \tstamp_i_reg[42] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[42]),
        .Q(Q[42]),
        .R(SR));
  FDRE \tstamp_i_reg[43] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[43]),
        .Q(Q[43]),
        .R(SR));
  FDRE \tstamp_i_reg[44] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[44]),
        .Q(Q[44]),
        .R(SR));
  FDRE \tstamp_i_reg[45] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[45]),
        .Q(Q[45]),
        .R(SR));
  FDRE \tstamp_i_reg[46] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[46]),
        .Q(Q[46]),
        .R(SR));
  FDRE \tstamp_i_reg[47] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[47]),
        .Q(Q[47]),
        .R(SR));
  FDRE \tstamp_i_reg[48] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[48]),
        .Q(Q[48]),
        .R(SR));
  FDRE \tstamp_i_reg[49] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[49]),
        .Q(Q[49]),
        .R(SR));
  FDRE \tstamp_i_reg[4] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(Q[4]),
        .R(\tstamp_i[7]_i_1_n_0 ));
  FDRE \tstamp_i_reg[50] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[50]),
        .Q(Q[50]),
        .R(SR));
  FDRE \tstamp_i_reg[51] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[51]),
        .Q(Q[51]),
        .R(SR));
  FDRE \tstamp_i_reg[52] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[52]),
        .Q(Q[52]),
        .R(SR));
  FDRE \tstamp_i_reg[53] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[53]),
        .Q(Q[53]),
        .R(SR));
  FDRE \tstamp_i_reg[54] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[54]),
        .Q(Q[54]),
        .R(SR));
  FDRE \tstamp_i_reg[55] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[55]),
        .Q(Q[55]),
        .R(SR));
  FDRE \tstamp_i_reg[56] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[56]),
        .Q(Q[56]),
        .R(SR));
  FDRE \tstamp_i_reg[57] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[57]),
        .Q(Q[57]),
        .R(SR));
  FDRE \tstamp_i_reg[58] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[58]),
        .Q(Q[58]),
        .R(SR));
  FDRE \tstamp_i_reg[59] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[59]),
        .Q(Q[59]),
        .R(SR));
  FDRE \tstamp_i_reg[5] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(Q[5]),
        .R(\tstamp_i[7]_i_1_n_0 ));
  FDRE \tstamp_i_reg[60] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[60]),
        .Q(Q[60]),
        .R(SR));
  FDRE \tstamp_i_reg[61] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[61]),
        .Q(Q[61]),
        .R(SR));
  FDRE \tstamp_i_reg[62] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[62]),
        .Q(Q[62]),
        .R(SR));
  FDRE \tstamp_i_reg[63] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[63]),
        .Q(Q[63]),
        .R(SR));
  FDRE \tstamp_i_reg[6] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(Q[6]),
        .R(\tstamp_i[7]_i_1_n_0 ));
  FDRE \tstamp_i_reg[7] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(Q[7]),
        .R(\tstamp_i[7]_i_1_n_0 ));
  FDRE \tstamp_i_reg[8] 
       (.C(rec_clk),
        .CE(\tstamp_i[8]_i_1_n_0 ),
        .D(\tstamp_i[8]_i_2_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE \tstamp_i_reg[9] 
       (.C(rec_clk),
        .CE(\tstamp_i[63]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(Q[9]),
        .R(SR));
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
