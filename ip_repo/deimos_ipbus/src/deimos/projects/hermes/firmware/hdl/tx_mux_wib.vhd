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

library ipbus;
use ipbus.ipbus.all;

use work.tx_mux_decl.all;

entity tx_mux_wib is
    port(
        S_AXI_ACLK: in std_logic;
        S_AXI_ARESETN: in std_logic;
        S_AXI_AWADDR: in std_logic_vector(7 downto 0);
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
        S_AXI_ARADDR: in std_logic_vector(7 downto 0);
        S_AXI_ARPROT: in std_logic_vector(2 downto 0);
        S_AXI_ARVALID: in std_logic;
        S_AXI_ARREADY: out std_logic;
        S_AXI_RDATA: out std_logic_vector(31 downto 0);
        S_AXI_RRESP: out std_logic_vector(1 downto 0);
        S_AXI_RVALID: out std_logic;
        S_AXI_RREADY: in std_logic;
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
        
        -- debugging IPBUS outputs
        dipb_addr: out std_logic_vector(31 downto 0);
        dipb_wdata: out std_logic_vector(31 downto 0);
        dipb_strobe: out std_logic;
        dipb_write: out std_logic;

        dipb_rdata: out std_logic_vector(31 downto 0);
        dipb_ack: out std_logic;
        dipb_err: out std_logic

    );

end entity tx_mux_wib;

architecture rtl of tx_mux_wib is

    attribute MARK_DEBUG : string;
    signal ipbw: ipb_wbus;
	signal ipbr: ipb_rbus;
    signal ipb_rst: std_logic;

begin

    bridge: entity ipbus.ipbus_axi4lite2ipb_wrapper
        generic map(
            C_S_AXI_ADDR_WIDTH => 8
        )
        port map(
            S_AXI_ACLK => S_AXI_ACLK,
            S_AXI_ARESETN => S_AXI_ARESETN,
            S_AXI_AWADDR => S_AXI_AWADDR,
            S_AXI_AWPROT => S_AXI_AWPROT,
            S_AXI_AWVALID => S_AXI_AWVALID,
            S_AXI_AWREADY => S_AXI_AWREADY,
            S_AXI_WDATA => S_AXI_WDATA,
            S_AXI_WSTRB => S_AXI_WSTRB,
            S_AXI_WVALID => S_AXI_WVALID,
            S_AXI_WREADY => S_AXI_WREADY,
            S_AXI_BRESP => S_AXI_BRESP,
            S_AXI_BVALID => S_AXI_BVALID,
            S_AXI_BREADY => S_AXI_BREADY,
            S_AXI_ARADDR => S_AXI_ARADDR,
            S_AXI_ARPROT => S_AXI_ARPROT,
            S_AXI_ARVALID => S_AXI_ARVALID,
            S_AXI_ARREADY => S_AXI_ARREADY,
            S_AXI_RDATA => S_AXI_RDATA,
            S_AXI_RRESP => S_AXI_RRESP,
            S_AXI_RVALID => S_AXI_RVALID,
            S_AXI_RREADY => S_AXI_RREADY,
            ipb_out_addr => ipbw.ipb_addr,
            ipb_out_wdata => ipbw.ipb_wdata,
            ipb_out_write => ipbw.ipb_write,
            ipb_out_strobe => ipbw.ipb_strobe,
            ipb_in_ack => ipbr.ipb_ack,
            ipb_in_err => ipbr.ipb_err,
            ipb_in_rdata => ipbr.ipb_rdata,
            ipb_rst => ipb_rst
        );

    dipb_addr   <= ipbw.ipb_addr;
    dipb_wdata  <= ipbw.ipb_wdata;
    dipb_strobe <= ipbw.ipb_strobe;
    dipb_write  <= ipbw.ipb_write;

    dipb_rdata  <= ipbr.ipb_rdata;
    dipb_ack    <= ipbr.ipb_ack;
    dipb_err    <= ipbr.ipb_err;

    mux: entity work.tx_mux_top
        generic map(
            N_SRC => 8
        )
        port map(
            ipb_clk => S_AXI_ACLK,
            ipb_rst => ipb_rst,
            ipb_in => ipbw,
            ipb_out => ipbr,      
            eth_rx_p => eth_rx_p,
            eth_rx_n => eth_rx_n,
            eth_tx_p => eth_tx_p,
            eth_tx_n => eth_tx_n,
            eth_tx_dis => eth_tx_dis,
            eth_los => eth_los,
            eth_clk_p => eth_clk_p,
            eth_clk_n => eth_clk_n,
            clk => clk,
            rst => rst,
            
            d(0).d     => d0,
            d(0).valid => d0_valid,
            d(0).last  => d0_last,
            
            d(1).d     => d1,
            d(1).valid => d1_valid,
            d(1).last  => d1_last,
            
            d(2).d     => d2,
            d(2).valid => d2_valid,
            d(2).last  => d2_last,
            
            d(3).d     => d3,
            d(3).valid => d3_valid,
            d(3).last  => d3_last,
            
            d(4).d     => d4,
            d(4).valid => d4_valid,
            d(4).last  => d4_last,
            
            d(5).d     => d5,
            d(5).valid => d5_valid,
            d(5).last  => d5_last,
            
            d(6).d     => d6,
            d(6).valid => d6_valid,
            d(6).last  => d6_last,
            
            d(7).d     => d7,
            d(7).valid => d7_valid,
            d(7).last  => d7_last
        );

end architecture rtl;
