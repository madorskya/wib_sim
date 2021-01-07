`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
///////////////////////////////////////////////////////////////////
// File Name: cl_regfile.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description: Dual-port register file for correction logic
//              Stages weights are calculated by calibration engine
//              regfile has support for 15 ADC stages 
//              IMPORTANT: address [0] is MSB (i.e. interfaces to first 
//              stage
//              stage weights are 16-bits but accessed a byte at a time
//
///////////////////////////////////////////////////////////////////

module cl_regfile

    (output logic [15:0] w0 [0:14], // output weight w0
    output logic [15:0] w2 [0:14], // output weight w2
    output logic [7:0] read_data, // RAM data out (to config logic)
    input logic clear_regs,    // active high bit to clear registers
                                // in datapath and correction block
    input logic [3:0] write_addr,   // RAM write address 
    input logic [7:0] write_data, // RAM data in
    input logic [3:0] read_addr,   // RAM read address 
    input logic [2:0] cal_stages,   // number of stages to calibrate
    input logic weight_sel,         // 0 = sel w0; 1 = sel w2
    input logic byte_sel,           // 0 = low byte, 1 = high byte
    input logic g_sel,              // 1 = gain measurement
    input logic o_sel,              // 1 = offset measurement
    input logic write,              // high for write op
    input logic read,              // high for read op
    input logic load_calib_defaults,      // load default values
    input logic clk,                // system clock
    input logic reset_n             // digital reset (active low)
);

logic [15:0] adc_gain;
logic [15:0] adc_offset;

always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        for (int i = 0; i < 15; i++) begin : default_blk
              w0[i] <= ~({16{1'b0}}+1'b1 << (14-i))+1'b1;
              w2[i] <= {16{1'b0}}+1'b1  << (14-i);
        end : default_blk     
        adc_gain <= 16'h0000;        
        adc_offset <= 16'h0000;
        read_data <= 4'h0;
    end 
    else begin
        if (load_calib_defaults) begin
            for (int i = 0; i < 15; i++) begin
                w0[i] <= ~({16{1'b0}}+1'b1 << (14-i))+1'b1;
                w2[i] <= {16{1'b0}}+1'b1  << (14-i);
            end      
            adc_gain <= 16'h0000;        
            adc_offset <= 16'h0000;
            read_data <= 4'h0;
        end 
        if (clear_regs) begin
            for (int j = 0; j < 7; j++) begin : clear_reg_blk
                if ( (j+1) <= cal_stages) begin
                    w0[j] <= 16'h0000;
                    w2[j] <= 16'h0000;
                end
            end : clear_reg_blk

        end 
        else begin
            if (write) begin
                // gain
                if (o_sel || (write_addr == 4'hf && weight_sel)) begin  
                    if (byte_sel) begin // high byte
                        adc_offset[15:8] <= write_data;
                    end
                    else begin
                        adc_offset[7:0] <= write_data;
                    end
                end // o_sel
                // offset
                else if (g_sel || (write_addr == 4'hf && !weight_sel)) begin 
                    if (byte_sel) begin // high byte
                        adc_gain[15:8] <= write_data;
                    end
                    else begin
                        adc_gain[7:0] <= write_data;
                    end
                end // g_sel
                // weights
                else begin 
                    if (weight_sel) begin // w2
                        if (byte_sel) begin // high byte
                            w2[write_addr][15:8] <= write_data;
                        end
                        else begin // low byte
                            w2[write_addr][7:0] <= write_data;
                        end
                    end             
                    else begin // w0
                        if (byte_sel) begin // high byte
                            w0[write_addr][15:8] <= write_data;
                        end
                        else begin // low byte
                            w0[write_addr][7:0] <= write_data;
                        end
                    end
                end 
            end // write
            else if (read) begin
                if (read_addr == 4'b1111) begin
                    if (weight_sel) begin // offset
                        if (byte_sel) begin // high byte
                            read_data <= adc_offset[15:8];
                        end
                        else begin // low byte
                            read_data <= adc_offset[7:0];
                        end
                    end
                    else begin // gain
                        if (byte_sel) begin // high byte
                            read_data <= adc_gain[15:8];
                        end
                        else begin // low byte
                            read_data <= adc_gain[7:0];
                        end
                    end
                end
                else begin
                    if (weight_sel) begin
                        if (byte_sel) begin // high byte
                            read_data <= w2[read_addr][15:8];
                        end
                        else begin  // low byte
                            read_data <= w2[read_addr][7:0];
                        end
                    end             
                    else begin
                        if (byte_sel) begin // high byte
                            read_data <= w0[read_addr][15:8];
                        end
                        else begin // low byte
                            read_data <= w0[read_addr][7:0];
                        end
                    end
                end
            end   // read         
        end // else
    end // else
end // always_ff

endmodule
                
        

