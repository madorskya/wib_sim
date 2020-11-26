//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
//Date        : Thu Nov 26 03:44:44 2020
//Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (AXI_CLK_OUT,
    AXI_RSTn,
    WIB_LED_tri_o,
    daq_clk,
    daq_spy_full_0,
    daq_spy_full_1,
    daq_spy_reset_0,
    daq_spy_reset_1,
    daq_stream0,
    daq_stream1,
    daq_stream_k0,
    daq_stream_k1,
    fastcommand_out_n_0,
    fastcommand_out_p_0,
    iic_rtl_0_scl_io,
    iic_rtl_0_sda_io,
    reg_ro,
    reg_rw,
    scl_n_0,
    scl_n_1,
    scl_n_2,
    scl_n_3,
    scl_p_0,
    scl_p_1,
    scl_p_2,
    scl_p_3,
    sda_in_n_0,
    sda_in_n_1,
    sda_in_n_2,
    sda_in_n_3,
    sda_in_n_4,
    sda_in_n_5,
    sda_in_n_6,
    sda_in_n_7,
    sda_in_p_0,
    sda_in_p_1,
    sda_in_p_2,
    sda_in_p_3,
    sda_in_p_4,
    sda_in_p_5,
    sda_in_p_6,
    sda_in_p_7,
    sda_out_n_0,
    sda_out_n_1,
    sda_out_n_2,
    sda_out_n_3,
    sda_out_n_4,
    sda_out_n_5,
    sda_out_n_6,
    sda_out_n_7,
    sda_out_p_0,
    sda_out_p_1,
    sda_out_p_2,
    sda_out_p_3,
    sda_out_p_4,
    sda_out_p_5,
    sda_out_p_6,
    sda_out_p_7,
    ts_cdr_lol,
    ts_cdr_los,
    ts_clk,
    ts_evtctr,
    ts_rdy,
    ts_rec_clk_locked,
    ts_rec_d,
    ts_rec_d_clk,
    ts_rst,
    ts_sfp_los,
    ts_stat,
    ts_sync,
    ts_sync_v,
    ts_tstamp);
  output AXI_CLK_OUT;
  output [0:0]AXI_RSTn;
  output [31:0]WIB_LED_tri_o;
  input daq_clk;
  output daq_spy_full_0;
  output daq_spy_full_1;
  input daq_spy_reset_0;
  input daq_spy_reset_1;
  input [31:0]daq_stream0;
  input [31:0]daq_stream1;
  input [3:0]daq_stream_k0;
  input [3:0]daq_stream_k1;
  output fastcommand_out_n_0;
  output fastcommand_out_p_0;
  inout iic_rtl_0_scl_io;
  inout iic_rtl_0_sda_io;
  input [1023:0]reg_ro;
  output [1023:0]reg_rw;
  output [0:0]scl_n_0;
  output [0:0]scl_n_1;
  output [0:0]scl_n_2;
  output [0:0]scl_n_3;
  output [0:0]scl_p_0;
  output [0:0]scl_p_1;
  output [0:0]scl_p_2;
  output [0:0]scl_p_3;
  input sda_in_n_0;
  input sda_in_n_1;
  input sda_in_n_2;
  input sda_in_n_3;
  input sda_in_n_4;
  input sda_in_n_5;
  input sda_in_n_6;
  input sda_in_n_7;
  input sda_in_p_0;
  input sda_in_p_1;
  input sda_in_p_2;
  input sda_in_p_3;
  input sda_in_p_4;
  input sda_in_p_5;
  input sda_in_p_6;
  input sda_in_p_7;
  output sda_out_n_0;
  output sda_out_n_1;
  output sda_out_n_2;
  output sda_out_n_3;
  output sda_out_n_4;
  output sda_out_n_5;
  output sda_out_n_6;
  output sda_out_n_7;
  output sda_out_p_0;
  output sda_out_p_1;
  output sda_out_p_2;
  output sda_out_p_3;
  output sda_out_p_4;
  output sda_out_p_5;
  output sda_out_p_6;
  output sda_out_p_7;
  input ts_cdr_lol;
  input ts_cdr_los;
  output ts_clk;
  output [31:0]ts_evtctr;
  output ts_rdy;
  input ts_rec_clk_locked;
  input ts_rec_d;
  input ts_rec_d_clk;
  output ts_rst;
  input ts_sfp_los;
  output [3:0]ts_stat;
  output [3:0]ts_sync;
  output ts_sync_v;
  output [63:0]ts_tstamp;

  wire AXI_CLK_OUT;
  wire [0:0]AXI_RSTn;
  wire [31:0]WIB_LED_tri_o;
  wire daq_clk;
  wire daq_spy_full_0;
  wire daq_spy_full_1;
  wire daq_spy_reset_0;
  wire daq_spy_reset_1;
  wire [31:0]daq_stream0;
  wire [31:0]daq_stream1;
  wire [3:0]daq_stream_k0;
  wire [3:0]daq_stream_k1;
  wire fastcommand_out_n_0;
  wire fastcommand_out_p_0;
  wire iic_rtl_0_scl_i;
  wire iic_rtl_0_scl_io;
  wire iic_rtl_0_scl_o;
  wire iic_rtl_0_scl_t;
  wire iic_rtl_0_sda_i;
  wire iic_rtl_0_sda_io;
  wire iic_rtl_0_sda_o;
  wire iic_rtl_0_sda_t;
  wire [1023:0]reg_ro;
  wire [1023:0]reg_rw;
  wire [0:0]scl_n_0;
  wire [0:0]scl_n_1;
  wire [0:0]scl_n_2;
  wire [0:0]scl_n_3;
  wire [0:0]scl_p_0;
  wire [0:0]scl_p_1;
  wire [0:0]scl_p_2;
  wire [0:0]scl_p_3;
  wire sda_in_n_0;
  wire sda_in_n_1;
  wire sda_in_n_2;
  wire sda_in_n_3;
  wire sda_in_n_4;
  wire sda_in_n_5;
  wire sda_in_n_6;
  wire sda_in_n_7;
  wire sda_in_p_0;
  wire sda_in_p_1;
  wire sda_in_p_2;
  wire sda_in_p_3;
  wire sda_in_p_4;
  wire sda_in_p_5;
  wire sda_in_p_6;
  wire sda_in_p_7;
  wire sda_out_n_0;
  wire sda_out_n_1;
  wire sda_out_n_2;
  wire sda_out_n_3;
  wire sda_out_n_4;
  wire sda_out_n_5;
  wire sda_out_n_6;
  wire sda_out_n_7;
  wire sda_out_p_0;
  wire sda_out_p_1;
  wire sda_out_p_2;
  wire sda_out_p_3;
  wire sda_out_p_4;
  wire sda_out_p_5;
  wire sda_out_p_6;
  wire sda_out_p_7;
  wire ts_cdr_lol;
  wire ts_cdr_los;
  wire ts_clk;
  wire [31:0]ts_evtctr;
  wire ts_rdy;
  wire ts_rec_clk_locked;
  wire ts_rec_d;
  wire ts_rec_d_clk;
  wire ts_rst;
  wire ts_sfp_los;
  wire [3:0]ts_stat;
  wire [3:0]ts_sync;
  wire ts_sync_v;
  wire [63:0]ts_tstamp;

  design_1 design_1_i
       (.AXI_CLK_OUT(AXI_CLK_OUT),
        .AXI_RSTn(AXI_RSTn),
        .WIB_LED_tri_o(WIB_LED_tri_o),
        .daq_clk(daq_clk),
        .daq_spy_full_0(daq_spy_full_0),
        .daq_spy_full_1(daq_spy_full_1),
        .daq_spy_reset_0(daq_spy_reset_0),
        .daq_spy_reset_1(daq_spy_reset_1),
        .daq_stream0(daq_stream0),
        .daq_stream1(daq_stream1),
        .daq_stream_k0(daq_stream_k0),
        .daq_stream_k1(daq_stream_k1),
        .fastcommand_out_n_0(fastcommand_out_n_0),
        .fastcommand_out_p_0(fastcommand_out_p_0),
        .iic_rtl_0_scl_i(iic_rtl_0_scl_i),
        .iic_rtl_0_scl_o(iic_rtl_0_scl_o),
        .iic_rtl_0_scl_t(iic_rtl_0_scl_t),
        .iic_rtl_0_sda_i(iic_rtl_0_sda_i),
        .iic_rtl_0_sda_o(iic_rtl_0_sda_o),
        .iic_rtl_0_sda_t(iic_rtl_0_sda_t),
        .reg_ro(reg_ro),
        .reg_rw(reg_rw),
        .scl_n_0(scl_n_0),
        .scl_n_1(scl_n_1),
        .scl_n_2(scl_n_2),
        .scl_n_3(scl_n_3),
        .scl_p_0(scl_p_0),
        .scl_p_1(scl_p_1),
        .scl_p_2(scl_p_2),
        .scl_p_3(scl_p_3),
        .sda_in_n_0(sda_in_n_0),
        .sda_in_n_1(sda_in_n_1),
        .sda_in_n_2(sda_in_n_2),
        .sda_in_n_3(sda_in_n_3),
        .sda_in_n_4(sda_in_n_4),
        .sda_in_n_5(sda_in_n_5),
        .sda_in_n_6(sda_in_n_6),
        .sda_in_n_7(sda_in_n_7),
        .sda_in_p_0(sda_in_p_0),
        .sda_in_p_1(sda_in_p_1),
        .sda_in_p_2(sda_in_p_2),
        .sda_in_p_3(sda_in_p_3),
        .sda_in_p_4(sda_in_p_4),
        .sda_in_p_5(sda_in_p_5),
        .sda_in_p_6(sda_in_p_6),
        .sda_in_p_7(sda_in_p_7),
        .sda_out_n_0(sda_out_n_0),
        .sda_out_n_1(sda_out_n_1),
        .sda_out_n_2(sda_out_n_2),
        .sda_out_n_3(sda_out_n_3),
        .sda_out_n_4(sda_out_n_4),
        .sda_out_n_5(sda_out_n_5),
        .sda_out_n_6(sda_out_n_6),
        .sda_out_n_7(sda_out_n_7),
        .sda_out_p_0(sda_out_p_0),
        .sda_out_p_1(sda_out_p_1),
        .sda_out_p_2(sda_out_p_2),
        .sda_out_p_3(sda_out_p_3),
        .sda_out_p_4(sda_out_p_4),
        .sda_out_p_5(sda_out_p_5),
        .sda_out_p_6(sda_out_p_6),
        .sda_out_p_7(sda_out_p_7),
        .ts_cdr_lol(ts_cdr_lol),
        .ts_cdr_los(ts_cdr_los),
        .ts_clk(ts_clk),
        .ts_evtctr(ts_evtctr),
        .ts_rdy(ts_rdy),
        .ts_rec_clk_locked(ts_rec_clk_locked),
        .ts_rec_d(ts_rec_d),
        .ts_rec_d_clk(ts_rec_d_clk),
        .ts_rst(ts_rst),
        .ts_sfp_los(ts_sfp_los),
        .ts_stat(ts_stat),
        .ts_sync(ts_sync),
        .ts_sync_v(ts_sync_v),
        .ts_tstamp(ts_tstamp));
  IOBUF iic_rtl_0_scl_iobuf
       (.I(iic_rtl_0_scl_o),
        .IO(iic_rtl_0_scl_io),
        .O(iic_rtl_0_scl_i),
        .T(iic_rtl_0_scl_t));
  IOBUF iic_rtl_0_sda_iobuf
       (.I(iic_rtl_0_sda_o),
        .IO(iic_rtl_0_sda_io),
        .O(iic_rtl_0_sda_i),
        .T(iic_rtl_0_sda_t));
endmodule
