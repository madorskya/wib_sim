
`timescale 1 ps / 1 ps

module bd_tux
(
    output [3:0] coldata_clk_40_p,
    output [3:0] coldata_clk_40_n,
    
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
    input  [3:0] i2c_lvds_l2_sda_c2w_p,
    input  [3:0] i2c_lvds_l2_sda_c2w_n,
    output [3:0] i2c_lvds_l2_sda_w2c_p,
    output [3:0] i2c_lvds_l2_sda_w2c_n,
    
    // timing point signals
    input  ts_cdr_lol,
    input  ts_cdr_los,
    output ts_clk,
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
    input  [31:0] daq_stream [1:0],
    input  [3:0]  daq_stream_k [1:0],
    output clk_240,
    input  cmd_code_idle,
    input  cmd_code_edge,
    input  cmd_code_sync,
    input  cmd_code_act ,
    input  cmd_code_reset,
    input  cmd_code_adc_reset,
    
    input fake_time_stamp_en, // enable fake time stamp
    input [63:0] fake_time_stamp_init
);
    
    wire clk_40;
    // output the same 40M clock to all FEMBs
    OBUFDS clk_40_buf[3:0] (.I(clk_40), .O(coldata_clk_40_p[3:0]), .OB(coldata_clk_40_n[3:0]));

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
        .sda_in_n_1 (i2c_lvds_l2_sda_c2w_n [0]),
        .sda_in_n_2 (i2c_lvds_sda_c2w_n    [1]),
        .sda_in_n_3 (i2c_lvds_l2_sda_c2w_n [1]),
        .sda_in_n_4 (i2c_lvds_sda_c2w_n    [2]),
        .sda_in_n_5 (i2c_lvds_l2_sda_c2w_n [2]),
        .sda_in_n_6 (i2c_lvds_sda_c2w_n    [3]),
        .sda_in_n_7 (i2c_lvds_l2_sda_c2w_n [3]),
        .sda_in_p_0 (i2c_lvds_sda_c2w_p    [0]),
        .sda_in_p_1 (i2c_lvds_l2_sda_c2w_p [0]),
        .sda_in_p_2 (i2c_lvds_sda_c2w_p    [1]),
        .sda_in_p_3 (i2c_lvds_l2_sda_c2w_p [1]),
        .sda_in_p_4 (i2c_lvds_sda_c2w_p    [2]),
        .sda_in_p_5 (i2c_lvds_l2_sda_c2w_p [2]),
        .sda_in_p_6 (i2c_lvds_sda_c2w_p    [3]),
        .sda_in_p_7 (i2c_lvds_l2_sda_c2w_p [3]),
        
        .sda_out_n_0 (i2c_lvds_sda_w2c_n    [0]),
        .sda_out_n_1 (i2c_lvds_l2_sda_w2c_n [0]),
        .sda_out_n_2 (i2c_lvds_sda_w2c_n    [1]),
        .sda_out_n_3 (i2c_lvds_l2_sda_w2c_n [1]),
        .sda_out_n_4 (i2c_lvds_sda_w2c_n    [2]),
        .sda_out_n_5 (i2c_lvds_l2_sda_w2c_n [2]),
        .sda_out_n_6 (i2c_lvds_sda_w2c_n    [3]),
        .sda_out_n_7 (i2c_lvds_l2_sda_w2c_n [3]),
        .sda_out_p_0 (i2c_lvds_sda_w2c_p    [0]),
        .sda_out_p_1 (i2c_lvds_l2_sda_w2c_p [0]),
        .sda_out_p_2 (i2c_lvds_sda_w2c_p    [1]),
        .sda_out_p_3 (i2c_lvds_l2_sda_w2c_p [1]),
        .sda_out_p_4 (i2c_lvds_sda_w2c_p    [2]),
        .sda_out_p_5 (i2c_lvds_l2_sda_w2c_p [2]),
        .sda_out_p_6 (i2c_lvds_sda_w2c_p    [3]),
        .sda_out_p_7 (i2c_lvds_l2_sda_w2c_p [3]),
        
        .ts_cdr_lol   (ts_cdr_lol),
        .ts_cdr_los   (ts_cdr_los),
        .ts_clk       (ts_clk), // this is 62.5 M clock from timing point
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
        .daq_stream0     (daq_stream[0]   ),
        .daq_stream_k0   (daq_stream_k[0] ),
        .daq_stream1     (daq_stream[1]   ),
        .daq_stream_k1   (daq_stream_k[1] ),
        
        .cmd_code_idle      (cmd_code_idle     ),
        .cmd_code_edge      (cmd_code_edge     ),
        .cmd_code_sync      (cmd_code_sync     ),
        .cmd_code_act       (cmd_code_act      ),
        .cmd_code_reset     (cmd_code_reset    ),
        .cmd_code_adc_reset (cmd_code_adc_reset),
        
        .fake_time_stamp_en (fake_time_stamp_en),
        .fake_time_stamp_init (fake_time_stamp_init),
        
        .clk_40 (clk_40)
    );

endmodule

