`timescale 1ns / 1ps

module coldata_fast_tf;

    reg   clk62p5 = 0; // main clock reg  
    wire  fastcommand_out_p; 
    wire  fastcommand_out_n;
    wire  fastcommand_out;
    
    // reg  s for instant command generation by firmware signals
    reg   cmd_idle = 0;  // = 1010_1010
    reg   cmd_edge = 0;  // = 1110_0001 (move edge of 2 MHz clock to next rising edge of 64 MHz clock)
    reg   cmd_sync = 0;  // = 1110_0010 (zero time stamp)
    reg   cmd_act = 0;   // = 1110_0100 (perform command stored in Act Command Register)
    reg   cmd_reset = 0; // = 1110_1000 (Resets COLDATA)		// User ports ends
    // special reg   for ACT command programmed as coldADC master reset
    // this command results into a special coldADC synchronization as required by coldADC V1
    reg   cmd_adc_reset = 0;
    wire  ready; 

    parameter integer C_S00_AXI_DATA_WIDTH	= 32;
    parameter integer C_S00_AXI_ADDR_WIDTH	= 5;

    reg  s00_axi_aclk = 0;
    reg  s00_axi_aresetn = 0; // keep bus in reset
    reg  [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr = 0;
    reg  [2 : 0] s00_axi_awprot = 0;
    reg  s00_axi_awvalid = 0;
    wire  s00_axi_awready;
    reg  [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata = 0;
    reg  [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb = 0;
    reg  s00_axi_wvalid = 0;
    wire  s00_axi_wready;
    wire [1 : 0] s00_axi_bresp;
    wire  s00_axi_bvalid;
    reg  s00_axi_bready = 0;
    reg  [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr = 0;
    reg  [2 : 0] s00_axi_arprot = 0;
    reg  s00_axi_arvalid = 0;
    wire  s00_axi_arready;
    wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata;
    wire [1 : 0] s00_axi_rresp;
    wire  s00_axi_rvalid;
    reg  s00_axi_rready = 0;

	coldata_fast_cmd_v1_0 uut
	(
		// Users to add ports here
        .clk62p5           (clk62p5          ), // main clock input
        .fastcommand_out_p (fastcommand_out_p), 
        .fastcommand_out_n (fastcommand_out_n),
        .fastcommand_out   (fastcommand_out  ),
        
        // inputs for instant command generation by firmware signals
        .cmd_idle  (cmd_idle ),  // = 1010_1010
        .cmd_edge  (cmd_edge ),  // = 1110_0001 (move edge of 2 MHz clock to next rising edge of 64 MHz clock)
        .cmd_sync  (cmd_sync ),  // = 1110_0010 (zero time stamp)
        .cmd_act   (cmd_act  ),   // = 1110_0100 (perform command stored in Act Command Register)
        .cmd_reset (cmd_reset), // = 1110_1000 (Resets COLDATA)		// User ports ends
        // special input for ACT command programmed as coldADC master reset
        // this command results into a special coldADC synchronization as required by coldADC V1
        .cmd_adc_reset (cmd_adc_reset),
        .ready         (ready        ), 
		// Do not modify the ports beyond this line
		.s00_axi_aclk    (s00_axi_aclk   ),
		.s00_axi_aresetn (s00_axi_aresetn),
		.s00_axi_awaddr  (s00_axi_awaddr ),
		.s00_axi_awprot  (s00_axi_awprot ),
		.s00_axi_awvalid (s00_axi_awvalid),
		.s00_axi_awready (s00_axi_awready),
		.s00_axi_wdata   (s00_axi_wdata  ),
		.s00_axi_wstrb   (s00_axi_wstrb  ),
		.s00_axi_wvalid  (s00_axi_wvalid ),
		.s00_axi_wready  (s00_axi_wready ),
		.s00_axi_bresp   (s00_axi_bresp  ),
		.s00_axi_bvalid  (s00_axi_bvalid ),
		.s00_axi_bready  (s00_axi_bready ),
		.s00_axi_araddr  (s00_axi_araddr ),
		.s00_axi_arprot  (s00_axi_arprot ),
		.s00_axi_arvalid (s00_axi_arvalid),
		.s00_axi_arready (s00_axi_arready),
		.s00_axi_rdata   (s00_axi_rdata  ),
		.s00_axi_rresp   (s00_axi_rresp  ),
		.s00_axi_rvalid  (s00_axi_rvalid ),
		.s00_axi_rready  (s00_axi_rready )
	);
    
    always #5 clk62p5 = ~clk62p5;
    always #5 s00_axi_aclk = ~s00_axi_aclk;
    
    initial
    begin
        #100
        cmd_adc_reset = 1;
        #10
        cmd_adc_reset = 0;
        
        #(580-110)
        cmd_sync = 1;
        #10
        cmd_sync = 0;
    end

endmodule
