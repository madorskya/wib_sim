-- pdts_cdr_sampler
--
-- Line interface for 'no CDR' pulse width modulation - rx side state machine
--
-- Dave Newbold, December 2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library unisim;
use unisim.VComponents.all;

entity pdts_cdr_sampler is
	port(
		clk: in std_logic; -- Base clock
		clk4x: in std_logic; -- Sample clock
		rst: in std_logic; -- Sync rst (clk domain)
		resync: in std_logic; -- Resync input (clk domain)
		d: in std_logic; -- Data in
		q: out std_logic; -- Data out
		locked: out std_logic; -- Locked flag (clk domain)
		dbg: out std_logic_vector(11 downto 0) -- Phase, validity and error flags (clk domain)
	);

end pdts_cdr_sampler;

architecture rtl of pdts_cdr_sampler is

	signal da, db, dd, di: std_logic;
	signal cctr: unsigned(1 downto 0);
	signal dctr, bctr: unsigned(15 downto 0);
	signal tc, good, err_i: std_logic;
	signal sctr: unsigned(2 downto 0);
	signal patt: std_logic_vector(1 downto 0);
	signal p, locked_i: std_logic;
	signal valid: std_logic_vector(7 downto 0);

	attribute MARK_DEBUG: string;
	attribute MARK_DEBUG of rst, resync, tc, good, locked_i, patt, sctr, p, err_i, q, valid: signal is "TRUE";

begin

-- Oversampler

	iff: IDDR
		generic map(
			DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
			SRTYPE => "ASYNC" -- Needed for forward compatibility with ultrascale
		)
		port map(
			d => d,
			c => clk4x,
			ce => '1',
			q1 => da,
			q2 => db,
			r => '0',
			s => '0'
		);
		
	process(clk4x)
	begin
		if rising_edge(clk4x) then
			if rst = '1' then
				cctr <= "01";
			else
				cctr <= cctr + 1;
			end if;
		end if;
	end process;

	dd <= da when sctr(0) = '0' else db; -- CDC
	di <= dd when rising_edge(clk4x) and cctr = sctr(2 downto 1); -- CDC
	q <= di when rising_edge(clk);

-- Duty cycle counter

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' or tc = '1' then
				bctr <= (others => '0');
				dctr <= X"0080";
			else
				bctr <= bctr + 1;
				if di = '1' then
					dctr <= dctr + 1;
				end if;
			end if;
		end if;
	end process;
	
	tc <= and_reduce(std_logic_vector(bctr));
	good <= '1' when dctr(15 downto 13) = "100" else '0'; -- Round to allow for 8b10b or PBRS7 ones population
	
-- State machine
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' or resync = '1' then
				patt <= "00";
				sctr <= "111";
				locked_i <= '0';
				err_i <= '0';
				p <= '0';
			elsif tc = '1' then
				if locked_i = '1' and good = '0' then
					locked_i <= '0';
					err_i <= '1';
				elsif err_i = '0' then
					valid(to_integer(sctr)) <= good;
					if sctr = "000" then
						p <= '1';
					end if;
					if locked_i = '0' then
						if patt = "01" and good = '1' and p = '1' then
							locked_i <= '1';
						else
							sctr <= sctr - 1;
							patt <= patt(0) & good;		
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	locked <= locked_i;
	dbg <= valid & err_i & std_logic_vector(sctr);
	
end rtl;
