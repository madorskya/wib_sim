-- pdts_tx
--
-- The transmit L2 block
--
-- Dave Newbold, October 2016

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.pdts_defs.all;

entity pdts_tx is
	port(
		clk: in std_logic; -- 50MHz system clock
		rst: in std_logic; -- synchronous reset
		stb: in std_logic; -- system word strobe
		addr: in std_logic_vector((8 * ADDR_WDS) - 1 downto 0); -- address (static)
		scmd_in: in cmd_w; -- sync command in
		scmd_out: out cmd_r; -- sync command ack
		acmd_in: in cmd_w; -- async command in
		acmd_out: out cmd_r; -- async command out
		q: out std_logic_vector(7 downto 0); -- data output
		k: out std_logic; -- kchar output
		stbo: out std_logic; -- stb out
		err: out std_logic -- error output
	);

end pdts_tx;

architecture rtl of pdts_tx is

	type state_t is (START, ST_K, ST_A, ST_S, ST_D, ST_C, ST_E);
	signal state: state_t;
	signal actr, actr_i: unsigned(7 downto 0);
	signal csum: std_logic_vector(15 downto 0);
	signal smode, smode_r, s_ok, astb, cclr, cstb, trans: std_logic;
	signal q_a, q_s: std_logic_vector(7 downto 0);
	signal sctr, spctr: unsigned(3 downto 0);	-- Limit on length of scmd packet
	signal sw: std_logic_vector(7 downto 0);
	signal iaddr: integer range ADDR_WDS - 1 downto 0 := 0;
	signal icsum: integer range CSUM_WDS - 1 downto 0 := 0;

begin

	astb <= stb and not smode;

-- Async state machine
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				state <= START;
			else
				if astb = '1' then
					trans <= '0';
					case state is
-- Start
					when START =>
						state <= ST_K;
-- Async kchar
					when ST_K =>
						state <= ST_A;
						trans <= '1';
-- Async addr
					when ST_A =>
						if actr = to_unsigned(ADDR_WDS - 1, actr'length) then
							state <= ST_S;
							trans <= '1';
						end if;
-- Async send addr
					when ST_S =>
						if actr = to_unsigned(ADDR_WDS - 1, actr'length) then
							state <= ST_D;
							trans <= '1';
						end if;
-- Async data
					when ST_D =>
						if acmd_in.last = '1' then
							state <= ST_C;
							trans <= '1';
						elsif actr = to_unsigned(CMD_LEN_MAX - CSUM_WDS - ADDR_WDS * 2 - 1, actr'length) then
							state <= ST_E;
							trans <= '1';
						end if;
-- Async cksum
					when ST_C =>
						if actr = to_unsigned(CSUM_WDS - 1, actr'length) then
							state <= ST_K;
							trans <= '1';
						end if;
-- Error condition; no escape
					when ST_E =>
					end case;
				end if;
			end if;
		end if;
	end process;
	
-- Async word counter
	
	actr <= actr_i when trans = '0' else X"00";
	actr_i <= actr + 1 when rising_edge(clk) and astb = '1';

-- Checksum

	cclr <= '1' when state = ST_K else '0';
	cstb <= astb when state /= ST_K and state /= ST_C else '0';
	
	cksum: entity work.pdts_cksum
		port map(
			clk => clk,
			stb => cstb,
			clr => cclr,
			d => q_a,
			c => csum
		);
		
-- Async data

	iaddr <= ADDR_WDS - to_integer(actr) - 1 when actr < ADDR_WDS else 0; -- Address words are sent big-endian
	icsum <= CSUM_WDS - to_integer(actr) - 1 when actr < CSUM_WDS else 0; -- Checksum words are sent big-endian
	
	acmd_out.ren <= '1' when (state = ST_A or state = ST_D) and astb = '1' else '0';
	acmd_out.ack <= '1';
	
	with state select q_a <=
		acmd_in.d when ST_A,
		addr(iaddr * 8 + 7 downto iaddr * 8) when ST_S,
		acmd_in.d when ST_D,
		csum(icsum * 8 + 7 downto icsum * 8) when ST_C,
		X"00" when others;
		
-- Strobe alignment

	process(clk)
	begin
		if rising_edge(clk) then
			if stb = '1' then
				sctr <= (others => '0');
			else
				sctr <= sctr + 1;
			end if;
		end if;
	end process;	
			
-- Sync handshaking

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				s_ok <= '0';
			elsif state = ST_K and astb = '1' then
				s_ok <= '1';
			end if;
			smode_r <= smode and not ((scmd_in.last and stb) or rst);
			if rst = '1' then
				spctr <= (others => '0');
			elsif stb = '1' then
				if scmd_in.last = '1' then
					spctr <= (others => '0');
				elsif smode = '1' then
					spctr <= spctr + 1;
				end if;
			end if;
			if smode = '1' and smode_r = '0' then
				sw <= scmd_in.d(7 downto 4) & std_logic_vector(sctr);
			end if;
		end if;
	end process;
	
	smode <= (scmd_in.req and s_ok) or smode_r;
	
	scmd_out.ren <= stb and smode when spctr > 0 else '0';
	scmd_out.ack <= smode and not smode_r;
	
	with spctr select q_s <=
		X"01" when X"0",
		sw when X"1",
		scmd_in.d when others;

-- Outputs
	
	q <= q_s when smode = '1' else q_a;
	k <= '1' when (smode = '1' and spctr = 0) or (smode = '0' and state = ST_K) else '0';
	err <= '1' when state = ST_E else '0';
	stbo <= stb;
	
end rtl;
