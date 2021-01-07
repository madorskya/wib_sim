`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
///////////////////////////////////////////////////////////////////
// File Name: async2sync_cal_core.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
//              orignal Verilog code by Thorsten Stezleberger
//              Converted to SystemVerilog by C. Grace
//              
// Description: Synchronizes an asynchronous signal to the "clk" domain
//              This is the same as the version
//              in cal_unit but with a different module name
//              so there will be no need to flatten the hierarchy    
//                      
/////////////////////////////////////////////////////////////////


module async2sync_cal_core
    (output logic sync,
    input logic clk,
    input logic async);

logic [4:0] srg;
logic sync_reg;
logic all_1;
logic all_0;

always_comb begin
    sync = sync_reg;
end // always_comb

// only change sync value when the input is identical 
// for 4 consecution clock cycles
// this should filter out all meta stable states
always_ff @(posedge clk) begin
    srg <= {srg[3:0],async};
    if (all_0)
        sync_reg <= 1'b0;
    else if (all_1)
        sync_reg <= 1'b1;
    else
        sync_reg <= sync_reg;
    if (srg [4:1] == 4'b0000)
        all_0 <= 1'b1;
    else
        all_0 <= 1'b0;
    if (srg [4:1] == 4'b1111)
        all_1 <= 1'b1;
    else
        all_1 <= 1'b0;

end // always_ff
endmodule // async2sync
