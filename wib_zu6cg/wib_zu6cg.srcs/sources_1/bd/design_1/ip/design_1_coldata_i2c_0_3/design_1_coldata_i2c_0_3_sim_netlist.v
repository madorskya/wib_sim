// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Jun 14 17:48:15 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_coldata_i2c_0_3 -prefix
//               design_1_coldata_i2c_0_3_ design_1_coldata_i2c_0_0_sim_netlist.v
// Design      : design_1_coldata_i2c_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_coldata_i2c_0_3_coldata_i2c_v1_0
   (sda_in_out,
    sda_out_p,
    sda_out_n,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    scl,
    scl_out,
    sda_out_out,
    s00_axi_rvalid,
    s00_axi_bvalid,
    clk62p5,
    sda_in_p,
    sda_in_n,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output sda_in_out;
  output sda_out_p;
  output sda_out_n;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output scl;
  output scl_out;
  output sda_out_out;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input clk62p5;
  input sda_in_p;
  input sda_in_n;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state[1]_i_9_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire [4:0]bit_count;
  wire \bit_count[4]_i_1_n_0 ;
  wire \bit_count[4]_i_3_n_0 ;
  wire \bit_count[4]_i_4_n_0 ;
  wire \bit_count[4]_i_5_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire \bit_count_reg_n_0_[3] ;
  wire \bit_count_reg_n_0_[4] ;
  wire [8:0]bit_phase;
  wire \bit_phase[0]_i_2_n_0 ;
  wire \bit_phase[0]_i_3_n_0 ;
  wire \bit_phase[0]_i_4_n_0 ;
  wire \bit_phase[1]_i_2_n_0 ;
  wire \bit_phase[1]_i_3_n_0 ;
  wire \bit_phase[1]_i_4_n_0 ;
  wire \bit_phase[1]_i_5_n_0 ;
  wire \bit_phase[1]_i_6_n_0 ;
  wire \bit_phase[1]_i_7_n_0 ;
  wire \bit_phase[2]_i_2_n_0 ;
  wire \bit_phase[2]_i_3_n_0 ;
  wire \bit_phase[2]_i_4_n_0 ;
  wire \bit_phase[2]_i_5_n_0 ;
  wire \bit_phase[2]_i_6_n_0 ;
  wire \bit_phase[2]_i_7_n_0 ;
  wire \bit_phase[3]_i_2_n_0 ;
  wire \bit_phase[3]_i_3_n_0 ;
  wire \bit_phase[3]_i_4_n_0 ;
  wire \bit_phase[3]_i_5_n_0 ;
  wire \bit_phase[3]_i_6_n_0 ;
  wire \bit_phase[3]_i_7_n_0 ;
  wire \bit_phase[4]_i_2_n_0 ;
  wire \bit_phase[4]_i_3_n_0 ;
  wire \bit_phase[4]_i_4_n_0 ;
  wire \bit_phase[4]_i_5_n_0 ;
  wire \bit_phase[4]_i_6_n_0 ;
  wire \bit_phase[5]_i_10_n_0 ;
  wire \bit_phase[5]_i_11_n_0 ;
  wire \bit_phase[5]_i_12_n_0 ;
  wire \bit_phase[5]_i_2_n_0 ;
  wire \bit_phase[5]_i_3_n_0 ;
  wire \bit_phase[5]_i_4_n_0 ;
  wire \bit_phase[5]_i_5_n_0 ;
  wire \bit_phase[5]_i_6_n_0 ;
  wire \bit_phase[5]_i_7_n_0 ;
  wire \bit_phase[5]_i_8_n_0 ;
  wire \bit_phase[5]_i_9_n_0 ;
  wire \bit_phase[6]_i_2_n_0 ;
  wire \bit_phase[6]_i_3_n_0 ;
  wire \bit_phase[6]_i_4_n_0 ;
  wire \bit_phase[7]_i_2_n_0 ;
  wire \bit_phase[7]_i_3_n_0 ;
  wire \bit_phase[7]_i_4_n_0 ;
  wire \bit_phase[8]_i_1_n_0 ;
  wire \bit_phase[8]_i_3_n_0 ;
  wire \bit_phase[8]_i_4_n_0 ;
  wire \bit_phase_reg_n_0_[0] ;
  wire \bit_phase_reg_n_0_[1] ;
  wire \bit_phase_reg_n_0_[2] ;
  wire \bit_phase_reg_n_0_[3] ;
  wire \bit_phase_reg_n_0_[4] ;
  wire \bit_phase_reg_n_0_[5] ;
  wire \bit_phase_reg_n_0_[6] ;
  wire \bit_phase_reg_n_0_[7] ;
  wire \bit_phase_reg_n_0_[8] ;
  wire clk62p5;
  wire coldata_i2c_v1_0_S00_AXI_inst_n_1;
  wire [7:0]lat_cnt;
  wire [7:2]lat_cnt0;
  wire \lat_cnt[0]_i_1_n_0 ;
  wire \lat_cnt[1]_i_1_n_0 ;
  wire \lat_cnt[7]_i_1_n_0 ;
  wire \lat_cnt[7]_i_3_n_0 ;
  wire [3:2]lb_resp;
  wire \lb_resp_reg[1]_srl2_n_0 ;
  wire \lb_stim_reg[2]_srl3_n_0 ;
  wire \lb_stim_reg_n_0_[3] ;
  wire lb_stim_sda_out;
  wire [1:0]p_0_in;
  wire [0:0]p_2_out;
  wire \rd_reg[1][26]_i_1_n_0 ;
  wire \rd_reg[1][26]_i_2_n_0 ;
  wire \rd_reg[1][26]_i_3_n_0 ;
  wire \rd_reg[1][26]_i_4_n_0 ;
  wire \rd_reg[2][1]_i_1_n_0 ;
  wire \rd_reg[2][7]_i_1_n_0 ;
  wire [26:0]\rd_reg_reg[1] ;
  wire [7:0]\rd_reg_reg[2] ;
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
  wire scl_i_i_2_n_0;
  wire scl_i_i_3_n_0;
  wire scl_i_i_4_n_0;
  wire scl_i_i_5_n_0;
  wire scl_out;
  wire sda_in;
  wire sda_in_n;
  wire sda_in_out;
  wire sda_in_p;
  wire [26:0]sda_in_sh;
  wire \sda_in_sh[26]_i_1_n_0 ;
  wire \sda_in_sh[26]_i_2_n_0 ;
  wire \sda_in_sh[26]_i_3_n_0 ;
  wire sda_out_i;
  wire sda_out_i_1_n_0;
  wire sda_out_n;
  wire sda_out_out;
  wire sda_out_p;
  wire sda_out_reg_n_0;
  wire [26:0]sda_out_sh;
  wire \sda_out_sh_reg_n_0_[0] ;
  wire \sda_out_sh_reg_n_0_[10] ;
  wire \sda_out_sh_reg_n_0_[11] ;
  wire \sda_out_sh_reg_n_0_[12] ;
  wire \sda_out_sh_reg_n_0_[13] ;
  wire \sda_out_sh_reg_n_0_[14] ;
  wire \sda_out_sh_reg_n_0_[15] ;
  wire \sda_out_sh_reg_n_0_[16] ;
  wire \sda_out_sh_reg_n_0_[17] ;
  wire \sda_out_sh_reg_n_0_[18] ;
  wire \sda_out_sh_reg_n_0_[19] ;
  wire \sda_out_sh_reg_n_0_[1] ;
  wire \sda_out_sh_reg_n_0_[20] ;
  wire \sda_out_sh_reg_n_0_[21] ;
  wire \sda_out_sh_reg_n_0_[22] ;
  wire \sda_out_sh_reg_n_0_[23] ;
  wire \sda_out_sh_reg_n_0_[24] ;
  wire \sda_out_sh_reg_n_0_[25] ;
  wire \sda_out_sh_reg_n_0_[26] ;
  wire \sda_out_sh_reg_n_0_[2] ;
  wire \sda_out_sh_reg_n_0_[3] ;
  wire \sda_out_sh_reg_n_0_[4] ;
  wire \sda_out_sh_reg_n_0_[5] ;
  wire \sda_out_sh_reg_n_0_[6] ;
  wire \sda_out_sh_reg_n_0_[7] ;
  wire \sda_out_sh_reg_n_0_[8] ;
  wire \sda_out_sh_reg_n_0_[9] ;
  wire [2:0]state;
  wire [2:0]state__0;
  wire \tx_start_r_reg_n_0_[0] ;
  wire \tx_start_r_reg_n_0_[1] ;
  wire [0:0]wr_reg0;

  LUT6 #(
    .INIT(64'hEEEEFEEEEEEEEEEE)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state[0]_i_4_n_0 ),
        .I3(\FSM_sequential_state[0]_i_5_n_0 ),
        .I4(state[2]),
        .I5(state[1]),
        .O(state__0[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAEA)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\bit_phase[1]_i_4_n_0 ),
        .I1(\sda_in_sh[26]_i_2_n_0 ),
        .I2(state[0]),
        .I3(\bit_phase_reg_n_0_[8] ),
        .I4(\bit_phase_reg_n_0_[7] ),
        .I5(\bit_phase_reg_n_0_[5] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0500050305000500)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00020900)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\bit_count_reg_n_0_[4] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\bit_count_reg_n_0_[3] ),
        .I4(\bit_count_reg_n_0_[0] ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFE000E000)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\bit_phase_reg_n_0_[1] ),
        .I1(\FSM_sequential_state[2]_i_6_n_0 ),
        .I2(\bit_phase_reg_n_0_[5] ),
        .I3(\bit_phase_reg_n_0_[4] ),
        .I4(state[0]),
        .I5(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_state[1]_i_5_n_0 ),
        .I4(\bit_phase_reg_n_0_[6] ),
        .I5(\FSM_sequential_state[1]_i_6_n_0 ),
        .O(state__0[1]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFEFEFEFE)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\bit_count[4]_i_3_n_0 ),
        .I1(scl_i_i_5_n_0),
        .I2(\FSM_sequential_state[1]_i_7_n_0 ),
        .I3(\FSM_sequential_state[2]_i_4_n_0 ),
        .I4(state[0]),
        .I5(\sda_in_sh[26]_i_2_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAAAAAAA)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state[1]_i_8_n_0 ),
        .I1(\FSM_sequential_state[2]_i_7_n_0 ),
        .I2(\FSM_sequential_state[1]_i_9_n_0 ),
        .I3(\bit_phase_reg_n_0_[5] ),
        .I4(\bit_phase_reg_n_0_[6] ),
        .I5(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\bit_phase_reg_n_0_[5] ),
        .I1(\bit_phase_reg_n_0_[7] ),
        .I2(\bit_phase_reg_n_0_[8] ),
        .I3(state[2]),
        .I4(state[0]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\bit_phase_reg_n_0_[4] ),
        .I1(\bit_phase_reg_n_0_[3] ),
        .I2(\bit_phase_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h55400000)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(\bit_phase_reg_n_0_[7] ),
        .I1(\bit_phase_reg_n_0_[6] ),
        .I2(\bit_phase_reg_n_0_[5] ),
        .I3(\bit_phase_reg_n_0_[8] ),
        .I4(\bit_phase[4]_i_4_n_0 ),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000000000000)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(\bit_phase_reg_n_0_[5] ),
        .I1(\bit_phase_reg_n_0_[4] ),
        .I2(\bit_phase_reg_n_0_[6] ),
        .I3(\bit_phase_reg_n_0_[8] ),
        .I4(\bit_phase[4]_i_4_n_0 ),
        .I5(\bit_phase_reg_n_0_[7] ),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h57FF000000000000)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(\bit_count_reg_n_0_[4] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\bit_count_reg_n_0_[3] ),
        .I4(\FSM_sequential_state[1]_i_9_n_0 ),
        .I5(\bit_phase_reg_n_0_[7] ),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[1]_i_9 
       (.I0(state[0]),
        .I1(state[2]),
        .O(\FSM_sequential_state[1]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFF0F0FDFDF0F0)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(state[2]),
        .I5(\FSM_sequential_state[2]_i_7_n_0 ),
        .O(state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\bit_phase_reg_n_0_[8] ),
        .I1(\bit_phase_reg_n_0_[7] ),
        .I2(\bit_phase_reg_n_0_[6] ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\bit_phase_reg_n_0_[8] ),
        .I1(\bit_phase_reg_n_0_[7] ),
        .I2(\bit_phase_reg_n_0_[5] ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8080800000000000)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\rd_reg[1][26]_i_2_n_0 ),
        .I1(\bit_count_reg_n_0_[4] ),
        .I2(\bit_count_reg_n_0_[3] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[1] ),
        .I5(\rd_reg[1][26]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\bit_phase_reg_n_0_[2] ),
        .I1(\bit_phase_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\bit_phase_reg_n_0_[8] ),
        .I1(\bit_phase_reg_n_0_[7] ),
        .I2(\bit_phase_reg_n_0_[4] ),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "ST_STRT:001,ST_ACK:011,ST_TX:010,ST_STOP:100,ST_IDLE:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk62p5),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .D(state__0[0]),
        .Q(state[0]),
        .R(coldata_i2c_v1_0_S00_AXI_inst_n_1));
  (* FSM_ENCODED_STATES = "ST_STRT:001,ST_ACK:011,ST_TX:010,ST_STOP:100,ST_IDLE:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk62p5),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .D(state__0[1]),
        .Q(state[1]),
        .R(coldata_i2c_v1_0_S00_AXI_inst_n_1));
  (* FSM_ENCODED_STATES = "ST_STRT:001,ST_ACK:011,ST_TX:010,ST_STOP:100,ST_IDLE:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk62p5),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .D(state__0[2]),
        .Q(state[2]),
        .R(coldata_i2c_v1_0_S00_AXI_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bit_count[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(\bit_count_reg_n_0_[0] ),
        .O(bit_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \bit_count[1]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\bit_count_reg_n_0_[1] ),
        .O(bit_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h07000800)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\bit_count_reg_n_0_[2] ),
        .O(bit_count[2]));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \bit_count[3]_i_1 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\bit_count_reg_n_0_[3] ),
        .O(bit_count[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0E0A0A0)) 
    \bit_count[4]_i_1 
       (.I0(\bit_count[4]_i_3_n_0 ),
        .I1(\sda_in_sh[26]_i_2_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(state[0]),
        .I4(\bit_count[4]_i_4_n_0 ),
        .I5(\bit_count[4]_i_5_n_0 ),
        .O(\bit_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \bit_count[4]_i_2 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[3] ),
        .I4(\sda_in_sh[26]_i_2_n_0 ),
        .I5(\bit_count_reg_n_0_[4] ),
        .O(bit_count[4]));
  LUT6 #(
    .INIT(64'h0000FEEE00000000)) 
    \bit_count[4]_i_3 
       (.I0(\bit_phase_reg_n_0_[7] ),
        .I1(\bit_phase_reg_n_0_[8] ),
        .I2(\bit_phase_reg_n_0_[5] ),
        .I3(\bit_phase_reg_n_0_[6] ),
        .I4(state[1]),
        .I5(\FSM_sequential_state[1]_i_9_n_0 ),
        .O(\bit_count[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888880)) 
    \bit_count[4]_i_4 
       (.I0(\bit_phase_reg_n_0_[4] ),
        .I1(\bit_phase_reg_n_0_[5] ),
        .I2(\bit_phase_reg_n_0_[3] ),
        .I3(\bit_phase_reg_n_0_[2] ),
        .I4(\bit_phase_reg_n_0_[1] ),
        .I5(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(\bit_count[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \bit_count[4]_i_5 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_sequential_state[1]_i_5_n_0 ),
        .I2(\bit_phase_reg_n_0_[6] ),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\bit_count[4]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(bit_count[0]),
        .Q(\bit_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(bit_count[1]),
        .Q(\bit_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(bit_count[2]),
        .Q(\bit_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(bit_count[3]),
        .Q(\bit_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[4] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(bit_count[4]),
        .Q(\bit_count_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF888F8888)) 
    \bit_phase[0]_i_1 
       (.I0(\bit_phase[0]_i_2_n_0 ),
        .I1(\rd_reg[1][26]_i_4_n_0 ),
        .I2(\bit_phase_reg_n_0_[0] ),
        .I3(\FSM_sequential_state[1]_i_5_n_0 ),
        .I4(\FSM_sequential_state[1]_i_4_n_0 ),
        .I5(\bit_phase[0]_i_3_n_0 ),
        .O(bit_phase[0]));
  LUT6 #(
    .INIT(64'h2000200020000000)) 
    \bit_phase[0]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\bit_count_reg_n_0_[3] ),
        .I3(\bit_count_reg_n_0_[4] ),
        .I4(\bit_count_reg_n_0_[2] ),
        .I5(\bit_count_reg_n_0_[1] ),
        .O(\bit_phase[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h70507050FFFFB0A0)) 
    \bit_phase[0]_i_3 
       (.I0(\bit_phase[0]_i_4_n_0 ),
        .I1(state[0]),
        .I2(\sda_in_sh[26]_i_2_n_0 ),
        .I3(\bit_count[4]_i_4_n_0 ),
        .I4(\bit_phase[5]_i_10_n_0 ),
        .I5(\bit_phase_reg_n_0_[0] ),
        .O(\bit_phase[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bit_phase[0]_i_4 
       (.I0(\bit_phase_reg_n_0_[8] ),
        .I1(\bit_phase_reg_n_0_[6] ),
        .I2(\bit_phase_reg_n_0_[4] ),
        .I3(\bit_phase_reg_n_0_[5] ),
        .I4(\bit_phase_reg_n_0_[7] ),
        .I5(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\bit_phase[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEFEFFAAAAAA)) 
    \bit_phase[1]_i_1 
       (.I0(\bit_phase[1]_i_2_n_0 ),
        .I1(\bit_phase[1]_i_3_n_0 ),
        .I2(\bit_phase[1]_i_4_n_0 ),
        .I3(\bit_phase[1]_i_5_n_0 ),
        .I4(\bit_phase_reg_n_0_[0] ),
        .I5(\bit_phase_reg_n_0_[1] ),
        .O(bit_phase[1]));
  LUT6 #(
    .INIT(64'h0F00000000880088)) 
    \bit_phase[1]_i_2 
       (.I0(\bit_phase[1]_i_6_n_0 ),
        .I1(\bit_phase_reg_n_0_[0] ),
        .I2(\bit_phase[4]_i_3_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(\bit_phase[8]_i_3_n_0 ),
        .I5(\bit_phase_reg_n_0_[1] ),
        .O(\bit_phase[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FFE0FFFFFFE0)) 
    \bit_phase[1]_i_3 
       (.I0(\FSM_sequential_state[2]_i_4_n_0 ),
        .I1(\bit_phase[2]_i_7_n_0 ),
        .I2(\rd_reg[1][26]_i_2_n_0 ),
        .I3(\bit_phase[5]_i_10_n_0 ),
        .I4(\bit_phase[1]_i_7_n_0 ),
        .I5(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(\bit_phase[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00080AAA00080008)) 
    \bit_phase[1]_i_4 
       (.I0(\FSM_sequential_state[2]_i_7_n_0 ),
        .I1(\rd_reg[1][26]_i_2_n_0 ),
        .I2(\bit_phase_reg_n_0_[3] ),
        .I3(\bit_phase_reg_n_0_[2] ),
        .I4(\bit_phase_reg_n_0_[5] ),
        .I5(\FSM_sequential_state[1]_i_9_n_0 ),
        .O(\bit_phase[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4F4F4F4F4F4F4)) 
    \bit_phase[1]_i_5 
       (.I0(\FSM_sequential_state[1]_i_5_n_0 ),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(\bit_phase[3]_i_5_n_0 ),
        .I3(\bit_phase[3]_i_6_n_0 ),
        .I4(state[0]),
        .I5(\sda_in_sh[26]_i_2_n_0 ),
        .O(\bit_phase[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0A2A0FF00000000)) 
    \bit_phase[1]_i_6 
       (.I0(state[0]),
        .I1(\bit_phase_reg_n_0_[4] ),
        .I2(\bit_phase[2]_i_7_n_0 ),
        .I3(\bit_phase[5]_i_6_n_0 ),
        .I4(\bit_phase_reg_n_0_[6] ),
        .I5(\sda_in_sh[26]_i_2_n_0 ),
        .O(\bit_phase[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0700)) 
    \bit_phase[1]_i_7 
       (.I0(\bit_phase_reg_n_0_[5] ),
        .I1(\bit_phase_reg_n_0_[4] ),
        .I2(state[2]),
        .I3(state[1]),
        .O(\bit_phase[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAAAAFFAA)) 
    \bit_phase[2]_i_1 
       (.I0(\bit_phase[2]_i_2_n_0 ),
        .I1(\bit_phase[8]_i_3_n_0 ),
        .I2(\bit_phase[4]_i_3_n_0 ),
        .I3(\bit_phase[2]_i_3_n_0 ),
        .I4(\bit_phase[2]_i_4_n_0 ),
        .I5(\bit_phase_reg_n_0_[2] ),
        .O(bit_phase[2]));
  LUT6 #(
    .INIT(64'hFFF0F0FCF4F0F0FC)) 
    \bit_phase[2]_i_2 
       (.I0(\bit_phase_reg_n_0_[3] ),
        .I1(\bit_phase[2]_i_5_n_0 ),
        .I2(\bit_phase[2]_i_6_n_0 ),
        .I3(\bit_phase_reg_n_0_[2] ),
        .I4(\bit_phase[2]_i_4_n_0 ),
        .I5(\bit_phase[1]_i_3_n_0 ),
        .O(\bit_phase[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888000)) 
    \bit_phase[2]_i_3 
       (.I0(\sda_in_sh[26]_i_2_n_0 ),
        .I1(state[0]),
        .I2(\bit_phase[2]_i_7_n_0 ),
        .I3(\bit_phase[4]_i_3_n_0 ),
        .I4(\FSM_sequential_state[2]_i_4_n_0 ),
        .I5(\bit_phase[3]_i_5_n_0 ),
        .O(\bit_phase[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bit_phase[2]_i_4 
       (.I0(\bit_phase_reg_n_0_[0] ),
        .I1(\bit_phase_reg_n_0_[1] ),
        .O(\bit_phase[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \bit_phase[2]_i_5 
       (.I0(\bit_phase_reg_n_0_[5] ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\bit_phase_reg_n_0_[4] ),
        .I4(\bit_phase_reg_n_0_[7] ),
        .I5(\bit_phase_reg_n_0_[8] ),
        .O(\bit_phase[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000800000)) 
    \bit_phase[2]_i_6 
       (.I0(\rd_reg[1][26]_i_2_n_0 ),
        .I1(\bit_phase_reg_n_0_[1] ),
        .I2(\bit_phase_reg_n_0_[0] ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(\bit_phase[2]_i_7_n_0 ),
        .I5(\FSM_sequential_state[2]_i_7_n_0 ),
        .O(\bit_phase[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h57FF)) 
    \bit_phase[2]_i_7 
       (.I0(\bit_count_reg_n_0_[4] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\bit_count_reg_n_0_[3] ),
        .O(\bit_phase[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \bit_phase[3]_i_1 
       (.I0(\bit_count[4]_i_3_n_0 ),
        .I1(\bit_phase[3]_i_2_n_0 ),
        .I2(\bit_phase_reg_n_0_[4] ),
        .I3(\bit_phase_reg_n_0_[3] ),
        .I4(\bit_phase[3]_i_3_n_0 ),
        .I5(\bit_phase[3]_i_4_n_0 ),
        .O(bit_phase[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \bit_phase[3]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\bit_phase_reg_n_0_[6] ),
        .O(\bit_phase[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1010100010001000)) 
    \bit_phase[3]_i_3 
       (.I0(\bit_phase_reg_n_0_[3] ),
        .I1(\bit_phase[2]_i_4_n_0 ),
        .I2(\bit_phase_reg_n_0_[2] ),
        .I3(\bit_phase[3]_i_5_n_0 ),
        .I4(\bit_phase[3]_i_6_n_0 ),
        .I5(\FSM_sequential_state[1]_i_9_n_0 ),
        .O(\bit_phase[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0FFE0E000000000)) 
    \bit_phase[3]_i_4 
       (.I0(\bit_phase[4]_i_6_n_0 ),
        .I1(\bit_phase[3]_i_5_n_0 ),
        .I2(\bit_phase[3]_i_7_n_0 ),
        .I3(\bit_phase[4]_i_3_n_0 ),
        .I4(\bit_phase[4]_i_4_n_0 ),
        .I5(\bit_phase_reg_n_0_[3] ),
        .O(\bit_phase[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00150000)) 
    \bit_phase[3]_i_5 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\bit_phase_reg_n_0_[5] ),
        .I2(\bit_phase_reg_n_0_[4] ),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\bit_phase[5]_i_10_n_0 ),
        .O(\bit_phase[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAFF)) 
    \bit_phase[3]_i_6 
       (.I0(\bit_phase[2]_i_7_n_0 ),
        .I1(\bit_phase_reg_n_0_[4] ),
        .I2(\bit_phase_reg_n_0_[6] ),
        .I3(\bit_phase_reg_n_0_[5] ),
        .I4(\bit_phase_reg_n_0_[7] ),
        .I5(\bit_phase_reg_n_0_[8] ),
        .O(\bit_phase[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \bit_phase[3]_i_7 
       (.I0(\bit_phase_reg_n_0_[1] ),
        .I1(\bit_phase_reg_n_0_[0] ),
        .I2(\bit_phase_reg_n_0_[2] ),
        .O(\bit_phase[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFEE)) 
    \bit_phase[4]_i_1 
       (.I0(\bit_count[4]_i_3_n_0 ),
        .I1(\bit_phase[4]_i_2_n_0 ),
        .I2(\bit_phase[4]_i_3_n_0 ),
        .I3(\bit_phase[4]_i_4_n_0 ),
        .I4(\bit_phase[4]_i_5_n_0 ),
        .O(bit_phase[4]));
  LUT6 #(
    .INIT(64'h570003000000FF00)) 
    \bit_phase[4]_i_2 
       (.I0(\bit_phase_reg_n_0_[5] ),
        .I1(\bit_phase_reg_n_0_[1] ),
        .I2(\FSM_sequential_state[2]_i_6_n_0 ),
        .I3(scl_i_i_5_n_0),
        .I4(\bit_phase[7]_i_3_n_0 ),
        .I5(\bit_phase_reg_n_0_[4] ),
        .O(\bit_phase[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bit_phase[4]_i_3 
       (.I0(\bit_phase_reg_n_0_[7] ),
        .I1(\bit_phase_reg_n_0_[5] ),
        .I2(\bit_phase_reg_n_0_[4] ),
        .I3(\bit_phase_reg_n_0_[6] ),
        .I4(\bit_phase_reg_n_0_[8] ),
        .O(\bit_phase[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0404044444444444)) 
    \bit_phase[4]_i_4 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\bit_count_reg_n_0_[3] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[1] ),
        .I5(\bit_count_reg_n_0_[4] ),
        .O(\bit_phase[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C0CFFAE0C0CAE)) 
    \bit_phase[4]_i_5 
       (.I0(\bit_phase[4]_i_6_n_0 ),
        .I1(\bit_phase[3]_i_2_n_0 ),
        .I2(\bit_phase[5]_i_9_n_0 ),
        .I3(\bit_phase[7]_i_3_n_0 ),
        .I4(\bit_phase_reg_n_0_[4] ),
        .I5(\bit_phase[5]_i_10_n_0 ),
        .O(\bit_phase[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAB00000000)) 
    \bit_phase[4]_i_6 
       (.I0(\bit_phase[2]_i_7_n_0 ),
        .I1(\bit_phase_reg_n_0_[8] ),
        .I2(\bit_phase_reg_n_0_[7] ),
        .I3(\bit_phase_reg_n_0_[5] ),
        .I4(state[2]),
        .I5(state[0]),
        .O(\bit_phase[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bit_phase[5]_i_1 
       (.I0(\bit_phase[5]_i_2_n_0 ),
        .I1(\bit_phase[5]_i_3_n_0 ),
        .I2(\bit_phase[5]_i_4_n_0 ),
        .I3(\bit_phase[5]_i_5_n_0 ),
        .I4(\bit_phase[5]_i_6_n_0 ),
        .I5(\bit_phase[5]_i_7_n_0 ),
        .O(bit_phase[5]));
  LUT6 #(
    .INIT(64'h0000010000FF0100)) 
    \bit_phase[5]_i_10 
       (.I0(\bit_phase_reg_n_0_[7] ),
        .I1(\bit_phase_reg_n_0_[8] ),
        .I2(\bit_phase_reg_n_0_[6] ),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\bit_phase[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \bit_phase[5]_i_11 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\bit_phase[5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bit_phase[5]_i_12 
       (.I0(\bit_phase_reg_n_0_[0] ),
        .I1(\bit_phase_reg_n_0_[1] ),
        .I2(\bit_phase_reg_n_0_[2] ),
        .I3(\bit_phase_reg_n_0_[3] ),
        .I4(\bit_phase_reg_n_0_[4] ),
        .O(\bit_phase[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    \bit_phase[5]_i_2 
       (.I0(\bit_phase[5]_i_8_n_0 ),
        .I1(\FSM_sequential_state[2]_i_7_n_0 ),
        .I2(\bit_phase_reg_n_0_[5] ),
        .I3(\FSM_sequential_state[1]_i_9_n_0 ),
        .I4(\bit_phase_reg_n_0_[3] ),
        .I5(\bit_phase_reg_n_0_[2] ),
        .O(\bit_phase[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \bit_phase[5]_i_3 
       (.I0(\bit_phase[5]_i_5_n_0 ),
        .I1(\bit_phase[5]_i_9_n_0 ),
        .I2(\FSM_sequential_state[1]_i_8_n_0 ),
        .I3(\bit_phase_reg_n_0_[8] ),
        .I4(\bit_phase_reg_n_0_[6] ),
        .I5(\bit_phase_reg_n_0_[5] ),
        .O(\bit_phase[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F0F040404040)) 
    \bit_phase[5]_i_4 
       (.I0(\bit_phase[7]_i_3_n_0 ),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(\bit_phase_reg_n_0_[4] ),
        .I3(\bit_phase_reg_n_0_[3] ),
        .I4(\bit_phase_reg_n_0_[2] ),
        .I5(\bit_phase[3]_i_2_n_0 ),
        .O(\bit_phase[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bit_phase[5]_i_5 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\bit_phase[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bit_phase[5]_i_6 
       (.I0(\bit_phase_reg_n_0_[7] ),
        .I1(\bit_phase_reg_n_0_[8] ),
        .O(\bit_phase[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFAFA00000000FFFC)) 
    \bit_phase[5]_i_7 
       (.I0(\bit_phase[5]_i_10_n_0 ),
        .I1(scl_i_i_5_n_0),
        .I2(\bit_phase[4]_i_4_n_0 ),
        .I3(\bit_phase[5]_i_11_n_0 ),
        .I4(\bit_phase[5]_i_12_n_0 ),
        .I5(\bit_phase_reg_n_0_[5] ),
        .O(\bit_phase[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808080888)) 
    \bit_phase[5]_i_8 
       (.I0(\bit_phase_reg_n_0_[5] ),
        .I1(scl_i_i_5_n_0),
        .I2(\bit_phase_reg_n_0_[4] ),
        .I3(\bit_phase_reg_n_0_[3] ),
        .I4(\bit_phase_reg_n_0_[2] ),
        .I5(\bit_phase_reg_n_0_[1] ),
        .O(\bit_phase[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bit_phase[5]_i_9 
       (.I0(\bit_phase_reg_n_0_[2] ),
        .I1(\bit_phase_reg_n_0_[3] ),
        .O(\bit_phase[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAFAEEFEAAFAE)) 
    \bit_phase[6]_i_1 
       (.I0(\bit_phase[6]_i_2_n_0 ),
        .I1(\bit_phase[7]_i_2_n_0 ),
        .I2(\bit_phase[6]_i_3_n_0 ),
        .I3(\bit_phase[6]_i_4_n_0 ),
        .I4(\bit_phase_reg_n_0_[6] ),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(bit_phase[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \bit_phase[6]_i_2 
       (.I0(\bit_phase_reg_n_0_[6] ),
        .I1(\bit_phase_reg_n_0_[7] ),
        .I2(\bit_phase_reg_n_0_[8] ),
        .I3(\bit_phase[8]_i_3_n_0 ),
        .O(\bit_phase[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bit_phase[6]_i_3 
       (.I0(\bit_phase_reg_n_0_[0] ),
        .I1(\bit_phase_reg_n_0_[1] ),
        .I2(\bit_phase_reg_n_0_[2] ),
        .I3(\bit_phase_reg_n_0_[3] ),
        .I4(\bit_phase_reg_n_0_[5] ),
        .I5(\bit_phase_reg_n_0_[4] ),
        .O(\bit_phase[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \bit_phase[6]_i_4 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\bit_phase_reg_n_0_[6] ),
        .I3(\bit_phase_reg_n_0_[7] ),
        .I4(\bit_phase_reg_n_0_[8] ),
        .O(\bit_phase[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F888000000F0)) 
    \bit_phase[7]_i_1 
       (.I0(\bit_phase_reg_n_0_[8] ),
        .I1(\bit_phase[8]_i_3_n_0 ),
        .I2(\bit_phase[7]_i_2_n_0 ),
        .I3(\bit_phase[7]_i_3_n_0 ),
        .I4(\bit_phase[7]_i_4_n_0 ),
        .I5(\bit_phase_reg_n_0_[7] ),
        .O(bit_phase[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \bit_phase[7]_i_2 
       (.I0(\bit_phase[8]_i_3_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\bit_phase[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bit_phase[7]_i_3 
       (.I0(\bit_phase_reg_n_0_[3] ),
        .I1(\bit_phase_reg_n_0_[2] ),
        .I2(\bit_phase_reg_n_0_[1] ),
        .I3(\bit_phase_reg_n_0_[0] ),
        .O(\bit_phase[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \bit_phase[7]_i_4 
       (.I0(\bit_phase_reg_n_0_[5] ),
        .I1(\bit_phase_reg_n_0_[4] ),
        .I2(\bit_phase_reg_n_0_[6] ),
        .O(\bit_phase[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5060507050605060)) 
    \bit_phase[8]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(s00_axi_aresetn),
        .I3(state[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\bit_phase[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF100000FF00FF10)) 
    \bit_phase[8]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\bit_phase[8]_i_3_n_0 ),
        .I4(\bit_phase_reg_n_0_[8] ),
        .I5(\bit_phase[8]_i_4_n_0 ),
        .O(bit_phase[8]));
  LUT6 #(
    .INIT(64'h0808088888888888)) 
    \bit_phase[8]_i_3 
       (.I0(state[0]),
        .I1(\sda_in_sh[26]_i_2_n_0 ),
        .I2(\bit_count_reg_n_0_[3] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[1] ),
        .I5(\bit_count_reg_n_0_[4] ),
        .O(\bit_phase[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \bit_phase[8]_i_4 
       (.I0(\bit_phase_reg_n_0_[7] ),
        .I1(\bit_phase_reg_n_0_[5] ),
        .I2(\bit_phase_reg_n_0_[4] ),
        .I3(\bit_phase_reg_n_0_[6] ),
        .I4(\bit_phase[7]_i_3_n_0 ),
        .O(\bit_phase[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_phase_reg[0] 
       (.C(clk62p5),
        .CE(\bit_phase[8]_i_1_n_0 ),
        .D(bit_phase[0]),
        .Q(\bit_phase_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_phase_reg[1] 
       (.C(clk62p5),
        .CE(\bit_phase[8]_i_1_n_0 ),
        .D(bit_phase[1]),
        .Q(\bit_phase_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_phase_reg[2] 
       (.C(clk62p5),
        .CE(\bit_phase[8]_i_1_n_0 ),
        .D(bit_phase[2]),
        .Q(\bit_phase_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_phase_reg[3] 
       (.C(clk62p5),
        .CE(\bit_phase[8]_i_1_n_0 ),
        .D(bit_phase[3]),
        .Q(\bit_phase_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_phase_reg[4] 
       (.C(clk62p5),
        .CE(\bit_phase[8]_i_1_n_0 ),
        .D(bit_phase[4]),
        .Q(\bit_phase_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_phase_reg[5] 
       (.C(clk62p5),
        .CE(\bit_phase[8]_i_1_n_0 ),
        .D(bit_phase[5]),
        .Q(\bit_phase_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_phase_reg[6] 
       (.C(clk62p5),
        .CE(\bit_phase[8]_i_1_n_0 ),
        .D(bit_phase[6]),
        .Q(\bit_phase_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_phase_reg[7] 
       (.C(clk62p5),
        .CE(\bit_phase[8]_i_1_n_0 ),
        .D(bit_phase[7]),
        .Q(\bit_phase_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_phase_reg[8] 
       (.C(clk62p5),
        .CE(\bit_phase[8]_i_1_n_0 ),
        .D(bit_phase[8]),
        .Q(\bit_phase_reg_n_0_[8] ),
        .R(1'b0));
  design_1_coldata_i2c_0_3_coldata_i2c_v1_0_S00_AXI coldata_i2c_v1_0_S00_AXI_inst
       (.D(wr_reg0),
        .Q(state[2:1]),
        .SR(coldata_i2c_v1_0_S00_AXI_inst_n_1),
        .\axi_rdata_reg[26]_0 (\rd_reg_reg[1] ),
        .p_2_out(p_2_out),
        .\rd_reg_reg[2] (\rd_reg_reg[2] ),
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
        .\sda_out_sh_reg[25] (sda_out_sh),
        .\sda_out_sh_reg[26] ({\sda_out_sh_reg_n_0_[25] ,\sda_out_sh_reg_n_0_[24] ,\sda_out_sh_reg_n_0_[23] ,\sda_out_sh_reg_n_0_[22] ,\sda_out_sh_reg_n_0_[21] ,\sda_out_sh_reg_n_0_[20] ,\sda_out_sh_reg_n_0_[19] ,\sda_out_sh_reg_n_0_[18] ,\sda_out_sh_reg_n_0_[17] ,\sda_out_sh_reg_n_0_[16] ,\sda_out_sh_reg_n_0_[15] ,\sda_out_sh_reg_n_0_[14] ,\sda_out_sh_reg_n_0_[13] ,\sda_out_sh_reg_n_0_[12] ,\sda_out_sh_reg_n_0_[11] ,\sda_out_sh_reg_n_0_[10] ,\sda_out_sh_reg_n_0_[9] ,\sda_out_sh_reg_n_0_[8] ,\sda_out_sh_reg_n_0_[7] ,\sda_out_sh_reg_n_0_[6] ,\sda_out_sh_reg_n_0_[5] ,\sda_out_sh_reg_n_0_[4] ,\sda_out_sh_reg_n_0_[3] ,\sda_out_sh_reg_n_0_[2] ,\sda_out_sh_reg_n_0_[1] ,\sda_out_sh_reg_n_0_[0] }));
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
        .O(sda_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \lat_cnt[0]_i_1 
       (.I0(lat_cnt[0]),
        .I1(\lb_stim_reg_n_0_[3] ),
        .I2(lb_stim_sda_out),
        .O(\lat_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6066)) 
    \lat_cnt[1]_i_1 
       (.I0(lat_cnt[1]),
        .I1(lat_cnt[0]),
        .I2(\lb_stim_reg_n_0_[3] ),
        .I3(lb_stim_sda_out),
        .O(\lat_cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \lat_cnt[2]_i_1 
       (.I0(lat_cnt[0]),
        .I1(lat_cnt[1]),
        .I2(lat_cnt[2]),
        .O(lat_cnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \lat_cnt[3]_i_1 
       (.I0(lat_cnt[1]),
        .I1(lat_cnt[0]),
        .I2(lat_cnt[2]),
        .I3(lat_cnt[3]),
        .O(lat_cnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lat_cnt[4]_i_1 
       (.I0(lat_cnt[2]),
        .I1(lat_cnt[0]),
        .I2(lat_cnt[1]),
        .I3(lat_cnt[3]),
        .I4(lat_cnt[4]),
        .O(lat_cnt0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \lat_cnt[5]_i_1 
       (.I0(lat_cnt[3]),
        .I1(lat_cnt[1]),
        .I2(lat_cnt[0]),
        .I3(lat_cnt[2]),
        .I4(lat_cnt[4]),
        .I5(lat_cnt[5]),
        .O(lat_cnt0[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lat_cnt[6]_i_1 
       (.I0(\lat_cnt[7]_i_3_n_0 ),
        .I1(lat_cnt[6]),
        .O(lat_cnt0[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \lat_cnt[7]_i_1 
       (.I0(lb_stim_sda_out),
        .I1(\lb_stim_reg_n_0_[3] ),
        .O(\lat_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \lat_cnt[7]_i_2 
       (.I0(\lat_cnt[7]_i_3_n_0 ),
        .I1(lat_cnt[6]),
        .I2(lat_cnt[7]),
        .O(lat_cnt0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \lat_cnt[7]_i_3 
       (.I0(lat_cnt[5]),
        .I1(lat_cnt[3]),
        .I2(lat_cnt[1]),
        .I3(lat_cnt[0]),
        .I4(lat_cnt[2]),
        .I5(lat_cnt[4]),
        .O(\lat_cnt[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lat_cnt_reg[0] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\lat_cnt[0]_i_1_n_0 ),
        .Q(lat_cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lat_cnt_reg[1] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\lat_cnt[1]_i_1_n_0 ),
        .Q(lat_cnt[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \lat_cnt_reg[2] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(lat_cnt0[2]),
        .Q(lat_cnt[2]),
        .S(\lat_cnt[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \lat_cnt_reg[3] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(lat_cnt0[3]),
        .Q(lat_cnt[3]),
        .S(\lat_cnt[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \lat_cnt_reg[4] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(lat_cnt0[4]),
        .Q(lat_cnt[4]),
        .S(\lat_cnt[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \lat_cnt_reg[5] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(lat_cnt0[5]),
        .Q(lat_cnt[5]),
        .S(\lat_cnt[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \lat_cnt_reg[6] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(lat_cnt0[6]),
        .Q(lat_cnt[6]),
        .S(\lat_cnt[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \lat_cnt_reg[7] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(lat_cnt0[7]),
        .Q(lat_cnt[7]),
        .S(\lat_cnt[7]_i_1_n_0 ));
  (* srl_bus_name = "\inst/lb_resp_reg " *) 
  (* srl_name = "\inst/lb_resp_reg[1]_srl2 " *) 
  SRL16E \lb_resp_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk62p5),
        .D(sda_in_out),
        .Q(\lb_resp_reg[1]_srl2_n_0 ));
  FDRE \lb_resp_reg[2] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\lb_resp_reg[1]_srl2_n_0 ),
        .Q(lb_resp[2]),
        .R(1'b0));
  FDRE \lb_resp_reg[3] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(lb_resp[2]),
        .Q(lb_resp[3]),
        .R(1'b0));
  (* srl_bus_name = "\inst/lb_stim_reg " *) 
  (* srl_name = "\inst/lb_stim_reg[2]_srl3 " *) 
  SRL16E \lb_stim_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk62p5),
        .D(p_2_out),
        .Q(\lb_stim_reg[2]_srl3_n_0 ));
  FDRE \lb_stim_reg[3] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\lb_stim_reg[2]_srl3_n_0 ),
        .Q(\lb_stim_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \lb_stim_reg[4] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\lb_stim_reg_n_0_[3] ),
        .Q(lb_stim_sda_out),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    obuf_sda
       (.I(sda_out_i),
        .O(sda_out_p),
        .OB(sda_out_n));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rd_reg[1][26]_i_1 
       (.I0(\rd_reg[1][26]_i_2_n_0 ),
        .I1(\bit_count_reg_n_0_[3] ),
        .I2(\bit_count_reg_n_0_[4] ),
        .I3(s00_axi_aresetn),
        .I4(\rd_reg[1][26]_i_3_n_0 ),
        .I5(\rd_reg[1][26]_i_4_n_0 ),
        .O(\rd_reg[1][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \rd_reg[1][26]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\rd_reg[1][26]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rd_reg[1][26]_i_3 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[2] ),
        .O(\rd_reg[1][26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEFEEEEEEEEEEE)) 
    \rd_reg[1][26]_i_4 
       (.I0(\bit_phase_reg_n_0_[7] ),
        .I1(\bit_phase_reg_n_0_[8] ),
        .I2(\FSM_sequential_state[2]_i_6_n_0 ),
        .I3(\bit_phase_reg_n_0_[6] ),
        .I4(\bit_phase_reg_n_0_[4] ),
        .I5(\bit_phase_reg_n_0_[5] ),
        .O(\rd_reg[1][26]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_reg[2][1]_i_1 
       (.I0(lb_resp[3]),
        .I1(lb_resp[2]),
        .O(\rd_reg[2][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \rd_reg[2][7]_i_1 
       (.I0(\lb_stim_reg_n_0_[3] ),
        .I1(lb_stim_sda_out),
        .I2(lb_resp[2]),
        .I3(lb_resp[3]),
        .O(\rd_reg[2][7]_i_1_n_0 ));
  FDRE \rd_reg_reg[1][0] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[0]),
        .Q(\rd_reg_reg[1] [0]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][10] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[10]),
        .Q(\rd_reg_reg[1] [10]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][11] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[11]),
        .Q(\rd_reg_reg[1] [11]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][12] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[12]),
        .Q(\rd_reg_reg[1] [12]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][13] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[13]),
        .Q(\rd_reg_reg[1] [13]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][14] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[14]),
        .Q(\rd_reg_reg[1] [14]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][15] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[15]),
        .Q(\rd_reg_reg[1] [15]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][16] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[16]),
        .Q(\rd_reg_reg[1] [16]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][17] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[17]),
        .Q(\rd_reg_reg[1] [17]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][18] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[18]),
        .Q(\rd_reg_reg[1] [18]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][19] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[19]),
        .Q(\rd_reg_reg[1] [19]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][1] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[1]),
        .Q(\rd_reg_reg[1] [1]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][20] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[20]),
        .Q(\rd_reg_reg[1] [20]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][21] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[21]),
        .Q(\rd_reg_reg[1] [21]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][22] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[22]),
        .Q(\rd_reg_reg[1] [22]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][23] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[23]),
        .Q(\rd_reg_reg[1] [23]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][24] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[24]),
        .Q(\rd_reg_reg[1] [24]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][25] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[25]),
        .Q(\rd_reg_reg[1] [25]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][26] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[26]),
        .Q(\rd_reg_reg[1] [26]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][2] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[2]),
        .Q(\rd_reg_reg[1] [2]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][3] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[3]),
        .Q(\rd_reg_reg[1] [3]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][4] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[4]),
        .Q(\rd_reg_reg[1] [4]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][5] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[5]),
        .Q(\rd_reg_reg[1] [5]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][6] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[6]),
        .Q(\rd_reg_reg[1] [6]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][7] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[7]),
        .Q(\rd_reg_reg[1] [7]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][8] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[8]),
        .Q(\rd_reg_reg[1] [8]),
        .R(1'b0));
  FDRE \rd_reg_reg[1][9] 
       (.C(clk62p5),
        .CE(\rd_reg[1][26]_i_1_n_0 ),
        .D(sda_in_sh[9]),
        .Q(\rd_reg_reg[1] [9]),
        .R(1'b0));
  FDRE \rd_reg_reg[2][0] 
       (.C(clk62p5),
        .CE(\rd_reg[2][1]_i_1_n_0 ),
        .D(\lat_cnt[0]_i_1_n_0 ),
        .Q(\rd_reg_reg[2] [0]),
        .R(1'b0));
  FDRE \rd_reg_reg[2][1] 
       (.C(clk62p5),
        .CE(\rd_reg[2][1]_i_1_n_0 ),
        .D(\lat_cnt[1]_i_1_n_0 ),
        .Q(\rd_reg_reg[2] [1]),
        .R(1'b0));
  FDSE \rd_reg_reg[2][2] 
       (.C(clk62p5),
        .CE(\rd_reg[2][1]_i_1_n_0 ),
        .D(lat_cnt0[2]),
        .Q(\rd_reg_reg[2] [2]),
        .S(\rd_reg[2][7]_i_1_n_0 ));
  FDSE \rd_reg_reg[2][3] 
       (.C(clk62p5),
        .CE(\rd_reg[2][1]_i_1_n_0 ),
        .D(lat_cnt0[3]),
        .Q(\rd_reg_reg[2] [3]),
        .S(\rd_reg[2][7]_i_1_n_0 ));
  FDSE \rd_reg_reg[2][4] 
       (.C(clk62p5),
        .CE(\rd_reg[2][1]_i_1_n_0 ),
        .D(lat_cnt0[4]),
        .Q(\rd_reg_reg[2] [4]),
        .S(\rd_reg[2][7]_i_1_n_0 ));
  FDSE \rd_reg_reg[2][5] 
       (.C(clk62p5),
        .CE(\rd_reg[2][1]_i_1_n_0 ),
        .D(lat_cnt0[5]),
        .Q(\rd_reg_reg[2] [5]),
        .S(\rd_reg[2][7]_i_1_n_0 ));
  FDSE \rd_reg_reg[2][6] 
       (.C(clk62p5),
        .CE(\rd_reg[2][1]_i_1_n_0 ),
        .D(lat_cnt0[6]),
        .Q(\rd_reg_reg[2] [6]),
        .S(\rd_reg[2][7]_i_1_n_0 ));
  FDSE \rd_reg_reg[2][7] 
       (.C(clk62p5),
        .CE(\rd_reg[2][1]_i_1_n_0 ),
        .D(lat_cnt0[7]),
        .Q(\rd_reg_reg[2] [7]),
        .S(\rd_reg[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1FDF1F1111D11111)) 
    scl_i_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(scl_i_i_3_n_0),
        .I3(state[2]),
        .I4(scl_i_i_4_n_0),
        .I5(scl_out),
        .O(scl_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    scl_i_i_3
       (.I0(\bit_phase[2]_i_4_n_0 ),
        .I1(\bit_phase_reg_n_0_[2] ),
        .I2(\bit_phase_reg_n_0_[3] ),
        .I3(\bit_phase_reg_n_0_[5] ),
        .I4(\bit_phase_reg_n_0_[4] ),
        .I5(scl_i_i_5_n_0),
        .O(scl_i_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_i_i_4
       (.I0(\sda_in_sh[26]_i_3_n_0 ),
        .I1(\bit_phase_reg_n_0_[6] ),
        .I2(\bit_phase_reg_n_0_[7] ),
        .I3(\bit_phase_reg_n_0_[8] ),
        .O(scl_i_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    scl_i_i_5
       (.I0(state[2]),
        .I1(state[1]),
        .I2(\bit_phase_reg_n_0_[6] ),
        .I3(\bit_phase_reg_n_0_[7] ),
        .I4(\bit_phase_reg_n_0_[8] ),
        .O(scl_i_i_5_n_0));
  FDSE scl_i_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(scl_i_i_2_n_0),
        .Q(scl_out),
        .S(coldata_i2c_v1_0_S00_AXI_inst_n_1));
  FDRE scl_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(scl_out),
        .Q(scl),
        .R(1'b0));
  FDRE sda_in_out_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(sda_in),
        .Q(sda_in_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \sda_in_sh[26]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\sda_in_sh[26]_i_2_n_0 ),
        .I2(\bit_phase_reg_n_0_[6] ),
        .I3(\bit_phase_reg_n_0_[7] ),
        .I4(\bit_phase_reg_n_0_[8] ),
        .I5(\sda_in_sh[26]_i_3_n_0 ),
        .O(\sda_in_sh[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sda_in_sh[26]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\sda_in_sh[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \sda_in_sh[26]_i_3 
       (.I0(\bit_phase_reg_n_0_[3] ),
        .I1(\bit_phase_reg_n_0_[4] ),
        .I2(\bit_phase_reg_n_0_[2] ),
        .I3(\bit_phase_reg_n_0_[5] ),
        .I4(\bit_phase_reg_n_0_[1] ),
        .I5(\bit_phase_reg_n_0_[0] ),
        .O(\sda_in_sh[26]_i_3_n_0 ));
  FDRE \sda_in_sh_reg[0] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_out),
        .Q(sda_in_sh[0]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[10] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[9]),
        .Q(sda_in_sh[10]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[11] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[10]),
        .Q(sda_in_sh[11]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[12] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[11]),
        .Q(sda_in_sh[12]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[13] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[12]),
        .Q(sda_in_sh[13]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[14] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[13]),
        .Q(sda_in_sh[14]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[15] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[14]),
        .Q(sda_in_sh[15]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[16] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[15]),
        .Q(sda_in_sh[16]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[17] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[16]),
        .Q(sda_in_sh[17]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[18] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[17]),
        .Q(sda_in_sh[18]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[19] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[18]),
        .Q(sda_in_sh[19]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[1] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[0]),
        .Q(sda_in_sh[1]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[20] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[19]),
        .Q(sda_in_sh[20]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[21] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[20]),
        .Q(sda_in_sh[21]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[22] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[21]),
        .Q(sda_in_sh[22]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[23] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[22]),
        .Q(sda_in_sh[23]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[24] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[23]),
        .Q(sda_in_sh[24]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[25] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[24]),
        .Q(sda_in_sh[25]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[26] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[25]),
        .Q(sda_in_sh[26]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[2] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[1]),
        .Q(sda_in_sh[2]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[3] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[2]),
        .Q(sda_in_sh[3]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[4] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[3]),
        .Q(sda_in_sh[4]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[5] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[4]),
        .Q(sda_in_sh[5]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[6] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[5]),
        .Q(sda_in_sh[6]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[7] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[6]),
        .Q(sda_in_sh[7]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[8] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[7]),
        .Q(sda_in_sh[8]),
        .R(1'b0));
  FDRE \sda_in_sh_reg[9] 
       (.C(clk62p5),
        .CE(\sda_in_sh[26]_i_1_n_0 ),
        .D(sda_in_sh[8]),
        .Q(sda_in_sh[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFCCCCBF000000B3)) 
    sda_out_i_1
       (.I0(\sda_out_sh_reg_n_0_[26] ),
        .I1(state[1]),
        .I2(\bit_count[4]_i_4_n_0 ),
        .I3(state[0]),
        .I4(state[2]),
        .I5(sda_out_reg_n_0),
        .O(sda_out_i_1_n_0));
  FDRE sda_out_i_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(sda_out_out),
        .Q(sda_out_i),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    sda_out_out_INST_0
       (.I0(sda_out_reg_n_0),
        .I1(lb_stim_sda_out),
        .O(sda_out_out));
  FDSE sda_out_reg
       (.C(clk62p5),
        .CE(1'b1),
        .D(sda_out_i_1_n_0),
        .Q(sda_out_reg_n_0),
        .S(coldata_i2c_v1_0_S00_AXI_inst_n_1));
  FDRE \sda_out_sh_reg[0] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[0]),
        .Q(\sda_out_sh_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[10] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[10]),
        .Q(\sda_out_sh_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[11] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[11]),
        .Q(\sda_out_sh_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[12] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[12]),
        .Q(\sda_out_sh_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[13] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[13]),
        .Q(\sda_out_sh_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[14] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[14]),
        .Q(\sda_out_sh_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[15] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[15]),
        .Q(\sda_out_sh_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[16] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[16]),
        .Q(\sda_out_sh_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[17] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[17]),
        .Q(\sda_out_sh_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[18] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[18]),
        .Q(\sda_out_sh_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[19] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[19]),
        .Q(\sda_out_sh_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[1] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[1]),
        .Q(\sda_out_sh_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[20] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[20]),
        .Q(\sda_out_sh_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[21] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[21]),
        .Q(\sda_out_sh_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[22] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[22]),
        .Q(\sda_out_sh_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[23] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[23]),
        .Q(\sda_out_sh_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[24] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[24]),
        .Q(\sda_out_sh_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[25] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[25]),
        .Q(\sda_out_sh_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[26] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[26]),
        .Q(\sda_out_sh_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[2] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[2]),
        .Q(\sda_out_sh_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[3] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[3]),
        .Q(\sda_out_sh_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[4] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[4]),
        .Q(\sda_out_sh_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[5] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[5]),
        .Q(\sda_out_sh_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[6] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[6]),
        .Q(\sda_out_sh_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[7] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[7]),
        .Q(\sda_out_sh_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[8] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[8]),
        .Q(\sda_out_sh_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \sda_out_sh_reg[9] 
       (.C(clk62p5),
        .CE(\bit_count[4]_i_1_n_0 ),
        .D(sda_out_sh[9]),
        .Q(\sda_out_sh_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_start_r_reg[0] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(wr_reg0),
        .Q(\tx_start_r_reg_n_0_[0] ),
        .R(coldata_i2c_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \tx_start_r_reg[1] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tx_start_r_reg_n_0_[0] ),
        .Q(\tx_start_r_reg_n_0_[1] ),
        .R(coldata_i2c_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \tx_start_r_reg[2] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(\tx_start_r_reg_n_0_[1] ),
        .Q(p_0_in[0]),
        .R(coldata_i2c_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \tx_start_r_reg[3] 
       (.C(clk62p5),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(p_0_in[1]),
        .R(coldata_i2c_v1_0_S00_AXI_inst_n_1));
endmodule

module design_1_coldata_i2c_0_3_coldata_i2c_v1_0_S00_AXI
   (s00_axi_awready,
    SR,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    D,
    \sda_out_sh_reg[25] ,
    p_2_out,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    Q,
    \sda_out_sh_reg[26] ,
    s00_axi_bready,
    s00_axi_wdata,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr,
    \rd_reg_reg[2] ,
    \axi_rdata_reg[26]_0 );
  output s00_axi_awready;
  output [0:0]SR;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [0:0]D;
  output [26:0]\sda_out_sh_reg[25] ;
  output [0:0]p_2_out;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input [1:0]Q;
  input [25:0]\sda_out_sh_reg[26] ;
  input s00_axi_bready;
  input [31:0]s00_axi_wdata;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input [7:0]\rd_reg_reg[2] ;
  input [26:0]\axi_rdata_reg[26]_0 ;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire [4:2]axi_awaddr;
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
  wire [26:0]\axi_rdata_reg[26]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [31:7]p_1_in;
  wire [0:0]p_2_out;
  wire [7:0]\rd_reg_reg[2] ;
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
  wire [26:0]\sda_out_sh_reg[25] ;
  wire [25:0]\sda_out_sh_reg[26] ;
  wire [2:0]sel0;
  wire [31:0]slv_reg4;
  wire \slv_reg4[31]_i_2_n_0 ;
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
  wire \wr_reg0[0]_i_1_n_0 ;
  wire [26:0]wr_reg1;
  wire \wr_reg1[15]_i_1_n_0 ;
  wire \wr_reg1[23]_i_1_n_0 ;
  wire \wr_reg1[26]_i_1_n_0 ;
  wire \wr_reg1[7]_i_1_n_0 ;
  wire \wr_reg2[0]_i_1_n_0 ;
  wire \wr_reg2[0]_i_2_n_0 ;
  wire \wr_reg[2]_0 ;

  LUT6 #(
    .INIT(64'hF0FFFFFF88888888)) 
    aw_en_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(aw_en_reg_n_0),
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
        .Q(axi_awaddr[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(axi_awaddr[3]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(axi_awaddr[4]),
        .R(SR));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_1
       (.I0(s00_axi_awready),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_awready),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'h88BB8888B8BBB8BB)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\rd_reg_reg[2] [0]),
        .I3(sel0[1]),
        .I4(\axi_rdata_reg[26]_0 [0]),
        .I5(sel0[0]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [10]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [11]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [12]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [13]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [14]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [15]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [16]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [17]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [18]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [19]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\rd_reg_reg[2] [1]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[26]_0 [1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [20]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [21]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [22]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [23]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [24]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [25]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [26]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\rd_reg_reg[2] [2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[26]_0 [2]),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\rd_reg_reg[2] [3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[26]_0 [3]),
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
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\rd_reg_reg[2] [4]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[26]_0 [4]),
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
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\rd_reg_reg[2] [5]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[26]_0 [5]),
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
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\rd_reg_reg[2] [6]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[26]_0 [6]),
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
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\rd_reg_reg[2] [7]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[26]_0 [7]),
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
        .I2(\axi_rdata_reg[26]_0 [8]),
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
  LUT5 #(
    .INIT(32'h8888B888)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[26]_0 [9]),
        .I3(sel0[0]),
        .I4(sel0[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \lb_stim_reg[2]_srl3_i_1 
       (.I0(\wr_reg[2]_0 ),
        .O(p_2_out));
  LUT1 #(
    .INIT(2'h1)) 
    scl_i_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \sda_out_sh[0]_i_1 
       (.I0(wr_reg1[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\sda_out_sh_reg[25] [0]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[10]_i_1 
       (.I0(\sda_out_sh_reg[26] [9]),
        .I1(wr_reg1[10]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [10]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[11]_i_1 
       (.I0(\sda_out_sh_reg[26] [10]),
        .I1(wr_reg1[11]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [11]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[12]_i_1 
       (.I0(\sda_out_sh_reg[26] [11]),
        .I1(wr_reg1[12]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [12]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[13]_i_1 
       (.I0(\sda_out_sh_reg[26] [12]),
        .I1(wr_reg1[13]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [13]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[14]_i_1 
       (.I0(\sda_out_sh_reg[26] [13]),
        .I1(wr_reg1[14]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [14]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[15]_i_1 
       (.I0(\sda_out_sh_reg[26] [14]),
        .I1(wr_reg1[15]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [15]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[16]_i_1 
       (.I0(\sda_out_sh_reg[26] [15]),
        .I1(wr_reg1[16]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [16]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[17]_i_1 
       (.I0(\sda_out_sh_reg[26] [16]),
        .I1(wr_reg1[17]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [17]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[18]_i_1 
       (.I0(\sda_out_sh_reg[26] [17]),
        .I1(wr_reg1[18]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [18]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[19]_i_1 
       (.I0(\sda_out_sh_reg[26] [18]),
        .I1(wr_reg1[19]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[1]_i_1 
       (.I0(\sda_out_sh_reg[26] [0]),
        .I1(wr_reg1[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [1]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[20]_i_1 
       (.I0(\sda_out_sh_reg[26] [19]),
        .I1(wr_reg1[20]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [20]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[21]_i_1 
       (.I0(\sda_out_sh_reg[26] [20]),
        .I1(wr_reg1[21]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [21]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[22]_i_1 
       (.I0(\sda_out_sh_reg[26] [21]),
        .I1(wr_reg1[22]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [22]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[23]_i_1 
       (.I0(\sda_out_sh_reg[26] [22]),
        .I1(wr_reg1[23]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [23]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[24]_i_1 
       (.I0(\sda_out_sh_reg[26] [23]),
        .I1(wr_reg1[24]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [24]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[25]_i_1 
       (.I0(\sda_out_sh_reg[26] [24]),
        .I1(wr_reg1[25]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [25]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[26]_i_1 
       (.I0(\sda_out_sh_reg[26] [25]),
        .I1(wr_reg1[26]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [26]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[2]_i_1 
       (.I0(\sda_out_sh_reg[26] [1]),
        .I1(wr_reg1[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [2]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[3]_i_1 
       (.I0(\sda_out_sh_reg[26] [2]),
        .I1(wr_reg1[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [3]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[4]_i_1 
       (.I0(\sda_out_sh_reg[26] [3]),
        .I1(wr_reg1[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [4]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[5]_i_1 
       (.I0(\sda_out_sh_reg[26] [4]),
        .I1(wr_reg1[5]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [5]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[6]_i_1 
       (.I0(\sda_out_sh_reg[26] [5]),
        .I1(wr_reg1[6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [6]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[7]_i_1 
       (.I0(\sda_out_sh_reg[26] [6]),
        .I1(wr_reg1[7]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [7]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[8]_i_1 
       (.I0(\sda_out_sh_reg[26] [7]),
        .I1(wr_reg1[8]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [8]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \sda_out_sh[9]_i_1 
       (.I0(\sda_out_sh_reg[26] [8]),
        .I1(wr_reg1[9]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\sda_out_sh_reg[25] [9]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \slv_reg4[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[4]),
        .I2(\slv_reg4[31]_i_2_n_0 ),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \slv_reg4[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[4]),
        .I2(\slv_reg4[31]_i_2_n_0 ),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \slv_reg4[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[4]),
        .I2(\slv_reg4[31]_i_2_n_0 ),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg4[31]_i_2 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(\slv_reg4[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \slv_reg4[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[4]),
        .I2(\slv_reg4[31]_i_2_n_0 ),
        .I3(axi_awaddr[2]),
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
    .INIT(32'h00800000)) 
    \slv_reg5[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg5[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg5[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg5[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(s00_axi_wstrb[0]),
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
    .INIT(32'h00800000)) 
    \slv_reg6[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[4]),
        .I2(\slv_reg4[31]_i_2_n_0 ),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg6[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[4]),
        .I2(\slv_reg4[31]_i_2_n_0 ),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg6[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[4]),
        .I2(\slv_reg4[31]_i_2_n_0 ),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg6[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[4]),
        .I2(\slv_reg4[31]_i_2_n_0 ),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[0]),
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
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
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
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \wr_reg0[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(\wr_reg2[0]_i_2_n_0 ),
        .I5(D),
        .O(\wr_reg0[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\wr_reg0[0]_i_1_n_0 ),
        .Q(D),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \wr_reg1[15]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(s00_axi_aresetn),
        .I4(\slv_reg4[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[1]),
        .O(\wr_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \wr_reg1[23]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(s00_axi_aresetn),
        .I4(\slv_reg4[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[2]),
        .O(\wr_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \wr_reg1[26]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(s00_axi_aresetn),
        .I4(\slv_reg4[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[3]),
        .O(\wr_reg1[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \wr_reg1[7]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(s00_axi_aresetn),
        .I4(\slv_reg4[31]_i_2_n_0 ),
        .I5(s00_axi_wstrb[0]),
        .O(\wr_reg1[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(wr_reg1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(wr_reg1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(wr_reg1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(wr_reg1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(wr_reg1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(wr_reg1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(wr_reg1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(wr_reg1[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(wr_reg1[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(wr_reg1[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(wr_reg1[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(wr_reg1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(wr_reg1[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(wr_reg1[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(wr_reg1[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(wr_reg1[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[26]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(wr_reg1[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[26]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(wr_reg1[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[26]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(wr_reg1[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(wr_reg1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(wr_reg1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(wr_reg1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(wr_reg1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(wr_reg1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(wr_reg1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(wr_reg1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\wr_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(wr_reg1[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \wr_reg2[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(\wr_reg2[0]_i_2_n_0 ),
        .I5(\wr_reg[2]_0 ),
        .O(\wr_reg2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \wr_reg2[0]_i_2 
       (.I0(axi_awaddr[4]),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(s00_axi_wready),
        .O(\wr_reg2[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\wr_reg2[0]_i_1_n_0 ),
        .Q(\wr_reg[2]_0 ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_coldata_i2c_0_0,coldata_i2c_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "coldata_i2c_v1_0,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_coldata_i2c_0_3
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
  wire scl_out;
  (* IBUF_LOW_PWR *) wire sda_in_n;
  wire sda_in_out;
  (* IBUF_LOW_PWR *) wire sda_in_p;
  (* SLEW = "SLOW" *) wire sda_out_n;
  wire sda_out_out;
  (* SLEW = "SLOW" *) wire sda_out_p;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_coldata_i2c_0_3_coldata_i2c_v1_0 inst
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
        .scl_out(scl_out),
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
