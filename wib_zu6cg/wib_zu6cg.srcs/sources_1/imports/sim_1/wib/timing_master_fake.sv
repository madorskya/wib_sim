module timing_master_fake
(
	input clk50,
	output tx_timing,
	output clk_240
);

    wire clk156p25;
    assign tx_timing = clk156p25;

    standalone_50m_mmcm mcmm50
    (
        .clk_out1 (clk156p25),
        .clk_out2 (clk_240),        
        .reset    (1'b0),
        .locked   (),
        .clk_in1  (clk50)
    ); 
    


endmodule
