-- pdts_tx_pkt
--
-- The transmit L2 block. Note that there must always be an async packet word ready.
--
-- Dave Newbold, March 2022

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_tx_pkt is
	port(
		clk: in std_logic; -- 50MHz system clock
		rst: in std_logic; -- synchronous reset
		stb: in std_logic; -- system word strobe
		scmd_in: in pdts_cmd_w; -- sync command in
		scmd_out: out pdts_cmd_r; -- sync command ack
		acmd_in: in pdts_cmd_w; -- async command in
		acmd_out: out pdts_cmd_r; -- async command out
		q: out std_logic_vector(7 downto 0); -- data output
		k: out std_logic; -- kchar output
		stbo: out std_logic; -- strobe output to phy
		err: out std_logic
	);

end pdts_tx_pkt;

architecture rtl of pdts_tx_pkt is

	type state_t is (START, ST_K, ST_A, ST_D, ST_C, ST_E);
	signal state: state_t;
	signal actr, actr_i: unsigned(PACKET_LEN_RADIX - 1 downto 0);
	signal csum: std_logic_vector(15 downto 0);
	signal svalid, smode, s_ok, astb, cclr, cstb, trans, slast: std_logic;
	signal q_a, q_s: std_logic_vector(7 downto 0);
	signal sctr, spctr: unsigned(3 downto 0);
	signal sw, sd: std_logic_vector(7 downto 0);
	signal iactr: integer range 1 downto 0 := 0;
	
--	attribute MARK_DEBUG: string;
--	attribute MARK_DEBUG of state, scmd_in, acmd_in, q, k, err, smode: signal is "TRUE";

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
						if actr = 1 then
							state <= ST_D;
							trans <= '1';
						end if;
-- Async data
					when ST_D =>
						if and_reduce(std_logic_vector(actr)) = '1' then
							state <= ST_E;
						elsif acmd_in.last = '1' then
							state <= ST_C;
							trans <= '1';
						end if;
-- Async cksum
					when ST_C =>
						if actr = 1 then
							state <= ST_K;
							trans <= '1';
						end if;
-- Error
					when ST_E =>
					end case;
				end if;
			end if;
		end if;
	end process;
	
-- Async word counter
	
	actr <= actr_i when trans = '0' else (others => '0');
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

	iactr <= 1 - to_integer(actr) when actr < 2 else 0;	
	
	with state select q_a <= -- Checksum words must be sent big-endian (address is little-endian)
		CCHAR when ST_K,
		csum(iactr * 8 + 7 downto iactr * 8) when ST_C,
		acmd_in.d when others;

	acmd_out.rdy <= '1' when (state = ST_A or state = ST_D) and astb = '1' else '0';
		
-- Strobe alignment

	process(clk)
	begin
		if rising_edge(clk) then
			if stb = '1' then
				sctr <= X"1";
			elsif sctr = 9 then
				sctr <= X"0";
			else
				sctr <= sctr + 1;
			end if;
		end if;
	end process;	
			
-- Sync handshaking

	svalid <= scmd_in.valid and s_ok and not smode;

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				s_ok <= '0';
				smode <= '0';
			else
				if state = ST_K and astb = '1' then
					s_ok <= '1';
				elsif state = ST_E then
					s_ok <= '0';
				end if;
				if svalid = '1' then
					sd <= scmd_in.d;
					sw <= X"0" & std_logic_vector(sctr);
					smode <= '1';
					spctr <= (others => '0');
				elsif stb = '1' and smode = '1' then
					spctr <= spctr + 1;
					if spctr = 2 then
						smode <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;

	scmd_out.rdy <= not smode;
	
	with spctr select q_s <=
		SCHAR when X"0",
		sw when X"1",
		sd when others;

-- Outputs
	
	q <= q_s when smode = '1' else q_a;
	k <= '1' when (smode = '1' and spctr = 0) or (smode = '0' and state = ST_K) else '0';
	stbo <= '1' when sctr = 0 else '0'; -- Free-running strobe to allow continued output during rx resync
	err <= '1' when state = ST_E else '0';
	
end rtl;
