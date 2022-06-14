
`timescale 1 ps / 1 ps

module bd_tux
(
    // coldata fast command
    output fastcommand_out_p,
    output fastcommand_out_n,
    
    // coldata I2C
    output [3:0] i2c_lvds_scl_p,
    output [3:0] i2c_lvds_scl_n,
    input  [3:0] i2c_lvds_sda_c2w_p,
    input  [3:0] i2c_lvds_sda_c2w_n,
    output [3:0] i2c_lvds_sda_w2c_p,
    output [3:0] i2c_lvds_sda_w2c_n,
    
    // timing point signals
    input  ts_cdr_lol,
    input  ts_cdr_los,
    output ts_clk,
    output clk_125,
    output [31:0]ts_evtctr,
    output ts_rdy,
    input  ts_rec_clk_locked,
    input  ts_rec_d,
    input  ts_rec_d_clk,
    output ts_rst,
    input  ts_sfp_los,
    output [3:0] ts_sync,
    output ts_sync_v,
    output [63:0] ts_tstamp,
    output [3:0]  ts_stat,
    output txd,
    output tx_dis,
    input  [7:0] bp_io_t, // tri-states for bp_io pins
    input  [7:0] bp_io_o, // actual states of bp_io pins
    
    output        axi_clk_out,
    output        axi_rstn,
    
    output [1023:0] reg_rw,
    input  [1023:0] reg_ro,

    input  iic_rtl_0_scl_i,
    output iic_rtl_0_scl_o,
    output iic_rtl_0_scl_t,
    input  iic_rtl_0_sda_i,
    output iic_rtl_0_sda_o,
    output iic_rtl_0_sda_t,
    
    input         daq_clk,
    output [1:0]  daq_spy_full,
    input  [1:0]  daq_spy_reset,
    input  [17:0] spy_rec_time,
    output [19:0] spy_addr [1:0],
    input  [31:0] daq_stream [1:0],
    input  [3:0]  daq_stream_k [1:0],
    input  [1:0]  daq_data_type [1:0], // data_type flags for spy memory
    input [7:0] cmd_code_idle,
    input [7:0] cmd_code_edge,
    input [7:0] cmd_code_sync,
    input [7:0] cmd_code_act ,
    input [7:0] cmd_code_reset,
    input [7:0] cmd_code_adc_reset,
    input [7:0] cmd_code_trigger,
    
    input fake_time_stamp_en, // enable fake time stamp
    input [63:0] fake_time_stamp_init,
    input [14:0] cmd_stamp_sync,
    input        cmd_stamp_sync_en
);
    
    design_1 design_1_i
    (
        .fastcommand_out_n_0(fastcommand_out_n),
        .fastcommand_out_p_0(fastcommand_out_p),
        
        .scl_n_0 (i2c_lvds_scl_n [0]),
        .scl_n_1 (i2c_lvds_scl_n [1]),
        .scl_n_2 (i2c_lvds_scl_n [2]),
        .scl_n_3 (i2c_lvds_scl_n [3]),
        .scl_p_0 (i2c_lvds_scl_p [0]),
        .scl_p_1 (i2c_lvds_scl_p [1]),
        .scl_p_2 (i2c_lvds_scl_p [2]),
        .scl_p_3 (i2c_lvds_scl_p [3]),
        
        .sda_in_n_0 (i2c_lvds_sda_c2w_n    [0]),
        .sda_in_n_2 (i2c_lvds_sda_c2w_n    [1]),
        .sda_in_n_4 (i2c_lvds_sda_c2w_n    [2]),
        .sda_in_n_6 (i2c_lvds_sda_c2w_n    [3]),
        .sda_in_p_0 (i2c_lvds_sda_c2w_p    [0]),
        .sda_in_p_2 (i2c_lvds_sda_c2w_p    [1]),
        .sda_in_p_4 (i2c_lvds_sda_c2w_p    [2]),
        .sda_in_p_6 (i2c_lvds_sda_c2w_p    [3]),
        
        .sda_out_n_0 (i2c_lvds_sda_w2c_n    [0]),
        .sda_out_n_2 (i2c_lvds_sda_w2c_n    [1]),
        .sda_out_n_4 (i2c_lvds_sda_w2c_n    [2]),
        .sda_out_n_6 (i2c_lvds_sda_w2c_n    [3]),
        .sda_out_p_0 (i2c_lvds_sda_w2c_p    [0]),
        .sda_out_p_2 (i2c_lvds_sda_w2c_p    [1]),
        .sda_out_p_4 (i2c_lvds_sda_w2c_p    [2]),
        .sda_out_p_6 (i2c_lvds_sda_w2c_p    [3]),
        
        .ts_cdr_lol   (ts_cdr_lol),
        .ts_cdr_los   (ts_cdr_los),
        .ts_clk       (ts_clk), // this is 62.5 M clock from timing point
        .clk_125      (clk_125),
        .ts_evtctr    (ts_evtctr),
        .ts_rdy       (ts_rdy),
        .ts_rec_clk_locked (ts_rec_clk_locked),
        .ts_rec_d     (ts_rec_d),
        .ts_rec_d_clk (ts_rec_d_clk),
        .ts_rst       (ts_rst),
        .ts_sfp_los   (ts_sfp_los),
        .ts_sync      (ts_sync),
        .ts_sync_v    (ts_sync_v),
        .ts_tstamp    (ts_tstamp),
        .ts_stat      (ts_stat),
        .txd          (txd),
        .tx_dis       (tx_dis),
        .bp_io_t      (bp_io_t),
        .bp_io_o      (bp_io_o),
        
        .AXI_CLK_OUT  (axi_clk_out),
        .AXI_RSTn     (axi_rstn),
        .reg_rw       (reg_rw),
        .reg_ro       (reg_ro),

        .iic_rtl_0_scl_i (iic_rtl_0_scl_i),
        .iic_rtl_0_scl_o (iic_rtl_0_scl_o),
        .iic_rtl_0_scl_t (iic_rtl_0_scl_t),
        .iic_rtl_0_sda_i (iic_rtl_0_sda_i),
        .iic_rtl_0_sda_o (iic_rtl_0_sda_o),
        .iic_rtl_0_sda_t (iic_rtl_0_sda_t),
        
        .daq_clk         (daq_clk         ),
        .daq_spy_full_0  (daq_spy_full[0] ),
        .daq_spy_full_1  (daq_spy_full[1] ),
        .daq_spy_reset_0 (daq_spy_reset[0]),
        .daq_spy_reset_1 (daq_spy_reset[1]),
        .spy_rec_time    (spy_rec_time),
        .spy_addr_0      (spy_addr [0]),
        .spy_addr_1      (spy_addr [1]),
        .daq_stream0     (daq_stream[0]   ),
        .daq_stream_k0   (daq_stream_k[0] ),
        .daq_stream1     (daq_stream[1]   ),
        .daq_stream_k1   (daq_stream_k[1] ),
        .daq_data_type0  (daq_data_type[0]),
        .daq_data_type1  (daq_data_type[1]),
        
        .cmd_code_idle      (cmd_code_idle     ),
        .cmd_code_edge      (cmd_code_edge     ),
        .cmd_code_sync      (cmd_code_sync     ),
        .cmd_code_act       (cmd_code_act      ),
        .cmd_code_reset     (cmd_code_reset    ),
        .cmd_code_adc_reset (cmd_code_adc_reset),
        .cmd_code_trigger   (cmd_code_trigger  ),
        
        .fake_time_stamp_en (fake_time_stamp_en),
        .fake_time_stamp_init (fake_time_stamp_init),
        .cmd_stamp_sync    (cmd_stamp_sync),
        .cmd_stamp_sync_en (cmd_stamp_sync_en)
    );

endmodule

