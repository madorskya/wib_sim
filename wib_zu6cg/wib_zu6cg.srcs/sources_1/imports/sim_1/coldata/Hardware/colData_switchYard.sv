`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//***************************
//***
//***	Module Name: colData_FIFO
//***	Description:
//***
//***************************
module	colData_FIFO		(	output	logic	[8:0]		FIFOout,				//One bit of control character and 8-bits of data
													output	logic					FIFOfull,
													output	logic					FIFOempty,
													input		logic	[17:0]	FIFOin,
													input		logic					validData,			//Active High signal from colData_switchYard
													input 	logic					FIFOclk,				//128MHz Clock from PLL
													input 	logic					FIFOrst_128MHz	//Active High Reset from colData_Rst
												);
//***************************
//***
//***	Variables
//***
//***************************
	wire	logic	[6:0]					writePtr0;
	wire	logic	[6:0]					writePtr1;
	var		logic	[5:0]					writePtr;
	var		logic	[6:0]					readPtr;

	var		logic	[127:0][8:0]	FIFOmem;

	var		logic								goodWrite;
	var		logic								goodRead;

//***************************
//***
//***	FIFO Pointers
//***
//***************************
//*** NOTE: We write two full words at once by creating two 7-bit pointers
//***				from a single 6-bit pointer.  Obviously, writePtr0 and writePtr1
//***				will always point to two adjacent locations in the FIFO array and
//***				writePtr0 and writePtr1 can never "accidentally" point to the same
//***				location no matter what number is in writePtr.
	assign	writePtr0	=	{writePtr, 1'b0};
	assign	writePtr1	=	{writePtr, 1'b1};

//***************************
//***
//***	FIFO WRITING
//***
//***************************
	//*** Write data into the FIFOmem
	//*** Upon reset, goodWrite = 0
	//*** Upon the posedge of FIFOclk, if we have valid data and the FIFO is not full
	//*** write the data into the appropriate position as dictated by the writePtr
	//*** and flag a goodWrite
	//*** NOTE: We write two full words at once
	always_ff @(posedge FIFOclk or posedge FIFOrst_128MHz)
		if(FIFOrst_128MHz == ONE)
			begin
				goodWrite	<=	ZERO;
				writePtr	<=	6'b0;

				FIFOmem[0]	<=	9'b0_0000_0000;
				FIFOmem[1]	<=	9'b0_0000_0000;
				FIFOmem[2]	<=	9'b0_0000_0000;
				FIFOmem[3]	<=	9'b0_0000_0000;
				FIFOmem[4]	<=	9'b0_0000_0000;
				FIFOmem[5]	<=	9'b0_0000_0000;
				FIFOmem[6]	<=	9'b0_0000_0000;
				FIFOmem[7]	<=	9'b0_0000_0000;
				FIFOmem[8]	<=	9'b0_0000_0000;
				FIFOmem[9]	<=	9'b0_0000_0000;

				FIFOmem[10]	<=	9'b0_0000_0000;
				FIFOmem[11]	<=	9'b0_0000_0000;
				FIFOmem[12]	<=	9'b0_0000_0000;
				FIFOmem[13]	<=	9'b0_0000_0000;
				FIFOmem[14]	<=	9'b0_0000_0000;
				FIFOmem[15]	<=	9'b0_0000_0000;
				FIFOmem[16]	<=	9'b0_0000_0000;
				FIFOmem[17]	<=	9'b0_0000_0000;
				FIFOmem[18]	<=	9'b0_0000_0000;
				FIFOmem[19]	<=	9'b0_0000_0000;

				FIFOmem[20]	<=	9'b0_0000_0000;
				FIFOmem[21]	<=	9'b0_0000_0000;
				FIFOmem[22]	<=	9'b0_0000_0000;
				FIFOmem[23]	<=	9'b0_0000_0000;
				FIFOmem[24]	<=	9'b0_0000_0000;
				FIFOmem[25]	<=	9'b0_0000_0000;
				FIFOmem[26]	<=	9'b0_0000_0000;
				FIFOmem[27]	<=	9'b0_0000_0000;
				FIFOmem[28]	<=	9'b0_0000_0000;
				FIFOmem[29]	<=	9'b0_0000_0000;

				FIFOmem[30]	<=	9'b0_0000_0000;
				FIFOmem[31]	<=	9'b0_0000_0000;
				FIFOmem[32]	<=	9'b0_0000_0000;
				FIFOmem[33]	<=	9'b0_0000_0000;
				FIFOmem[34]	<=	9'b0_0000_0000;
				FIFOmem[35]	<=	9'b0_0000_0000;
				FIFOmem[36]	<=	9'b0_0000_0000;
				FIFOmem[37]	<=	9'b0_0000_0000;
				FIFOmem[38]	<=	9'b0_0000_0000;
				FIFOmem[39]	<=	9'b0_0000_0000;

				FIFOmem[40]	<=	9'b0_0000_0000;
				FIFOmem[41]	<=	9'b0_0000_0000;
				FIFOmem[42]	<=	9'b0_0000_0000;
				FIFOmem[43]	<=	9'b0_0000_0000;
				FIFOmem[44]	<=	9'b0_0000_0000;
				FIFOmem[45]	<=	9'b0_0000_0000;
				FIFOmem[46]	<=	9'b0_0000_0000;
				FIFOmem[47]	<=	9'b0_0000_0000;
				FIFOmem[48]	<=	9'b0_0000_0000;
				FIFOmem[49]	<=	9'b0_0000_0000;

				FIFOmem[50]	<=	9'b0_0000_0000;
				FIFOmem[51]	<=	9'b0_0000_0000;
				FIFOmem[52]	<=	9'b0_0000_0000;
				FIFOmem[53]	<=	9'b0_0000_0000;
				FIFOmem[54]	<=	9'b0_0000_0000;
				FIFOmem[55]	<=	9'b0_0000_0000;
				FIFOmem[56]	<=	9'b0_0000_0000;
				FIFOmem[57]	<=	9'b0_0000_0000;
				FIFOmem[58]	<=	9'b0_0000_0000;
				FIFOmem[59]	<=	9'b0_0000_0000;

				FIFOmem[60]	<=	9'b0_0000_0000;
				FIFOmem[61]	<=	9'b0_0000_0000;
				FIFOmem[62]	<=	9'b0_0000_0000;
				FIFOmem[63]	<=	9'b0_0000_0000;
				FIFOmem[64]	<=	9'b0_0000_0000;
				FIFOmem[65]	<=	9'b0_0000_0000;
				FIFOmem[66]	<=	9'b0_0000_0000;
				FIFOmem[67]	<=	9'b0_0000_0000;
				FIFOmem[68]	<=	9'b0_0000_0000;
				FIFOmem[69]	<=	9'b0_0000_0000;

				FIFOmem[70]	<=	9'b0_0000_0000;
				FIFOmem[71]	<=	9'b0_0000_0000;
				FIFOmem[72]	<=	9'b0_0000_0000;
				FIFOmem[73]	<=	9'b0_0000_0000;
				FIFOmem[74]	<=	9'b0_0000_0000;
				FIFOmem[75]	<=	9'b0_0000_0000;
				FIFOmem[76]	<=	9'b0_0000_0000;
				FIFOmem[77]	<=	9'b0_0000_0000;
				FIFOmem[78]	<=	9'b0_0000_0000;
				FIFOmem[79]	<=	9'b0_0000_0000;

				FIFOmem[80]	<=	9'b0_0000_0000;
				FIFOmem[81]	<=	9'b0_0000_0000;
				FIFOmem[82]	<=	9'b0_0000_0000;
				FIFOmem[83]	<=	9'b0_0000_0000;
				FIFOmem[84]	<=	9'b0_0000_0000;
				FIFOmem[85]	<=	9'b0_0000_0000;
				FIFOmem[86]	<=	9'b0_0000_0000;
				FIFOmem[87]	<=	9'b0_0000_0000;
				FIFOmem[88]	<=	9'b0_0000_0000;
				FIFOmem[89]	<=	9'b0_0000_0000;

				FIFOmem[90]	<=	9'b0_0000_0000;
				FIFOmem[91]	<=	9'b0_0000_0000;
				FIFOmem[92]	<=	9'b0_0000_0000;
				FIFOmem[93]	<=	9'b0_0000_0000;
				FIFOmem[94]	<=	9'b0_0000_0000;
				FIFOmem[95]	<=	9'b0_0000_0000;
				FIFOmem[96]	<=	9'b0_0000_0000;
				FIFOmem[97]	<=	9'b0_0000_0000;
				FIFOmem[98]	<=	9'b0_0000_0000;
				FIFOmem[99]	<=	9'b0_0000_0000;

				FIFOmem[100]	<=	9'b0_0000_0000;
				FIFOmem[101]	<=	9'b0_0000_0000;
				FIFOmem[102]	<=	9'b0_0000_0000;
				FIFOmem[103]	<=	9'b0_0000_0000;
				FIFOmem[104]	<=	9'b0_0000_0000;
				FIFOmem[105]	<=	9'b0_0000_0000;
				FIFOmem[106]	<=	9'b0_0000_0000;
				FIFOmem[107]	<=	9'b0_0000_0000;
				FIFOmem[108]	<=	9'b0_0000_0000;
				FIFOmem[109]	<=	9'b0_0000_0000;

				FIFOmem[110]	<=	9'b0_0000_0000;
				FIFOmem[111]	<=	9'b0_0000_0000;
				FIFOmem[112]	<=	9'b0_0000_0000;
				FIFOmem[113]	<=	9'b0_0000_0000;
				FIFOmem[114]	<=	9'b0_0000_0000;
				FIFOmem[115]	<=	9'b0_0000_0000;
				FIFOmem[116]	<=	9'b0_0000_0000;
				FIFOmem[117]	<=	9'b0_0000_0000;
				FIFOmem[118]	<=	9'b0_0000_0000;
				FIFOmem[119]	<=	9'b0_0000_0000;

				FIFOmem[120]	<=	9'b0_0000_0000;
				FIFOmem[121]	<=	9'b0_0000_0000;
				FIFOmem[122]	<=	9'b0_0000_0000;
				FIFOmem[123]	<=	9'b0_0000_0000;
				FIFOmem[124]	<=	9'b0_0000_0000;
				FIFOmem[125]	<=	9'b0_0000_0000;
				FIFOmem[126]	<=	9'b0_0000_0000;
				FIFOmem[127]	<=	9'b0_0000_0000;

			end
		else
			if((validData == ONE) && (FIFOfull != ONE))
				begin
					FIFOmem[writePtr0]	<=	FIFOin[17:9];
					FIFOmem[writePtr1]	<=	FIFOin[8:0];
					writePtr						<=	writePtr + 6'b00_0001;
					goodWrite 					<= 	ONE;
				end
			else
				goodWrite		<=	ZERO;

//***************************
//***
//***	FIFO READING
//***
//***************************
	//*** Read data from the FIFOmem
	//*** Upon reset, goodRead = 0
	//*** Upon the posedge of FIFOclk, if the FIFO is not empty
	//*** read the data from the appropriate position as dictated by the readPtr
	//*** and flag a goodRead
	//*** NOTE that we read out one 9-bit word at a time
	always_ff @(posedge FIFOclk or posedge FIFOrst_128MHz)
		if(FIFOrst_128MHz == ONE)
			begin
				goodRead	<=	ZERO;
				readPtr		<=	7'b0;
				FIFOout 	<=	{ONE, K_28_1};
			end
		else
			if(FIFOempty != ONE)
				begin
					FIFOout		<=	FIFOmem[readPtr];
					goodRead	<=	ONE;
					readPtr		<=	readPtr + 7'b00_0001;
				end
			else
				begin
					FIFOout		<=	{ONE, K_28_1};	//Idle character because the FIFO is empty
					goodRead	<=	ZERO;
				end

	//*** Derive FIFOfull and FIFOempty from the pointer positions
	always_comb
		begin
			FIFOempty	=	(writePtr0 == readPtr)			?	ONE	:	ZERO;
			FIFOfull	=	(writePtr0 == ((readPtr - 7'b00_0001) % 128))	?	ONE	:	ZERO;
		end

endmodule

//***************************
//***
//***	Module Name: colData_switchYard
//***	Description: This module performs the Clock Domain Crossing
//***		and instantiates the FIFO that is used by the Serializer
//***		to output the data.
//***
//***************************
module	colData_switchYard	(	output	logic	[8:0]				outFIFO1,
															output	logic	[8:0]				outFIFO2,
															input		logic							Clk_2MHz_SYS,
															input		logic							FIFO1_Clk_128MHz_PLL,
															input		logic							FIFO2_Clk_128MHz_PLL,
															input		logic	[30:0][7:0]	ADC1_frameData,
															input		logic	[30:0][7:0]	ADC2_frameData,
															input		logic	[30:0][7:0]	ADC3_frameData,
															input		logic	[30:0][7:0]	ADC4_frameData,
															input		logic	[1:0]				frameConfigure,		//Indicates Frame-12, Frame-14, Frame-15 or Frame-Dummy
															input		logic	[7:0]				timeStamp,
															input 	logic 						FIFO1active,
															input 	logic 						FIFO2active,
															input		logic							colData_Rst,		//Active Low Reset
															input 	logic 						I2C_softReset		//Active HIGH Reset
														);
//***************************
//***
//***	Variables
//***
//***************************
	var	logic	[30:0][7:0]	ADC1_NE_regFrame;
	var	logic	[30:0][7:0]	ADC2_NE_regFrame;
	var	logic	[30:0][7:0]	ADC3_NE_regFrame;
	var	logic	[30:0][7:0]	ADC4_NE_regFrame;
	var	logic	[63:0][8:0]	ADC1_regFrame;
	var	logic	[63:0][8:0]	ADC2_regFrame;
	var	logic	[7:0]				timeStamp_NE;

	var	logic							FIFO1_sync1;
	var	logic							FIFO1_sync2;
	var	logic							FIFO1_sync3;
	var	logic							FIFO1_sync4;

	wire	logic						FIFO1_edgeDetect;

	var	logic							FIFO1_foundEdge_NE;
	var	logic							FIFO1_foundEdge;

	var	logic							FIFO1_validData;
	wire	logic	[17:0]		FIFO1_data;

	var	logic							FIFO2_sync1;
	var	logic							FIFO2_sync2;
	var	logic							FIFO2_sync3;
	var	logic							FIFO2_sync4;

	wire	logic						FIFO2_edgeDetect;

	var	logic							FIFO2_foundEdge_NE;
	var	logic							FIFO2_foundEdge;

	var	logic							FIFO2_validData;
	wire	logic	[17:0]		FIFO2_data;

	logic 					FIFO1active_sync1;
	logic 					FIFO1active_sync2;
	logic 					FIFO1active_sync3;
	logic 					FIFO2active_sync1;
	logic 					FIFO2active_sync2;
	logic 					FIFO2active_sync3;
	logic 					FIFO1_foundEdge_Active;
	logic 					FIFO2_foundEdge_Active;

	logic 					logicalReset;
	logic 					FIFOrst_1_128MHz_A;
	logic 					FIFOrst_1_128MHz_B;
	logic 					FIFOrst_1_128MHz;
	logic 					FIFOrst_2_128MHz_A;
	logic 					FIFOrst_2_128MHz_B;
	logic 					FIFOrst_2_128MHz;

//***************************
//***
//***	First, register the reset into this clock domain
//***
//***************************
		assign 	logicalReset	=	!colData_Rst + I2C_softReset;		//If either colData_Rst is low or I2C_softReset is high...

		always @ ( posedge FIFO1_Clk_128MHz_PLL )
			FIFOrst_1_128MHz_A	<=	logicalReset;

		always @ ( posedge FIFO1_Clk_128MHz_PLL )
			FIFOrst_1_128MHz_B	<=	FIFOrst_1_128MHz_A;

		always @ ( posedge FIFO1_Clk_128MHz_PLL )
			FIFOrst_1_128MHz	<=	FIFOrst_1_128MHz_B;

		always @ ( posedge FIFO2_Clk_128MHz_PLL )
			FIFOrst_2_128MHz_A	<=	logicalReset;

		always @ ( posedge FIFO2_Clk_128MHz_PLL )
			FIFOrst_2_128MHz_B	<=	FIFOrst_2_128MHz_A;

		always @ ( posedge FIFO2_Clk_128MHz_PLL )
			FIFOrst_2_128MHz	<=	FIFOrst_2_128MHz_B;

//***************************
//***
//***	ADCX_frameData has been formed entirely each using their own dataOutClk.
//***		It took one full 2MHz sample period to capture each 16x16 ADC data block
//***		into either PINGs or PONGs.  Then, a second 2MHz sample period was expended
//***		capturing either the PONGs or the PINGs on the falling edge of a 2MHz clock
//***		extracted from the 64MHz dataOutClk and then again on its rising edge.
//***		This guarantees a set 16x16 ADC data blocks that are stable for the entire
//***		2MHz period.  A third 2MHz sample period is spent twisting the 16x16 blocks
//***		into one of 4 frames (FRAMEDD, FRAME12, FRAME14, or FRAME15) and generating
//***		the checksums.  These ADCX_frameData sets exist and are stable for a full
//***		2MHz period length extending from approximately one positive edge of the
//***		respective extracted 2MHz Clock period to the next.
//***
//***	Technically, the clocks that generate the ADCX_frameData all come from the 64MHz
//***		System clock family that exist on colData.  However, it is entirely possible
//***		that the clocks might be offset from one another by one or two beats of the
//***		64MHz clock.  Conservative design philosophy suggests that we spend one more
//***		2MHz sample clock period registering this data into the colData 2MHz system
//***		clock domain.  All data from all ADC sources should be stable by the falling
//***		edge of the 2MHz system clock.
//***
//***************************
	always @(negedge Clk_2MHz_SYS)
	begin
		timeStamp_NE			<=	timeStamp;
		ADC1_NE_regFrame	<=	ADC1_frameData;
		ADC2_NE_regFrame	<=	ADC2_frameData;
		ADC3_NE_regFrame	<=	ADC3_frameData;
		ADC4_NE_regFrame	<=	ADC4_frameData;
	end

	always @(posedge Clk_2MHz_SYS)
	//***
	//*****************************************************************
	//*****************************************************************
	//*** if(frameConfigure == FRAMEDD)
	//*****************************************************************
	//*****************************************************************
	//***
	if(frameConfigure == FRAMEDD)
	begin
		//*******************************************************
		//*** ADC1_regFrame
		//*******************************************************
		//***
		//*** Header
		//***
		ADC1_regFrame[63]	<=	{ONE, K_28_0};
		ADC1_regFrame[62]	<=	{ZERO, timeStamp_NE};							//***	1
		ADC1_regFrame[61]	<=	{ZERO, ADC1_NE_regFrame[23]};		//***	2
		ADC1_regFrame[60]	<=	{ZERO, ADC1_NE_regFrame[22]};		//***	3
		ADC1_regFrame[59]	<=	{ZERO, ADC1_NE_regFrame[21]};		//***	4
		ADC1_regFrame[58]	<=	{ZERO, ADC1_NE_regFrame[20]};		//***	5
		ADC1_regFrame[57]	<=	{ZERO, ADC1_NE_regFrame[19]};		//***	6
		ADC1_regFrame[56]	<=	{ZERO, ADC1_NE_regFrame[18]};		//***	7
		ADC1_regFrame[55]	<=	{ZERO, ADC1_NE_regFrame[17]};		//***	8
		ADC1_regFrame[54]	<=	{ZERO, ADC1_NE_regFrame[16]};		//***	9
		ADC1_regFrame[53]	<=	{ZERO, ADC1_NE_regFrame[15]};		//***	10
		ADC1_regFrame[52]	<=	{ZERO, ADC1_NE_regFrame[14]};		//***	11
		ADC1_regFrame[51]	<=	{ZERO, ADC1_NE_regFrame[13]};		//***	12
		ADC1_regFrame[50]	<=	{ZERO, ADC1_NE_regFrame[12]};		//***	13
		ADC1_regFrame[49]	<=	{ZERO, ADC1_NE_regFrame[11]};		//***	14
		ADC1_regFrame[48]	<=	{ZERO, ADC1_NE_regFrame[10]};		//***	15
		ADC1_regFrame[47]	<=	{ZERO, ADC1_NE_regFrame[9]};		//***	16
		ADC1_regFrame[46]	<=	{ZERO, ADC1_NE_regFrame[8]};		//***	17
		ADC1_regFrame[45]	<=	{ZERO, ADC1_NE_regFrame[7]};		//***	18
		ADC1_regFrame[44]	<=	{ZERO, ADC1_NE_regFrame[6]};		//***	19
		ADC1_regFrame[43]	<=	{ZERO, ADC1_NE_regFrame[5]};		//***	20
		ADC1_regFrame[42]	<=	{ZERO, ADC1_NE_regFrame[4]};		//***	21
		ADC1_regFrame[41]	<=	{ZERO, ADC1_NE_regFrame[3]};		//***	22
		ADC1_regFrame[40]	<=	{ZERO, ADC1_NE_regFrame[2]};		//***	23
		ADC1_regFrame[39]	<=	{ZERO, ADC1_NE_regFrame[1]};		//***	24
		ADC1_regFrame[38]	<=	{ZERO, ADC1_NE_regFrame[0]};		//***	25
		ADC1_regFrame[37]	<=	{ZERO, ADC2_NE_regFrame[23]};		//***	26
		ADC1_regFrame[36]	<=	{ZERO, ADC2_NE_regFrame[22]};		//***	27
		ADC1_regFrame[35]	<=	{ZERO, ADC2_NE_regFrame[21]};		//***	28
		ADC1_regFrame[34]	<=	{ZERO, ADC2_NE_regFrame[20]};		//***	29
		ADC1_regFrame[33]	<=	{ZERO, ADC2_NE_regFrame[19]};		//***	30
		ADC1_regFrame[32]	<=	{ZERO, ADC2_NE_regFrame[18]};		//***	31
		ADC1_regFrame[31]	<=	{ZERO, ADC2_NE_regFrame[17]};		//***	32
		ADC1_regFrame[30]	<=	{ZERO, ADC2_NE_regFrame[16]};		//***	33
		ADC1_regFrame[29]	<=	{ZERO, ADC2_NE_regFrame[15]};		//***	34
		ADC1_regFrame[28]	<=	{ZERO, ADC2_NE_regFrame[14]};		//***	35
		ADC1_regFrame[27]	<=	{ZERO, ADC2_NE_regFrame[13]};		//***	36
		ADC1_regFrame[26]	<=	{ZERO, ADC2_NE_regFrame[12]};		//***	37
		ADC1_regFrame[25]	<=	{ZERO, ADC2_NE_regFrame[11]};		//***	38
		ADC1_regFrame[24]	<=	{ZERO, ADC2_NE_regFrame[10]};		//***	39
		ADC1_regFrame[23]	<=	{ZERO, ADC2_NE_regFrame[9]};		//***	40
		ADC1_regFrame[22]	<=	{ZERO, ADC2_NE_regFrame[8]};		//***	41
		ADC1_regFrame[21]	<=	{ZERO, ADC2_NE_regFrame[7]};		//***	42
		ADC1_regFrame[20]	<=	{ZERO, ADC2_NE_regFrame[6]};		//***	43
		ADC1_regFrame[19]	<=	{ZERO, ADC2_NE_regFrame[5]};		//***	44
		ADC1_regFrame[18]	<=	{ZERO, ADC2_NE_regFrame[4]};		//***	45
		ADC1_regFrame[17]	<=	{ZERO, ADC2_NE_regFrame[3]};		//***	46
		ADC1_regFrame[16]	<=	{ZERO, ADC2_NE_regFrame[2]};		//***	47
		ADC1_regFrame[15]	<=	{ZERO, ADC2_NE_regFrame[1]};		//***	48
		ADC1_regFrame[14]	<=	{ZERO, ADC2_NE_regFrame[0]};		//***	49
		//***
		//*** Checksum Initialization
		//***
		ADC1_regFrame[13]	<=	{ZERO, ADC1_NE_regFrame[30]};		//***	50
		ADC1_regFrame[12]	<=	{ZERO, ADC2_NE_regFrame[30]};		//***	51
		//***
		//*** Trailer
		//***
		ADC1_regFrame[11]	<=	{ONE, K_28_1};									//***	52
		ADC1_regFrame[10]	<=	{ONE, K_28_1};									//***	53
		ADC1_regFrame[9]	<=	{ONE, K_28_5};									//***	54
		ADC1_regFrame[8]	<=	{ONE, K_28_5};									//***	55
		ADC1_regFrame[7]	<=	{ONE, K_28_5};									//***	56
		ADC1_regFrame[6]	<=	{ONE, K_28_5};									//***	57
		ADC1_regFrame[5]	<=	{ONE, K_28_1};									//***	58
		ADC1_regFrame[4]	<=	{ONE, K_28_1};									//***	59
		ADC1_regFrame[3]	<=	{ONE, K_28_1};									//***	60
		ADC1_regFrame[2]	<=	{ONE, K_28_1};									//***	61
		ADC1_regFrame[1]	<=	{ONE, K_28_1};									//***	62
		ADC1_regFrame[0]	<=	{ONE, K_28_1};									//***	63
		//***
		//*******************************************************
		//*** ADC2_regFrame
		//*******************************************************
		//***
		//*** Header
		//***
		ADC2_regFrame[63]	<=	{ONE, K_28_0};									//***	0
		ADC2_regFrame[62]	<=	{ZERO, timeStamp_NE};							//***	1
		ADC2_regFrame[61]	<=	{ZERO, ADC3_NE_regFrame[23]};		//***	2
		ADC2_regFrame[60]	<=	{ZERO, ADC3_NE_regFrame[22]};		//***	3
		ADC2_regFrame[59]	<=	{ZERO, ADC3_NE_regFrame[21]};		//***	4
		ADC2_regFrame[58]	<=	{ZERO, ADC3_NE_regFrame[20]};		//***	5
		ADC2_regFrame[57]	<=	{ZERO, ADC3_NE_regFrame[19]};		//***	6
		ADC2_regFrame[56]	<=	{ZERO, ADC3_NE_regFrame[18]};		//***	7
		ADC2_regFrame[55]	<=	{ZERO, ADC3_NE_regFrame[17]};		//***	8
		ADC2_regFrame[54]	<=	{ZERO, ADC3_NE_regFrame[16]};		//***	9
		ADC2_regFrame[53]	<=	{ZERO, ADC3_NE_regFrame[15]};		//***	10
		ADC2_regFrame[52]	<=	{ZERO, ADC3_NE_regFrame[14]};		//***	11
		ADC2_regFrame[51]	<=	{ZERO, ADC3_NE_regFrame[13]};		//***	12
		ADC2_regFrame[50]	<=	{ZERO, ADC3_NE_regFrame[12]};		//***	13
		ADC2_regFrame[49]	<=	{ZERO, ADC3_NE_regFrame[11]};		//***	14
		ADC2_regFrame[48]	<=	{ZERO, ADC3_NE_regFrame[10]};		//***	15
		ADC2_regFrame[47]	<=	{ZERO, ADC3_NE_regFrame[9]};		//***	16
		ADC2_regFrame[46]	<=	{ZERO, ADC3_NE_regFrame[8]};		//***	17
		ADC2_regFrame[45]	<=	{ZERO, ADC3_NE_regFrame[7]};		//***	18
		ADC2_regFrame[44]	<=	{ZERO, ADC3_NE_regFrame[6]};		//***	19
		ADC2_regFrame[43]	<=	{ZERO, ADC3_NE_regFrame[5]};		//***	20
		ADC2_regFrame[42]	<=	{ZERO, ADC3_NE_regFrame[4]};		//***	21
		ADC2_regFrame[41]	<=	{ZERO, ADC3_NE_regFrame[3]};		//***	22
		ADC2_regFrame[40]	<=	{ZERO, ADC3_NE_regFrame[2]};		//***	23
		ADC2_regFrame[39]	<=	{ZERO, ADC3_NE_regFrame[1]};		//***	24
		ADC2_regFrame[38]	<=	{ZERO, ADC3_NE_regFrame[0]};		//***	25
		ADC2_regFrame[37]	<=	{ZERO, ADC4_NE_regFrame[23]};		//***	26
		ADC2_regFrame[36]	<=	{ZERO, ADC4_NE_regFrame[22]};		//***	27
		ADC2_regFrame[35]	<=	{ZERO, ADC4_NE_regFrame[21]};		//***	28
		ADC2_regFrame[34]	<=	{ZERO, ADC4_NE_regFrame[20]};		//***	29
		ADC2_regFrame[33]	<=	{ZERO, ADC4_NE_regFrame[19]};		//***	30
		ADC2_regFrame[32]	<=	{ZERO, ADC4_NE_regFrame[18]};		//***	31
		ADC2_regFrame[31]	<=	{ZERO, ADC4_NE_regFrame[17]};		//***	32
		ADC2_regFrame[30]	<=	{ZERO, ADC4_NE_regFrame[16]};		//***	33
		ADC2_regFrame[29]	<=	{ZERO, ADC4_NE_regFrame[15]};		//***	34
		ADC2_regFrame[28]	<=	{ZERO, ADC4_NE_regFrame[14]};		//***	35
		ADC2_regFrame[27]	<=	{ZERO, ADC4_NE_regFrame[13]};		//***	36
		ADC2_regFrame[26]	<=	{ZERO, ADC4_NE_regFrame[12]};		//***	37
		ADC2_regFrame[25]	<=	{ZERO, ADC4_NE_regFrame[11]};		//***	38
		ADC2_regFrame[24]	<=	{ZERO, ADC4_NE_regFrame[10]};		//***	39
		ADC2_regFrame[23]	<=	{ZERO, ADC4_NE_regFrame[9]};		//***	40
		ADC2_regFrame[22]	<=	{ZERO, ADC4_NE_regFrame[8]};		//***	41
		ADC2_regFrame[21]	<=	{ZERO, ADC4_NE_regFrame[7]};		//***	42
		ADC2_regFrame[20]	<=	{ZERO, ADC4_NE_regFrame[6]};		//***	43
		ADC2_regFrame[19]	<=	{ZERO, ADC4_NE_regFrame[5]};		//***	44
		ADC2_regFrame[18]	<=	{ZERO, ADC4_NE_regFrame[4]};		//***	45
		ADC2_regFrame[17]	<=	{ZERO, ADC4_NE_regFrame[3]};		//***	46
		ADC2_regFrame[16]	<=	{ZERO, ADC4_NE_regFrame[2]};		//***	47
		ADC2_regFrame[15]	<=	{ZERO, ADC4_NE_regFrame[1]};		//***	48
		ADC2_regFrame[14]	<=	{ZERO, ADC4_NE_regFrame[0]};		//***	49
		//***
		//*** Checksum Initialization
		//***
		ADC2_regFrame[13]	<=	{ZERO, ADC3_NE_regFrame[30]};		//***	50
		ADC2_regFrame[12]	<=	{ZERO, ADC4_NE_regFrame[30]};		//***	51
		//***
		//*** Trailer
		//***
		ADC2_regFrame[11]	<=	{ONE, K_28_1};									//***	52
		ADC2_regFrame[10]	<=	{ONE, K_28_1};									//***	53
		ADC2_regFrame[9]	<=	{ONE, K_28_5};									//***	54
		ADC2_regFrame[8]	<=	{ONE, K_28_5};									//***	55
		ADC2_regFrame[7]	<=	{ONE, K_28_5};									//***	56
		ADC2_regFrame[6]	<=	{ONE, K_28_5};									//***	57
		ADC2_regFrame[5]	<=	{ONE, K_28_1};									//***	58
		ADC2_regFrame[4]	<=	{ONE, K_28_1};									//***	59
		ADC2_regFrame[3]	<=	{ONE, K_28_1};									//***	60
		ADC2_regFrame[2]	<=	{ONE, K_28_1};									//***	61
		ADC2_regFrame[1]	<=	{ONE, K_28_1};									//***	62
		ADC2_regFrame[0]	<=	{ONE, K_28_1};									//***	63
	end  //***	if(frameConfigure == FRAMEDD)
	//***
	//*****************************************************************
	//*****************************************************************
	//*** if(frameConfigure == FRAME12)
	//*****************************************************************
	//*****************************************************************
	//***
	else if(frameConfigure == FRAME12)
	begin
		//*******************************************************
		//*** ADC1_regFrame
		//*******************************************************
		//***
		//*** Header
		//***
		ADC1_regFrame[63]	<=	{ONE, K_28_2};									//***	0
		ADC1_regFrame[62]	<=	{ZERO, timeStamp_NE};							//***	1
		//***
		//*** Bytes 1,2,3 / ADC A / Channels 0 & 1
		//***
		ADC1_regFrame[61]	<=	{ZERO, ADC1_NE_regFrame[23]};		//***	2
		ADC1_regFrame[60]	<=	{ZERO, ADC1_NE_regFrame[22]};		//***	3
		ADC1_regFrame[59]	<=	{ZERO, ADC1_NE_regFrame[21]};		//***	4
		//***
		//*** Bytes 4,5,6 / ADC A / Channels 2 & 3
		//***
		ADC1_regFrame[58]	<=	{ZERO, ADC1_NE_regFrame[20]};		//***	5
		ADC1_regFrame[57]	<=	{ZERO, ADC1_NE_regFrame[19]};		//***	6
		ADC1_regFrame[56]	<=	{ZERO, ADC1_NE_regFrame[18]};		//***	7
		//***
		//*** Bytes 7,8,9 / ADC A / Channels 4 & 5
		//***
		ADC1_regFrame[55]	<=	{ZERO, ADC1_NE_regFrame[17]};		//***	8
		ADC1_regFrame[54]	<=	{ZERO, ADC1_NE_regFrame[16]};		//***	9
		ADC1_regFrame[53]	<=	{ZERO, ADC1_NE_regFrame[15]};		//***	10
		//***
		//*** Bytes 10,11,12 / ADC A / Channels 6 & 7
		//***
		ADC1_regFrame[52]	<=	{ZERO, ADC1_NE_regFrame[14]};		//***	11
		ADC1_regFrame[51]	<=	{ZERO, ADC1_NE_regFrame[13]};		//***	12
		ADC1_regFrame[50]	<=	{ZERO, ADC1_NE_regFrame[12]};		//***	13
		//***
		//*** Bytes 13,14,15 / ADC A / Channels 8 & 9
		//***
		ADC1_regFrame[49]	<=	{ZERO, ADC1_NE_regFrame[11]};		//***	14
		ADC1_regFrame[48]	<=	{ZERO, ADC1_NE_regFrame[10]};		//***	15
		ADC1_regFrame[47]	<=	{ZERO, ADC1_NE_regFrame[9]};		//***	16
		//***
		//*** Bytes 16,17,18 / ADC A / Channels 10 & 11
		//***
		ADC1_regFrame[46]	<=	{ZERO, ADC1_NE_regFrame[8]};		//***	17
		ADC1_regFrame[45]	<=	{ZERO, ADC1_NE_regFrame[7]};		//***	18
		ADC1_regFrame[44]	<=	{ZERO, ADC1_NE_regFrame[6]};		//***	19
		//***
		//*** Bytes 19,20,21 / ADC A / Channels 12 & 13
		//***
		ADC1_regFrame[43]	<=	{ZERO, ADC1_NE_regFrame[5]};		//***	20
		ADC1_regFrame[42]	<=	{ZERO, ADC1_NE_regFrame[4]};		//***	21
		ADC1_regFrame[41]	<=	{ZERO, ADC1_NE_regFrame[3]};		//***	22
		//***
		//*** Bytes 22,23,24 / ADC A / Channels 14 & 15
		//***
		ADC1_regFrame[40]	<=	{ZERO, ADC1_NE_regFrame[2]};		//***	23
		ADC1_regFrame[39]	<=	{ZERO, ADC1_NE_regFrame[1]};		//***	24
		ADC1_regFrame[38]	<=	{ZERO, ADC1_NE_regFrame[0]};		//***	25
		//***
		//*** Bytes 1,2,3 / ADC B / Channels 0 & 1
		//***
		ADC1_regFrame[37]	<=	{ZERO, ADC2_NE_regFrame[23]};		//***	26
		ADC1_regFrame[36]	<=	{ZERO, ADC2_NE_regFrame[22]};		//***	27
		ADC1_regFrame[35]	<=	{ZERO, ADC2_NE_regFrame[21]};		//***	28
		//***
		//*** Bytes 4,5,6 / ADC B / Channels 2 & 3
		//***
		ADC1_regFrame[34]	<=	{ZERO, ADC2_NE_regFrame[20]};		//***	29
		ADC1_regFrame[33]	<=	{ZERO, ADC2_NE_regFrame[19]};		//***	30
		ADC1_regFrame[32]	<=	{ZERO, ADC2_NE_regFrame[18]};		//***	31
		//***
		//*** Bytes 7,8,9 / ADC B / Channels 4 & 5
		//***
		ADC1_regFrame[31]	<=	{ZERO, ADC2_NE_regFrame[17]};		//***	32
		ADC1_regFrame[30]	<=	{ZERO, ADC2_NE_regFrame[16]};		//***	33
		ADC1_regFrame[29]	<=	{ZERO, ADC2_NE_regFrame[15]};		//***	34
		//***
		//*** Bytes 10,11,12 / ADC B / Channels 6 & 7
		//***
		ADC1_regFrame[28]	<=	{ZERO, ADC2_NE_regFrame[14]};		//***	35
		ADC1_regFrame[27]	<=	{ZERO, ADC2_NE_regFrame[13]};		//***	36
		ADC1_regFrame[26]	<=	{ZERO, ADC2_NE_regFrame[12]};		//***	37
		//***
		//*** Bytes 13,14,15 / ADC B / Channels 8 & 9
		//***
		ADC1_regFrame[25]	<=	{ZERO, ADC2_NE_regFrame[11]};		//***	38
		ADC1_regFrame[24]	<=	{ZERO, ADC2_NE_regFrame[10]};		//***	39
		ADC1_regFrame[23]	<=	{ZERO, ADC2_NE_regFrame[9]};		//***	40
		//***
		//*** Bytes 16,17,18 / ADC B / Channels 10 & 11
		//***
		ADC1_regFrame[22]	<=	{ZERO, ADC2_NE_regFrame[8]};		//***	41
		ADC1_regFrame[21]	<=	{ZERO, ADC2_NE_regFrame[7]};		//***	42
		ADC1_regFrame[20]	<=	{ZERO, ADC2_NE_regFrame[6]};		//***	43
		//***
		//*** Bytes 19,20,21 / ADC B / Channels 12 & 13
		//***
		ADC1_regFrame[19]	<=	{ZERO, ADC2_NE_regFrame[5]};		//***	44
		ADC1_regFrame[18]	<=	{ZERO, ADC2_NE_regFrame[4]};		//***	45
		ADC1_regFrame[17]	<=	{ZERO, ADC2_NE_regFrame[3]};		//***	46
		//***
		//*** Bytes 22,23,24 / ADC B / Channels 14 & 15
		//***
		ADC1_regFrame[16]	<=	{ZERO, ADC2_NE_regFrame[2]};		//***	47
		ADC1_regFrame[15]	<=	{ZERO, ADC2_NE_regFrame[1]};		//***	48
		ADC1_regFrame[14]	<=	{ZERO, ADC2_NE_regFrame[0]};		//***	49
		//***
		//*** Checksum Initialization
		//***
		ADC1_regFrame[13]	<=	{ZERO, ADC1_NE_regFrame[30]};		//***	50
		ADC1_regFrame[12]	<=	{ZERO, ADC2_NE_regFrame[30]};		//***	51
		//***
		//*** Trailer
		//***
		ADC1_regFrame[11]	<=	{ONE, K_28_1};									//***	52
		ADC1_regFrame[10]	<=	{ONE, K_28_1};									//***	53
		ADC1_regFrame[9]	<=	{ONE, K_28_5};									//***	54
		ADC1_regFrame[8]	<=	{ONE, K_28_5};									//***	55
		ADC1_regFrame[7]	<=	{ONE, K_28_5};									//***	56
		ADC1_regFrame[6]	<=	{ONE, K_28_5};									//***	57
		ADC1_regFrame[5]	<=	{ONE, K_28_1};									//***	58
		ADC1_regFrame[4]	<=	{ONE, K_28_1};									//***	59
		ADC1_regFrame[3]	<=	{ONE, K_28_1};									//***	60
		ADC1_regFrame[2]	<=	{ONE, K_28_1};									//***	61
		ADC1_regFrame[1]	<=	{ONE, K_28_1};									//***	62
		ADC1_regFrame[0]	<=	{ONE, K_28_1};									//***	63
		//***
		//*******************************************************
		//*** ADC2_regFrame
		//*******************************************************
		//***
		//*** Header
		//***
		ADC2_regFrame[63]	<=	{ONE, K_28_2};									//***	0
		ADC2_regFrame[62]	<=	{ZERO, timeStamp_NE};							//***	1
		//***
		//*** Bytes 1,2,3 / ADC A / Channels 0 & 1
		//***
		ADC2_regFrame[61]	<=	{ZERO, ADC3_NE_regFrame[23]};		//***	2
		ADC2_regFrame[60]	<=	{ZERO, ADC3_NE_regFrame[22]};		//***	3
		ADC2_regFrame[59]	<=	{ZERO, ADC3_NE_regFrame[21]};		//***	4
		//***
		//*** Bytes 4,5,6 / ADC A / Channels 2 & 3
		//***
		ADC2_regFrame[58]	<=	{ZERO, ADC3_NE_regFrame[20]};		//***	5
		ADC2_regFrame[57]	<=	{ZERO, ADC3_NE_regFrame[19]};		//***	6
		ADC2_regFrame[56]	<=	{ZERO, ADC3_NE_regFrame[18]};		//***	7
		//***
		//*** Bytes 7,8,9 / ADC A / Channels 4 & 5
		//***
		ADC2_regFrame[55]	<=	{ZERO, ADC3_NE_regFrame[17]};		//***	8
		ADC2_regFrame[54]	<=	{ZERO, ADC3_NE_regFrame[16]};		//***	9
		ADC2_regFrame[53]	<=	{ZERO, ADC3_NE_regFrame[15]};		//***	10
		//***
		//*** Bytes 10,11,12 / ADC A / Channels 6 & 7
		//***
		ADC2_regFrame[52]	<=	{ZERO, ADC3_NE_regFrame[14]};		//***	11
		ADC2_regFrame[51]	<=	{ZERO, ADC3_NE_regFrame[13]};		//***	12
		ADC2_regFrame[50]	<=	{ZERO, ADC3_NE_regFrame[12]};		//***	13
		//***
		//*** Bytes 13,14,15 / ADC A / Channels 8 & 9
		//***
		ADC2_regFrame[49]	<=	{ZERO, ADC3_NE_regFrame[11]};		//***	14
		ADC2_regFrame[48]	<=	{ZERO, ADC3_NE_regFrame[10]};		//***	15
		ADC2_regFrame[47]	<=	{ZERO, ADC3_NE_regFrame[9]};		//***	16
		//***
		//*** Bytes 16,17,18 / ADC A / Channels 10 & 11
		//***
		ADC2_regFrame[46]	<=	{ZERO, ADC3_NE_regFrame[8]};		//***	17
		ADC2_regFrame[45]	<=	{ZERO, ADC3_NE_regFrame[7]};		//***	18
		ADC2_regFrame[44]	<=	{ZERO, ADC3_NE_regFrame[6]};		//***	19
		//***
		//*** Bytes 19,20,21 / ADC A / Channels 12 & 13
		//***
		ADC2_regFrame[43]	<=	{ZERO, ADC3_NE_regFrame[5]};		//***	20
		ADC2_regFrame[42]	<=	{ZERO, ADC3_NE_regFrame[4]};		//***	21
		ADC2_regFrame[41]	<=	{ZERO, ADC3_NE_regFrame[3]};		//***	22
		//***
		//*** Bytes 22,23,24 / ADC A / Channels 14 & 15
		//***
		ADC2_regFrame[40]	<=	{ZERO, ADC3_NE_regFrame[2]};		//***	23
		ADC2_regFrame[39]	<=	{ZERO, ADC3_NE_regFrame[1]};		//***	24
		ADC2_regFrame[38]	<=	{ZERO, ADC3_NE_regFrame[0]};		//***	25
		//***
		//*** Bytes 1,2,3 / ADC B / Channels 0 & 1
		//***
		ADC2_regFrame[37]	<=	{ZERO, ADC4_NE_regFrame[23]};		//***	26
		ADC2_regFrame[36]	<=	{ZERO, ADC4_NE_regFrame[22]};		//***	27
		ADC2_regFrame[35]	<=	{ZERO, ADC4_NE_regFrame[21]};		//***	28
		//***
		//*** Bytes 4,5,6 / ADC B / Channels 2 & 3
		//***
		ADC2_regFrame[34]	<=	{ZERO, ADC4_NE_regFrame[20]};		//***	29
		ADC2_regFrame[33]	<=	{ZERO, ADC4_NE_regFrame[19]};		//***	30
		ADC2_regFrame[32]	<=	{ZERO, ADC4_NE_regFrame[18]};		//***	31
		//***
		//*** Bytes 7,8,9 / ADC B / Channels 4 & 5
		//***
		ADC2_regFrame[31]	<=	{ZERO, ADC4_NE_regFrame[17]};		//***	32
		ADC2_regFrame[30]	<=	{ZERO, ADC4_NE_regFrame[16]};		//***	33
		ADC2_regFrame[29]	<=	{ZERO, ADC4_NE_regFrame[15]};		//***	34
		//***
		//*** Bytes 10,11,12 / ADC B / Channels 6 & 7
		//***
		ADC2_regFrame[28]	<=	{ZERO, ADC4_NE_regFrame[14]};		//***	35
		ADC2_regFrame[27]	<=	{ZERO, ADC4_NE_regFrame[13]};		//***	36
		ADC2_regFrame[26]	<=	{ZERO, ADC4_NE_regFrame[12]};		//***	37
		//***
		//*** Bytes 13,14,15 / ADC B / Channels 8 & 9
		//***
		ADC2_regFrame[25]	<=	{ZERO, ADC4_NE_regFrame[11]};		//***	38
		ADC2_regFrame[24]	<=	{ZERO, ADC4_NE_regFrame[10]};		//***	39
		ADC2_regFrame[23]	<=	{ZERO, ADC4_NE_regFrame[9]};		//***	40
		//***
		//*** Bytes 16,17,18 / ADC B / Channels 10 & 11
		//***
		ADC2_regFrame[22]	<=	{ZERO, ADC4_NE_regFrame[8]};		//***	41
		ADC2_regFrame[21]	<=	{ZERO, ADC4_NE_regFrame[7]};		//***	42
		ADC2_regFrame[20]	<=	{ZERO, ADC4_NE_regFrame[6]};		//***	43
		//***
		//*** Bytes 19,20,21 / ADC B / Channels 12 & 13
		//***
		ADC2_regFrame[19]	<=	{ZERO, ADC4_NE_regFrame[5]};		//***	44
		ADC2_regFrame[18]	<=	{ZERO, ADC4_NE_regFrame[4]};		//***	45
		ADC2_regFrame[17]	<=	{ZERO, ADC4_NE_regFrame[3]};		//***	46
		//***
		//*** Bytes 22,23,24 / ADC B / Channels 14 & 15
		//***
		ADC2_regFrame[16]	<=	{ZERO, ADC4_NE_regFrame[2]};		//***	47
		ADC2_regFrame[15]	<=	{ZERO, ADC4_NE_regFrame[1]};		//***	48
		ADC2_regFrame[14]	<=	{ZERO, ADC4_NE_regFrame[0]};		//***	49
		//***
		//*** Checksum Initialization
		//***
		ADC2_regFrame[13]	<=	{ZERO, ADC3_NE_regFrame[30]};		//***	50
		ADC2_regFrame[12]	<=	{ZERO, ADC4_NE_regFrame[30]};		//***	51
		//***
		//*** Trailer
		//***
		ADC2_regFrame[11]	<=	{ONE, K_28_1};									//***	52
		ADC2_regFrame[10]	<=	{ONE, K_28_1};									//***	53
		ADC2_regFrame[9]	<=	{ONE, K_28_5};									//***	54
		ADC2_regFrame[8]	<=	{ONE, K_28_5};									//***	55
		ADC2_regFrame[7]	<=	{ONE, K_28_5};									//***	56
		ADC2_regFrame[6]	<=	{ONE, K_28_5};									//***	57
		ADC2_regFrame[5]	<=	{ONE, K_28_1};									//***	58
		ADC2_regFrame[4]	<=	{ONE, K_28_1};									//***	59
		ADC2_regFrame[3]	<=	{ONE, K_28_1};									//***	60
		ADC2_regFrame[2]	<=	{ONE, K_28_1};									//***	61
		ADC2_regFrame[1]	<=	{ONE, K_28_1};									//***	62
		ADC2_regFrame[0]	<=	{ONE, K_28_1};									//***	63
	end  //***	if(frameConfigure == FRAME12)
	//***
	//*****************************************************************
	//*****************************************************************
	//*** if(frameConfigure == FRAME14)
	//*****************************************************************
	//*****************************************************************
	//***
	else if(frameConfigure == FRAME14)
	begin
		//*******************************************************
		//*** ADC1_regFrame
		//*******************************************************
		//***
		//*** Header
		//***
		ADC1_regFrame[63]	<=	{ONE, K_28_3};									//***	0
		ADC1_regFrame[62]	<=	{ZERO, timeStamp_NE};							//***	1
		//***
		//*** Bytes 1,2,3,4,5,6,7 / ADC A / Channels 0, 1, 2 & 3
		//***
		ADC1_regFrame[61]	<=	{ZERO, ADC1_NE_regFrame[27]};		//***	2
		ADC1_regFrame[60]	<=	{ZERO, ADC1_NE_regFrame[26]};		//***	3
		ADC1_regFrame[59]	<=	{ZERO, ADC1_NE_regFrame[25]};		//***	4
		ADC1_regFrame[58]	<=	{ZERO, ADC1_NE_regFrame[24]};		//***	5
		ADC1_regFrame[57]	<=	{ZERO, ADC1_NE_regFrame[23]};		//***	6
		ADC1_regFrame[56]	<=	{ZERO, ADC1_NE_regFrame[22]};		//***	7
		ADC1_regFrame[55]	<=	{ZERO, ADC1_NE_regFrame[21]};		//***	8
		//***
		//*** Bytes 8,9,10,11,12,13,14 / ADC A / Channels 4, 5, 6 & 7
		//***
		ADC1_regFrame[54]	<=	{ZERO, ADC1_NE_regFrame[20]};		//***	9
		ADC1_regFrame[53]	<=	{ZERO, ADC1_NE_regFrame[19]};		//***	10
		ADC1_regFrame[52]	<=	{ZERO, ADC1_NE_regFrame[18]};		//***	11
		ADC1_regFrame[51]	<=	{ZERO, ADC1_NE_regFrame[17]};		//***	12
		ADC1_regFrame[50]	<=	{ZERO, ADC1_NE_regFrame[16]};		//***	13
		ADC1_regFrame[49]	<=	{ZERO, ADC1_NE_regFrame[15]};		//***	14
		ADC1_regFrame[48]	<=	{ZERO, ADC1_NE_regFrame[14]};		//***	15
		//***
		//*** Bytes 15,16,17,18,19,20,21 / ADC A / Channels 8, 9, 10 & 11
		//***
		ADC1_regFrame[47]	<=	{ZERO, ADC1_NE_regFrame[13]};		//***	16
		ADC1_regFrame[46]	<=	{ZERO, ADC1_NE_regFrame[12]};		//***	17
		ADC1_regFrame[45]	<=	{ZERO, ADC1_NE_regFrame[11]};		//***	18
		ADC1_regFrame[44]	<=	{ZERO, ADC1_NE_regFrame[10]};		//***	19
		ADC1_regFrame[43]	<=	{ZERO, ADC1_NE_regFrame[9]};		//***	20
		ADC1_regFrame[42]	<=	{ZERO, ADC1_NE_regFrame[8]};		//***	21
		ADC1_regFrame[41]	<=	{ZERO, ADC1_NE_regFrame[7]};		//***	22
		//***
		//*** Bytes 22,23,24,25,26,27,28 / ADC A / Channels 12, 13, 14 & 15
		//***
		ADC1_regFrame[40]	<=	{ZERO, ADC1_NE_regFrame[6]};		//***	23
		ADC1_regFrame[39]	<=	{ZERO, ADC1_NE_regFrame[5]};		//***	24
		ADC1_regFrame[38]	<=	{ZERO, ADC1_NE_regFrame[4]};		//***	25
		ADC1_regFrame[37]	<=	{ZERO, ADC1_NE_regFrame[3]};		//***	26
		ADC1_regFrame[36]	<=	{ZERO, ADC1_NE_regFrame[2]};		//***	27
		ADC1_regFrame[35]	<=	{ZERO, ADC1_NE_regFrame[1]};		//***	28
		ADC1_regFrame[34]	<=	{ZERO, ADC1_NE_regFrame[0]};		//***	29
		//***
		//*** Bytes 1,2,3,4,5,6,7 / ADC B / Channels 0, 1, 2 & 3
		//***
		ADC1_regFrame[33]	<=	{ZERO, ADC2_NE_regFrame[27]};		//***	30
		ADC1_regFrame[32]	<=	{ZERO, ADC2_NE_regFrame[26]};		//***	31
		ADC1_regFrame[31]	<=	{ZERO, ADC2_NE_regFrame[25]};		//***	32
		ADC1_regFrame[30]	<=	{ZERO, ADC2_NE_regFrame[24]};		//***	33
		ADC1_regFrame[29]	<=	{ZERO, ADC2_NE_regFrame[23]};		//***	34
		ADC1_regFrame[28]	<=	{ZERO, ADC2_NE_regFrame[22]};		//***	35
		ADC1_regFrame[27]	<=	{ZERO, ADC2_NE_regFrame[21]};		//***	36
		//***
		//*** Bytes 8,9,10,11,12,13,14 / ADC B / Channels 4, 5, 6 & 7
		//***
		ADC1_regFrame[26]	<=	{ZERO, ADC2_NE_regFrame[20]};		//***	37
		ADC1_regFrame[25]	<=	{ZERO, ADC2_NE_regFrame[19]};		//***	38
		ADC1_regFrame[24]	<=	{ZERO, ADC2_NE_regFrame[18]};		//***	39
		ADC1_regFrame[23]	<=	{ZERO, ADC2_NE_regFrame[17]};		//***	40
		ADC1_regFrame[22]	<=	{ZERO, ADC2_NE_regFrame[16]};		//***	41
		ADC1_regFrame[21]	<=	{ZERO, ADC2_NE_regFrame[15]};		//***	42
		ADC1_regFrame[20]	<=	{ZERO, ADC2_NE_regFrame[14]};		//***	43
		//***
		//*** Bytes 15,16,17,18,19,20,21 / ADC B / Channels 8, 9, 10 & 11
		//***
		ADC1_regFrame[19]	<=	{ZERO, ADC2_NE_regFrame[13]};		//***	44
		ADC1_regFrame[18]	<=	{ZERO, ADC2_NE_regFrame[12]};		//***	45
		ADC1_regFrame[17]	<=	{ZERO, ADC2_NE_regFrame[11]};		//***	46
		ADC1_regFrame[16]	<=	{ZERO, ADC2_NE_regFrame[10]};		//***	47
		ADC1_regFrame[15]	<=	{ZERO, ADC2_NE_regFrame[9]};		//***	48
		ADC1_regFrame[14]	<=	{ZERO, ADC2_NE_regFrame[8]};		//***	49
		ADC1_regFrame[13]	<=	{ZERO, ADC2_NE_regFrame[7]};		//***	50
		//***
		//*** Bytes 22,23,24,25,26,27,28 / ADC B / Channels 12, 13, 14 & 15
		//***
		ADC1_regFrame[12]	<=	{ZERO, ADC2_NE_regFrame[6]};		//***	51
		ADC1_regFrame[11]	<=	{ZERO, ADC2_NE_regFrame[5]};		//***	52
		ADC1_regFrame[10]	<=	{ZERO, ADC2_NE_regFrame[4]};		//***	53
		ADC1_regFrame[9]	<=	{ZERO, ADC2_NE_regFrame[3]};		//***	54
		ADC1_regFrame[8]	<=	{ZERO, ADC2_NE_regFrame[2]};		//***	55
		ADC1_regFrame[7]	<=	{ZERO, ADC2_NE_regFrame[1]};		//***	56
		ADC1_regFrame[6]	<=	{ZERO, ADC2_NE_regFrame[0]};		//***	57
		//***
		//*** Checksum Initialization
		//***
		ADC1_regFrame[5]	<=	{ZERO, ADC1_NE_regFrame[30]};		//***	58
		ADC1_regFrame[4]	<=	{ZERO, ADC2_NE_regFrame[30]};		//***	59
		//***
		//*** Trailer
		//***
		ADC1_regFrame[3]	<=	{ONE, K_28_5};									//***	60
		ADC1_regFrame[2]	<=	{ONE, K_28_5};									//***	61
		ADC1_regFrame[1]	<=	{ONE, K_28_5};									//***	62
		ADC1_regFrame[0]	<=	{ONE, K_28_5};									//***	63
		//***
		//*******************************************************
		//*** ADC2_regFrame
		//*******************************************************
		//***
		//*** Header
		//***
		ADC2_regFrame[63]	<=	{ONE, K_28_3};									//***	0
		ADC2_regFrame[62]	<=	{ZERO, timeStamp_NE};							//***	1
		//***
		//*** Bytes 1,2,3,4,5,6,7 / ADC A / Channels 0, 1, 2 & 3
		//***
		ADC2_regFrame[61]	<=	{ZERO, ADC3_NE_regFrame[27]};		//***	2
		ADC2_regFrame[60]	<=	{ZERO, ADC3_NE_regFrame[26]};		//***	3
		ADC2_regFrame[59]	<=	{ZERO, ADC3_NE_regFrame[25]};		//***	4
		ADC2_regFrame[58]	<=	{ZERO, ADC3_NE_regFrame[24]};		//***	5
		ADC2_regFrame[57]	<=	{ZERO, ADC3_NE_regFrame[23]};		//***	6
		ADC2_regFrame[56]	<=	{ZERO, ADC3_NE_regFrame[22]};		//***	7
		ADC2_regFrame[55]	<=	{ZERO, ADC3_NE_regFrame[21]};		//***	8
		//***
		//*** Bytes 8,9,10,11,12,13,14 / ADC A / Channels 4, 5, 6 & 7
		//***
		ADC2_regFrame[54]	<=	{ZERO, ADC3_NE_regFrame[20]};		//***	9
		ADC2_regFrame[53]	<=	{ZERO, ADC3_NE_regFrame[19]};		//***	10
		ADC2_regFrame[52]	<=	{ZERO, ADC3_NE_regFrame[18]};		//***	11
		ADC2_regFrame[51]	<=	{ZERO, ADC3_NE_regFrame[17]};		//***	12
		ADC2_regFrame[50]	<=	{ZERO, ADC3_NE_regFrame[16]};		//***	13
		ADC2_regFrame[49]	<=	{ZERO, ADC3_NE_regFrame[15]};		//***	14
		ADC2_regFrame[48]	<=	{ZERO, ADC3_NE_regFrame[14]};		//***	15
		//***
		//*** Bytes 15,16,17,18,19,20,21 / ADC A / Channels 8, 9, 10 & 11
		//***
		ADC2_regFrame[47]	<=	{ZERO, ADC3_NE_regFrame[13]};		//***	16
		ADC2_regFrame[46]	<=	{ZERO, ADC3_NE_regFrame[12]};		//***	17
		ADC2_regFrame[45]	<=	{ZERO, ADC3_NE_regFrame[11]};		//***	18
		ADC2_regFrame[44]	<=	{ZERO, ADC3_NE_regFrame[10]};		//***	19
		ADC2_regFrame[43]	<=	{ZERO, ADC3_NE_regFrame[9]};			//***	20
		ADC2_regFrame[42]	<=	{ZERO, ADC3_NE_regFrame[8]};			//***	21
		ADC2_regFrame[41]	<=	{ZERO, ADC3_NE_regFrame[7]};			//***	22
		//***
		//*** Bytes 22,23,24,25,26,27,28 / ADC A / Channels 12, 13, 14 & 15
		//***
		ADC2_regFrame[40]	<=	{ZERO, ADC3_NE_regFrame[6]};			//***	23
		ADC2_regFrame[39]	<=	{ZERO, ADC3_NE_regFrame[5]};			//***	24
		ADC2_regFrame[38]	<=	{ZERO, ADC3_NE_regFrame[4]};			//***	25
		ADC2_regFrame[37]	<=	{ZERO, ADC3_NE_regFrame[3]};			//***	26
		ADC2_regFrame[36]	<=	{ZERO, ADC3_NE_regFrame[2]};			//***	27
		ADC2_regFrame[35]	<=	{ZERO, ADC3_NE_regFrame[1]};			//***	28
		ADC2_regFrame[34]	<=	{ZERO, ADC3_NE_regFrame[0]};			//***	29
		//***
		//*** Bytes 1,2,3,4,5,6,7 / ADC B / Channels 0, 1, 2 & 3
		//***
		ADC2_regFrame[33]	<=	{ZERO, ADC4_NE_regFrame[27]};		//***	30
		ADC2_regFrame[32]	<=	{ZERO, ADC4_NE_regFrame[26]};		//***	31
		ADC2_regFrame[31]	<=	{ZERO, ADC4_NE_regFrame[25]};		//***	32
		ADC2_regFrame[30]	<=	{ZERO, ADC4_NE_regFrame[24]};		//***	33
		ADC2_regFrame[29]	<=	{ZERO, ADC4_NE_regFrame[23]};		//***	34
		ADC2_regFrame[28]	<=	{ZERO, ADC4_NE_regFrame[22]};		//***	35
		ADC2_regFrame[27]	<=	{ZERO, ADC4_NE_regFrame[21]};		//***	36
		//***
		//*** Bytes 8,9,10,11,12,13,14 / ADC B / Channels 4, 5, 6 & 7
		//***
		ADC2_regFrame[26]	<=	{ZERO, ADC4_NE_regFrame[20]};		//***	37
		ADC2_regFrame[25]	<=	{ZERO, ADC4_NE_regFrame[19]};		//***	38
		ADC2_regFrame[24]	<=	{ZERO, ADC4_NE_regFrame[18]};		//***	39
		ADC2_regFrame[23]	<=	{ZERO, ADC4_NE_regFrame[17]};		//***	40
		ADC2_regFrame[22]	<=	{ZERO, ADC4_NE_regFrame[16]};		//***	41
		ADC2_regFrame[21]	<=	{ZERO, ADC4_NE_regFrame[15]};		//***	42
		ADC2_regFrame[20]	<=	{ZERO, ADC4_NE_regFrame[14]};		//***	43
		//***
		//*** Bytes 15,16,17,18,19,20,21 / ADC B / Channels 8, 9, 10 & 11
		//***
		ADC2_regFrame[19]	<=	{ZERO, ADC4_NE_regFrame[13]};		//***	44
		ADC2_regFrame[18]	<=	{ZERO, ADC4_NE_regFrame[12]};		//***	45
		ADC2_regFrame[17]	<=	{ZERO, ADC4_NE_regFrame[11]};		//***	46
		ADC2_regFrame[16]	<=	{ZERO, ADC4_NE_regFrame[10]};		//***	47
		ADC2_regFrame[15]	<=	{ZERO, ADC4_NE_regFrame[9]};			//***	48
		ADC2_regFrame[14]	<=	{ZERO, ADC4_NE_regFrame[8]};			//***	49
		ADC2_regFrame[13]	<=	{ZERO, ADC4_NE_regFrame[7]};			//***	50
		//***
		//*** Bytes 22,23,24,25,26,27,28 / ADC B / Channels 12, 13, 14 & 15
		//***
		ADC2_regFrame[12]	<=	{ZERO, ADC4_NE_regFrame[6]};			//***	51
		ADC2_regFrame[11]	<=	{ZERO, ADC4_NE_regFrame[5]};			//***	52
		ADC2_regFrame[10]	<=	{ZERO, ADC4_NE_regFrame[4]};			//***	53
		ADC2_regFrame[9]	<=	{ZERO, ADC4_NE_regFrame[3]};			//***	54
		ADC2_regFrame[8]	<=	{ZERO, ADC4_NE_regFrame[2]};			//***	55
		ADC2_regFrame[7]	<=	{ZERO, ADC4_NE_regFrame[1]};			//***	56
		ADC2_regFrame[6]	<=	{ZERO, ADC4_NE_regFrame[0]};			//***	57
		//***
		//*** Checksum Initialization
		//***
		ADC2_regFrame[5]	<=	{ZERO, ADC3_NE_regFrame[30]};		//***	58
		ADC2_regFrame[4]	<=	{ZERO, ADC4_NE_regFrame[30]};		//***	59
		//***
		//*** Trailer
		//***
		ADC2_regFrame[3]	<=	{ONE, K_28_5};									//***	60
		ADC2_regFrame[2]	<=	{ONE, K_28_5};									//***	61
		ADC2_regFrame[1]	<=	{ONE, K_28_5};									//***	62
		ADC2_regFrame[0]	<=	{ONE, K_28_5};									//***	63
	end  //***	if(frameConfigure == FRAME14)
	//***
	//*****************************************************************
	//*****************************************************************
	//*** if(frameConfigure == FRAME15)
	//*****************************************************************
	//*****************************************************************
	//***
	else
	begin
		//*******************************************************
		//*** ADC1_regFrame
		//*******************************************************
		//***
		//*** Header
		//***
		ADC1_regFrame[63]	<=	{ONE, K_28_6};									//***	0
		ADC1_regFrame[62]	<=	{ZERO, timeStamp_NE};							//***	1
		//***
		//*** Bytes 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15 / ADC A / Channels 0, 1, 2, 3, 4, 5, 6 & 7
		//***
		ADC1_regFrame[61]	<=	{ZERO, ADC1_NE_regFrame[29]};		//***	2
		ADC1_regFrame[60]	<=	{ZERO, ADC1_NE_regFrame[28]};		//***	3
		ADC1_regFrame[59]	<=	{ZERO, ADC1_NE_regFrame[27]};		//***	4
		ADC1_regFrame[58]	<=	{ZERO, ADC1_NE_regFrame[26]};		//***	5
		ADC1_regFrame[57]	<=	{ZERO, ADC1_NE_regFrame[25]};		//***	6
		ADC1_regFrame[56]	<=	{ZERO, ADC1_NE_regFrame[24]};		//***	7
		ADC1_regFrame[55]	<=	{ZERO, ADC1_NE_regFrame[23]};		//***	8
		ADC1_regFrame[54]	<=	{ZERO, ADC1_NE_regFrame[22]};		//***	9
		ADC1_regFrame[53]	<=	{ZERO, ADC1_NE_regFrame[21]};		//***	10
		ADC1_regFrame[52]	<=	{ZERO, ADC1_NE_regFrame[20]};		//***	11
		ADC1_regFrame[51]	<=	{ZERO, ADC1_NE_regFrame[19]};		//***	12
		ADC1_regFrame[50]	<=	{ZERO, ADC1_NE_regFrame[18]};		//***	13
		ADC1_regFrame[49]	<=	{ZERO, ADC1_NE_regFrame[17]};		//***	14
		ADC1_regFrame[48]	<=	{ZERO, ADC1_NE_regFrame[16]};		//***	15
		ADC1_regFrame[47]	<=	{ZERO, ADC1_NE_regFrame[15]};		//***	16
		//***
		//*** Bytes 16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 / ADC A / Channels 8, 9, 10, 11, 12, 13, 14 & 15
		//***
		ADC1_regFrame[46]	<=	{ZERO, ADC1_NE_regFrame[14]};		//***	17
		ADC1_regFrame[45]	<=	{ZERO, ADC1_NE_regFrame[13]};		//***	18
		ADC1_regFrame[44]	<=	{ZERO, ADC1_NE_regFrame[12]};		//***	19
		ADC1_regFrame[43]	<=	{ZERO, ADC1_NE_regFrame[11]};		//***	20
		ADC1_regFrame[42]	<=	{ZERO, ADC1_NE_regFrame[10]};		//***	21
		ADC1_regFrame[41]	<=	{ZERO, ADC1_NE_regFrame[9]};		//***	22
		ADC1_regFrame[40]	<=	{ZERO, ADC1_NE_regFrame[8]};		//***	23
		ADC1_regFrame[39]	<=	{ZERO, ADC1_NE_regFrame[7]};		//***	24
		ADC1_regFrame[38]	<=	{ZERO, ADC1_NE_regFrame[6]};		//***	25
		ADC1_regFrame[37]	<=	{ZERO, ADC1_NE_regFrame[5]};		//***	26
		ADC1_regFrame[36]	<=	{ZERO, ADC1_NE_regFrame[4]};		//***	27
		ADC1_regFrame[35]	<=	{ZERO, ADC1_NE_regFrame[3]};		//***	28
		ADC1_regFrame[34]	<=	{ZERO, ADC1_NE_regFrame[2]};		//***	29
		ADC1_regFrame[33]	<=	{ZERO, ADC1_NE_regFrame[1]};		//***	30
		ADC1_regFrame[32]	<=	{ZERO, ADC1_NE_regFrame[0]};		//***	31
		//***
		//*** Bytes 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15 / ADC B / Channels 0, 1, 2, 3, 4, 5, 6 & 7
		//***
		ADC1_regFrame[31]	<=	{ZERO, ADC2_NE_regFrame[29]};		//***	32
		ADC1_regFrame[30]	<=	{ZERO, ADC2_NE_regFrame[28]};		//***	33
		ADC1_regFrame[29]	<=	{ZERO, ADC2_NE_regFrame[27]};		//***	34
		ADC1_regFrame[28]	<=	{ZERO, ADC2_NE_regFrame[26]};		//***	35
		ADC1_regFrame[27]	<=	{ZERO, ADC2_NE_regFrame[25]};		//***	36
		ADC1_regFrame[26]	<=	{ZERO, ADC2_NE_regFrame[24]};		//***	37
		ADC1_regFrame[25]	<=	{ZERO, ADC2_NE_regFrame[23]};		//***	38
		ADC1_regFrame[24]	<=	{ZERO, ADC2_NE_regFrame[22]};		//***	39
		ADC1_regFrame[23]	<=	{ZERO, ADC2_NE_regFrame[21]};		//***	40
		ADC1_regFrame[22]	<=	{ZERO, ADC2_NE_regFrame[20]};		//***	41
		ADC1_regFrame[21]	<=	{ZERO, ADC2_NE_regFrame[19]};		//***	42
		ADC1_regFrame[20]	<=	{ZERO, ADC2_NE_regFrame[18]};		//***	43
		ADC1_regFrame[19]	<=	{ZERO, ADC2_NE_regFrame[17]};		//***	44
		ADC1_regFrame[18]	<=	{ZERO, ADC2_NE_regFrame[16]};		//***	45
		ADC1_regFrame[17]	<=	{ZERO, ADC2_NE_regFrame[15]};		//***	46
		//***
		//*** Bytes 16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 / ADC B / Channels 8, 9, 10, 11, 12, 13, 14 & 15
		//***
		ADC1_regFrame[16]	<=	{ZERO, ADC2_NE_regFrame[14]};		//***	47
		ADC1_regFrame[15]	<=	{ZERO, ADC2_NE_regFrame[13]};		//***	48
		ADC1_regFrame[14]	<=	{ZERO, ADC2_NE_regFrame[12]};		//***	49
		ADC1_regFrame[13]	<=	{ZERO, ADC2_NE_regFrame[11]};		//***	50
		ADC1_regFrame[12]	<=	{ZERO, ADC2_NE_regFrame[10]};		//***	51
		ADC1_regFrame[11]	<=	{ZERO, ADC2_NE_regFrame[9]};		//***	52
		ADC1_regFrame[10]	<=	{ZERO, ADC2_NE_regFrame[8]};		//***	53
		ADC1_regFrame[9]	<=	{ZERO, ADC2_NE_regFrame[7]};		//***	54
		ADC1_regFrame[8]	<=	{ZERO, ADC2_NE_regFrame[6]};		//***	55
		ADC1_regFrame[7]	<=	{ZERO, ADC2_NE_regFrame[5]};		//***	56
		ADC1_regFrame[6]	<=	{ZERO, ADC2_NE_regFrame[4]};		//***	57
		ADC1_regFrame[5]	<=	{ZERO, ADC2_NE_regFrame[3]};		//***	58
		ADC1_regFrame[4]	<=	{ZERO, ADC2_NE_regFrame[2]};		//***	59
		ADC1_regFrame[3]	<=	{ZERO, ADC2_NE_regFrame[1]};		//***	60
		ADC1_regFrame[2]	<=	{ZERO, ADC2_NE_regFrame[0]};		//***	61

		//***
		//*** Checksum Initialization
		//***
		ADC1_regFrame[1]	<=	{ONE, K_28_1};									//***	62
		ADC1_regFrame[0]	<=	{ONE, K_28_1};									//***	63
		//***
		//*** No Trailer for FRAME-15
		//***
		//*******************************************************
		//*** ADC2_regFrame
		//*******************************************************
		//***
		//*** Header
		//***
		ADC2_regFrame[63]	<=	{ONE, K_28_6};									//***	0
		ADC2_regFrame[62]	<=	{ZERO, timeStamp_NE};							//***	1
		//***
		//*** Bytes 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15 / ADC A / Channels 0, 1, 2, 3, 4, 5, 6 & 7
		//***
		ADC2_regFrame[61]	<=	{ZERO, ADC3_NE_regFrame[29]};		//***	2
		ADC2_regFrame[60]	<=	{ZERO, ADC3_NE_regFrame[28]};		//***	3
		ADC2_regFrame[59]	<=	{ZERO, ADC3_NE_regFrame[27]};		//***	4
		ADC2_regFrame[58]	<=	{ZERO, ADC3_NE_regFrame[26]};		//***	5
		ADC2_regFrame[57]	<=	{ZERO, ADC3_NE_regFrame[25]};		//***	6
		ADC2_regFrame[56]	<=	{ZERO, ADC3_NE_regFrame[24]};		//***	7
		ADC2_regFrame[55]	<=	{ZERO, ADC3_NE_regFrame[23]};		//***	8
		ADC2_regFrame[54]	<=	{ZERO, ADC3_NE_regFrame[22]};		//***	9
		ADC2_regFrame[53]	<=	{ZERO, ADC3_NE_regFrame[21]};		//***	10
		ADC2_regFrame[52]	<=	{ZERO, ADC3_NE_regFrame[20]};		//***	11
		ADC2_regFrame[51]	<=	{ZERO, ADC3_NE_regFrame[19]};		//***	12
		ADC2_regFrame[50]	<=	{ZERO, ADC3_NE_regFrame[18]};		//***	13
		ADC2_regFrame[49]	<=	{ZERO, ADC3_NE_regFrame[17]};		//***	14
		ADC2_regFrame[48]	<=	{ZERO, ADC3_NE_regFrame[16]};		//***	15
		ADC2_regFrame[47]	<=	{ZERO, ADC3_NE_regFrame[15]};		//***	16
		//***
		//*** Bytes 16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 / ADC A / Channels 8, 9, 10, 11, 12, 13, 14 & 15
		//***
		ADC2_regFrame[46]	<=	{ZERO, ADC3_NE_regFrame[14]};		//***	17
		ADC2_regFrame[45]	<=	{ZERO, ADC3_NE_regFrame[13]};		//***	18
		ADC2_regFrame[44]	<=	{ZERO, ADC3_NE_regFrame[12]};		//***	19
		ADC2_regFrame[43]	<=	{ZERO, ADC3_NE_regFrame[11]};		//***	20
		ADC2_regFrame[42]	<=	{ZERO, ADC3_NE_regFrame[10]};		//***	21
		ADC2_regFrame[41]	<=	{ZERO, ADC3_NE_regFrame[9]};		//***	22
		ADC2_regFrame[40]	<=	{ZERO, ADC3_NE_regFrame[8]};		//***	23
		ADC2_regFrame[39]	<=	{ZERO, ADC3_NE_regFrame[7]};		//***	24
		ADC2_regFrame[38]	<=	{ZERO, ADC3_NE_regFrame[6]};		//***	25
		ADC2_regFrame[37]	<=	{ZERO, ADC3_NE_regFrame[5]};		//***	26
		ADC2_regFrame[36]	<=	{ZERO, ADC3_NE_regFrame[4]};		//***	27
		ADC2_regFrame[35]	<=	{ZERO, ADC3_NE_regFrame[3]};		//***	28
		ADC2_regFrame[34]	<=	{ZERO, ADC3_NE_regFrame[2]};		//***	29
		ADC2_regFrame[33]	<=	{ZERO, ADC3_NE_regFrame[1]};		//***	30
		ADC2_regFrame[32]	<=	{ZERO, ADC3_NE_regFrame[0]};		//***	31
		//***
		//*** Bytes 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15 / ADC B / Channels 0, 1, 2, 3, 4, 5, 6 & 7
		//***
		ADC2_regFrame[31]	<=	{ZERO, ADC4_NE_regFrame[29]};		//***	32
		ADC2_regFrame[30]	<=	{ZERO, ADC4_NE_regFrame[28]};		//***	33
		ADC2_regFrame[29]	<=	{ZERO, ADC4_NE_regFrame[27]};		//***	34
		ADC2_regFrame[28]	<=	{ZERO, ADC4_NE_regFrame[26]};		//***	35
		ADC2_regFrame[27]	<=	{ZERO, ADC4_NE_regFrame[25]};		//***	36
		ADC2_regFrame[26]	<=	{ZERO, ADC4_NE_regFrame[24]};		//***	37
		ADC2_regFrame[25]	<=	{ZERO, ADC4_NE_regFrame[23]};		//***	38
		ADC2_regFrame[24]	<=	{ZERO, ADC4_NE_regFrame[22]};		//***	39
		ADC2_regFrame[23]	<=	{ZERO, ADC4_NE_regFrame[21]};		//***	40
		ADC2_regFrame[22]	<=	{ZERO, ADC4_NE_regFrame[20]};		//***	41
		ADC2_regFrame[21]	<=	{ZERO, ADC4_NE_regFrame[19]};		//***	42
		ADC2_regFrame[20]	<=	{ZERO, ADC4_NE_regFrame[18]};		//***	43
		ADC2_regFrame[19]	<=	{ZERO, ADC4_NE_regFrame[17]};		//***	44
		ADC2_regFrame[18]	<=	{ZERO, ADC4_NE_regFrame[16]};		//***	45
		ADC2_regFrame[17]	<=	{ZERO, ADC4_NE_regFrame[15]};		//***	46
		//***
		//*** Bytes 16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 / ADC B / Channels 8, 9, 10, 11, 12, 13, 14 & 15
		//***
		ADC2_regFrame[16]	<=	{ZERO, ADC4_NE_regFrame[14]};		//***	47
		ADC2_regFrame[15]	<=	{ZERO, ADC4_NE_regFrame[13]};		//***	48
		ADC2_regFrame[14]	<=	{ZERO, ADC4_NE_regFrame[12]};		//***	49
		ADC2_regFrame[13]	<=	{ZERO, ADC4_NE_regFrame[11]};		//***	50
		ADC2_regFrame[12]	<=	{ZERO, ADC4_NE_regFrame[10]};		//***	51
		ADC2_regFrame[11]	<=	{ZERO, ADC4_NE_regFrame[9]};		//***	52
		ADC2_regFrame[10]	<=	{ZERO, ADC4_NE_regFrame[8]};		//***	53
		ADC2_regFrame[9]	<=	{ZERO, ADC4_NE_regFrame[7]};		//***	54
		ADC2_regFrame[8]	<=	{ZERO, ADC4_NE_regFrame[6]};		//***	55
		ADC2_regFrame[7]	<=	{ZERO, ADC4_NE_regFrame[5]};		//***	56
		ADC2_regFrame[6]	<=	{ZERO, ADC4_NE_regFrame[4]};		//***	57
		ADC2_regFrame[5]	<=	{ZERO, ADC4_NE_regFrame[3]};		//***	58
		ADC2_regFrame[4]	<=	{ZERO, ADC4_NE_regFrame[2]};		//***	59
		ADC2_regFrame[3]	<=	{ZERO, ADC4_NE_regFrame[1]};		//***	60
		ADC2_regFrame[2]	<=	{ZERO, ADC4_NE_regFrame[0]};		//***	61

		//***
		//*** Checksum Initialization
		//***
		ADC2_regFrame[1]	<=	{ONE, K_28_1};									//***	62
		ADC2_regFrame[0]	<=	{ONE, K_28_1};									//***	63
		//***
		//*** No Trailer for FRAME-15
		//***
	end

//***************************
//***
//***	Activate the FIFO
//***		The FIFO is only allowed to activate if the data flow to the SMU
//***		serializer is set to flow from the FIFO to the serializer.  The
//***		data sources are either 1) the FIFO 2) a PRBS-7 3) a PRBS-15 and
//***		4) a constant K28.5 sync word.  By default the flow is from the
//***		sync word.  Since the flow is updated by I2C command, it should be
//***		synced into this clock domain.
//***
//***************************

always	@(posedge FIFO1_Clk_128MHz_PLL)		//A
	FIFO1active_sync1	<=	FIFO1active;

always	@(posedge FIFO1_Clk_128MHz_PLL)		//B
	FIFO1active_sync2	<=	FIFO1active_sync1;

always	@(posedge FIFO1_Clk_128MHz_PLL)		//C
	FIFO1active_sync3	<=	FIFO1active_sync2;

//***************************
//***
//***	Second,now that we have guaranteed that our data is in sync with the colData 2MHz System
//***		Clock, we know that we have new data for our FIFO at the rising edge of the
//***		2MHz clock.  Consequently, given the fact that the 128MHz PLL clock is 64 times
//***		as fast as the 2MHz System Clock, synchronizing the rising edge of the 2MHz clock
//***		into the 128MHz time domain should be all that is necessary to cross the clock
//***		domains.
//***
//***************************
//***************************
//***
//***	Instantiate the syncs for FIFO1
//***
//***************************

	always	@(posedge FIFO1_Clk_128MHz_PLL)		//A
		FIFO1_sync1	<=	Clk_2MHz_SYS;

	always	@(posedge FIFO1_Clk_128MHz_PLL)		//B
		FIFO1_sync2	<=	FIFO1_sync1;

	always	@(posedge FIFO1_Clk_128MHz_PLL)		//C
		FIFO1_sync3	<=	FIFO1_sync2;			//A+B+C = 3 flip-flop synchronizer

	always	@(posedge FIFO1_Clk_128MHz_PLL)
		FIFO1_sync4	<=	FIFO1_sync3;

	assign	FIFO1_edgeDetect	=  FIFO1_sync3 && !FIFO1_sync4;	//Find the rising edge of the 2MHz Clock

	//always	@(negedge FIFO1_Clk_128MHz_PLL)		//Register on the negative edge
	//	FIFO1_foundEdge_NE	<=	FIFO1_edgeDetect;

	//always	@(posedge FIFO1_Clk_128MHz_PLL)		//Re-register on the positive edge
	//	FIFO1_foundEdge	<=	FIFO1_foundEdge_NE;

	always	@(posedge FIFO1_Clk_128MHz_PLL)		//Register on the positive edge
		FIFO1_foundEdge	<=	FIFO1_edgeDetect;

	assign	FIFO1_foundEdge_Active	=	FIFO1_foundEdge	&& FIFO1active_sync3;

//***************************
//***
//***	Instantiate the Finite State Machine that controls the FIFO
//***
//***************************

	colData_switchYard_FSM	FIFO_FSM1	(	.FIFO_In_Data(		FIFO1_data							),
                                  		.validFIFOdata(		FIFO1_validData					),
                                  		.ADC_regFrame(		ADC1_regFrame						),
																			.foundEdge(				FIFO1_foundEdge_Active	),
                                  		.Clk_128MHz_PLL(	FIFO1_Clk_128MHz_PLL		),
                                  		.colData_Rst(			FIFOrst_1_128MHz					)
				                        		);

//***************************
//***
//***	Instantiate the FIFOs
//***
//***************************
	colData_FIFO	FIFO1		(	.FIFOout(					outFIFO1							),
													.FIFOfull(				FIFO1_full						),
													.FIFOempty(				FIFO1_empty						),
													.FIFOin(					FIFO1_data						),
													.validData(				FIFO1_validData				),
													.FIFOclk(					FIFO1_Clk_128MHz_PLL	),
													.FIFOrst_128MHz(	FIFOrst_1_128MHz				)
												);

//***************************
//***
//***	Activate the FIFO
//***		The FIFO is only allowed to activate if the data flow to the SMU
//***		serializer is set to flow from the FIFO to the serializer.  The
//***		data sources are either 1) the FIFO 2) a PRBS-7 3) a PRBS-15 and
//***		4) a constant K28.5 sync word.  By default the flow is from the
//***		sync word.  Since the flow is updated by I2C command, it should be
//***		synced into this clock domain.
//***
//***************************

always	@(posedge FIFO2_Clk_128MHz_PLL)		//A
	FIFO2active_sync1	<=	FIFO2active;

always	@(posedge FIFO2_Clk_128MHz_PLL)		//B
	FIFO2active_sync2	<=	FIFO2active_sync1;

always	@(posedge FIFO2_Clk_128MHz_PLL)		//C
	FIFO2active_sync3	<=	FIFO2active_sync2;

//***************************
//***
//***	Instantiate the syncs for FIFO2
//***
//***************************

	always	@(posedge FIFO2_Clk_128MHz_PLL)		//A
		FIFO2_sync1	<=	Clk_2MHz_SYS;

	always	@(posedge FIFO2_Clk_128MHz_PLL)		//B
		FIFO2_sync2	<=	FIFO2_sync1;

	always	@(posedge FIFO2_Clk_128MHz_PLL)		//C
		FIFO2_sync3	<=	FIFO2_sync2;			//A+B+C = 3 flip-flop synchronizer

	always	@(posedge FIFO2_Clk_128MHz_PLL)
		FIFO2_sync4	<=	FIFO2_sync3;

	assign	FIFO2_edgeDetect	=  FIFO2_sync3 && !FIFO2_sync4;	//Find the rising edge of the 2MHz Clock

	//always	@(negedge FIFO2_Clk_128MHz_PLL)		//Register on the negative edge
	//	FIFO2_foundEdge_NE	<=	FIFO2_edgeDetect;

	//always	@(posedge FIFO2_Clk_128MHz_PLL)		//Re-register on the positive edge
	//	FIFO2_foundEdge	<=	FIFO2_foundEdge_NE;

	always	@(posedge FIFO2_Clk_128MHz_PLL)		//Re-register on the positive edge
		FIFO2_foundEdge	<=	FIFO2_edgeDetect;

	assign	FIFO2_foundEdge_Active	=	FIFO2_foundEdge	&& FIFO2active_sync3;

//***************************
//***
//***	Instantiate the Finite State Machine that controls the FIFO
//***
//***************************

	colData_switchYard_FSM	FIFO_FSM2	(	.FIFO_In_Data(		FIFO2_data							),
                                  		.validFIFOdata(		FIFO2_validData					),
                                  		.ADC_regFrame(		ADC2_regFrame						),
																			.foundEdge(				FIFO2_foundEdge_Active	),
                                  		.Clk_128MHz_PLL(	FIFO2_Clk_128MHz_PLL		),
                                  		.colData_Rst(			FIFOrst_2_128MHz					)
				                        		);

//***************************
//***
//***	Instantiate the FIFOs
//***
//***************************
	colData_FIFO	FIFO2		(	.FIFOout(					outFIFO2							),
													.FIFOfull(				FIFO2_full						),
													.FIFOempty(				FIFO2_empty						),
													.FIFOin(					FIFO2_data						),
													.validData(				FIFO2_validData				),
													.FIFOclk(					FIFO2_Clk_128MHz_PLL	),
													.FIFOrst_128MHz(	FIFOrst_2_128MHz				)
												);

endmodule
