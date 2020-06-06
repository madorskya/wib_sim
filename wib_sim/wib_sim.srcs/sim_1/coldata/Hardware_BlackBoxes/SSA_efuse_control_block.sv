`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
/******************** SSA ASIC ****************************
 *    Author:      Alessandro Caratelli                   *
 *    email:       <alessandro.caratelli@cern.ch>         *
 *    Team:        CERN-EP-ESE-ME                         *
 *    Design:      SSA ASIC                               *
 *    Project:     CMS Outer-Tracker PixelStrip-Module    *
 **********************************************************/

//`timescale 10 ps / 1 ps

module SSA_efuse (
    input  clk,
    input  rst,
    input  start,
    input  serialRead,
    input  VDDQ,
    input  [7:0] mode,
    input [31:0] prog,
    output reg [31:0] out,
    output reg dout_serial
    );

    // tmrg default do_not_triplicate

    localparam [3:0] IDLE      = 4'b0000;
    localparam [3:0] CHECK_WR  = 4'b0001;
    localparam [3:0] START_WR  = 4'b0010;
    localparam [3:0] PGM_ST    = 4'b0011;
    localparam [3:0] SCLK_WR   = 4'b0100;
    localparam [3:0] PGM_END   = 4'b0101;
    localparam [3:0] CHECK_RD  = 4'b0110;
    localparam [3:0] READ      = 4'b0111;
    localparam [3:0] READ_END  = 4'b1000;

    reg [2:0] start_cnt;
    reg [7:0] pgm_cnt;
    reg [5:0] bit_cnt;
    reg [5:0] read_cnt;

    wire write;
    wire read;

    reg [3:0] state, next;

    reg CSB;
    reg PGM;
    reg SCLK;
    wire [31:0] Q;

    assign write = ((mode == 8'b11110000) && start)?1'b1: 1'b0;
    assign read = ((mode == 8'b00001111))?1'b1: 1'b0;

    always @(posedge clk or negedge rst)
        if (!rst) state <= #2  IDLE;
        else state <= #2  next;

    always     @* begin
        case (state)
            IDLE:       if (write)                  next = CHECK_WR;
                        else if (read)              next = CHECK_RD;
                        else                        next = IDLE;

            CHECK_WR:   if (!write)                 next = IDLE;
                        else if (start_cnt < 3'd7)  next = CHECK_WR;
                        else if (start_cnt == 7)    next = START_WR;
                        else                        next = IDLE;

            START_WR:                               next = PGM_ST;

            PGM_ST:                                 next = SCLK_WR;

            SCLK_WR:    if (pgm_cnt == 8'd0)        next = PGM_END;
                        else                        next = SCLK_WR;

            PGM_END:    if (bit_cnt == 6'd32)       next = IDLE;
                        else                        next = PGM_ST;

            CHECK_RD:   if (!read)                  next = IDLE;
                        else if (start_cnt < 3'd7)  next = CHECK_RD;
                        else if (start_cnt == 3'd7) next = READ;
                        else                        next = IDLE;

            READ:       if (!read)                  next = READ_END;
                        else                        next = READ;

            READ_END:                               next = IDLE;

            default:                                next = IDLE;
        endcase
    end

    always @(posedge clk or negedge rst)
        if (!rst) begin
            CSB <= #2  1'b1;
            SCLK <= #2  1'b0;
            PGM <= #2  1'b0;
            start_cnt <= #2  3'd0;
            pgm_cnt <= #2  8'd215;
            bit_cnt <= #2  6'd0;
	    read_cnt <= #2 6'd0;
        end else begin
            case(next)
                IDLE:   begin
                            CSB <= #2  1'b1;
                            SCLK <= #2  1'b0;
                            PGM <= #2  1'b1;
                            start_cnt <= #2  3'd0;
                        end
                CHECK_WR: begin
                            CSB <= #2  1'b0;
                            bit_cnt <= #2  6'd0;
                            SCLK <= #2  1'b0;
                            PGM <= #2  1'b1;
                            start_cnt <= #2  start_cnt + 3'd1;
                        end
                START_WR: begin
                            CSB <= #2  1'b0;
                            SCLK <= #2  1'b0;
                            PGM <= #2  1'b0;
                        end
                PGM_ST: begin
                            PGM  <= #2  prog[bit_cnt];
                            SCLK <= #2  1'b0;
                            CSB <= #2  1'b0;
                            pgm_cnt <= #2  8'd215;
                        end
                SCLK_WR: begin
                            SCLK <= #2  1'b1;
                            pgm_cnt <= #2  pgm_cnt - 8'd1;
                        end
                PGM_END: begin
                            SCLK <= #2  1'b1;
                            pgm_cnt <= #2  8'd0;
                            PGM <= #2  1'b0;
                            bit_cnt <= #2  bit_cnt + 6'd1;
                        end
                CHECK_RD: begin
                            SCLK <= #2  1'b1;
                            CSB <= #2  1'b1;
                            PGM <= #2  1'b0;
                            start_cnt <= #2  start_cnt + 3'd1;
                        end
                READ: begin
			   if (!serialRead)
			   begin
			    	out <= Q;
                            	SCLK <= #2  1'b1;
                            	CSB <= #2  1'b0;
                            	PGM <= #2  1'b0;
			   end
			   else
			   begin
				if (read_cnt[0] == 1'b0)
				begin
					SCLK <= #2  1'b0;
					read_cnt <= #2 read_cnt + 3'd1;
					dout_serial <= DOUT;
					
				end
				else
				begin
					SCLK <= #2  1'b1;
					read_cnt <= #2 read_cnt + 3'd1;
					dout_serial <= DOUT;
				end
			   end
			end
                READ_END: begin
                            SCLK <= #2  1'b0;
                            CSB <= #2  1'b0;
                            PGM <= #2  1'b0;
                        end
            endcase
        end

    TEF65LP32X1S_I efuses_x32 (
        .CSB(CSB),
        .PGM(PGM),
        .SCLK(SCLK),
        .DIN(1'b0),
        .VDDQ(VDDQ),
        .DOUT(DOUT),
        .Q0(Q[0]),
        .Q1(Q[1]),
        .Q2(Q[2]),
        .Q3(Q[3]),
        .Q4(Q[4]),
        .Q5(Q[5]),
        .Q6(Q[6]),
        .Q7(Q[7]),
        .Q8(Q[8]),
        .Q9(Q[9]),
        .Q10(Q[10]),
        .Q11(Q[11]),
        .Q12(Q[12]),
        .Q13(Q[13]),
        .Q14(Q[14]),
        .Q15(Q[15]),
        .Q16(Q[16]),
        .Q17(Q[17]),
        .Q18(Q[18]),
        .Q19(Q[19]),
        .Q20(Q[20]),
        .Q21(Q[21]),
        .Q22(Q[22]),
        .Q23(Q[23]),
        .Q24(Q[24]),
        .Q25(Q[25]),
        .Q26(Q[26]),
        .Q27(Q[27]),
        .Q28(Q[28]),
        .Q29(Q[29]),
        .Q30(Q[30]),
        .Q31(Q[31])
    );

endmodule
