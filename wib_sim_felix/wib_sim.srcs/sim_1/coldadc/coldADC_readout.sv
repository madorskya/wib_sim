`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
// Madorsky: removed include statements
//`ifdef	INCA			//if we are simulating...
//	`include		"PACKAGE.constants.coldADC.sv"
//`endif

//`ifndef JIMSCONSTANTS
//	`define	JIMSCONSTANTS
//	`include "PACKAGE.constants.coldADC.sv"
//`endif

//	`include		"PACKAGE.constants.coldADC.sv"

//***************************
//***************************
//***
//***	Module Name: coldADC_backend
//***	Description:
//***
//***************************
//***************************
module	coldADC_readout	(	output	logic		frameStart,	//To Pin: DIG_FRAME
				output	logic		frontEndSample,	//To FrontEnd: Sample Signal
				output	logic		dataOutClk,	//To Pin: DIG_CLKOUT
				output	logic		dataOutA,	//To Pin: DIG_OUTA
				output	logic		dataOutB,	//To Pin: DIG_OUTB
				output	logic		dataOutC,	//To Pin: DIG_OUTC
				output	logic		dataOutD,	//To Pin: DIG_OUTD
				output	logic		dataOutE,	//To Pin: DIG_OUTE
				output	logic		dataOutF,	//To Pin: DIG_OUTF
				output	logic		dataOutG,	//To Pin: DIG_OUTG
				output	logic		dataOutH,	//To Pin: DIG_OUTH
				output	logic		Clk_16MHz,	//To Frontend: CLK_16MHz
				input	logic		Clk_2MHz,	//From Pin: CLK_2MHz
				input	logic		Clk_64MHz,	//From Pin: CLK_64MHz
				input	logic	[15:0]	ADCdata_A,	//From FrontEnd: ADCdata_A
				input	logic	[15:0]	ADCdata_B,	//From FrontEnd: ADCdata_B
				input	logic	[4:0]	startNumber	//From slow control register
			);

	var	logic	[15:0]	captured_ADCdata_A;
	var	logic	[15:0]	captured_ADCdata_B;
	var	logic	[3:0]	nibbleA_ADCdata;
	var	logic	[3:0]	nibbleB_ADCdata;
	var	logic	[3:0]	nibbleC_ADCdata;
	var	logic	[3:0]	nibbleD_ADCdata;
	var	logic	[3:0]	nibbleE_ADCdata;
	var	logic	[3:0]	nibbleF_ADCdata;
	var	logic	[3:0]	nibbleG_ADCdata;
	var	logic	[3:0]	nibbleH_ADCdata;

	var	logic		predictSample;

	backEndStates_t_ADC		clk16MHzState;
	backEndStates_t_ADC		nextClk16MHzState;

	var	logic	[4:0]	frameCounter;
	var	logic	[4:0]	holdFrameCnt;
	var	logic		loadNibbles;

	var	logic		last2MHz;
	var	logic		now2MHz;

	wire	logic		found2MHzEdge;

