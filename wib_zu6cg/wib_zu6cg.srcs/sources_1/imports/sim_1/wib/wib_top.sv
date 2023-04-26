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

    // timing pt clock, available only on WIB rev 3
    input adn2814_fpga_clk_p, 
    input adn2814_fpga_clk_n,
     
    input si5344_out1_p, // clock from tp
    input si5344_out1_n,
    input si5344_lol, // lock of lock from tp PLL

    input adn2814_los,
    input adn2814_lol,


    input  [3 : 0] gtrefclk00p_in, // reference clocks; 125M
    input  [3 : 0] gtrefclk00n_in, // reference clocks; 125M
    input [15 : 0] gthrxn_in    , // RX diff lines
    input [15 : 0] gthrxp_in    ,
    
    // from Adrian's FELIX branch
    // 125MHz MGTREFCLK for FELIX/HERMES GTH
     input  wire mgtrefclk0_x0y1_p,
     input  wire mgtrefclk0_x0y1_n,

     // Serial data ports for FELIX/HERMES GTH bank 128 channel 0
     input  wire ch0_gthrxn_in,
     input  wire ch0_gthrxp_in,
     output wire ch0_gthtxn_out,
     output wire ch0_gthtxp_out,

//     // Serial data ports for FELIX/HERMES GTH bank 128 channel 1
     input  wire ch1_gthrxn_in,
     input  wire ch1_gthrxp_in,
     output wire ch1_gthtxn_out,
     output wire ch1_gthtxp_out,

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
    output [15:0] misc_io,
    
    input [3:0] bp_crate_addr,
    input [3:0] bp_slot_addr,
    inout [7:0] bp_io,
    
    // monitoring ADC
    output      mon_adc_sck,
    input [3:0] mon_adc_sdo,
    output      mon_adc_cs,
    
    // front panel LEMO
    output [1:0] lemo_io,
    output [1:0] lemo_dir,
    
    // DAC source select for FEMBs [3:0]
    output [3:0] dac_src_sel,
    output mon_vs_pulse_sel, // monitor vs pulse select
    output inj_cal_pulse, // inject calibration pulse select

    // calibration DAC
    output cal_dac_sync,
    output cal_dac_sclk,
    output cal_dac_din
);

    assign mgt_clk_sel = 1'b0; // select recovered clk permanently
    assign femb_clk_sel = 1'b1; // select FPGA clk permanently
    assign femb_cmd_sel = 1'b0; // select FPGA command permanently
    assign si5344_oe = 1'b0;
    assign lemo_dir = 2'b11; // bit 0 = output (10M clock), bit 1 = output, unused
    assign lemo_io[1] = 1'b0; // ground unused LEMO output to prevent oscillations of the buffer
     
    wire         coldata_rx_reset; // common reset for all circiuts
    wire [0 : 0] reset_rx_done_out   ; 
    
    wire [15 :0] rx_data [15:0]      ;
    (* mark_debug *) wire [15 :0] rx_data_swizzled [15:0]      ;
    wire [15 :0] rxbyteisaligned_out ;
    wire [15 :0] rxbyterealign_out   ;
    wire [15 :0] rxcommadet_out      ;             
    
    wire [0 : 0] rx_cdr_stable_out   ; 
    wire [15 :0] gtpowergood_out     ;
    wire clk62p5;
    
    wire ts_rdy;
    wire ts_rec_d_pad; 
    wire [1:0] ts_rec_d_ddr;
    reg  ts_rec_d;
    wire ts_rec_d_clk; // 312.5 M or 250M
    wire ts_rec_d_clk_pad;
    wire ts_rec_d_clk_pll;
    wire ts_rst;
    wire [7:0] ts_sync;
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
    wire ts_fpga_clk_pad;
    wire ts_clk_sel; // 0 = CDR clock, 1 = PLL clock
    
    // this input is unused, see Jack's message 2020-08-23
    //IBUFDS clk_buf_in  (.I(dune_clk_fpga_in_p), .IB(dune_clk_fpga_in_n), .O());
    
    IBUFDS tp_data_buf_in (.I(adn2814_data_p), .IB(adn2814_data_n), .O(ts_rec_d_pad));
    
    // clock from PLL used for timing endpoint, since direct recovered clock is not available on WIB r 2    
    IBUFDS tp_clk_buf_in  (.I(si5344_out1_p),   .IB(si5344_out1_n), .O(ts_rec_d_clk_pad));
    BUFG ts_rec_bufg (.I(ts_rec_d_clk_pad), .O(ts_rec_d_clk_pll));

    // clock from CDR, only available on WIB rev 3
    //IBUFDS tp_fpga_clk_buf_in (.I(adn2814_fpga_clk_p), .IB(adn2814_fpga_clk_n), .O(ts_fpga_clk_pad));
    BUFG ts_fpga_bufg (.I(ts_fpga_clk_pad), .O(ts_rec_d_clk));
    
    // clock mux, so that PLL clock can be used when timing master is not available
    //BUFGMUX ts_clk_mux (.I0(ts_fpga_clk_pad), .I1(ts_rec_d_clk_pll), .S(ts_clk_sel), .O(ts_rec_d_clk));
    //BUFGMUX ts_clk_mux (.I0(ts_rec_d_pad), .I1(ts_rec_d_clk_pad), .S(ts_clk_sel), .O(ts_rec_d_clk));
    
    wire csd_reset;
    wire [15:0] csd_diff;
    
    // clock phase drift detector
    // takes clocks from CDR and from PLL, runs counters on them
    // diff output shows difference, should not drift normally
    clk_sync_detect csd
    (
        .reset (csd_reset),
        .c     ({ts_rec_d_clk_pll, ts_rec_d_clk}),
        .diff  (csd_diff)
    );    
    
    // system 62.5M clock to FEMBs, from timing pt.
    OBUFDS clk_buf_out (.I(clk62p5), .O(femb_clk_fpga_out_p), .OB(femb_clk_fpga_out_n));

    wire tx_timing;
    OBUFDS tx_tim_buf_out (.I(tx_timing), .O(tx_timing_p), .OB(tx_timing_n));
    
    // FELIX channel breakout
    wire [1:0] gthrxn_int;
    assign gthrxn_int[0:0] = ch0_gthrxn_in;
    assign gthrxn_int[1:1] = ch1_gthrxn_in;
    
    wire [1:0] gthrxp_int;
    assign gthrxp_int[0:0] = ch0_gthrxp_in;
    assign gthrxp_int[1:1] = ch1_gthrxp_in;   
    
    wire [1:0] gthtxn_int;
    assign gthtxn_int[0:0] = ch0_gthtxn_out;
    assign gthtxn_int[1:1] = ch1_gthtxn_out;
    
    wire [1:0] gthtxp_int;
    assign gthtxp_int[0:0] = ch0_gthtxp_out;
    assign gthtxp_int[1:1] = ch1_gthtxp_out; 

    genvar gi;
    // swizzle bytes in rx_data for easier viewing in the simulation traces
    generate
        for (gi = 0; gi < 16; gi++)
            assign rx_data_swizzled[gi] = {rx_data[gi][7:0], rx_data[gi][15:8]};
    endgenerate

    wire [7:0] daq_spy_full;
    wire       daq_spy_reset;
    
    wire [3:0] ts_stat;

    // FELIX-related stuff
    wire gtwiz_userclk_tx_srcclk_out;
    wire gtwiz_userclk_tx_usrclk_out;
    wire gtwiz_reset_tx_done_out;
    wire gtwiz_reset_tx_pll_and_datapath_in;
    wire gtwiz_reset_tx_datapath_in;
    wire gtwiz_reset_rx_pll_and_datapath_in;
    wire gtwiz_reset_rx_datapath_in;
    wire felix_rx_reset;
    wire [1:0] tx8b10ben_in;  
    wire [31:0] txctrl0_in;
    wire [31:0] txctrl1_in;
    //wire [15:0] txctrl2_in;
    //wire [64:0] gtwiz_userdata_tx_in;
    
    wire gtwiz_userclk_tx_active_out;
    wire [1:0] felix_powergood_out;
    (* mark_debug *) wire [15:0] rxprbserr_out;
    wire [31:0] fw_date;

    // new DAQ header parameters, see Josh's message from 2021-12-06
    wire [5:0]  link [1:0]; //
    wire [9:0]  crate_id; // 
    wire [5:0]  det_id; //
    wire [7:0]  femb_pulser_in_frame; //
    wire [7:0]  context_fld; 
    wire        ready; // 
    wire [3:0]  psr_cal; //
    wire        ws; //
    wire [15:0] flex; // 
    wire [7:0]  align8 [15:0]; // automatic alignment delays
    wire ps_reset;
    wire ps_en_in;
    wire ps_locked;
    wire mon_adc_start;
    wire [15:0] mon_adc_val [3:0];
    wire [1:0]  crc_err [15:0];
    wire [1:0]  crc_err_sticky [15:0];
    wire crc_err_reset;
    wire mon_adc_busy;
    wire cmd_bit_idle     ;
    wire cmd_bit_edge     ;
    wire cmd_bit_sync     ;
    wire cmd_bit_act      ;
    wire cmd_bit_reset    ;
    wire cmd_bit_adc_reset;
    wire cmd_bit_trigger  ;
    wire cal_dac_busy;
    
    // config and status registers mapping
    
