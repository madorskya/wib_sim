`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
// Madorsky: removed include statement
//`ifndef JIMSCONSTANTS
//	`define	JIMSCONSTANTS
//	`include "PACKAGE.constants.coldADC.sv"
//`endif

//***************************
//***
//***	Module Name: reg8bit_0000_0000
//***	Description: 8-bit Register Model for I2C_ADC data storage
//***			Soft Reset to 8'b0000_0000
//***
//***************************
module	reg8bit_0000_0000	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[3:0]	requiredChipAddr3,
					input	logic	[3:0]	requiredChipAddr4,
					input	logic	[3:0]	requiredChipAddr5,
					input	logic	[3:0]	requiredChipAddr6,
					input	logic	[3:0]	requiredChipAddr7,
					input	logic	[3:0]	requiredChipAddr8,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip3Match	=	(pageAddr[6:3]	== requiredChipAddr3)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip4Match	=	(pageAddr[6:3]	== requiredChipAddr4)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip5Match	=	(pageAddr[6:3]	== requiredChipAddr5)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip6Match	=	(pageAddr[6:3]	== requiredChipAddr6)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip7Match	=	(pageAddr[6:3]	== requiredChipAddr7)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip8Match	=	(pageAddr[6:3]	== requiredChipAddr8)	?	ONE_ADC	:	ZERO_ADC;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE_ADC	:	ZERO_ADC;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE_ADC	:	ZERO_ADC;

	assign	focusHere	=	(chip1Match || chip2Match || chip3Match || chip4Match || chip5Match || chip6Match || chip7Match || chip8Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE_ADC)
		storedData	<=	8'b0000_0000;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule
//***************************
//***
//***	Module Name: reg8bit_1111_1111
//***	Description: 8-bit Register Model for I2C_ADC data storage
//***			Soft Reset to 8'b0000_0000
//***
//***************************
module	reg8bit_1111_1111	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[3:0]	requiredChipAddr3,
					input	logic	[3:0]	requiredChipAddr4,
					input	logic	[3:0]	requiredChipAddr5,
					input	logic	[3:0]	requiredChipAddr6,
					input	logic	[3:0]	requiredChipAddr7,
					input	logic	[3:0]	requiredChipAddr8,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip3Match	=	(pageAddr[6:3]	== requiredChipAddr3)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip4Match	=	(pageAddr[6:3]	== requiredChipAddr4)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip5Match	=	(pageAddr[6:3]	== requiredChipAddr5)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip6Match	=	(pageAddr[6:3]	== requiredChipAddr6)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip7Match	=	(pageAddr[6:3]	== requiredChipAddr7)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip8Match	=	(pageAddr[6:3]	== requiredChipAddr8)	?	ONE_ADC	:	ZERO_ADC;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE_ADC	:	ZERO_ADC;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE_ADC	:	ZERO_ADC;

	assign	focusHere	=	(chip1Match || chip2Match || chip3Match || chip4Match || chip5Match || chip6Match || chip7Match || chip8Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE_ADC)
		storedData	<=	8'b1111_1111;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_0000_0010
//***	Description: 8-bit Register Model for I2C_ADC data storage
//***			Soft Reset to 8'b0000_0010
//***
//***************************
module	reg8bit_0000_0010	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[3:0]	requiredChipAddr3,
					input	logic	[3:0]	requiredChipAddr4,
					input	logic	[3:0]	requiredChipAddr5,
					input	logic	[3:0]	requiredChipAddr6,
					input	logic	[3:0]	requiredChipAddr7,
					input	logic	[3:0]	requiredChipAddr8,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip3Match	=	(pageAddr[6:3]	== requiredChipAddr3)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip4Match	=	(pageAddr[6:3]	== requiredChipAddr4)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip5Match	=	(pageAddr[6:3]	== requiredChipAddr5)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip6Match	=	(pageAddr[6:3]	== requiredChipAddr6)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip7Match	=	(pageAddr[6:3]	== requiredChipAddr7)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip8Match	=	(pageAddr[6:3]	== requiredChipAddr8)	?	ONE_ADC	:	ZERO_ADC;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE_ADC	:	ZERO_ADC;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE_ADC	:	ZERO_ADC;

	assign	focusHere	=	(chip1Match || chip2Match || chip3Match || chip4Match || chip5Match || chip6Match || chip7Match || chip8Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE_ADC)
		storedData	<=	8'b0000_0010;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_0000_0001
