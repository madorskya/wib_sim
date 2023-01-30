// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Mon Jan 30 16:31:29 2023
// Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/github/wib_felix/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_daq_spy_control_0_0/design_1_daq_spy_control_0_0_sim_netlist.v
// Design      : design_1_daq_spy_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_daq_spy_control_0_0,daq_spy_control,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "daq_spy_control,Vivado 2020.1.1_AR73018" *) 
(* NotValidForBitStream *)
module design_1_daq_spy_control_0_0
   (daq_stream,
    daq_stream_k,
    daq_data_type,
    daq_clk,
    bram_addr,
    bram_clk,
    bram_din,
    bram_en,
    bram_rst,
    bram_we,
    time_stamp,
    clk65p5,
    reset,
    full,
    state,
    trigger,
    rec_time);
  input [31:0]daq_stream;
  input [3:0]daq_stream_k;
  input [1:0]daq_data_type;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 daq_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME daq_clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_daq_clk, INSERT_VIP 0" *) input daq_clk;
  output [19:0]bram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 bram_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_clk, ASSOCIATED_RESET bram_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_daq_spy_control_0_0_bram_clk, INSERT_VIP 0" *) output bram_clk;
  output [31:0]bram_din;
  output bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bram_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output bram_rst;
  output [3:0]bram_we;
  input [63:0]time_stamp;
  input clk65p5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output full;
  output [2:0]state;
  input trigger;
  input [17:0]rec_time;

  wire \<const0> ;
  wire [19:2]\^bram_addr ;
  wire [31:0]bram_din;
  wire [3:3]\^bram_we ;
  wire daq_clk;
  wire [1:0]daq_data_type;
  wire [31:0]daq_stream;
  wire full;
  wire [17:0]rec_time;
  wire reset;
  wire [2:0]state;
  wire trigger;

  assign bram_addr[19:2] = \^bram_addr [19:2];
  assign bram_addr[1] = \<const0> ;
  assign bram_addr[0] = \<const0> ;
  assign bram_clk = daq_clk;
  assign bram_en = \^bram_we [3];
  assign bram_rst = \<const0> ;
  assign bram_we[3] = \^bram_we [3];
  assign bram_we[2] = \^bram_we [3];
  assign bram_we[1] = \^bram_we [3];
  assign bram_we[0] = \^bram_we [3];
  GND GND
       (.G(\<const0> ));
  design_1_daq_spy_control_0_0_daq_spy_control inst
       (.bram_addr(\^bram_addr ),
        .bram_din(bram_din),
        .bram_we(\^bram_we ),
        .daq_clk(daq_clk),
        .daq_data_type(daq_data_type),
        .daq_stream(daq_stream),
        .full(full),
        .rec_time(rec_time),
        .reset(reset),
        .state(state),
        .trigger(trigger));
endmodule

