-- pdts_rx_pkt
--
-- The receive L2 block
--
-- Dave Newbold, March 2022

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_rx_pkt is
	port(
		clk: in std_logic; -- 50MHz system clock
		rst: in std_logic; -- synchronous reset
		stb: in std_logic; -- data strobe
		addr: in std_logic_vector(15 downto 0); -- address (static)
		d: in std_logic_vector(7 downto 0); -- data input
		k: in std_logic; -- kchar input
		scmd: out pdts_cmd_w;
		acmd_o: out pdts_cmd_w;
		acmd_i: in pdts_cmd_r;
		err: out std_logic -- error flag
	);

end pdts_rx_pkt;

architecture rtl of pdts_rx_pkt is

	type state_t is (START, ASYNC, SYNC, ERRS);
	signal state: state_t;
	signal actr, sctr: unsigned(PACKET_LEN_RADIX - 1 downto 0) := "00000";
	signal ts: std_logic_vector(3 downto 0) := X"0";
	signal ka, ks, sa, ss, err_i, a_match: std_logic;
	signal a_ucast, a_bcast: std_logic_vector(1 downto 0);
	signal csum: std_logic_vector(15 downto 0) := X"0000";
	signal vctr: unsigned(3 downto 0);
	signal valid, issue, pend: std_logic;
	signal ada, adb, adc: std_logic_vector(7 downto 0);
	signal a_match_d, avalid, alast: std_logic;

begin

	ka <= '1' when k = '1' and d = CCHAR and stb = '1' else '0';
	ks <= '1' when k = '1' and d = SCHAR and stb = '1' else '0';
	sa <= '1' when state = ASYNC and stb = '1' and ks = '0' else '0';
	ss <= '1' when (state = SYNC and stb = '1') or ks = '1' else '0';

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
					elsif sctr = 1 and stb = '1' then
						state <= ASYNC;
					end if;
-- Error condition; no escape
				when ERRS =>
				end case;
			end if;
		end if;
	end process;

-- Packet length counters

	process(clk)
	begin
		if rising_edge(clk) then
			if ka = '1' then
				actr <= (others => '0');
			elsif sa = '1' then
				actr <= actr + 1;
			end if;
			if ks = '1' then
				sctr <= (others => '0');
			elsif ss = '1' then
				sctr <= sctr + 1;
			end if;
		end if;
	end process;
	
-- Sync timestamp

	ts <= d(3 downto 0) when ss = '1' and sctr = 0 and rising_edge(clk);
	
-- Address match

	process(clk)
	begin
		if rising_edge(clk) then
			if ka = '1' then
				a_ucast <= "00";
				a_bcast <= "00";
			elsif sa = '1' and actr < 2 then
				if d = X"ff" then
					a_bcast(to_integer(actr)) <= '1';
				elsif d = addr(8 * to_integer(actr) + 7 downto 8 * to_integer(actr)) then
					a_ucast(to_integer(actr)) <= '1';
				end if;
			end if;
		end if;
	end process;
	
	a_match <= '1' when a_ucast = "11" or a_bcast = "11" else '0';

-- Checksum
	
	cksum: entity work.pdts_cksum
		port map(
			clk => clk,
			stb => sa,
			clr => ka,
			d => d,
			c => csum
		);
	
-- Protocol error check

	err_i <= '1' when (ka = '1' and state = ASYNC and csum /= (csum'range => '0')) or -- Bad checksum
		(and_reduce(std_logic_vector(actr)) and sa) = '1' or -- Async packet too long
		sctr > 2 or -- Sync packet too long
		((ka = '1' or ks = '1') and state = SYNC) or -- Comma during sync packet
		(acmd_i.rdy = '0' and avalid = '1') -- Packet arrival when buffer is already in use
		else '0';

	err <= '1' when state = ERRS else '0';
		
-- Sync command outputs

	process(clk)
	begin
		if rising_edge(clk) then
			if stb = '1' then
				vctr <= X"1";
			elsif vctr = 9 then
				vctr <= X"0";
			else
				vctr <= vctr + 1;
			end if;
		end if;
	end process;
	
	valid <= '1' when sctr = 1 and ss = '1' else '0';
	issue <= '1' when vctr = unsigned(ts) else '0';
	pend <= (pend or valid) and not (issue or rst) when rising_edge(clk);
	
	scmd.d <= d;
	scmd.valid <= (valid or pend) and issue;
	scmd.last <= '1';
	scmd.err <= '0';
	
-- Packet data output
	
	process(clk) -- Two-char delay to allow for address check
	begin
		if rising_edge(clk) and sa = '1' and state = ASYNC then
			ada <= d;
			adb <= ada;
			adc <= adb;
			a_match_d <= a_match;
		end if;
	end process;

	acmd_o.d <= adc;
	avalid <= a_match_d and a_match and sa when state = ASYNC else '0';
	acmd_o.valid <= avalid;
	alast <= '1' when state = ASYNC and a_match = '1' and ka = '1' else '0';
	acmd_o.last <= alast and not err_i;
	acmd_o.err <= alast and err_i; -- Need something better when we handle soft errors

end rtl;

