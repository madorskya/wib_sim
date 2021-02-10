`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//******************************************************************************
// A Wrapper for Sandeep
//******************************************************************************
module EFUSE_TS (CSB, PGM, SCLK, DIN, VDDQ, DOUT,
Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,
Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31);

// IO Ports
input  CSB, PGM, SCLK, DIN, VDDQ;
output DOUT;
output Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,
Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31;

//*** This is the model of the 32-bit eFuse module we received from CERN/IMEC/TSMC
    TEF65LP32X1S_I efuses_x32 (	.*  );

endmodule
