`timescale 1ns / 1ps
module coldata_i2c_tf;

    localparam integer C_S00_AXI_DATA_WIDTH	= 32;
	localparam integer C_S00_AXI_ADDR_WIDTH	= 5;


    wire scl;
    wire sda_out_p; 
    wire sda_out_n;
    reg sda_in_p;
    reg clk62p5;

    reg  s00_axi_aclk = 0;
    reg  s00_axi_aresetn = 0;
    reg  [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr = 0;
    reg  [2 : 0] s00_axi_awprot = 0;
    reg  s00_axi_awvalid = 0;
    wire s00_axi_awready;
    reg  [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata = 0;
    reg  [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb = 0;
    reg  s00_axi_wvalid = 0;
    wire s00_axi_wready;
    wire [1 : 0] s00_axi_bresp;
    wire s00_axi_bvalid;
    reg  s00_axi_bready = 0;
    reg  [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr = 0;
    reg  [2 : 0] s00_axi_arprot = 0;
    reg  s00_axi_arvalid = 0;
    wire s00_axi_arready;
    wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata;
    wire [1 : 0] s00_axi_rresp;
    wire s00_axi_rvalid;
    reg  s00_axi_rready = 0;


	coldata_i2c_v1_0 uut
	(
		.scl       (scl      ),
		.sda_out_p (sda_out_p), 
		.sda_out_n (sda_out_n),
		.sda_in_p  (sda_in_p ), 
		.sda_in_n  (~sda_in_p ),
		.clk62p5   (clk62p5  ),

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

    // loopback with variable latency
    localparam N = 10;
    reg [N-1:0] lb;
    always @(posedge clk62p5)
        {sda_in_p, lb} = {lb, sda_out_p}; 


    // cable latency measurement logic test
/*
    initial 
    begin
        clk62p5 = 0;
        
        repeat(12)@(posedge clk62p5);
        
        uut.lb_stim[0] = 0;

        repeat(8)@(posedge clk62p5);
        
        uut.lb_stim[0] = 0;

        repeat(8)@(posedge clk62p5);
        
        uut.lb_stim[0] = 0;
    end
*/

    initial
    begin
        clk62p5 = 0;
        
        repeat(12)@(posedge clk62p5);

        s00_axi_aresetn = 1'b1;
        
        repeat(12)@(posedge clk62p5);

        uut.coldata_i2c_v1_0_S00_AXI_inst.wr_reg1 = 32'b10101010_0_11110000_0_10101010_0;
        uut.coldata_i2c_v1_0_S00_AXI_inst.wr_reg0 = 1;
        
        repeat(100)@(posedge clk62p5);
        
        uut.coldata_i2c_v1_0_S00_AXI_inst.wr_reg0 = 0;
         
        
    end

    always #8 clk62p5 = ~clk62p5;
    
    always #5 s00_axi_aclk = ~s00_axi_aclk;


endmodule
