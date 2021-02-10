`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
module	colData_8b10b_3b4b	(	output	logic	f,
															output	logic	g,
															output	logic	h,
															output	logic	j,
															output	logic	disp_out,
															input	logic	F,
															input	logic	G,
															input	logic	H,
															input	logic	DISP_IN,
															input	logic	PA
														);

	var logic	[2:0]	HGF;
	var logic	[3:0]	fghj;

	assign	HGF	=	{H, G, F};
	assign	f	=	fghj[3];
	assign	g	=	fghj[2];
	assign	h	=	fghj[1];
	assign	j	=	fghj[0];

	always @(HGF or DISP_IN or PA)
	begin
		case	(HGF)
		//D.x.0
		3'b000	:	if (DISP_IN == ONE)
				begin
					fghj		=	4'b0100;
					disp_out	=	ZERO;
				end
				else
				begin
					fghj		=	4'b1011;
					disp_out	=	ONE;
				end
		//D.x.1
		3'b001	:	begin
					fghj		=	4'b1001;
					disp_out	=	DISP_IN;
				end
		//D.x.2
		3'b010	:	begin
					fghj		=	4'b0101;
					disp_out	=	DISP_IN;
				end
		//D.x.3	***Note that disp_out does NOT change even though output depends on disparity
		3'b011	:	if (DISP_IN == ONE)
				begin
					fghj		=	4'b0011;
					disp_out	=	DISP_IN;
				end
				else
				begin
					fghj		=	4'b1100;
					disp_out	=	DISP_IN;
				end
		//D.x.4
		3'b100	:	if (DISP_IN == ONE)
				begin
					fghj		=	4'b0010;
					disp_out	=	ZERO;
				end
				else
				begin
					fghj		=	4'b1101;
					disp_out	=	ONE;
				end
		//D.x.5
		3'b101	:	begin
					fghj		=	4'b1010;
					disp_out	=	DISP_IN;
				end
		//D.x.6
		3'b110	:	begin
					fghj		=	4'b0110;
					disp_out	=	DISP_IN;
				end
		//D.x.7
		3'b111	:	if (DISP_IN == ONE)
								if( PA == ZERO )	//Primary
								begin
									fghj		=	4'b0001;
									disp_out	=	ZERO;
								end
								else		//Alternate
								begin
									fghj		=	4'b1000;
									disp_out	=	ZERO;
								end
							else
								if( PA == ZERO )	//Primary
								begin
									fghj		=	4'b1110;
									disp_out	=	ONE;
								end
								else		//Alternate
								begin
									fghj		=	4'b0111;
									disp_out	=	ONE;
								end
		endcase
	end

endmodule

module	colData_8b10b_5b6b	(	output	logic	a,
															output	logic	b,
															output	logic	c,
															output	logic	d,
															output	logic	e,
															output	logic	i,
															output	logic	disp_out,
															output	logic	pa,
															input	logic	A,
															input	logic	B,
															input	logic	C,
															input	logic	D,
															input	logic	E,
															input	logic	DISP_IN
														);

	var logic	[4:0]	EDCBA;
	var logic	[5:0]	abcdei;

	assign	EDCBA	=	{E, D, C, B, A};
	assign	a	=	abcdei[5];
	assign	b	=	abcdei[4];
	assign	c	=	abcdei[3];
	assign	d	=	abcdei[2];
	assign	e	=	abcdei[1];
	assign	i	=	abcdei[0];

	always @(EDCBA or DISP_IN)
	begin
		case (EDCBA)
		//D.00
		5'b00000	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b011000;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b100111;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		//D.01
		5'b00001	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b100010;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b011101;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		//D.02
		5'b00010	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b010010;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b101101;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		//D.03
		5'b00011	:	begin
						abcdei		=	6'b110001;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.04
		5'b00100	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b001010;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b110101;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		//D.05
		5'b00101	:	begin
						abcdei		=	6'b101001;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.06
		5'b00110	:	begin
						abcdei		=	6'b011001;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.07	***Note that disp_out does NOT change even though output depends on disparity
		5'b00111	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b000111;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b111000;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.08
		5'b01000	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b000110;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b111001;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		//D.09
		5'b01001	:	begin
						abcdei		=	6'b100101;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.10
		5'b01010	:	begin
						abcdei		=	6'b010101;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.11
		5'b01011	:	begin
						abcdei		=	6'b110100;
						disp_out	=	DISP_IN;
						if (DISP_IN == ONE)
							pa	=	ONE;
						else
							pa	=	ZERO;
					end
		//D.12
		5'b01100	:	begin
						abcdei		=	6'b001101;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.13
		5'b01101	:	begin
						abcdei		=	6'b101100;
						disp_out	=	DISP_IN;
						if (DISP_IN == ONE)
							pa	=	ONE;
						else
							pa	=	ZERO;
					end
		//D.14
		5'b01110	:	begin
						abcdei		=	6'b011100;
						disp_out	=	DISP_IN;
						if (DISP_IN == ONE)
							pa	=	ONE;
						else
							pa	=	ZERO;
					end
		//D.15
		5'b01111	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b101000;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b010111;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		//D.16
		5'b10000	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b100100;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b011011;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		//D.17
		5'b10001	:	begin
						abcdei		=	6'b100011;
						disp_out	=	DISP_IN;
						if (DISP_IN == ONE)
							pa	=	ZERO;
						else
							pa	=	ONE;
					end
		//D.18
		5'b10010	:	begin
						abcdei		=	6'b010011;
						disp_out	=	DISP_IN;
						if (DISP_IN == ONE)
							pa	=	ZERO;
						else
							pa	=	ONE;
					end
		//D.19
		5'b10011	:	begin
						abcdei		=	6'b110010;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.20
		5'b10100	:	begin
						abcdei		=	6'b001011;
						disp_out	=	DISP_IN;
						if (DISP_IN == ONE)
							pa	=	ZERO;
						else
							pa	=	ONE;
					end
		//D.21
		5'b10101	:	begin
						abcdei		=	6'b101010;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.22
		5'b10110	:	begin
						abcdei		=	6'b011010;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.23
		5'b10111	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b000101;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b111010;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		//D.24
		5'b11000	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b001100;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b110011;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		//D.25
		5'b11001	:	begin
						abcdei		=	6'b100110;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.26
		5'b11010	:	begin
						abcdei		=	6'b010110;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.27
		5'b11011	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b001001;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b110110;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		//D.28
		5'b11100	:	begin
						abcdei		=	6'b001110;
						disp_out	=	DISP_IN;
						pa		=	ZERO;
					end
		//D.29
		5'b11101	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b010001;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b101110;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		//D.30
		5'b11110	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b100001;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b011110;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		//D.31
		5'b11111	:	if (DISP_IN == ONE)
					begin
						abcdei		=	6'b010100;
						disp_out	=	ZERO;
						pa		=	ZERO;
					end
					else
					begin
						abcdei		=	6'b101011;
						disp_out	=	ONE;
						pa		=	ZERO;
					end
		endcase
	end

endmodule

module	colData_8b10b_Control	(	output	logic	a,
																output	logic	b,
																output	logic	c,
																output	logic	d,
																output	logic	e,
																output	logic	i,
																output	logic	f,
																output	logic	g,
																output	logic	h,
																output	logic	j,
																output	logic	disp_out,
																input	logic	A,
																input	logic	B,
																input	logic	C,
																input	logic	D,
																input	logic	E,
																input	logic	F,
																input	logic	G,
																input	logic	H,
																input	logic	DISP_IN
															);

	wire logic	[4:0]	EDCBA;
	wire logic	[2:0]	HGF;
	var	logic 	maybeK23;
	var	logic 	maybeK27;
	var	logic 	maybeK28;
	var	logic 	maybeK29;
	var	logic 	maybeK30;
	var logic 	maybeKx0;
	var logic 	maybeKx1;
	var logic 	maybeKx2;
	var logic 	maybeKx3;
	var logic 	maybeKx4;
	var logic 	maybeKx5;
	var logic 	maybeKx6;
	var logic 	maybeKx7;
	var logic 	K23p7;
	var logic 	K27p7;
	var logic 	K28p0;
	var logic 	K28p1;
	var logic 	K28p2;
	var logic 	K28p3;
	var logic 	K28p4;
	var logic 	K28p5;
	var logic 	K28p6;
	var logic 	K28p7;
	var logic 	K29p7;
	var logic 	K30p7;
	var logic 	Knothing;

	var logic [0:9]	abcdeifghj;

	assign	EDCBA	=	{E, D, C, B, A};
	assign	HGF	=	{H, G, F};

	always_comb
	begin
	//K.23
		if 	(EDCBA ==	5'b10111)
			begin
				maybeK23	=	ONE;
				maybeK27	=	ZERO;
				maybeK28	=	ZERO;
				maybeK29	=	ZERO;
				maybeK30	=	ZERO;
			end
	//K.27
		else if 	(EDCBA ==	5'b11011)
			begin
				maybeK23	=	ZERO;
				maybeK27	=	ONE;
				maybeK28	=	ZERO;
				maybeK29	=	ZERO;
				maybeK30	=	ZERO;
			end
	//K.28
		else if 	(EDCBA ==	5'b11100)
			begin
				maybeK23	=	ZERO;
				maybeK27	=	ZERO;
				maybeK28	=	ONE;
				maybeK29	=	ZERO;
				maybeK30	=	ZERO;
			end
	//K.29
		else if 	(EDCBA ==	5'b11101)
			begin
				maybeK23	=	ZERO;
				maybeK27	=	ZERO;
				maybeK28	=	ZERO;
				maybeK29	=	ONE;
				maybeK30	=	ZERO;
			end
	//K.30
		else if 	(EDCBA ==	5'b11110)
			begin
				maybeK23	=	ZERO;
				maybeK27	=	ZERO;
				maybeK28	=	ZERO;
				maybeK29	=	ZERO;
				maybeK30	=	ONE;
			end
	//K.nothing
		else
			begin
				maybeK23	=	ZERO;
				maybeK27	=	ZERO;
				maybeK28	=	ZERO;
				maybeK29	=	ZERO;
				maybeK30	=	ZERO;
			end

	//K.x.0
		if 	(	HGF	==	3'b000 )
			begin
				maybeKx0	=	ONE;
				maybeKx1	=	ZERO;
				maybeKx2	=	ZERO;
				maybeKx3	=	ZERO;
				maybeKx4	=	ZERO;
				maybeKx5	=	ZERO;
				maybeKx6	=	ZERO;
				maybeKx7	=	ZERO;
			end
	//K.x.1
		else if 	(	HGF	==	3'b001 )
			begin
				maybeKx0	=	ZERO;
				maybeKx1	=	ONE;
				maybeKx2	=	ZERO;
				maybeKx3	=	ZERO;
				maybeKx4	=	ZERO;
				maybeKx5	=	ZERO;
				maybeKx6	=	ZERO;
				maybeKx7	=	ZERO;
			end
	//K.x.2
		else if 	(	HGF	==	3'b010 )
			begin
				maybeKx0	=	ZERO;
				maybeKx1	=	ZERO;
				maybeKx2	=	ONE;
				maybeKx3	=	ZERO;
				maybeKx4	=	ZERO;
				maybeKx5	=	ZERO;
				maybeKx6	=	ZERO;
				maybeKx7	=	ZERO;
			end
	//K.x.3
		else if 	(	HGF	==	3'b011 )
			begin
				maybeKx0	=	ZERO;
				maybeKx1	=	ZERO;
				maybeKx2	=	ZERO;
				maybeKx3	=	ONE;
				maybeKx4	=	ZERO;
				maybeKx5	=	ZERO;
				maybeKx6	=	ZERO;
				maybeKx7	=	ZERO;
			end
	//K.x.4
		else if 	(	HGF	==	3'b100 )
			begin
				maybeKx0	=	ZERO;
				maybeKx1	=	ZERO;
				maybeKx2	=	ZERO;
				maybeKx3	=	ZERO;
				maybeKx4	=	ONE;
				maybeKx5	=	ZERO;
				maybeKx6	=	ZERO;
				maybeKx7	=	ZERO;
			end
	//K.x.5
		else if 	(	HGF	==	3'b101 )
			begin
				maybeKx0	=	ZERO;
				maybeKx1	=	ZERO;
				maybeKx2	=	ZERO;
				maybeKx3	=	ZERO;
				maybeKx4	=	ZERO;
				maybeKx5	=	ONE;
				maybeKx6	=	ZERO;
				maybeKx7	=	ZERO;
			end
	//K.x.6
		else if 	(	HGF	==	3'b110 )
			begin
				maybeKx0	=	ZERO;
				maybeKx1	=	ZERO;
				maybeKx2	=	ZERO;
				maybeKx3	=	ZERO;
				maybeKx4	=	ZERO;
				maybeKx5	=	ZERO;
				maybeKx6	=	ONE;
				maybeKx7	=	ZERO;
			end
	//K.x.7
		else
			begin
				maybeKx0	=	ZERO;
				maybeKx1	=	ZERO;
				maybeKx2	=	ZERO;
				maybeKx3	=	ZERO;
				maybeKx4	=	ZERO;
				maybeKx5	=	ZERO;
				maybeKx6	=	ZERO;
				maybeKx7	=	ONE;
			end

		K23p7	=	maybeK23 &&	maybeKx7;

		K27p7	=	maybeK27 && maybeKx7;

		K28p0	=	maybeK28 && maybeKx0;
		K28p1	=	maybeK28 && maybeKx1;
		K28p2	=	maybeK28 && maybeKx2;
		K28p3	=	maybeK28 && maybeKx3;
		K28p4	=	maybeK28 && maybeKx4;
		K28p5	=	maybeK28 && maybeKx5;
		K28p6	=	maybeK28 && maybeKx6;
		K28p7	=	maybeK28 && maybeKx7;

		K29p7	=	maybeK29 && maybeKx7;

		K30p7	=	maybeK30 && maybeKx7;

		Knothing	=	!K23p7 &&
								!K27p7 &&
								!K28p0 && !K28p1 && !K28p2 && !K28p3 && !K28p4 && !K28p5 && !K28p6 && !K28p7	&&
								!K29p7 &&
								!K30p7;

		if(K23p7	==	ONE)
			if(	DISP_IN	==	ONE )
				abcdeifghj	=	10'b000101_0111;
			else
				abcdeifghj	=	10'b111010_1000;
		else if (K27p7	==	ONE)
			if(	DISP_IN	==	ONE )
				abcdeifghj	=	10'b001001_0111;
			else
				abcdeifghj	=	10'b110110_1000;
		else if (K28p0	==	ONE)
			if(	DISP_IN	==	ONE )
				abcdeifghj	=	10'b110000_1011;
			else
				abcdeifghj	=	10'b001111_0100;
		else if (K28p1	==	ONE)
			if(	DISP_IN	==	ONE )
				abcdeifghj	=	10'b110000_0110;
			else
				abcdeifghj	=	10'b001111_1001;
		else if (K28p2	==	ONE)
			if(	DISP_IN	==	ONE )
				abcdeifghj	=	10'b110000_1010;
			else
				abcdeifghj	=	10'b001111_0101;
		else if (K28p3	==	ONE)
			if(	DISP_IN	==	ONE )
				abcdeifghj	=	10'b110000_1100;
			else
				abcdeifghj	=	10'b001111_0011;
		else if (K28p4	==	ONE)
			if(	DISP_IN	==	ONE )
				abcdeifghj	=	10'b110000_1101;
			else
				abcdeifghj	=	10'b001111_0010;
		else if (K28p5	==	ONE)
			if(	DISP_IN	==	ONE )
				abcdeifghj	=	10'b110000_0101;
			else
				abcdeifghj	=	10'b001111_1010;
		else if (K28p6	==	ONE)
			if(	DISP_IN	==	ONE )
				abcdeifghj	=	10'b110000_1001;
			else
				abcdeifghj	=	10'b001111_0110;
		else if (K28p7	==	ONE)
			if(	DISP_IN	==	ONE )
				abcdeifghj	=	10'b110000_0111;
			else
				abcdeifghj	=	10'b001111_1000;
		else if (K29p7	==	ONE)
			if(	DISP_IN	==	ONE )
				abcdeifghj	=	10'b010001_0111;
			else
				abcdeifghj	=	10'b101110_1000;
		else if (K30p7	==	ONE)
			if(	DISP_IN	==	ONE )
				abcdeifghj	=	10'b100001_0111;
			else
				abcdeifghj	=	10'b011110_1000;
		else
				abcdeifghj	=	10'b000000_0000;

		if( (K28p1 == ONE) || (K28p2 == ONE) || (K28p3 == ONE) || (K28p5 == ONE) || (K28p6 == ONE) )
			disp_out	=	!DISP_IN;
		else
			disp_out 	=	DISP_IN;

		a = abcdeifghj[0];
		b = abcdeifghj[1];
		c = abcdeifghj[2];
		d = abcdeifghj[3];
		e = abcdeifghj[4];
		i = abcdeifghj[5];
		f = abcdeifghj[6];
		g = abcdeifghj[7];
		h = abcdeifghj[8];
		j = abcdeifghj[9];

	end

endmodule

module colData_8b10b_WordPick	(	output	logic	a,
																output	logic	b,
																output	logic	c,
																output	logic	d,
																output	logic	e,
																output	logic	f,
																output	logic	g,
																output	logic	h,
																output	logic	i,
																output	logic	j,
																input		logic	Da,
																input		logic	Db,
																input		logic	Dc,
																input		logic	Dd,
																input		logic	De,
																input		logic	Df,
																input		logic	Dg,
																input		logic	Dh,
																input		logic	Di,
																input		logic	Dj,
																input		logic	Ka,
																input		logic	Kb,
																input		logic	Kc,
																input		logic	Kd,
																input		logic	Ke,
																input		logic	Kf,
																input		logic	Kg,
																input		logic	Kh,
																input		logic	Ki,
																input		logic	Kj,
																output	logic	disp_out,
																input		logic	Ddisp,
																input		logic	Kdisp,
																input		logic	Kchar
															);

	assign	a					=	(	Kchar	?	Ka	:	Da	);
	assign	b					=	(	Kchar	?	Kb	:	Db	);
	assign	c					=	(	Kchar	?	Kc	:	Dc	);
	assign	d					=	(	Kchar	?	Kd	:	Dd	);
	assign	e					=	(	Kchar	?	Ke	:	De	);
	assign	f					=	(	Kchar	?	Kf	:	Df	);
	assign	g					=	(	Kchar	?	Kg	:	Dg	);
	assign	h					=	(	Kchar	?	Kh	:	Dh	);
	assign	i					=	(	Kchar	?	Ki	:	Di	);
	assign	j					=	(	Kchar	?	Kj	:	Dj	);
	assign	disp_out	=	(	Kchar	?	Kdisp	:	Ddisp	);

endmodule

module colData_8b10b	(	output	logic		[9:0]	Encoded,
												input		logic		[7:0]	Raw,
												input		logic					K,
												input		logic					Clk128Mhz,
												input 	logic					Bypass,
												input		logic					Rst,		//Active High Reset
												input 	logic 				I2C_softReset
											);

	wire logic	[9:0]	Almost;
	wire logic	[0:9]	D_encoded;
	wire logic	[0:9]	K_encoded;

	var logic		RunningDisparity;
	var logic		NextRunningDisparity;

	logic 		logicalReset;
	logic 		Rst8b10b_128MHz_A;
	logic 		Rst8b10b_128MHz_B;
	logic 		Rst8b10b_128MHz;

	colData_8b10b_5b6b		x5b6b		(		.a(					D_encoded[0]			),
																		.b(					D_encoded[1]			),
																		.c(					D_encoded[2]			),
																		.d(					D_encoded[3]			),
																		.e(					D_encoded[4]			),
																		.i(					D_encoded[5]			),
																		.disp_out(	Ddisp_5b6b				),
																		.pa(				PA								),
																		.A(					Raw[0]						),
																		.B(					Raw[1]						),
																		.C(					Raw[2]						),
																		.D(					Raw[3]						),
																		.E(					Raw[4]						),
																		.DISP_IN(		RunningDisparity	)
																	);

	colData_8b10b_3b4b		x3b4b			(	.f(					D_encoded[6]	),
																		.g(					D_encoded[7]	),
																		.h(					D_encoded[8]	),
																		.j(					D_encoded[9]	),
																		.disp_out(	Ddisp					),
																		.F(					Raw[5]				),
																		.G(					Raw[6]				),
																		.H(					Raw[7]				),
																		.DISP_IN(		Ddisp_5b6b		),
																		.PA(				PA						)
																	);

	colData_8b10b_Control	xControl	(	.a(					K_encoded[0]			),
																		.b(					K_encoded[1]			),
																		.c(					K_encoded[2]			),
																		.d(					K_encoded[3]			),
																		.e(					K_encoded[4]			),
																		.i(					K_encoded[5]			),
																		.f(					K_encoded[6]			),
																		.g(					K_encoded[7]			),
																		.h(					K_encoded[8]			),
																		.j(					K_encoded[9]			),
																		.disp_out(	Kdisp							),
																		.A(					Raw[0]						),
																		.B(					Raw[1]						),
																		.C(					Raw[2]						),
																		.D(					Raw[3]						),
																		.E(					Raw[4]						),
																		.F(					Raw[5]						),
																		.G(					Raw[6]						),
																		.H(					Raw[7]						),
																		.DISP_IN(		RunningDisparity	)
																	);

	colData_8b10b_WordPick	xPick		(	.a(					Almost[0]							),
																		.b(					Almost[1]							),
																		.c(					Almost[2]							),
																		.d(					Almost[3]							),
																		.e(					Almost[4]							),
																		.f(					Almost[5]							),
																		.g(					Almost[6]							),
																		.h(					Almost[7]							),
																		.i(					Almost[8]							),
																		.j(					Almost[9]							),
																		.Da(				D_encoded[0]					),
																		.Db(				D_encoded[1]					),
																		.Dc(				D_encoded[2]					),
																		.Dd(				D_encoded[3]					),
																		.De(				D_encoded[4]					),
																		.Df(				D_encoded[5]					),
																		.Dg(				D_encoded[6]					),
																		.Dh(				D_encoded[7]					),
																		.Di(				D_encoded[8]					),
																		.Dj(				D_encoded[9]					),
																		.Ka(				K_encoded[0]					),
																		.Kb(				K_encoded[1]					),
																		.Kc(				K_encoded[2]					),
																		.Kd(				K_encoded[3]					),
																		.Ke(				K_encoded[4]					),
																		.Kf(				K_encoded[5]					),
																		.Kg(				K_encoded[6]					),
																		.Kh(				K_encoded[7]					),
																		.Ki(				K_encoded[8]					),
																		.Kj(				K_encoded[9]					),
																		.disp_out(	NextRunningDisparity	),
																		.Ddisp(			Ddisp									),
																		.Kdisp(			Kdisp									),
																		.Kchar(			K											)
																	);

	assign		logicalReset	=	Rst + I2C_softReset;

	always @ ( posedge Clk128Mhz )
		Rst8b10b_128MHz_A	<=	logicalReset;

	always @ ( posedge Clk128Mhz )
		Rst8b10b_128MHz_B	<=	Rst8b10b_128MHz_A;

	always @ ( posedge Clk128Mhz )
		Rst8b10b_128MHz	<=	Rst8b10b_128MHz_B;

	always @(posedge Clk128Mhz or posedge Rst8b10b_128MHz)
		if (Rst8b10b_128MHz == ONE)
			RunningDisparity <= ZERO;
		else
			RunningDisparity <= NextRunningDisparity;

//	always @(posedge Clk128Mhz)
//		Encoded <= Almost;

	always @(posedge Clk128Mhz)
		if (Bypass == ONE)
			Encoded <= {K, K, Raw};
		else
			Encoded <= Almost;

endmodule
