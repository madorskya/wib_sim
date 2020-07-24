module frame_builder_single
(
    input [13:0] deframed [7:0][31:0], // [link][sample]
    input [7:0] valid14,
    input [7:0] valid12,
    input [1:0]  crc_err [7:0],
    input rx_usrclk2 // rx data clock

);

// deframed input mapping:
// links [3:0] from FEMB0, links [7:4] from FEMB1
// within each FEMB:
// links [1:0] from COLDATA0, links [3:2] from COLDATA1
// within each link: 
// samples [15:0] = ADC0, samples [31:16] = ADC1

    reg [13:0] deframed_mapped [1:0][1:0][3:0][15:0]; // [femb][coldata][adc][sample]
    integer i, j, k, l;
    always @(*)
    begin
        for (i = 0; i < 2; i++) // femb loop
        begin
            for (j = 0; j < 2; j++) // coldata loop
            begin
                for (k = 0; k < 4; k++) // adc loop
                begin
                    for (l = 0; l < 16; l++) // sample loop
                    begin
                        // first index: 4 links per FEMB, 2 links per COLDATA, 1/2 link per ADC
                        // second index: (ADC0 or 1) *16 + sample
                        deframed_mapped[i][j][k][l] = deframed[i*4 + j*2 + k/2][{k[0], l[3:0]}];
                    end
                end
            end
        end
    end

    wire [31:0] tx_words [111:0];

    frame_builder_femb fbf0
    (
        .deframed_mapped (deframed_mapped [0]),
        .tx_words        (tx_words [55:0])
    );

    frame_builder_femb fbf1
    (
        .deframed_mapped (deframed_mapped [1]),
        .tx_words        (tx_words [111:56])
    );

endmodule

