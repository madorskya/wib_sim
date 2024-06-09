-- pdts_rx_phy
--
-- The receive PHY
--
-- Dave Newbold, January 2022

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_rx_phy is
	port(
		clk: in std_logic; -- base clock
		rst: in std_logic; -- decoder rst (clk domain)
		d: in std_logic; -- serial data (rxclk domain)
		delay: in std_logic_vector(3 downto 0); -- coarse delay setting (clk cycles)
		locked: out std_logic; -- decoder locked flag (clk domain)
		q: out std_logic_vector(7 downto 0); -- data out (clk domain)
		k: out std_logic; -- kchar out (clk domain)
		stbo: out std_logic -- strobe out (clk domain)
	);

end pdts_rx_phy;

architecture rtl of pdts_rx_phy is

	signal rsti, dd: std_logic;
	signal w: std_logic_vector(9 downto 0);
	signal sctr: unsigned(3 downto 0);
	signal cctr: unsigned(LOCK_CTR_W - 1 downto 0); -- Sets the number of consecutive commas needed to lock
	signal lctr: unsigned(TIMEOUT_W - 1 downto 0); -- Sets the number of words to wait between commas before unlock
	signal ectr: unsigned(TIMEOUT_W - 1 downto 0); -- Sets number of decoded words needed for lock
	signal c, stb, lock, dec_en, cerr, derr, eok: std_logic;
	
--	attribute MARK_DEBUG: string;
--	attribute MARK_DEBUG of rst, c, sctr, lock, eok: signal is "TRUE";

begin

-- Coarse delay

	c_del: entity work.pdts_del
		generic map(
			WIDTH => 1,
			DEL_RADIX => 4
		)
		port map(
			clk => clk,
			a => delay, -- CDC
			d(0) => d,
			q(0) => dd
		);

-- Deserialiser / comma detector
	
	w <= dd & w(9 downto 1) when rising_edge(clk);
 	c <= '1' when w = CCHAR_PD or w = CCHAR_ND else '0';

-- Strobe generator
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' or (lock = '0' and c = '1') or sctr = 9 then
				sctr <= (others => '0');
			else
				sctr <= sctr + 1;
			end if;
		end if;
	end process;
	
	stb <= '1' when sctr = 9 else '0';
	
-- Lock detector

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				lctr <= (others => '0');
				cctr <= (others => '0');
			elsif stb = '1' then
				if c = '1' then
					lctr <= (others => '0');
					if lock = '0' then
						cctr <= cctr + 1;
					end if;
				else
					lctr <= lctr + 1;
					if and_reduce(std_logic_vector(lctr)) = '1' then
						cctr <= (others => '0');
					end if;
				end if;
			end if;
		end if;
	end process;
	
	lock <= and_reduce(std_logic_vector(cctr));

-- Decoder

	dec_en <= stb and lock;
	
	dec: entity work.pdts_dec8b10b
		port map(
			clk => clk,
			rst => rst,
			en => dec_en,
			d => w,
			q => q,
			k => k,
			cerr => cerr,
			derr => derr
		);
	
-- Error check

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' or cerr = '1' or derr = '1' or lock = '0' then
				ectr <= (others => '0');
			elsif eok = '0' and dec_en = '1' then
				ectr <= ectr + 1;
			end if;
		end if;
	end process;
	
	eok <= and_reduce(std_logic_vector(ectr));
	locked <= eok;
	stbo <= dec_en and eok when rising_edge(clk);
	
end rtl;