// macros for configuration and status bits
// parameters: a = offset of 32-bit register, b = low bit in the register, n = number of bits
`define CONFIG_BITS(a,b,n) config_reg[((a)*32+(b))+:(n)]
`define STATUS_BITS(a,b,n) status_reg[((a)*32+(b))+:(n)]

    wire [15:0] tp_addr     = `CONFIG_BITS(0, 0,16); // 0xA00C0000 timing endpoint address
    wire [1:0]  prio_enc_descramble = `CONFIG_BITS(0, 16, 2); // 0xA00C0000 select option for version of PTB/PTC (see below)
    wire        tp_srst     = `CONFIG_BITS(0,28, 1); // 0xA00C0000 timing endpoint reset
    
    wire [3:0] i2c_select   = `CONFIG_BITS(1, 0, 4); // 0xA00C0004 i2c chain selector, see I2C_CONTROL module below
    assign fp_sfp_sel       = `CONFIG_BITS(1, 4, 1); // 0xA00C0004
    assign rx_timing_sel    = `CONFIG_BITS(1, 5, 1); // 0xA00C0004
    assign daq_spy_reset    = `CONFIG_BITS(1, 6, 1); // 0xA00C0004
    //                      = `CONFIG_BITS(1, 7, 1); // 0xA00C0004 // reserved
    wire [3:0] rx_prbs_sel  = `CONFIG_BITS(1, 8, 4); // 0xA00C0004
    wire fb_reset           = `CONFIG_BITS(1,12, 1); // 0xA00C0004 frame builder reset
    assign coldata_rx_reset = `CONFIG_BITS(1,13, 1); // 0xA00C0004
    wire coldata_rxbufreset = `CONFIG_BITS(1,14, 1); // 0xA00C0004
    assign csd_reset        = `CONFIG_BITS(1,15, 1); // 0xA00C0004
    assign ts_clk_sel       = `CONFIG_BITS(1,16, 1); // 0xA00C0004
    assign ps_reset         = `CONFIG_BITS(1,17, 1); // 0xA00C0004
    assign ps_en_in         = `CONFIG_BITS(1,18, 1); // 0xA00C0004
    assign mon_adc_start    = `CONFIG_BITS(1,19, 1); // 0xA00C0004 // monitor ADC conversion start pulse
    assign crc_err_reset    = `CONFIG_BITS(1,20, 1); // 0xA00C0004 // reset of sticky crc error flags
    wire   raw_channel_map  = `CONFIG_BITS(1,21, 1); // 0xA00C0004 // 0=UVX map, 1=raw channel map
    wire   cal_dac_start    = `CONFIG_BITS(1,22, 1); // 0xA00C0004 // calibration DAC programming start
    
    wire [15:0] link_mask   = `CONFIG_BITS(2, 0, 16); // 0xA00C0008 this input allows to disable some links in case the are broken
    
    assign ts_edge_sel         = `CONFIG_BITS(3,  0,  1); // 0xA00C000c timing data clock edge selection
    wire   fake_time_stamp_en  = `CONFIG_BITS(3,  1,  1); // 0xA00C000C
    wire cmd_stamp_sync_en     = `CONFIG_BITS(3,  2,  1); // 0xA00C000C enable sending sync command when 14 lower TLU stamp bits match cmd_stamp_sync
    wire align_en              = `CONFIG_BITS(3,  3,  1); // 0xA00C000C enable COLDATA data alignment
    wire [7:0]  dts_time_delay = `CONFIG_BITS(3,  8,  8); // 0xA00C000C DTS time stamp delay for alignment
    wire [14:0] cmd_stamp_sync = `CONFIG_BITS(3, 16, 15); // 0xA00C000C lower 14 bits of TLU time stamp that trigger sync command
    
    // command codes from timing system
    wire [7:0] cmd_code_idle      = `CONFIG_BITS(4,  0, 8); // 0xA00C0010
    wire [7:0] cmd_code_edge      = `CONFIG_BITS(4,  8, 8); // 0xA00C0010
    wire [7:0] cmd_code_sync      = `CONFIG_BITS(4, 16, 8); // 0xA00C0010
    wire [7:0] cmd_code_act       = `CONFIG_BITS(4, 24, 8); // 0xA00C0010
    
    wire [7:0] cmd_code_reset     = `CONFIG_BITS(5,  0, 8); // 0xA00C0014
    wire [7:0] cmd_code_adc_reset = `CONFIG_BITS(5,  8, 8); // 0xA00C0014
    wire [7:0] cmd_code_trigger   = `CONFIG_BITS(5, 16, 8); // 0xA00C0014

    // enable flags for corresponding commands above
    wire cmd_en_idle      = `CONFIG_BITS(5, 24, 1); // 0xA00C0014
    wire cmd_en_edge      = `CONFIG_BITS(5, 25, 1); // 0xA00C0014
    wire cmd_en_sync      = `CONFIG_BITS(5, 26, 1); // 0xA00C0014
    wire cmd_en_act       = `CONFIG_BITS(5, 27, 1); // 0xA00C0014
    wire cmd_en_reset     = `CONFIG_BITS(5, 28, 1); // 0xA00C0014
    wire cmd_en_adc_reset = `CONFIG_BITS(5, 29, 1); // 0xA00C0014
    wire cmd_en_trigger   = `CONFIG_BITS(5, 30, 1); // 0xA00C0014
    
    wire [63:0] fake_time_stamp_init; // initial value for FTS
    assign fake_time_stamp_init[31: 0] = `CONFIG_BITS(6,  0, 32); // 0xA00C0018
    
    assign fake_time_stamp_init[63:32] = `CONFIG_BITS(7,  0, 32); // 0xA00C001C
    
    wire fake_daq_stream  = `CONFIG_BITS(8,  0,  1); // 0xA00C0020
    assign context_fld    = `CONFIG_BITS(8,  1,  8); // 0xA00C0020
    wire [5:0] edge_delay = `CONFIG_BITS(8,  9,  6); // 0xA00C0020
    
    wire [14:0] spy_rec_time     = `CONFIG_BITS(9,  0, 15); // 0xA00C0024;

    assign flex                 = `CONFIG_BITS(10,  0, 16); // 0xA00C0028
    assign femb_pulser_in_frame = `CONFIG_BITS(10,  22, 8); // 0xA00C0028
    assign ready                = `CONFIG_BITS(10,  30, 1); // 0xA00C0028
    assign ws                   = `CONFIG_BITS(10,  31, 1); // 0xA00C0028
    
    assign txctrl0_in                         = `CONFIG_BITS(11,  0, 32); // 0xA00C002C

    assign txctrl1_in                         = `CONFIG_BITS(12,  0, 32); // 0xA00C0030

    assign link[0]  = `CONFIG_BITS(13,  0, 6);    // 0xA00C0034
    assign link[1]  = `CONFIG_BITS(13,  6, 6);    // 0xA00C0034
    assign crate_id = `CONFIG_BITS(13,  12, 10);  // 0xA00C0034
    assign det_id   = `CONFIG_BITS(13,  22, 6);   // 0xA00C0034
    assign psr_cal  = `CONFIG_BITS(13,  28, 4);   // 0xA00C0034
    
    assign gtwiz_reset_tx_pll_and_datapath_in = `CONFIG_BITS(14,  0, 1);  // 0xA00C0038
    assign gtwiz_reset_rx_pll_and_datapath_in = `CONFIG_BITS(14,  1, 1);  // 0xA00C0038
    assign gtwiz_reset_tx_datapath_in         = `CONFIG_BITS(14,  4, 1);
    assign gtwiz_reset_rx_datapath_in         = `CONFIG_BITS(14,  5, 1);
    assign felix_rx_reset                     = `CONFIG_BITS(14,  6, 1);
    assign tx8b10ben_in                       = `CONFIG_BITS(14,  8, 2);
    
    assign dac_src_sel                        = `CONFIG_BITS(15,  0, 4); // 0xA00C003C
    assign mon_vs_pulse_sel                   = `CONFIG_BITS(15,  4, 1); // 0xA00C003C
    assign inj_cal_pulse                      = `CONFIG_BITS(15,  5, 1); // 0xA00C003C
    wire [15:0] cal_dac_data                  = `CONFIG_BITS(15, 16,16); // 0xA00C003C
    

    assign `STATUS_BITS( 0, 0,  2) = daq_spy_full[1:0];   // 0xA00C0080
    assign `STATUS_BITS( 0, 2,  1) = ps_locked;
    assign `STATUS_BITS( 0, 3,  6) = daq_spy_full[7:2];   // 0xA00C0080
    
    assign `STATUS_BITS( 1, 0, 16) = rxprbserr_out;  // 0xA00C0084
    assign `STATUS_BITS( 2, 0, 32) = fw_date;        // 0xA00C0088

    assign `STATUS_BITS( 3, 0, 8) = {bp_crate_addr, bp_slot_addr}; // 0xA00C008c 

    assign `STATUS_BITS( 4,20,  1) = cal_dac_busy; // 0xA00C0090
    assign `STATUS_BITS( 4,19,  1) = mon_adc_busy; // 0xA00C0090
    assign `STATUS_BITS( 4,18,  1) = adn2814_los;
    assign `STATUS_BITS( 4,17,  1) = adn2814_lol;
    assign `STATUS_BITS( 4,16,  1) = ts_sync_v;
    assign `STATUS_BITS( 4, 8,  8) = ts_sync;
    assign `STATUS_BITS( 4, 5,  1) = ts_rdy;
    assign `STATUS_BITS( 4, 4,  1) = ts_rst;
    assign `STATUS_BITS( 4, 0,  4) = ts_stat;
    
    wire [14:0] spy_addr [7:0];
    assign `STATUS_BITS( 5, 0, 15) = spy_addr[0]; // 0xA00C0094
    assign `STATUS_BITS( 5,16, 15) = spy_addr[1]; // 0xA00C0094
    assign `STATUS_BITS( 6, 0, 15) = spy_addr[2]; // 0xA00C0098
    assign `STATUS_BITS( 6,16, 15) = spy_addr[3]; // 0xA00C0098

    assign `STATUS_BITS( 7, 0, 16) = csd_diff; // 0xA00C009c


    assign `STATUS_BITS( 8, 0, 32) = ts_tstamp[31:0];  // 0xA00C00A0
    assign `STATUS_BITS( 9, 0, 32) = ts_tstamp[63:32]; // 0xA00C00A4
    
    assign `STATUS_BITS(10, 0, 32) = {align8[ 3], align8[ 2], align8[ 1], align8[ 0]}; // 0xA00C00A8
    assign `STATUS_BITS(11, 0, 32) = {align8[ 7], align8[ 6], align8[ 5], align8[ 4]}; // 0xA00C00AC
    assign `STATUS_BITS(12, 0, 32) = {align8[11], align8[10], align8[ 9], align8[ 8]}; // 0xA00C00B0
    assign `STATUS_BITS(13, 0, 32) = {align8[15], align8[14], align8[13], align8[12]}; // 0xA00C00B4

    assign `STATUS_BITS(14, 0, 32) = {crc_err_sticky[15], crc_err_sticky[14], crc_err_sticky[13], crc_err_sticky[12], 
                                      crc_err_sticky[11], crc_err_sticky[10], crc_err_sticky[9],  crc_err_sticky[8], 
                                      crc_err_sticky[7],  crc_err_sticky[6],  crc_err_sticky[5],  crc_err_sticky[4], 
                                      crc_err_sticky[3],  crc_err_sticky[2],  crc_err_sticky[1],  crc_err_sticky[0]}; // 0xA00C00B8
    
    assign `STATUS_BITS(15, 0, 32) = 32'hbabeface;   // 0xA00C00BC

    assign `STATUS_BITS(16, 0, 1)  = gtwiz_reset_tx_done_out; // 0xA00C00C0
    assign `STATUS_BITS(16, 4, 1)  = gtwiz_userclk_tx_active_out;
    assign `STATUS_BITS(16, 8, 2)  = felix_powergood_out;
    
    assign `STATUS_BITS(17, 0, 32) = {mon_adc_val[1], mon_adc_val[0]}; // 0xA00C00C4
    assign `STATUS_BITS(18, 0, 32) = {mon_adc_val[3], mon_adc_val[2]}; // 0xA00C00C8

    assign `STATUS_BITS(19, 0, 15) = spy_addr[4]; // 0xA00C00CC
    assign `STATUS_BITS(19,16, 15) = spy_addr[5]; // 0xA00C00CC
    assign `STATUS_BITS(20, 0, 15) = spy_addr[6]; // 0xA00C00D0
    assign `STATUS_BITS(20,16, 15) = spy_addr[7]; // 0xA00C00D0

    wire sfp_dis;
    
    reg [7:0] sfp_dis_od;
    wire [7:0] bp_io_o;    
    
    wire [1:0] felix_rxbyteisaligned_out;
    wire [1:0] felix_rxbyterealign_out;
    wire [1:0] felix_rxcommadet_out;
    wire [31:0] felix_rxctrl0_out;
    wire [63 : 0] felix_gtwiz_userdata_rx_out;
    wire felix_rx_clk;
    wire felix_gtwiz_reset_rx_done_out;
    wire [1:0] txpmaresetdone_out;
    wire [1:0] rxpmaresetdone_out;
    wire clk125;
    
    wire clk125_from_ts;
    wire gen_clk;
    wire gen_clk2x;
    wire fastcommand_out;
    wire sda_in_out, sda_out_out, scl_out;

    wire  [63:0] ddi_d [7:0];
    wire  [7:0]  ddi_d_last;
    wire  [7:0]  ddi_d_valid;
    
    bd_tux wrp
    (
        .fastcommand_out_p  (femb_cmd_fpga_out_p),
        .fastcommand_out_n  (femb_cmd_fpga_out_n),
        .fastcommand_out    (fastcommand_out),
        
        // coldata I2C
        .i2c_lvds_scl_p     (i2c_lvds_scl_p       ),
        .i2c_lvds_scl_n     (i2c_lvds_scl_n       ),
        .i2c_lvds_sda_c2w_p (i2c_lvds_sda_c2w_p   ),
        .i2c_lvds_sda_c2w_n (i2c_lvds_sda_c2w_n   ),
        .i2c_lvds_sda_w2c_p (i2c_lvds_sda_w2c_p   ),
        .i2c_lvds_sda_w2c_n (i2c_lvds_sda_w2c_n   ),
        
         // timing point signals
        .ts_clk             (clk62p5   ), // this is 62.5 M clock for WIB logic
        .ts_rst             (~ts_rdy   ), // ts_rst does not work for some reason, using ~ts_rdy instead
        .ts_tstamp          (ts_tstamp ),
        
        .axi_clk_out        (axi_clk_out),
        .axi_rstn           (axi_rstn   ),
        .reg_rw             (config_reg),
        .reg_ro             (status_reg),
        
        .iic_rtl_0_scl_i    (iic_rtl_0_scl_i),
        .iic_rtl_0_scl_o    (iic_rtl_0_scl_o),
        .iic_rtl_0_scl_t    (iic_rtl_0_scl_t),
        .iic_rtl_0_sda_i    (iic_rtl_0_sda_i),
        .iic_rtl_0_sda_o    (iic_rtl_0_sda_o),
        .iic_rtl_0_sda_t    (iic_rtl_0_sda_t),
        
        .daq_spy_full       (daq_spy_full ),
        .daq_spy_reset      (daq_spy_reset),
        
        .spy_rec_time       (spy_rec_time),
        .spy_addr           (spy_addr    ),
        
        .cmd_bit_idle       (cmd_bit_idle     ),
        .cmd_bit_edge       (cmd_bit_edge     ),
        .cmd_bit_sync       (cmd_bit_sync     ),
        .cmd_bit_act        (cmd_bit_act      ),
        .cmd_bit_reset      (cmd_bit_reset    ),
        .cmd_bit_adc_reset  (cmd_bit_adc_reset),
        .cmd_bit_trigger    (cmd_bit_trigger  ),
        
        .ps_reset           (ps_reset ),
        .ps_en_in           (ps_en_in ),
        .ps_locked          (ps_locked),
        
        .pl_clk_10M         (lemo_io[0]),
        .sda_in_out         (sda_in_out),
        .sda_out_out        (sda_out_out),
        .scl_out            (scl_out),
        
        .ddi_clk            (clk62p5     ),
        .ddi_d              (ddi_d       ),
        .ddi_d_last         (ddi_d_last  ),
        .ddi_d_valid        (ddi_d_valid ),
        
        .hermes_refclk_n    (mgtrefclk0_x0y1_n),
        .hermes_refclk_p    (mgtrefclk0_x0y1_p),
        .hermes_rxn         (gthrxn_int),
        .hermes_rxp         (gthrxp_int),
        .hermes_txn         (gthtxn_int),
        .hermes_txp         (gthtxp_int)
    );

    // Generate fake output clock
    ts_fake_mmcm fake_endpoint
    (
        .clk_out1 (gen_clk),
        .clk_out2 (gen_clk2x),             
        .reset    (1'b0),
        .locked   (),
        .clk_in1  (ts_rec_d_clk_pll)
    );

    // MUX between endpoint output (default) and PLL-based clocks (reg sel when no timing system)
    BUFGMUX ts_clk_mux2x (.I0(clk125_from_ts), .I1(gen_clk2x), .S(ts_clk_sel), .O(clk125));    

    (* mark_debug *) wire [1:0]   rx_k [15:0];
    wire [1:0]   rx_comma [15:0];
    wire [1:0]   rx_notvalid [15:0];
    wire [1:0]   rx_disp [15:0];

    wire [13:0] deframed [15:0][31:0]; // [link][sample]
    wire [ 7:0] time8 [15:0]; // [link] time stamps from each link
    wire [15:0] time16 [15:0]; // [link] time stamps from each link, P3 format
    wire [15:0] valid14;
    wire [15:0] valid12;
    wire [63:0] dts_time_delayed; // delayed DTS stamp matching data

    assign coldata_clk40 = 8'h0; // COLDATA P3 don't need this clock anymore

    coldata_rx_tux coldata_rx
    (
        .gtrefclk00p_in      (gtrefclk00p_in     ), // reference clocks(), 128M
        .gtrefclk00n_in      (gtrefclk00n_in     ), // reference clocks(), 128M
        .gthrxn_in           (gthrxn_in          ), // RX diff lines
        .gthrxp_in           (gthrxp_in          ),    
        .clk62p5             (clk62p5            ), // system clock
        .reset_all_in        (coldata_rx_reset   ), // common reset for all circiuts
        .rxbufreset          (coldata_rxbufreset ),
        .reset_rx_done_out   (reset_rx_done_out  ), 
    
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
        .rxprbserr_out       (rxprbserr_out)
    );
    
    coldata_deframer coldata_df
    (
        .clk62p5          (clk62p5           ), // system clock
        .rx_data          (rx_data           ),
        .rx_k             (rx_k              ),
        .mmcm_reset       (!reset_rx_done_out),
        .deframed         (deframed),
        .time8            (time8),
        .time16           (time16),
        .valid14          (valid14 ),
        .valid12          (valid12 ),
        .crc_err          (crc_err ),
        .crc_err_sticky   (crc_err_sticky ),
        .align8           (align8  ),
        .align_en         (align_en),
        .crc_err_reset    (crc_err_reset),
        .dts_time         (ts_tstamp),          // original DTS stamp, in 62.5M domain
        .dts_time_delayed (dts_time_delayed),   // delayed DTS stamp matching data
        .dts_time_delay   (dts_time_delay),     // DTS stamp delay, must me longer than max cable delay
        .rxclk2x          (clk125)
    );
    
    
    frame_builder fbld
    (
        .deframed             (deframed),
        .time8                (time8),
        .time16               (time16),
        .valid14              (valid14 ),
        .valid12              (valid12 ),
        .crc_err              (crc_err ),
        .rxclk2x              (clk125),
        .link_mask            (link_mask   ),           // this input allows to disable some links in case they are broken
        
        .ddi_d                (ddi_d       ),
        .ddi_d_last           (ddi_d_last  ),
        .ddi_d_valid          (ddi_d_valid ),
        
        .ts_tstamp            (dts_time_delayed),       // delayed time stamp matching data
        .ts_clk               (clk62p5  ),              // this is 62.5 M clock coming with time stamp
        .reset                (fb_reset),
        .fake_daq_stream      (fake_daq_stream),
        .bp_crate_addr        (bp_crate_addr),
        .bp_slot_addr         (bp_slot_addr & 4'b0111), // mask out unused high bit to make DAQ happy 
        .si5344_lol           (~si5344_lol),
        .link                 (link    ),
        .crate_id             (crate_id),
        .det_id               (det_id  ),
        .femb_pulser_in_frame (femb_pulser_in_frame),
        .context_fld          (context_fld), 
        .ready                (ready      ), 
        .psr_cal              (psr_cal    ), 
        .ws                   (ws         ), 
        .flex                 (flex       ),
        .raw_channel_map      (raw_channel_map)
    );    

    timing_endpoint_dcsk timing_i
    (
        .tp_addr                (tp_addr),
        .tp_srst                (tp_srst),
        .bp_io_o                (bp_io_o),
        .bp_io_t                (sfp_dis_od),
        .clk_125                (clk125_from_ts),
        .cmd_bit_act            (cmd_bit_act),
        .cmd_bit_adc_reset      (cmd_bit_adc_reset),
        .cmd_bit_edge           (cmd_bit_edge),
        .cmd_bit_idle           (cmd_bit_idle),
        .cmd_bit_reset          (cmd_bit_reset),
        .cmd_bit_sync           (cmd_bit_sync),
        .cmd_bit_trigger        (cmd_bit_trigger),
        .edge_delay             (edge_delay),
        .cmd_code_act_0         (cmd_code_act),
        .cmd_code_adc_reset_0   (cmd_code_adc_reset),
        .cmd_code_edge_0        (cmd_code_edge),
        .cmd_code_idle_0        (cmd_code_idle),
        .cmd_code_reset_0       (cmd_code_reset),
        .cmd_code_sync_0        (cmd_code_sync),
        .cmd_code_trigger_0     (cmd_code_trigger),
        .cmd_en_act_0           (cmd_en_act),
        .cmd_en_adc_reset_0     (cmd_en_adc_reset),
        .cmd_en_edge_0          (cmd_en_edge),
        .cmd_en_idle_0          (cmd_en_idle),
        .cmd_en_reset_0         (cmd_en_reset),
        .cmd_en_sync_0          (cmd_en_sync),
        .cmd_en_trigger_0       (cmd_en_trigger),
        .cmd_stamp_sync_0       (cmd_stamp_sync),
        .cmd_stamp_sync_en_0    (cmd_stamp_sync_en),
        .fake_time_stamp_en_0   (fake_time_stamp_en),
        .fake_time_stamp_init_0 (fake_time_stamp_init),
        .fast_command_out       (fastcommand_out),
        .sda_in                 (sda_in_out),
        .sda_out                (sda_out_out),
        .scl                    (scl_out),
        .sclk                   (axi_clk_out),
        .stat_0                 (ts_stat),
        .ts_clk                 (clk62p5),
        .ts_clk_sel             (ts_clk_sel),
        .ts_rdy                 (ts_rdy),
        .ts_rec_d               (ts_rec_d_pad     ), // 62.5Mbps DCSK data
        .ts_rec_d_clk           (gen_clk          ), // 62.5MHz PLL alt clock, MUX'd inside
        .ts_rst                 (ts_rst),
        .ts_sync                (ts_sync),
        .ts_sync_v              (ts_sync_v),
        .ts_tstamp              (ts_tstamp),
        .tx_dis_0               (sfp_dis),
        .txd_0                  (tx_timing)
    );
    
    
    I2C_CONTROL i2c_ctrl
    ( 
        .I2C_SELECT       ({4'b0, i2c_select}), 
        
        .iic_rtl_0_scl_i  (iic_rtl_0_scl_i), 
        .iic_rtl_0_scl_o  (iic_rtl_0_scl_o), 
        .iic_rtl_0_scl_t  (iic_rtl_0_scl_t), 
        
        .iic_rtl_0_sda_i  (iic_rtl_0_sda_i), 
        .iic_rtl_0_sda_o  (iic_rtl_0_sda_o), 
        .iic_rtl_0_sda_t  (iic_rtl_0_sda_t), 
        
        .SI5344_SCL       (si5344_scl), 
        .SI5344_SDA       (si5344_sda), 
        
        .SI5342_SCL       (si5342_scl), 
        .SI5342_SDA       (si5342_sda), 
        
        .QSFP_SCL         (qsfp_scl),     
        .QSFP_SDA         (qsfp_sda), 
        
        .PL_FEMB_PWR_SCL  (pl_femb_pwr_scl), 
        .PL_FEMB_PWR_SDA  (pl_femb_pwr_sda), 
        
        .PL_FEMB_EN_SCL   (pl_femb_en_scl), 
        .PL_FEMB_EN_SDA   (pl_femb_en_sda), 
        
        .SENSOR_I2C_SCL   (sensor_i2c_scl), 
        .SENSOR_I2C_SDA   (sensor_i2c_sda), 
        
        .PL_FEMB_PWR2_SCL (pl_femb_pwr2_scl), 
        .PL_FEMB_PWR2_SDA (pl_femb_pwr2_sda), 
        
        .PL_FEMB_PWR3_SCL (pl_femb_pwr3_scl),  
        .PL_FEMB_PWR3_SDA (pl_femb_pwr3_sda),  
        
        .FLASH_SCL        (flash_scl), 
        .FLASH_SDA        (flash_sda), 
        
        .ADN2814_SCL      (adn2814_scl),   
        .ADN2814_SDA      (adn2814_sda) 
    );

    mon_adc_spi mon_adc
    (
        .adc_sck     (mon_adc_sck),
        .adc_sdo     (mon_adc_sdo),
        .adc_cs      (mon_adc_cs),
        
        .axi_clk     (axi_clk_out),   // system clock
        .start       (mon_adc_start), // start pulse. Conversion starts at rising edge
        .mon_adc_val (mon_adc_val),    // measured values
        .busy        (mon_adc_busy)
    );

    calib_dac_spi calib_dac
    (
        .cal_dac_sync (cal_dac_sync),
        .cal_dac_sclk (cal_dac_sclk),
        .cal_dac_din  (cal_dac_din ),
        
        .axi_clk      (axi_clk_out), // system clock
        .start        (cal_dac_start), // start pulse. FSM starts writing at the rising edge
        .data         (cal_dac_data), // data to write
        .busy         (cal_dac_busy) // FSM shifting, wait until this signal drops to 0
    );
    


    always @(*)
    begin
        sfp_dis_od = 8'hff;
        sfp_dis_od [bp_slot_addr[2:0]] = sfp_dis; // drive the pin matching the slot number
    end
// register 0xA00C0000[17:16] selects:
    // 2'b00 -> "new" PTB with PTCv4 (default)
    // 2'b01 -> "new" PTB with PTCv3B
    // 2'b10 -> "old" PTB with PTCv3B
    // 2'b11 -> not a legal value
    wire [7:0] sfp_dis_od_descrambled;
    assign sfp_dis_od_descrambled[1] = (prio_enc_descramble==2'b00) ? sfp_dis_od[5] : 
                                       (prio_enc_descramble==2'b01) ? sfp_dis_od[0] :
                                       (prio_enc_descramble==2'b10) ? sfp_dis_od[1] :
                                                                     1'b1 ;
    assign sfp_dis_od_descrambled[0] = (prio_enc_descramble==2'b00) ? sfp_dis_od[4] : 
                                       (prio_enc_descramble==2'b01) ? sfp_dis_od[1] :
                                       (prio_enc_descramble==2'b10) ? sfp_dis_od[0] :
                                                                     1'b1 ;
    assign sfp_dis_od_descrambled[3] = (prio_enc_descramble==2'b00) ? sfp_dis_od[1] : 
                                       (prio_enc_descramble==2'b01) ? sfp_dis_od[2] :
                                       (prio_enc_descramble==2'b10) ? sfp_dis_od[3] :
                                                                     1'b1 ;
    assign sfp_dis_od_descrambled[2] = (prio_enc_descramble==2'b00) ? sfp_dis_od[0] : 
                                       (prio_enc_descramble==2'b01) ? sfp_dis_od[3] :
                                       (prio_enc_descramble==2'b10) ? sfp_dis_od[2] :
                                                                     1'b1 ;
    assign sfp_dis_od_descrambled[4] = (prio_enc_descramble==2'b00) ? sfp_dis_od[3] : 
                                       (prio_enc_descramble==2'b01) ? sfp_dis_od[4] :
                                       (prio_enc_descramble==2'b10) ? sfp_dis_od[4] :
                                                                     1'b1 ;
    assign sfp_dis_od_descrambled[5] = (prio_enc_descramble==2'b00) ? sfp_dis_od[2] : 
                                       (prio_enc_descramble==2'b01) ? sfp_dis_od[5] :
                                       (prio_enc_descramble==2'b10) ? sfp_dis_od[5] :
                                                                     1'b1 ;
    assign sfp_dis_od_descrambled[6] = sfp_dis_od[7]; // SPARE in PTCv3B, will be reassigned in PTCv4
    assign sfp_dis_od_descrambled[7] = sfp_dis_od[6]; // SPARE in PTCv3B, will be reassigned in PTCv4
    // open-drain buffers for sfp enable signals
   IOBUF bp_io_buf[7:0] 
   (
      .O  (bp_io_o [7:0]),     
      .IO (bp_io[7:0]),
      .I  (1'b0),     
      .T  (sfp_dis_od_descrambled[7:0])
   );


    // misc_io[ 7:0] = connector P2 pins 15,13,11,9,7,5,3,1
    // misc_io[15:8] = connector P1 pins 15,13,11,9,7,5,3,1
    // test points
    assign misc_io[1:0]  = rx_k[0];
    assign misc_io[3:2]  = rx_k[1];
    assign misc_io[5:4]  = rx_k[2];
    assign misc_io[7:6]  = rx_k[3];
    assign misc_io[11:8] = valid12[3:0];
    assign misc_io[13]   = ts_rec_d_pad;
    assign misc_io[14]   = clk125;
    assign misc_io[15]   = clk62p5;

    // firmware timestamp 
    // ISE: set -g USR_ACCESS option to TIMESTAMP in BitGen settings
    // Vivado: set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]
    // ddddd_MMMM_yyyyyy_hhhhh_mmmmmm_ssssss
    // (bit 31) .. (bit 0)
    // Where:
    //  ddddd = 5 bits to represent 31 days in a month
    //   MMMM = 4 bits to represent 12 months in a year
    // yyyyyy = 6 bits to represent 0 to 63 (to note year 2000 to 2063)
    //  hhhhh = 5 bits to represent 24 hours in a day
    // mmmmmm = 6 bits to represent 60 minutes in an hour
    // ssssss = 6 bits to represent 60 seconds in a minute
	USR_ACCESSE2 usr_access
	(
		.DATA (fw_date),
		.CFGCLK (),
		.DATAVALID ()
	);
         
endmodule