(* ORIG_REF_NAME = "daq_spy_control" *) 
module design_1_daq_spy_control_0_0_daq_spy_control
   (state,
    bram_din,
    bram_we,
    full,
    bram_addr,
    daq_clk,
    reset,
    trigger,
    daq_stream,
    daq_data_type,
    rec_time);
  output [2:0]state;
  output [31:0]bram_din;
  output [0:0]bram_we;
  output full;
  output [17:0]bram_addr;
  input daq_clk;
  input reset;
  input trigger;
  input [31:0]daq_stream;
  input [1:0]daq_data_type;
  input [17:0]rec_time;

  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire [17:0]bram_addr;
  wire \bram_addr[9]_i_2_n_0 ;
  wire \bram_addr_reg[17]_i_1_n_0 ;
  wire \bram_addr_reg[17]_i_1_n_1 ;
  wire \bram_addr_reg[17]_i_1_n_10 ;
  wire \bram_addr_reg[17]_i_1_n_11 ;
  wire \bram_addr_reg[17]_i_1_n_12 ;
  wire \bram_addr_reg[17]_i_1_n_13 ;
  wire \bram_addr_reg[17]_i_1_n_14 ;
  wire \bram_addr_reg[17]_i_1_n_15 ;
  wire \bram_addr_reg[17]_i_1_n_2 ;
  wire \bram_addr_reg[17]_i_1_n_3 ;
  wire \bram_addr_reg[17]_i_1_n_4 ;
  wire \bram_addr_reg[17]_i_1_n_5 ;
  wire \bram_addr_reg[17]_i_1_n_6 ;
  wire \bram_addr_reg[17]_i_1_n_7 ;
  wire \bram_addr_reg[17]_i_1_n_8 ;
  wire \bram_addr_reg[17]_i_1_n_9 ;
  wire \bram_addr_reg[19]_i_1_n_14 ;
  wire \bram_addr_reg[19]_i_1_n_15 ;
  wire \bram_addr_reg[19]_i_1_n_7 ;
  wire \bram_addr_reg[9]_i_1_n_0 ;
  wire \bram_addr_reg[9]_i_1_n_1 ;
  wire \bram_addr_reg[9]_i_1_n_10 ;
  wire \bram_addr_reg[9]_i_1_n_11 ;
  wire \bram_addr_reg[9]_i_1_n_12 ;
  wire \bram_addr_reg[9]_i_1_n_13 ;
  wire \bram_addr_reg[9]_i_1_n_14 ;
  wire \bram_addr_reg[9]_i_1_n_15 ;
  wire \bram_addr_reg[9]_i_1_n_2 ;
  wire \bram_addr_reg[9]_i_1_n_3 ;
  wire \bram_addr_reg[9]_i_1_n_4 ;
  wire \bram_addr_reg[9]_i_1_n_5 ;
  wire \bram_addr_reg[9]_i_1_n_6 ;
  wire \bram_addr_reg[9]_i_1_n_7 ;
  wire \bram_addr_reg[9]_i_1_n_8 ;
  wire \bram_addr_reg[9]_i_1_n_9 ;
  wire [31:0]bram_din;
  wire [0:0]bram_we;
  wire daq_clk;
  wire [1:0]daq_data_type;
  wire [31:0]daq_stream;
  wire [31:0]daq_stream_r;
  wire full;
  wire [17:1]in5;
  wire \rec_cnt[0]_i_1_n_0 ;
  wire \rec_cnt[17]_i_1_n_0 ;
  wire \rec_cnt[17]_i_2_n_0 ;
  wire \rec_cnt_reg[16]_i_1_n_0 ;
  wire \rec_cnt_reg[16]_i_1_n_1 ;
  wire \rec_cnt_reg[16]_i_1_n_2 ;
  wire \rec_cnt_reg[16]_i_1_n_3 ;
  wire \rec_cnt_reg[16]_i_1_n_4 ;
  wire \rec_cnt_reg[16]_i_1_n_5 ;
  wire \rec_cnt_reg[16]_i_1_n_6 ;
  wire \rec_cnt_reg[16]_i_1_n_7 ;
  wire \rec_cnt_reg[8]_i_1_n_0 ;
  wire \rec_cnt_reg[8]_i_1_n_1 ;
  wire \rec_cnt_reg[8]_i_1_n_2 ;
  wire \rec_cnt_reg[8]_i_1_n_3 ;
  wire \rec_cnt_reg[8]_i_1_n_4 ;
  wire \rec_cnt_reg[8]_i_1_n_5 ;
  wire \rec_cnt_reg[8]_i_1_n_6 ;
  wire \rec_cnt_reg[8]_i_1_n_7 ;
  wire \rec_cnt_reg_n_0_[0] ;
  wire \rec_cnt_reg_n_0_[10] ;
  wire \rec_cnt_reg_n_0_[11] ;
  wire \rec_cnt_reg_n_0_[12] ;
  wire \rec_cnt_reg_n_0_[13] ;
  wire \rec_cnt_reg_n_0_[14] ;
  wire \rec_cnt_reg_n_0_[15] ;
  wire \rec_cnt_reg_n_0_[16] ;
  wire \rec_cnt_reg_n_0_[17] ;
  wire \rec_cnt_reg_n_0_[1] ;
  wire \rec_cnt_reg_n_0_[2] ;
  wire \rec_cnt_reg_n_0_[3] ;
  wire \rec_cnt_reg_n_0_[4] ;
  wire \rec_cnt_reg_n_0_[5] ;
  wire \rec_cnt_reg_n_0_[6] ;
  wire \rec_cnt_reg_n_0_[7] ;
  wire \rec_cnt_reg_n_0_[8] ;
  wire \rec_cnt_reg_n_0_[9] ;
  wire [17:0]rec_time;
  wire reset;
  (* async_reg = "true" *) wire [2:0]reset_r;
  wire [2:0]state;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_i_5_n_0;
  wire state1_carry_i_6_n_0;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire state1_carry_n_4;
  wire state1_carry_n_5;
  wire state1_carry_n_6;
  wire state1_carry_n_7;
  wire [1:0]state__0;
  wire [1:0]state__1;
  wire trigger;
  (* async_reg = "true" *) wire [2:0]trigger_r;
  wire [7:1]\NLW_bram_addr_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_bram_addr_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_rec_cnt_reg[17]_i_3_CO_UNCONNECTED ;
  wire [7:1]\NLW_rec_cnt_reg[17]_i_3_O_UNCONNECTED ;
  wire [7:6]NLW_state1_carry_CO_UNCONNECTED;
  wire [7:0]NLW_state1_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h8B888B888BBB8B88)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state1_carry_n_2),
        .I1(state__0[1]),
        .I2(trigger_r[2]),
        .I3(state__0[0]),
        .I4(daq_data_type[0]),
        .I5(daq_data_type[1]),
        .O(state__1[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state__0[1]),
        .I1(trigger_r[2]),
        .I2(state__0[0]),
        .O(state__1[1]));
  (* FSM_ENCODED_STATES = "IDLE:00,RECORD:01,LAST:10,FULL:11" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(daq_clk),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .D(state__1[0]),
        .Q(state__0[0]),
        .R(reset_r[2]));
  (* FSM_ENCODED_STATES = "IDLE:00,RECORD:01,LAST:10,FULL:11" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(daq_clk),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .D(state__1[1]),
        .Q(state__0[1]),
        .R(reset_r[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[9]_i_2 
       (.I0(bram_addr[0]),
        .O(\bram_addr[9]_i_2_n_0 ));
  FDSE \bram_addr_reg[10] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[17]_i_1_n_15 ),
        .Q(bram_addr[8]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[11] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[17]_i_1_n_14 ),
        .Q(bram_addr[9]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[12] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[17]_i_1_n_13 ),
        .Q(bram_addr[10]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[13] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[17]_i_1_n_12 ),
        .Q(bram_addr[11]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[14] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[17]_i_1_n_11 ),
        .Q(bram_addr[12]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[15] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[17]_i_1_n_10 ),
        .Q(bram_addr[13]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[16] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[17]_i_1_n_9 ),
        .Q(bram_addr[14]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[17] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[17]_i_1_n_8 ),
        .Q(bram_addr[15]),
        .S(reset_r[2]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addr_reg[17]_i_1 
       (.CI(\bram_addr_reg[9]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\bram_addr_reg[17]_i_1_n_0 ,\bram_addr_reg[17]_i_1_n_1 ,\bram_addr_reg[17]_i_1_n_2 ,\bram_addr_reg[17]_i_1_n_3 ,\bram_addr_reg[17]_i_1_n_4 ,\bram_addr_reg[17]_i_1_n_5 ,\bram_addr_reg[17]_i_1_n_6 ,\bram_addr_reg[17]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[17]_i_1_n_8 ,\bram_addr_reg[17]_i_1_n_9 ,\bram_addr_reg[17]_i_1_n_10 ,\bram_addr_reg[17]_i_1_n_11 ,\bram_addr_reg[17]_i_1_n_12 ,\bram_addr_reg[17]_i_1_n_13 ,\bram_addr_reg[17]_i_1_n_14 ,\bram_addr_reg[17]_i_1_n_15 }),
        .S(bram_addr[15:8]));
  FDSE \bram_addr_reg[18] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[19]_i_1_n_15 ),
        .Q(bram_addr[16]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[19] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[19]_i_1_n_14 ),
        .Q(bram_addr[17]),
        .S(reset_r[2]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addr_reg[19]_i_1 
       (.CI(\bram_addr_reg[17]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_bram_addr_reg[19]_i_1_CO_UNCONNECTED [7:1],\bram_addr_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_addr_reg[19]_i_1_O_UNCONNECTED [7:2],\bram_addr_reg[19]_i_1_n_14 ,\bram_addr_reg[19]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_addr[17:16]}));
  FDSE \bram_addr_reg[2] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[9]_i_1_n_15 ),
        .Q(bram_addr[0]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[3] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[9]_i_1_n_14 ),
        .Q(bram_addr[1]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[4] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[9]_i_1_n_13 ),
        .Q(bram_addr[2]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[5] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[9]_i_1_n_12 ),
        .Q(bram_addr[3]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[6] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[9]_i_1_n_11 ),
        .Q(bram_addr[4]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[7] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[9]_i_1_n_10 ),
        .Q(bram_addr[5]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[8] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[9]_i_1_n_9 ),
        .Q(bram_addr[6]),
        .S(reset_r[2]));
  FDSE \bram_addr_reg[9] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(\bram_addr_reg[9]_i_1_n_8 ),
        .Q(bram_addr[7]),
        .S(reset_r[2]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addr_reg[9]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\bram_addr_reg[9]_i_1_n_0 ,\bram_addr_reg[9]_i_1_n_1 ,\bram_addr_reg[9]_i_1_n_2 ,\bram_addr_reg[9]_i_1_n_3 ,\bram_addr_reg[9]_i_1_n_4 ,\bram_addr_reg[9]_i_1_n_5 ,\bram_addr_reg[9]_i_1_n_6 ,\bram_addr_reg[9]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\bram_addr_reg[9]_i_1_n_8 ,\bram_addr_reg[9]_i_1_n_9 ,\bram_addr_reg[9]_i_1_n_10 ,\bram_addr_reg[9]_i_1_n_11 ,\bram_addr_reg[9]_i_1_n_12 ,\bram_addr_reg[9]_i_1_n_13 ,\bram_addr_reg[9]_i_1_n_14 ,\bram_addr_reg[9]_i_1_n_15 }),
        .S({bram_addr[7:1],\bram_addr[9]_i_2_n_0 }));
  FDRE \bram_din_reg[0] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[0]),
        .Q(bram_din[0]),
        .R(1'b0));
  FDRE \bram_din_reg[10] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[10]),
        .Q(bram_din[10]),
        .R(1'b0));
  FDRE \bram_din_reg[11] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[11]),
        .Q(bram_din[11]),
        .R(1'b0));
  FDRE \bram_din_reg[12] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[12]),
        .Q(bram_din[12]),
        .R(1'b0));
  FDRE \bram_din_reg[13] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[13]),
        .Q(bram_din[13]),
        .R(1'b0));
  FDRE \bram_din_reg[14] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[14]),
        .Q(bram_din[14]),
        .R(1'b0));
  FDRE \bram_din_reg[15] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[15]),
        .Q(bram_din[15]),
        .R(1'b0));
  FDRE \bram_din_reg[16] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[16]),
        .Q(bram_din[16]),
        .R(1'b0));
  FDRE \bram_din_reg[17] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[17]),
        .Q(bram_din[17]),
        .R(1'b0));
  FDRE \bram_din_reg[18] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[18]),
        .Q(bram_din[18]),
        .R(1'b0));
  FDRE \bram_din_reg[19] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[19]),
        .Q(bram_din[19]),
        .R(1'b0));
  FDRE \bram_din_reg[1] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[1]),
        .Q(bram_din[1]),
        .R(1'b0));
  FDRE \bram_din_reg[20] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[20]),
        .Q(bram_din[20]),
        .R(1'b0));
  FDRE \bram_din_reg[21] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[21]),
        .Q(bram_din[21]),
        .R(1'b0));
  FDRE \bram_din_reg[22] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[22]),
        .Q(bram_din[22]),
        .R(1'b0));
  FDRE \bram_din_reg[23] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[23]),
        .Q(bram_din[23]),
        .R(1'b0));
  FDRE \bram_din_reg[24] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[24]),
        .Q(bram_din[24]),
        .R(1'b0));
  FDRE \bram_din_reg[25] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[25]),
        .Q(bram_din[25]),
        .R(1'b0));
  FDRE \bram_din_reg[26] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[26]),
        .Q(bram_din[26]),
        .R(1'b0));
  FDRE \bram_din_reg[27] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[27]),
        .Q(bram_din[27]),
        .R(1'b0));
  FDRE \bram_din_reg[28] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[28]),
        .Q(bram_din[28]),
        .R(1'b0));
  FDRE \bram_din_reg[29] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[29]),
        .Q(bram_din[29]),
        .R(1'b0));
  FDRE \bram_din_reg[2] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[2]),
        .Q(bram_din[2]),
        .R(1'b0));
  FDRE \bram_din_reg[30] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[30]),
        .Q(bram_din[30]),
        .R(1'b0));
  FDRE \bram_din_reg[31] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[31]),
        .Q(bram_din[31]),
        .R(1'b0));
  FDRE \bram_din_reg[3] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[3]),
        .Q(bram_din[3]),
        .R(1'b0));
  FDRE \bram_din_reg[4] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[4]),
        .Q(bram_din[4]),
        .R(1'b0));
  FDRE \bram_din_reg[5] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[5]),
        .Q(bram_din[5]),
        .R(1'b0));
  FDRE \bram_din_reg[6] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[6]),
        .Q(bram_din[6]),
        .R(1'b0));
  FDRE \bram_din_reg[7] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[7]),
        .Q(bram_din[7]),
        .R(1'b0));
  FDRE \bram_din_reg[8] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[8]),
        .Q(bram_din[8]),
        .R(1'b0));
  FDRE \bram_din_reg[9] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream_r[9]),
        .Q(bram_din[9]),
        .R(1'b0));
  FDRE bram_en_reg
       (.C(daq_clk),
        .CE(1'b1),
        .D(state[1]),
        .Q(bram_we),
        .R(reset_r[2]));
  FDRE \daq_stream_r_reg[0] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[0]),
        .Q(daq_stream_r[0]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[10] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[10]),
        .Q(daq_stream_r[10]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[11] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[11]),
        .Q(daq_stream_r[11]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[12] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[12]),
        .Q(daq_stream_r[12]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[13] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[13]),
        .Q(daq_stream_r[13]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[14] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[14]),
        .Q(daq_stream_r[14]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[15] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[15]),
        .Q(daq_stream_r[15]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[16] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[16]),
        .Q(daq_stream_r[16]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[17] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[17]),
        .Q(daq_stream_r[17]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[18] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[18]),
        .Q(daq_stream_r[18]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[19] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[19]),
        .Q(daq_stream_r[19]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[1] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[1]),
        .Q(daq_stream_r[1]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[20] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[20]),
        .Q(daq_stream_r[20]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[21] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[21]),
        .Q(daq_stream_r[21]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[22] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[22]),
        .Q(daq_stream_r[22]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[23] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[23]),
        .Q(daq_stream_r[23]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[24] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[24]),
        .Q(daq_stream_r[24]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[25] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[25]),
        .Q(daq_stream_r[25]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[26] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[26]),
        .Q(daq_stream_r[26]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[27] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[27]),
        .Q(daq_stream_r[27]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[28] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[28]),
        .Q(daq_stream_r[28]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[29] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[29]),
        .Q(daq_stream_r[29]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[2] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[2]),
        .Q(daq_stream_r[2]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[30] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[30]),
        .Q(daq_stream_r[30]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[31] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[31]),
        .Q(daq_stream_r[31]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[3] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[3]),
        .Q(daq_stream_r[3]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[4] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[4]),
        .Q(daq_stream_r[4]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[5] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[5]),
        .Q(daq_stream_r[5]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[6] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[6]),
        .Q(daq_stream_r[6]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[7] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[7]),
        .Q(daq_stream_r[7]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[8] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[8]),
        .Q(daq_stream_r[8]),
        .R(1'b0));
  FDRE \daq_stream_r_reg[9] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(daq_stream[9]),
        .Q(daq_stream_r[9]),
        .R(1'b0));
  FDRE full_reg
       (.C(daq_clk),
        .CE(1'b1),
        .D(state[2]),
        .Q(full),
        .R(reset_r[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \rec_cnt[0]_i_1 
       (.I0(\rec_cnt_reg_n_0_[0] ),
        .O(\rec_cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \rec_cnt[17]_i_1 
       (.I0(reset_r[2]),
        .I1(trigger_r[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(\rec_cnt[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0062)) 
    \rec_cnt[17]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(trigger_r[2]),
        .I3(reset_r[2]),
        .O(\rec_cnt[17]_i_2_n_0 ));
  FDRE \rec_cnt_reg[0] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(\rec_cnt[0]_i_1_n_0 ),
        .Q(\rec_cnt_reg_n_0_[0] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[10] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[10]),
        .Q(\rec_cnt_reg_n_0_[10] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[11] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[11]),
        .Q(\rec_cnt_reg_n_0_[11] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[12] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[12]),
        .Q(\rec_cnt_reg_n_0_[12] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[13] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[13]),
        .Q(\rec_cnt_reg_n_0_[13] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[14] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[14]),
        .Q(\rec_cnt_reg_n_0_[14] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[15] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[15]),
        .Q(\rec_cnt_reg_n_0_[15] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[16] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[16]),
        .Q(\rec_cnt_reg_n_0_[16] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \rec_cnt_reg[16]_i_1 
       (.CI(\rec_cnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\rec_cnt_reg[16]_i_1_n_0 ,\rec_cnt_reg[16]_i_1_n_1 ,\rec_cnt_reg[16]_i_1_n_2 ,\rec_cnt_reg[16]_i_1_n_3 ,\rec_cnt_reg[16]_i_1_n_4 ,\rec_cnt_reg[16]_i_1_n_5 ,\rec_cnt_reg[16]_i_1_n_6 ,\rec_cnt_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in5[16:9]),
        .S({\rec_cnt_reg_n_0_[16] ,\rec_cnt_reg_n_0_[15] ,\rec_cnt_reg_n_0_[14] ,\rec_cnt_reg_n_0_[13] ,\rec_cnt_reg_n_0_[12] ,\rec_cnt_reg_n_0_[11] ,\rec_cnt_reg_n_0_[10] ,\rec_cnt_reg_n_0_[9] }));
  FDRE \rec_cnt_reg[17] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[17]),
        .Q(\rec_cnt_reg_n_0_[17] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \rec_cnt_reg[17]_i_3 
       (.CI(\rec_cnt_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_rec_cnt_reg[17]_i_3_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rec_cnt_reg[17]_i_3_O_UNCONNECTED [7:1],in5[17]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\rec_cnt_reg_n_0_[17] }));
  FDRE \rec_cnt_reg[1] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[1]),
        .Q(\rec_cnt_reg_n_0_[1] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[2] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[2]),
        .Q(\rec_cnt_reg_n_0_[2] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[3] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[3]),
        .Q(\rec_cnt_reg_n_0_[3] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[4] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[4]),
        .Q(\rec_cnt_reg_n_0_[4] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[5] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[5]),
        .Q(\rec_cnt_reg_n_0_[5] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[6] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[6]),
        .Q(\rec_cnt_reg_n_0_[6] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[7] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[7]),
        .Q(\rec_cnt_reg_n_0_[7] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  FDRE \rec_cnt_reg[8] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[8]),
        .Q(\rec_cnt_reg_n_0_[8] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \rec_cnt_reg[8]_i_1 
       (.CI(\rec_cnt_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({\rec_cnt_reg[8]_i_1_n_0 ,\rec_cnt_reg[8]_i_1_n_1 ,\rec_cnt_reg[8]_i_1_n_2 ,\rec_cnt_reg[8]_i_1_n_3 ,\rec_cnt_reg[8]_i_1_n_4 ,\rec_cnt_reg[8]_i_1_n_5 ,\rec_cnt_reg[8]_i_1_n_6 ,\rec_cnt_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in5[8:1]),
        .S({\rec_cnt_reg_n_0_[8] ,\rec_cnt_reg_n_0_[7] ,\rec_cnt_reg_n_0_[6] ,\rec_cnt_reg_n_0_[5] ,\rec_cnt_reg_n_0_[4] ,\rec_cnt_reg_n_0_[3] ,\rec_cnt_reg_n_0_[2] ,\rec_cnt_reg_n_0_[1] }));
  FDRE \rec_cnt_reg[9] 
       (.C(daq_clk),
        .CE(\rec_cnt[17]_i_2_n_0 ),
        .D(in5[9]),
        .Q(\rec_cnt_reg_n_0_[9] ),
        .R(\rec_cnt[17]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reset_r_reg[0] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(reset),
        .Q(reset_r[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reset_r_reg[1] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(reset_r[0]),
        .Q(reset_r[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \reset_r_reg[2] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(reset_r[1]),
        .Q(reset_r[2]),
        .R(1'b0));
  CARRY8 state1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_state1_carry_CO_UNCONNECTED[7:6],state1_carry_n_2,state1_carry_n_3,state1_carry_n_4,state1_carry_n_5,state1_carry_n_6,state1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,state1_carry_i_1_n_0,state1_carry_i_2_n_0,state1_carry_i_3_n_0,state1_carry_i_4_n_0,state1_carry_i_5_n_0,state1_carry_i_6_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_1
       (.I0(\rec_cnt_reg_n_0_[15] ),
        .I1(rec_time[15]),
        .I2(rec_time[17]),
        .I3(\rec_cnt_reg_n_0_[17] ),
        .I4(rec_time[16]),
        .I5(\rec_cnt_reg_n_0_[16] ),
        .O(state1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_2
       (.I0(\rec_cnt_reg_n_0_[12] ),
        .I1(rec_time[12]),
        .I2(rec_time[14]),
        .I3(\rec_cnt_reg_n_0_[14] ),
        .I4(rec_time[13]),
        .I5(\rec_cnt_reg_n_0_[13] ),
        .O(state1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_3
       (.I0(\rec_cnt_reg_n_0_[9] ),
        .I1(rec_time[9]),
        .I2(rec_time[11]),
        .I3(\rec_cnt_reg_n_0_[11] ),
        .I4(rec_time[10]),
        .I5(\rec_cnt_reg_n_0_[10] ),
        .O(state1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_4
       (.I0(\rec_cnt_reg_n_0_[6] ),
        .I1(rec_time[6]),
        .I2(rec_time[8]),
        .I3(\rec_cnt_reg_n_0_[8] ),
        .I4(rec_time[7]),
        .I5(\rec_cnt_reg_n_0_[7] ),
        .O(state1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_5
       (.I0(\rec_cnt_reg_n_0_[3] ),
        .I1(rec_time[3]),
        .I2(rec_time[5]),
        .I3(\rec_cnt_reg_n_0_[5] ),
        .I4(rec_time[4]),
        .I5(\rec_cnt_reg_n_0_[4] ),
        .O(state1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_6
       (.I0(\rec_cnt_reg_n_0_[0] ),
        .I1(rec_time[0]),
        .I2(rec_time[2]),
        .I3(\rec_cnt_reg_n_0_[2] ),
        .I4(rec_time[1]),
        .I5(\rec_cnt_reg_n_0_[1] ),
        .O(state1_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[0]_INST_0 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(state[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \state[1]_INST_0 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[2]_INST_0 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(state[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \trigger_r_reg[0] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(trigger),
        .Q(trigger_r[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \trigger_r_reg[1] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(trigger_r[0]),
        .Q(trigger_r[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \trigger_r_reg[2] 
       (.C(daq_clk),
        .CE(1'b1),
        .D(trigger_r[1]),
        .Q(trigger_r[2]),
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
