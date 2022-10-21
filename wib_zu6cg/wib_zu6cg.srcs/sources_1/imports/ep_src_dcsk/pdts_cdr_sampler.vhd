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
		clk: in std_logic;
		clk4x: in std_logic;
		rst: in std_logic;
		d: in std_logic;
		q: out std_logic;
		locked: out std_logic;
		dbg: out std_logic_vector(7 downto 0)
	);

end pdts_cdr_sampler;

architecture rtl of pdts_cdr_sampler is

	signal da, db, dd, di: std_logic;
	signal cctr: unsigned(1 downto 0);
	signal dctr, bctr: unsigned(15 downto 0);
	signal tc, good: std_logic;
	signal sctr: unsigned(2 downto 0);
	signal patt: std_logic_vector(1 downto 0);
	signal p, locked_i: std_logic;
	
	attribute MARK_DEBUG: string;
	attribute MARK_DEBUG of tc, good, patt, sctr, bctr, dctr, locked_i, p: signal is "TRUE";

begin

-- Oversampler

	iff: IDDRE1
		generic map(
			DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
			IS_CB_INVERTED => '1'
--			SRTYPE => "ASYNC" -- Needed for forward compatibility with ultrascale
		)
		port map(
			d => d,
			c => clk4x,
			cb => clk4x,
--			ce => '1',
			q1 => da,
			q2 => db,
			r => '0'
--			s => '0'
		);
		
	process(clk4x)
	begin
		if rising_edge(clk4x) then
			if rst = '1' then
				cctr <= "11";
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
			if rst = '1' or (tc = '1' and locked_i = '1' and good = '0') then
				patt <= "00";
				sctr <= "111";
				locked_i <= '0';
				p <= '0';
			elsif tc = '1' then
				dbg(to_integer(sctr)) <= good;
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
	end process;
	
	locked <= locked_i;
	
end rtl;
