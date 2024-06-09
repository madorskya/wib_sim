-- pdts_ep_cdr
--
-- Clock-data recovery block for PDTS endpoint
--
-- Dave Newbold, December 2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library unisim;
use unisim.VComponents.all;

use work.pdts_clock_defs.all;

entity pdts_ep_cdr is
	generic(
		USE_EXT_PLL: boolean := false; -- Assert to enable use of external clock
		EXT_PLL_DIV: positive := 2; -- Division factor for PLL clock return (keep at 2 for no PLL)
		BUFG_IN_DATAPATH : boolean := false -- buffer with BUFG on way to BUFR/MMCM in order to allow MMCM placement in Trenz on MIB 
	);
	port(
		d: in std_logic; -- Timing signal input
		los: in std_logic; -- LOS input
		rclko: out std_logic; -- Recovered clock output
		rclki: in std_logic := '0'; -- Recovered clock return
		rsti: in std_logic := '0'; -- Async reset
		clko: out std_logic; -- Output clock
		clko4x: out std_logic; -- Output sample clock
		clko2x: out std_logic; -- 2x clock for user application
		rsto: out std_logic; -- clko domain reset (clko domain)
		cdr_rst: in std_logic; -- CDR block resync (clko domain)
		q: out std_logic; -- Data stream (clko domain)
		locked: out std_logic; -- Asserted when clko good (clko domain)
		phase: in std_logic_vector(11 downto 0); -- Phase setting (clko domain)
		phase_done: out std_logic; -- Phase done flag (clko domain)
		dbg: out std_logic_vector(11 downto 0) -- CDR debug information (clko domain)
	);

end pdts_ep_cdr;

architecture rtl of pdts_ep_cdr is

	signal bclk, bclk_f, clkin, clkfb, clku, clku4x, clku2x: std_logic;
	signal d_as_clk: std_logic;
	signal mlock, clk, clk4x, clk2x, psincdec, psen, psdone: std_logic;
	signal rsta, rst, rstm: std_logic;
	signal cphase: std_logic_vector(11 downto 0);
	signal psact, psd: std_logic;
	
	attribute ASYNC_REG: string;
	attribute ASYNC_REG of rsta, rst: signal is "yes";
	
begin



    -- Route from IBUFDS in IO to MMCM via a BUFG (only needed for MIB)
    -- FIXME - re-write as VHDL-2008 if generate else.
   gen_bufg: if BUFG_IN_DATAPATH = TRUE generate
      begin
        bufg_d_as_clk : BUFG
            port map (
                O => d_as_clk, -- 1-bit output: Clock output
                I => d  -- 1-bit input: Clock input
            );
            end generate;
   gen_no_bufg: if BUFG_IN_DATAPATH = false generate
      begin
        d_as_clk <= d;
      end generate;

    -- Clock divider (divide DCSK by 2 and get a clock... )
	bufr0: BUFR
		generic map(
			BUFR_DIVIDE => "2"
		)
		port map(
			i => d_as_clk,
			o => bclk,
			ce => '1',
			clr => '0'
		);

-- Clock forwarding to PLL; user must instantiate an OBUFDS if differential clock output
		
	bufgb: BUFG -- Needed for case where clock-forwarding ODDR is not in the same bank as the BUFR
		port map(
			i => bclk,
			o => bclk_f
	);
	
	oddr_rclko: ODDR -- Feedback clock, not through MMCM
		generic map(
				DDR_CLK_EDGE => "SAME_EDGE",
				SRTYPE => "ASYNC" -- Needed for forward compatibility with ultrascale
			)
		port map(
			q => rclko,
			c => bclk_f,
			ce => '1',
			d1 => '0',
			d2 => '1',
			r => '0',
			s => '0'
		);

-- PLL

	clkin <= rclki when USE_EXT_PLL else bclk;
	rstm <= rsti or los;
		
	mmcm: MMCME2_ADV
		generic map(
			CLKIN1_PERIOD => (1000.0 * real(EXT_PLL_DIV) / CLK_FREQ), -- Input clock (62.5MHz)
			CLKFBOUT_MULT_F => real(EP_VCO_RATIO * EXT_PLL_DIV), -- VCO around 1GHz
			CLKOUT0_DIVIDE_F => real(EP_VCO_RATIO), -- System clock (62.5MHz)
			CLKOUT1_DIVIDE => EP_VCO_RATIO / 4, -- 4x system clock (250MHz)
			CLKOUT2_DIVIDE => EP_VCO_RATIO / 2, -- 2x system clock (125MHz)
			CLKOUT0_USE_FINE_PS => true,
			CLKOUT1_USE_FINE_PS => true,
			CLKOUT2_USE_FINE_PS => true
		)
		port map(
			clkin1 => clkin,
			clkin2 => '0',
			clkfbin => clkfb,
			clkout0 => clku,
			clkout1 => clku4x,
			clkout2 => clku2x,
			clkfbout => clkfb,
			locked => mlock,
			rst => rstm,
			pwrdwn => '0',
			clkinsel => '1',
			daddr => "0000000",
			di => X"0000",
			dwe => '0',
			den => '0',
			dclk => '0',
			psincdec => psincdec,
			psen => psen,
			psclk => clk,
			psdone => psdone
		);
		
	bufg0: BUFG
		port map(
			i => clku,
			o => clk
	);
	
	clko <= clk;

	bufg4x: BUFG
		port map(
			i => clku4x,
			o => clk4x
	);
	
	clko4x <= clk4x;
	
	bufg2x: BUFG
		port map(
			i => clku2x,
			o => clk2x
	);
	
	clko2x <= clk2x;

-- Reset

	rsta <= not mlock when rising_edge(clk); -- CDC; different clocks
	rst <= rsta when rising_edge(clk); -- Synchroniser FF
	rsto <= rst;

-- Phase shift

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				cphase <= X"000";
				psact <= '0';
			else
				if psact = '0' then
					if psd = '0' then
						psen <= '1';
						psact <= '1';
						if unsigned(cphase) < unsigned(phase) then
							psincdec <= '1';
						else
							psincdec <= '0';
						end if;
					end if;
				else
					psen <= '0';
					if psdone = '1' then
						if psincdec = '1' then
							cphase <= std_logic_vector(unsigned(cphase) + 1);
						else
							cphase <= std_logic_vector(unsigned(cphase) - 1);
						end if;
						psact <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;
	
	psd <= '1' when cphase = phase else '0';
	phase_done <= psd;

-- Data sampler

	sm: entity work.pdts_cdr_sampler
		port map(
			clk => clk,
			clk4x => clk4x,
			rst => rst,
			resync => cdr_rst,
			d => d,
			q => q,
			locked => locked,
			dbg => dbg
		);

end rtl;
