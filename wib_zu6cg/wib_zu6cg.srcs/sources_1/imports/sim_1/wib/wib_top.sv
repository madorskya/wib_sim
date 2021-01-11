module wib_top
(
    input  dune_clk_fpga_in_p,
    input  dune_clk_fpga_in_n,
    output [0:0]gpo_0,
    
    // I2C busses to/from FEMBs [femb]
    output [3:0] i2c_lvds_scl_p,
    output [3:0] i2c_lvds_scl_n,
    input  [3:0] i2c_lvds_sda_c2w_p,
    input  [3:0] i2c_lvds_sda_c2w_n,
    output [3:0] i2c_lvds_sda_w2c_p,
    output [3:0] i2c_lvds_sda_w2c_n,
    output [3:0] i2c_lvds_l2_sda_w2c_p,
    output [3:0] i2c_lvds_l2_sda_w2c_n,
    input  [3:0] i2c_lvds_l2_sda_c2w_p,
    input  [3:0] i2c_lvds_l2_sda_c2w_n,
    
    // clocks for COLDATA PLL [femb*coldata]
    output [7:0] coldata_clk40,

    // fast command output    
    output femb_cmd_fpga_out_p,
    output femb_cmd_fpga_out_n,

    // clock to FEMBs, 62.5M, recovered by timing endpoint    
    output femb_clk_fpga_out_p, 
    output femb_clk_fpga_out_n,

    // timing pt signals
    input adn2814_data_p, 
    input adn2814_data_n,
     
    input si5344_out1_p, // clock from tp
    input si5344_out1_n,

    input adn2814_los,
    input adn2814_lol,


    input  [3 : 0] gtrefclk00p_in, // reference clocks; 125M
    input  [3 : 0] gtrefclk00n_in, // reference clocks; 125M
    input [15 : 0] gthrxn_in    , // RX diff lines
    input [15 : 0] gthrxp_in    ,
    
    // I2C busses for onboard devices
    inout si5344_scl, 
    inout si5344_sda, 
    inout si5342_scl, 
    inout si5342_sda, 
    inout qsfp_scl,     
    inout qsfp_sda, 
    inout pl_femb_pwr_scl, 
    inout pl_femb_pwr_sda, 
    inout pl_femb_en_scl, 
    inout pl_femb_en_sda, 
    inout sensor_i2c_scl, 
    inout sensor_i2c_sda, 
    inout pl_femb_pwr2_scl, 
    inout pl_femb_pwr2_sda, 
//    inout ltc2977_scl, // commented out per Jack's message from 2020-08-10
//    inout ltc2977_sda, 
    inout pl_femb_pwr3_scl,  
    inout pl_femb_pwr3_sda,  
    inout flash_scl, 
    inout flash_sda, 
    inout adn2814_scl,   
    inout adn2814_sda, 
    
    output fp_sfp_sel, // (sch page 14) P15 SFP connection selector U11 0=CDR 1=GTH
    output rx_timing_sel, // sch page 15 U1 input selector 0=backplane 1=SFP
    output mgt_clk_sel, // clock source selector for MGTs 1=standalone 0=recovered timing
    output femb_clk_sel, // clock source selector for FEMBs 0=direcly from SI5344, 1=FPGA
    output femb_cmd_sel, // I2C command source for FEMBs 0=FPGA, 1=clock from SI5344, output 2 (why ???)
    output si5344_oe, // output enable for PLL
    // return signals from timing point
    output tx_timing_p,
    output tx_timing_n,
    
    // standalone oscillator 
    input  clk_in_50mhz,
    
    // test points
    output [15:0] misc_io
    
);

    assign mgt_clk_sel = 1'b0; // select recovered clk permanently
    assign femb_clk_sel = 1'b1; // select FPGA clk permanently
    assign femb_cmd_sel = 1'b0; // select FPGA command permanently
    assign si5344_oe = 1'b0;
    wire         coldata_rx_reset; // common reset for all circiuts
    wire [0 : 0] reset_rx_done_out   ; 
    
    wire [7 : 0] rx_usrclk2_out      ; // rx data clock
    wire [15 :0] rx_data [15:0]      ;
    (* mark_debug *) wire [15 :0] rx_data_swizzled [15:0]      ;
    wire [15 :0] rxbyteisaligned_out ;
    wire [15 :0] rxbyterealign_out   ;
    wire [15 :0] rxcommadet_out      ;             
    
    wire [0 : 0] rx_cdr_stable_out   ; 
    wire [15 :0] gtpowergood_out     ;
    wire clk62p5;
    
    wire [31:0] ts_evtctr;
    wire ts_rdy;
    wire ts_rec_d_pad; 
    wire [1:0] ts_rec_d_ddr;
    reg  ts_rec_d;
    wire ts_rec_d_clk; // 312.5 M or 250M
    wire ts_rec_d_clk_pad;
    wire ts_rst;
    wire [3:0] ts_sync;
    wire ts_sync_v;
    wire [63:0] ts_tstamp;
    
    wire        axi_clk_out;
    wire        axi_rstn;


    wire [1023:0] config_reg;
    wire [1023:0] status_reg;
    
    wire iic_rtl_0_scl_i;
    wire iic_rtl_0_scl_o;
    wire iic_rtl_0_scl_t;
    wire iic_rtl_0_sda_i;
    wire iic_rtl_0_sda_o;
    wire iic_rtl_0_sda_t;
    wire ts_edge_sel;
    
    // this input is unused, see Jack's message 2020-08-23
    IBUFDS clk_buf_in  (.I(dune_clk_fpga_in_p), .IB(dune_clk_fpga_in_n), .O());
    
    IBUFDS tp_data_buf_in (.I(adn2814_data_p), .IB(adn2814_data_n), .O(ts_rec_d_pad));
    IBUFDS tp_clk_buf_in  (.I(si5344_out1_p),   .IB(si5344_out1_n), .O(ts_rec_d_clk_pad));
    BUFG (.I(ts_rec_d_clk_pad), .O(ts_rec_d_clk));
    
    // have to add an input FF for timing data, it's missing in the timing endpoint
    always @(posedge ts_rec_d_clk) ts_rec_d = ts_rec_d_ddr [ts_edge_sel];
    
    IDDRE1 #(.DDR_CLK_EDGE ("SAME_EDGE_PIPELINED")) iddr_timing
    (
        .Q1 (ts_rec_d_ddr[0]),
        .Q2 (ts_rec_d_ddr[1]),
        .C  (ts_rec_d_clk),
        .CB (~ts_rec_d_clk),
        .D  (ts_rec_d_pad),
        .R  (1'b0)
    );    
    
    // system 62.5M clock to FEMBs, from timing pt.
    OBUFDS clk_buf_out (.I(clk62p5), .O(femb_clk_fpga_out_p), .OB(femb_clk_fpga_out_n));

    wire tx_timing;
    OBUFDS tx_tim_buf_out (.I(tx_timing), .O(tx_timing_p), .OB(tx_timing_n));
    
    wire clk50;
    BUFG clk50_bufg (.I(clk_in_50mhz), .O(clk50));

    genvar gi;
    // swizzle bytes in rx_data for easier viewing in the simulation traces
    generate
        for (gi = 0; gi < 16; gi++)
            assign rx_data_swizzled[gi] = {rx_data[gi][7:0], rx_data[gi][15:8]};
    endgenerate

    wire [1:0] daq_spy_full;
    wire [1:0] daq_spy_reset;
    wire [31:0] daq_stream [1:0]; // data to felix
    wire [3:0]  daq_stream_k [1:0]; // K symbol flags to felix
    wire [1:0]  daq_data_type [1:0]; // data_type flags for felix
    wire daq_clk;
    
    wire [3:0] ts_stat;

// macros for configuration and status bits
// parameters: a = offset of 32-bit register, b = low bit in the register, n = number of bits
`define CONFIG_BITS(a,b,n) config_reg[((a)*32+(b))+:(n)]
`define STATUS_BITS(a,b,n) status_reg[((a)*32+(b))+:(n)]
    // command codes from timing system
    wire [7:0] cmd_code_idle      = `CONFIG_BITS(4,  0, 8); // 0xA00C0010
    wire [7:0] cmd_code_edge      = `CONFIG_BITS(4,  8, 8); // 0xA00C0010
    wire [7:0] cmd_code_sync      = `CONFIG_BITS(4, 16, 8); // 0xA00C0010
    wire [7:0] cmd_code_act       = `CONFIG_BITS(4, 24, 8); // 0xA00C0010
    wire [7:0] cmd_code_reset     = `CONFIG_BITS(5,  0, 8); // 0xA00C0014
    wire [7:0] cmd_code_adc_reset = `CONFIG_BITS(5,  8, 8); // 0xA00C0014
    
    wire       fake_time_stamp_en = `CONFIG_BITS(3,  1, 1); // 0xA00C000C
    wire [63:0] fake_time_stamp_init; // initial value for FTS
    assign fake_time_stamp_init[31: 0] = `CONFIG_BITS(6,  0, 32); // 0xA00C0018
    assign fake_time_stamp_init[63:32] = `CONFIG_BITS(7,  0, 32); // 0xA00C001C

    bd_tux wrp
    (
        // coldata fast command
        .fastcommand_out_p (femb_cmd_fpga_out_p),
        .fastcommand_out_n (femb_cmd_fpga_out_n),
        
        // coldata I2C
        .i2c_lvds_scl_p        (i2c_lvds_scl_p       ),
        .i2c_lvds_scl_n        (i2c_lvds_scl_n       ),
        .i2c_lvds_sda_c2w_p    (i2c_lvds_sda_c2w_p   ),
        .i2c_lvds_sda_c2w_n    (i2c_lvds_sda_c2w_n   ),
        .i2c_lvds_sda_w2c_p    (i2c_lvds_sda_w2c_p   ),
        .i2c_lvds_sda_w2c_n    (i2c_lvds_sda_w2c_n   ),
        .i2c_lvds_l2_sda_c2w_p (i2c_lvds_l2_sda_c2w_p),
        .i2c_lvds_l2_sda_c2w_n (i2c_lvds_l2_sda_c2w_n),
        .i2c_lvds_l2_sda_w2c_p (i2c_lvds_l2_sda_w2c_p),
        .i2c_lvds_l2_sda_w2c_n (i2c_lvds_l2_sda_w2c_n),
        
        // timing point signals
        .ts_cdr_lol        (adn2814_lol      ),
        .ts_cdr_los        (adn2814_los      ),
        .ts_clk            (clk62p5          ), // this is 62.5 M clock for WIB logic
        .ts_evtctr         (ts_evtctr        ),
        .ts_rdy            (ts_rdy           ),
        .ts_rec_clk_locked (~adn2814_lol     ),
        .ts_rec_d          (ts_rec_d         ),
        .ts_rec_d_clk      (ts_rec_d_clk     ), // 312.5 (or 250) M clock from CDR
        .ts_rst            (ts_rst           ),
        .ts_sfp_los        (1'b0             ),
        .ts_sync           (ts_sync          ),
        .ts_sync_v         (ts_sync_v        ),
        .ts_tstamp         (ts_tstamp        ),
        .ts_stat           (ts_stat          ),

        .axi_clk_out (axi_clk_out),
        .axi_rstn    (axi_rstn   ),
        .reg_rw      (config_reg),
        .reg_ro      (status_reg),
    
        .iic_rtl_0_scl_i (iic_rtl_0_scl_i),
        .iic_rtl_0_scl_o (iic_rtl_0_scl_o),
        .iic_rtl_0_scl_t (iic_rtl_0_scl_t),
        .iic_rtl_0_sda_i (iic_rtl_0_sda_i),
        .iic_rtl_0_sda_o (iic_rtl_0_sda_o),
        .iic_rtl_0_sda_t (iic_rtl_0_sda_t),

        .daq_clk       (daq_clk      ),
        .daq_spy_full  (daq_spy_full ),
        .daq_spy_reset (daq_spy_reset),
        .daq_stream    (daq_stream   ),
        .daq_stream_k  (daq_stream_k ),

        .cmd_code_idle      (cmd_code_idle     ),
        .cmd_code_edge      (cmd_code_edge     ),
        .cmd_code_sync      (cmd_code_sync     ),
        .cmd_code_act       (cmd_code_act      ),
        .cmd_code_reset     (cmd_code_reset    ),
        .cmd_code_adc_reset (cmd_code_adc_reset),
        .fake_time_stamp_en (fake_time_stamp_en),
        .fake_time_stamp_init (fake_time_stamp_init)
    );

    (* mark_debug *) wire [1:0]   rx_k [15:0];
    wire [1:0]   rx_comma [15:0];
    wire [1:0]   rx_notvalid [15:0];
    wire [1:0]   rx_disp [15:0];

    wire [13:0] deframed [15:0][31:0]; // [link][sample]
    wire [15:0] valid14;
    wire [15:0] valid12;
    reg [15:0] valid14_r [1:0];
    reg [15:0] valid12_r [1:0];
    wire [1:0]  crc_err [15:0];
    wire rxclk2x;
    (* mark_debug *) wire [15:0] rxprbserr_out;
    wire [31:0] fw_date;
    
    // config and status registers mapping
    
    wire [3:0] i2c_select   = `CONFIG_BITS(1, 0, 4); // i2c chain selector, see I2C_CONTROL module below
    assign fp_sfp_sel       = `CONFIG_BITS(1, 4, 1);
    assign rx_timing_sel    = `CONFIG_BITS(1, 5, 1);
    assign daq_spy_reset    = `CONFIG_BITS(1, 6, 2);
    wire [3:0] rx_prbs_sel  = `CONFIG_BITS(1, 8, 4);
    wire fb_reset           = `CONFIG_BITS(1,12, 1); // frame builder reset
    assign coldata_rx_reset = `CONFIG_BITS(1,13, 1);
    
    wire [15:0] link_mask   = `CONFIG_BITS(2, 0, 16); // this input allows to disable some links in case the are broken
    
    assign ts_edge_sel      = `CONFIG_BITS(3, 0,  1); // timing data clock edge selection
    
    assign `STATUS_BITS(15, 0, 32) = 32'hbabeface;
    assign `STATUS_BITS( 0, 0,  2) = daq_spy_full;
    assign `STATUS_BITS( 1, 0, 16) = rxprbserr_out;
    assign `STATUS_BITS( 2, 0, 32) = fw_date;

    // according to Adrian's Slack message from 2020-10-15
    assign `STATUS_BITS(12, 0, 32) = ts_tstamp[63:32];
    assign `STATUS_BITS( 8, 0, 32) = ts_tstamp[31:0];
    assign `STATUS_BITS( 4,20,  8) = 8'hff;
    assign `STATUS_BITS( 4,18,  1) = adn2814_los;
    assign `STATUS_BITS( 4,17,  1) = adn2814_lol;
    assign `STATUS_BITS( 4,16,  1) = ts_sync_v;
    assign `STATUS_BITS( 4,12,  4) = ts_sync;
    assign `STATUS_BITS( 4, 8,  1) = ts_rdy;
    assign `STATUS_BITS( 4, 4,  1) = ts_rst;
    assign `STATUS_BITS( 4, 0,  4) = ts_stat;
    
    wire clk_40;
    assign coldata_clk40 = {8{clk_40}};

    coldata_rx_tux coldata_rx
    (
        .gtrefclk00p_in      (gtrefclk00p_in     ), // reference clocks(), 128M
        .gtrefclk00n_in      (gtrefclk00n_in     ), // reference clocks(), 128M
        .gthrxn_in           (gthrxn_in          ), // RX diff lines
        .gthrxp_in           (gthrxp_in          ),    
        .reset_clk_64M_in    (clk62p5            ), // clock for reset circuits
        .reset_all_in        (coldata_rx_reset   ), // common reset for all circiuts
        .reset_rx_done_out   (reset_rx_done_out  ), 
    
        .rx_usrclk2_out      (rx_usrclk2_out     ), // rx data clock
        .rx_data             (rx_data            ),
        .rxbyteisaligned_out (rxbyteisaligned_out),
        .rxbyterealign_out   (rxbyterealign_out  ),
        .rxcommadet_out      (rxcommadet_out     ),             
        .rx_k                (rx_k       ),
        .rx_comma            (rx_comma   ),
        .rx_notvalid         (rx_notvalid),
        .rx_disp             (rx_disp    ),

        .rx_cdr_stable_out   (rx_cdr_stable_out  ), 
        .gtpowergood_out     (gtpowergood_out    ),
        .rx_prbs_sel         (rx_prbs_sel),
        .rxprbserr_out       (rxprbserr_out),
        .clk_40              (clk_40)
    );
    
    coldata_deframer coldata_df
    (
        .rx_usrclk2 (rx_usrclk2_out    ), // rx data clock
        .rx_data    (rx_data           ),
        .rx_k       (rx_k              ),
        .mmcm_reset (!reset_rx_done_out),
        .deframed   (deframed),
        .valid14    (valid14 ),
        .valid12    (valid12 ),
        .crc_err    (crc_err ),
        .rxclk2x    (rxclk2x)
    );
    
    
    frame_builder fbld
    (
        .deframed     (deframed),
        .valid14      (valid14 ),
        .valid12      (valid12 ),
        .rxclk2x      (rxclk2x),
        .link_mask    (link_mask   ), // this input allows to disable some links in case they are broken
        .daq_stream   (daq_stream  ), // data to felix
        .daq_stream_k (daq_stream_k), // K symbol flags to felix
        .daq_data_type(daq_data_type), // data type flags for felix
        .daq_clk      (daq_clk),
        .ts_tstamp    (ts_tstamp),
        .reset        (fb_reset)
    );
    
    
    I2C_CONTROL i2c_ctrl
    ( 
        .I2C_SELECT ({4'b0, i2c_select}), 
          
        .iic_rtl_0_scl_i (iic_rtl_0_scl_i), 
        .iic_rtl_0_scl_o (iic_rtl_0_scl_o), 
        .iic_rtl_0_scl_t (iic_rtl_0_scl_t), 
        
        .iic_rtl_0_sda_i (iic_rtl_0_sda_i), 
        .iic_rtl_0_sda_o (iic_rtl_0_sda_o), 
        .iic_rtl_0_sda_t (iic_rtl_0_sda_t), 
        
        .SI5344_SCL (si5344_scl), 
        .SI5344_SDA (si5344_sda), 
        
        .SI5342_SCL (si5342_scl), 
        .SI5342_SDA (si5342_sda), 
        
        .QSFP_SCL (qsfp_scl),     
        .QSFP_SDA (qsfp_sda), 
        
        .PL_FEMB_PWR_SCL (pl_femb_pwr_scl), 
        .PL_FEMB_PWR_SDA (pl_femb_pwr_sda), 
        
        .PL_FEMB_EN_SCL (pl_femb_en_scl), 
        .PL_FEMB_EN_SDA (pl_femb_en_sda), 
        
        .SENSOR_I2C_SCL (sensor_i2c_scl), 
        .SENSOR_I2C_SDA (sensor_i2c_sda), 
        
        .PL_FEMB_PWR2_SCL (pl_femb_pwr2_scl), 
        .PL_FEMB_PWR2_SDA (pl_femb_pwr2_sda), 
        
//        .LTC2977_SCL (ltc2977_scl), 
//        .LTC2977_SDA (ltc2977_sda), 
        
        .PL_FEMB_PWR3_SCL (pl_femb_pwr3_scl),  
        .PL_FEMB_PWR3_SDA (pl_femb_pwr3_sda),  
        
        .FLASH_SCL (flash_scl), 
        .FLASH_SDA (flash_sda), 
        
        .ADN2814_SCL (adn2814_scl),   
        .ADN2814_SDA (adn2814_sda) 
    );

    // fake timing master, for tests
    timing_master_fake tmf
    (
        .clk50     (clk50),
        .tx_timing (tx_timing), // 125M clock = 50M*2.5, simulating timing master working at 50M
        
        .clk_240 (daq_clk), // temporary replacement for real DAQ clock that should be coming from FELIX links
        .clk_130 (rxclk2x) // clock for deframer and frame builder, slightly faster than 64M*2 coming from COLDATA links
    );

    // logic for valid12 and 14 bit extention, so we can watch them using rx clock
    reg [15:0] valid12_ila;
    reg [15:0] valid14_ila;
    always @(posedge rxclk2x)
    begin
        valid12_ila = valid12_r[1] | valid12_r[0];
        valid14_ila = valid14_r[1] | valid14_r[0];
    
        valid12_r[1] = valid12_r[0];
        valid12_r[0] = valid12;
        valid14_r[1] = valid14_r[0];
        valid14_r[0] = valid14;
    end

    ila_1 ila_daq 
    (
        .clk    (daq_clk), // input wire clk
        .probe0 (daq_stream[0]), // input wire [31:0]  probe0
        .probe1 (daq_stream[1]), // input wire [31:0]  probe1
        .probe2 (daq_stream_k[0]), // input wire [3:0]  probe2
        .probe3 (daq_stream_k[1]), // input wire [3:0]  probe3
        .probe4 (daq_data_type[0]), // input wire [1:0]  probe4
        .probe5 (daq_data_type[1]) // input wire [1:0]  probe5
    );

    // test points
    assign misc_io[1:0]  = rx_k[0];
    assign misc_io[3:2]  = rx_k[1];
    assign misc_io[5:4]  = rx_k[2];
    assign misc_io[7:6]  = rx_k[3];
    assign misc_io[11:8] = valid12[3:0];
    assign misc_io[14]   = ts_rec_d_clk;
    assign misc_io[15]   = clk62p5;

    // firmware timestamp 
    // need to set -g USR_ACCESS option to TIMESTAMP in BitGen settings
	USR_ACCESSE2 usr_access
	(
		.DATA (fw_date),
		.CFGCLK (),
		.DATAVALID ()
	);
        
endmodule
