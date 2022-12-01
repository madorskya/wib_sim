module frame_builder_femb # 
(
    parameter NADCS = 4
)
(
    input [13:0] deframed_mapped [NADCS-1:0][15:0], // [adc][sample]
    output reg [63:0] tx_words [(NADCS*16*14/64)-1:0]
);

    reg [NADCS*16*14-1:0] parallel_daq;

    integer i, k, l;
    always @(*)
    begin
        // raw channel map is the only option for DEIMOS readout
        for (k = 0; k < NADCS; k++) // adc loop, two ADCs per link
        begin
            for (l = 0; l < 16; l++) // sample loop
            begin
                parallel_daq [(k*16 + l) * 14 +: 14] = deframed_mapped[k][l];
            end
        end

        // chop parallel daq word into 64-bit words ready for transmission
        for (i = 0; i < (NADCS*16*14/64); i++)
        begin
            tx_words[i] = parallel_daq[i*64 +: 64];
        end
    end

endmodule

