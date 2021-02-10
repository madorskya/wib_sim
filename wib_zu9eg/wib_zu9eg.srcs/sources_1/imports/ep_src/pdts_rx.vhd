-- pdts_rx
--
-- The receive L2 block
--
-- Dave Newbold, October 2016

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_rx is
	generic(
		NO_TGRP: boolean := false
	);
	port(
		clk: in std_logic; -- 50MHz system clock
		rst: in std_logic; -- synchronous reset
		stb: in std_logic; -- data strobe
		tgrp: in std_logic_vector(GRP_W - 1 downto 0); -- timing group def (static)
		addr: in std_logic_vector((8 * ADDR_WDS) - 1 downto 0); -- address (static)
		d: in std_logic_vector(7 downto 0); -- data input
		k: in std_logic; -- kchar input
		q: out std_logic_vector(7 downto 0); -- data output
		s_stb: out std_logic; -- sync cmd strobe
		s_first: out std_logic;
		a_stb: out std_logic; -- async cmd strobe
		a_first: out std_logic; -- packet last word marker
		err: out std_logic_vector(2 downto 0) -- error flag
	);

end pdts_rx;

architecture rtl of pdts_rx is

	type state_t is (START, ASYNC, SYNC, ERRS);
	signal state: state_t;
	signal actr, sctr, slen, slen_r: unsigned(4 downto 0) := "00000";
	signal ts: std_logic_vector(3 downto 0) := X"0";
	signal ka, ks, a_match, s_match, s_match_r, err_i, s_done, pkt_end, cstb: std_logic;
	signal err_c: std_logic_vector(2 downto 0);
	signal csum: std_logic_vector(15 downto 0) := X"0000";
	signal vctr: unsigned(3 downto 0);
	signal valid, first, issue, pend, pend_f: std_logic;
	
begin

	ka <= '1' when k = '1' and d = CCHAR and stb = '1' else '0';
	ks <= '1' when k = '1' and d = SCHAR and stb = '1' else '0';

-- State machine
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				state <= START;
			else
				case state is
-- Startup
				when START =>
					if ka = '1' then
						state <= ASYNC;
					end if;
-- Processing async cmd
				when ASYNC =>
					if err_i = '1' then
						state <= ERRS;
					elsif ks = '1' then
						state <= SYNC;
					end if;
-- Processing sync cmd
				when SYNC =>
					if err_i = '1' then
						state <= ERRS;
					elsif s_done = '1' and stb = '1' then
						state <= ASYNC;
					end if;
-- Error condition; no escape
				when ERRS =>
				end case;
			end if;
		end if;
	end process;

-- Packet length counters

	slen <= to_unsigned(SCMD_LEN(to_integer(unsigned(d(SCMD_W - 1 downto 0)))), slen'length);

	process(clk)
	begin
		if rising_edge(clk) then
			if ka = '1' then
				actr <= (others => '0');
			elsif state = ASYNC and ks = '0' and stb = '1' then
				actr <= actr + 1;
			end if;
			if ks = '1' then
				sctr <= (others => '0');
			elsif state = SYNC and stb = '1' then
				sctr <= sctr + 1;
			end if;
		end if;
	end process;

	s_done <= '1' when (sctr = 1 and slen = 1) or (sctr > 1 and sctr = slen_r) else '0'; 

-- Sync header info
	
	process(clk)
	begin
		if rising_edge(clk) then
			if state = SYNC then
				if sctr = 0 then
					ts <= d(3 downto 0);
					s_match_r <= s_match;
				elsif sctr = 1 then
					slen_r <= slen;
				end if;
			end if;
		end if;
	end process;

-- Address match

	s_match <= d(4 + to_integer(unsigned(tgrp)));

	process(clk)
	begin
		if rising_edge(clk) then
			if ka = '1' then
				a_match <= '0';
			elsif state = ASYNC and actr < ADDR_WDS and stb = '1' then
				if d = X"00" or d = addr(8 * (to_integer(actr) + 1) - 1 downto 8 * to_integer(actr)) then
					a_match <= '1'; -- fancier address sub-field matching here later
				end if;
			end if;
		end if;
	end process;
		
-- Checksum

	cstb <= stb when state = ASYNC and ks = '0' else '0';
	
	cksum: entity work.pdts_cksum
		port map(
			clk => clk,
			stb => cstb,
			clr => ka,
			d => d,
			c => csum
		);
		
	pkt_end <= ka when state = ASYNC else '0';
		
-- Protocol checks

	process(pkt_end, csum, actr, sctr, state, ka, ks, slen)
		variable err: std_logic_vector(2 downto 0);
	begin
		err := "000";
		if pkt_end = '1' and csum /= (csum'range => '0') then -- checksum error
			err := "001";
		end if;
		if actr > CMD_LEN_MAX or sctr > CMD_LEN_MAX then -- cmd overrun
			if state = ASYNC then
				err := "010";
			elsif state = SYNC then
				err := "011";
			end if;
		end if;
		if state = ASYNC and ka = '1' and actr < ACMD_LEN_MIN then -- async cmd too short
			err := "100";
		end if;
		if state = SYNC and (ka = '1' or ks = '1') and sctr < slen then -- sync cmd truncated
			err := "101";
		end if;
		err_c <= err;
	end process;

	err_i <= or_reduce(err_c);

-- Outputs

	process(clk)
	begin
		if rising_edge(clk) then
			if stb = '1' then
				vctr <= to_unsigned(1, vctr'length);
			elsif vctr = (10 / SCLK_RATIO) - 1 then
				vctr <= (others => '0');
			else
				vctr <= vctr + 1;
			end if;
		end if;
	end process;
	
	q <= d;
	valid <= '1' when state = SYNC and (s_match_r = '1' or NO_TGRP) and stb = '1' else '0';
	first <= '1' when sctr = to_unsigned(1, sctr'length) else '0';
	issue <= '1' when vctr = unsigned(ts) or SCLK_RATIO = 10 else '0';
	pend <= (pend or valid) and not (issue or rst) when rising_edge(clk);
	pend_f <= (pend_f or (valid and first)) and not (issue or rst) when rising_edge(clk);
	s_stb <= (valid or pend) and issue;
	s_first <= ((valid and first) or pend_f) and issue;
	a_stb <= '1' when state = ASYNC and k = '0' and stb = '1' and a_match = '1' and actr >= ADDR_WDS * 2 else '0';
	a_first <= '1' when state = ASYNC and k = '0' and stb = '1' and a_match = '1' and actr = ADDR_WDS * 2 else '0';
	err <= err_c when rising_edge(clk);

end rtl;
