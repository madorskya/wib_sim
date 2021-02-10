`timescale 1ns / 1ps
`define ZYNQ_VIP_1 test_bench.mpsoc_sys.design_1_i.zynq_ultra_ps_e_0.inst

module test_bench;
reg tb_ACLK;
reg tb_ARESETn;

wire temp_clk;
wire temp_rstn; 

//reg [31:0] read_data;
reg [127:0] read_data128;
reg resp;
reg [7:0]  irq_status;
reg [31:0] src_data;
reg [31:0] dst_data;
wire clk62p5;
reg [31:0] clk62_cnt;

int cdma_tb_pass = 1;
  
initial 
begin       
    tb_ACLK = 1'b0;
    clk62_cnt = 0;
end

//------------------------------------------------------------------------
// Simple Clock Generator
// extra comment
//------------------------------------------------------------------------

always #10 tb_ACLK = !tb_ACLK;

always @(posedge clk62p5) clk62_cnt++;
   
initial
begin

    $display ("running the tb");
    
    tb_ARESETn = 1'b0;
    repeat(200)@(posedge tb_ACLK);        
    tb_ARESETn = 1'b1;
    @(posedge tb_ACLK);
    
    repeat(5) @(posedge tb_ACLK);
      
    //Reset the PL zynq_ultra_ps_e_0   Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0
    `ZYNQ_VIP_1.por_srstb_reset(1'b0);
    `ZYNQ_VIP_1.fpga_soft_reset(32'h1);   
    #200;  // This delay depends on your clock frequency. It should be at least 16 clock cycles. 
    `ZYNQ_VIP_1.por_srstb_reset(1'b1);
    `ZYNQ_VIP_1.fpga_soft_reset(32'h0);
    
    // Set debug level info to off. For more info, set to 1.
    `ZYNQ_VIP_1.set_debug_level_info(0);
    `ZYNQ_VIP_1.set_stop_on_error(1);
    // Set minimum port verbosity. Change to 32'd400 for maximum.
    `ZYNQ_VIP_1.M_AXI_HPM0_FPD.set_verbosity(32'd0);
    `ZYNQ_VIP_1.S_AXI_HP0_FPD.set_verbosity(32'd0);
      
    //Fill the source data area
    `ZYNQ_VIP_1.pre_load_mem(2'b00, 32'h00010000, 4096); // Write Random
    
    //Configure CDMA transfer        
    //The M_AXI_HPM0_FPD interface is configured for 128 bits.
    //Use the write_burst_strb command to control which bytes on the interface to enable for the CDMA register writes.
    //Use the read_burst command to control which bytes on the interface to return for the CDMA register reads.
   
    // Read status
    // read_burst(address, len, size, burst type, lock, cache, prot, data, response)
    `ZYNQ_VIP_1.read_burst(40'h00A0000004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, read_data128, resp);
    $display ("%t, running the testbench, CDMA status after reset 32'h%x",$time, read_data128[31:0]);

    // Set the source address
    // write_burst_strb(addr, len, size, burst, lock, cache, prot, data, strb_en, strb, datasize, resp);
    `ZYNQ_VIP_1.write_burst_strb(40'h00A0000018, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 128'h00000000000000000000000000010000, 1, 16'h000F, 4, resp);
    // Set the destination address
    `ZYNQ_VIP_1.write_burst_strb(40'h00A0000020, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 128'h00000000000000000000000000020000, 1, 16'h000F, 4, resp);
    // Enable Interrupt on Complete
    `ZYNQ_VIP_1.write_burst_strb(40'h00A0000000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 128'h00000000000000000000000000017000, 1, 16'h000F, 4, resp);
    // Read the control register
    `ZYNQ_VIP_1.read_burst(40'h00A0000000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, read_data128, resp);
    $display ("%t, running the testbench, CDMA control 32'h%x",$time, read_data128[31:0]);
    $display ("clk62_cnt: %h", clk62_cnt);

    // Set bytes to transfer to 0x100 and start transfer.
    `ZYNQ_VIP_1.write_burst_strb(40'h00A0000028, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 128'h00000000000000000000000000000100, 1, 16'h000F, 4, resp);
    // Read control register/verify CDMA is running
    `ZYNQ_VIP_1.read_burst(40'h00A0000004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, read_data128, resp);
    $display ("%t, running the testbench, CDMA status after transfer started 32'h%x",$time, read_data128[31:0]);
    $display ("clk62_cnt: %h", clk62_cnt);
     
    // Wait for interrupt
    `ZYNQ_VIP_1.wait_interrupt(4'h0,irq_status);
    
    if(irq_status & 8'h01) begin
        $display("SUCCESS: CDMA interrupt received");
    end
    else begin
        $display("FAILURE: CDMA interrupt not received");
        cdma_tb_pass = 0;
    end 
    $display ("clk62_cnt: %h", clk62_cnt);
    
    // Read the status register
    `ZYNQ_VIP_1.read_burst(40'h00A0000004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, read_data128, resp);
    $display ("%t, running the testbench, CDMA status after interrupt 32'h%x",$time, read_data128[31:0]);
    $display ("clk62_cnt: %h", clk62_cnt);
    // Check for IRQ error
    if(read_data128[31:0] & 32'h00004000) begin
      $display("FAILURE: Error IRQ received");
      cdma_tb_pass = 0;
    end
    $display ("clk62_cnt: %h", clk62_cnt);
    
    // Do backdoor data compare to verify transfer
    for(int addr = 40'h0000010000;addr < 40'h0000010100;addr = addr + 4) begin
      `ZYNQ_VIP_1.read_mem(addr, 4, src_data);
      `ZYNQ_VIP_1.read_mem(addr + 40'h0000010000, 4, dst_data); 
      //$display("Data compare addr: 0x%04X, src data: 0x%08X dst data: 0x%08X",addr,src_data,dst_data);
      if(src_data != dst_data) begin
        $display("FAILURE: Data compare addr: 0x%08X, src data: 0x%08X dst data: 0x%08X",addr,src_data,dst_data);
        cdma_tb_pass = 0;
      end
    end
   
    if(cdma_tb_pass) $display("SUCCESS: Data compare passed");
    $display ("clk62_cnt: %h", clk62_cnt);
    $display("Testbench finished");   
    
    $finish;

end

   assign temp_clk = tb_ACLK;
   assign temp_rstn = tb_ARESETn;
        
        
    design_1_wrapper mpsoc_sys(.clk62p5(clk62p5));

endmodule
