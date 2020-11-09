`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//***************************
//***
//***	Module Name: reg8bit_colData
//***	Description: 8-bit Register Model for I2C data storage
//***			Soft Reset to 8'b0000_0000
//***
//***************************
module	reg8bit_colData		(	output	logic	[7:0]	Data,
				output	logic	[7:0]	dataOutBus,
				input	logic	[7:0]	dataInBus,
				input	logic	[6:0]	pageAddr,
				input	logic	[3:0]	requiredChipAddr1,
				input	logic	[3:0]	requiredChipAddr2,
				input	logic	[2:0]	requiredPageAddr,
				input	logic	[7:0]	regAddr,
				input	logic	[7:0]	requiredRegAddr,
				input	logic		writeReq,
				input	logic		softReset
			);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b0;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_colData_0000_0000
//***	Description: 8-bit Register Model for I2C data storage
//***			Soft Reset to 8'b0000_0000
//***
//***************************
module	reg8bit_colData_0000_0000	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b0000_0000;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_colData_0000_0011
//***	Description: 8-bit Register Model for I2C data storage
//***			Soft Reset to 8'b0000_0000
//***
//***************************
module	reg8bit_colData_0000_0011	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b0000_0011;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_colData_0001_0011
//***	Description: 8-bit Register Model for I2C data storage
//***			Soft Reset to 8'b0001_0011
//***
//***************************
module	reg8bit_colData_0001_0011	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b0001_0011;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_colData_0000_0000
//***	Description: 8-bit Register Model for I2C data storage
//***			Soft Reset to 8'b0010_1000
//***
//***************************
module	reg8bit_colData_0010_1000	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b0010_1000;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_colData_0010_0000
//***	Description: 8-bit Register Model for I2C data storage
//***			Soft Reset to 8'b0010_0000
//***
//***************************
module	reg8bit_colData_0010_0000	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b0010_0000;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_colData_0000_0010
//***	Description: 8-bit Register Model for I2C data storage
//***			Soft Reset to 8'b0000_0010
//***
//***************************
module	reg8bit_colData_0000_0010	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b0000_0010;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_colData_0000_0100
//***	Description: 8-bit Register Model for I2C data storage
//***			Soft Reset to 8'b0000_0100
//***
//***************************
module	reg8bit_colData_0000_0100	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b0000_0100;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_colData_0000_0001
//***	Description: 8-bit Register Model for I2C data storage
//***			Soft Reset to 8'b0000_0001
//***
//***************************
module	reg8bit_colData_0000_0001	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b0000_0001;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_colData_1001_0000
//***	Description: 8-bit Register Model for I2C data storage
//***			Soft Reset to 8'b0000_0001
//***
//***************************
module	reg8bit_colData_1001_0000	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b1001_0000;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_colData_1111_1111
//***	Description: 8-bit Register Model for I2C data storage
//***			Soft Reset to 8'b1111_1111
//***
//***************************
module	reg8bit_colData_1111_1111	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b1111_1111;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: regAction
//***	Description: 1-bit Register Model for I2C Actions (Soft Reset, Hard Reset, etc)
//***			These actions are to happen once and then go away. Soft Reset to No Action
//***
//***************************
module	regAction	(	output	logic				Act,
										output	logic	[7:0]	dataOutBus,
										input		logic	[6:0]	pageAddr,
										input		logic	[3:0]	requiredChipAddr1,
										input		logic	[3:0]	requiredChipAddr2,
										input		logic	[2:0]	requiredPageAddr,
										input		logic	[7:0]	regAddr,
										input		logic	[7:0]	requiredRegAddr,
										input		logic				writeReq,
										input		logic				softReset,
										input		logic				executionComplete
									);

	logic	chip2Match;
	logic	chip1Match;
	logic	pageMatch;
	logic regMatch;
	logic	focusHere;
	logic rstState;
	logic	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch		=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch		=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere		=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	rstState		=	softReset || executionComplete;

	assign	Act					=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	8'b10100101;
	else
		dataOutBus	=	8'bz;

	always_ff @(posedge writeReq or posedge rstState)
	if (rstState == ONE)
		storedData	<=	ZERO;
	else
		storedData	<=	focusHere	?	ONE	:	ZERO;

endmodule

//***************************
//***
//***	Module Name: regActionTP
//***	Description: 1-bit Register Model for I2C Actions (Test Pattern)
//***			These actions are to start (WRITE 1) and stop (WRITE 0) on user command
//***			Soft Reset to No Action.
//***
//***************************
module	regActionTP	(	output	logic				Act,
											output	logic	[7:0]	dataOutBus,
											input		logic	[6:0]	pageAddr,
											input		logic	[3:0]	requiredChipAddr1,
											input		logic	[3:0]	requiredChipAddr2,
											input		logic	[2:0]	requiredPageAddr,
											input		logic	[7:0]	regAddr,
											input		logic	[7:0]	requiredRegAddr,
											input		logic				writeReq,
											input		logic				softReset
										);

	logic	chip1Match;
	logic	chip2Match;
	logic	pageMatch;
	logic regMatch;
	logic	focusHere;
	logic	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch		=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch		=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere		=	(chip1Match || chip2Match) && pageMatch && regMatch;

	assign	Act					=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	8'b11000011;
	else
		dataOutBus	=	8'bz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE)
		storedData	<=	ZERO;
	else
		storedData	<=	focusHere	?	!storedData	:	storedData;

endmodule

//***************************
//***
//***	Module Name: regReadOnly
//***	Description: Multi-bit Register Model for I2C Status Reading (Write FE/ADC and Compare)
//***			Soft Reset to No Action.
//***
//***************************
/*******************************************************
*
*	Multi-bit Register Model for I2C Status Reading (Write FE/ADC and Compare)
*
*******************************************************/
module	regReadOnly	(	input	logic	[7:0]	dataForReading,
				output	logic	[7:0]	dataOutBus,
				input		logic	[6:0]	pageAddr,
				input		logic	[3:0]	requiredChipAddr1,
				input		logic	[3:0]	requiredChipAddr2,
				input		logic	[2:0]	requiredPageAddr,
				input		logic	[7:0]	regAddr,
				input		logic	[7:0]	requiredRegAddr,
				input		logic				writeReq,
				input		logic				configureClk,
				input		logic				softReset,
				input 	logic 			captureNow
			);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bz;

	always_ff @(posedge configureClk or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b0;
	else
		storedData	<=	captureNow	?	dataForReading	:	storedData;

endmodule

//***************************
//***
//***	Module Name: regReadOnly_noClk
//***	Description: Multi-bit Register Model for I2C Status Reading
//***
//***************************
/*******************************************************
*
*	Multi-bit Register Model for I2C Status Reading (Write FE/ADC and Compare)
*
*******************************************************/
module	regReadOnly_noClk	(	input		logic	[7:0]	dataForReading,
														output	logic	[7:0]	dataOutBus,
														input		logic	[6:0]	pageAddr,
														input		logic	[3:0]	requiredChipAddr1,
														input		logic	[3:0]	requiredChipAddr2,
														input		logic	[2:0]	requiredPageAddr,
														input		logic	[7:0]	regAddr,
														input		logic	[7:0]	requiredRegAddr,
														input		logic				softReset,
														input 	logic 			captureNow
													);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bz;

	always_ff @(posedge captureNow or posedge softReset)
	if (softReset == ONE)
		storedData	<=	8'b0;
	else
		storedData	<=	dataForReading;

endmodule

//***************************
//***
//***	Module Name: regReadOnly_noClk_Clr
//***	Description: Multi-bit Register Model for I2C Status Reading
//***
//***************************
/*******************************************************
*
*	Multi-bit Register Model for I2C Status Reading (Write FE/ADC and Compare)
*
*******************************************************/
module	regReadOnly_noClk_Clr	(	input		logic	[7:0]	dataForReading,
																output	logic	[7:0]	dataOutBus,
																input		logic	[6:0]	pageAddr,
																input		logic	[3:0]	requiredChipAddr1,
																input		logic	[3:0]	requiredChipAddr2,
																input		logic	[2:0]	requiredPageAddr,
																input		logic	[7:0]	regAddr,
																input		logic	[7:0]	requiredRegAddr,
																input		logic				CLEAR,
																input 	logic 			captureNow
															);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bz;

	always_ff @(posedge captureNow or posedge CLEAR)
	if (CLEAR == ONE)
		storedData	<=	8'b0;
	else
		storedData	<=	dataForReading;

endmodule

//***************************
//***
//***	Module Name: regForceAction
//***	Description: Writing to this register creates a signal that can be used
//***		by other registers to perform other actions like captureNow in regReadOnly_noClk
//***
//***************************
module	regForceAction	(	output	logic	[7:0]	dataOutBus,
													input		logic	[6:0]	pageAddr,
													input		logic	[3:0]	requiredChipAddr1,
													input		logic	[3:0]	requiredChipAddr2,
													input		logic	[2:0]	requiredPageAddr,
													input		logic	[7:0]	regAddr,
													input		logic	[7:0]	requiredRegAddr,
													input		logic				writeReq,
													output 	logic 			actNow
												);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE	:	ZERO;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE	:	ZERO;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE	:	ZERO;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE	:	ZERO;

	assign	focusHere	=	(chip1Match || chip2Match) && pageMatch && regMatch;

	always_comb
	if ( focusHere )
		dataOutBus	=	8'b1001_1100;
	else
		dataOutBus	=	8'bz;

	always_comb
		actNow	=	focusHere && writeReq;

endmodule
