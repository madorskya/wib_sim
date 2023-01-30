//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
//Date        : Mon Jan 30 16:23:38 2023
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
    cmd_bit_act,
    cmd_bit_adc_reset,
    cmd_bit_edge,
    cmd_bit_idle,
    cmd_bit_reset,
    cmd_bit_sync,
    cmd_bit_trigger,
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
    fastcommand_out,
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
    scl_out,
    scl_p_0,
    scl_p_1,
    scl_p_2,
    scl_p_3,
    sda_in_n_0,
    sda_in_n_2,
    sda_in_n_4,
    sda_in_n_6,
    sda_in_out,
    sda_in_p_0,
    sda_in_p_2,
    sda_in_p_4,
    sda_in_p_6,
    sda_out_n_0,
    sda_out_n_2,
    sda_out_n_4,
    sda_out_n_6,
    sda_out_out,
    sda_out_p_0,
    sda_out_p_2,
    sda_out_p_4,
    sda_out_p_6,
    spy_addr_0,
    spy_addr_1,
    spy_rec_time,
    ts_clk,
    ts_tstamp);
  output AXI_CLK_OUT;
  output [0:0]AXI_RSTn;
  output [31:0]WIB_LED_tri_o;
  input cmd_bit_act;
  input cmd_bit_adc_reset;
  input cmd_bit_edge;
  input cmd_bit_idle;
  input cmd_bit_reset;
  input cmd_bit_sync;
  input cmd_bit_trigger;
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
  output fastcommand_out;
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
  output [0:0]scl_out;
  output [0:0]scl_p_0;
  output [0:0]scl_p_1;
  output [0:0]scl_p_2;
  output [0:0]scl_p_3;
  input sda_in_n_0;
  input sda_in_n_2;
  input sda_in_n_4;
  input sda_in_n_6;
  output sda_in_out;
  input sda_in_p_0;
  input sda_in_p_2;
  input sda_in_p_4;
  input sda_in_p_6;
  output sda_out_n_0;
  output sda_out_n_2;
  output sda_out_n_4;
  output sda_out_n_6;
  output sda_out_out;
  output sda_out_p_0;
  output sda_out_p_2;
  output sda_out_p_4;
  output sda_out_p_6;
  output [19:0]spy_addr_0;
  output [19:0]spy_addr_1;
  input [17:0]spy_rec_time;
  input ts_clk;
  input [63:0]ts_tstamp;

  wire AXI_CLK_OUT;
  wire [0:0]AXI_RSTn;
  wire [31:0]WIB_LED_tri_o;
  wire cmd_bit_act;
  wire cmd_bit_adc_reset;
  wire cmd_bit_edge;
  wire cmd_bit_idle;
  wire cmd_bit_reset;
  wire cmd_bit_sync;
  wire cmd_bit_trigger;
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
  wire fastcommand_out;
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
  wire [0:0]scl_out;
  wire [0:0]scl_p_0;
  wire [0:0]scl_p_1;
  wire [0:0]scl_p_2;
  wire [0:0]scl_p_3;
  wire sda_in_n_0;
  wire sda_in_n_2;
  wire sda_in_n_4;
  wire sda_in_n_6;
  wire sda_in_out;
  wire sda_in_p_0;
  wire sda_in_p_2;
  wire sda_in_p_4;
  wire sda_in_p_6;
  wire sda_out_n_0;
  wire sda_out_n_2;
  wire sda_out_n_4;
  wire sda_out_n_6;
  wire sda_out_out;
  wire sda_out_p_0;
  wire sda_out_p_2;
  wire sda_out_p_4;
  wire sda_out_p_6;
  wire [19:0]spy_addr_0;
  wire [19:0]spy_addr_1;
  wire [17:0]spy_rec_time;
  wire ts_clk;
  wire [63:0]ts_tstamp;

  design_1 design_1_i
       (.AXI_CLK_OUT(AXI_CLK_OUT),
        .AXI_RSTn(AXI_RSTn),
        .WIB_LED_tri_o(WIB_LED_tri_o),
        .cmd_bit_act(cmd_bit_act),
        .cmd_bit_adc_reset(cmd_bit_adc_reset),
        .cmd_bit_edge(cmd_bit_edge),
        .cmd_bit_idle(cmd_bit_idle),
        .cmd_bit_reset(cmd_bit_reset),
        .cmd_bit_sync(cmd_bit_sync),
        .cmd_bit_trigger(cmd_bit_trigger),
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
        .fastcommand_out(fastcommand_out),
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
        .scl_out(scl_out),
        .scl_p_0(scl_p_0),
        .scl_p_1(scl_p_1),
        .scl_p_2(scl_p_2),
        .scl_p_3(scl_p_3),
        .sda_in_n_0(sda_in_n_0),
        .sda_in_n_2(sda_in_n_2),
        .sda_in_n_4(sda_in_n_4),
        .sda_in_n_6(sda_in_n_6),
        .sda_in_out(sda_in_out),
        .sda_in_p_0(sda_in_p_0),
        .sda_in_p_2(sda_in_p_2),
        .sda_in_p_4(sda_in_p_4),
        .sda_in_p_6(sda_in_p_6),
        .sda_out_n_0(sda_out_n_0),
        .sda_out_n_2(sda_out_n_2),
        .sda_out_n_4(sda_out_n_4),
        .sda_out_n_6(sda_out_n_6),
        .sda_out_out(sda_out_out),
        .sda_out_p_0(sda_out_p_0),
        .sda_out_p_2(sda_out_p_2),
        .sda_out_p_4(sda_out_p_4),
        .sda_out_p_6(sda_out_p_6),
        .spy_addr_0(spy_addr_0),
        .spy_addr_1(spy_addr_1),
        .spy_rec_time(spy_rec_time),
        .ts_clk(ts_clk),
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
