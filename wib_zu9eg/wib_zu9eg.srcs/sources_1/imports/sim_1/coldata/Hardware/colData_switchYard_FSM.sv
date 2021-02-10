`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//***************************
//***
//***	Module Name: colData_switchYard_FSM
//***	Description: This module is the finite state machine for the switchYard.
//***   In the absence of a foundEdge (a rising edge on the 2MHz )
//***
//***************************
module	colData_switchYard_FSM	(	output	logic	[17:0]	     FIFO_In_Data,
                                  output  logic              validFIFOdata,
                                  input		logic	[63:0][8:0]	 ADC_regFrame,
                                  input   logic              foundEdge,
                                  input   logic              Clk_128MHz_PLL,
                                  input   logic              colData_Rst
				                        );

//***************************
//***
//***	Variables
//***
//***************************
  writeFIFO_States_t		writeState;
  writeFIFO_States_t		nextWriteState;

  logic	[17:0]	        combinatorial_FIFO_In_Data;
  logic                 combinatorial_validFIFOdata;

//***************************
//***
//***	State Machine to govern writing to the FIFOs
//***		A. Resets to Idle State
//***		B. If foundEdge is active, move to Count0
//***		D. There are 32 Count states each one outputs 2 specific words each from
//***			ADC_regFrame and ADC2_regFrame
//***
//***************************
	always @(posedge Clk_128MHz_PLL or posedge colData_Rst)
		if (colData_Rst == ONE)
			writeState	<=	S0_FIFO_IDLE;
    else if (foundEdge == ONE)
      writeState  <=  S1_COUNT0;
		else
			writeState	<=	nextWriteState;

  always @(posedge Clk_128MHz_PLL or posedge colData_Rst)
		if (colData_Rst == ONE)
			validFIFOdata	<=	ZERO;
		else
			validFIFOdata	<=	combinatorial_validFIFOdata;

  always @(posedge Clk_128MHz_PLL or posedge colData_Rst)
		if (colData_Rst == ONE)
			FIFO_In_Data	<=	ZERO;
		else
			FIFO_In_Data	<=	combinatorial_FIFO_In_Data;

  always_comb
      case	(writeState)
      	S0_FIFO_IDLE :	begin
    											nextWriteState	=	S0_FIFO_IDLE;
    											combinatorial_FIFO_In_Data    =	{	ONE, K_28_1,
    																		                    ONE, K_28_1	};
    											combinatorial_validFIFOdata	  =	ZERO;
      									end

      	S1_COUNT0	   :	begin
          								nextWriteState	=	S2_COUNT1;
          								combinatorial_FIFO_In_Data    =	{	ADC_regFrame[63],
          															                    ADC_regFrame[62]	};
          								combinatorial_validFIFOdata	  =	ONE;
      							    end

      	S2_COUNT1	   :	begin
      								    nextWriteState	=	S3_COUNT2;
      								    combinatorial_FIFO_In_Data	=	{	ADC_regFrame[61],
      															                      ADC_regFrame[60]	};
      								    combinatorial_validFIFOdata	=	ONE;
      							    end

      	S3_COUNT2	   :	begin
      								    nextWriteState	=	S4_COUNT3;
      								    combinatorial_FIFO_In_Data	=	{	ADC_regFrame[59],
      															                      ADC_regFrame[58]	};
      								    combinatorial_validFIFOdata	=	ONE;
      							    end

      	S4_COUNT3	   :	begin
      								    nextWriteState	=	S5_COUNT4;
        								  combinatorial_FIFO_In_Data	=	{	ADC_regFrame[57],
      															                      ADC_regFrame[56]	};
        								  combinatorial_validFIFOdata	=	ONE;
      							    end

      	S5_COUNT4	   :	begin
      								    nextWriteState	=	S6_COUNT5;
        								  combinatorial_FIFO_In_Data	=	{	ADC_regFrame[55],
      															                      ADC_regFrame[54]	};
      								    combinatorial_validFIFOdata	=	ONE;
      						      end

      	S6_COUNT5	   :	begin
      								    nextWriteState	=	S7_COUNT6;
      								    combinatorial_FIFO_In_Data	=	{	ADC_regFrame[53],
      															                      ADC_regFrame[52]	};
      								    combinatorial_validFIFOdata	=	ONE;
      							    end

      	S7_COUNT6	   :	begin
      								    nextWriteState	=	S8_COUNT7;
      								    combinatorial_FIFO_In_Data	=	{	ADC_regFrame[51],
      															                      ADC_regFrame[50]	};
      								    combinatorial_validFIFOdata	=	ONE;
      							    end

      	S8_COUNT7	   :	begin
      								    nextWriteState	=	S9_COUNT8;
      								    combinatorial_FIFO_In_Data	=	{	ADC_regFrame[49],
      															                      ADC_regFrame[48]	};
      								    combinatorial_validFIFOdata	=	ONE;
      							    end

      	S9_COUNT8	   :	begin
      								    nextWriteState	=	S10_COUNT9;
      								    combinatorial_FIFO_In_Data	=	{	ADC_regFrame[47],
      															                      ADC_regFrame[46]	};
      								    combinatorial_validFIFOdata	=	ONE;
      							    end

      	S10_COUNT9	 :	begin
      									  nextWriteState	=	S11_COUNT10;
      									  combinatorial_FIFO_In_Data	=	{	ADC_regFrame[45],
      																                    ADC_regFrame[44]	};
      									  combinatorial_validFIFOdata	=	ONE;
      								  end

      	S11_COUNT10	 :	begin
      									  nextWriteState	=	S12_COUNT11;
      									  combinatorial_FIFO_In_Data	=	{	ADC_regFrame[43],
      																                    ADC_regFrame[42]	};
      									  combinatorial_validFIFOdata	=	ONE;
      								  end

      	S12_COUNT11	 :	begin
      									  nextWriteState	=	S13_COUNT12;
      									  combinatorial_FIFO_In_Data	=	{	ADC_regFrame[41],
      																                    ADC_regFrame[40]	};
      									  combinatorial_validFIFOdata	=	ONE;
      								  end

      	S13_COUNT12	 :	begin
      									   nextWriteState	=	S14_COUNT13;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[39],
      																                    ADC_regFrame[38]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S14_COUNT13	 :	begin
      									   nextWriteState	=	S15_COUNT14;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[37],
      																                    ADC_regFrame[36]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S15_COUNT14	 :	begin
      									   nextWriteState	=	S16_COUNT15;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[35],
      																                    ADC_regFrame[34]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S16_COUNT15	 :	begin
      									   nextWriteState	=	S17_COUNT16;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[33],
      																                    ADC_regFrame[32]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S17_COUNT16	 :	begin
      									   nextWriteState	=	S18_COUNT17;
        									 combinatorial_FIFO_In_Data	=	{	ADC_regFrame[31],
      																                    ADC_regFrame[30]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S18_COUNT17	 :	begin
      									   nextWriteState	=	S19_COUNT18;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[29],
      																                    ADC_regFrame[28]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S19_COUNT18	 :	begin
      									   nextWriteState	=	S20_COUNT19;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[27],
      																                    ADC_regFrame[26]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S20_COUNT19	 :	begin
      									   nextWriteState	=	S21_COUNT20;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[25],
      																                    ADC_regFrame[24]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S21_COUNT20	 :	begin
      									   nextWriteState	=	S22_COUNT21;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[23],
      																                    ADC_regFrame[22]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S22_COUNT21	 :	begin
      									   nextWriteState	=	S23_COUNT22;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[21],
      																                    ADC_regFrame[20]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S23_COUNT22	 :	begin
      									   nextWriteState	=	S24_COUNT23;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[19],
      																                    ADC_regFrame[18]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S24_COUNT23	 :	begin
      									   nextWriteState	=	S25_COUNT24;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[17],
      																                    ADC_regFrame[16]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S25_COUNT24	 :	begin
      									   nextWriteState	=	S26_COUNT25;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[15],
      																                    ADC_regFrame[14]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S26_COUNT25	 :	begin
      									   nextWriteState	=	S27_COUNT26;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[13],
      																                    ADC_regFrame[12]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S27_COUNT26	 :	begin
      									   nextWriteState	=	S28_COUNT27;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[11],
      																                    ADC_regFrame[10]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S28_COUNT27	 :	begin
      									   nextWriteState	=	S29_COUNT28;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[9],
      																                    ADC_regFrame[8]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S29_COUNT28	 :	begin
      									   nextWriteState	=	S30_COUNT29;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[7],
      																                    ADC_regFrame[6]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S30_COUNT29	 :	begin
      									   nextWriteState	=	S31_COUNT30;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[5],
      																                    ADC_regFrame[4]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S31_COUNT30	 :	begin
      									   nextWriteState	=	S32_COUNT31;
      									   combinatorial_FIFO_In_Data	=	{	ADC_regFrame[3],
      																                    ADC_regFrame[2]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	S32_COUNT31	 :	begin
      									   nextWriteState	=	S0_FIFO_IDLE;
                           combinatorial_FIFO_In_Data	=	{	ADC_regFrame[1],
      																                    ADC_regFrame[0]	};
      									   combinatorial_validFIFOdata	=	ONE;
      								  end

      	default		   :	begin
      								    nextWriteState	=	S0_FIFO_IDLE;
      								    combinatorial_FIFO_In_Data	=	{	ONE, K_28_1,
      															                      ONE, K_28_1	};
      								    combinatorial_validFIFOdata	=	ZERO;
      							    end

      endcase

endmodule
