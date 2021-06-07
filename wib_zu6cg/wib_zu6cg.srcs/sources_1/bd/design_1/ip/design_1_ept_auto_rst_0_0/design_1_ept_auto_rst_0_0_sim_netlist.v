// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Jun  4 16:17:50 2021
// Host        : lxeng99 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lxeng99/DUNE/wib_sim_timing_sync/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_ept_auto_rst_0_0/design_1_ept_auto_rst_0_0_sim_netlist.v
// Design      : design_1_ept_auto_rst_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ept_auto_rst_0_0,ept_auto_rst,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ept_auto_rst,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_ept_auto_rst_0_0
   (stat_in,
    clk_in,
    srst_in,
    timeout,
    retry_in,
    pass_thru,
    ept_auto_rst_in,
    rst_out,
    err_out);
  input [3:0]stat_in;
  input clk_in;
  input srst_in;
  input [31:0]timeout;
  input [3:0]retry_in;
  input pass_thru;
  input ept_auto_rst_in;
  output rst_out;
  output err_out;

  wire clk_in;
  wire ept_auto_rst_in;
  wire err_out;
  wire pass_thru;
  wire [3:0]retry_in;
  wire rst_out;
  wire srst_in;
  wire [3:0]stat_in;
  wire [31:0]timeout;

  design_1_ept_auto_rst_0_0_ept_auto_rst inst
       (.clk_in(clk_in),
        .ept_auto_rst_in(ept_auto_rst_in),
        .err_out(err_out),
        .pass_thru(pass_thru),
        .retry_in(retry_in),
        .rst_out(rst_out),
        .srst_in(srst_in),
        .stat_in(stat_in),
        .timeout(timeout));
endmodule

