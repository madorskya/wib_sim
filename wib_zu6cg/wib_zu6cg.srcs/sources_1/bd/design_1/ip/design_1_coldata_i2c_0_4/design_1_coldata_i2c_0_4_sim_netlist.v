// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Jun 20 12:05:44 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_coldata_i2c_0_4 -prefix
//               design_1_coldata_i2c_0_4_ design_1_coldata_i2c_0_0_sim_netlist.v
// Design      : design_1_coldata_i2c_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_coldata_i2c_0_4_coldadc_i2c_master
   (scl,
    busy,
    Q,
    sda_out_out,
    \FSM_onehot_state_reg[9]_0 ,
    \reg_data_rd_reg[7]_0 ,
    clk62p5,
    AR,
    wr_reg0,
    \data_tx_reg[1]_0 ,
    sda_in_out,
    D);
  output scl;
  output busy;
  output [2:0]Q;
  output sda_out_out;
  output \FSM_onehot_state_reg[9]_0 ;
  output [7:0]\reg_data_rd_reg[7]_0 ;
  input clk62p5;
  input [0:0]AR;
  input [0:0]wr_reg0;
  input [0:0]\data_tx_reg[1]_0 ;
  input sda_in_out;
  input [7:0]D;

  wire [0:0]AR;
  wire [7:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[11]_i_1_n_0 ;
  wire \FSM_onehot_state[15]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[9]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[11] ;
  wire \FSM_onehot_state_reg_n_0_[12] ;
  wire \FSM_onehot_state_reg_n_0_[13] ;
  wire \FSM_onehot_state_reg_n_0_[14] ;
  wire \FSM_onehot_state_reg_n_0_[15] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire [2:0]Q;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[0]_i_2_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire \bit_cnt[2]_i_3_n_0 ;
  wire \bit_cnt[2]_i_4_n_0 ;
  wire \bit_cnt[2]_i_5_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire busy;
  wire busy_i_1_n_0;
  wire clk62p5;
  wire [4:0]count;
  wire [5:0]count_0;
  wire data_clk;
  wire data_clk_dly;
  wire data_clk_i_1_n_0;
  wire [7:0]data_rx;
  wire \data_rx[0]_i_1_n_0 ;
  wire \data_rx[1]_i_1_n_0 ;
  wire \data_rx[2]_i_1_n_0 ;
  wire \data_rx[3]_i_1_n_0 ;
  wire \data_rx[3]_i_2_n_0 ;
  wire \data_rx[4]_i_1_n_0 ;
  wire \data_rx[5]_i_1_n_0 ;
  wire \data_rx[6]_i_1_n_0 ;
  wire \data_rx[7]_i_1_n_0 ;
  wire \data_rx[7]_i_2_n_0 ;
  wire [7:0]data_tx;
  wire \data_tx[7]_i_1_n_0 ;
  wire [0:0]\data_tx_reg[1]_0 ;
  wire ena;
  wire \reg_data_rd[7]_i_1_n_0 ;
  wire [7:0]\reg_data_rd_reg[7]_0 ;
  wire scl;
  wire scl_clk;
  wire scl_ena_i_1_n_0;
  wire scl_ena_reg_n_0;
  wire scl_wait_act0;
  wire scl_wait_act__0;
  wire scl_wait_act_reg_n_0;
  wire sda_in_out;
  wire sda_out_out;
  wire sda_out_out_INST_0_i_1_n_0;
  wire sda_out_out_INST_0_i_2_n_0;
  wire sda_out_out_INST_0_i_3_n_0;
  wire sda_out_out_INST_0_i_4_n_0;
  wire sda_out_out_INST_0_i_5_n_0;
  wire [0:0]wr_reg0;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[15] ),
        .I1(ena),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[10] ),
        .I4(Q[2]),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(\FSM_onehot_state[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[15]_i_1 
       (.I0(data_clk),
        .I1(data_clk_dly),
        .O(scl_wait_act0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[15]_i_2 
       (.I0(ena),
        .I1(\FSM_onehot_state_reg_n_0_[15] ),
        .I2(\FSM_onehot_state_reg_n_0_[14] ),
        .O(\FSM_onehot_state[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ena),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(Q[0]),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(Q[1]),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state[11]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[11] ),
        .Q(\FSM_onehot_state_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[13] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[12] ),
        .Q(\FSM_onehot_state_reg_n_0_[13] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[14] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[13] ),
        .Q(\FSM_onehot_state_reg_n_0_[14] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[15] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state[15]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[15] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "slv_ack1:0000000000100000,slv_ack1_wait:0000000000001000,slv_ack1_wait2:0000000000010000,command:0000000000000100,stop:0100000000000000,done:1000000000000000,slv_ack3_wait:0000100000000000,start:0000000000000010,idle:0000000000000001,slv_ack3:0010000000000000,slv_ack2_wait:0000000010000000,slv_ack2:0000001000000000,reg_value:0000010000000000,slv_ack3_wait2:0001000000000000,slv_ack2_wait2:0000000100000000,reg_address:0000000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[8] ),
        .Q(Q[2]));
  LUT3 #(
    .INIT(8'h0B)) 
    \__7/i_ 
       (.I0(scl_clk),
        .I1(scl_ena_reg_n_0),
        .I2(scl_wait_act_reg_n_0),
        .O(scl));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCCCFFFE)) 
    \bit_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bit_cnt[0]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[10] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(Q[0]),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bit_cnt[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\bit_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8A8AA)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt[2]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(Q[0]),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \bit_cnt[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\bit_cnt[2]_i_3_n_0 ),
        .I3(\bit_cnt[2]_i_4_n_0 ),
        .I4(Q[0]),
        .I5(scl_wait_act0),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAA82)) 
    \bit_cnt[2]_i_2 
       (.I0(\bit_cnt[2]_i_4_n_0 ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt[2]_i_5_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\bit_cnt[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bit_cnt[2]_i_3 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .O(\bit_cnt[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bit_cnt[2]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .O(\bit_cnt[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bit_cnt[2]_i_5 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[2]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[0] 
       (.C(clk62p5),
        .CE(\bit_cnt[2]_i_1_n_0 ),
        .CLR(AR),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[1] 
       (.C(clk62p5),
        .CE(\bit_cnt[2]_i_1_n_0 ),
        .CLR(AR),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[2] 
       (.C(clk62p5),
        .CE(\bit_cnt[2]_i_1_n_0 ),
        .CLR(AR),
        .D(\bit_cnt[2]_i_2_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFF8BFF00008800)) 
    busy_i_1
       (.I0(ena),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[14] ),
        .I3(data_clk),
        .I4(data_clk_dly),
        .I5(busy),
        .O(busy_i_1_n_0));
  FDPE busy_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .PRE(AR),
        .Q(busy));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(count_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .O(count_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .O(count_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1 
       (.I0(count[3]),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[2]),
        .O(count_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_1 
       (.I0(count[4]),
        .I1(count[2]),
        .I2(count[1]),
        .I3(count[0]),
        .I4(count[3]),
        .O(count_0[4]));
  FDCE \count_reg[0] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(count_0[0]),
        .Q(count[0]));
  FDCE \count_reg[1] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(count_0[1]),
        .Q(count[1]));
  FDCE \count_reg[2] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(count_0[2]),
        .Q(count[2]));
  FDCE \count_reg[3] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(count_0[3]),
        .Q(count[3]));
  FDCE \count_reg[4] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(count_0[4]),
        .Q(count[4]));
  FDCE data_clk_dly_reg
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(data_clk),
        .Q(data_clk_dly));
  LUT6 #(
    .INIT(64'h555555556AAAAAAA)) 
    data_clk_i_1
       (.I0(scl_clk),
        .I1(count[3]),
        .I2(count[0]),
        .I3(count[1]),
        .I4(count[2]),
        .I5(count[4]),
        .O(data_clk_i_1_n_0));
  FDCE data_clk_reg
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(data_clk_i_1_n_0),
        .Q(data_clk));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \data_rx[0]_i_1 
       (.I0(sda_in_out),
        .I1(\data_rx[3]_i_2_n_0 ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(data_rx[0]),
        .O(\data_rx[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \data_rx[1]_i_1 
       (.I0(sda_in_out),
        .I1(\data_rx[3]_i_2_n_0 ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(data_rx[1]),
        .O(\data_rx[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \data_rx[2]_i_1 
       (.I0(sda_in_out),
        .I1(\data_rx[3]_i_2_n_0 ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(data_rx[2]),
        .O(\data_rx[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_rx[3]_i_1 
       (.I0(sda_in_out),
        .I1(\data_rx[3]_i_2_n_0 ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(data_rx[3]),
        .O(\data_rx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \data_rx[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(data_clk_dly),
        .I2(data_clk),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .O(\data_rx[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \data_rx[4]_i_1 
       (.I0(sda_in_out),
        .I1(\data_rx[7]_i_2_n_0 ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(data_rx[4]),
        .O(\data_rx[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \data_rx[5]_i_1 
       (.I0(sda_in_out),
        .I1(\data_rx[7]_i_2_n_0 ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(data_rx[5]),
        .O(\data_rx[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \data_rx[6]_i_1 
       (.I0(sda_in_out),
        .I1(\data_rx[7]_i_2_n_0 ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(data_rx[6]),
        .O(\data_rx[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_rx[7]_i_1 
       (.I0(sda_in_out),
        .I1(\data_rx[7]_i_2_n_0 ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(data_rx[7]),
        .O(\data_rx[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \data_rx[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(data_clk_dly),
        .I2(data_clk),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .O(\data_rx[7]_i_2_n_0 ));
  FDCE \data_rx_reg[0] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_rx[0]_i_1_n_0 ),
        .Q(data_rx[0]));
  FDCE \data_rx_reg[1] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_rx[1]_i_1_n_0 ),
        .Q(data_rx[1]));
  FDCE \data_rx_reg[2] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_rx[2]_i_1_n_0 ),
        .Q(data_rx[2]));
  FDCE \data_rx_reg[3] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_rx[3]_i_1_n_0 ),
        .Q(data_rx[3]));
  FDCE \data_rx_reg[4] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_rx[4]_i_1_n_0 ),
        .Q(data_rx[4]));
  FDCE \data_rx_reg[5] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_rx[5]_i_1_n_0 ),
        .Q(data_rx[5]));
  FDCE \data_rx_reg[6] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_rx[6]_i_1_n_0 ),
        .Q(data_rx[6]));
  FDCE \data_rx_reg[7] 
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_rx[7]_i_1_n_0 ),
        .Q(data_rx[7]));
  LUT5 #(
    .INIT(32'h44444440)) 
    \data_tx[7]_i_1 
       (.I0(data_clk_dly),
        .I1(data_clk),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\data_tx[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_tx[7]_i_3 
       (.I0(Q[2]),
        .I1(\data_tx_reg[1]_0 ),
        .O(\FSM_onehot_state_reg[9]_0 ));
  FDCE \data_tx_reg[0] 
       (.C(clk62p5),
        .CE(\data_tx[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(data_tx[0]));
  FDCE \data_tx_reg[1] 
       (.C(clk62p5),
        .CE(\data_tx[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(data_tx[1]));
  FDCE \data_tx_reg[2] 
       (.C(clk62p5),
        .CE(\data_tx[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(data_tx[2]));
  FDCE \data_tx_reg[3] 
       (.C(clk62p5),
        .CE(\data_tx[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[3]),
        .Q(data_tx[3]));
  FDCE \data_tx_reg[4] 
       (.C(clk62p5),
        .CE(\data_tx[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[4]),
        .Q(data_tx[4]));
  FDCE \data_tx_reg[5] 
       (.C(clk62p5),
        .CE(\data_tx[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[5]),
        .Q(data_tx[5]));
  FDCE \data_tx_reg[6] 
       (.C(clk62p5),
        .CE(\data_tx[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[6]),
        .Q(data_tx[6]));
  FDCE \data_tx_reg[7] 
       (.C(clk62p5),
        .CE(\data_tx[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[7]),
        .Q(data_tx[7]));
  FDRE ena_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(wr_reg0),
        .Q(ena),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \reg_data_rd[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(data_clk),
        .I2(data_clk_dly),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(\bit_cnt_reg_n_0_[0] ),
        .O(\reg_data_rd[7]_i_1_n_0 ));
  FDCE \reg_data_rd_reg[0] 
       (.C(clk62p5),
        .CE(\reg_data_rd[7]_i_1_n_0 ),
        .CLR(AR),
        .D(data_rx[0]),
        .Q(\reg_data_rd_reg[7]_0 [0]));
  FDCE \reg_data_rd_reg[1] 
       (.C(clk62p5),
        .CE(\reg_data_rd[7]_i_1_n_0 ),
        .CLR(AR),
        .D(data_rx[1]),
        .Q(\reg_data_rd_reg[7]_0 [1]));
  FDCE \reg_data_rd_reg[2] 
       (.C(clk62p5),
        .CE(\reg_data_rd[7]_i_1_n_0 ),
        .CLR(AR),
        .D(data_rx[2]),
        .Q(\reg_data_rd_reg[7]_0 [2]));
  FDCE \reg_data_rd_reg[3] 
       (.C(clk62p5),
        .CE(\reg_data_rd[7]_i_1_n_0 ),
        .CLR(AR),
        .D(data_rx[3]),
        .Q(\reg_data_rd_reg[7]_0 [3]));
  FDCE \reg_data_rd_reg[4] 
       (.C(clk62p5),
        .CE(\reg_data_rd[7]_i_1_n_0 ),
        .CLR(AR),
        .D(data_rx[4]),
        .Q(\reg_data_rd_reg[7]_0 [4]));
  FDCE \reg_data_rd_reg[5] 
       (.C(clk62p5),
        .CE(\reg_data_rd[7]_i_1_n_0 ),
        .CLR(AR),
        .D(data_rx[5]),
        .Q(\reg_data_rd_reg[7]_0 [5]));
  FDCE \reg_data_rd_reg[6] 
       (.C(clk62p5),
        .CE(\reg_data_rd[7]_i_1_n_0 ),
        .CLR(AR),
        .D(data_rx[6]),
        .Q(\reg_data_rd_reg[7]_0 [6]));
  FDCE \reg_data_rd_reg[7] 
       (.C(clk62p5),
        .CE(\reg_data_rd[7]_i_1_n_0 ),
        .CLR(AR),
        .D(data_rx[7]),
        .Q(\reg_data_rd_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    scl_clk_i_1
       (.I0(scl_clk),
        .I1(count[3]),
        .I2(count[4]),
        .I3(count[2]),
        .I4(count[1]),
        .I5(count[0]),
        .O(count_0[5]));
  FDCE scl_clk_reg
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(count_0[5]),
        .Q(scl_clk));
  LUT5 #(
    .INIT(32'hFFBF00A0)) 
    scl_ena_i_1
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg_n_0_[14] ),
        .I2(data_clk_dly),
        .I3(data_clk),
        .I4(scl_ena_reg_n_0),
        .O(scl_ena_i_1_n_0));
  FDCE scl_ena_reg
       (.C(clk62p5),
        .CE(1'b1),
        .CLR(AR),
        .D(scl_ena_i_1_n_0),
        .Q(scl_ena_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    scl_wait_act
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[8] ),
        .I5(\FSM_onehot_state_reg_n_0_[7] ),
        .O(scl_wait_act__0));
  FDCE scl_wait_act_reg
       (.C(clk62p5),
        .CE(scl_wait_act0),
        .CLR(AR),
        .D(scl_wait_act__0),
        .Q(scl_wait_act_reg_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEAEAEAEEEA)) 
    sda_out_out_INST_0
       (.I0(sda_out_out_INST_0_i_1_n_0),
        .I1(sda_out_out_INST_0_i_2_n_0),
        .I2(sda_out_out_INST_0_i_3_n_0),
        .I3(sda_out_out_INST_0_i_4_n_0),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(sda_out_out_INST_0_i_5_n_0),
        .O(sda_out_out));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    sda_out_out_INST_0_i_1
       (.I0(data_clk_dly),
        .I1(Q[0]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(sda_out_out_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    sda_out_out_INST_0_i_2
       (.I0(data_clk_dly),
        .I1(\FSM_onehot_state_reg_n_0_[14] ),
        .I2(\FSM_onehot_state_reg_n_0_[15] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(sda_out_out_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    sda_out_out_INST_0_i_3
       (.I0(data_clk_dly),
        .I1(\FSM_onehot_state_reg_n_0_[14] ),
        .I2(\FSM_onehot_state_reg_n_0_[15] ),
        .O(sda_out_out_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    sda_out_out_INST_0_i_4
       (.I0(data_tx[1]),
        .I1(data_tx[3]),
        .I2(data_tx[0]),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(data_tx[2]),
        .O(sda_out_out_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    sda_out_out_INST_0_i_5
       (.I0(data_tx[5]),
        .I1(data_tx[7]),
        .I2(data_tx[4]),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(data_tx[6]),
        .O(sda_out_out_INST_0_i_5_n_0));
endmodule

module design_1_coldata_i2c_0_4_coldata_i2c_v1_0
   (scl,
    sda_out_p,
    sda_out_n,
    sda_out_out,
    sda_in_out,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    clk62p5,
    sda_in_p,
    sda_in_n,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output scl;
  output sda_out_p;
  output sda_out_n;
  output sda_out_out;
  output sda_in_out;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input clk62p5;
  input sda_in_p;
  input sda_in_n;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire bnl_i2c_n_2;
  wire bnl_i2c_n_3;
  wire bnl_i2c_n_4;
  wire bnl_i2c_n_6;
  wire busy;
  wire clk62p5;
  wire coldata_i2c_v1_0_S00_AXI_inst_n_1;
  wire [8:1]data1;
  wire [7:0]data_tx__0;
  wire [0:0]in10;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda_in_n;
  wire sda_in_out;
  wire sda_in_p;
  wire sda_out_n;
  wire sda_out_out;
  wire sda_out_p;
  wire [0:0]wr_reg0;

  design_1_coldata_i2c_0_4_coldadc_i2c_master bnl_i2c
       (.AR(coldata_i2c_v1_0_S00_AXI_inst_n_1),
        .D(data_tx__0),
        .\FSM_onehot_state_reg[9]_0 (bnl_i2c_n_6),
        .Q({bnl_i2c_n_2,bnl_i2c_n_3,bnl_i2c_n_4}),
        .busy(busy),
        .clk62p5(clk62p5),
        .\data_tx_reg[1]_0 (in10),
        .\reg_data_rd_reg[7]_0 (data1),
        .scl(scl),
        .sda_in_out(sda_in_out),
        .sda_out_out(sda_out_out),
        .wr_reg0(wr_reg0));
  design_1_coldata_i2c_0_4_coldata_i2c_v1_0_S00_AXI coldata_i2c_v1_0_S00_AXI_inst
       (.D(data_tx__0),
        .Q({bnl_i2c_n_2,bnl_i2c_n_3,bnl_i2c_n_4}),
        .SR(coldata_i2c_v1_0_S00_AXI_inst_n_1),
        .\axi_rdata_reg[8]_0 (data1),
        .busy(busy),
        .\data_tx_reg[1] (bnl_i2c_n_6),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .wr_reg0(wr_reg0),
        .\wr_reg1_reg[19]_0 (in10));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    ibuf_sda
       (.I(sda_in_p),
        .IB(sda_in_n),
        .O(sda_in_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    obuf_sda
       (.I(sda_out_out),
        .O(sda_out_p),
        .OB(sda_out_n));
endmodule

module design_1_coldata_i2c_0_4_coldata_i2c_v1_0_S00_AXI
   (s00_axi_awready,
    SR,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    wr_reg0,
    D,
    \wr_reg1_reg[19]_0 ,
    s00_axi_rdata,
    s00_axi_aclk,
    Q,
    \data_tx_reg[1] ,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_araddr,
    busy,
    \axi_rdata_reg[8]_0 ,
    s00_axi_wstrb);
  output s00_axi_awready;
  output [0:0]SR;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [0:0]wr_reg0;
  output [7:0]D;
  output [0:0]\wr_reg1_reg[19]_0 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [2:0]Q;
  input \data_tx_reg[1] ;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input s00_axi_aresetn;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input busy;
  input [7:0]\axi_rdata_reg[8]_0 ;
  input [3:0]s00_axi_wstrb;

  wire [7:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire [7:0]\axi_rdata_reg[8]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire busy;
  wire \data_tx_reg[1] ;
  wire [7:1]in10;
  wire [7:0]in11;
  wire [2:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [31:0]slv_reg4;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire [0:0]wr_reg0;
  wire \wr_reg0[0]_i_1_n_0 ;
  wire \wr_reg0[0]_i_2_n_0 ;
  wire \wr_reg1[15]_i_1_n_0 ;
  wire \wr_reg1[23]_i_1_n_0 ;
  wire \wr_reg1[26]_i_1_n_0 ;
  wire \wr_reg1[7]_i_1_n_0 ;
  wire [0:0]\wr_reg1_reg[19]_0 ;
  wire \wr_reg1_reg_n_0_[1] ;
  wire \wr_reg1_reg_n_0_[2] ;
  wire \wr_reg1_reg_n_0_[3] ;
  wire \wr_reg1_reg_n_0_[4] ;
  wire \wr_reg1_reg_n_0_[5] ;
  wire \wr_reg1_reg_n_0_[6] ;
  wire \wr_reg1_reg_n_0_[7] ;
  wire \wr_reg1_reg_n_0_[8] ;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(SR));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(SR));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awready),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(busy),
        .I4(sel0[1]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg7[0]),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(slv_reg4[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[10]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[10]_i_2_n_0 ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[11]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[11]_i_2_n_0 ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[12]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[12]_i_2_n_0 ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[13]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[13]_i_2_n_0 ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[14]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[14]_i_2_n_0 ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[15]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[15]_i_2_n_0 ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[16]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[16]_i_2_n_0 ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(slv_reg4[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[17]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[17]_i_2_n_0 ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(slv_reg4[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[18]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[18]_i_2_n_0 ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(slv_reg4[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[19]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[19]_i_2_n_0 ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[8]_0 [0]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg7[1]),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .I5(slv_reg4[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[20]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[20]_i_2_n_0 ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[21]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[21]_i_2_n_0 ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(slv_reg4[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[22]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[22]_i_2_n_0 ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(slv_reg4[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[23]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[23]_i_2_n_0 ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[24]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[24]_i_2_n_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[25]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[25]_i_2_n_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[26]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[26]_i_2_n_0 ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[27]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[27]_i_2_n_0 ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[28]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[28]_i_2_n_0 ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[29]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[29]_i_2_n_0 ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[8]_0 [1]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg7[2]),
        .I1(slv_reg6[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[2]),
        .I4(sel0[0]),
        .I5(slv_reg4[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[30]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[30]_i_2_n_0 ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[31]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[31]_i_2_n_0 ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[8]_0 [2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg7[3]),
        .I1(slv_reg6[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .I5(slv_reg4[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[8]_0 [3]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .I5(slv_reg4[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[8]_0 [4]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .I5(slv_reg4[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[8]_0 [5]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(slv_reg4[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[8]_0 [6]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(slv_reg4[7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[8]_0 [7]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[9]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[9]_i_2_n_0 ),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(SR));
  LUT6 #(
    .INIT(64'hF8F8F8F8FF888888)) 
    \data_tx[0]_i_1 
       (.I0(in11[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\wr_reg1_reg_n_0_[1] ),
        .I4(Q[2]),
        .I5(\wr_reg1_reg[19]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_tx[1]_i_1 
       (.I0(in11[1]),
        .I1(Q[1]),
        .I2(in10[1]),
        .I3(Q[0]),
        .I4(\wr_reg1_reg_n_0_[2] ),
        .I5(\data_tx_reg[1] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_tx[2]_i_1 
       (.I0(in11[2]),
        .I1(Q[1]),
        .I2(in10[2]),
        .I3(Q[0]),
        .I4(\wr_reg1_reg_n_0_[3] ),
        .I5(\data_tx_reg[1] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_tx[3]_i_1 
       (.I0(in11[3]),
        .I1(Q[1]),
        .I2(in10[3]),
        .I3(Q[0]),
        .I4(\wr_reg1_reg_n_0_[4] ),
        .I5(\data_tx_reg[1] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_tx[4]_i_1 
       (.I0(in11[4]),
        .I1(Q[1]),
        .I2(in10[4]),
        .I3(Q[0]),
        .I4(\wr_reg1_reg_n_0_[5] ),
        .I5(\data_tx_reg[1] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_tx[5]_i_1 
       (.I0(in11[5]),
        .I1(Q[1]),
        .I2(in10[5]),
        .I3(Q[0]),
        .I4(\wr_reg1_reg_n_0_[6] ),
        .I5(\data_tx_reg[1] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_tx[6]_i_1 
       (.I0(in11[6]),
        .I1(Q[1]),
        .I2(in10[6]),
        .I3(Q[0]),
        .I4(\wr_reg1_reg_n_0_[7] ),
        .I5(\data_tx_reg[1] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_tx[7]_i_2 
       (.I0(in11[7]),
        .I1(Q[1]),
        .I2(in10[7]),
        .I3(Q[0]),
        .I4(\wr_reg1_reg_n_0_[8] ),
        .I5(\data_tx_reg[1] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg4[31]_i_2 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(SR));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(SR));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(SR));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(SR));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(SR));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(SR));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(SR));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(SR));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(SR));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(SR));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(SR));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(SR));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(SR));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(SR));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(SR));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(SR));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(SR));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(SR));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(SR));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(SR));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(SR));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(SR));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(SR));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(SR));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(SR));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(SR));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(SR));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(SR));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(SR));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(SR));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(SR));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(SR));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(SR));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(SR));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(SR));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(SR));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(SR));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(SR));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(SR));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(SR));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(SR));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(SR));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(SR));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(SR));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(SR));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(SR));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(SR));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(SR));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(SR));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(SR));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(SR));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(SR));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(SR));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(SR));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(SR));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(SR));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(SR));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(SR));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(SR));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(SR));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(SR));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(SR));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(SR));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(SR));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(SR));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(SR));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(SR));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(SR));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(SR));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(SR));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(SR));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(SR));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(SR));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(SR));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(SR));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(SR));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(SR));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(SR));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(SR));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(SR));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(SR));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(SR));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(SR));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(SR));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(SR));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(SR));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(SR));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(SR));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(SR));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(SR));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(SR));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(SR));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(SR));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(SR));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(SR));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(SR));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(SR));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(SR));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(SR));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(SR));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(SR));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(SR));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(SR));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(SR));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(SR));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(SR));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(SR));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(SR));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(SR));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(SR));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(SR));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(SR));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(SR));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(SR));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(SR));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(SR));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(SR));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(SR));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(SR));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(SR));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(SR));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(SR));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(SR));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(SR));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \wr_reg0[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(s00_axi_aresetn),
        .I2(\wr_reg0[0]_i_2_n_0 ),
        .I3(slv_reg_wren__0),
        .I4(wr_reg0),
        .O(\wr_reg0[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \wr_reg0[0]_i_2 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\wr_reg0[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\wr_reg0[0]_i_1_n_0 ),
        .Q(wr_reg0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \wr_reg1[15]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(slv_reg_wren__0),
        .O(\wr_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \wr_reg1[23]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(slv_reg_wren__0),
        .O(\wr_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \wr_reg1[26]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(slv_reg_wren__0),
        .O(\wr_reg1[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \wr_reg1[7]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(slv_reg_wren__0),
        .O(\wr_reg1[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(in11[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(in11[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(in11[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(in11[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(in11[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(in11[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(in11[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(in11[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\wr_reg1_reg[19]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\wr_reg1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(in10[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(in10[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(in10[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(in10[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[26]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(in10[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[26]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(in10[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[26]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(in10[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\wr_reg1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\wr_reg1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\wr_reg1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\wr_reg1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\wr_reg1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\wr_reg1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\wr_reg1_reg_n_0_[8] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_coldata_i2c_0_0,coldata_i2c_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "coldata_i2c_v1_0,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_coldata_i2c_0_4
   (scl,
    scl_out,
    sda_out_p,
    sda_out_n,
    sda_in_p,
    sda_in_n,
    sda_in_out,
    sda_out_out,
    clk62p5,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output scl;
  output scl_out;
  output sda_out_p;
  output sda_out_n;
  input sda_in_p;
  input sda_in_n;
  output sda_in_out;
  output sda_out_out;
  input clk62p5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire clk62p5;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  (* IBUF_LOW_PWR *) wire sda_in_n;
  (* IBUF_LOW_PWR *) wire sda_in_out;
  (* IBUF_LOW_PWR *) wire sda_in_p;
  (* SLEW = "SLOW" *) wire sda_out_n;
  (* SLEW = "SLOW" *) wire sda_out_out;
  (* SLEW = "SLOW" *) wire sda_out_p;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign scl_out = scl;
  GND GND
       (.G(\<const0> ));
  design_1_coldata_i2c_0_4_coldata_i2c_v1_0 inst
       (.clk62p5(clk62p5),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .scl(scl),
        .sda_in_n(sda_in_n),
        .sda_in_out(sda_in_out),
        .sda_in_p(sda_in_p),
        .sda_out_n(sda_out_n),
        .sda_out_out(sda_out_out),
        .sda_out_p(sda_out_p));
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
