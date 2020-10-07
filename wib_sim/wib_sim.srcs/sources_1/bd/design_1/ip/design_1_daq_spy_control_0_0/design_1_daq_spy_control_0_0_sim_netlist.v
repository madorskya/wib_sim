// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Wed Oct  7 00:24:41 2020
// Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/madorsky/github/wib_sim/wib_sim/wib_sim.srcs/sources_1/bd/design_1/ip/design_1_daq_spy_control_0_0/design_1_daq_spy_control_0_0_sim_netlist.v
// Design      : design_1_daq_spy_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_daq_spy_control_0_0,daq_spy_control,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "daq_spy_control,Vivado 2020.1.1_AR73018" *) 
(* NotValidForBitStream *)
module design_1_daq_spy_control_0_0
   (daq_stream,
    daq_stream_k,
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
    full);
  input [31:0]daq_stream;
  input [3:0]daq_stream_k;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 daq_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME daq_clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_daq_clk_0, INSERT_VIP 0" *) input daq_clk;
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

  wire \<const0> ;
  wire [19:0]bram_addr;
  wire [31:0]bram_din;
  wire [3:3]\^bram_we ;
  wire daq_clk;
  wire [31:0]daq_stream;
  wire [3:0]daq_stream_k;
  wire full;
  wire reset;

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
       (.bram_addr(bram_addr),
        .bram_din(bram_din),
        .bram_we(\^bram_we ),
        .daq_clk(daq_clk),
        .daq_stream(daq_stream),
        .daq_stream_k(daq_stream_k),
        .full(full),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "daq_spy_control" *) 