(* ORIG_REF_NAME = "ept_auto_rst" *) 
module design_1_ept_auto_rst_0_0_ept_auto_rst
   (err_out,
    rst_out,
    srst_in,
    clk_in,
    timeout,
    ept_auto_rst_in,
    pass_thru,
    stat_in,
    retry_in);
  output err_out;
  output rst_out;
  input srst_in;
  input clk_in;
  input [31:0]timeout;
  input ept_auto_rst_in;
  input pass_thru;
  input [3:0]stat_in;
  input [3:0]retry_in;

  wire \FSM_onehot_curr_state[0]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[4]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[4]_i_2_n_0 ;
  wire \FSM_onehot_curr_state[4]_i_3_n_0 ;
  wire \FSM_onehot_curr_state[4]_i_4_n_0 ;
  wire \FSM_onehot_curr_state[4]_i_5_n_0 ;
  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire \FSM_onehot_curr_state_reg_n_0_[1] ;
  wire \FSM_onehot_curr_state_reg_n_0_[2] ;
  wire \FSM_onehot_curr_state_reg_n_0_[3] ;
  wire clk_in;
  wire \counter[0]_i_2_n_0 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_10 ;
  wire \counter_reg[0]_i_1_n_11 ;
  wire \counter_reg[0]_i_1_n_12 ;
  wire \counter_reg[0]_i_1_n_13 ;
  wire \counter_reg[0]_i_1_n_14 ;
  wire \counter_reg[0]_i_1_n_15 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[0]_i_1_n_8 ;
  wire \counter_reg[0]_i_1_n_9 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_10 ;
  wire \counter_reg[16]_i_1_n_11 ;
  wire \counter_reg[16]_i_1_n_12 ;
  wire \counter_reg[16]_i_1_n_13 ;
  wire \counter_reg[16]_i_1_n_14 ;
  wire \counter_reg[16]_i_1_n_15 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_8 ;
  wire \counter_reg[16]_i_1_n_9 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_10 ;
  wire \counter_reg[24]_i_1_n_11 ;
  wire \counter_reg[24]_i_1_n_12 ;
  wire \counter_reg[24]_i_1_n_13 ;
  wire \counter_reg[24]_i_1_n_14 ;
  wire \counter_reg[24]_i_1_n_15 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_8 ;
  wire \counter_reg[24]_i_1_n_9 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_10 ;
  wire \counter_reg[8]_i_1_n_11 ;
  wire \counter_reg[8]_i_1_n_12 ;
  wire \counter_reg[8]_i_1_n_13 ;
  wire \counter_reg[8]_i_1_n_14 ;
  wire \counter_reg[8]_i_1_n_15 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_8 ;
  wire \counter_reg[8]_i_1_n_9 ;
  wire ept_auto_rst_in;
  wire ept_auto_rst_out;
  wire ept_auto_rst_out__0;
  wire err_out;
  wire err_out_reg;
  wire err_out_reg_reg_i_1_n_0;
  wire next_state0_carry__0_i_10_n_0;
  wire next_state0_carry__0_i_11_n_0;
  wire next_state0_carry__0_i_12_n_0;
  wire next_state0_carry__0_i_13_n_0;
  wire next_state0_carry__0_i_14_n_0;
  wire next_state0_carry__0_i_15_n_0;
  wire next_state0_carry__0_i_16_n_0;
  wire next_state0_carry__0_i_1_n_0;
  wire next_state0_carry__0_i_2_n_0;
  wire next_state0_carry__0_i_3_n_0;
  wire next_state0_carry__0_i_4_n_0;
  wire next_state0_carry__0_i_5_n_0;
  wire next_state0_carry__0_i_6_n_0;
  wire next_state0_carry__0_i_7_n_0;
  wire next_state0_carry__0_i_8_n_0;
  wire next_state0_carry__0_i_9_n_0;
  wire next_state0_carry__0_n_0;
  wire next_state0_carry__0_n_1;
  wire next_state0_carry__0_n_2;
  wire next_state0_carry__0_n_3;
  wire next_state0_carry__0_n_4;
  wire next_state0_carry__0_n_5;
  wire next_state0_carry__0_n_6;
  wire next_state0_carry__0_n_7;
  wire next_state0_carry_i_10_n_0;
  wire next_state0_carry_i_11_n_0;
  wire next_state0_carry_i_12_n_0;
  wire next_state0_carry_i_13_n_0;
  wire next_state0_carry_i_14_n_0;
  wire next_state0_carry_i_15_n_0;
  wire next_state0_carry_i_16_n_0;
  wire next_state0_carry_i_1_n_0;
  wire next_state0_carry_i_2_n_0;
  wire next_state0_carry_i_3_n_0;
  wire next_state0_carry_i_4_n_0;
  wire next_state0_carry_i_5_n_0;
  wire next_state0_carry_i_6_n_0;
  wire next_state0_carry_i_7_n_0;
  wire next_state0_carry_i_8_n_0;
  wire next_state0_carry_i_9_n_0;
  wire next_state0_carry_n_0;
  wire next_state0_carry_n_1;
  wire next_state0_carry_n_2;
  wire next_state0_carry_n_3;
  wire next_state0_carry_n_4;
  wire next_state0_carry_n_5;
  wire next_state0_carry_n_6;
  wire next_state0_carry_n_7;
  wire pass_thru;
  wire [3:0]retry_count;
  wire [3:1]retry_count__0;
  wire \retry_count_reg[0]_i_1_n_0 ;
  wire \retry_count_reg[3]_i_2_n_0 ;
  wire [3:0]retry_in;
  wire rst_out;
  wire srst_in;
  wire [3:0]stat_in;
  wire [31:0]timeout;
  wire tmo_clear;
  wire tmo_clear__0;
  wire tmo_clear_reg_i_2_n_0;
  wire [7:7]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:0]NLW_next_state0_carry_O_UNCONNECTED;
  wire [7:0]NLW_next_state0_carry__0_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hBAFBAAAA)) 
    \FSM_onehot_curr_state[0]_i_1 
       (.I0(err_out_reg),
        .I1(\FSM_onehot_curr_state[4]_i_4_n_0 ),
        .I2(retry_in[3]),
        .I3(retry_count[3]),
        .I4(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .O(\FSM_onehot_curr_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \FSM_onehot_curr_state[4]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(next_state0_carry__0_n_0),
        .I2(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I3(ept_auto_rst_in),
        .I4(err_out_reg),
        .I5(\FSM_onehot_curr_state[4]_i_3_n_0 ),
        .O(\FSM_onehot_curr_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A08)) 
    \FSM_onehot_curr_state[4]_i_2 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(retry_count[3]),
        .I2(retry_in[3]),
        .I3(\FSM_onehot_curr_state[4]_i_4_n_0 ),
        .O(\FSM_onehot_curr_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_curr_state[4]_i_3 
       (.I0(srst_in),
        .I1(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_curr_state[4]_i_5_n_0 ),
        .O(\FSM_onehot_curr_state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    \FSM_onehot_curr_state[4]_i_4 
       (.I0(retry_count[0]),
        .I1(retry_in[0]),
        .I2(retry_in[1]),
        .I3(retry_count[1]),
        .I4(retry_in[2]),
        .I5(retry_count[2]),
        .O(\FSM_onehot_curr_state[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \FSM_onehot_curr_state[4]_i_5 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I1(stat_in[1]),
        .I2(stat_in[2]),
        .I3(stat_in[3]),
        .I4(stat_in[0]),
        .O(\FSM_onehot_curr_state[4]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "COUNT:00010,MONITOR:00100,DO_RESET:01000,START:00001,ERROR:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(clk_in),
        .CE(\FSM_onehot_curr_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_curr_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .S(srst_in));
  (* FSM_ENCODED_STATES = "COUNT:00010,MONITOR:00100,DO_RESET:01000,START:00001,ERROR:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(clk_in),
        .CE(\FSM_onehot_curr_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .R(srst_in));
  (* FSM_ENCODED_STATES = "COUNT:00010,MONITOR:00100,DO_RESET:01000,START:00001,ERROR:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(clk_in),
        .CE(\FSM_onehot_curr_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .R(srst_in));
  (* FSM_ENCODED_STATES = "COUNT:00010,MONITOR:00100,DO_RESET:01000,START:00001,ERROR:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[3] 
       (.C(clk_in),
        .CE(\FSM_onehot_curr_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .R(srst_in));
  (* FSM_ENCODED_STATES = "COUNT:00010,MONITOR:00100,DO_RESET:01000,START:00001,ERROR:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[4] 
       (.C(clk_in),
        .CE(\FSM_onehot_curr_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_curr_state[4]_i_2_n_0 ),
        .Q(err_out_reg),
        .R(srst_in));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_15 ),
        .Q(counter_reg[0]),
        .R(tmo_clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 ,\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_8 ,\counter_reg[0]_i_1_n_9 ,\counter_reg[0]_i_1_n_10 ,\counter_reg[0]_i_1_n_11 ,\counter_reg[0]_i_1_n_12 ,\counter_reg[0]_i_1_n_13 ,\counter_reg[0]_i_1_n_14 ,\counter_reg[0]_i_1_n_15 }),
        .S({counter_reg[7:1],\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_13 ),
        .Q(counter_reg[10]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_12 ),
        .Q(counter_reg[11]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_11 ),
        .Q(counter_reg[12]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_10 ),
        .Q(counter_reg[13]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_9 ),
        .Q(counter_reg[14]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_8 ),
        .Q(counter_reg[15]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_15 ),
        .Q(counter_reg[16]),
        .R(tmo_clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[16]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 ,\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_8 ,\counter_reg[16]_i_1_n_9 ,\counter_reg[16]_i_1_n_10 ,\counter_reg[16]_i_1_n_11 ,\counter_reg[16]_i_1_n_12 ,\counter_reg[16]_i_1_n_13 ,\counter_reg[16]_i_1_n_14 ,\counter_reg[16]_i_1_n_15 }),
        .S(counter_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_14 ),
        .Q(counter_reg[17]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_13 ),
        .Q(counter_reg[18]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_12 ),
        .Q(counter_reg[19]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_14 ),
        .Q(counter_reg[1]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_11 ),
        .Q(counter_reg[20]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_10 ),
        .Q(counter_reg[21]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_9 ),
        .Q(counter_reg[22]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_8 ),
        .Q(counter_reg[23]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_15 ),
        .Q(counter_reg[24]),
        .R(tmo_clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[24]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [7],\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 ,\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_8 ,\counter_reg[24]_i_1_n_9 ,\counter_reg[24]_i_1_n_10 ,\counter_reg[24]_i_1_n_11 ,\counter_reg[24]_i_1_n_12 ,\counter_reg[24]_i_1_n_13 ,\counter_reg[24]_i_1_n_14 ,\counter_reg[24]_i_1_n_15 }),
        .S(counter_reg[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_14 ),
        .Q(counter_reg[25]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_13 ),
        .Q(counter_reg[26]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_12 ),
        .Q(counter_reg[27]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_11 ),
        .Q(counter_reg[28]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_10 ),
        .Q(counter_reg[29]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_13 ),
        .Q(counter_reg[2]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_9 ),
        .Q(counter_reg[30]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_8 ),
        .Q(counter_reg[31]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_12 ),
        .Q(counter_reg[3]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_11 ),
        .Q(counter_reg[4]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_10 ),
        .Q(counter_reg[5]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_9 ),
        .Q(counter_reg[6]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_8 ),
        .Q(counter_reg[7]),
        .R(tmo_clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_15 ),
        .Q(counter_reg[8]),
        .R(tmo_clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[8]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 ,\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_8 ,\counter_reg[8]_i_1_n_9 ,\counter_reg[8]_i_1_n_10 ,\counter_reg[8]_i_1_n_11 ,\counter_reg[8]_i_1_n_12 ,\counter_reg[8]_i_1_n_13 ,\counter_reg[8]_i_1_n_14 ,\counter_reg[8]_i_1_n_15 }),
        .S(counter_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_14 ),
        .Q(counter_reg[9]),
        .R(tmo_clear));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ept_auto_rst_out_reg
       (.CLR(1'b0),
        .D(ept_auto_rst_out__0),
        .G(err_out_reg_reg_i_1_n_0),
        .GE(1'b1),
        .Q(ept_auto_rst_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ept_auto_rst_out_reg_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(err_out_reg),
        .O(ept_auto_rst_out__0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    err_out_reg_reg
       (.CLR(1'b0),
        .D(err_out_reg),
        .G(err_out_reg_reg_i_1_n_0),
        .GE(1'b1),
        .Q(err_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    err_out_reg_reg_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I2(ept_auto_rst_in),
        .I3(err_out_reg),
        .I4(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(err_out_reg_reg_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 next_state0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({next_state0_carry_n_0,next_state0_carry_n_1,next_state0_carry_n_2,next_state0_carry_n_3,next_state0_carry_n_4,next_state0_carry_n_5,next_state0_carry_n_6,next_state0_carry_n_7}),
        .DI({next_state0_carry_i_1_n_0,next_state0_carry_i_2_n_0,next_state0_carry_i_3_n_0,next_state0_carry_i_4_n_0,next_state0_carry_i_5_n_0,next_state0_carry_i_6_n_0,next_state0_carry_i_7_n_0,next_state0_carry_i_8_n_0}),
        .O(NLW_next_state0_carry_O_UNCONNECTED[7:0]),
        .S({next_state0_carry_i_9_n_0,next_state0_carry_i_10_n_0,next_state0_carry_i_11_n_0,next_state0_carry_i_12_n_0,next_state0_carry_i_13_n_0,next_state0_carry_i_14_n_0,next_state0_carry_i_15_n_0,next_state0_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 next_state0_carry__0
       (.CI(next_state0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({next_state0_carry__0_n_0,next_state0_carry__0_n_1,next_state0_carry__0_n_2,next_state0_carry__0_n_3,next_state0_carry__0_n_4,next_state0_carry__0_n_5,next_state0_carry__0_n_6,next_state0_carry__0_n_7}),
        .DI({next_state0_carry__0_i_1_n_0,next_state0_carry__0_i_2_n_0,next_state0_carry__0_i_3_n_0,next_state0_carry__0_i_4_n_0,next_state0_carry__0_i_5_n_0,next_state0_carry__0_i_6_n_0,next_state0_carry__0_i_7_n_0,next_state0_carry__0_i_8_n_0}),
        .O(NLW_next_state0_carry__0_O_UNCONNECTED[7:0]),
        .S({next_state0_carry__0_i_9_n_0,next_state0_carry__0_i_10_n_0,next_state0_carry__0_i_11_n_0,next_state0_carry__0_i_12_n_0,next_state0_carry__0_i_13_n_0,next_state0_carry__0_i_14_n_0,next_state0_carry__0_i_15_n_0,next_state0_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry__0_i_1
       (.I0(counter_reg[30]),
        .I1(timeout[30]),
        .I2(timeout[31]),
        .I3(counter_reg[31]),
        .O(next_state0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry__0_i_10
       (.I0(counter_reg[28]),
        .I1(timeout[28]),
        .I2(counter_reg[29]),
        .I3(timeout[29]),
        .O(next_state0_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry__0_i_11
       (.I0(counter_reg[26]),
        .I1(timeout[26]),
        .I2(counter_reg[27]),
        .I3(timeout[27]),
        .O(next_state0_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry__0_i_12
       (.I0(counter_reg[24]),
        .I1(timeout[24]),
        .I2(counter_reg[25]),
        .I3(timeout[25]),
        .O(next_state0_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry__0_i_13
       (.I0(counter_reg[22]),
        .I1(timeout[22]),
        .I2(counter_reg[23]),
        .I3(timeout[23]),
        .O(next_state0_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry__0_i_14
       (.I0(counter_reg[20]),
        .I1(timeout[20]),
        .I2(counter_reg[21]),
        .I3(timeout[21]),
        .O(next_state0_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry__0_i_15
       (.I0(counter_reg[18]),
        .I1(timeout[18]),
        .I2(counter_reg[19]),
        .I3(timeout[19]),
        .O(next_state0_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry__0_i_16
       (.I0(counter_reg[16]),
        .I1(timeout[16]),
        .I2(counter_reg[17]),
        .I3(timeout[17]),
        .O(next_state0_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry__0_i_2
       (.I0(counter_reg[28]),
        .I1(timeout[28]),
        .I2(timeout[29]),
        .I3(counter_reg[29]),
        .O(next_state0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry__0_i_3
       (.I0(counter_reg[26]),
        .I1(timeout[26]),
        .I2(timeout[27]),
        .I3(counter_reg[27]),
        .O(next_state0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry__0_i_4
       (.I0(counter_reg[24]),
        .I1(timeout[24]),
        .I2(timeout[25]),
        .I3(counter_reg[25]),
        .O(next_state0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry__0_i_5
       (.I0(counter_reg[22]),
        .I1(timeout[22]),
        .I2(timeout[23]),
        .I3(counter_reg[23]),
        .O(next_state0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry__0_i_6
       (.I0(counter_reg[20]),
        .I1(timeout[20]),
        .I2(timeout[21]),
        .I3(counter_reg[21]),
        .O(next_state0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry__0_i_7
       (.I0(counter_reg[18]),
        .I1(timeout[18]),
        .I2(timeout[19]),
        .I3(counter_reg[19]),
        .O(next_state0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry__0_i_8
       (.I0(counter_reg[16]),
        .I1(timeout[16]),
        .I2(timeout[17]),
        .I3(counter_reg[17]),
        .O(next_state0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry__0_i_9
       (.I0(counter_reg[30]),
        .I1(timeout[30]),
        .I2(counter_reg[31]),
        .I3(timeout[31]),
        .O(next_state0_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry_i_1
       (.I0(counter_reg[14]),
        .I1(timeout[14]),
        .I2(timeout[15]),
        .I3(counter_reg[15]),
        .O(next_state0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry_i_10
       (.I0(counter_reg[12]),
        .I1(timeout[12]),
        .I2(counter_reg[13]),
        .I3(timeout[13]),
        .O(next_state0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry_i_11
       (.I0(counter_reg[10]),
        .I1(timeout[10]),
        .I2(counter_reg[11]),
        .I3(timeout[11]),
        .O(next_state0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry_i_12
       (.I0(counter_reg[8]),
        .I1(timeout[8]),
        .I2(counter_reg[9]),
        .I3(timeout[9]),
        .O(next_state0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry_i_13
       (.I0(counter_reg[6]),
        .I1(timeout[6]),
        .I2(counter_reg[7]),
        .I3(timeout[7]),
        .O(next_state0_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry_i_14
       (.I0(counter_reg[4]),
        .I1(timeout[4]),
        .I2(counter_reg[5]),
        .I3(timeout[5]),
        .O(next_state0_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry_i_15
       (.I0(counter_reg[2]),
        .I1(timeout[2]),
        .I2(counter_reg[3]),
        .I3(timeout[3]),
        .O(next_state0_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry_i_16
       (.I0(counter_reg[0]),
        .I1(timeout[0]),
        .I2(counter_reg[1]),
        .I3(timeout[1]),
        .O(next_state0_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry_i_2
       (.I0(counter_reg[12]),
        .I1(timeout[12]),
        .I2(timeout[13]),
        .I3(counter_reg[13]),
        .O(next_state0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry_i_3
       (.I0(counter_reg[10]),
        .I1(timeout[10]),
        .I2(timeout[11]),
        .I3(counter_reg[11]),
        .O(next_state0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry_i_4
       (.I0(counter_reg[8]),
        .I1(timeout[8]),
        .I2(timeout[9]),
        .I3(counter_reg[9]),
        .O(next_state0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry_i_5
       (.I0(counter_reg[6]),
        .I1(timeout[6]),
        .I2(timeout[7]),
        .I3(counter_reg[7]),
        .O(next_state0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry_i_6
       (.I0(counter_reg[4]),
        .I1(timeout[4]),
        .I2(timeout[5]),
        .I3(counter_reg[5]),
        .O(next_state0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry_i_7
       (.I0(counter_reg[2]),
        .I1(timeout[2]),
        .I2(timeout[3]),
        .I3(counter_reg[3]),
        .O(next_state0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next_state0_carry_i_8
       (.I0(counter_reg[0]),
        .I1(timeout[0]),
        .I2(timeout[1]),
        .I3(counter_reg[1]),
        .O(next_state0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state0_carry_i_9
       (.I0(counter_reg[14]),
        .I1(timeout[14]),
        .I2(counter_reg[15]),
        .I3(timeout[15]),
        .O(next_state0_carry_i_9_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \retry_count_reg[0] 
       (.CLR(1'b0),
        .D(\retry_count_reg[0]_i_1_n_0 ),
        .G(\retry_count_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(retry_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \retry_count_reg[0]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(retry_count[0]),
        .O(\retry_count_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \retry_count_reg[1] 
       (.CLR(1'b0),
        .D(retry_count__0[1]),
        .G(\retry_count_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(retry_count[1]));
  LUT3 #(
    .INIT(8'h28)) 
    \retry_count_reg[1]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(retry_count[1]),
        .I2(retry_count[0]),
        .O(retry_count__0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \retry_count_reg[2] 
       (.CLR(1'b0),
        .D(retry_count__0[2]),
        .G(\retry_count_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(retry_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \retry_count_reg[2]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(retry_count[2]),
        .I2(retry_count[1]),
        .I3(retry_count[0]),
        .O(retry_count__0[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \retry_count_reg[3] 
       (.CLR(1'b0),
        .D(retry_count__0[3]),
        .G(\retry_count_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(retry_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \retry_count_reg[3]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(retry_count[3]),
        .I2(retry_count[2]),
        .I3(retry_count[0]),
        .I4(retry_count[1]),
        .O(retry_count__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \retry_count_reg[3]_i_2 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(ept_auto_rst_in),
        .I2(err_out_reg),
        .O(\retry_count_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    rst_out_INST_0
       (.I0(srst_in),
        .I1(pass_thru),
        .I2(ept_auto_rst_out),
        .O(rst_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    tmo_clear_reg
       (.CLR(1'b0),
        .D(tmo_clear__0),
        .G(tmo_clear_reg_i_2_n_0),
        .GE(1'b1),
        .Q(tmo_clear));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    tmo_clear_reg_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(err_out_reg),
        .I2(next_state0_carry__0_n_0),
        .I3(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(tmo_clear__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    tmo_clear_reg_i_2
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I3(err_out_reg),
        .I4(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(tmo_clear_reg_i_2_n_0));
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
