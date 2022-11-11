`timescale 1ns / 1ps

module timing_endpoint_dcsk
(
    input [15:0] tp_addr,
    input tp_srst,
    input [7:0] bp_io_o,
    input [7:0] bp_io_t,
    output clk_125,
    output cmd_bit_act,
    output cmd_bit_adc_reset,
    output cmd_bit_edge,
    output cmd_bit_idle,
    output cmd_bit_reset,
    output cmd_bit_sync,
    output cmd_bit_trigger,
    input [7:0] cmd_code_act_0,
    input [7:0] cmd_code_adc_reset_0,
    input [7:0] cmd_code_edge_0,
    input [7:0] cmd_code_idle_0,
    input [7:0] cmd_code_reset_0,
    input [7:0] cmd_code_sync_0,
    input [7:0] cmd_code_trigger_0,
    input cmd_en_act_0,
    input cmd_en_adc_reset_0,
    input cmd_en_edge_0,
    input cmd_en_idle_0,
    input cmd_en_reset_0,
    input cmd_en_sync_0,
    input cmd_en_trigger_0,
    input [14:0] cmd_stamp_sync_0,
    input cmd_stamp_sync_en_0,
    input fake_time_stamp_en_0,
    input [63:0] fake_time_stamp_init_0,
    input fast_command_out,
    input sda_in,
    input sda_out,
    input scl,
    input sclk,
    output [3:0] stat_0,
    output ts_clk,
    input ts_clk_sel,
    output ts_rdy,
    input ts_rec_d,
    input ts_rec_d_clk,
    output ts_rst,
    output [7:0] ts_sync,
    output [0:0] ts_sync_v,
    output [63:0] ts_tstamp,
    output [0:0] tx_dis_0,
    output txd_0
);

    wire [1023:0] axi_gpio_1_gpio_io_o;
    wire [7:0] bp_io_o_1;
    wire [7:0] bp_io_t_1;
    wire clk_wiz_0_clk_out1;
    wire [7:0] cmd_code_act_0_1;
    wire [7:0] cmd_code_adc_reset_0_1;
    wire [7:0] cmd_code_edge_0_1;
    wire [7:0] cmd_code_idle_0_1;
    wire [7:0] cmd_code_reset_0_1;
    wire [7:0] cmd_code_sync_0_1;
    wire [7:0] cmd_code_trigger;
    wire cmd_en_act_0_1;
    wire cmd_en_adc_reset_0_1;
    wire cmd_en_edge_0_1;
    wire cmd_en_idle_0_1;
    wire cmd_en_reset_0_1;
    wire cmd_en_sync_0_1;
    wire cmd_en_trigger_0_1;
    wire [14:0] cmd_stamp_sync_0_1;
    wire cmd_stamp_sync_en_0_1;
    wire fake_time_stamp_en_0_1;
    wire [63:0] fake_time_stamp_init_0_1;
    wire pdts_endpoint_wrapper_0_clkx2;
    wire pdts_endpoint_wrapper_0_rdy;
    wire pdts_endpoint_wrapper_0_rst;
    wire [3:0] pdts_endpoint_wrapper_0_stat;
    wire [7:0] pdts_endpoint_wrapper_0_sync;
    wire pdts_endpoint_wrapper_0_sync_stb;
    wire [63:0] pdts_endpoint_wrapper_0_tstamp;
    wire pdts_endpoint_wrapper_0_tx_dis;
    wire pdts_endpoint_wrapper_0_txd;
    wire sclk_1;
    wire ts_clk_sel_1;
    wire ts_rec_d_1;
    wire ts_rec_d_clk_1;
    wire ts_reclock_0_cmd_bit_act;
    wire ts_reclock_0_cmd_bit_adc_reset;
    wire ts_reclock_0_cmd_bit_edge;
    wire ts_reclock_0_cmd_bit_idle;
    wire ts_reclock_0_cmd_bit_reset;
    wire ts_reclock_0_cmd_bit_sync;
    wire ts_reclock_0_cmd_bit_trigger;
    wire ts_reclock_0_rdy_out;
    wire ts_reclock_0_rst_out;
    wire [3:0] ts_reclock_0_stat_out;
    wire [7:0] ts_reclock_0_sync_out;
    wire ts_reclock_0_sync_stb_out;
    wire [63:0] ts_reclock_0_tstamp_out;
    wire ts_reclock_0_ts_valid;
    
    assign bp_io_o_1 = bp_io_o[7:0];
    assign bp_io_t_1 = bp_io_t[7:0];
    assign clk_125 = pdts_endpoint_wrapper_0_clkx2;
    assign cmd_bit_act = ts_reclock_0_cmd_bit_act;
    assign cmd_bit_adc_reset = ts_reclock_0_cmd_bit_adc_reset;
    assign cmd_bit_edge = ts_reclock_0_cmd_bit_edge;
    assign cmd_bit_idle = ts_reclock_0_cmd_bit_idle;
    assign cmd_bit_reset = ts_reclock_0_cmd_bit_reset;
    assign cmd_bit_sync = ts_reclock_0_cmd_bit_sync;
    assign cmd_bit_trigger = ts_reclock_0_cmd_bit_trigger;
    assign cmd_code_act_0_1 = cmd_code_act_0[7:0];
    assign cmd_code_adc_reset_0_1 = cmd_code_adc_reset_0[7:0];
    assign cmd_code_edge_0_1 = cmd_code_edge_0[7:0];
    assign cmd_code_idle_0_1 = cmd_code_idle_0[7:0];
    assign cmd_code_reset_0_1 = cmd_code_reset_0[7:0];
    assign cmd_code_sync_0_1 = cmd_code_sync_0[7:0];
    assign cmd_code_trigger = cmd_code_trigger_0[7:0];
    assign cmd_en_act_0_1 = cmd_en_act_0;
    assign cmd_en_adc_reset_0_1 = cmd_en_adc_reset_0;
    assign cmd_en_edge_0_1 = cmd_en_edge_0;
    assign cmd_en_idle_0_1 = cmd_en_idle_0;
    assign cmd_en_reset_0_1 = cmd_en_reset_0;
    assign cmd_en_sync_0_1 = cmd_en_sync_0;
    assign cmd_en_trigger_0_1 = cmd_en_trigger_0;
    assign cmd_stamp_sync_0_1 = cmd_stamp_sync_0[14:0];
    assign cmd_stamp_sync_en_0_1 = cmd_stamp_sync_en_0;
    assign fake_time_stamp_en_0_1 = fake_time_stamp_en_0;
    assign fake_time_stamp_init_0_1 = fake_time_stamp_init_0[63:0];
    assign sclk_1 = sclk;
    assign stat_0[3:0] = ts_reclock_0_stat_out;
    assign ts_clk = clk_wiz_0_clk_out1;
    assign ts_clk_sel_1 = ts_clk_sel;
    assign ts_rdy = ts_reclock_0_rdy_out;
    assign ts_rec_d_1 = ts_rec_d;
    assign ts_rec_d_clk_1 = ts_rec_d_clk;
    assign ts_rst = ts_reclock_0_rst_out;
    assign ts_sync[7:0] = ts_reclock_0_sync_out;
    assign ts_sync_v[0] = 1'b0;
    assign ts_tstamp[63:0] = ts_reclock_0_tstamp_out;
    assign tx_dis_0[0] = pdts_endpoint_wrapper_0_tx_dis;
    assign txd_0 = pdts_endpoint_wrapper_0_txd;
    
    timing_ila t_ila
    (
        .clk     (clk_wiz_0_clk_out1),
        .probe0  (ts_reclock_0_stat_out),
        .probe1  (ts_reclock_0_rst_out),
        .probe2  (ts_reclock_0_rdy_out),
        .probe3  (ts_reclock_0_sync_out),
        .probe4  (ts_reclock_0_sync_stb_out),
        .probe5  (sda_out),
        .probe6  (ts_reclock_0_tstamp_out),
        .probe7  (ts_reclock_0_ts_valid),
        .probe8  (ts_reclock_0_cmd_bit_idle),
        .probe9  (ts_reclock_0_cmd_bit_edge),
        .probe10 (ts_reclock_0_cmd_bit_sync),
        .probe11 (ts_reclock_0_cmd_bit_act),
        .probe12 (ts_reclock_0_cmd_bit_reset),
        .probe13 (ts_reclock_0_cmd_bit_adc_reset),
        .probe14 (scl),
        .probe15 (fast_command_out),
        .probe16 (pdts_endpoint_wrapper_0_txd),
        .probe17 (pdts_endpoint_wrapper_0_tx_dis),
        .probe18 (bp_io_t_1),
        .probe19 (bp_io_o_1),
        .probe20 (sda_in)
    );
    
    pdts_endpoint_wrapper pdts_endpoint_wrapper_i
    (
        .addr       (tp_addr),
        .clk        (clk_wiz_0_clk_out1),
        .clk2x      (pdts_endpoint_wrapper_0_clkx2),
        .rdy        (pdts_endpoint_wrapper_0_rdy),
        .rec_clk    (ts_rec_d_clk_1),
        .rec_d      (ts_rec_d_1),
        .rst        (pdts_endpoint_wrapper_0_rst),
        .sclk       (sclk_1),
        .srst       (tp_srst),
        .stat       (pdts_endpoint_wrapper_0_stat),
        .sync       (pdts_endpoint_wrapper_0_sync),
        .sync_stb   (pdts_endpoint_wrapper_0_sync_stb),
        .ts_clk_sel (ts_clk_sel_1),
        .tstamp     (pdts_endpoint_wrapper_0_tstamp),
        .tx_dis     (pdts_endpoint_wrapper_0_tx_dis),
        .txd        (pdts_endpoint_wrapper_0_txd)
    );
    
    ts_reclock ts_reclock_i
    (
        .clk62p5              (clk_wiz_0_clk_out1),
        .cmd_bit_act          (ts_reclock_0_cmd_bit_act),
        .cmd_bit_adc_reset    (ts_reclock_0_cmd_bit_adc_reset),
        .cmd_bit_edge         (ts_reclock_0_cmd_bit_edge),
        .cmd_bit_idle         (ts_reclock_0_cmd_bit_idle),
        .cmd_bit_reset        (ts_reclock_0_cmd_bit_reset),
        .cmd_bit_sync         (ts_reclock_0_cmd_bit_sync),
        .cmd_bit_trigger      (ts_reclock_0_cmd_bit_trigger),
        .cmd_code_act         (cmd_code_act_0_1),
        .cmd_code_adc_reset   (cmd_code_adc_reset_0_1),
        .cmd_code_edge        (cmd_code_edge_0_1),
        .cmd_code_idle        (cmd_code_idle_0_1),
        .cmd_code_reset       (cmd_code_reset_0_1),
        .cmd_code_sync        (cmd_code_sync_0_1),
        .cmd_code_trigger     (cmd_code_trigger),
        .cmd_en_act           (cmd_en_act_0_1),
        .cmd_en_adc_reset     (cmd_en_adc_reset_0_1),
        .cmd_en_edge          (cmd_en_edge_0_1),
        .cmd_en_idle          (cmd_en_idle_0_1),
        .cmd_en_reset         (cmd_en_reset_0_1),
        .cmd_en_sync          (cmd_en_sync_0_1),
        .cmd_en_trigger       (cmd_en_trigger_0_1),
        .cmd_stamp_sync       (cmd_stamp_sync_0_1),
        .cmd_stamp_sync_en    (cmd_stamp_sync_en_0_1),
        .fake_time_stamp_en   (fake_time_stamp_en_0_1),
        .fake_time_stamp_init (fake_time_stamp_init_0_1),
        .rdy_in               (pdts_endpoint_wrapper_0_rdy),
        .rdy_out              (ts_reclock_0_rdy_out),
        .rst_in               (pdts_endpoint_wrapper_0_rst),
        .rst_out              (ts_reclock_0_rst_out),
        .stat_in              (pdts_endpoint_wrapper_0_stat),
        .stat_out             (ts_reclock_0_stat_out),
        .sync_in              (pdts_endpoint_wrapper_0_sync),
        .sync_out             (ts_reclock_0_sync_out),
        .sync_stb_in          (pdts_endpoint_wrapper_0_sync_stb),
        .sync_stb_out         (ts_reclock_0_sync_stb_out),
        .ts_valid             (ts_reclock_0_ts_valid),
        .tstamp_in            (pdts_endpoint_wrapper_0_tstamp),
        .tstamp_out           (ts_reclock_0_tstamp_out)
    );
    
endmodule
