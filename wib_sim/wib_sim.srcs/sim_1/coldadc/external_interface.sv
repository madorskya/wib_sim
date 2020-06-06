`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
///////////////////////////////////////////////////////////////////
// File Name: external_interface.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description: Contains Register file, UART_ADC, and interfacing logic (UART/I2C_ADC)
//              Regfile contains register banks for both 
//              ADC calibrations as well as configuration registers 
//              8-bit memory-mapped address
//      bit         7       6     5     4     3     2     1     0
//               |       |     |     |                       |   
//                 config  adc   w0/2     stage_addr           byte
//
//          UART_ADC packet definition:
//  bit:      21      20:13        12:5      4:1      0 
//                |            |          |       |
//          parity     addr        data    chip_id  wrb     
///////////////////////////////////////////////////////////////////

module external_interface
    (output logic [7:0] config_bits [0:55], // output bits
    output logic [7:0] read_data, // RAM data (for readback)
    output logic [15:0] w0_0 [0:14], // ADC0 output weights w0
    output logic [15:0] w2_0 [0:14], // ADC0 output weights w2
    output logic [15:0] w0_1 [0:14], // ADC1 output weights w0
    output logic [15:0] w2_1 [0:14], // ADC1 output weights w2
    output logic miso,                      // UART_ADC output from current chip
// internal inputs
    input logic clear_regs [1:0], // active high bit to clear registers
                                  // in datapath and correction block
    input logic [2:0] current_stage [1:0], // current stage 
    input logic [2:0] cal_stages,   // number of stages to calibrate
    input logic [15:0] write_data_internal [1:0], // RAM data in ADC
    input logic load_calib_defaults,      // load default values (w0, w2)
    input logic load_config_defaults,   // load config default values
    input logic weight_sel_internal [1:0],         // 0 = sel w0; 1 = sel w2
    input logic g_sel_internal [1:0],              // 1 = gain measurement
    input logic o_sel_internal [1:0],              // 1 = offset measurement
    input logic write_internal [1:0],        // high for write ADC (internal)
// external inputs UART_ADC
    input logic mosi,                       // input to UART_ADC on current chip
    input logic [3:0] chip_id,                    // unique ID for each chip
// external inputs I2C_ADC   (external to cal core)

    input logic [7:0] write_addr_external_i2c,   // 8-bit RAM write address 
    input logic [7:0] write_data_external_i2c, // RAM data in external
    input logic [7:0] read_addr_external_i2c,  // 8-bit RAM read address 
    input logic external_mode_i2c,   // high to put regfile into extern mode
    input logic write_external_i2c,  // high for external write 
    input logic read_external_i2c,   // high for read op
// clk & reset
    input logic clk,                // system clock
    input logic reset_n             // digital reset (active low)
);

// internal signals
// uart signals (uart is included in external interface)
logic [7:0] write_addr_external_uart;// 8-bit RAM write address
logic [7:0] write_data_external_uart; // RAM data in external
logic [7:0] read_addr_external_uart;  // 8-bit RAM read address 
logic external_mode_uart;   // high to put regfile into extern mode
logic write_external_uart;  // high for external write 
logic read_external_uart;   // high for read op

// resolved external signals
logic [7:0] write_addr_external;   // 8-bit RAM write address 
logic [7:0] write_data_external; // RAM data in external
logic [7:0] read_addr_external;  // 8-bit RAM read address 
logic external_mode;   // high to put regfile into extern mode
logic write_external;  // high for external write 
logic read_external;   // high for read op

// resolve external read/write signals
always_comb begin
    if (external_mode_uart) begin
        write_addr_external = write_addr_external_uart;
        write_data_external = write_data_external_uart;
        read_addr_external = read_addr_external_uart;
        external_mode = external_mode_uart;
        write_external = write_external_uart;
        read_external = read_external_uart;
    end
    else begin
        write_addr_external = write_addr_external_i2c;
        write_data_external = write_data_external_i2c;
        read_addr_external = read_addr_external_i2c;
        external_mode = external_mode_i2c;
        write_external = write_external_i2c;
        read_external = read_external_i2c;
    end
end // always_comb

// Instances  
regfile 
    regfile_inst(.*);

uart
    uart_inst (
    .write_addr_external(write_addr_external_uart),
    .write_data_external(write_data_external_uart),
    .read_addr_external(read_addr_external_uart),
    .external_mode(external_mode_uart),
    .write_external(write_external_uart),
    .read_external(read_external_uart),
    .regfile_data(read_data),
    .*);

endmodule
