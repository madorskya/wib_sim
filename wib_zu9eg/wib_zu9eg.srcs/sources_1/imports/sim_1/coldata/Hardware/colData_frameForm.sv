`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//***************************
//***
//***	Module Name: colData_frameDummy
//***	Description: This module simply creates a fixed block of numbers
//***		from 0 to 23.  "Step1" means that this is not the full
//***		64 word frame.  Rather, it is the frame filled by one
//***		ADC-worth of data.  In this particular case, it fits the
//***		size of a Frame-12 frame for one ADC.
//***
//***************************
module	colData_frDummy_step1	(	output	logic	[29:0][7:0]	frameData
				);

	always_comb
	begin
		frameData[29]	=	8'b0000_0000;		//Dummy Data to match frame size
		frameData[28]	=	8'b0000_0000;		//Dummy Data to match frame size
		frameData[27]	=	8'b0000_0000;		//Dummy Data to match frame size
		frameData[26]	=	8'b0000_0000;		//Dummy Data to match frame size
		frameData[25]	=	8'b0000_0000;		//Dummy Data to match frame size
		frameData[24]	=	8'b0000_0000;		//Dummy Data to match frame size
		frameData[23]	=	8'b0001_0111;
		frameData[22]	=	8'b0001_0110;
		frameData[21]	=	8'b0001_0101;
		frameData[20]	=	8'b0001_0100;
		frameData[19]	=	8'b0001_0011;
		frameData[18]	=	8'b0001_0010;
		frameData[17]	=	8'b0001_0001;
		frameData[16]	=	8'b0001_0000;
		frameData[15]	=	8'b0000_1111;
		frameData[14]	=	8'b0000_1110;
		frameData[13]	=	8'b0000_1101;
		frameData[12]	=	8'b0000_1100;
		frameData[11]	=	8'b0000_1011;
		frameData[10]	=	8'b0000_1010;
		frameData[9]	=	8'b0000_1001;
		frameData[8]	=	8'b0000_1000;
		frameData[7]	=	8'b0000_0111;
		frameData[6]	=	8'b0000_0110;
		frameData[5]	=	8'b0000_0101;
		frameData[4]	=	8'b0000_0100;
		frameData[3]	=	8'b0000_0011;
		frameData[2]	=	8'b0000_0010;
		frameData[1]	=	8'b0000_0001;
		frameData[0]	=	8'b0000_0000;
	end
endmodule	//colData_frameDummy

//***************************
//***
//***	Module Name: colData_fr12_step1
//***	Description: "Step1" means that this module only translates data from
//***		one ADC.  "fr12" means that the data is translated into Frame-12
//***		format.  Frame-12 format means that the most significant 12 bits
//***		of each 16-bit ADC word are used.  They are formed into an array
//***		of 8-bit words, spreading the 12-bit words across the 8-bit word
//***		boundaries.  The result is that this module converts a 16x16 block
//***		of ADCdata into a 24x8 block of frameData using purely
//***		combinatorial logic.
//***
//***************************
module	colData_fr12_step1	(	output	logic	[29:0][7:0]	frameData,
					input	logic	[15:0][15:0]	ADCdata
				);

	always_comb
	begin
		frameData[29]	=	8'b0000_0000;		//Dummy Data to match frame size
		frameData[28]	=	8'b0000_0000;		//Dummy Data to match frame size
		frameData[27]	=	8'b0000_0000;		//Dummy Data to match frame size
		frameData[26]	=	8'b0000_0000;		//Dummy Data to match frame size
		frameData[25]	=	8'b0000_0000;		//Dummy Data to match frame size
		frameData[24]	=	8'b0000_0000;		//Dummy Data to match frame size
		//***
		//*** Bytes 1,2,3 / ADC Channels 0 & 1
		//***
		frameData[23]	=	ADCdata[0][15:8];
		frameData[22]	=	{ADCdata[0][7:4],ADCdata[1][15:12]};
		frameData[21]	=	ADCdata[1][11:4];
		//***
		//*** Bytes 4,5,6 / ADC Channels 2 & 3
		//***
		frameData[20]	=	ADCdata[2][15:8];
		frameData[19]	=	{ADCdata[2][7:4],ADCdata[3][15:12]};
		frameData[18]	=	ADCdata[3][11:4];
		//***
		//*** Bytes 7,8,9 / ADC Channels 4 & 5
		//***
		frameData[17]	=	ADCdata[4][15:8];
		frameData[16]	=	{ADCdata[4][7:4],ADCdata[5][15:12]};
		frameData[15]	=	ADCdata[5][11:4];
		//***
		//*** Bytes 10,11,12 / ADC Channels 6 & 7
		//***
		frameData[14]	=	ADCdata[6][15:8];
		frameData[13]	=	{ADCdata[6][7:4],ADCdata[7][15:12]};
		frameData[12]	=	ADCdata[7][11:4];
		//***
		//*** Bytes 13,14,15 / ADC Channels 8 & 9
		//***
		frameData[11]	=	ADCdata[8][15:8];
		frameData[10]	=	{ADCdata[8][7:4],ADCdata[9][15:12]};
		frameData[9]	=	ADCdata[9][11:4];
		//***
		//*** Bytes 16,17,18 / ADC Channels 10 & 11
		//***
		frameData[8]	=	ADCdata[10][15:8];
		frameData[7]	=	{ADCdata[10][7:4],ADCdata[11][15:12]};
		frameData[6]	=	ADCdata[11][11:4];
		//***
		//*** Bytes 19,20,21 / ADC Channels 12 & 13
		//***
		frameData[5]	=	ADCdata[12][15:8];
		frameData[4]	=	{ADCdata[12][7:4],ADCdata[13][15:12]};
		frameData[3]	=	ADCdata[13][11:4];
		//***
		//*** Bytes 22,23,24 / ADC Channels 14 & 15
		//***
		frameData[2]	=	ADCdata[14][15:8];
		frameData[1]	=	{ADCdata[14][7:4],ADCdata[15][15:12]};
		frameData[0]	=	ADCdata[15][11:4];

	end
endmodule	//colData_frame12

//***************************
//***
//***	Module Name: colData_fr14_step1
//***	Description: "Step1" means that this module only translates data from
//***		one ADC.  "fr14" means that the data is translated into Frame-14
//***		format.  Frame-14 format means that the most significant 14 bits
//***		of each 16-bit ADC word are used.  They are formed into an array
//***		of 8-bit words, spreading the 14-bit words across the 8-bit word
//***		boundaries.  The result is that this module converts a 16x16 block
//***		of ADCdata into a 28x8 block of frameData using purely
//***		combinatorial logic.
//***
//***************************
module	colData_fr14_step1	(	output	logic	[29:0][7:0]	frameData,
															input	logic	[15:0][15:0]	ADCdata
														);

	always_comb
	begin
		frameData[29]	=	8'b0000_0000;		//Dummy Data to match frame size
		frameData[28]	=	8'b0000_0000;		//Dummy Data to match frame size
		//***
		//*** Bytes 1,2,3,4,5,6,7 / ADC Channels 0, 1, 2 & 3
		//***
		frameData[27]	=	ADCdata[0][15:8];
		frameData[26]	=	{ADCdata[0][7:2],ADCdata[1][15:14]};
		frameData[25]	=	ADCdata[1][13:6];
		frameData[24]	=	{ADCdata[1][5:2],ADCdata[2][15:12]};
		frameData[23]	=	ADCdata[2][11:4];
		frameData[22]	=	{ADCdata[2][3:2],ADCdata[3][15:10]};
		frameData[21]	=	ADCdata[3][9:2];
		//***
		//*** Bytes 8,9,10,11,12,13,14 / ADC Channels 4, 5, 6 & 7
		//***
		frameData[20]	=	ADCdata[4][15:8];
		frameData[19]	=	{ADCdata[4][7:2],ADCdata[5][15:14]};
		frameData[18]	=	ADCdata[5][13:6];
		frameData[17]	=	{ADCdata[5][5:2],ADCdata[6][15:12]};
		frameData[16]	=	ADCdata[6][11:4];
		frameData[15]	=	{ADCdata[6][3:2],ADCdata[7][15:10]};
		frameData[14]	=	ADCdata[7][9:2];
		//***
		//*** Bytes 15,16,17,18,19,20,21 / ADC Channels 8, 9, 10 & 11
		//***
		frameData[13]	=	ADCdata[8][15:8];
		frameData[12]	=	{ADCdata[8][7:2],ADCdata[9][15:14]};
		frameData[11]	=	ADCdata[9][13:6];
		frameData[10]	=	{ADCdata[9][5:2],ADCdata[10][15:12]};
		frameData[9]	=	ADCdata[10][11:4];
		frameData[8]	=	{ADCdata[10][3:2],ADCdata[11][15:10]};
		frameData[7]	=	ADCdata[11][9:2];
		//***
		//*** Bytes 22,23,24,25,26,27,28 / ADC Channels 12, 13, 14 & 15
		//***
		frameData[6]	=	ADCdata[12][15:8];
		frameData[5]	=	{ADCdata[12][7:2],ADCdata[13][15:14]};
		frameData[4]	=	ADCdata[13][13:6];
		frameData[3]	=	{ADCdata[13][5:2],ADCdata[14][15:12]};
		frameData[2]	=	ADCdata[14][11:4];
		frameData[1]	=	{ADCdata[14][3:2],ADCdata[15][15:10]};
		frameData[0]	=	ADCdata[15][9:2];
	end
endmodule	//colData_frame14

//***************************
//***
//***	Module Name: colData_fr15_step1
//***	Description: "Step1" means that this module only translates data from
//***		one ADC.  "fr15" means that the data is translated into Frame-15
//***		format.  Frame-15 format means that the most significant 15 bits
//***		of each 16-bit ADC word are used.  They are formed into an array
//***		of 8-bit words, spreading the 15-bit words across the 8-bit word
//***		boundaries.  The result is that this module converts a 16x16 block
//***		of ADCdata into a 30x8 block of frameData using purely
//***		combinatorial logic.
//***
//***************************
module	colData_fr15_step1	(	output	logic	[29:0][7:0]	frameData,
															input	logic	[15:0][15:0]	ADCdata
														);

	always_comb
	begin
		//***
		//*** Bytes 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15 / ADC Channels 0, 1, 2, 3, 4, 5, 6 & 7
		//***
		frameData[29]	=	ADCdata[0][15:8];
		frameData[28]	=	{ADCdata[0][7:1],ADCdata[1][15]};
		frameData[27]	=	ADCdata[1][14:7];
		frameData[26]	=	{ADCdata[1][6:1],ADCdata[2][15:14]};
		frameData[25]	=	ADCdata[2][13:6];
		frameData[24]	=	{ADCdata[2][5:1],ADCdata[3][15:13]};
		frameData[23]	=	ADCdata[3][12:5];
		frameData[22]	=	{ADCdata[3][4:1],ADCdata[4][15:12]};
		frameData[21]	=	ADCdata[4][11:4];
		frameData[20]	=	{ADCdata[4][3:1],ADCdata[5][15:11]};
		frameData[19]	=	ADCdata[5][10:3];
		frameData[18]	=	{ADCdata[5][2:1],ADCdata[6][15:10]};
		frameData[17]	=	ADCdata[6][9:2];
		frameData[16]	=	{ADCdata[6][1],ADCdata[7][15:9]};
		frameData[15]	=	ADCdata[7][8:1];
		//***
		//*** Bytes 16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 / ADC Channels 8, 9, 10, 11, 12, 13, 14 & 15
		//***
		frameData[14]	=	ADCdata[8][15:8];
		frameData[13]	=	{ADCdata[8][7:1],ADCdata[9][15]};
		frameData[12]	=	ADCdata[9][14:7];
		frameData[11]	=	{ADCdata[9][6:1],ADCdata[10][15:14]};
		frameData[10]	=	ADCdata[10][13:6];
		frameData[9]	=	{ADCdata[10][5:1],ADCdata[11][15:13]};
		frameData[8]	=	ADCdata[11][12:5];
		frameData[7]	=	{ADCdata[11][4:1],ADCdata[12][15:12]};
		frameData[6]	=	ADCdata[12][11:4];
		frameData[5]	=	{ADCdata[12][3:1],ADCdata[13][15:11]};
		frameData[4]	=	ADCdata[13][10:3];
		frameData[3]	=	{ADCdata[13][2:1],ADCdata[14][15:10]};
		frameData[2]	=	ADCdata[14][9:2];
		frameData[1]	=	{ADCdata[14][1],ADCdata[15][15:9]};
		frameData[0]	=	ADCdata[15][8:1];
	end
endmodule

//***************************
//***
//***	Module Name: colData_frameForm
//***	Description: "Step1" has to be implemented for each frame type.
//***		frameForm physically contains all "Step1" logic and uses
//***		the frameConfigure bits to chose which frame will be made.
//***		NO CLOCK DOMAINS HAVE BEEN CROSSED YET!
//***
//***************************
module	colData_frameForm	(	output	logic	[30:0][7:0]		frameData,
														input		logic	[15:0][15:0]	ADCdata,				//16x16 Data Array produced by colData_dataCapture
														input		logic								dataOutClk,			//To Pin: ADCX_dataOutClk (64MHz)
														input		logic								Clk_2MHz_Ext,		//2MHz Clock Derived from dataOutClk
														input		logic	[4:0]					frameCount,			//5-bit count based on dataOutClk and frameStart
														input		logic	[1:0]					frameConfigure	//Indicates Frame-12, Frame-14, Frame-15 or Frame-Dummy
													);
//***************************
//***
//***	Variables
//***
//***************************
	wire	logic	[29:0][7:0]	step1_FRDD;
	wire	logic	[29:0][7:0]	step1_FR12;
	wire	logic	[29:0][7:0]	step1_FR14;
	wire	logic	[29:0][7:0]	step1_FR15;

	logic	[29:0][7:0]	step2_FRAME;

	var	logic	[4:0]		wordPointer;
	var	logic	[4:0]		wordMax;
	var	logic	[7:0]		checkSum;

	var	logic	[30:0][7:0]	almostFrameData;

//***************************
//***
//***	Instantiate the Step1 logic
//***
//***************************
	colData_frDummy_step1	frDummy_0	(	.frameData(	step1_FRDD	)	);

	colData_fr12_step1		fr12_1		(	.frameData(	step1_FR12	),
																		.ADCdata(		ADCdata			)
																	);

	colData_fr14_step1		fr14_1		(	.frameData(	step1_FR14	),
																		.ADCdata(		ADCdata			)
																	);

	colData_fr15_step1		fr15_1		(	.frameData(	step1_FR15	),
																		.ADCdata(		ADCdata			)
																	);

	always_comb
	case (frameConfigure)
		FRAMEDD: step2_FRAME	=	step1_FRDD;
		FRAME12: step2_FRAME	=	step1_FR12;
		FRAME14: step2_FRAME	=	step1_FR14;
		FRAME15: step2_FRAME	=	step1_FR15;
		//default: step2_FRAME	=	step1_FR12;
	endcase

//***************************
//***
//***	Create the checksum
//***
//***************************
	always @(posedge dataOutClk)
		if( frameCount < 4 )				//*** Give plenty of time for step1 to process (step1 is combinatorial)
		begin
			checkSum		<=	8'b0000_0000;
			wordPointer	<=	5'b00000;
		end
		else if (( frameCount >= 4 ) && (wordPointer < 30))
		begin
			//checkSum		<=	(checkSum + step2_FRAME[wordPointer] + step2_FRAME[(wordPointer + 1)]) % 256;
			checkSum		<=	checkSum + step2_FRAME[wordPointer] + step2_FRAME[(wordPointer + 1)];
			//wordPointer	<=	wordPointer + 2;
			wordPointer	<=	wordPointer +	2'b10;
		end

//***************************
//***
//***	Capture the almostFrameData after the checksum is complete
//***
//***************************
	always @(negedge dataOutClk)
		if(wordPointer >= 30)
		begin
			almostFrameData[30]	<=	checkSum;

			almostFrameData[29]	<=	step2_FRAME[29];
			almostFrameData[28]	<=	step2_FRAME[28];
			almostFrameData[27]	<=	step2_FRAME[27];
			almostFrameData[26]	<=	step2_FRAME[26];
			almostFrameData[25]	<=	step2_FRAME[25];
			almostFrameData[24]	<=	step2_FRAME[24];
			almostFrameData[23]	<=	step2_FRAME[23];
			almostFrameData[22]	<=	step2_FRAME[22];
			almostFrameData[21]	<=	step2_FRAME[21];
			almostFrameData[20]	<=	step2_FRAME[20];
			almostFrameData[19]	<=	step2_FRAME[19];
			almostFrameData[18]	<=	step2_FRAME[18];
			almostFrameData[17]	<=	step2_FRAME[17];
			almostFrameData[16]	<=	step2_FRAME[16];
			almostFrameData[15]	<=	step2_FRAME[15];
			almostFrameData[14]	<=	step2_FRAME[14];
			almostFrameData[13]	<=	step2_FRAME[13];
			almostFrameData[12]	<=	step2_FRAME[12];
			almostFrameData[11]	<=	step2_FRAME[11];
			almostFrameData[10]	<=	step2_FRAME[10];
			almostFrameData[9]	<=	step2_FRAME[9];
			almostFrameData[8]	<=	step2_FRAME[8];
			almostFrameData[7]	<=	step2_FRAME[7];
			almostFrameData[6]	<=	step2_FRAME[6];
			almostFrameData[5]	<=	step2_FRAME[5];
			almostFrameData[4]	<=	step2_FRAME[4];
			almostFrameData[3]	<=	step2_FRAME[3];
			almostFrameData[2]	<=	step2_FRAME[2];
			almostFrameData[1]	<=	step2_FRAME[1];
			almostFrameData[0]	<=	step2_FRAME[0];

		end

//***************************
//***
//***	Capture the FrameData at the next rising edge of the Extracted 2MHz Clock
//***
//***************************
	always @(posedge Clk_2MHz_Ext)
		frameData	<=	almostFrameData;

endmodule
