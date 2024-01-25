-- wib_top
--
-- Multiplexes data blocks from multiple sources onto ethernet UDP packet stream
--
-- This is the top level block for the WIB core, with interface compatible with the ip packager (no custom types, etc)
--
-- Dave Newbold, 2/1/23

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ipbus;
use ipbus.ipbus.all;

use work.tx_mux_decl.all;
use work.freq_pkg.all;

entity wib_top is
    port(
        S_AXI_ACLK: in std_logic;
        S_AXI_ARESETN: in std_logic;
        S_AXI_AWADDR: in std_logic_vector(15 downto 0);
        S_AXI_AWPROT: in std_logic_vector(2 downto 0);
        S_AXI_AWVALID: in std_logic;
        S_AXI_AWREADY: out std_logic;
        S_AXI_WDATA: in std_logic_vector(31 downto 0);
        S_AXI_WSTRB: in std_logic_vector(3 downto 0);
        S_AXI_WVALID: in std_logic;
        S_AXI_WREADY: out std_logic;
        S_AXI_BRESP: out std_logic_vector(1 downto 0);
        S_AXI_BVALID: out std_logic;
        S_AXI_BREADY: in std_logic;
        S_AXI_ARADDR: in std_logic_vector(15 downto 0);
        S_AXI_ARPROT: in std_logic_vector(2 downto 0);
        S_AXI_ARVALID: in std_logic;
        S_AXI_ARREADY: out std_logic;
        S_AXI_RDATA: out std_logic_vector(31 downto 0);
        S_AXI_RRESP: out std_logic_vector(1 downto 0);
        S_AXI_RVALID: out std_logic;
        S_AXI_RREADY: in std_logic;
        eth0_rx_p: in std_logic; -- Ethernet rx from SFP
        eth0_rx_n: in std_logic;
        eth0_tx_p: out std_logic; -- Ethernet tx to SFP
        eth0_tx_n: out std_logic;
        eth0_tx_dis: out std_logic; -- SFP tx_disable
        eth1_rx_p: in std_logic; -- Ethernet rx from SFP
        eth1_rx_n: in std_logic;
        eth1_tx_p: out std_logic; -- Ethernet tx to SFP
        eth1_tx_n: out std_logic;
        eth1_tx_dis: out std_logic; -- SFP tx_disable
        eth_clk_p: in std_logic; -- Transceiver refclk
        eth_clk_n: in std_logic;
        clk: in std_logic; -- DUNE base clock
        rst: in std_logic; -- DUNE base clock sync reset
        d0: in std_logic_vector(63 downto 0);
        d0_valid: in std_logic;
        d0_last: in std_logic;
        d1: in std_logic_vector(63 downto 0);
        d1_valid: in std_logic;
        d1_last: in std_logic;
        d2: in std_logic_vector(63 downto 0);
        d2_valid: in std_logic;
        d2_last: in std_logic;
        d3: in std_logic_vector(63 downto 0);
        d3_valid: in std_logic;
        d3_last: in std_logic;
        d4: in std_logic_vector(63 downto 0);
        d4_valid: in std_logic;
        d4_last: in std_logic;
        d5: in std_logic_vector(63 downto 0);
        d5_valid: in std_logic;
        d5_last: in std_logic;
        d6: in std_logic_vector(63 downto 0);
        d6_valid: in std_logic;
        d6_last: in std_logic;
        d7: in std_logic_vector(63 downto 0);
        d7_valid: in std_logic;
        d7_last: in std_logic;
        ts : in std_logic_vector(63 downto 0);
        ext_mac_addr_0  : in std_logic_vector(47 downto 0);
        ext_ip_addr_0   : in std_logic_vector(31 downto 0);
        ext_port_addr_0 : in std_logic_vector(15 downto 0);
        ext_mac_addr_1  : in std_logic_vector(47 downto 0);
        ext_ip_addr_1   : in std_logic_vector(31 downto 0);
        ext_port_addr_1 : in std_logic_vector(15 downto 0)
    );         
end entity wib_top;

architecture rtl of wib_top is

    signal ipbw: ipb_wbus;
    signal ipbr: ipb_rbus;
    signal ipb_clk, ipb_rst: std_logic;
    signal nuke, soft_rst: std_logic;
    constant C_S_AXI_ADDR_WIDTH: integer := 16;

