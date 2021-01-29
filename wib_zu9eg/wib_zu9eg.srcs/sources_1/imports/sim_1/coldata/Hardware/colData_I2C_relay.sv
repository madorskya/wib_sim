`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//*** Title: coldData_I2C_relay
//*** Description: The purpose of this cell is to relay the I2C link (SCL, SDA_C2W, SDA_W2C)
//***   from the warm (LVDS) to the other coldData and to the ADCs subordinate to this colData
//***   OR to relay the I2C link from the other colData (CMOS) to the ADCs subordinate to this colData
//*** NOTE: I2C_R_COLDATA_SCL, I2C_R_COLDATA_SDA_C2W and I2C_R_COLDATA_SDA_W2C are connected to
//***   the SCL, SDA_C2W and SDA_W2C IOs (respectively) of the local colData_I2Cslave ***AND***
//***   to the I2C_S_CMOS_SCL, I2C_S_CMOS_SDA_W2C and I2C_S_SDA_C2W of the OTHER colData_I2C_relay.
//*** Author: Jim Hoff
//*** Date: September 27, 2018
//***
//*******************************************************************************************
//*******************************************************************************************

module	coldADC_I2C_relay	( input   logic       I2C_S_LVDS_SCL,         //(Source) Primary I2C Clock input
                            input   logic       I2C_S_LVDS_SDA_W2C,     //(Source) Primary I2C Data input
                            output  logic       I2C_S_LVDS_SDA_C2W,     //(Source) Primary I2C Data output
                            input   logic       I2C_S_CMOS_SCL,         //(Source) Secondary I2C Clock input
                            input   logic       I2C_S_CMOS_SDA_W2C,     //(Source) Secondary I2C Data input
                            output  logic       I2C_S_CMOS_SDA_C2W,     //(Source) Secondary I2C Data output
                            input   logic       OBEY_LVDS1_CMOS0,       //Source Control: Primary (LVDS)=1 Secondary (CMOS)=0
                            input   logic       I2C_R_ADC_1_SDA_C2W,    //(Relay) I2C Data Output from 1st subordinate ADC
                            input   logic       I2C_R_ADC_2_SDA_C2W,    //(Relay) I2C Data Output from 2nd subordinate ADC
                            input   logic       I2C_R_ADC_3_SDA_C2W,    //(Relay) I2C Data Output from 3rd subordinate ADC
                            input   logic       I2C_R_ADC_4_SDA_C2W,    //(Relay) I2C Data Output from 4th subordinate ADC
                            output  logic       I2C_R_COLDATA_SCL,      //(Relay) I2C Clock Relay to THIS/OTHER colData
                            output  logic       I2C_R_COLDATA_SDA_W2C,  //(Relay) I2C Data Input Relay to THIS/OTHER colData
                            input   logic       I2C_R_COLDATA_SDA_C2W,  //(Relay) I2C Data Output Relay from THIS colData
                            input   logic       I2C_R_OTHER_SDA_C2W,    //(Relay) I2C Data Output Relay from OTHER colData
                            input   logic [3:0] myChipID,               //Control Signal: I am Top colData (4'b0011) I am Bottom colData (4'b0010)
                            input   logic       valid_chipID,           //Control: On rising edge can grab rcvChipID
                            input   logic [3:0] rcvChipID,              //The CHIP_ID sent in this transmission
                            input   logic       CORE_Reset_ACTIVE_LOW   //Garden variety reset signal
                          );

//*******************************************************************************************
//***
//***	Variables
//***
//*******************************************************************************************

        logic [3:0]   capturedChipID;
        logic         local_SDA_C2W;

//*** Start with the easy stuff
//*** My source is either LVDS directly from the warm or CMOS from the other colData.
//*** If my source is LVDS, then the SCL for the local colData is the LVDS SCL and
//*** the SDA input for the local colData is the LVDS SDA_W2C.
//*** On the other hand, if my source is CMOS, then the SCL for the local colData
//*** is the CMOS SCL and the SDA input for the local colData is the CMOS SDA_W2C.
//*** The source outputs (I2C_S_LVDS_SDA_C2W and I2C_S_CMOS_SDA_C2W) must be sent
//*** out to the appropriate destination from a locally gathered point
  always_comb
    if (OBEY_LVDS1_CMOS0  ==  ONE)
      begin
        I2C_R_COLDATA_SCL     = I2C_S_LVDS_SCL;
        I2C_R_COLDATA_SDA_W2C = I2C_S_LVDS_SDA_W2C;
        I2C_S_LVDS_SDA_C2W    = local_SDA_C2W;
        I2C_S_CMOS_SDA_C2W    = ZERO;
      end
    else
      begin
        I2C_R_COLDATA_SCL     = I2C_S_CMOS_SCL;
        I2C_R_COLDATA_SDA_W2C = I2C_S_CMOS_SDA_W2C;
        I2C_S_LVDS_SDA_C2W    = ZERO;
        I2C_S_CMOS_SDA_C2W    = local_SDA_C2W;
      end

//*** The locally gathered output data is more complex.  There are six origins
//*** for the data out: 1) This local I2C Slave.  2-5) The four subordinate
//*** ADCs. 6) The other colData I2C Slave.  If I am Primary (LVDS) then these
//*** sources are sent out the LVDS SDA_C2W.  Otherwise they are sent out the
//*** Secondary (CMOS) SDA_C2W.  Which one is sent depends on the captured
//*** CHIP_ID.

//*** First, capture the CHIP_ID
// Madorsky: rework to prevent race condition in simulator
  always @(posedge valid_chipID or negedge CORE_Reset_ACTIVE_LOW)
    if( CORE_Reset_ACTIVE_LOW == ZERO)
      capturedChipID  <=  4'b0000;
    else
      capturedChipID  <=  rcvChipID;

// Madorsky: reworked code disabled for tests
//    always_comb
//      capturedChipID  <=  rcvChipID;


//***   Taken from "PACKAGE.constants.colData.sv"
//***
//***   Chip ID Numbers
//***   parameter	COLDATA0	=		4'b0010;		//*** The BOT colData
//***   parameter	COLDATA1	=		4'b0011;		//*** The TOP colData
//***   parameter	ADC_BOT_1	=		4'b0100;
//***   parameter	ADC_BOT_2	=		4'b0101;
//***   parameter	ADC_BOT_3	=		4'b0110;
//***   parameter	ADC_BOT_4	=		4'b0111;
//***   parameter	ADC_TOP_1	=		4'b1000;
//***   parameter	ADC_TOP_2	=		4'b1001;
//***   parameter	ADC_TOP_3	=		4'b1010;
//***   parameter	ADC_TOP_4	=		4'b1011;

  always_comb
    //*** This was to my chipID
    if ( capturedChipID ==  myChipID )
      local_SDA_C2W = I2C_R_COLDATA_SDA_C2W;
    //*** This was NOT to my chipID and I am the Bottom colData
    else if ( myChipID == COLDATA_BOT )
      if ( capturedChipID == COLDATA_TOP )     //*** This is the OTHER colData, but
        local_SDA_C2W = ZERO;                   //*** I am the Bottom colData, so I
                                                //*** can just ignore this.
      else if ( capturedChipID == ADC_BOT_1 )  //*** This is a subordinate ADC
        local_SDA_C2W = I2C_R_ADC_1_SDA_C2W;
      else if ( capturedChipID == ADC_BOT_2 )  //*** This is a subordinate ADC
        local_SDA_C2W = I2C_R_ADC_2_SDA_C2W;
      else if ( capturedChipID == ADC_BOT_3 )  //*** This is a subordinate ADC
        local_SDA_C2W = I2C_R_ADC_3_SDA_C2W;
      else if ( capturedChipID == ADC_BOT_4 )  //*** This is a subordinate ADC
        local_SDA_C2W = I2C_R_ADC_4_SDA_C2W;
      else if ( capturedChipID == ADC_TOP_1 )  //*** This is a NOT subordinate ADC
        local_SDA_C2W = ZERO;                  //*** I am Bottom.  This I ignore.
      else if ( capturedChipID == ADC_TOP_2 )  //*** This is a NOT subordinate ADC
        local_SDA_C2W = ZERO;                  //*** I am Bottom.  This I ignore.
      else if ( capturedChipID == ADC_TOP_3 )  //*** This is a NOT subordinate ADC
        local_SDA_C2W = ZERO;                  //*** I am Bottom.  This I ignore.
      else if ( capturedChipID == ADC_TOP_4 )  //*** This is a NOT subordinate ADC
        local_SDA_C2W = ZERO;                  //*** I am Bottom.  This I ignore.
      else                                //*** We got a bogus rcvChipID
        local_SDA_C2W = ZERO;
    //*** This was NOT to my chipID and I am the Top colData
    else if ( myChipID == COLDATA_TOP )
      if ( capturedChipID == COLDATA_BOT )     //*** This is the OTHER colData,
        local_SDA_C2W = I2C_R_OTHER_SDA_C2W;   //*** I am the Top colData, so I
                                               //*** pass this on.
      else if ( capturedChipID == ADC_BOT_1 )  //*** This is NOT a subordinate ADC
        local_SDA_C2W = I2C_R_OTHER_SDA_C2W;   //*** I am the Top.  This I pass on from Bottom.
      else if ( capturedChipID == ADC_BOT_2 )  //*** This is NOT a subordinate ADC
        local_SDA_C2W = I2C_R_OTHER_SDA_C2W;   //*** I am the Top.  This I pass on from Bottom.
      else if ( capturedChipID == ADC_BOT_3 )  //*** This is NOT a subordinate ADC
        local_SDA_C2W = I2C_R_OTHER_SDA_C2W;   //*** I am the Top.  This I pass on from Bottom.
      else if ( capturedChipID == ADC_BOT_4 )  //*** This is NOT a subordinate ADC
        local_SDA_C2W = I2C_R_OTHER_SDA_C2W;   //*** I am the Top.  This I pass on from Bottom.
      else if ( capturedChipID == ADC_TOP_1 )  //*** This is a subordinate ADC
        local_SDA_C2W = I2C_R_ADC_1_SDA_C2W;
      else if ( capturedChipID == ADC_TOP_2 )  //*** This is a subordinate ADC
        local_SDA_C2W = I2C_R_ADC_2_SDA_C2W;
      else if ( capturedChipID == ADC_TOP_3 )  //*** This is a subordinate ADC
        local_SDA_C2W = I2C_R_ADC_3_SDA_C2W;
      else if ( capturedChipID == ADC_TOP_4 )  //*** This is a subordinate ADC
        local_SDA_C2W = I2C_R_ADC_4_SDA_C2W;
      else                                //*** We got a bogus rcvChipID
        local_SDA_C2W = ZERO;
    //*** We were given a bogus myChipID
    else
      local_SDA_C2W = ONE;

endmodule
