module timing_master_fake
(
	input clk50,
	output tx_timing,
	output clk240
);

    wire clk312p5;
    assign tx_timing = clk312p5;

    standalone_50m_mmcm mcmm50
    (
        .clk_out1 (clk312p5),
        .clk_out2 (clk240),
        .reset    (1'b0),
        .locked   (),
        .clk_in1  (clk50)
    ); 
    


endmodule