begin

    ipb_ctrl : entity work.ipb_axi4_lite_ctrl
        port map (
            aclk => S_AXI_ACLK,
            aresetn => S_AXI_ARESETN,
            axi_in.awaddr(31 downto C_S_AXI_ADDR_WIDTH) => (others => '0'),
            axi_in.awaddr(C_S_AXI_ADDR_WIDTH - 1 downto 0) => S_AXI_AWADDR,
            axi_in.awprot => S_AXI_AWPROT,
            axi_in.awvalid => S_AXI_AWVALID,
            axi_in.wdata => S_AXI_WDATA,
            axi_in.wstrb => S_AXI_WSTRB,
            axi_in.wvalid => S_AXI_WVALID,
            axi_in.bready => S_AXI_BREADY,
            axi_in.araddr(31 downto C_S_AXI_ADDR_WIDTH) => (others => '0'),
            axi_in.araddr(C_S_AXI_ADDR_WIDTH - 1 downto 0) => S_AXI_ARADDR,     
            axi_in.arprot => S_AXI_ARPROT,
            axi_in.arvalid => S_AXI_ARVALID,
            axi_in.rready => S_AXI_RREADY,
            axi_out.awready => S_AXI_AWREADY,
            axi_out.wready => S_AXI_WREADY,
            axi_out.bresp => S_AXI_BRESP,
            axi_out.bvalid => S_AXI_BVALID,
            axi_out.arready => S_AXI_ARREADY,
            axi_out.rdata => S_AXI_RDATA,
            axi_out.rresp => S_AXI_RRESP,
            axi_out.rvalid => S_AXI_RVALID,

            ipb_clk => ipb_clk,
            ipb_rst => ipb_rst,
            ipb_in => ipbr,
            ipb_out => ipbw,
            nuke =>  nuke,
            soft_rst => soft_rst
            );

    mux: entity work.wib_eth_readout
        generic map(
            N_SRC => 4,
            N_MGT => 2,
            REF_FREQ => f125
        )
        port map(
            ipb_clk                => ipb_clk,
            ipb_rst                => ipb_rst,
            ipb_in                 => ipbw,
            ipb_out                => ipbr,
            eth_rx_p               => (0 => eth0_rx_p , 1 => eth1_rx_p  , others => '0'),
            eth_rx_n               => (0 => eth0_rx_n , 1 => eth1_rx_n  , others => '0'),
            eth_tx_p(0)            => eth0_tx_p,
            eth_tx_p(1)            => eth1_tx_p,
            eth_tx_n(0)            => eth0_tx_n,
            eth_tx_n(1)            => eth1_tx_n,
            eth_tx_dis(0)          => eth0_tx_dis,
            eth_tx_dis(1)          => eth1_tx_dis,
            eth_clk_p              => eth_clk_p,
            eth_clk_n              => eth_clk_n,
            clk                    => clk,
            rst                    => rst,
            -- Temporary
            nuke => nuke,
            soft_rst => soft_rst,
            d(0)(0).d                 => d0,
            d(0)(0).valid             => d0_valid,
            d(0)(0).last              => d0_last,
            d(0)(1).d                 => d1,
            d(0)(1).valid             => d1_valid,
            d(0)(1).last              => d1_last,
            d(0)(2).d                 => d2,
            d(0)(2).valid             => d2_valid,
            d(0)(2).last              => d2_last,
            d(0)(3).d                 => d3,
            d(0)(3).valid             => d3_valid,
            d(0)(3).last              => d3_last,
            d(1)(0).d                 => d4,
            d(1)(0).valid             => d4_valid,
            d(1)(0).last              => d4_last,
            d(1)(1).d                 => d5,
            d(1)(1).valid             => d5_valid,
            d(1)(1).last              => d5_last,
            d(1)(2).d                 => d6,
            d(1)(2).valid             => d6_valid,
            d(1)(2).last              => d6_last,
            d(1)(3).d                 => d7,
            d(1)(3).valid             => d7_valid,
            d(1)(3).last              => d7_last,
            ts                        => ts,
            ext_mac_addr(0)           => ext_mac_addr_0,
            ext_mac_addr(1)           => ext_mac_addr_1,
            ext_ip_addr(0)            => ext_ip_addr_0,
            ext_ip_addr(1)            => ext_ip_addr_1,
            ext_port_addr(0)          => ext_port_addr_0,
            ext_port_addr(1)          => ext_port_addr_1
        );

end architecture rtl;
