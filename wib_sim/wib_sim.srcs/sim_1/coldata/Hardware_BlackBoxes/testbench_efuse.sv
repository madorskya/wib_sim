`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"

module testbench_efuse;

logic clock;
logic reset;
logic start;
logic VDDQ;
logic [7:0] mode;
logic [31:0] prog;
logic [31:0] out;
logic serialRead;
logic dout_serial;

SSA_efuse U0(.clk(clock), .rst(reset), .start(start), .VDDQ(VDDQ), .mode(mode), .prog(prog), .out(out), .serialRead(serialRead), .dout_serial(dout_serial));

always
begin
	#12.5 clock = ~clock;
end

initial 
begin
	clock = 1'b0;
	reset = 1'b0;
	serialRead = 1'b0;
	prog = 32'hA0A0A0A0;
	start = 1'b0;
	VDDQ = 1'b1;
	#15 reset = 1'b1;
	#100 mode = 8'b11110000;
	start = 1'b1;
	
	#190000 reset = 1'b0;
	#12 reset = 1'b1;
	mode = 8'b00001111;
	VDDQ = 1'b0;
	#500 serialRead = 1'b1;
end

endmodule
