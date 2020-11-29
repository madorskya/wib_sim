`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
//////////////////////////////////////////////////////////////////////////
// File Name: cold_adc_analog.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description: SystemVerilog model of top level of analog part of
//          Cold ADC. This is a pin-accurate model and will be used
//          by INNO_ADCVUS to do some of the top-level routing.
//          The block comprises:
//          All the analog circuits: 16 input buffer, 16 SHAs,
//              2 ADCs, 2 reference buffer / generators
//          Per-adc cal_unit_wrapper.sv calibration unit.
//          Specifically it includes:
//
//          This block will be integrated with cold_adc_digital.sv to
//          build the top-level of Cold ADC.
//////////////////////////////////////////////////////////////////////////

module cold_adc_analog
// outputs to CAL_CORE from CAL_UNIT
    (output logic busy_1p2_0, // active high to indicate cal unit0 busy
    output logic busy_1p2_1, // active high to indicate cal unit1 busy
    output logic clear_regs_internal_1p2_0, // initialize cal regs ADC0
    output logic clear_regs_internal_1p2_1, // initialize cal regs ADC1
    output logic [2:0] current_stage_1p2_0,
    output logic [2:0] current_stage_1p2_1,
    output logic g_sel_1p2_0,              // 1 = write gain measurement ADC0
    output logic g_sel_1p2_1,              // 1 = write gain measurement ADC1
    output logic o_sel_1p2_0,             // 1 = write offset meas ADC0
    output logic o_sel_1p2_1,             // 1 = write offset meas ADC0
    output logic [15:0] synced_adc_cal_1p2_0, // synced ADC0 word w calibration
    output logic [15:0] synced_adc_cal_1p2_1, // synced ADC1 word w calibration
    output logic [15:0] synced_adc_nocal_1p2_0, // synced ADC0 word w/o calibration
    output logic [15:0] synced_adc_nocal_1p2_1, // synced ADC1 word w/o calibration
    output logic [0:14] synced_lsb_1p2_0,        // LSBs from ADC0
    output logic [0:14] synced_lsb_1p2_1,        // LSBs from ADC1
    output logic [0:14] synced_msb_1p2_0,        // MSBs from ADC0
    output logic [0:14] synced_msb_1p2_1,        // MSBs from ADC1
    output logic weight_sel_1p2_0,    // ADC0: 0 = sel w0; 1 = sel w2
    output logic weight_sel_1p2_1,    // ADC0: 0 = sel w0; 1 = sel w2
    output logic write_1p2_0,         // = 1 to write word to ADC0 cl_regfile
    output logic write_1p2_1,         // = 1 to write word to ADC1 cl_regfile
    output logic [15:0] write_data_1p2_0, // data (w0/w2) to regfile ADC0
    output logic [15:0] write_data_1p2_1, // data (w0/w2) to regfile ADC1
// inputs from CAL_CORE
    input logic [2:0] adc_bias_1p2,     // ADC bias adjust
    input logic adc_disable_gb_1p2,     // turn off gain boosters in op amp
    input logic adc_pd_1p2_0,       // high to power down ADC0
    input logic adc_pd_1p2_1,       // high to power down ADC1
    input logic adc_sync_mode_1p2,  // high to start sync mode
    input logic adc_test_mode,     // high to start adc test mode
    input logic bgr_select_1p2,     // 0 -> BJT, 1 -> CMOS
    input logic [2:0] cal_stages_cu0,  // # of bits to calibrate (up to seven)
    input logic [2:0] cal_stages_cu1,  // # of bits to calibrate (up to seven)
    input logic calibrate [1:0],      // active high cal command 0 -> ADC0
    //Changed for independent cal_units
    //input logic clk,            // system clock (16 MHz nominal)
    input logic clk_cu0,            // system clock (16 MHz nominal)
    input logic clk_cu1,            // system clock (16 MHz nominal)
    input logic clk_adc_1p2,    // ADC clock (16 MHz nominal)
    input logic clk_sha_1p2,    // SHA clock (2 MHz nominal)
    //Changed for independent cal_units
    //input logic clk_sha_select, // high if clk_sha_internal desired
    input logic clk_sha_select_cu0_1p2, // high if clk_sha_internal desired
    input logic clk_sha_select_cu1_1p2, // high if clk_sha_internal desired
    input logic clk_sha_select_analog_1p2, // high if clk_sha_internal desired
    input logic [1:0] sha_select_ctrl_1p2,
    //Changed for independent cal_units
    //input logic edge_select,        // 0 = nominal, 1 = 180 degree phase shift
    input logic edge_select_cu0,        // 0 = nominal, 1 = 180 degree phase shift
    input logic edge_select_cu1,        // 0 = nominal, 1 = 180 degree phase shift
    input logic enable_radix_converter, // 0 = disable, 1 = enable
    input logic external_bgr,           // 0 =  internal BGR, 1 = external BGR
    input logic external_reference_1p2, // 0 = internal ref, 1 = external ref
    input logic extern_caldac_ctrl [1:0], // configuration caldac_ctrl
    input logic [0:6] extern_calibrate_stage0, // configuration calibrate ADC0
    input logic [0:6] extern_calibrate_stage1, // configuration calibrate ADC1
    input logic extern_force_cm [1:0],         // configuration force_cm
    input logic extern_force_lsb [1:0],        // configuration force_lsb
    input logic extern_force_msb [1:0],        // configuration force_lsb
    input logic extern_force_refn [1:0],       // configuration force_refn
    input logic extern_force_refp [1:0],       // configuration force_refp
    input logic [2:0] freeze_select0, // SHA to connect (when frozen) ADC0
    input logic [2:0] freeze_select1, // SHA to connect (when frozen) ADC1
    input logic freeze_sha [1:0],     // high to freeze which SHA connected
    input logic [7:0] ibuff0_bjt_ctrl, // nominal BJT-based src for ibuff0
    input logic [5:0] ibuff0_cmos_ctrl, // nominal CMOS-based src for ibuff0
    input logic [7:0] ibuff1_bjt_ctrl, // nominal BJT-based src for ibuff1
    input logic [5:0] ibuff1_cmos_ctrl, // nominal CMOS-based src for ibuff1
    input logic [7:0] i_vdac_0_ctrl, // bias src for VDAC0 (in BJT-based Ref)
    input logic [7:0] i_vdac_1_ctrl, // bias src for VDAC1 (in BJT-based Ref)
    input logic [3:0] ibuff_ctrl, // i mux
    input logic ibuff_db_pd,        // pd and bypasss diff buffer
    input logic ibuff_sdc_pd,        // pd and bypasss sdc
    input logic imonitor_enable_1p2,    // high to enable imonitor
    input logic [2:0] imonitor_select_1p2,    // which i to monitor
    input logic [1:0] iref_sel_1p2,     // where do chip bias i come from?
    //Changed for independent cal_units
    //input logic [3:0] meas_cycles,      // # of measurements for each cycle
    input logic [3:0] meas_cycles_cu0,      // # of measurements for each cycle
    input logic [3:0] meas_cycles_cu1,      // # of measurements for each cycle
    input logic [1:0] nonov_ctrl_1p2,   // nonoverlap time in clks
    //Changed for independent cal_units
    //input logic output_format,      //  0 = two's complement, 1 = offset binary
    input logic output_format_cu0,      //  0 = two's complement, 1 = offset binary
    input logic output_format_cu1,      //  0 = two's complement, 1 = offset binary
    input logic [7:0] pd_sha_1p2_0, // pd for SHAs connected to ADC0
    input logic [7:0] pd_sha_1p2_1, // pd for SHAs connected to ADC1
    input logic [2:0] ref_bias_1p2, // reference buffer bias adjust
    input logic [15:0] ref_monitor, // monitor word for BJT reference
    input logic [11:0] ref_powerdown, // power down byte for reference blocks
    //Changed for independent cal_units
    //input logic reset_n,           // digital reset (active low)
    input logic reset_n_cu0,           // digital reset (active low)
    input logic reset_n_cu1,           // digital reset (active low)
    input logic [2:0] sha0_bias_1p2, // bias adjust for SHA0
    input logic [2:0] sha1_bias_1p2, // bias adjust for SHA1
    input logic [2:0] sha2_bias_1p2, // bias adjust for SHA2
    input logic [2:0] sha3_bias_1p2, // bias adjust for SHA3
    input logic [2:0] sha4_bias_1p2, // bias adjust for SHA4
    input logic [2:0] sha5_bias_1p2, // bias adjust for SHA5
    input logic [2:0] sha6_bias_1p2, // bias adjust for SHA6
    input logic [2:0] sha7_bias_1p2, // bias adjust for SHA7
    input logic sha_se_input_1p2, // = 0 for diff input, = 1 for se
    //Changed for independent cal_units
    //input logic test_correction_logic, // = 1 for correction logic test mode
    input logic test_correction_logic_cu0, // = 1 for correction logic test mode
    input logic test_correction_logic_cu1, // = 1 for correction logic test mode
    input logic [0:14] test_lsb0, // test word for LSBs (ADC0)
    input logic [0:14] test_msb0, // test word for MSBs (ADC0)
    input logic [0:14] test_lsb1, // test word for LSBs (ADC1)
    input logic [0:14] test_msb1, // test word for MSBs (ADC1)
    input logic [7:0] vcmi_ctrl, // vcmi BJT digital control
    input logic [7:0] vcmi_ctrl_cmos_1p2, // vcmi CMOS digital control
    input logic [1:0] vcmi_offset, // offset control for BJT offset DAC
    input logic [7:0] vcmo_ctrl, // vcmo BJT digital control
    input logic [7:0] vcmo_ctrl_cmos_1p2, // vcmo CMOS digital control
    input logic [1:0] vcmo_offset, // offset control for BJT offset DAC
    input logic vmonitor_enable_1p2,    // high to enable vmonitor
    input logic [2:0] vmonitor_select_1p2,    // which v to monitor
    input logic [7:0] vrefn_ctrl, // vrefn BJT digital control
    input logic [7:0] vrefn_ctrl_cmos_1p2, // vrefn CMOS digital control
    input logic [1:0] vrefn_offset, // offset control for BJT offset DAC
    input logic [7:0] vrefp_ctrl, // vrefp BJT digital control
    input logic [7:0] vrefp_ctrl_cmos_1p2, // vrefp CMOS digital control
    input logic [1:0] vrefp_offset, // offset control for BJT offset DAC
    input logic [2:0] vt_iref_trim_ctrl_1p2, // trim for CMOS reference
    input logic vt_kickstart_1p2,   // kickstart for CMOS reference
    input logic [15:0] w0_0_0, //  weight w0
    input logic [15:0] w0_1_0, //  weight w0
    input logic [15:0] w0_2_0, //  weight w0
    input logic [15:0] w0_3_0, //  weight w0
    input logic [15:0] w0_4_0, //  weight w0
    input logic [15:0] w0_5_0, //  weight w0
    input logic [15:0] w0_6_0, //  weight w0
    input logic [15:0] w0_7_0, //  weight w0
    input logic [15:0] w0_8_0, //  weight w0
    input logic [15:0] w0_9_0, //  weight w0
    input logic [15:0] w0_10_0, //  weight w0
    input logic [15:0] w0_11_0, //  weight w0
    input logic [15:0] w0_12_0, //  weight w0
    input logic [15:0] w0_13_0, //  weight w0
    input logic [15:0] w0_14_0, //  weight w0
    input logic [15:0] w2_0_0, //  weight w2
    input logic [15:0] w2_1_0, //  weight w2
    input logic [15:0] w2_2_0, //  weight w2
    input logic [15:0] w2_3_0, //  weight w2
    input logic [15:0] w2_4_0, //  weight w2
    input logic [15:0] w2_5_0, //  weight w2
    input logic [15:0] w2_6_0, //  weight w2
    input logic [15:0] w2_7_0, //  weight w2
    input logic [15:0] w2_8_0, //  weight w2
    input logic [15:0] w2_9_0, //  weight w2
    input logic [15:0] w2_10_0, //  weight w2
    input logic [15:0] w2_11_0, //  weight w2
    input logic [15:0] w2_12_0, //  weight w2
    input logic [15:0] w2_13_0, //  weight w2
    input logic [15:0] w2_14_0, //  weight w2
    input logic [15:0] w0_0_1, //  weight w0
    input logic [15:0] w0_1_1, //  weight w0
    input logic [15:0] w0_2_1, //  weight w0
    input logic [15:0] w0_3_1, //  weight w0
    input logic [15:0] w0_4_1, //  weight w0
    input logic [15:0] w0_5_1, //  weight w0
    input logic [15:0] w0_6_1, //  weight w0
    input logic [15:0] w0_7_1, //  weight w0
    input logic [15:0] w0_8_1, //  weight w0
    input logic [15:0] w0_9_1, //  weight w0
    input logic [15:0] w0_10_1, //  weight w0
    input logic [15:0] w0_11_1, //  weight w0
    input logic [15:0] w0_12_1, //  weight w0
    input logic [15:0] w0_13_1, //  weight w0
    input logic [15:0] w0_14_1, //  weight w0
    input logic [15:0] w2_0_1, //  weight w2
    input logic [15:0] w2_1_1, //  weight w2
    input logic [15:0] w2_2_1, //  weight w2
    input logic [15:0] w2_3_1, //  weight w2
    input logic [15:0] w2_4_1, //  weight w2
    input logic [15:0] w2_5_1, //  weight w2
    input logic [15:0] w2_6_1, //  weight w2
    input logic [15:0] w2_7_1, //  weight w2
    input logic [15:0] w2_8_1, //  weight w2
    input logic [15:0] w2_9_1, //  weight w2
    input logic [15:0] w2_10_1, //  weight w2
    input logic [15:0] w2_11_1, //  weight w2
    input logic [15:0] w2_12_1, //  weight w2
    input logic [15:0] w2_13_1, //  weight w2
    input logic [15:0] w2_14_1, //  weight w2
// analog signals (inputs and outputs mixed)
    inout wire vssd2p5,           // high-voltage analog ground
    inout wire vssd1p2,           // low voltage digital ground
    inout wire vssa2p5,           // analog ground
    inout wire vrefp_unbuffered, // vrefp before reference buffers
    inout wire vrefn_unbuffered, // vrefn before reference buffers
    inout wire vref_ext,             // external divided down bgr
    inout wire vmonitor_out,    // voltage monitor output
    inout wire vddd2p5,           // digital power suppy (2.25 V)
    inout wire vddd1p2,           // digital power suppy (1.0 V)
    inout wire vdda2p5,           // analog power supply (2.25 V)
    inout wire vcmo_unbuffered, // vcmo before reference buffers
    inout wire vcmi_unbuffered, // vcmi before reference buffers
    inout wire r_bias_ext,      // bias resistor for CMOS reference
    inout wire inp [0:15],      // postive inputs
    inout wire inn [0:15],      // negative inputs
    inout wire imonitor_out,    // current monitor output
    inout wire aux3,           // aux3 output (bjt ref buffer)
    inout wire aux2,           // aux2 output (bjt ref buffer)
    inout wire aux1,           // aux1 output (bjt ref buffer)
    inout wire adc_test_in_p,   // positive test input (bypass SHA)
    inout wire adc_test_in_n,   // negative test input (bypass SHA)
    inout wire vref_decouple      // decoupling connection for vref
);

//*** Just an empty shell

// Madorsky: adding signals that can be driven from simulation test fixture
    reg [15:0] synced_adc_cal_1p2_0_r; // synced ADC0 word w calibration
    reg [15:0] synced_adc_cal_1p2_1_r; // synced ADC1 word w calibration
    assign synced_adc_cal_1p2_0 = synced_adc_cal_1p2_0_r; // synced ADC0 word w calibration
    assign synced_adc_cal_1p2_1 = synced_adc_cal_1p2_1_r; // synced ADC1 word w calibration

    reg [3:0] adc_frame_cnt;
    reg [3:0] adc_num; // backdoor register for ADC number ID

    // values of test voltages in adc_sync_mode
    wire [7:0] voltage [0:7] = '{8'hff, 8'h7f, 8'h01, 8'h7f, 8'h7f, 8'h7f, 8'h7f, 8'h7f}; // [frame_num]
    // test patterns with voltages in high bits, output number and frame number in lower bits 
    wire [15:0] adc_sync_val [3:0][1:0][7:0]; // [adc_num][output_num][frame_num]
    genvar gi, gj, gk;
    generate
        for (gi = 0; gi < 4; gi++) // adc loop
            for (gj = 0; gj < 2; gj++) // output loop
                for (gk = 0; gk < 8; gk++) // frame loop
                    assign adc_sync_val[gi][gj][gk] = {voltage[gk], gi[2:0], gj[0], 4'b0};
    endgenerate

    always @(posedge clk_cu0)
    begin
        if (clk_sha_1p2 == 1'b1)
            adc_frame_cnt = 0;
        else
            adc_frame_cnt++;
    
        // assign fixed test data inputs for ADCs, instead of actual data
        // {adc_num, output_num, frame_num, 4'b0} last 4 zeros are cut off by Frame-12 format
        synced_adc_cal_1p2_0_r = {adc_num, 4'h1 , adc_frame_cnt, 4'b0};
        synced_adc_cal_1p2_1_r = {adc_num, 4'h2 , adc_frame_cnt, 4'b0};
        
        // sync mode with power voltages
        if (adc_sync_mode_1p2)
        begin
            synced_adc_cal_1p2_0_r = adc_sync_val[adc_num][0][adc_frame_cnt];
            synced_adc_cal_1p2_1_r = adc_sync_val[adc_num][1][adc_frame_cnt];
        end
    end
    
endmodule