module design_1_daq_spy_control_0_0_daq_spy_control
   (bram_din,
    bram_we,
    full,
    bram_addr,
    daq_stream,
    daq_clk,
    reset,
    daq_stream_k);
  output [31:0]bram_din;
  output [0:0]bram_we;
  output full;
  output [19:0]bram_addr;
  input [31:0]daq_stream;
  input daq_clk;
  input reset;
  input [3:0]daq_stream_k;

  wire \FSM_sequential_state[0]_i_10_n_0 ;
  wire \FSM_sequential_state[0]_i_11_n_0 ;
  wire \FSM_sequential_state[0]_i_12_n_0 ;
  wire \FSM_sequential_state[0]_i_13_n_0 ;
  wire \FSM_sequential_state[0]_i_14_n_0 ;
  wire \FSM_sequential_state[0]_i_15_n_0 ;
  wire \FSM_sequential_state[0]_i_16_n_0 ;
  wire \FSM_sequential_state[0]_i_17_n_0 ;
  wire \FSM_sequential_state[0]_i_18_n_0 ;
  wire \FSM_sequential_state[0]_i_19_n_0 ;
  wire \FSM_sequential_state[0]_i_20_n_0 ;
  wire \FSM_sequential_state[0]_i_21_n_0 ;
  wire \FSM_sequential_state[0]_i_25_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[0]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_22_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_22_n_1 ;
  wire \FSM_sequential_state_reg[0]_i_22_n_2 ;
  wire \FSM_sequential_state_reg[0]_i_22_n_3 ;
  wire \FSM_sequential_state_reg[0]_i_22_n_4 ;
  wire \FSM_sequential_state_reg[0]_i_22_n_5 ;
  wire \FSM_sequential_state_reg[0]_i_22_n_6 ;
  wire \FSM_sequential_state_reg[0]_i_22_n_7 ;
  wire \FSM_sequential_state_reg[0]_i_23_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_23_n_1 ;
  wire \FSM_sequential_state_reg[0]_i_23_n_2 ;
  wire \FSM_sequential_state_reg[0]_i_23_n_3 ;
  wire \FSM_sequential_state_reg[0]_i_23_n_4 ;
  wire \FSM_sequential_state_reg[0]_i_23_n_5 ;
  wire \FSM_sequential_state_reg[0]_i_23_n_6 ;
  wire \FSM_sequential_state_reg[0]_i_23_n_7 ;
  wire \FSM_sequential_state_reg[0]_i_24_n_6 ;
  wire \FSM_sequential_state_reg[0]_i_24_n_7 ;
  wire [19:0]bram_addr;
  wire \bram_addr[19]_i_1_n_0 ;
  wire \bram_addr_reg[15]_i_1_n_0 ;
  wire \bram_addr_reg[15]_i_1_n_1 ;
  wire \bram_addr_reg[15]_i_1_n_10 ;
  wire \bram_addr_reg[15]_i_1_n_11 ;
  wire \bram_addr_reg[15]_i_1_n_12 ;
  wire \bram_addr_reg[15]_i_1_n_13 ;
  wire \bram_addr_reg[15]_i_1_n_14 ;
  wire \bram_addr_reg[15]_i_1_n_15 ;
  wire \bram_addr_reg[15]_i_1_n_2 ;
  wire \bram_addr_reg[15]_i_1_n_3 ;
  wire \bram_addr_reg[15]_i_1_n_4 ;
  wire \bram_addr_reg[15]_i_1_n_5 ;
  wire \bram_addr_reg[15]_i_1_n_6 ;
  wire \bram_addr_reg[15]_i_1_n_7 ;
  wire \bram_addr_reg[15]_i_1_n_8 ;
  wire \bram_addr_reg[15]_i_1_n_9 ;
  wire \bram_addr_reg[19]_i_2_n_12 ;
  wire \bram_addr_reg[19]_i_2_n_13 ;
  wire \bram_addr_reg[19]_i_2_n_14 ;
  wire \bram_addr_reg[19]_i_2_n_15 ;
  wire \bram_addr_reg[19]_i_2_n_5 ;
  wire \bram_addr_reg[19]_i_2_n_6 ;
  wire \bram_addr_reg[19]_i_2_n_7 ;
  wire \bram_addr_reg[7]_i_1_n_0 ;
  wire \bram_addr_reg[7]_i_1_n_1 ;
  wire \bram_addr_reg[7]_i_1_n_10 ;
  wire \bram_addr_reg[7]_i_1_n_11 ;
  wire \bram_addr_reg[7]_i_1_n_12 ;
  wire \bram_addr_reg[7]_i_1_n_13 ;
  wire \bram_addr_reg[7]_i_1_n_14 ;
  wire \bram_addr_reg[7]_i_1_n_15 ;
  wire \bram_addr_reg[7]_i_1_n_2 ;
  wire \bram_addr_reg[7]_i_1_n_3 ;
  wire \bram_addr_reg[7]_i_1_n_4 ;
  wire \bram_addr_reg[7]_i_1_n_5 ;
  wire \bram_addr_reg[7]_i_1_n_6 ;
  wire \bram_addr_reg[7]_i_1_n_7 ;
  wire \bram_addr_reg[7]_i_1_n_8 ;
  wire \bram_addr_reg[7]_i_1_n_9 ;
  wire [31:0]bram_din;
  wire [0:0]bram_we;
  wire daq_clk;
  wire [31:0]daq_stream;
  wire [3:0]daq_stream_k;
  wire [31:0]daq_stream_r;
  wire full;
  wire full_i_1_n_0;
  wire [19:3]next_frame_addr;
  wire next_frame_addr_carry__0_n_0;
  wire next_frame_addr_carry__0_n_1;
  wire next_frame_addr_carry__0_n_2;
  wire next_frame_addr_carry__0_n_3;
  wire next_frame_addr_carry__0_n_4;
  wire next_frame_addr_carry__0_n_5;
  wire next_frame_addr_carry__0_n_6;
  wire next_frame_addr_carry__0_n_7;
  wire next_frame_addr_carry__1_n_7;
  wire next_frame_addr_carry_i_1_n_0;
  wire next_frame_addr_carry_i_2_n_0;
  wire next_frame_addr_carry_i_3_n_0;
  wire next_frame_addr_carry_i_4_n_0;
  wire next_frame_addr_carry_n_0;
  wire next_frame_addr_carry_n_1;
  wire next_frame_addr_carry_n_2;
  wire next_frame_addr_carry_n_3;
  wire next_frame_addr_carry_n_4;
  wire next_frame_addr_carry_n_5;
  wire next_frame_addr_carry_n_6;
  wire next_frame_addr_carry_n_7;
  wire [19:0]p_0_in;
  wire reset;
  (* async_reg = "true" *) wire [2:0]reset_r;
  wire [1:0]state;
  wire state1__15;
  wire [1:0]state__0;
  wire [7:2]\NLW_FSM_sequential_state_reg[0]_i_24_CO_UNCONNECTED ;
  wire [7:3]\NLW_FSM_sequential_state_reg[0]_i_24_O_UNCONNECTED ;
  wire [7:3]\NLW_bram_addr_reg[19]_i_2_CO_UNCONNECTED ;
  wire [7:4]\NLW_bram_addr_reg[19]_i_2_O_UNCONNECTED ;
  wire [0:0]NLW_next_frame_addr_carry_O_UNCONNECTED;
  wire [7:1]NLW_next_frame_addr_carry__1_CO_UNCONNECTED;
  wire [7:2]NLW_next_frame_addr_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0808080808FF0808)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\bram_addr[19]_i_1_n_0 ),
        .I2(\FSM_sequential_state[0]_i_3_n_0 ),
        .I3(\FSM_sequential_state[0]_i_4_n_0 ),
        .I4(\FSM_sequential_state[0]_i_5_n_0 ),
        .I5(\FSM_sequential_state[0]_i_6_n_0 ),
        .O(state__0[0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_state[0]_i_10 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[4]),
        .I3(p_0_in[3]),
        .O(\FSM_sequential_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \FSM_sequential_state[0]_i_11 
       (.I0(p_0_in[5]),
        .I1(p_0_in[6]),
        .I2(p_0_in[7]),
        .I3(p_0_in[8]),
        .I4(bram_addr[0]),
        .I5(p_0_in[9]),
        .O(\FSM_sequential_state[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_state[0]_i_12 
       (.I0(p_0_in[11]),
        .I1(p_0_in[10]),
        .I2(p_0_in[13]),
        .I3(p_0_in[12]),
        .O(\FSM_sequential_state[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[0]_i_13 
       (.I0(p_0_in[14]),
        .I1(p_0_in[15]),
        .I2(p_0_in[16]),
        .I3(p_0_in[17]),
        .I4(p_0_in[19]),
        .I5(p_0_in[18]),
        .O(\FSM_sequential_state[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_state[0]_i_14 
       (.I0(next_frame_addr[4]),
        .I1(next_frame_addr[3]),
        .I2(next_frame_addr[6]),
        .I3(next_frame_addr[5]),
        .O(\FSM_sequential_state[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[0]_i_15 
       (.I0(next_frame_addr[13]),
        .I1(next_frame_addr[12]),
        .I2(next_frame_addr[11]),
        .I3(next_frame_addr[10]),
        .O(\FSM_sequential_state[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[0]_i_16 
       (.I0(next_frame_addr[14]),
        .I1(next_frame_addr[15]),
        .I2(next_frame_addr[16]),
        .I3(next_frame_addr[17]),
        .I4(next_frame_addr[19]),
        .I5(next_frame_addr[18]),
        .O(\FSM_sequential_state[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \FSM_sequential_state[0]_i_17 
       (.I0(daq_stream[2]),
        .I1(daq_stream[3]),
        .I2(daq_stream[4]),
        .I3(daq_stream[5]),
        .I4(daq_stream[7]),
        .I5(daq_stream[6]),
        .O(\FSM_sequential_state[0]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_sequential_state[0]_i_18 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_19 
       (.I0(daq_stream[20]),
        .I1(daq_stream[21]),
        .I2(daq_stream[22]),
        .I3(daq_stream[23]),
        .O(\FSM_sequential_state[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[0]_i_7_n_0 ),
        .I1(state1__15),
        .I2(\FSM_sequential_state[0]_i_9_n_0 ),
        .I3(\FSM_sequential_state[0]_i_6_n_0 ),
        .I4(daq_stream[1]),
        .I5(daq_stream[6]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[0]_i_20 
       (.I0(daq_stream[27]),
        .I1(daq_stream[26]),
        .I2(daq_stream[25]),
        .I3(daq_stream[24]),
        .I4(\FSM_sequential_state[0]_i_25_n_0 ),
        .O(\FSM_sequential_state[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_21 
       (.I0(daq_stream[12]),
        .I1(daq_stream[13]),
        .I2(daq_stream[14]),
        .I3(daq_stream[15]),
        .O(\FSM_sequential_state[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_25 
       (.I0(daq_stream[28]),
        .I1(daq_stream[29]),
        .I2(daq_stream[31]),
        .I3(daq_stream[30]),
        .O(\FSM_sequential_state[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\FSM_sequential_state[0]_i_10_n_0 ),
        .I1(\FSM_sequential_state[0]_i_11_n_0 ),
        .I2(\FSM_sequential_state[0]_i_12_n_0 ),
        .I3(\FSM_sequential_state[0]_i_13_n_0 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\FSM_sequential_state[0]_i_14_n_0 ),
        .I1(next_frame_addr[7]),
        .I2(next_frame_addr[8]),
        .I3(next_frame_addr[9]),
        .I4(\FSM_sequential_state[0]_i_15_n_0 ),
        .I5(\FSM_sequential_state[0]_i_16_n_0 ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\FSM_sequential_state[0]_i_17_n_0 ),
        .I1(state1__15),
        .I2(daq_stream[0]),
        .I3(daq_stream[1]),
        .I4(\FSM_sequential_state[0]_i_18_n_0 ),
        .I5(\FSM_sequential_state[0]_i_7_n_0 ),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(\FSM_sequential_state[0]_i_19_n_0 ),
        .I1(daq_stream[16]),
        .I2(daq_stream[17]),
        .I3(daq_stream[18]),
        .I4(daq_stream[19]),
        .I5(\FSM_sequential_state[0]_i_20_n_0 ),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(daq_stream[11]),
        .I1(daq_stream[10]),
        .I2(daq_stream[9]),
        .I3(daq_stream[8]),
        .I4(\FSM_sequential_state[0]_i_21_n_0 ),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_state[0]_i_8 
       (.I0(daq_stream_k[1]),
        .I1(daq_stream_k[0]),
        .I2(daq_stream_k[3]),
        .I3(daq_stream_k[2]),
        .O(state1__15));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \FSM_sequential_state[0]_i_9 
       (.I0(daq_stream[2]),
        .I1(daq_stream[3]),
        .I2(daq_stream[0]),
        .I3(daq_stream[7]),
        .I4(daq_stream[5]),
        .I5(daq_stream[4]),
        .O(\FSM_sequential_state[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \FSM_sequential_state[1]_inv_i_1 
       (.I0(\FSM_sequential_state[0]_i_3_n_0 ),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .I2(state[0]),
        .O(state__0[1]));
  (* FSM_ENCODED_STATES = "FULL:10,IDLE:00,RECORD:01" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(daq_clk),
        .CE(state[1]),
        .D(state__0[0]),
        .Q(state[0]),
        .R(reset_r[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \FSM_sequential_state_reg[0]_i_22 
       (.CI(bram_addr[0]),
        .CI_TOP(1'b0),
        .CO({\FSM_sequential_state_reg[0]_i_22_n_0 ,\FSM_sequential_state_reg[0]_i_22_n_1 ,\FSM_sequential_state_reg[0]_i_22_n_2 ,\FSM_sequential_state_reg[0]_i_22_n_3 ,\FSM_sequential_state_reg[0]_i_22_n_4 ,\FSM_sequential_state_reg[0]_i_22_n_5 ,\FSM_sequential_state_reg[0]_i_22_n_6 ,\FSM_sequential_state_reg[0]_i_22_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:1]),
        .S(bram_addr[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \FSM_sequential_state_reg[0]_i_23 
       (.CI(\FSM_sequential_state_reg[0]_i_22_n_0 ),
        .CI_TOP(1'b0),
        .CO({\FSM_sequential_state_reg[0]_i_23_n_0 ,\FSM_sequential_state_reg[0]_i_23_n_1 ,\FSM_sequential_state_reg[0]_i_23_n_2 ,\FSM_sequential_state_reg[0]_i_23_n_3 ,\FSM_sequential_state_reg[0]_i_23_n_4 ,\FSM_sequential_state_reg[0]_i_23_n_5 ,\FSM_sequential_state_reg[0]_i_23_n_6 ,\FSM_sequential_state_reg[0]_i_23_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[16:9]),
        .S(bram_addr[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \FSM_sequential_state_reg[0]_i_24 
       (.CI(\FSM_sequential_state_reg[0]_i_23_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_FSM_sequential_state_reg[0]_i_24_CO_UNCONNECTED [7:2],\FSM_sequential_state_reg[0]_i_24_n_6 ,\FSM_sequential_state_reg[0]_i_24_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_FSM_sequential_state_reg[0]_i_24_O_UNCONNECTED [7:3],p_0_in[19:17]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,bram_addr[19:17]}));
  (* FSM_ENCODED_STATES = "FULL:10,IDLE:00,RECORD:01" *) 
  FDSE \FSM_sequential_state_reg[1]_inv 
       (.C(daq_clk),
        .CE(state[1]),
        .D(state__0[1]),
        .Q(state[1]),
        .S(reset_r[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[19]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\bram_addr[19]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[7]_i_2 
       (.I0(bram_addr[0]),
        .O(p_0_in[0]));
  FDRE \bram_addr_reg[0] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[7]_i_1_n_15 ),
        .Q(bram_addr[0]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[10] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[15]_i_1_n_13 ),
        .Q(bram_addr[10]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[11] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[15]_i_1_n_12 ),
        .Q(bram_addr[11]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[12] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[15]_i_1_n_11 ),
        .Q(bram_addr[12]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[13] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[15]_i_1_n_10 ),
        .Q(bram_addr[13]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[14] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[15]_i_1_n_9 ),
        .Q(bram_addr[14]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[15] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[15]_i_1_n_8 ),
        .Q(bram_addr[15]),
        .R(reset_r[2]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addr_reg[15]_i_1 
       (.CI(\bram_addr_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\bram_addr_reg[15]_i_1_n_0 ,\bram_addr_reg[15]_i_1_n_1 ,\bram_addr_reg[15]_i_1_n_2 ,\bram_addr_reg[15]_i_1_n_3 ,\bram_addr_reg[15]_i_1_n_4 ,\bram_addr_reg[15]_i_1_n_5 ,\bram_addr_reg[15]_i_1_n_6 ,\bram_addr_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[15]_i_1_n_8 ,\bram_addr_reg[15]_i_1_n_9 ,\bram_addr_reg[15]_i_1_n_10 ,\bram_addr_reg[15]_i_1_n_11 ,\bram_addr_reg[15]_i_1_n_12 ,\bram_addr_reg[15]_i_1_n_13 ,\bram_addr_reg[15]_i_1_n_14 ,\bram_addr_reg[15]_i_1_n_15 }),
        .S(bram_addr[15:8]));
  FDRE \bram_addr_reg[16] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[19]_i_2_n_15 ),
        .Q(bram_addr[16]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[17] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[19]_i_2_n_14 ),
        .Q(bram_addr[17]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[18] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[19]_i_2_n_13 ),
        .Q(bram_addr[18]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[19] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[19]_i_2_n_12 ),
        .Q(bram_addr[19]),
        .R(reset_r[2]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addr_reg[19]_i_2 
       (.CI(\bram_addr_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_bram_addr_reg[19]_i_2_CO_UNCONNECTED [7:3],\bram_addr_reg[19]_i_2_n_5 ,\bram_addr_reg[19]_i_2_n_6 ,\bram_addr_reg[19]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_addr_reg[19]_i_2_O_UNCONNECTED [7:4],\bram_addr_reg[19]_i_2_n_12 ,\bram_addr_reg[19]_i_2_n_13 ,\bram_addr_reg[19]_i_2_n_14 ,\bram_addr_reg[19]_i_2_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,bram_addr[19:16]}));
  FDRE \bram_addr_reg[1] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[7]_i_1_n_14 ),
        .Q(bram_addr[1]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[2] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[7]_i_1_n_13 ),
        .Q(bram_addr[2]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[3] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[7]_i_1_n_12 ),
        .Q(bram_addr[3]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[4] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[7]_i_1_n_11 ),
        .Q(bram_addr[4]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[5] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[7]_i_1_n_10 ),
        .Q(bram_addr[5]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[6] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[7]_i_1_n_9 ),
        .Q(bram_addr[6]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[7] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[7]_i_1_n_8 ),
        .Q(bram_addr[7]),
        .R(reset_r[2]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addr_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\bram_addr_reg[7]_i_1_n_0 ,\bram_addr_reg[7]_i_1_n_1 ,\bram_addr_reg[7]_i_1_n_2 ,\bram_addr_reg[7]_i_1_n_3 ,\bram_addr_reg[7]_i_1_n_4 ,\bram_addr_reg[7]_i_1_n_5 ,\bram_addr_reg[7]_i_1_n_6 ,\bram_addr_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\bram_addr_reg[7]_i_1_n_8 ,\bram_addr_reg[7]_i_1_n_9 ,\bram_addr_reg[7]_i_1_n_10 ,\bram_addr_reg[7]_i_1_n_11 ,\bram_addr_reg[7]_i_1_n_12 ,\bram_addr_reg[7]_i_1_n_13 ,\bram_addr_reg[7]_i_1_n_14 ,\bram_addr_reg[7]_i_1_n_15 }),
        .S({bram_addr[7:1],p_0_in[0]}));
  FDRE \bram_addr_reg[8] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[15]_i_1_n_15 ),
        .Q(bram_addr[8]),
        .R(reset_r[2]));
  FDRE \bram_addr_reg[9] 
       (.C(daq_clk),
        .CE(\bram_addr[19]_i_1_n_0 ),
        .D(\bram_addr_reg[15]_i_1_n_14 ),
        .Q(bram_addr[9]),
        .R(reset_r[2]));
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
        .D(\bram_addr[19]_i_1_n_0 ),
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
  LUT2 #(
    .INIT(4'h1)) 
    full_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .O(full_i_1_n_0));
  FDRE full_reg
       (.C(daq_clk),
        .CE(1'b1),
        .D(full_i_1_n_0),
        .Q(full),
        .R(reset_r[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 next_frame_addr_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({next_frame_addr_carry_n_0,next_frame_addr_carry_n_1,next_frame_addr_carry_n_2,next_frame_addr_carry_n_3,next_frame_addr_carry_n_4,next_frame_addr_carry_n_5,next_frame_addr_carry_n_6,next_frame_addr_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,bram_addr[6:3],1'b0}),
        .O({next_frame_addr[9:3],NLW_next_frame_addr_carry_O_UNCONNECTED[0]}),
        .S({bram_addr[9:7],next_frame_addr_carry_i_1_n_0,next_frame_addr_carry_i_2_n_0,next_frame_addr_carry_i_3_n_0,next_frame_addr_carry_i_4_n_0,bram_addr[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 next_frame_addr_carry__0
       (.CI(next_frame_addr_carry_n_0),
        .CI_TOP(1'b0),
        .CO({next_frame_addr_carry__0_n_0,next_frame_addr_carry__0_n_1,next_frame_addr_carry__0_n_2,next_frame_addr_carry__0_n_3,next_frame_addr_carry__0_n_4,next_frame_addr_carry__0_n_5,next_frame_addr_carry__0_n_6,next_frame_addr_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(next_frame_addr[17:10]),
        .S(bram_addr[17:10]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 next_frame_addr_carry__1
       (.CI(next_frame_addr_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_next_frame_addr_carry__1_CO_UNCONNECTED[7:1],next_frame_addr_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_next_frame_addr_carry__1_O_UNCONNECTED[7:2],next_frame_addr[19:18]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,bram_addr[19:18]}));
  LUT1 #(
    .INIT(2'h1)) 
    next_frame_addr_carry_i_1
       (.I0(bram_addr[6]),
        .O(next_frame_addr_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_frame_addr_carry_i_2
       (.I0(bram_addr[5]),
        .O(next_frame_addr_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_frame_addr_carry_i_3
       (.I0(bram_addr[4]),
        .O(next_frame_addr_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_frame_addr_carry_i_4
       (.I0(bram_addr[3]),
        .O(next_frame_addr_carry_i_4_n_0));
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
