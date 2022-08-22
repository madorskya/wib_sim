//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Mon Aug 22 13:28:40 2022
//Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (AXI_CLK_OUT,
    AXI_RSTn,
    WIB_LED_tri_o,
    bp_io_o,
    bp_io_t,
    clk_125,
    cmd_code_act,
    cmd_code_adc_reset,
    cmd_code_edge,
    cmd_code_idle,
    cmd_code_reset,
    cmd_code_sync,
    cmd_code_trigger,
    cmd_stamp_sync,
    cmd_stamp_sync_en,
    daq_clk,
    daq_data_type0,
    daq_data_type1,
    daq_spy_full_0,
    daq_spy_full_1,
    daq_spy_reset_0,
    daq_spy_reset_1,
    daq_stream0,
    daq_stream1,
    daq_stream_k0,
    daq_stream_k1,
    fake_time_stamp_en,
    fake_time_stamp_init,
    fastcommand_out_n_0,
    fastcommand_out_p_0,
    iic_rtl_0_scl_io,
    iic_rtl_0_sda_io,
    pl_clk_10M,
    ps_en_in,
    ps_locked,
    ps_reset,
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
    sda_in_n_2,
    sda_in_n_4,
    sda_in_n_6,
    sda_in_p_0,
    sda_in_p_2,
    sda_in_p_4,
    sda_in_p_6,
    sda_out_n_0,
    sda_out_n_2,
    sda_out_n_4,
    sda_out_n_6,
    sda_out_p_0,
    sda_out_p_2,
    sda_out_p_4,
    sda_out_p_6,
    spy_addr_0,
    spy_addr_1,
    spy_rec_time,
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
    ts_tstamp,
    ts_valid,
    tx_dis,
    txd);
  output AXI_CLK_OUT;
  output [0:0]AXI_RSTn;
  output [31:0]WIB_LED_tri_o;
  input [7:0]bp_io_o;
  input [7:0]bp_io_t;
  output clk_125;
  input [7:0]cmd_code_act;
  input [7:0]cmd_code_adc_reset;
  input [7:0]cmd_code_edge;
  input [7:0]cmd_code_idle;
  input [7:0]cmd_code_reset;
  input [7:0]cmd_code_sync;
  input [7:0]cmd_code_trigger;
  input [14:0]cmd_stamp_sync;
  input cmd_stamp_sync_en;
  input daq_clk;
  input [1:0]daq_data_type0;
  input [1:0]daq_data_type1;
  output daq_spy_full_0;
  output daq_spy_full_1;
  input daq_spy_reset_0;
  input daq_spy_reset_1;
  input [31:0]daq_stream0;
  input [31:0]daq_stream1;
  input [3:0]daq_stream_k0;
  input [3:0]daq_stream_k1;
  input fake_time_stamp_en;
  input [63:0]fake_time_stamp_init;
  output fastcommand_out_n_0;
  output fastcommand_out_p_0;
  inout iic_rtl_0_scl_io;
  inout iic_rtl_0_sda_io;
  output pl_clk_10M;
  input ps_en_in;
  output ps_locked;
  input ps_reset;
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
  input sda_in_n_2;
  input sda_in_n_4;
  input sda_in_n_6;
  input sda_in_p_0;
  input sda_in_p_2;
  input sda_in_p_4;
  input sda_in_p_6;
  output sda_out_n_0;
  output sda_out_n_2;
  output sda_out_n_4;
  output sda_out_n_6;
  output sda_out_p_0;
  output sda_out_p_2;
  output sda_out_p_4;
  output sda_out_p_6;
  output [19:0]spy_addr_0;
  output [19:0]spy_addr_1;
  input [17:0]spy_rec_time;
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
  output [0:0]ts_sync_v;
  output [63:0]ts_tstamp;
  output ts_valid;
  output [0:0]tx_dis;
  output txd;

  wire AXI_CLK_OUT;
  wire [0:0]AXI_RSTn;
  wire [31:0]WIB_LED_tri_o;
  wire [7:0]bp_io_o;
  wire [7:0]bp_io_t;
  wire clk_125;
  wire [7:0]cmd_code_act;
  wire [7:0]cmd_code_adc_reset;
  wire [7:0]cmd_code_edge;
  wire [7:0]cmd_code_idle;
  wire [7:0]cmd_code_reset;
  wire [7:0]cmd_code_sync;
  wire [7:0]cmd_code_trigger;
  wire [14:0]cmd_stamp_sync;
  wire cmd_stamp_sync_en;
  wire daq_clk;
  wire [1:0]daq_data_type0;
  wire [1:0]daq_data_type1;
  wire daq_spy_full_0;
  wire daq_spy_full_1;
  wire daq_spy_reset_0;
  wire daq_spy_reset_1;
  wire [31:0]daq_stream0;
  wire [31:0]daq_stream1;
  wire [3:0]daq_stream_k0;
  wire [3:0]daq_stream_k1;
  wire fake_time_stamp_en;
  wire [63:0]fake_time_stamp_init;
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
  wire pl_clk_10M;
  wire ps_en_in;
  wire ps_locked;
  wire ps_reset;
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
  wire sda_in_n_2;
  wire sda_in_n_4;
  wire sda_in_n_6;
  wire sda_in_p_0;
  wire sda_in_p_2;
  wire sda_in_p_4;
  wire sda_in_p_6;
  wire sda_out_n_0;
  wire sda_out_n_2;
  wire sda_out_n_4;
  wire sda_out_n_6;
  wire sda_out_p_0;
  wire sda_out_p_2;
  wire sda_out_p_4;
  wire sda_out_p_6;
  wire [19:0]spy_addr_0;
  wire [19:0]spy_addr_1;
  wire [17:0]spy_rec_time;
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
  wire [0:0]ts_sync_v;
  wire [63:0]ts_tstamp;
  wire ts_valid;
  wire [0:0]tx_dis;
  wire txd;

  design_1 design_1_i
       (.AXI_CLK_OUT(AXI_CLK_OUT),
        .AXI_RSTn(AXI_RSTn),
        .WIB_LED_tri_o(WIB_LED_tri_o),
        .bp_io_o(bp_io_o),
        .bp_io_t(bp_io_t),
        .clk_125(clk_125),
        .cmd_code_act(cmd_code_act),
        .cmd_code_adc_reset(cmd_code_adc_reset),
        .cmd_code_edge(cmd_code_edge),
        .cmd_code_idle(cmd_code_idle),
        .cmd_code_reset(cmd_code_reset),
        .cmd_code_sync(cmd_code_sync),
        .cmd_code_trigger(cmd_code_trigger),
        .cmd_stamp_sync(cmd_stamp_sync),
        .cmd_stamp_sync_en(cmd_stamp_sync_en),
        .daq_clk(daq_clk),
        .daq_data_type0(daq_data_type0),
        .daq_data_type1(daq_data_type1),
        .daq_spy_full_0(daq_spy_full_0),
        .daq_spy_full_1(daq_spy_full_1),
        .daq_spy_reset_0(daq_spy_reset_0),
        .daq_spy_reset_1(daq_spy_reset_1),
        .daq_stream0(daq_stream0),
        .daq_stream1(daq_stream1),
        .daq_stream_k0(daq_stream_k0),
        .daq_stream_k1(daq_stream_k1),
        .fake_time_stamp_en(fake_time_stamp_en),
        .fake_time_stamp_init(fake_time_stamp_init),
        .fastcommand_out_n_0(fastcommand_out_n_0),
        .fastcommand_out_p_0(fastcommand_out_p_0),
        .iic_rtl_0_scl_i(iic_rtl_0_scl_i),
        .iic_rtl_0_scl_o(iic_rtl_0_scl_o),
        .iic_rtl_0_scl_t(iic_rtl_0_scl_t),
        .iic_rtl_0_sda_i(iic_rtl_0_sda_i),
        .iic_rtl_0_sda_o(iic_rtl_0_sda_o),
        .iic_rtl_0_sda_t(iic_rtl_0_sda_t),
        .pl_clk_10M(pl_clk_10M),
        .ps_en_in(ps_en_in),
        .ps_locked(ps_locked),
        .ps_reset(ps_reset),
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
        .sda_in_n_2(sda_in_n_2),
        .sda_in_n_4(sda_in_n_4),
        .sda_in_n_6(sda_in_n_6),
        .sda_in_p_0(sda_in_p_0),
        .sda_in_p_2(sda_in_p_2),
        .sda_in_p_4(sda_in_p_4),
        .sda_in_p_6(sda_in_p_6),
        .sda_out_n_0(sda_out_n_0),
        .sda_out_n_2(sda_out_n_2),
        .sda_out_n_4(sda_out_n_4),
        .sda_out_n_6(sda_out_n_6),
        .sda_out_p_0(sda_out_p_0),
        .sda_out_p_2(sda_out_p_2),
        .sda_out_p_4(sda_out_p_4),
        .sda_out_p_6(sda_out_p_6),
        .spy_addr_0(spy_addr_0),
        .spy_addr_1(spy_addr_1),
        .spy_rec_time(spy_rec_time),
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
        .ts_tstamp(ts_tstamp),
        .ts_valid(ts_valid),
        .tx_dis(tx_dis),
        .txd(txd));
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
