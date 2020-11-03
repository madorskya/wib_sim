`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: LVDS_drv
//***	Description: The LVDS and CMOS IO block for system signals
//***
//*******************************************************************************************
//*******************************************************************************************

module	LVDS_drv (	output 	logic 	Out_P,
										output 	logic		Out_N,
										input 	logic		In,
										input 	logic		Bias1,
										input 	logic		Bias2,
										input 	logic		Bias3
									);

	assign		Out_P	=	In;
	assign		Out_N	=	!In;

endmodule

module	LVDS_rcv (	input 	logic 	In_P,
										input 	logic		In_N,
										output 	logic		Out
									);

	assign		Out	=	In_P && !In_N;

endmodule

module	CMOS_rcv (	input 	logic 	External,
										output 	logic		Internal,
									);

	assign		Internal	=	External;

endmodule

module	CMOS_drv (	input 	logic 	Internal,
										output 	logic		External,
									);

	assign		External	=	Internal;

endmodule
