-- tx_mux_wib
--
-- Multiplexes data blocks from multiple sources onto ethernet UDP packet stream
--
-- This block wraps the multiplexer, UDP core and control functions
--
-- Dave Newbold, 2/1/23

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ipbus;
use ipbus.ipbus.all;

use work.ipbus_decode_tx_mux_wib.all;

use work.tx_mux_decl.all;

library axi4_lib;
use axi4_lib.axi4s_pkg.all;

entity tx_mux_wib is
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
        eth_clk_p: in std_logic; -- Transceiver refclk
        eth_clk_n: in std_logic;
        clk: in std_logic; -- DUNE base clock
        rst: in std_logic; -- DUNE base clock sync reset
        d: in src_d_array(N_SRC - 1 downto 0) -- Data from sources
    );

end entity tx_mux_wib;

architecture rtl of tx_mux_wib is

    signal ipbw: ipb_wbus_array(N_SLAVES - 1 downto 0);
	signal ipbr: ipb_rbus_array(N_SLAVES - 1 downto 0);
    signal eth_clk, eth_rst: std_logic;
    signal eth_d: src_d;
    signal eth_ready, udp_ready: std_logic;
    signal tx_axi4s_mosi, rx_axi4s_mosi: t_axi4s_mosi;
    signal tx_axi4s_miso, rx_axi4s_miso: t_axi4s_miso;
    signal rxp, rxn, txp, txn, tx_dis: std_logic_vector(3 downto 0);

begin

-- ipbus address decoder

    fabric: entity ipbus.ipbus_fabric_sel
        generic map(
            NSLV => N_SLAVES,
            SEL_WIDTH => IPBUS_SEL_WIDTH
        )
        port map(
            ipb_in => ipb_in,
            ipb_out => ipb_out,
            sel => ipbus_sel_tx_mux_wib(ipb_in.ipb_addr),
            ipb_to_slaves => ipbw,
            ipb_from_slaves => ipbr
        );

-- Multiplexer

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
            eth_q => eth_d,
            eth_ready => eth_ready
        );

-- Convert to axi4s

    shim: entity work.tx_mux_axi4s_shim
        port map(
            mux_d => eth_d,
            mux_ready => eth_ready,
            axi4s_mosi => tx_axi4s_mosi,
            axi4s_miso => tx_axi4s_miso
        );

-- UDP core

    udp: entity work.tx_path
        generic map(
            N_MGT => 1
        )
        port map(
            eth_clk_p => eth_clk_p,
            eth_clk_n => eth_clk_n,
            ipb_clk => ipb_clk,
            ipb_rst => ipb_rst,
            ipb_in => ipbw(N_SLV_UDP),
            ipb_out => ipbr(N_SLV_UDP),
            clk_drp => ipb_clk,
            clk_156_o => eth_clk,
            sfp_rxp_array => rxp,
            sfp_rxn_array => rxn,
            sfp_txp_array => txp,
            sfp_txn_array => txn,
            sfp_tx_dis_array => tx_dis,
            tx_path_ready => udp_ready,
            tx_in_axis_aclk_0 => eth_clk,
            tx_in_axis_arst_0 => eth_rst,
            tx_in_axis_mosi_0 => tx_axi4s_mosi,
            tx_in_axis_miso_0 => tx_axi4s_miso,
            rx_out_axis_aclk_0 => eth_clk,
            rx_out_axis_arst_0 => eth_rst,
            rx_out_axis_miso_0 => rx_axi4s_miso,
            rx_out_axis_mosi_0 => rx_axi4s_mosi
        );

    eth_rst <= not udp_ready;

    rxp<= (0 => eth_rx_p, others => '0');
    rxn <= (0 => eth_rx_n, others => '0');
    eth_tx_p <= txp(0);
    eth_tx_n <= txn(0);
    eth_tx_dis <= tx_dis(0);

end architecture rtl;
