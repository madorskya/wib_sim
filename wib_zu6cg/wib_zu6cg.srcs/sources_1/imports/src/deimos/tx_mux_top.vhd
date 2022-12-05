-- txmux_top
--
-- Multiplexes data blocks from multiple sources onto ethernet UDP packet stream
--
-- This top level block wraps the multiplexer, UDP core and control functions
--
-- Dave Newbold, 6/10/22

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

library ipbus;
use work.ipbus.all;
use work.ipbus_decode_tx_mux_top.all;

use work.tx_mux_decl.all;

entity tx_mux_top is
    generic(
        N_SRC: positive
    );
    port(
        ipb_clk: in std_logic;
        ipb_rst: in std_logic;
        ipb_in: in  ipb_wbus;
        ipb_out: out ipb_rbus;        
        eth_rx_p: in std_logic; -- Ethernet rx from SFP
        eth_rx_n: in std_logic;
        eth_tx_p: out std_logic; -- Ethernet tx to SFP
        eth_tx_n: out std_logic;
        eth_tx_dis: out std_logic; -- SFP tx_disable
        eth_los: in std_logic; -- SFP LOS
        eth_clk_p: in std_logic; -- Transceiver refclk
        eth_clk_n: in std_logic;
        clk: in std_logic; -- DUNE base clock
        rst: in std_logic; -- DUNE base clock sync reset
        d: in src_d_array(N_SRC - 1 downto 0) -- Data from sources
    );

end entity tx_mux_top;

architecture rtl of tx_mux_top is

    signal ipbw: ipb_wbus_array(N_SLAVES - 1 downto 0);
	signal ipbr: ipb_rbus_array(N_SLAVES - 1 downto 0);
    signal q: src_d;    
    signal gtclku, gtclk, clkfb, clku, eth_clk, eth_ready, locked: std_logic;
    signal eth_rst: std_logic := '1';
begin

-- Tied-off signals

    eth_tx_p <= '0';
    eth_tx_n <= '1';
    eth_tx_dis <= '0';

-- Ethernet clock generation

    clkibuf: IBUFDS_GTE4
        generic map(
            REFCLK_EN_TX_PATH => '0',
            REFCLK_HROW_CK_SEL => "00",
            REFCLK_ICNTL_RX => "00"
        )
        port map(
            i => eth_clk_p,
            ib => eth_clk_n,
            o => open,
            odiv2 => gtclku,
            ceb => '0'
        );
        
    clkbuf: BUFG_GT
        port map(
            i => gtclku,
            o => gtclk,
            ce => '1',
            cemask => '1',
            clr => '0',
            clrmask => '1',
            div => "000"
        );

    mmcm: MMCME4_BASE
        generic map(
            clkin1_period => 8.0,
            clkfbout_mult_f => 10.0, -- 1250MHz VCO
            clkout1_divide => 8
        )
        port map(
            clkin1 => gtclk,
            clkfbin => clkfb,
            clkfbout => clkfb,
            clkout1 => clku,
            locked => locked,
            rst => '0',
            pwrdwn => '0'
        );

    bufg0: BUFG
        port map(
            i => clku,
            o => eth_clk
        );

    eth_rst <= not locked when rising_edge(eth_clk);

-- ipbus stuff

    fabric: entity work.ipbus_fabric_sel
        generic map(
            NSLV => N_SLAVES,
            SEL_WIDTH => IPBUS_SEL_WIDTH
        )
        port map(
            ipb_in => ipb_in,
            ipb_out => ipb_out,
            sel => ipbus_sel_tx_mux_top(ipb_in.ipb_addr),
            ipb_to_slaves => ipbw,
            ipb_from_slaves => ipbr
        );

-- Mux

    mux: entity work.tx_mux
        generic map(
            N_SRC => N_SRC
        )
        port map(
            ipb_clk => ipb_clk,
            ipb_rst => ipb_rst,
            ipb_in => ipbw(N_SLV_MUX),
            ipb_out => ipbr(N_SLV_MUX),
            src_clk => clk,
            src_rst => rst,
            d => d,
            eth_clk => eth_clk,
            eth_rst => eth_rst,
            eth_q => q,
            eth_ready => eth_ready
        );    

    sink: entity work.tx_mux_tb_rx
        generic map(
            N_SRC => N_SRC
        )
        port map(
            ipb_clk => ipb_clk,
            ipb_rst => ipb_rst,
            ipb_in => ipbw(N_SLV_RX),
            ipb_out => ipbr(N_SLV_RX),
            eth_clk => eth_clk,
            eth_rst => eth_rst,
            eth_ready => eth_ready,
            d => q
        );

end architecture rtl;
