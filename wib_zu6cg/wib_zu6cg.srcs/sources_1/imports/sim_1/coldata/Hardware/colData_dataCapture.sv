`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
module	colData_dataCapture	(	output	logic	[15:0][15:0]	capturedADCdata,
															output	logic	[4:0]					frameCount,
															output	logic								Clk_2MHz_Ext,
															input		logic								frameStart,		//To Pin: ADCX_frameStart
															input		logic								dataOutClk,		//To Pin: ADCX_dataOutClk
															input		logic								dataOutA,			//To Pin: ADCX_dataOutA
															input		logic								dataOutB,			//To Pin: ADCX_dataOutB
															input		logic								dataOutC,			//To Pin: ADCX_dataOutC
															input		logic								dataOutD,			//To Pin: ADCX_dataOutD
															input		logic								dataOutE,			//To Pin: ADCX_dataOutE
															input		logic								dataOutF,			//To Pin: ADCX_dataOutF
															input		logic								dataOutG,			//To Pin: ADCX_dataOutG
															input		logic								dataOutH,			//To Pin: ADCX_dataOutH
															input		logic								colData_Rst,	//Rst SM: Active Low Rst
															input 	logic 							CORE_Run
														);

//***************************
//***
//***	Variables
//***
//***************************
	var	logic		nEdge_frameStart;
	var	logic		pEdge_frameStart;

	var	logic		nEdge_dataOutA;
	var	logic		nEdge_dataOutB;
	var	logic		nEdge_dataOutC;
	var	logic		nEdge_dataOutD;
	var	logic		nEdge_dataOutE;
	var	logic		nEdge_dataOutF;
	var	logic		nEdge_dataOutG;
	var	logic		nEdge_dataOutH;

	var	logic		pEdge_dataOutA;
	var	logic		pEdge_dataOutB;
	var	logic		pEdge_dataOutC;
	var	logic		pEdge_dataOutD;
	var	logic		pEdge_dataOutE;
	var	logic		pEdge_dataOutF;
	var	logic		pEdge_dataOutG;
	var	logic		pEdge_dataOutH;

	var	logic		pingPong;

	var	logic	[15:0][15:0]	pingADCdata;
	var	logic	[15:0][15:0]	pongADCdata;
	var	logic	[15:0][15:0]	nextADCdata;

//***************************
//***
//***	First, the data and framestart must be registered
//***		into this clock domain on this chip
//***
//***************************

	always	@(negedge dataOutClk	or negedge colData_Rst)
		if (colData_Rst == ZERO)
			begin
				nEdge_frameStart	<=	ZERO;

				nEdge_dataOutA		<=	ZERO;
				nEdge_dataOutB		<=	ZERO;
				nEdge_dataOutC		<=	ZERO;
				nEdge_dataOutD		<=	ZERO;
				nEdge_dataOutE		<=	ZERO;
				nEdge_dataOutF		<=	ZERO;
				nEdge_dataOutG		<=	ZERO;
				nEdge_dataOutH		<=	ZERO;
			end
		else
			begin
				nEdge_frameStart	<=	frameStart;

				nEdge_dataOutA		<=	dataOutA;
				nEdge_dataOutB		<=	dataOutB;
				nEdge_dataOutC		<=	dataOutC;
				nEdge_dataOutD		<=	dataOutD;
				nEdge_dataOutE		<=	dataOutE;
				nEdge_dataOutF		<=	dataOutF;
				nEdge_dataOutG		<=	dataOutG;
				nEdge_dataOutH		<=	dataOutH;
			end

	always	@(posedge dataOutClk	or negedge colData_Rst)
		if (colData_Rst == ZERO)
			begin
				pEdge_frameStart	<=	ZERO;

				pEdge_dataOutA		<=	ZERO;
				pEdge_dataOutB		<=	ZERO;
				pEdge_dataOutC		<=	ZERO;
				pEdge_dataOutD		<=	ZERO;
				pEdge_dataOutE		<=	ZERO;
				pEdge_dataOutF		<=	ZERO;
				pEdge_dataOutG		<=	ZERO;
				pEdge_dataOutH		<=	ZERO;
			end
		else
			begin
				pEdge_frameStart	<=	nEdge_frameStart;

				pEdge_dataOutA		<=	nEdge_dataOutA;
				pEdge_dataOutB		<=	nEdge_dataOutB;
				pEdge_dataOutC		<=	nEdge_dataOutC;
				pEdge_dataOutD		<=	nEdge_dataOutD;
				pEdge_dataOutE		<=	nEdge_dataOutE;
				pEdge_dataOutF		<=	nEdge_dataOutF;
				pEdge_dataOutG		<=	nEdge_dataOutG;
				pEdge_dataOutH		<=	nEdge_dataOutH;
			end

//***************************
//***
//***	frameStart is registered on the falling edge of dataOutClk
//***		as nEdge_frameStart.  It will be a one at the start
//***		of the frame and the frame's first associated data will be
//***		available at the next rising edge of dataOutClk.
//***	At the start of the frame, pingPong must be switched from ping to pong
//***		and the frame counter must be reset to zero.
//***
//***************************
	always	@(posedge dataOutClk or negedge colData_Rst)
	if (colData_Rst == ZERO)
		pingPong	<=	PING;
	else if (nEdge_frameStart == ONE)
		pingPong	<=	!pingPong;

	always	@(posedge dataOutClk)
	if (nEdge_frameStart == ONE)
		frameCount	<=	5'b0;
	else
		frameCount	<=	frameCount + 5'b0_0001;

//***************************
//***
//***	Now that we have the frameCount, we are going to create a clock from
//***		its Most significant bit.  This will be a 2MHz clock
//***		that is synchronous with the dataOutClk
//***
//***************************
	assign	Clk_2MHz_Ext	=	!frameCount[4];

//***************************
//***
//***	Unscramble the data coming from the ADCs
//***
//***	dataOutA -> 	<1_03><1_02><1_01><1_00>
//***	dataOutB -> 	<1_07><1_06><1_05><1_04>
//***	dataOutC -> 	<1_11><1_10><1_09><1_08>
//***	dataOutD -> 	<1_15><1_14><1_13><1_12>
//***
//***	dataOutE -> 	<2_03><2_02><2_01><2_00>
//***	dataOutF -> 	<2_07><2_06><2_05><2_04>
//***	dataOutG -> 	<2_11><2_10><2_09><2_08>
//***	dataOutH -> 	<2_15><2_14><2_13><2_12>
//***
//***************************
	always	@(negedge dataOutClk)
		if (pingPong == PING)

		case	(frameCount)
		//Words 0&8
			5'b000_00	:	begin
							pingADCdata[0][3]	<=	pEdge_dataOutA;
							pingADCdata[0][7]	<=	pEdge_dataOutB;
							pingADCdata[0][11]	<=	pEdge_dataOutC;
							pingADCdata[0][15]	<=	pEdge_dataOutD;

							pingADCdata[8][3]	<=	pEdge_dataOutE;
							pingADCdata[8][7]	<=	pEdge_dataOutF;
							pingADCdata[8][11]	<=	pEdge_dataOutG;
							pingADCdata[8][15]	<=	pEdge_dataOutH;
						end
			5'b000_01	:	begin
							pingADCdata[0][2]	<=	pEdge_dataOutA;
							pingADCdata[0][6]	<=	pEdge_dataOutB;
							pingADCdata[0][10]	<=	pEdge_dataOutC;
							pingADCdata[0][14]	<=	pEdge_dataOutD;

							pingADCdata[8][2]	<=	pEdge_dataOutE;
							pingADCdata[8][6]	<=	pEdge_dataOutF;
							pingADCdata[8][10]	<=	pEdge_dataOutG;
							pingADCdata[8][14]	<=	pEdge_dataOutH;
						end
			5'b000_10	:	begin
							pingADCdata[0][1]	<=	pEdge_dataOutA;
							pingADCdata[0][5]	<=	pEdge_dataOutB;
							pingADCdata[0][9]	<=	pEdge_dataOutC;
							pingADCdata[0][13]	<=	pEdge_dataOutD;

							pingADCdata[8][1]	<=	pEdge_dataOutE;
							pingADCdata[8][5]	<=	pEdge_dataOutF;
							pingADCdata[8][9]	<=	pEdge_dataOutG;
							pingADCdata[8][13]	<=	pEdge_dataOutH;
						end
			5'b000_11	:	begin
							pingADCdata[0][0]	<=	pEdge_dataOutA;
							pingADCdata[0][4]	<=	pEdge_dataOutB;
							pingADCdata[0][8]	<=	pEdge_dataOutC;
							pingADCdata[0][12]	<=	pEdge_dataOutD;

							pingADCdata[8][0]	<=	pEdge_dataOutE;
							pingADCdata[8][4]	<=	pEdge_dataOutF;
							pingADCdata[8][8]	<=	pEdge_dataOutG;
							pingADCdata[8][12]	<=	pEdge_dataOutH;
						end

		//Words 1&9
			5'b001_00	:	begin
							pingADCdata[1][3]	<=	pEdge_dataOutA;
							pingADCdata[1][7]	<=	pEdge_dataOutB;
							pingADCdata[1][11]	<=	pEdge_dataOutC;
							pingADCdata[1][15]	<=	pEdge_dataOutD;

							pingADCdata[9][3]	<=	pEdge_dataOutE;
							pingADCdata[9][7]	<=	pEdge_dataOutF;
							pingADCdata[9][11]	<=	pEdge_dataOutG;
							pingADCdata[9][15]	<=	pEdge_dataOutH;
						end
			5'b001_01	:	begin
							pingADCdata[1][2]	<=	pEdge_dataOutA;
							pingADCdata[1][6]	<=	pEdge_dataOutB;
							pingADCdata[1][10]	<=	pEdge_dataOutC;
							pingADCdata[1][14]	<=	pEdge_dataOutD;

							pingADCdata[9][2]	<=	pEdge_dataOutE;
							pingADCdata[9][6]	<=	pEdge_dataOutF;
							pingADCdata[9][10]	<=	pEdge_dataOutG;
							pingADCdata[9][14]	<=	pEdge_dataOutH;
						end
			5'b001_10	:	begin
							pingADCdata[1][1]	<=	pEdge_dataOutA;
							pingADCdata[1][5]	<=	pEdge_dataOutB;
							pingADCdata[1][9]	<=	pEdge_dataOutC;
							pingADCdata[1][13]	<=	pEdge_dataOutD;

							pingADCdata[9][1]	<=	pEdge_dataOutE;
							pingADCdata[9][5]	<=	pEdge_dataOutF;
							pingADCdata[9][9]	<=	pEdge_dataOutG;
							pingADCdata[9][13]	<=	pEdge_dataOutH;
						end
			5'b001_11	:	begin
							pingADCdata[1][0]	<=	pEdge_dataOutA;
							pingADCdata[1][4]	<=	pEdge_dataOutB;
							pingADCdata[1][8]	<=	pEdge_dataOutC;
							pingADCdata[1][12]	<=	pEdge_dataOutD;

							pingADCdata[9][0]	<=	pEdge_dataOutE;
							pingADCdata[9][4]	<=	pEdge_dataOutF;
							pingADCdata[9][8]	<=	pEdge_dataOutG;
							pingADCdata[9][12]	<=	pEdge_dataOutH;
						end

		//Words 2&10
			5'b010_00	:	begin
							pingADCdata[2][3]	<=	pEdge_dataOutA;
							pingADCdata[2][7]	<=	pEdge_dataOutB;
							pingADCdata[2][11]	<=	pEdge_dataOutC;
							pingADCdata[2][15]	<=	pEdge_dataOutD;

							pingADCdata[10][3]	<=	pEdge_dataOutE;
							pingADCdata[10][7]	<=	pEdge_dataOutF;
							pingADCdata[10][11]	<=	pEdge_dataOutG;
							pingADCdata[10][15]	<=	pEdge_dataOutH;
						end
			5'b010_01	:	begin
							pingADCdata[2][2]	<=	pEdge_dataOutA;
							pingADCdata[2][6]	<=	pEdge_dataOutB;
							pingADCdata[2][10]	<=	pEdge_dataOutC;
							pingADCdata[2][14]	<=	pEdge_dataOutD;

							pingADCdata[10][2]	<=	pEdge_dataOutE;
							pingADCdata[10][6]	<=	pEdge_dataOutF;
							pingADCdata[10][10]	<=	pEdge_dataOutG;
							pingADCdata[10][14]	<=	pEdge_dataOutH;
						end
			5'b010_10	:	begin
							pingADCdata[2][1]	<=	pEdge_dataOutA;
							pingADCdata[2][5]	<=	pEdge_dataOutB;
							pingADCdata[2][9]	<=	pEdge_dataOutC;
							pingADCdata[2][13]	<=	pEdge_dataOutD;

							pingADCdata[10][1]	<=	pEdge_dataOutE;
							pingADCdata[10][5]	<=	pEdge_dataOutF;
							pingADCdata[10][9]	<=	pEdge_dataOutG;
							pingADCdata[10][13]	<=	pEdge_dataOutH;
						end
			5'b010_11	:	begin
							pingADCdata[2][0]	<=	pEdge_dataOutA;
							pingADCdata[2][4]	<=	pEdge_dataOutB;
							pingADCdata[2][8]	<=	pEdge_dataOutC;
							pingADCdata[2][12]	<=	pEdge_dataOutD;

							pingADCdata[10][0]	<=	pEdge_dataOutE;
							pingADCdata[10][4]	<=	pEdge_dataOutF;
							pingADCdata[10][8]	<=	pEdge_dataOutG;
							pingADCdata[10][12]	<=	pEdge_dataOutH;
						end

		//Words 3&11
			5'b011_00	:	begin
							pingADCdata[3][3]	<=	pEdge_dataOutA;
							pingADCdata[3][7]	<=	pEdge_dataOutB;
							pingADCdata[3][11]	<=	pEdge_dataOutC;
							pingADCdata[3][15]	<=	pEdge_dataOutD;

							pingADCdata[11][3]	<=	pEdge_dataOutE;
							pingADCdata[11][7]	<=	pEdge_dataOutF;
							pingADCdata[11][11]	<=	pEdge_dataOutG;
							pingADCdata[11][15]	<=	pEdge_dataOutH;
						end
			5'b011_01	:	begin
							pingADCdata[3][2]	<=	pEdge_dataOutA;
							pingADCdata[3][6]	<=	pEdge_dataOutB;
							pingADCdata[3][10]	<=	pEdge_dataOutC;
							pingADCdata[3][14]	<=	pEdge_dataOutD;

							pingADCdata[11][2]	<=	pEdge_dataOutE;
							pingADCdata[11][6]	<=	pEdge_dataOutF;
							pingADCdata[11][10]	<=	pEdge_dataOutG;
							pingADCdata[11][14]	<=	pEdge_dataOutH;
						end
			5'b011_10	:	begin
							pingADCdata[3][1]	<=	pEdge_dataOutA;
							pingADCdata[3][5]	<=	pEdge_dataOutB;
							pingADCdata[3][9]	<=	pEdge_dataOutC;
							pingADCdata[3][13]	<=	pEdge_dataOutD;

							pingADCdata[11][1]	<=	pEdge_dataOutE;
							pingADCdata[11][5]	<=	pEdge_dataOutF;
							pingADCdata[11][9]	<=	pEdge_dataOutG;
							pingADCdata[11][13]	<=	pEdge_dataOutH;
						end
			5'b011_11	:	begin
							pingADCdata[3][0]	<=	pEdge_dataOutA;
							pingADCdata[3][4]	<=	pEdge_dataOutB;
							pingADCdata[3][8]	<=	pEdge_dataOutC;
							pingADCdata[3][12]	<=	pEdge_dataOutD;

							pingADCdata[11][0]	<=	pEdge_dataOutE;
							pingADCdata[11][4]	<=	pEdge_dataOutF;
							pingADCdata[11][8]	<=	pEdge_dataOutG;
							pingADCdata[11][12]	<=	pEdge_dataOutH;
						end

		//Words 4&12
			5'b100_00	:	begin
							pingADCdata[4][3]	<=	pEdge_dataOutA;
							pingADCdata[4][7]	<=	pEdge_dataOutB;
							pingADCdata[4][11]	<=	pEdge_dataOutC;
							pingADCdata[4][15]	<=	pEdge_dataOutD;

							pingADCdata[12][3]	<=	pEdge_dataOutE;
							pingADCdata[12][7]	<=	pEdge_dataOutF;
							pingADCdata[12][11]	<=	pEdge_dataOutG;
							pingADCdata[12][15]	<=	pEdge_dataOutH;
						end
			5'b100_01	:	begin
							pingADCdata[4][2]	<=	pEdge_dataOutA;
							pingADCdata[4][6]	<=	pEdge_dataOutB;
							pingADCdata[4][10]	<=	pEdge_dataOutC;
							pingADCdata[4][14]	<=	pEdge_dataOutD;

							pingADCdata[12][2]	<=	pEdge_dataOutE;
							pingADCdata[12][6]	<=	pEdge_dataOutF;
							pingADCdata[12][10]	<=	pEdge_dataOutG;
							pingADCdata[12][14]	<=	pEdge_dataOutH;
						end
			5'b100_10	:	begin
							pingADCdata[4][1]	<=	pEdge_dataOutA;
							pingADCdata[4][5]	<=	pEdge_dataOutB;
							pingADCdata[4][9]	<=	pEdge_dataOutC;
							pingADCdata[4][13]	<=	pEdge_dataOutD;

							pingADCdata[12][1]	<=	pEdge_dataOutE;
							pingADCdata[12][5]	<=	pEdge_dataOutF;
							pingADCdata[12][9]	<=	pEdge_dataOutG;
							pingADCdata[12][13]	<=	pEdge_dataOutH;
						end
			5'b100_11	:	begin
							pingADCdata[4][0]	<=	pEdge_dataOutA;
							pingADCdata[4][4]	<=	pEdge_dataOutB;
							pingADCdata[4][8]	<=	pEdge_dataOutC;
							pingADCdata[4][12]	<=	pEdge_dataOutD;

							pingADCdata[12][0]	<=	pEdge_dataOutE;
							pingADCdata[12][4]	<=	pEdge_dataOutF;
							pingADCdata[12][8]	<=	pEdge_dataOutG;
							pingADCdata[12][12]	<=	pEdge_dataOutH;
						end

		//Words 5&13
			5'b101_00	:	begin
							pingADCdata[5][3]	<=	pEdge_dataOutA;
							pingADCdata[5][7]	<=	pEdge_dataOutB;
							pingADCdata[5][11]	<=	pEdge_dataOutC;
							pingADCdata[5][15]	<=	pEdge_dataOutD;

							pingADCdata[13][3]	<=	pEdge_dataOutE;
							pingADCdata[13][7]	<=	pEdge_dataOutF;
							pingADCdata[13][11]	<=	pEdge_dataOutG;
							pingADCdata[13][15]	<=	pEdge_dataOutH;
						end
			5'b101_01	:	begin
							pingADCdata[5][2]	<=	pEdge_dataOutA;
							pingADCdata[5][6]	<=	pEdge_dataOutB;
							pingADCdata[5][10]	<=	pEdge_dataOutC;
							pingADCdata[5][14]	<=	pEdge_dataOutD;

							pingADCdata[13][2]	<=	pEdge_dataOutE;
							pingADCdata[13][6]	<=	pEdge_dataOutF;
							pingADCdata[13][10]	<=	pEdge_dataOutG;
							pingADCdata[13][14]	<=	pEdge_dataOutH;
						end
			5'b101_10	:	begin
							pingADCdata[5][1]	<=	pEdge_dataOutA;
							pingADCdata[5][5]	<=	pEdge_dataOutB;
							pingADCdata[5][9]	<=	pEdge_dataOutC;
							pingADCdata[5][13]	<=	pEdge_dataOutD;

							pingADCdata[13][1]	<=	pEdge_dataOutE;
							pingADCdata[13][5]	<=	pEdge_dataOutF;
							pingADCdata[13][9]	<=	pEdge_dataOutG;
							pingADCdata[13][13]	<=	pEdge_dataOutH;
						end
			5'b101_11	:	begin
							pingADCdata[5][0]	<=	pEdge_dataOutA;
							pingADCdata[5][4]	<=	pEdge_dataOutB;
							pingADCdata[5][8]	<=	pEdge_dataOutC;
							pingADCdata[5][12]	<=	pEdge_dataOutD;

							pingADCdata[13][0]	<=	pEdge_dataOutE;
							pingADCdata[13][4]	<=	pEdge_dataOutF;
							pingADCdata[13][8]	<=	pEdge_dataOutG;
							pingADCdata[13][12]	<=	pEdge_dataOutH;
						end

		//Words 6&14
			5'b110_00	:	begin
							pingADCdata[6][3]	<=	pEdge_dataOutA;
							pingADCdata[6][7]	<=	pEdge_dataOutB;
							pingADCdata[6][11]	<=	pEdge_dataOutC;
							pingADCdata[6][15]	<=	pEdge_dataOutD;

							pingADCdata[14][3]	<=	pEdge_dataOutE;
							pingADCdata[14][7]	<=	pEdge_dataOutF;
							pingADCdata[14][11]	<=	pEdge_dataOutG;
							pingADCdata[14][15]	<=	pEdge_dataOutH;
						end
			5'b110_01	:	begin
							pingADCdata[6][2]	<=	pEdge_dataOutA;
							pingADCdata[6][6]	<=	pEdge_dataOutB;
							pingADCdata[6][10]	<=	pEdge_dataOutC;
							pingADCdata[6][14]	<=	pEdge_dataOutD;

							pingADCdata[14][2]	<=	pEdge_dataOutE;
							pingADCdata[14][6]	<=	pEdge_dataOutF;
							pingADCdata[14][10]	<=	pEdge_dataOutG;
							pingADCdata[14][14]	<=	pEdge_dataOutH;
						end
			5'b110_10	:	begin
							pingADCdata[6][1]	<=	pEdge_dataOutA;
							pingADCdata[6][5]	<=	pEdge_dataOutB;
							pingADCdata[6][9]	<=	pEdge_dataOutC;
							pingADCdata[6][13]	<=	pEdge_dataOutD;

							pingADCdata[14][1]	<=	pEdge_dataOutE;
							pingADCdata[14][5]	<=	pEdge_dataOutF;
							pingADCdata[14][9]	<=	pEdge_dataOutG;
							pingADCdata[14][13]	<=	pEdge_dataOutH;
						end
			5'b110_11	:	begin
							pingADCdata[6][0]	<=	pEdge_dataOutA;
							pingADCdata[6][4]	<=	pEdge_dataOutB;
							pingADCdata[6][8]	<=	pEdge_dataOutC;
							pingADCdata[6][12]	<=	pEdge_dataOutD;

							pingADCdata[14][0]	<=	pEdge_dataOutE;
							pingADCdata[14][4]	<=	pEdge_dataOutF;
							pingADCdata[14][8]	<=	pEdge_dataOutG;
							pingADCdata[14][12]	<=	pEdge_dataOutH;
						end

		//Words 7&15
			5'b111_00	:	begin
							pingADCdata[7][3]	<=	pEdge_dataOutA;
							pingADCdata[7][7]	<=	pEdge_dataOutB;
							pingADCdata[7][11]	<=	pEdge_dataOutC;
							pingADCdata[7][15]	<=	pEdge_dataOutD;

							pingADCdata[15][3]	<=	pEdge_dataOutE;
							pingADCdata[15][7]	<=	pEdge_dataOutF;
							pingADCdata[15][11]	<=	pEdge_dataOutG;
							pingADCdata[15][15]	<=	pEdge_dataOutH;
						end
			5'b111_01	:	begin
							pingADCdata[7][2]	<=	pEdge_dataOutA;
							pingADCdata[7][6]	<=	pEdge_dataOutB;
							pingADCdata[7][10]	<=	pEdge_dataOutC;
							pingADCdata[7][14]	<=	pEdge_dataOutD;

							pingADCdata[15][2]	<=	pEdge_dataOutE;
							pingADCdata[15][6]	<=	pEdge_dataOutF;
							pingADCdata[15][10]	<=	pEdge_dataOutG;
							pingADCdata[15][14]	<=	pEdge_dataOutH;
						end
			5'b111_10	:	begin
							pingADCdata[7][1]	<=	pEdge_dataOutA;
							pingADCdata[7][5]	<=	pEdge_dataOutB;
							pingADCdata[7][9]	<=	pEdge_dataOutC;
							pingADCdata[7][13]	<=	pEdge_dataOutD;

							pingADCdata[15][1]	<=	pEdge_dataOutE;
							pingADCdata[15][5]	<=	pEdge_dataOutF;
							pingADCdata[15][9]	<=	pEdge_dataOutG;
							pingADCdata[15][13]	<=	pEdge_dataOutH;
						end
			5'b111_11	:	begin
							pingADCdata[7][0]	<=	pEdge_dataOutA;
							pingADCdata[7][4]	<=	pEdge_dataOutB;
							pingADCdata[7][8]	<=	pEdge_dataOutC;
							pingADCdata[7][12]	<=	pEdge_dataOutD;

							pingADCdata[15][0]	<=	pEdge_dataOutE;
							pingADCdata[15][4]	<=	pEdge_dataOutF;
							pingADCdata[15][8]	<=	pEdge_dataOutG;
							pingADCdata[15][12]	<=	pEdge_dataOutH;
						end
		endcase

		else	//pingPong must equal PONG

		case	(frameCount)
		//Words 0&8
			5'b000_00	:	begin
							pongADCdata[0][3]	<=	pEdge_dataOutA;
							pongADCdata[0][7]	<=	pEdge_dataOutB;
							pongADCdata[0][11]	<=	pEdge_dataOutC;
							pongADCdata[0][15]	<=	pEdge_dataOutD;

							pongADCdata[8][3]	<=	pEdge_dataOutE;
							pongADCdata[8][7]	<=	pEdge_dataOutF;
							pongADCdata[8][11]	<=	pEdge_dataOutG;
							pongADCdata[8][15]	<=	pEdge_dataOutH;
						end
			5'b000_01	:	begin
							pongADCdata[0][2]	<=	pEdge_dataOutA;
							pongADCdata[0][6]	<=	pEdge_dataOutB;
							pongADCdata[0][10]	<=	pEdge_dataOutC;
							pongADCdata[0][14]	<=	pEdge_dataOutD;

							pongADCdata[8][2]	<=	pEdge_dataOutE;
							pongADCdata[8][6]	<=	pEdge_dataOutF;
							pongADCdata[8][10]	<=	pEdge_dataOutG;
							pongADCdata[8][14]	<=	pEdge_dataOutH;
						end
			5'b000_10	:	begin
							pongADCdata[0][1]	<=	pEdge_dataOutA;
							pongADCdata[0][5]	<=	pEdge_dataOutB;
							pongADCdata[0][9]	<=	pEdge_dataOutC;
							pongADCdata[0][13]	<=	pEdge_dataOutD;

							pongADCdata[8][1]	<=	pEdge_dataOutE;
							pongADCdata[8][5]	<=	pEdge_dataOutF;
							pongADCdata[8][9]	<=	pEdge_dataOutG;
							pongADCdata[8][13]	<=	pEdge_dataOutH;
						end
			5'b000_11	:	begin
							pongADCdata[0][0]	<=	pEdge_dataOutA;
							pongADCdata[0][4]	<=	pEdge_dataOutB;
							pongADCdata[0][8]	<=	pEdge_dataOutC;
							pongADCdata[0][12]	<=	pEdge_dataOutD;

							pongADCdata[8][0]	<=	pEdge_dataOutE;
							pongADCdata[8][4]	<=	pEdge_dataOutF;
							pongADCdata[8][8]	<=	pEdge_dataOutG;
							pongADCdata[8][12]	<=	pEdge_dataOutH;
						end

		//Words 1&9
			5'b001_00	:	begin
							pongADCdata[1][3]	<=	pEdge_dataOutA;
							pongADCdata[1][7]	<=	pEdge_dataOutB;
							pongADCdata[1][11]	<=	pEdge_dataOutC;
							pongADCdata[1][15]	<=	pEdge_dataOutD;

							pongADCdata[9][3]	<=	pEdge_dataOutE;
							pongADCdata[9][7]	<=	pEdge_dataOutF;
							pongADCdata[9][11]	<=	pEdge_dataOutG;
							pongADCdata[9][15]	<=	pEdge_dataOutH;
						end
			5'b001_01	:	begin
							pongADCdata[1][2]	<=	pEdge_dataOutA;
							pongADCdata[1][6]	<=	pEdge_dataOutB;
							pongADCdata[1][10]	<=	pEdge_dataOutC;
							pongADCdata[1][14]	<=	pEdge_dataOutD;

							pongADCdata[9][2]	<=	pEdge_dataOutE;
							pongADCdata[9][6]	<=	pEdge_dataOutF;
							pongADCdata[9][10]	<=	pEdge_dataOutG;
							pongADCdata[9][14]	<=	pEdge_dataOutH;
						end
			5'b001_10	:	begin
							pongADCdata[1][1]	<=	pEdge_dataOutA;
							pongADCdata[1][5]	<=	pEdge_dataOutB;
							pongADCdata[1][9]	<=	pEdge_dataOutC;
							pongADCdata[1][13]	<=	pEdge_dataOutD;

							pongADCdata[9][1]	<=	pEdge_dataOutE;
							pongADCdata[9][5]	<=	pEdge_dataOutF;
							pongADCdata[9][9]	<=	pEdge_dataOutG;
							pongADCdata[9][13]	<=	pEdge_dataOutH;
						end
			5'b001_11	:	begin
							pongADCdata[1][0]	<=	pEdge_dataOutA;
							pongADCdata[1][4]	<=	pEdge_dataOutB;
							pongADCdata[1][8]	<=	pEdge_dataOutC;
							pongADCdata[1][12]	<=	pEdge_dataOutD;

							pongADCdata[9][0]	<=	pEdge_dataOutE;
							pongADCdata[9][4]	<=	pEdge_dataOutF;
							pongADCdata[9][8]	<=	pEdge_dataOutG;
							pongADCdata[9][12]	<=	pEdge_dataOutH;
						end

		//Words 2&10
			5'b010_00	:	begin
							pongADCdata[2][3]	<=	pEdge_dataOutA;
							pongADCdata[2][7]	<=	pEdge_dataOutB;
							pongADCdata[2][11]	<=	pEdge_dataOutC;
							pongADCdata[2][15]	<=	pEdge_dataOutD;

							pongADCdata[10][3]	<=	pEdge_dataOutE;
							pongADCdata[10][7]	<=	pEdge_dataOutF;
							pongADCdata[10][11]	<=	pEdge_dataOutG;
							pongADCdata[10][15]	<=	pEdge_dataOutH;
						end
			5'b010_01	:	begin
							pongADCdata[2][2]	<=	pEdge_dataOutA;
							pongADCdata[2][6]	<=	pEdge_dataOutB;
							pongADCdata[2][10]	<=	pEdge_dataOutC;
							pongADCdata[2][14]	<=	pEdge_dataOutD;

							pongADCdata[10][2]	<=	pEdge_dataOutE;
							pongADCdata[10][6]	<=	pEdge_dataOutF;
							pongADCdata[10][10]	<=	pEdge_dataOutG;
							pongADCdata[10][14]	<=	pEdge_dataOutH;
						end
			5'b010_10	:	begin
							pongADCdata[2][1]	<=	pEdge_dataOutA;
							pongADCdata[2][5]	<=	pEdge_dataOutB;
							pongADCdata[2][9]	<=	pEdge_dataOutC;
							pongADCdata[2][13]	<=	pEdge_dataOutD;

							pongADCdata[10][1]	<=	pEdge_dataOutE;
							pongADCdata[10][5]	<=	pEdge_dataOutF;
							pongADCdata[10][9]	<=	pEdge_dataOutG;
							pongADCdata[10][13]	<=	pEdge_dataOutH;
						end
			5'b010_11	:	begin
							pongADCdata[2][0]	<=	pEdge_dataOutA;
							pongADCdata[2][4]	<=	pEdge_dataOutB;
							pongADCdata[2][8]	<=	pEdge_dataOutC;
							pongADCdata[2][12]	<=	pEdge_dataOutD;

							pongADCdata[10][0]	<=	pEdge_dataOutE;
							pongADCdata[10][4]	<=	pEdge_dataOutF;
							pongADCdata[10][8]	<=	pEdge_dataOutG;
							pongADCdata[10][12]	<=	pEdge_dataOutH;
						end

		//Words 3&11
			5'b011_00	:	begin
							pongADCdata[3][3]	<=	pEdge_dataOutA;
							pongADCdata[3][7]	<=	pEdge_dataOutB;
							pongADCdata[3][11]	<=	pEdge_dataOutC;
							pongADCdata[3][15]	<=	pEdge_dataOutD;

							pongADCdata[11][3]	<=	pEdge_dataOutE;
							pongADCdata[11][7]	<=	pEdge_dataOutF;
							pongADCdata[11][11]	<=	pEdge_dataOutG;
							pongADCdata[11][15]	<=	pEdge_dataOutH;
						end
			5'b011_01	:	begin
							pongADCdata[3][2]	<=	pEdge_dataOutA;
							pongADCdata[3][6]	<=	pEdge_dataOutB;
							pongADCdata[3][10]	<=	pEdge_dataOutC;
							pongADCdata[3][14]	<=	pEdge_dataOutD;

							pongADCdata[11][2]	<=	pEdge_dataOutE;
							pongADCdata[11][6]	<=	pEdge_dataOutF;
							pongADCdata[11][10]	<=	pEdge_dataOutG;
							pongADCdata[11][14]	<=	pEdge_dataOutH;
						end
			5'b011_10	:	begin
							pongADCdata[3][1]	<=	pEdge_dataOutA;
							pongADCdata[3][5]	<=	pEdge_dataOutB;
							pongADCdata[3][9]	<=	pEdge_dataOutC;
							pongADCdata[3][13]	<=	pEdge_dataOutD;

							pongADCdata[11][1]	<=	pEdge_dataOutE;
							pongADCdata[11][5]	<=	pEdge_dataOutF;
							pongADCdata[11][9]	<=	pEdge_dataOutG;
							pongADCdata[11][13]	<=	pEdge_dataOutH;
						end
			5'b011_11	:	begin
							pongADCdata[3][0]	<=	pEdge_dataOutA;
							pongADCdata[3][4]	<=	pEdge_dataOutB;
							pongADCdata[3][8]	<=	pEdge_dataOutC;
							pongADCdata[3][12]	<=	pEdge_dataOutD;

							pongADCdata[11][0]	<=	pEdge_dataOutE;
							pongADCdata[11][4]	<=	pEdge_dataOutF;
							pongADCdata[11][8]	<=	pEdge_dataOutG;
							pongADCdata[11][12]	<=	pEdge_dataOutH;
						end

		//Words 4&12
			5'b100_00	:	begin
							pongADCdata[4][3]	<=	pEdge_dataOutA;
							pongADCdata[4][7]	<=	pEdge_dataOutB;
							pongADCdata[4][11]	<=	pEdge_dataOutC;
							pongADCdata[4][15]	<=	pEdge_dataOutD;

							pongADCdata[12][3]	<=	pEdge_dataOutE;
							pongADCdata[12][7]	<=	pEdge_dataOutF;
							pongADCdata[12][11]	<=	pEdge_dataOutG;
							pongADCdata[12][15]	<=	pEdge_dataOutH;
						end
			5'b100_01	:	begin
							pongADCdata[4][2]	<=	pEdge_dataOutA;
							pongADCdata[4][6]	<=	pEdge_dataOutB;
							pongADCdata[4][10]	<=	pEdge_dataOutC;
							pongADCdata[4][14]	<=	pEdge_dataOutD;

							pongADCdata[12][2]	<=	pEdge_dataOutE;
							pongADCdata[12][6]	<=	pEdge_dataOutF;
							pongADCdata[12][10]	<=	pEdge_dataOutG;
							pongADCdata[12][14]	<=	pEdge_dataOutH;
						end
			5'b100_10	:	begin
							pongADCdata[4][1]	<=	pEdge_dataOutA;
							pongADCdata[4][5]	<=	pEdge_dataOutB;
							pongADCdata[4][9]	<=	pEdge_dataOutC;
							pongADCdata[4][13]	<=	pEdge_dataOutD;

							pongADCdata[12][1]	<=	pEdge_dataOutE;
							pongADCdata[12][5]	<=	pEdge_dataOutF;
							pongADCdata[12][9]	<=	pEdge_dataOutG;
							pongADCdata[12][13]	<=	pEdge_dataOutH;
						end
			5'b100_11	:	begin
							pongADCdata[4][0]	<=	pEdge_dataOutA;
							pongADCdata[4][4]	<=	pEdge_dataOutB;
							pongADCdata[4][8]	<=	pEdge_dataOutC;
							pongADCdata[4][12]	<=	pEdge_dataOutD;

							pongADCdata[12][0]	<=	pEdge_dataOutE;
							pongADCdata[12][4]	<=	pEdge_dataOutF;
							pongADCdata[12][8]	<=	pEdge_dataOutG;
							pongADCdata[12][12]	<=	pEdge_dataOutH;
						end

		//Words 5&13
			5'b101_00	:	begin
							pongADCdata[5][3]	<=	pEdge_dataOutA;
							pongADCdata[5][7]	<=	pEdge_dataOutB;
							pongADCdata[5][11]	<=	pEdge_dataOutC;
							pongADCdata[5][15]	<=	pEdge_dataOutD;

							pongADCdata[13][3]	<=	pEdge_dataOutE;
							pongADCdata[13][7]	<=	pEdge_dataOutF;
							pongADCdata[13][11]	<=	pEdge_dataOutG;
							pongADCdata[13][15]	<=	pEdge_dataOutH;
						end
			5'b101_01	:	begin
							pongADCdata[5][2]	<=	pEdge_dataOutA;
							pongADCdata[5][6]	<=	pEdge_dataOutB;
							pongADCdata[5][10]	<=	pEdge_dataOutC;
							pongADCdata[5][14]	<=	pEdge_dataOutD;

							pongADCdata[13][2]	<=	pEdge_dataOutE;
							pongADCdata[13][6]	<=	pEdge_dataOutF;
							pongADCdata[13][10]	<=	pEdge_dataOutG;
							pongADCdata[13][14]	<=	pEdge_dataOutH;
						end
			5'b101_10	:	begin
							pongADCdata[5][1]	<=	pEdge_dataOutA;
							pongADCdata[5][5]	<=	pEdge_dataOutB;
							pongADCdata[5][9]	<=	pEdge_dataOutC;
							pongADCdata[5][13]	<=	pEdge_dataOutD;

							pongADCdata[13][1]	<=	pEdge_dataOutE;
							pongADCdata[13][5]	<=	pEdge_dataOutF;
							pongADCdata[13][9]	<=	pEdge_dataOutG;
							pongADCdata[13][13]	<=	pEdge_dataOutH;
						end
			5'b101_11	:	begin
							pongADCdata[5][0]	<=	pEdge_dataOutA;
							pongADCdata[5][4]	<=	pEdge_dataOutB;
							pongADCdata[5][8]	<=	pEdge_dataOutC;
							pongADCdata[5][12]	<=	pEdge_dataOutD;

							pongADCdata[13][0]	<=	pEdge_dataOutE;
							pongADCdata[13][4]	<=	pEdge_dataOutF;
							pongADCdata[13][8]	<=	pEdge_dataOutG;
							pongADCdata[13][12]	<=	pEdge_dataOutH;
						end

		//Words 6&14
			5'b110_00	:	begin
							pongADCdata[6][3]	<=	pEdge_dataOutA;
							pongADCdata[6][7]	<=	pEdge_dataOutB;
							pongADCdata[6][11]	<=	pEdge_dataOutC;
							pongADCdata[6][15]	<=	pEdge_dataOutD;

							pongADCdata[14][3]	<=	pEdge_dataOutE;
							pongADCdata[14][7]	<=	pEdge_dataOutF;
							pongADCdata[14][11]	<=	pEdge_dataOutG;
							pongADCdata[14][15]	<=	pEdge_dataOutH;
						end
			5'b110_01	:	begin
							pongADCdata[6][2]	<=	pEdge_dataOutA;
							pongADCdata[6][6]	<=	pEdge_dataOutB;
							pongADCdata[6][10]	<=	pEdge_dataOutC;
							pongADCdata[6][14]	<=	pEdge_dataOutD;

							pongADCdata[14][2]	<=	pEdge_dataOutE;
							pongADCdata[14][6]	<=	pEdge_dataOutF;
							pongADCdata[14][10]	<=	pEdge_dataOutG;
							pongADCdata[14][14]	<=	pEdge_dataOutH;
						end
			5'b110_10	:	begin
							pongADCdata[6][1]	<=	pEdge_dataOutA;
							pongADCdata[6][5]	<=	pEdge_dataOutB;
							pongADCdata[6][9]	<=	pEdge_dataOutC;
							pongADCdata[6][13]	<=	pEdge_dataOutD;

							pongADCdata[14][1]	<=	pEdge_dataOutE;
							pongADCdata[14][5]	<=	pEdge_dataOutF;
							pongADCdata[14][9]	<=	pEdge_dataOutG;
							pongADCdata[14][13]	<=	pEdge_dataOutH;
						end
			5'b110_11	:	begin
							pongADCdata[6][0]	<=	pEdge_dataOutA;
							pongADCdata[6][4]	<=	pEdge_dataOutB;
							pongADCdata[6][8]	<=	pEdge_dataOutC;
							pongADCdata[6][12]	<=	pEdge_dataOutD;

							pongADCdata[14][0]	<=	pEdge_dataOutE;
							pongADCdata[14][4]	<=	pEdge_dataOutF;
							pongADCdata[14][8]	<=	pEdge_dataOutG;
							pongADCdata[14][12]	<=	pEdge_dataOutH;
						end

		//Words 7&15
			5'b111_00	:	begin
							pongADCdata[7][3]	<=	pEdge_dataOutA;
							pongADCdata[7][7]	<=	pEdge_dataOutB;
							pongADCdata[7][11]	<=	pEdge_dataOutC;
							pongADCdata[7][15]	<=	pEdge_dataOutD;

							pongADCdata[15][3]	<=	pEdge_dataOutE;
							pongADCdata[15][7]	<=	pEdge_dataOutF;
							pongADCdata[15][11]	<=	pEdge_dataOutG;
							pongADCdata[15][15]	<=	pEdge_dataOutH;
						end
			5'b111_01	:	begin
							pongADCdata[7][2]	<=	pEdge_dataOutA;
							pongADCdata[7][6]	<=	pEdge_dataOutB;
							pongADCdata[7][10]	<=	pEdge_dataOutC;
							pongADCdata[7][14]	<=	pEdge_dataOutD;

							pongADCdata[15][2]	<=	pEdge_dataOutE;
							pongADCdata[15][6]	<=	pEdge_dataOutF;
							pongADCdata[15][10]	<=	pEdge_dataOutG;
							pongADCdata[15][14]	<=	pEdge_dataOutH;
						end
			5'b111_10	:	begin
							pongADCdata[7][1]	<=	pEdge_dataOutA;
							pongADCdata[7][5]	<=	pEdge_dataOutB;
							pongADCdata[7][9]	<=	pEdge_dataOutC;
							pongADCdata[7][13]	<=	pEdge_dataOutD;

							pongADCdata[15][1]	<=	pEdge_dataOutE;
							pongADCdata[15][5]	<=	pEdge_dataOutF;
							pongADCdata[15][9]	<=	pEdge_dataOutG;
							pongADCdata[15][13]	<=	pEdge_dataOutH;
						end
			5'b111_11	:	begin
							pongADCdata[7][0]	<=	pEdge_dataOutA;
							pongADCdata[7][4]	<=	pEdge_dataOutB;
							pongADCdata[7][8]	<=	pEdge_dataOutC;
							pongADCdata[7][12]	<=	pEdge_dataOutD;

							pongADCdata[15][0]	<=	pEdge_dataOutE;
							pongADCdata[15][4]	<=	pEdge_dataOutF;
							pongADCdata[15][8]	<=	pEdge_dataOutG;
							pongADCdata[15][12]	<=	pEdge_dataOutH;
						end
		endcase
//***	END OF	always	@(negedge dataOutClk)

//***************************
//***
//***	Now that we have the full 256 bit data blocks, we advance them
//***		on the falling edge of the Extracted 2MHz Clock
//***
//***************************
	always	@(negedge Clk_2MHz_Ext)
		if (pingPong == PING)
			nextADCdata	<=	pongADCdata;
		else
			nextADCdata	<=	pingADCdata;

	always	@(posedge Clk_2MHz_Ext)
		capturedADCdata	<=	nextADCdata;

endmodule
