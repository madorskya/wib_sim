
`timescale 1 ns / 1 ps

/*
see message from David Christian from 2020-06-17 for details of ColdADC v1 reset procedure:

"ADC reset signal trailing edge (low to high) should be more than 4 ticks 
of the 64 (62.5) MHz clock after the rising edge of the 2 MHz clock and less than 8 ticks after 
the rising edge of the 2 MHz clock, and that the frame marker delay should be set to 0x0C.
 
The frame marker delay is called config_start_number[4:0] in the COLDADC Datasheet & is page 1 
register 49[4:0] and page 2 register 1[4:0]."
*/

	module coldata_fast_cmd_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here
        input clk62p5, // main clock input
        output fastcommand_out_p, 
        output fastcommand_out_n,
        output fastcommand_out,
        
        // inputs for instant command generation by firmware signals
        input cmd_idle,  // = 1010_1010
        input cmd_edge,  // = 1110_0001 (move edge of 2 MHz clock to next rising edge of 64 MHz clock)
        input cmd_sync,  // = 1110_0010 (zero time stamp)
        input cmd_act,   // = 1110_0100 (perform command stored in Act Command Register)
        input cmd_reset, // = 1110_1000 (Resets COLDATA)		// User ports ends
        // special input for ACT command programmed as coldADC master reset
        // this command results into a special coldADC synchronization as required by coldADC V1
        input cmd_adc_reset,
        output ready, 
		// Do not modify the ports beyond this line

		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	coldata_fast_cmd_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) coldata_fast_cmd_v1_0_S00_AXI_inst (

        .clk62p5           (clk62p5          ),
        .fastcommand_out_p (fastcommand_out_p), 
        .fastcommand_out_n (fastcommand_out_n),
        .fastcommand_out   (fastcommand_out),

        .cmd_idle      (cmd_idle     ),
        .cmd_edge      (cmd_edge     ),
        .cmd_sync      (cmd_sync     ),
        .cmd_act       (cmd_act      ),
        .cmd_reset     (cmd_reset    ),
        .cmd_adc_reset (cmd_adc_reset), 
        .ready         (ready        ),

		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule