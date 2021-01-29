`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
///////////////////////////////////////////////////////////////////
// File Name: regfile.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description: Register file containing register banks for both 
//              ADC calibrations as well as configuration registers 
//              8-bit memory-mapped address
//      bit         7       6     5     4     3     2     1     0
//               |       |     |     |                       |   
//                 config  adc   w0/2     stage_addr           byte
///////////////////////////////////////////////////////////////////

module regfile
    (output logic [7:0] config_bits [0:55], // output bits
    output logic [7:0] read_data, // RAM data (for readback)
    output logic [15:0] w0_0 [0:14], // ADC0 output weights w0
    output logic [15:0] w2_0 [0:14], // ADC0 output weights w2
    output logic [15:0] w0_1 [0:14], // ADC1 output weights w0
    output logic [15:0] w2_1 [0:14], // ADC1 output weights w2
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
// external inputs
    input logic [7:0] write_addr_external,   // 8-bit RAM write address 
    input logic [7:0] write_data_external, // RAM data in external
    input logic [7:0] read_addr_external,  // 8-bit RAM read address 
    input logic external_mode,        // high to put regfile into extern mode
    input logic write_external,       // high for external write 
    input logic read_external,               // high for read op
    input logic clk,                // system clock
    input logic reset_n             // digital reset (active low)
);

// internal signals

logic [3:0] write_addr_cl [1:0];
logic [6:0] write_addr_config;
logic write [2:0];
logic read [2:0];
logic byte_select [1:0];
logic g_sel_stretch [1:0];
logic o_sel_stretch [1:0];
logic write_stretch [1:0];
logic weight_sel [1:0];
logic byte_select_internal [1:0];
logic [7:0] write_data_byte [1:0];
logic [7:0] write_data [2:0];
logic [7:0] read_data_internal [2:0];

// set write addr
always_comb begin
    if (external_mode) begin
        write_addr_cl[0] <= write_addr_external[4:1];
        write_addr_cl[1] <= write_addr_external[4:1];
    end 
    else begin
        write_addr_cl[0] <= {1'b0,current_stage[0]};
        write_addr_cl[1] <= {1'b0,current_stage[1]};
    end
    write_addr_config <= write_addr_external[6:0];
end // always_comb

always_comb begin
    if (external_mode) begin
        if (write_external) begin
            byte_select_internal[0] <= write_addr_external[0];
            byte_select_internal[1] <= write_addr_external[0];
        end
        else begin
            byte_select_internal[0] <= read_addr_external[0];
            byte_select_internal[1] <= read_addr_external[0];
        end    
    end // external mode
    else begin        
        byte_select_internal[0] <= byte_select[0];
        byte_select_internal[1] <= byte_select[1];
    end
end // always comb
// set write signal
always_comb begin
    if (external_mode && write_external) begin // external write
            write[0] = (!write_addr_external[7] && (!write_addr_external[6]));
            write[1] = (!write_addr_external[7] && write_addr_external[6]);
            write[2] = write_addr_external[7];
            write_data[0] = write_data_external;
            write_data[1] = write_data_external;
            write_data[2] = write_data_external;
    end 
    else begin // internal write
            write[0] = write_stretch[0];
            write[1] = write_stretch[1];
            write[2] = 1'b0;
            write_data[0] = write_data_byte[0];
            write_data[1] = write_data_byte[1];
            write_data[2] = 8'h00;
    end
end

// set top of read addr
always_comb begin
    if (external_mode) begin
        if (write_external) begin
            weight_sel[0] = write_addr_external[5];  // w0/w2
            weight_sel[1] = write_addr_external[5];
        end
        else begin
            weight_sel[0] = read_addr_external[5];  // w0/w2
            weight_sel[1] = read_addr_external[5];
        end
    end
    else begin
        weight_sel[0] = weight_sel_internal[0];
        weight_sel[1] = weight_sel_internal[1];
    end
end // always_comb

// set read signal
always_comb begin
    if (read_external) begin
        read[0] = (!read_addr_external[7] && (!read_addr_external[6]));
        read[1] = (!read_addr_external[7] && (read_addr_external[6]));
        read[2] = read_addr_external[7];
    end
    else begin
        read[0] = 1'b0;
        read[1] = 1'b0;
        read[2] = 1'b0;
    end
end // always_comb

// select read out
always_comb begin
    if (read_addr_external[7]) begin // access config regfile
        read_data = read_data_internal[2];
    end
    else if (read_addr_external[6]) begin // ADC1
        read_data = read_data_internal[1];
    end
    else begin    // ADC0
        read_data = read_data_internal[0];
    end
end // always_comb

cl_regfile_fsm cl_regfile_fsm_inst0
     (.write_data_byte(write_data_byte[0]),
    .g_sel_stretch(g_sel_stretch[0]),
    .o_sel_stretch(o_sel_stretch[0]),
    .write_stretch(write_stretch[0]),
    .byte_select(byte_select[0]),
    .write_data_internal(write_data_internal[0]),
    .g_sel(g_sel_internal[0]),
    .o_sel(o_sel_internal[0]),
    .write(write_internal[0]),
    .clk(clk),
    .reset_n(reset_n));

cl_regfile 
    cl_regfile_inst0
    (.w0(w0_0),
    .w2(w2_0),
    .read_data(read_data_internal[0]),
    .clear_regs(clear_regs[0]),
    .write_addr(write_addr_cl[0]),
    .write_data(write_data[0]),
    .read_addr(read_addr_external[4:1]),
    .weight_sel(weight_sel[0]),
    .g_sel(g_sel_stretch[0]),
    .o_sel(o_sel_stretch[0]),
    .byte_sel(byte_select_internal[0]),
    .write(write[0]),
    .read(read[0]),
    .*);

cl_regfile_fsm cl_regfile_fsm_inst1
     (.write_data_byte(write_data_byte[1]),
    .g_sel_stretch(g_sel_stretch[1]),
    .o_sel_stretch(o_sel_stretch[1]),
    .write_stretch(write_stretch[1]),
    .byte_select(byte_select[1]),
    .write_data_internal(write_data_internal[1]),
    .g_sel(g_sel_internal[1]),
    .o_sel(o_sel_internal[1]),
    .write(write_internal[1]),
    .*);

cl_regfile 
    cl_regfile_inst1
    (.w0(w0_1),
    .w2(w2_1),
    .read_data(read_data_internal[1]),
    .clear_regs(clear_regs[1]),
    .write_addr(write_addr_cl[1]),
    .write_data(write_data[1]),
    .read_addr(read_addr_external[4:1]),
    .weight_sel(weight_sel[1]),
    .g_sel(g_sel_stretch[1]),
    .o_sel(o_sel_stretch[1]),
    .byte_sel(byte_select_internal[1]),
    .write(write[1]),
    .read(read[1]),
    .*);

config_regfile
    config_regfile_inst
    (.read_data(read_data_internal[2]),
    .write_addr(write_addr_config),
    .write_data(write_data[2]),
    .write(write[2]),
    .read_addr(read_addr_external[6:0]),
    .read(read[2]),
    .*);
 
endmodule