//***************************
//***
//***	Control system
//***		We start from the assumption that the 2MHz and 64MHz clocks are phase-related.
//***	In colData, the 2MHz clock is created from the 64MHz clock with control coming from the
//***	Fast Command interface.  The rising edge of the 2MHz signals the start of the sampling period
//***	It is not actually the start of the sampling period.  It signals it.  As long as the 2MHz
//***	clock rises before the falling edge of the 64MHz clock, then the sampling period will actually
//***	start at the next rising edge of the 64MHz clock.
//***
//***		We are going to control everything with a 4-state state machine and a 5-bit counter.
//***	The state machine must reset to "PHASE_STATE_ADC_0" at the start of the sampling period and the counter
//***	must reset to 0 at the start of the sampling period.
//***
//***************************

	always_ff	@(negedge Clk_64MHz)
	begin
		last2MHz	<=	now2MHz;
		now2MHz		<=	Clk_2MHz;
	end

	//*** If the 2MHz clock is a one NO_ADCW and a zero last period, I just found an edge
	//***	Since I sample on the falling edge of Clk_64MHz, found2MHzEdge lasts from
	//***	falling edge to falling edge.
	assign	found2MHzEdge	=	now2MHz && !last2MHz;


	//*** State Machine
	always_ff	@(posedge Clk_64MHz)
	if (	found2MHzEdge == ONE_ADC	)
		clk16MHzState	<=	PHASE_STATE_ADC_1;
	else
		clk16MHzState	<=	nextClk16MHzState;

	//*** Combinatorial State Machine Logic
	assign	nextClk16MHzState	=	(	(clk16MHzState == PHASE_STATE_ADC_0)	?	PHASE_STATE_ADC_1	:
							(clk16MHzState == PHASE_STATE_ADC_1)	?	PHASE_STATE_ADC_2	:
							(clk16MHzState == PHASE_STATE_ADC_2)	?	PHASE_STATE_ADC_3	:	PHASE_STATE_ADC_0	);


	//*** Create the Clk_16MHz from the state machine
	assign	Clk_16MHz	=	((clk16MHzState == PHASE_STATE_ADC_0) || (clk16MHzState == PHASE_STATE_ADC_1));

	always_ff @(posedge Clk_64MHz)
	if( found2MHzEdge == ONE_ADC )
		frameCounter	<=	5'b00001;
	else
	//frameCounter	<=	(frameCounter + 5'b00001) % 32;
		frameCounter	<=	(frameCounter + 5'b00001);

//***************************
//***
//***	frameStart
//***		frameStart is a signal to colData that indicates that a new 16x16 ADC data array is being
//**	output.  We can anticipate frameStart these will start because the startNumber is programmed and stable.
//***	If we sample the frameCounter on the negative edge of the 64MHz clock and compare it to
//***	the startNumber-1, we can create a signal that will be active when the frameCounter
//***	is about to become the startNumber.  Default for start number is 5'b00000.
//***
//***************************
	always	@(negedge Clk_64MHz)
		holdFrameCnt	<=	frameCounter;

//	assign	predictFrameSt	=	(holdFrameCnt == ((startNumber-5'b00001) %32));
	assign	predictFrameSt	=	(holdFrameCnt == (startNumber-5'b00001) );

	always	@(posedge Clk_64MHz)
		frameStart	<=	predictFrameSt;

//***************************
//***
//***	frontEndSample
//***		We also create the frontEnd Sample Signal from the frame counter using the startNumber and
//***	the same anticipation algorithm.
//***
//***************************
	assign	predictSample	=	( (holdFrameCnt	==  5'b11111) ||
								(holdFrameCnt == 5'b00000) );

	always @(posedge Clk_64MHz)
		frontEndSample	<=	predictSample;

//***************************
//***
//***	Data stabilization
//***		We are running multiple clocks.  They are phase-related clocks.  Nevertheless,
//***	we are being prudent.  New ADCdata is available at every positive edge of
//***	Clk_16MHz, so we grab it when it is stable at the negative edge of Clk_6MHz.
//***
//***************************
	always @(negedge Clk_16MHz)
	begin
		captured_ADCdata_A	<=	ADCdata_A;
		captured_ADCdata_B	<=	ADCdata_B;
	end

//***************************
//***
//***	Data Output
//***		The various dataOuts will always be the MSB of their respective nibbles.
//***
//***************************
	assign	dataOutA	=	nibbleA_ADCdata[3];
	assign	dataOutB	=	nibbleB_ADCdata[3];
	assign	dataOutC	=	nibbleC_ADCdata[3];
	assign	dataOutD	=	nibbleD_ADCdata[3];
	assign	dataOutE	=	nibbleE_ADCdata[3];
	assign	dataOutF	=	nibbleF_ADCdata[3];
	assign	dataOutG	=	nibbleG_ADCdata[3];
	assign	dataOutH	=	nibbleH_ADCdata[3];

//***************************
//***
//***	Data output is basically a parallel to serial converter.  On the positive edge
//***	of every Clk_64MHz we are either going to load 4 new bits or we are going to
//***	shift everything to the left by one bit.  Note that we are using the captured
//***	ADCdata value rather than the raw ADC value.  This is simply to make sure that
//***	we have a stable value at the rising edge of the clock.
//***
//***	When do we grab new data to be output?
//***		We have already created a four state state machine clk16MHzState which
//***	advances on the positive edge of the 64MHz clock.  There is one state for each
//***	of the four 64MHz clock period within one 16MHz clock period.  Since we want a
//***	new nibble at the rising edge of the 16MHz clock and since the rising edge of
//***	the 16MHz clock occurs between PHASE_STATE_ADC_3 and PHASE_STATE_ADC_0, we can create
//***	the loadNibble signal by sampling the state of clk16MHzState on the negative edge
//*** 	of the 64MHz clock (when it is stable) and if it is equal to PHASE_STATE_ADC_3, then
//***	loadNibbles is a ONE_ADC, otherwise it is a zero.
//***
//***************************
	always @(negedge Clk_64MHz)
		if( clk16MHzState	==	PHASE_STATE_ADC_3)
			loadNibbles	<=	ONE_ADC;
		else
			loadNibbles	<=	ZERO_ADC;

//***************************
//***
//***	Parallel load when loadNibbles is a ONE_ADC.
//***	Serial Stream otherwise
//***	dataOut is always equal to the highest bit of the respective nibble.
//***
//***************************
	always @(posedge Clk_64MHz)
		if(loadNibbles == ONE_ADC)
		begin
			nibbleA_ADCdata <= captured_ADCdata_A[3:0];
			nibbleB_ADCdata <= captured_ADCdata_A[7:4];
			nibbleC_ADCdata <= captured_ADCdata_A[11:8];
			nibbleD_ADCdata <= captured_ADCdata_A[15:12];

			nibbleE_ADCdata <= captured_ADCdata_B[3:0];
			nibbleF_ADCdata <= captured_ADCdata_B[7:4];
			nibbleG_ADCdata <= captured_ADCdata_B[11:8];
			nibbleH_ADCdata <= captured_ADCdata_B[15:12];
		end
		else
		begin
			nibbleA_ADCdata <= {	nibbleA_ADCdata[2:0], 1'b0	};
			nibbleB_ADCdata <= {	nibbleB_ADCdata[2:0], 1'b0	};
			nibbleC_ADCdata <= {	nibbleC_ADCdata[2:0], 1'b0	};
			nibbleD_ADCdata <= {	nibbleD_ADCdata[2:0], 1'b0	};

			nibbleE_ADCdata <= {	nibbleE_ADCdata[2:0], 1'b0	};
			nibbleF_ADCdata <= {	nibbleF_ADCdata[2:0], 1'b0	};
			nibbleG_ADCdata <= {	nibbleG_ADCdata[2:0], 1'b0	};
			nibbleH_ADCdata <= {	nibbleH_ADCdata[2:0], 1'b0	};
		end

//***************************
//***
//***	The last thing to do is output a clock
//***
//***************************
	assign	dataOutClk	=	Clk_64MHz;


endmodule
