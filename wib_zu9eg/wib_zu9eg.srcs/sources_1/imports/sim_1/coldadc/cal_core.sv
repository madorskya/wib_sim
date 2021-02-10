`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
///////////////////////////////////////////////////////////////////
// File Name: cal_core.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description: Interface with ADC Calibration Hardware for DUNE Cold ADC
//              Includes:
//              External Interface (register file, UART_ADC, I2C_ADC input)
//              slow serial output
/////////////////////////////////////////////////////////////////

module cal_core

    (output logic [15:0] adc_out_0,         // ADC0 output
    output logic [15:0] adc_out_1,          // ADC1 output
    output logic [7:0] read_data,           // RAM data (for readback)
    output logic miso,                      // UART_ADC output from current chip    
    output logic [15:0] w0_0_0, //  weight w0 (ADC0)
    output logic [15:0] w0_1_0, //  weight w0 (ADC0)
    output logic [15:0] w0_2_0, //  weight w0 (ADC0)
    output logic [15:0] w0_3_0, //  weight w0 (ADC0)
    output logic [15:0] w0_4_0, //  weight w0 (ADC0)
    output logic [15:0] w0_5_0, //  weight w0 (ADC0)
    output logic [15:0] w0_6_0, //  weight w0 (ADC0)
    output logic [15:0] w0_7_0, //  weight w0 (ADC0)
    output logic [15:0] w0_8_0, //  weight w0 (ADC0)
    output logic [15:0] w0_9_0, //  weight w0 (ADC0)
    output logic [15:0] w0_10_0, //  weight w0 (ADC0)
    output logic [15:0] w0_11_0, //  weight w0 (ADC0)
    output logic [15:0] w0_12_0, //  weight w0 (ADC0)
    output logic [15:0] w0_13_0, //  weight w0 (ADC0)
    output logic [15:0] w0_14_0, //  weight w0 (ADC0)
    output logic [15:0] w2_0_0, //  weight w2 (ADC0)
    output logic [15:0] w2_1_0, //  weight w2 (ADC0)
    output logic [15:0] w2_2_0, //  weight w2 (ADC0)
    output logic [15:0] w2_3_0, //  weight w2 (ADC0)
    output logic [15:0] w2_4_0, //  weight w2 (ADC0)
    output logic [15:0] w2_5_0, //  weight w2 (ADC0)
    output logic [15:0] w2_6_0, //  weight w2 (ADC0)
    output logic [15:0] w2_7_0, //  weight w2 (ADC0)
    output logic [15:0] w2_8_0, //  weight w2 (ADC0)
    output logic [15:0] w2_9_0, //  weight w2 (ADC0)
    output logic [15:0] w2_10_0, //  weight w2 (ADC0)
    output logic [15:0] w2_11_0, //  weight w2 (ADC0)
    output logic [15:0] w2_12_0, //  weight w2 (ADC0)
    output logic [15:0] w2_13_0, //  weight w2 (ADC0)
    output logic [15:0] w2_14_0, //  weight w2 (ADC0)
    output logic [15:0] w0_0_1, //  weight w0 (ADC1)
    output logic [15:0] w0_1_1, //  weight w0 (ADC1)
    output logic [15:0] w0_2_1, //  weight w0 (ADC1)
    output logic [15:0] w0_3_1, //  weight w0 (ADC1)
    output logic [15:0] w0_4_1, //  weight w0 (ADC1)
    output logic [15:0] w0_5_1, //  weight w0 (ADC1)
    output logic [15:0] w0_6_1, //  weight w0 (ADC1)
    output logic [15:0] w0_7_1, //  weight w0 (ADC1)
    output logic [15:0] w0_8_1, //  weight w0 (ADC1)
    output logic [15:0] w0_9_1, //  weight w0 (ADC1)
    output logic [15:0] w0_10_1, //  weight w0 (ADC1)
    output logic [15:0] w0_11_1, //  weight w0 (ADC1)
    output logic [15:0] w0_12_1, //  weight w0 (ADC1)
    output logic [15:0] w0_13_1, //  weight w0 (ADC1)
    output logic [15:0] w0_14_1, //  weight w0 (ADC1)
    output logic [15:0] w2_0_1, //  weight w2 (ADC1)
    output logic [15:0] w2_1_1, //  weight w2 (ADC1)
    output logic [15:0] w2_2_1, //  weight w2 (ADC1)
    output logic [15:0] w2_3_1, //  weight w2 (ADC1)
    output logic [15:0] w2_4_1, //  weight w2 (ADC1)
    output logic [15:0] w2_5_1, //  weight w2 (ADC1)
    output logic [15:0] w2_6_1, //  weight w2 (ADC1)
    output logic [15:0] w2_7_1, //  weight w2 (ADC1)
    output logic [15:0] w2_8_1, //  weight w2 (ADC1)
    output logic [15:0] w2_9_1, //  weight w2 (ADC1)
    output logic [15:0] w2_10_1, //  weight w2 (ADC1)
    output logic [15:0] w2_11_1, //  weight w2 (ADC1)
    output logic [15:0] w2_12_1, //  weight w2 (ADC1)
    output logic [15:0] w2_13_1, //  weight w2 (ADC1)
    output logic [15:0] w2_14_1, //  weight w2 (ADC1)

// outputs to control ADC  
    output logic extern_force_refp [1:0], // forces postive reference
    output logic extern_force_refn [1:0], // forces negative reference
    output logic extern_force_cm [1:0], // forces common-mode reference
    output logic extern_force_msb [1:0], // data force MSB bit 
    output logic extern_force_lsb [1:0], // data force MSB bit 
                                // data force is 00, 01, or 10
    output logic extern_caldac_ctrl [1:0], // controls calibration dac.  
                                // 0: dac=-vrefd/4; 1: dac=vrefd/4
    output logic [0:6] extern_calibrate_stage_0, // which stage to calibrate
    output logic [0:6] extern_calibrate_stage_1, // which stage to calibrate
    output logic adc_pd [1:0],          // high to power down ADC0/1
    output logic adc_disable_gb,        // high to disable gain boosters
    output logic adc_sync_mode,         // =1 for ADC to put out sync pattern
    output logic adc_test_mode,         // =1 for ADC to convert test input
    output logic [2:0] adc_bias,        // ADC bias current adjust
    output logic [1:0] nonov_ctrl,      // adjust phi1/phi2 nonoverlap time
    output logic edge_select,       // 0 = nominal, 1 = 180 degree phase shift
    output logic adc_output_format,  // 0 = two's complement, 1 = offset binary
    output logic enable_radix_converter, // 0 = disable, 1 = enable (derived
                                        // from ADC output format) 
// outputs to control buffer and SHA
    output logic ibuff_sdc_pd,          // power down s2d
    output logic ibuff_db_pd,           // power down diff buffer
    output logic [3:0] ibuff_ctrl,      // input buffer control word
    output logic [7:0] sha_pd_0,        // power down for SHAs for ADC0
    output logic [7:0] sha_pd_1,        // power down for SHAs for ADC1
    output logic sha_se_input,          // 0 =  accepting differential signal
                                        // 1 = need to convert to diff from se
    output logic [2:0] sha0_bias,       // ADC SHA0 current adjust
    output logic [2:0] sha1_bias,       // ADC SHA1 current adjust
    output logic [2:0] sha2_bias,       // ADC SHA2 current adjust
    output logic [2:0] sha3_bias,       // ADC SHA3 current adjust
    output logic [2:0] sha4_bias,       // ADC SHA4 current adjust
    output logic [2:0] sha5_bias,       // ADC SHA5 current adjust
    output logic [2:0] sha6_bias,       // ADC SHA6 current adjust
    output logic [2:0] sha7_bias,       // ADC SHA7 current adjust
    output logic [2:0] freeze_select_0, // which SHA to connect (when frozen)
    output logic [2:0] freeze_select_1, // which SHA to connect (when frozen)
    output logic freeze_sha [1:0],      // high to freeze which SHA connected 
    output logic clk_sha_select,  // 0 = use backend sha_clk, 1 = use
                                    // internal sha_clk
    output logic [1:0] sha_select_ctrl, // skew correct sha select signals  
// outputs to control BNL reference gen block
    output logic [7:0] vrefp_ctrl,      // controls VREFP DAC
    output logic [7:0] vrefn_ctrl,      // controls VREFN DAC
    output logic [7:0] vcmo_ctrl,       // controls VCMO DAC
    output logic [7:0] vcmi_ctrl,       // controls VCMI DAC
    output logic [1:0] vrefp_offset,    // controls VREFP offset adjust
    output logic [1:0] vrefn_offset,    // controls VREFN offset adjust
    output logic [1:0] vcmo_offset,     // controls VCMO offset adjust
    output logic [1:0] vcmi_offset,     // controls VCMI offset adjust
    output logic [7:0] i_vdac_0_ctrl,   // controls VDAC current DAC
    output logic [7:0] i_vdac_1_ctrl,   // controls VDAC current DAC
    output logic [7:0] ibuff0_bjt_ctrl, // controls input buffer current DAC
    output logic [7:0] ibuff1_bjt_ctrl,     // controls input buffer current DAC
    output logic external_reference,    // high for external ADC ref voltages
    output logic external_bgr,          // high for external bandgap
    output logic bgr_select,            // 0-> BJT, 1-> CMOS
    output logic [15:0] ref_monitor,    // pre-decoded cntl for local monitor
    output logic [11:0] ref_powerdown,  // powerdown word for BNL reference
    output logic [2:0] ref_bias,        // REF BUFFER current adjust
// outputs to control LBNL reference gen block
    output logic [7:0] vrefp_ctrl_cmos, // controls CMOS VREFP DAC
    output logic [7:0] vrefn_ctrl_cmos, // controls CMOS VREFN DAC
    output logic [7:0] vcmo_ctrl_cmos,  // controls CMOS VCMO DAC
    output logic [7:0] vcmi_ctrl_cmos,  // controls CMOS VCMI DAC
    output logic [1:0] iref_sel,        // selects where chip bias currents 
                                        // come from
                                        // 00 -> BGR, 01 -> CMOS ref (int R)
                                        // 10 -> CMOS ref (ext R) 11 -> plan B
    output logic [2:0] vt_iref_trim_ctrl, // trim vt-reference currents 
                                        // 5 uA LSB
    output logic vt_kickstart,          // high to kickstart CMOS reference
    output logic [5:0] ibuff0_cmos,     // controls input buffer current DAC
    output logic [5:0] ibuff1_cmos,     // controls input buffer current DAC
// outputs for cal_engine
    output logic calibrate [1:0],       // active high calibration command
    output logic [3:0] meas_cycles,     // # of measurements 
                                        // for each weight (averaging) 
                                        // cycles = 2^meas_cycles

    output logic [2:0] cal_stages,  // # of bits to calibrate (up to seven)
// output for correction logic test
    output logic test_correction_logic,
    output logic [0:14] test_lsb0,  // ADC0 test word LSB
    output logic [0:14] test_msb0,  // ADC0 test word MSB
    output logic [0:14] test_lsb1,  // ADC1 test word LSB
    output logic [0:14] test_msb1,  // ADC1 test word MSB

// outputs to control voltage and current monitors
    output logic vmonitor_enable,       // 0-> disable, 1-> enable
    output logic imonitor_enable,       // 0-> disable, 1-> enable
    output logic [2:0] vmonitor_select, // 000 --> VBGR, 001 --> VCMI, 
                                        // 010 --> VCMO, 011 --> VREFP, 
                                        // 100 --> VREFN 
    output logic [2:0] imonitor_select, // 000 --> IMASTER, 001 --> IBUFF, 
                                        // 010 --> IADC0, 011 --> IADC1, 
                                        // 100 --> ICOMP0, 101 --> ICOMP1
// SSO outputs
    output logic sso_data_out [1:0],    // output bits (ADC1 and ADC0)
    output logic sso_frame_clk,         // frame clock (div16) 
    output logic sso_enable,            //  = 1 to enable SSO, 0 = gate clk
// config outputs for backend
    output logic [3:0] config_lvds_i_ctrl, // controls output lvds current
    output logic [4:0] config_start_number, // controls SHA clock phase 
    output logic config_debug_enable,   // 0 -> disable digital debug port
                                        // 1 -> enable digital debug port
    output logic [3:0] config_debug_select,// 0000 --> 2 MHz sample clk
                                            // 0001 --> 16 MHz ADC clk
// test outputs needed to preserve signals after P&R
    output logic [1:0] adc_output_select, // selects cal or uncal ADC data
    output logic config_test_data_mode, // =1 to send test data out
    output logic [15:0] config_adc0_pattern,  // fake ADC0 data
    output logic [15:0] config_adc1_pattern,  // fake ADC1 data
// external inputs from UART_ADC (external to cal core)
    input logic mosi,                   // input to UART_ADC on current chip
    input logic [3:0] chip_id,          // unique ID for each chip
// external inputs from I2C_ADC (external to cal core)
    input logic [7:0] write_addr_external_i2c,   // 8-bit RAM write address 
    input logic [7:0] write_data_external_i2c, // RAM data in external
    input logic [7:0] read_addr_external_i2c,  // 8-bit RAM read address 
    input logic external_mode_i2c,   // high to put regfile into extern mode
    input logic write_external_i2c,  // high for external write 
    input logic read_external_i2c,   // high for read op
// inputs from ADCs    
    input logic [15:0] synced_adc_cal_0,  // synced adc word w calibration
    input logic [15:0] synced_adc_cal_1,  // synced adc word w calibration
    input logic [15:0] synced_adc_nocal_0,// synced adc word w/o calib
    input logic [15:0] synced_adc_nocal_1,// synced adc word w/o calib
    input logic [0:14] synced_msb_0,      // MSBs from each ADC
    input logic [0:14] synced_msb_1,      // MSBs from each ADC
    input logic [0:14] synced_lsb_0,      // LSBs from each ADC
    input logic [0:14] synced_lsb_1,      // LSBs from each ADC
// control r/w from cal engine
    input logic [15:0] write_data_0, // data (w0/w2) to write to CL regfile
    input logic [15:0] write_data_1, // data (w0/w2) to write to CL regfile

    input logic [2:0] current_stage_0, // current stage 
    input logic [2:0] current_stage_1, // current stage 
    input logic clear_regs_internal [1:0], // initialize cal registers
    input logic weight_sel [1:0],         // 0 = sel w0; 1 = sel w2
    input logic g_sel [1:0],             // 1 = write gain measurement
    input logic o_sel [1:0],             // 1 = write offset measurement
    input logic write [1:0],             // set = 1 to write word to cl_regfile
    input logic busy [1:0],               // 1 if calibration active
// clk & reset
    input logic clk,                // system clock (16 MHz nominal)
    input logic reset_n);           // digital reset (active low)

// internal signals
logic [15:0] adc_out_0_data;        // ADC0 data output
logic [15:0] adc_out_1_data;        // ADC0 data output
//2D arrays
logic [15:0] w0_0_internal [0:14]; // ADC0 output weights w0 (2D array)
logic [15:0] w2_0_internal [0:14]; // ADC0 output weights w2 (2D array)
logic [15:0] w0_1_internal [0:14]; // ADC1 output weights w0 (2D array)
logic [15:0] w2_1_internal [0:14]; // ADC1 output weights w2 (2D array)
logic [15:0] write_data_internal [1:0]; // RAM data in ADC
logic [2:0] current_stage_internal [1:0]; // current stage

logic reset_n_sync; // asynchronous reset passed to system clock 'clk' domain
logic [7:0] config_bits [0:55]; // configuration

logic clear_regs [1:0];

logic extern_clear_regs [1:0];
logic [2:0] extern_stage_select;
logic [1:0] extern_force_enable;


//
// CONFIG BITS
//
// sha

// calcore

logic load_calib_defaults;

logic load_config_defaults;
// sso
logic [2:0] sso_op_mode;
logic [15:0] sso_testword;

// configuration word definitions
localparam BUFFER = 0;
localparam SHA_0 = 1;
localparam SHA_1 = 2;
localparam SHA_2 = 3;
localparam SHA_3 = 4;
localparam SHA_4 = 5;
localparam SHA_5 = 6;
localparam SHA_6 = 7;
localparam ADC_0 = 8;
localparam ADC_1 = 9;
localparam REF_0 = 10;
localparam REF_1 = 11;
localparam REF_2 = 12;
localparam REF_3 = 13;
localparam REF_4 = 14;
localparam REF_5 = 15;
localparam REF_6 = 16;
localparam REF_7 = 17;
localparam REF_8 = 18;
localparam REF_9 = 19;
localparam REF_10 = 20;
localparam REF_11 = 21;
localparam REF_12 = 22;
localparam REF_13 = 23;
localparam CMOS_REF_0 = 24;
localparam CMOS_REF_1 = 25;
localparam CMOS_REF_2 = 26;
localparam CMOS_REF_3 = 27;
localparam CMOS_REF_4 = 28;
localparam CMOS_REF_5 = 29;
localparam CMOS_REF_6 = 30;
localparam CAL_0 = 31;
localparam CAL_1 = 32;
localparam CAL_2 = 33;
localparam CAL_3 = 34;
localparam CAL_4 = 35;
localparam CAL_5 = 36;
localparam CAL_6 = 37;
localparam CAL_7 = 38;
localparam CAL_8 = 39;
localparam CAL_9 = 40;
localparam SSO_0 = 41;
localparam SSO_1 = 42;
localparam SSO_2 = 43;
localparam FORCE_0 = 44;
localparam FORCE_1 = 45;
localparam FORCE_2 = 46;
localparam MONITOR = 47;
localparam BACKEND_0 = 48;
localparam BACKEND_1 = 49;
localparam BACKEND_2 = 50;
localparam BACKEND_3 = 51;
localparam BACKEND_4 = 52;
localparam BACKEND_5 = 53;
localparam BACKEND_6 = 54;
localparam SPARE = 55;


// 1D to 2D array mapping
always_comb begin
    w0_0_0 = w0_0_internal[0]; 
    w0_1_0 = w0_0_internal[1]; 
    w0_2_0 = w0_0_internal[2]; 
    w0_3_0 = w0_0_internal[3]; 
    w0_4_0 = w0_0_internal[4]; 
    w0_5_0 = w0_0_internal[5]; 
    w0_6_0 = w0_0_internal[6]; 
    w0_7_0 = w0_0_internal[7]; 
    w0_8_0 = w0_0_internal[8]; 
    w0_9_0 = w0_0_internal[9]; 
    w0_10_0 = w0_0_internal[10]; 
    w0_11_0 = w0_0_internal[11]; 
    w0_12_0 = w0_0_internal[12]; 
    w0_13_0 = w0_0_internal[13]; 
    w0_14_0 = w0_0_internal[14]; 
    w2_0_0 = w2_0_internal[0]; 
    w2_1_0 = w2_0_internal[1]; 
    w2_2_0 = w2_0_internal[2]; 
    w2_3_0 = w2_0_internal[3]; 
    w2_4_0 = w2_0_internal[4]; 
    w2_5_0 = w2_0_internal[5]; 
    w2_6_0 = w2_0_internal[6]; 
    w2_7_0 = w2_0_internal[7]; 
    w2_8_0 = w2_0_internal[8]; 
    w2_9_0 = w2_0_internal[9]; 
    w2_10_0 = w2_0_internal[10]; 
    w2_11_0 = w2_0_internal[11]; 
    w2_12_0 = w2_0_internal[12]; 
    w2_13_0 = w2_0_internal[13]; 
    w2_14_0 = w2_0_internal[14]; 
    w0_0_1 = w0_1_internal[0]; 
    w0_1_1 = w0_1_internal[1]; 
    w0_2_1 = w0_1_internal[2]; 
    w0_3_1 = w0_1_internal[3]; 
    w0_4_1 = w0_1_internal[4]; 
    w0_5_1 = w0_1_internal[5]; 
    w0_6_1 = w0_1_internal[6]; 
    w0_7_1 = w0_1_internal[7]; 
    w0_8_1 = w0_1_internal[8]; 
    w0_9_1 = w0_1_internal[9]; 
    w0_10_1 = w0_1_internal[10]; 
    w0_11_1 = w0_1_internal[11]; 
    w0_12_1 = w0_1_internal[12]; 
    w0_13_1 = w0_1_internal[13]; 
    w0_14_1 = w0_1_internal[14]; 
    w2_0_1 = w2_1_internal[0]; 
    w2_1_1 = w2_1_internal[1]; 
    w2_2_1 = w2_1_internal[2]; 
    w2_3_1 = w2_1_internal[3]; 
    w2_4_1 = w2_1_internal[4]; 
    w2_5_1 = w2_1_internal[5]; 
    w2_6_1 = w2_1_internal[6]; 
    w2_7_1 = w2_1_internal[7]; 
    w2_8_1 = w2_1_internal[8]; 
    w2_9_1 = w2_1_internal[9]; 
    w2_10_1 = w2_1_internal[10]; 
    w2_11_1 = w2_1_internal[11]; 
    w2_12_1 = w2_1_internal[12]; 
    w2_13_1 = w2_1_internal[13]; 
    w2_14_1 = w2_1_internal[14]; 
    current_stage_internal[0] = current_stage_0;
    current_stage_internal[1] = current_stage_1;
    for (int i = 0; i < 16 ;i++) begin   
        write_data_internal[0][i] = write_data_0[i];
        write_data_internal[1][i] = write_data_1[i];
    end
end // always_comb

// map configuration bits
always_comb begin
    // BUFFER
    ibuff_sdc_pd            = config_bits[BUFFER][0];
    ibuff_db_pd             = config_bits[BUFFER][1];  
    ibuff_ctrl              = config_bits[BUFFER][7:4]; 
    // SHA
    freeze_sha[0]           = config_bits[SHA_0][0];
    freeze_sha[1]           = config_bits[SHA_0][1];
    freeze_select_0         = config_bits[SHA_0][4:2];
    freeze_select_1         = config_bits[SHA_0][7:5];
    sha_pd_0                = config_bits[SHA_1][7:0];
    sha_pd_1                = config_bits[SHA_2][7:0];
    sha0_bias               = config_bits[SHA_3][2:0];
    sha_se_input            = config_bits[SHA_3][3];
    sha1_bias               = config_bits[SHA_3][6:4];
    sha2_bias               = config_bits[SHA_4][2:0];
    sha3_bias               = config_bits[SHA_4][6:4];
    sha4_bias               = config_bits[SHA_5][2:0];
    sha5_bias               = config_bits[SHA_5][6:4];
    sha6_bias               = config_bits[SHA_6][2:0];
    sha7_bias               = config_bits[SHA_6][6:4];
    clk_sha_select          = config_bits[SHA_6][7];
    // ADC
    adc_bias                = config_bits[ADC_0][2:0];
    nonov_ctrl              = config_bits[ADC_0][4:3];
    edge_select             = config_bits[ADC_0][5];
    sha_select_ctrl         = config_bits[ADC_0][7:6];
    adc_pd[0]               = config_bits[ADC_1][0];
    adc_pd[1]               = config_bits[ADC_1][1];
    adc_disable_gb          = config_bits[ADC_1][2];
    adc_output_format       = config_bits[ADC_1][3];
    adc_sync_mode           = config_bits[ADC_1][4];
    adc_test_mode           = config_bits[ADC_1][5];
    adc_output_select       = config_bits[ADC_1][7:6];
    // REF
    vrefp_ctrl              = config_bits[REF_0][7:0];  
    vrefn_ctrl              = config_bits[REF_1][7:0];  
    vcmo_ctrl               = config_bits[REF_2][7:0];  
    vcmi_ctrl               = config_bits[REF_3][7:0];  
    vrefp_offset            = config_bits[REF_4][1:0];
    vrefn_offset            = config_bits[REF_4][3:2];
    vcmo_offset             = config_bits[REF_4][5:4];
    vcmi_offset             = config_bits[REF_4][7:6];
    i_vdac_0_ctrl           = config_bits[REF_5][7:0];
    i_vdac_1_ctrl           = config_bits[REF_6][7:0];
    ibuff0_bjt_ctrl         = config_bits[REF_7][7:0];
    ibuff1_bjt_ctrl         = config_bits[REF_8][7:0];
    external_reference      = config_bits[REF_9][0];
    external_bgr            = config_bits[REF_9][1];
    bgr_select              = config_bits[REF_9][2];
    ref_monitor[7:0]        = config_bits[REF_10][7:0];
    ref_monitor[15:8]       = config_bits[REF_11][7:0];
    ref_powerdown[7:0]      = config_bits[REF_12][7:0];
    ref_powerdown[11:8]     = config_bits[REF_13][3:0];
    ref_bias[2:0]           = config_bits[REF_13][6:4];
    // CMOS_REF
    vrefp_ctrl_cmos         = config_bits[CMOS_REF_0][7:0];
    vrefn_ctrl_cmos         = config_bits[CMOS_REF_1][7:0];
    vcmo_ctrl_cmos          = config_bits[CMOS_REF_2][7:0];
    vcmi_ctrl_cmos          = config_bits[CMOS_REF_3][7:0];
    iref_sel                = config_bits[CMOS_REF_4][1:0];
    vt_iref_trim_ctrl       = config_bits[CMOS_REF_4][4:2];
    vt_kickstart            = config_bits[CMOS_REF_4][5];
    ibuff0_cmos             = config_bits[CMOS_REF_5][5:0];
    ibuff1_cmos             = config_bits[CMOS_REF_6][5:0];
    // CAL
    calibrate[0]            = config_bits[CAL_0][0];
    calibrate[1]            = config_bits[CAL_0][1];
    load_calib_defaults     = config_bits[CAL_0][2];
    load_config_defaults    = config_bits[CAL_0][3];
    meas_cycles             = config_bits[CAL_1][3:0]; 
    cal_stages              = config_bits[CAL_1][6:4]; 
    // CORRECTION LOGIC
    test_correction_logic   = config_bits[CAL_1][7];
    test_lsb0[14]            = config_bits[CAL_2][0];
    test_lsb0[13]            = config_bits[CAL_2][1];
    test_lsb0[12]            = config_bits[CAL_2][2];
    test_lsb0[11]            = config_bits[CAL_2][3];
    test_lsb0[10]            = config_bits[CAL_2][4];
    test_lsb0[9]            = config_bits[CAL_2][5];
    test_lsb0[8]            = config_bits[CAL_2][6];
    test_lsb0[7]            = config_bits[CAL_2][7];
    test_lsb0[6]            = config_bits[CAL_3][0];
    test_lsb0[5]            = config_bits[CAL_3][1];
    test_lsb0[4]           = config_bits[CAL_3][2];
    test_lsb0[3]           = config_bits[CAL_3][3];
    test_lsb0[2]           = config_bits[CAL_3][4];
    test_lsb0[1]           = config_bits[CAL_3][5];
    test_lsb0[0]           = config_bits[CAL_3][6];
    test_msb0[14]            = config_bits[CAL_4][0];
    test_msb0[13]            = config_bits[CAL_4][1];
    test_msb0[12]            = config_bits[CAL_4][2];
    test_msb0[11]            = config_bits[CAL_4][3];
    test_msb0[10]            = config_bits[CAL_4][4];
    test_msb0[9]            = config_bits[CAL_4][5];
    test_msb0[8]            = config_bits[CAL_4][6];
    test_msb0[7]            = config_bits[CAL_4][7];
    test_msb0[6]            = config_bits[CAL_5][0];
    test_msb0[5]            = config_bits[CAL_5][1];
    test_msb0[4]           = config_bits[CAL_5][2];
    test_msb0[3]           = config_bits[CAL_5][3];
    test_msb0[2]           = config_bits[CAL_5][4];
    test_msb0[1]           = config_bits[CAL_5][5];
    test_msb0[0]           = config_bits[CAL_5][6];
    test_lsb1[14]            = config_bits[CAL_6][0];
    test_lsb1[13]            = config_bits[CAL_6][1];
    test_lsb1[12]            = config_bits[CAL_6][2];
    test_lsb1[11]            = config_bits[CAL_6][3];
    test_lsb1[10]            = config_bits[CAL_6][4];
    test_lsb1[9]            = config_bits[CAL_6][5];
    test_lsb1[8]            = config_bits[CAL_6][6];
    test_lsb1[7]            = config_bits[CAL_6][7];
    test_lsb1[6]            = config_bits[CAL_7][0];
    test_lsb1[5]            = config_bits[CAL_7][1];
    test_lsb1[4]           = config_bits[CAL_7][2];
    test_lsb1[3]           = config_bits[CAL_7][3];
    test_lsb1[2]           = config_bits[CAL_7][4];
    test_lsb1[1]           = config_bits[CAL_7][5];
    test_lsb1[0]           = config_bits[CAL_7][6];
    test_msb1[14]            = config_bits[CAL_8][0];
    test_msb1[13]            = config_bits[CAL_8][1];
    test_msb1[12]            = config_bits[CAL_8][2];
    test_msb1[11]            = config_bits[CAL_8][3];
    test_msb1[10]            = config_bits[CAL_8][4];
    test_msb1[9]            = config_bits[CAL_8][5];
    test_msb1[8]            = config_bits[CAL_8][6];
    test_msb1[7]            = config_bits[CAL_8][7];
    test_msb1[6]            = config_bits[CAL_9][0];
    test_msb1[5]            = config_bits[CAL_9][1];
    test_msb1[4]           = config_bits[CAL_9][2];
    test_msb1[3]           = config_bits[CAL_9][3];
    test_msb1[2]           = config_bits[CAL_9][4];
    test_msb1[1]           = config_bits[CAL_9][5];
    test_msb1[0]           = config_bits[CAL_9][6];  
    // SSO
    sso_enable              = config_bits[SSO_0][0];
    sso_op_mode             = config_bits[SSO_0][3:1];
    sso_testword[7:0]       = config_bits[SSO_1][7:0]; 
    sso_testword[15:8]      = config_bits[SSO_2][7:0]; 
    // FORCE
    extern_force_enable[1:0] = config_bits[FORCE_0][1:0];
    extern_stage_select     = config_bits[FORCE_0][4:2];
    extern_force_refp[0]    = config_bits[FORCE_0][5];
    extern_force_refp[1]    = config_bits[FORCE_0][6];
    extern_force_refn[0]    = config_bits[FORCE_1][0];
    extern_force_refn[1]    = config_bits[FORCE_1][1];
    extern_force_cm[0]      = config_bits[FORCE_1][2];
    extern_force_cm[1]      = config_bits[FORCE_1][3];
    extern_force_msb[0]     = config_bits[FORCE_1][4];
    extern_force_msb[1]     = config_bits[FORCE_1][5];
    extern_force_lsb[0]     = config_bits[FORCE_2][0];
    extern_force_lsb[1]     = config_bits[FORCE_2][1];
    extern_caldac_ctrl[0]   = config_bits[FORCE_2][2];
    extern_caldac_ctrl[1]   = config_bits[FORCE_2][3];
    extern_clear_regs[0]    = config_bits[FORCE_2][4];
    extern_clear_regs[1]    = config_bits[FORCE_2][5];
    //MONITOR
    vmonitor_enable         = config_bits[MONITOR][0];
    imonitor_enable         = config_bits[MONITOR][1];
    vmonitor_select         = config_bits[MONITOR][4:2];
    imonitor_select         = config_bits[MONITOR][7:5];
    // BACKEND
    config_lvds_i_ctrl      = config_bits[BACKEND_0][3:0];
    config_start_number     = config_bits[BACKEND_1][4:0];
    config_debug_enable     = config_bits[BACKEND_2][0];
    config_debug_select     = config_bits[BACKEND_2][4:1];
    config_test_data_mode   = config_bits[BACKEND_2][5];
    config_adc0_pattern[7:0] = config_bits[BACKEND_3][7:0];
    config_adc0_pattern[15:8] = config_bits[BACKEND_4][7:0];
    config_adc1_pattern[7:0] = config_bits[BACKEND_5][7:0];
    config_adc1_pattern[15:8] = config_bits[BACKEND_6][7:0];
end // always


// generate clear regs signal
always_comb begin
    clear_regs[0] = clear_regs_internal[0] | extern_clear_regs[0];
    clear_regs[1] = clear_regs_internal[1] | extern_clear_regs[1];
end

// select output 
// 00: calibrated data
// 01: uncalibrated data
// 10: raw decisions (ADC0)
// 11: raw decisions (ADC1)
always_comb begin
    unique case (adc_output_select)
        2'b00 : begin
                    adc_out_0_data = synced_adc_cal_0;
                    adc_out_1_data = synced_adc_cal_1;
                    enable_radix_converter = 1'b0;
                end
        2'b01 : begin 
                    adc_out_0_data = synced_adc_nocal_0;
                    adc_out_1_data = synced_adc_nocal_1;
                    enable_radix_converter = 1'b1;
                end
        2'b10 : begin
                    adc_out_0_data = {1'b0,synced_lsb_0};
                    adc_out_1_data = {1'b0,synced_msb_0};
                    enable_radix_converter = 1'b0;
                end
        2'b11 : begin
                    adc_out_0_data = {1'b0,synced_lsb_1};
                    adc_out_1_data = {1'b0,synced_msb_1};
                    enable_radix_converter = 1'b0;
                end
    endcase
end // always_comb    

always_comb begin
    if (config_test_data_mode) begin
        adc_out_0 = config_adc0_pattern;
        adc_out_1 = config_adc1_pattern;
    end    
    else begin
        adc_out_0 = adc_out_0_data;
        adc_out_1 = adc_out_1_data;    
    end
end // always_comb

// expand extern_stage_select
always_comb begin
    if (extern_force_enable[0]) begin
        unique case (extern_stage_select)
            3'b000 : extern_calibrate_stage_0 = 7'b1000000; 
            3'b001 : extern_calibrate_stage_0 = 7'b0100000; 
            3'b010 : extern_calibrate_stage_0 = 7'b0010000; 
            3'b011 : extern_calibrate_stage_0 = 7'b0001000; 
            3'b100 : extern_calibrate_stage_0 = 7'b0000100; 
            3'b101 : extern_calibrate_stage_0 = 7'b0000010; 
            3'b110 : extern_calibrate_stage_0 = 7'b0000001; 
            3'b111 : extern_calibrate_stage_0 = 7'b0000000;
        endcase 
    end 
    else begin
        extern_calibrate_stage_0 = 7'b0000000;
    end
    if (extern_force_enable[1]) begin
        unique case (extern_stage_select)
            3'b000 : extern_calibrate_stage_1 = 7'b1000000; 
            3'b001 : extern_calibrate_stage_1 = 7'b0100000; 
            3'b010 : extern_calibrate_stage_1 = 7'b0010000; 
            3'b011 : extern_calibrate_stage_1 = 7'b0001000; 
            3'b100 : extern_calibrate_stage_1 = 7'b0000100; 
            3'b101 : extern_calibrate_stage_1 = 7'b0000010; 
            3'b110 : extern_calibrate_stage_1 = 7'b0000001; 
            3'b111 : extern_calibrate_stage_1 = 7'b0000000;
        endcase
    end 
    else begin
        extern_calibrate_stage_1 = 7'b0000000;
    end

end // always_comb


// instances

// clock-domain crossing for asynchronous reset signal
async2sync_cal_core 
    async2sync_reset_n
        (.clk               (clk),
        .async              (reset_n),
        .sync               (reset_n_sync)
        );

external_interface 
    external_interface_inst 
    (.write_internal        (write), 
    .weight_sel_internal    (weight_sel),
    .g_sel_internal         (g_sel),
    .o_sel_internal         (o_sel),
    .current_stage          (current_stage_internal),
    .write_data_internal    (write_data_internal),
    .reset_n                (reset_n_sync),
    .w0_0                   (w0_0_internal),
    .w2_0                   (w2_0_internal),
    .w0_1                   (w0_1_internal),
    .w2_1                   (w2_1_internal),
    .*);

sso 
    sso_inst
    (.adc0_calibrated       (synced_adc_cal_0),
    .adc0_uncalibrated      (synced_adc_nocal_0),
    .msb0                   (synced_msb_0),
    .lsb0                   (synced_lsb_0),
    .adc1_calibrated        (synced_adc_cal_1),
    .adc1_uncalibrated      (synced_adc_nocal_1),
    .msb1                   (synced_msb_1),
    .lsb1                   (synced_lsb_1),
    .op_mode                (sso_op_mode),
    .reset_n                (reset_n_sync),
    .*);
    
endmodule
