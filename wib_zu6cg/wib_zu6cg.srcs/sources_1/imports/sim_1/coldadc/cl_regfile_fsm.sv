`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
///////////////////////////////////////////////////////////////////
// File Name: cl_regfile_fsm.v
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description: State machine to control writes to the cl_regfile 
//          executes 16-bit transfer as two 8-bits transfers
//          works by stretching write, o_sel, or g_sel signals and then
//          doing two writes
//
///////////////////////////////////////////////////////////////////

module cl_regfile_fsm 
   (output logic [7:0] write_data_byte, // write data split into bytes
    output logic g_sel_stretch, // stretched
    output logic o_sel_stretch, // stretched
    output logic write_stretch, // write stretched
    output logic byte_select,   // 1 = hi byte, 0 = low byte
    input logic [15:0] write_data_internal, // data from calibration engine
    input logic g_sel,          // single cycle
    input logic o_sel,          // single cycle
    input logic write,          // single cycle
    input logic clk,            // calibration engine clk
    input logic reset_n);       // asynchronous digital reset (active low)   

// internal nets 
enum logic [2:0] {IDLE                  = 3'd0,
                G_SEL_LOW_BYTE          = 3'd1,
                G_SEL_HIGH_BYTE         = 3'd2,
                O_SEL_LOW_BYTE          = 3'd3,
                O_SEL_HIGH_BYTE         = 3'd4,
                WRITE_LOW_BYTE          = 3'd5,
                WRITE_HIGH_BYTE         = 3'd6,
                DONE_ADC                    = 3'd7}  State, Next;

always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) State <= IDLE;
    else State <= Next;
end // always
        
always_comb begin: set_next_state
    unique case (State)
        IDLE:   begin
                    if (write && g_sel)         Next = G_SEL_LOW_BYTE;
                    else if (write && o_sel)    Next = O_SEL_LOW_BYTE;
                    else if (write)             Next = WRITE_LOW_BYTE;
                    else                        Next = IDLE;
                end
        G_SEL_LOW_BYTE:                         Next = G_SEL_HIGH_BYTE;
        G_SEL_HIGH_BYTE:                        Next = IDLE;
        O_SEL_LOW_BYTE:                         Next = O_SEL_HIGH_BYTE;
        O_SEL_HIGH_BYTE:                        Next = IDLE;
        WRITE_LOW_BYTE:                         Next = WRITE_HIGH_BYTE;
        WRITE_HIGH_BYTE:                        Next = DONE_ADC;
        DONE_ADC:   if (!write)                     Next = IDLE;
                else                            Next = DONE_ADC; 
    endcase
end : set_next_state         

// registered outputs

// registered outputs
always_ff @(posedge clk or negedge reset_n) begin : set_outputs
    if (!reset_n) begin
        write_data_byte <= 8'h00;
        g_sel_stretch <= 1'b0;
        o_sel_stretch <= 1'b0;
        write_stretch <= 1'b0;
        byte_select <= 1'b0;
    end 
    else begin
        write_data_byte <= 8'h0;
        g_sel_stretch <= 1'b0;
        o_sel_stretch <= 1'b0;
        write_stretch <= 1'b0;
        byte_select <= 1'b0;

        unique case (Next)
            IDLE:               ;            
            G_SEL_LOW_BYTE:     begin
                                    g_sel_stretch <= 1'b1;
                                    write_stretch <= 1'b1;
                                    write_data_byte <= write_data_internal[7:0];
                                end
            G_SEL_HIGH_BYTE:    begin
                                    g_sel_stretch <= 1'b1;
                                    write_stretch <= 1'b1;
                                    byte_select <= 1'b1;
                                   write_data_byte <= write_data_internal[15:8];
                                end
            O_SEL_LOW_BYTE:     begin
                                    o_sel_stretch <= 1'b1;
                                    write_stretch <= 1'b1;
                                    write_data_byte <= write_data_internal[7:0];
                                end
            O_SEL_HIGH_BYTE:    begin
                                    o_sel_stretch <= 1'b1;
                                    write_stretch <= 1'b1;
                                    byte_select <= 1'b1;
                                   write_data_byte <= write_data_internal[15:8];
                                end
            WRITE_LOW_BYTE:     begin
                                    write_stretch <= 1'b1;
                                    write_data_byte <= write_data_internal[7:0];
                                end
            WRITE_HIGH_BYTE:    begin
                                    write_stretch <= 1'b1;
                                    byte_select <= 1'b1;
                                   write_data_byte <= write_data_internal[15:8];
                                end
			default: begin end

        endcase
    end
end : set_outputs

endmodule
