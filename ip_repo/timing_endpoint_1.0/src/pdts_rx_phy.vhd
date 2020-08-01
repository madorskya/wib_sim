-- pdts_rx_phy
--
-- The receive PHY
--
-- Dave Newbold, March 2017

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_rx_phy is
	port(
		fclk: in std_logic; -- free-running clock
		rxclk: in std_logic; -- serial data clock
		rxrst: in std_logic; -- reset (rxclk domain)
		rxd: in std_logic; -- serial data (rxclk domain)
		phase_rst: out std_logic; -- pll reset (clk domain)
		phase_locked: in std_logic; -- pll locked (async)
		aligned: out std_logic; -- data aligned flag (clk domain)
		clk: in std_logic; -- base clock
		rst: in std_logic; -- base clock rst (clk domain)
		rx_locked: out std_logic; -- decoder locked flag (clk domain)
		q: out std_logic_vector(7 downto 0); -- data out (clk domain)
		k: out std_logic; -- kchar out (clk domain)
		stbo: out std_logic -- strobe out (clk domain)
	);

end pdts_rx_phy;

architecture rtl of pdts_rx_phy is

	signal c: std_logic;
	signal wa, w, t: std_logic_vector(9 downto 0) := "0000000000";
	signal tr, f, fr, done, m, stb, aligned_i: std_logic;
	signal ctr: unsigned(4 downto 0) := (others => '0');
	signal sctr: unsigned(3 downto 0);
	signal fctr: unsigned(3 downto 0) := X"0";
	signal di: std_logic_vector(7 downto 0);
	signal lctr: unsigned(COMMA_TIMEOUT_W - 1 downto 0);
	signal stbd, ki, lock, ldone, kerr, cerr, derr: std_logic;
	
begin

-- Input shift register

	wa <= rxd & wa(9 downto 1) when rising_edge(rxclk);
	
-- Comma det

	process(rxclk)
	begin
		if rising_edge(rxclk) then
			if wa = CCHAR_PD or wa = CCHAR_ND then
				c <= '1';
			else
			 	c <= '0';
			end if;
			if c = '1' then
				t <= "0000000001"; -- Ring counter for high speed rxclk
			else
				t <= t(0) & t(9 downto 1);
			end if;
			f <= (f or c) and not rxrst;
		end if;
	end process;

-- Data capture

	fctr <= fctr + 1 when rising_edge(fclk);

	process(clk)
	begin
		if rising_edge(clk) then
			w <= wa;
			tr <= t(2);
			fr <= f;
			if phase_locked = '0' or fr = '0' then
				ctr <= (others => '0');
				m <= '1';
				sctr <= fctr; -- CDC; randomise starting value of stb counter, don't care about bit synchronisation
			else
				if sctr = (10 / SCLK_RATIO) - 1 then
					sctr <= X"0";
				else
					sctr <= sctr + 1;
				end if;
				if done = '0' and stb = '1' then
					ctr <= ctr + 1;
					m <= m and tr;
				end if;
			end if;
		end if;
	end process;
		
	stb <= not or_reduce(std_logic_vector(sctr));
	done <= and_reduce(std_logic_vector(ctr));
	phase_rst <= done and not m and phase_locked;
	aligned_i <= done and m;
	aligned <= aligned_i;
	
-- Decoder
	
	dec: entity work.pdts_dec8b10b
		port map(
			clk => clk,
			rst => rst,
			en => stb,
			d => w,
			q => di,
			k => ki,
			cerr => cerr,
			derr => derr
		);

	kerr <= '1' when ki = '1' and di /= CCHAR and di /= SCHAR else '0';

	process(clk)
	begin
		if rising_edge(clk) then
			if stbd = '1' then
				if ki = '1' or rst = '1' then
					lctr <= (others => '0');
				else
					lctr <= lctr + 1;
				end if;
				lock <= (lock or ki) and not (rst or ldone or (cerr or derr or kerr));
			end if;
			stbd <= stb;
		end if;
	end process;

	ldone <= and_reduce(std_logic_vector(lctr));
	rx_locked <= lock and aligned_i;
	
	k <= ki;
	
	process(di, ki)
	begin
		if ki = '1' then
			if di = CCHAR then
				q <= X"00";
			else
				q <= X"01";
			end if;
		else
			q <= di;
		end if;
	end process;
	
	stbo <= stbd;

end rtl;
