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
		fclk: in std_logic; -- free-running clock
		fdel: in std_logic_vector(3 downto 0); -- Fine delay setting (rxclk cycles)
		cdel: in std_logic_vector(5 downto 0); -- Coarse delay setting (clk cycles)
		fdel_out: out std_logic_vector(3 downto 0); -- Actual fine delay (upstream mode)
		edge: out std_logic; -- Sample edge (upstream mode)
		rxclk: in std_logic; -- serial data clock
		rxrst: in std_logic; -- reset (rxclk domain)
		rxd: in std_logic; -- serial data (rxclk domain)
		phase_rst: out std_logic; -- pll reset (clk domain)
		phase_locked: in std_logic := '1'; -- pll locked (async)
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

	signal rxdd, c: std_logic;
	signal fdel_i: std_logic_vector(3 downto 0);
	signal wa, w, wd, t: std_logic_vector(9 downto 0) := "0000000000";
	signal tr, f, fr, done, m, stb, aligned_i, kok, phase_rst_i: std_logic;
	signal ctr: unsigned(7 downto 0) := (others => '0');
	signal sctr: unsigned(3 downto 0);
	signal fctr, kctr: unsigned(3 downto 0) := X"0";
	signal dctr: unsigned(4 downto 0);
	signal di: std_logic_vector(7 downto 0);
	signal ectr, lctr: unsigned(COMMA_TIMEOUT_W - 1 downto 0);
	signal stbd, stbdd, ki, lock, ldone, edone, kerr, cerr, derr: std_logic;
	
	attribute MARK_DEBUG: string;
	attribute MARK_DEBUG of w, tr, fr, ctr, stb, kctr, m, done, kok, phase_rst_i, dctr, aligned_i: signal is "TRUE";
	attribute MARK_DEBUG of wd, di, ki, cerr, derr, kerr, lock, lctr, ectr: signal is "TRUE";
		
begin

-- Fine delay and shift register

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
			a => fdel_i, -- CDC (in downstream mode), treat cdel as static signal
			d(0) => rxd,
			q(0) => rxdd
		);
	
	wa <= rxdd & wa(9 downto 1) when rising_edge(rxclk);
	
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
			f <= (f or c) and not (rxrst or phase_rst_i);
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
				sctr <= fctr; -- CDC; randomise starting value of stb counter, don't care about bit synchronisation
				kctr <= X"0";
				m <= '1';				
			else
				if sctr = (10 / SCLK_RATIO) - 1 then
					sctr <= X"0";
				else
					sctr <= sctr + 1;
				end if;
				if stb = '1' then
					if done = '1' then
						ctr <= (others => '0');
						kctr <= X"0";
						m <= '1';
					else
						ctr <= ctr + 1;
						if w = CCHAR_PD or w = CCHAR_ND then
							kctr <= kctr + 1;
						end if;
						m <= m and tr;
					end if;
				end if;
			end if;
		end if;
	end process;
		
	stb <= not or_reduce(std_logic_vector(sctr));
	done <= and_reduce(std_logic_vector(ctr));
	kok <= '1' when kctr > KCTR_REQ else '0';
	phase_rst_i <= (phase_rst_i or (done and not (m and kok))) and fr and not rxrst when rising_edge(clk);
	phase_rst <= phase_rst_i and phase_locked when not UPSTREAM_MODE else '0';

	process(clk)
	begin
		if rising_edge(clk) then
			if rxrst = '1' then
				dctr <= (others => '0');
				aligned_i <= '0';
			elsif done = '1' then
				if m = '0' or kok = '0' then
					if dctr = to_unsigned(SCLK_RATIO - 1, 4) & '1' then
						dctr <= (others => '0');
					else
						dctr <= dctr + 1;
					end if;
				end if;
				aligned_i <= m and kok;
			end if;
		end if;
	end process;
	
	aligned <= aligned_i;

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
			q => di,
			k => ki,
			cerr => cerr,
			derr => derr
		);

	kerr <= '1' when ki = '1' and di /= CCHAR and di /= SCHAR else '0';

	process(clk)
	begin
		if rising_edge(clk) then
			if stbdd = '1' then
				if ki = '1' or rst = '1' then
					lctr <= (others => '0');
				else
					lctr <= lctr + 1;
				end if;
				lock <= (lock or ki) and not (rst or ldone or (cerr or derr or kerr));
				if lock = '0' then
					ectr <= (others => '0');
				elsif edone = '0' then
					ectr <= ectr + 1;
				end if;
			end if;
			stbdd <= stbd;
		end if;
	end process;

	ldone <= and_reduce(std_logic_vector(lctr));
	edone <= and_reduce(std_logic_vector(ectr));
	rx_locked <= edone and aligned_i;
	
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
	
	stbo <= stbdd and edone and aligned_i;

end rtl;
