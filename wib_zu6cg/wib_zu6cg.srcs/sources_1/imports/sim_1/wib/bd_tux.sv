
`timescale 1 ps / 1 ps

module bd_tux
(
    // coldata fast command
    output fastcommand_out_p,
    output fastcommand_out_n,
    output fastcommand_out,
    
    // coldata I2C
    output [3:0] i2c_lvds_scl_p,
    output [3:0] i2c_lvds_scl_n,
    input  [3:0] i2c_lvds_sda_c2w_p,
    input  [3:0] i2c_lvds_sda_c2w_n,
    output [3:0] i2c_lvds_sda_w2c_p,
    output [3:0] i2c_lvds_sda_w2c_n,
    
    // timing point signals
    input ts_clk,
    input ts_rst,
    input [63:0] ts_tstamp,
    
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
    
    output [1:0]  daq_spy_full,
    input  [1:0]  daq_spy_reset,
    input  [17:0] spy_rec_time,
    output [19:0] spy_addr [1:0],
    
    input cmd_bit_act,
    input cmd_bit_adc_reset,
    input cmd_bit_edge,
    input cmd_bit_idle,
    input cmd_bit_reset,
    input cmd_bit_sync,
    input cmd_bit_trigger,

    // i2c clock phase adjustment 
    input ps_reset,
    input ps_en_in,
    output ps_locked,
    
    output pl_clk_10M,
    
    output sda_in_out,
    output sda_out_out,
    output scl_out,

    input        ddi_clk,
    input [63:0] ddi_d [7:0],
    input [7:0]  ddi_d_last,
    input [7:0]  ddi_d_valid,
        
    input  deimos_clk_n,
    input  deimos_clk_p,
    input  deimos_rxn,
    input  deimos_rxp,
    output deimos_txn,
    output deimos_txp
);
    
    design_1 design_1_i
    (
        .fastcommand_out_n_0 (fastcommand_out_n),                                                                                                                         
        .fastcommand_out_p_0 (fastcommand_out_p),                                                                                                                         
        .fastcommand_out     (fastcommand_out),                                                                                                                           
                                                                                                                                                                          
        .scl_n_0             (i2c_lvds_scl_n [0]),                                                                                                                        
        .scl_n_1             (i2c_lvds_scl_n [1]),                                                                                                                        
        .scl_n_2             (i2c_lvds_scl_n [2]),                                                                                                                        
        .scl_n_3             (i2c_lvds_scl_n [3]),                                                                                                                        
        .scl_p_0             (i2c_lvds_scl_p [0]),                                                                                                                        
        .scl_p_1             (i2c_lvds_scl_p [1]),                                                                                                                        
        .scl_p_2             (i2c_lvds_scl_p [2]),                                                                                                                        
        .scl_p_3             (i2c_lvds_scl_p [3]),                                                                                                                        
                                                                                                                                                                          
        .sda_in_n_0          (i2c_lvds_sda_c2w_n    [0]),                                                                                                                 
        .sda_in_n_2          (i2c_lvds_sda_c2w_n    [1]),                                                                                                                 
        .sda_in_n_4          (i2c_lvds_sda_c2w_n    [2]),                                                                                                                 
        .sda_in_n_6          (i2c_lvds_sda_c2w_n    [3]),                                                                                                                 
        .sda_in_p_0          (i2c_lvds_sda_c2w_p    [0]),                                                                                                                 
        .sda_in_p_2          (i2c_lvds_sda_c2w_p    [1]),                                                                                                                 
        .sda_in_p_4          (i2c_lvds_sda_c2w_p    [2]),                                                                                                                 
        .sda_in_p_6          (i2c_lvds_sda_c2w_p    [3]),                                                                                                                 
                                                                                                                                                                          
        .sda_out_n_0         (i2c_lvds_sda_w2c_n    [0]),                                                                                                                 
        .sda_out_n_2         (i2c_lvds_sda_w2c_n    [1]),
        .sda_out_n_4         (i2c_lvds_sda_w2c_n    [2]),
        .sda_out_n_6         (i2c_lvds_sda_w2c_n    [3]),
        .sda_out_p_0         (i2c_lvds_sda_w2c_p    [0]),
        .sda_out_p_2         (i2c_lvds_sda_w2c_p    [1]),
        .sda_out_p_4         (i2c_lvds_sda_w2c_p    [2]),
        .sda_out_p_6         (i2c_lvds_sda_w2c_p    [3]),
                
        .ts_clk              (ts_clk), // 62.5 M clock from timing point
        .ts_rst              (ts_rst), // reset from timing endpoint
        .ts_tstamp           (ts_tstamp),
        
        .AXI_CLK_OUT         (axi_clk_out),
        .AXI_RSTn            (axi_rstn),
        .reg_rw              (reg_rw),
        .reg_ro              (reg_ro),
        
        .iic_rtl_0_scl_i     (iic_rtl_0_scl_i),
        .iic_rtl_0_scl_o     (iic_rtl_0_scl_o),
        .iic_rtl_0_scl_t     (iic_rtl_0_scl_t),
        .iic_rtl_0_sda_i     (iic_rtl_0_sda_i),
        .iic_rtl_0_sda_o     (iic_rtl_0_sda_o),
        .iic_rtl_0_sda_t     (iic_rtl_0_sda_t),
        
        .daq_spy_full_0      (daq_spy_full[0] ),
        .daq_spy_full_1      (daq_spy_full[1] ),
        .daq_spy_reset_0     (daq_spy_reset[0]),
        .daq_spy_reset_1     (daq_spy_reset[1]),
        .spy_rec_time        (spy_rec_time),
        .spy_addr_0          (spy_addr [0]),
        .spy_addr_1          (spy_addr [1]),
        
        .cmd_bit_idle        (cmd_bit_idle     ),
        .cmd_bit_edge        (cmd_bit_edge     ),
        .cmd_bit_sync        (cmd_bit_sync     ),
        .cmd_bit_act         (cmd_bit_act      ),
        .cmd_bit_reset       (cmd_bit_reset    ),
        .cmd_bit_adc_reset   (cmd_bit_adc_reset),
        .cmd_bit_trigger     (cmd_bit_trigger  ),
        
        .ps_reset            (ps_reset ),
        .ps_en_in            (ps_en_in ),
        .ps_locked           (ps_locked),
        
        .pl_clk_10M          (pl_clk_10M),
        
        .sda_in_out          (sda_in_out),
        .sda_out_out         (sda_out_out),
        .scl_out             (scl_out),
        
        .ddi_clk             (ddi_clk),
        
        .ddi0_d              (ddi_d      [0]),
        .ddi0_d_last         (ddi_d_last [0]),
        .ddi0_d_valid        (ddi_d_valid[0]),
        .ddi1_d              (ddi_d      [1]),
        .ddi1_d_last         (ddi_d_last [1]),
        .ddi1_d_valid        (ddi_d_valid[1]),
        .ddi2_d              (ddi_d      [2]),
        .ddi2_d_last         (ddi_d_last [2]),
        .ddi2_d_valid        (ddi_d_valid[2]),
        .ddi3_d              (ddi_d      [3]),
        .ddi3_d_last         (ddi_d_last [3]),
        .ddi3_d_valid        (ddi_d_valid[3]),
        .ddi4_d              (ddi_d      [4]),
        .ddi4_d_last         (ddi_d_last [4]),
        .ddi4_d_valid        (ddi_d_valid[4]),
        .ddi5_d              (ddi_d      [5]),
        .ddi5_d_last         (ddi_d_last [5]),
        .ddi5_d_valid        (ddi_d_valid[5]),
        .ddi6_d              (ddi_d      [6]),
        .ddi6_d_last         (ddi_d_last [6]),
        .ddi6_d_valid        (ddi_d_valid[6]),
        .ddi7_d              (ddi_d      [7]),
        .ddi7_d_last         (ddi_d_last [7]),
        .ddi7_d_valid        (ddi_d_valid[7]),
        
        .deimos_clk_clk_n    (deimos_clk_n),
        .deimos_clk_clk_p    (deimos_clk_p),
        .deimos_rxn          (deimos_rxn),
        .deimos_rxp          (deimos_rxp),
        .deimos_txn          (deimos_txn),
        .deimos_txp          (deimos_txp)
        
    );

endmodule

