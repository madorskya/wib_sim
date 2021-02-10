-- pdts_rx_phy
--
-- The receive PHY
--
-- In 'downstream mode', the PHY realigns clk to the incoming data stream
-- In 'upstream mode', the PHY delays the data stream to match clk
--
-- Dave Newbold, March 2017

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library unisim;
use unisim.VComponents.all;

use work.pdts_defs.all;

entity pdts_rx_phy is
	generic(
		UPSTREAM_MODE: boolean := false
	);
	port(
		rxclk: in std_logic; -- serial data clock
		rxd: in std_logic; -- serial data (rxclk domain)
		fdel: in std_logic_vector(3 downto 0) := "0000"; -- fine delay setting (rxclk cycles)
		cdel: in std_logic_vector(5 downto 0) := "000000"; -- coarse delay setting (clk cycles)
		fdel_out: out std_logic_vector(3 downto 0); -- actual fine delay (upstream mode)
		edge: out std_logic; -- sample edge (upstream mode)
		clk: in std_logic; -- base clock
		rec_rst: in std_logic; -- phy reset (clk domain)
		rst: in std_logic; -- decoder rst (clk domain)
		phase_rst: out std_logic; -- pll reset (clk domain)
		phase_locked: in std_logic := '1'; -- pll locked (async)
		aligned: out std_logic; -- data aligned flag (clk domain)
		rx_locked: out std_logic; -- decoder locked flag (clk domain)
		q: out std_logic_vector(7 downto 0); -- data out (clk domain)
		k: out std_logic; -- kchar out (clk domain)
		stbo: out std_logic -- strobe out (clk domain)
	);

end pdts_rx_phy;

architecture rtl of pdts_rx_phy is

	signal fdel_i: std_logic_vector(3 downto 0);
	signal rxdd: std_logic;
	signal dctr: unsigned(4 downto 0);
	signal wa, w, wd: std_logic_vector(9 downto 0);
	signal sctr: unsigned(3 downto 0);
	signal prst, pr, c, stb, tc, kok, aligned_i, stbd: std_logic;
	signal cctr: unsigned(TIMEOUT_W - 1 downto 0);
	signal kctr: unsigned(LOCK_CTR_W - 1 downto 0);
	signal ectr: unsigned(TIMEOUT_W - 1 downto 0);
	signal cerr, derr, eok: std_logic;
	
	attribute MARK_DEBUG: string;
	attribute MARK_DEBUG of w, c, prst, pr, stb, tc, kok, aligned_i, cerr, derr, eok: signal is "TRUE";
--	attribute MARK_DEBUG of wd, di, ki, cerr, derr, kerr, lock, lctr, ectr: signal is "TRUE";
		
begin

-- Fine delay

	fdel_i <= std_logic_vector(dctr(4 downto 1)) when UPSTREAM_MODE else fdel;
	fdel_out <= fdel_i;
	edge <= dctr(0);
	
	f_del: entity work.pdts_del
		generic map(
			WIDTH => 1,
			DEL_RADIX => 4
		)
		port map(
			clk => rxclk,
			a => fdel_i, -- CDC (in downstream mode), treat fdel as static signal
			d(0) => rxd,
			q(0) => rxdd
		);
		
-- Deserialiser and comma detector
	
	wa <= rxdd & wa(9 downto 1) when rising_edge(rxclk);
	w <= wa when rising_edge(clk);
 	c <= '1' when w = CCHAR_PD or w = CCHAR_ND else '0';

-- Strobe generator

	prst <= rec_rst or not phase_locked;
	
	process(clk)
	begin
		if rising_edge(clk) then
			if prst = '1' or pr = '1' then
				sctr <= "1111";
			else
				if sctr = "1111" then
					if c = '1' then
						sctr <= "0001";
					end if;
				elsif sctr = (10 / SCLK_RATIO) - 1 then
					sctr <= "0000";
				else
					sctr <= sctr + 1;
				end if;
			end if;
		end if;
	end process;
	
	stb <= not or_reduce(std_logic_vector(sctr));
	
-- Lock detector. We require 2^LOCK_CTR_W strobe-qualified commas in 2^TIMEOUT_W cycles to lock.

	process(clk)
	begin
		if rising_edge(clk) then
			if prst = '1' or pr = '1' then
				cctr <= (others => '0');
				kctr <= (others => '0');
				aligned_i <= '0';
			else
				cctr <= cctr + 1;
				if stb = '1' and c = '1' and kok = '0' then
					kctr <= kctr + 1;
				end if;
				if tc = '1' then
					aligned_i <= kok;
				end if;
			end if;
		end if;
	end process;
	
	tc <= and_reduce(std_logic_vector(cctr)); -- Asserted when timeout period is up
	kok <= and_reduce(std_logic_vector(kctr)); -- Asserted when we have enough commmas found
	pr <= tc and not kok; -- Time to try a new phase

	aligned <= aligned_i;
	phase_rst <= pr and phase_locked when not UPSTREAM_MODE else '0';
	
-- Phase counter for upstream mode

	process(clk)
	begin
		if rising_edge(clk) then
			if prst = '1' then
				dctr <= (others => '0');
			elsif pr = '1' then
				if dctr = to_unsigned(SCLK_RATIO - 1, 4) & '1' then
					dctr <= (others => '0');
				else
					dctr <= dctr + 1;
				end if;
			end if;
		end if;
	end process;	

-- Coarse delay

	c_del: entity work.pdts_del
		generic map(
			WIDTH => 11,
			DEL_RADIX => 6
		)
		port map(
			clk => clk,
			a => cdel, -- CDC, treat cdel as static signal
			d(10) => stb,
			d(9 downto 0) => w,
			q(10) => stbd,
			q(9 downto 0) => wd
		);
	
-- Decoder
	
	dec: entity work.pdts_dec8b10b
		port map(
			clk => clk,
			rst => rst,
			en => stbd,
			d => wd,
			q => q,
			k => k,
			cerr => cerr,
			derr => derr
		);

	stbo <= stbd and eok when rising_edge(clk);
	
-- Error check

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' or cerr = '1' or derr = '1' then
				ectr <= (others => '0');
			elsif eok = '0' then
				ectr <= ectr + 1;
			end if;
		end if;
	end process;
	
	eok <= and_reduce(std_logic_vector(ectr));
	rx_locked <= eok;
	
end rtl;