//***	Description: 8-bit Register Model for I2C_ADC data storage
//***			Soft Reset to 8'b0000_0001
//***
//***************************
module	reg8bit_0000_0001	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[3:0]	requiredChipAddr3,
					input	logic	[3:0]	requiredChipAddr4,
					input	logic	[3:0]	requiredChipAddr5,
					input	logic	[3:0]	requiredChipAddr6,
					input	logic	[3:0]	requiredChipAddr7,
					input	logic	[3:0]	requiredChipAddr8,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip3Match	=	(pageAddr[6:3]	== requiredChipAddr3)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip4Match	=	(pageAddr[6:3]	== requiredChipAddr4)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip5Match	=	(pageAddr[6:3]	== requiredChipAddr5)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip6Match	=	(pageAddr[6:3]	== requiredChipAddr6)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip7Match	=	(pageAddr[6:3]	== requiredChipAddr7)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip8Match	=	(pageAddr[6:3]	== requiredChipAddr8)	?	ONE_ADC	:	ZERO_ADC;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE_ADC	:	ZERO_ADC;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE_ADC	:	ZERO_ADC;

	assign	focusHere	=	(chip1Match || chip2Match || chip3Match || chip4Match || chip5Match || chip6Match || chip7Match || chip8Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE_ADC)
		storedData	<=	8'b0000_0001;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_0000_0011
//***	Description: 8-bit Register Model for I2C_ADC data storage
//***			Soft Reset to 8'b0000_0011
//***
//***************************
module	reg8bit_0000_0011	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[3:0]	requiredChipAddr3,
					input	logic	[3:0]	requiredChipAddr4,
					input	logic	[3:0]	requiredChipAddr5,
					input	logic	[3:0]	requiredChipAddr6,
					input	logic	[3:0]	requiredChipAddr7,
					input	logic	[3:0]	requiredChipAddr8,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip3Match	=	(pageAddr[6:3]	== requiredChipAddr3)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip4Match	=	(pageAddr[6:3]	== requiredChipAddr4)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip5Match	=	(pageAddr[6:3]	== requiredChipAddr5)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip6Match	=	(pageAddr[6:3]	== requiredChipAddr6)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip7Match	=	(pageAddr[6:3]	== requiredChipAddr7)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip8Match	=	(pageAddr[6:3]	== requiredChipAddr8)	?	ONE_ADC	:	ZERO_ADC;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE_ADC	:	ZERO_ADC;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE_ADC	:	ZERO_ADC;

	assign	focusHere	=	(chip1Match || chip2Match || chip3Match || chip4Match || chip5Match || chip6Match || chip7Match || chip8Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE_ADC)
		storedData	<=	8'b0000_0011;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule

//***************************
//***
//***	Module Name: reg8bit_0000_0100
//***	Description: 8-bit Register Model for I2C_ADC data storage
//***			Soft Reset to 8'b0000_0100
//***
//***************************
module	reg8bit_0000_0100	(	output	logic	[7:0]	Data,
					output	logic	[7:0]	dataOutBus,
					input	logic	[7:0]	dataInBus,
					input	logic	[6:0]	pageAddr,
					input	logic	[3:0]	requiredChipAddr1,
					input	logic	[3:0]	requiredChipAddr2,
					input	logic	[3:0]	requiredChipAddr3,
					input	logic	[3:0]	requiredChipAddr4,
					input	logic	[3:0]	requiredChipAddr5,
					input	logic	[3:0]	requiredChipAddr6,
					input	logic	[3:0]	requiredChipAddr7,
					input	logic	[3:0]	requiredChipAddr8,
					input	logic	[2:0]	requiredPageAddr,
					input	logic	[7:0]	regAddr,
					input	logic	[7:0]	requiredRegAddr,
					input	logic		writeReq,
					input	logic		softReset
				);

	var	logic	[7:0]	storedData;

	assign	chip1Match	=	(pageAddr[6:3]	== requiredChipAddr1)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip2Match	=	(pageAddr[6:3]	== requiredChipAddr2)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip3Match	=	(pageAddr[6:3]	== requiredChipAddr3)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip4Match	=	(pageAddr[6:3]	== requiredChipAddr4)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip5Match	=	(pageAddr[6:3]	== requiredChipAddr5)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip6Match	=	(pageAddr[6:3]	== requiredChipAddr6)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip7Match	=	(pageAddr[6:3]	== requiredChipAddr7)	?	ONE_ADC	:	ZERO_ADC;
	assign	chip8Match	=	(pageAddr[6:3]	== requiredChipAddr8)	?	ONE_ADC	:	ZERO_ADC;
	assign	pageMatch	=	(pageAddr[2:0]	== requiredPageAddr)	?	ONE_ADC	:	ZERO_ADC;
	assign	regMatch	=	(regAddr 	== requiredRegAddr)	?	ONE_ADC	:	ZERO_ADC;

	assign	focusHere	=	(chip1Match || chip2Match || chip3Match || chip4Match || chip5Match || chip6Match || chip7Match || chip8Match) && pageMatch && regMatch;

	assign	Data		=	storedData;

	always_comb
	if ( focusHere )
		dataOutBus	=	storedData;
	else
		dataOutBus	=	8'bzzzz_zzzz;

	always_ff @(posedge writeReq or posedge softReset)
	if (softReset == ONE_ADC)
		storedData	<=	8'b0000_0100;
	else
		storedData	<=	focusHere	?	dataInBus	:	storedData;

endmodule
