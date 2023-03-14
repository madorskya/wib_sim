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

use work.freq_pkg.all;
use work.version_pkg.all;

entity tx_mux_wib is
    generic(
        N_SRC: positive;
        N_MGT: positive;
        REF_FREQ: t_freq := f156_25
    );
    port(
        ipb_clk: in std_logic;
        ipb_rst: in std_logic;
        ipb_in: in  ipb_wbus;
        ipb_out: out ipb_rbus;
        eth_rx_p: in std_logic_vector(3 downto 0); -- Ethernet rx from SFP
        eth_rx_n: in std_logic_vector(3 downto 0);
        eth_tx_p: out std_logic_vector(3 downto 0); -- Ethernet tx to SFP
        eth_tx_n: out std_logic_vector(3 downto 0);
        eth_tx_dis: out std_logic_vector(3 downto 0); -- SFP tx_disable
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
    signal eth_d: src_d_array(N_MGT - 1 downto 0);
    signal eth_ready: std_logic_vector(N_MGT - 1 downto 0);
    signal udp_ready: std_logic;
    signal tx_axi4s_mosi: t_axi4s_mosi_arr(3 downto 0);
    signal tx_axi4s_miso: t_axi4s_miso_arr(3 downto 0);
    constant N_INFO_REG: positive := 3;

    signal info_vec: std_logic_vector(N_INFO_REG*32-1 downto 0);
    signal refclk_info: std_logic_vector(3 downto 0);

    constant BOARD_DESIGN_ID : std_logic_vector(7 downto 0) := X"07";

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
    refclk_info <= X"1" when (REF_FREQ = f156_25) else
                  X"2" when (REF_FREQ = f125)    else 
                  X"0";

    info_vec <= 
        -- generics
        X"000" & refclk_info & std_logic_vector(to_unsigned(N_MGT, 8)) & std_logic_vector(to_unsigned(N_SRC, 8)) &
        -- version
        BOARD_DESIGN_ID & C_VERSION_HEX & 
        -- magic
        X"DEADBEEF";

    info : entity ipbus.ipbus_roreg_v
        generic map(
                N_REG => N_INFO_REG,
                DATA => info_vec
            )
        port map(
            ipb_in => ipbw(N_SLV_INFO),
            ipb_out => ipbr(N_SLV_INFO)
        );

    mux: entity work.tx_mux
        generic map(
            N_SRC => N_SRC,
            N_MGT => N_MGT
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

    mux_gen: for i in N_MGT - 1 downto 0 generate

        shim: entity work.tx_mux_axi4s_shim
            port map(
                mux_d => eth_d(i),
                mux_ready => eth_ready(i),
                axi4s_mosi => tx_axi4s_mosi(i),
                axi4s_miso => tx_axi4s_miso(i)
            );

    end generate;
        
    mux_gen_n: for i in 3 downto N_MGT generate

        tx_axi4s_mosi(i) <= c_axi4s_mosi_default;

    end generate;

-- UDP core

    udp: entity work.tx_path
        generic map(
            N_MGT       => N_MGT,
            ref_freq    => REF_FREQ
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
            sfp_rxp_array => eth_rx_p,
            sfp_rxn_array => eth_rx_n,
            sfp_txp_array => eth_tx_p,
            sfp_txn_array => eth_tx_n,
            sfp_tx_dis_array => eth_tx_dis,
            tx_path_ready => udp_ready,
            tx_in_axis_aclk_0 => eth_clk,
            tx_in_axis_arst_0 => eth_rst,
            tx_in_axis_mosi_0 => tx_axi4s_mosi(0),
            tx_in_axis_miso_0 => tx_axi4s_miso(0),
            rx_out_axis_aclk_0 => eth_clk,
            rx_out_axis_arst_0 => eth_rst,
            rx_out_axis_miso_0 => c_axi4s_miso_default,
            rx_out_axis_mosi_0 => open,
            tx_in_axis_aclk_1 => eth_clk,
            tx_in_axis_arst_1 => eth_rst,
            tx_in_axis_mosi_1 => tx_axi4s_mosi(1),
            tx_in_axis_miso_1 => tx_axi4s_miso(1),
            rx_out_axis_aclk_1 => eth_clk,
            rx_out_axis_arst_1 => eth_rst,
            rx_out_axis_miso_1 => c_axi4s_miso_default,
            rx_out_axis_mosi_1 => open,
            tx_in_axis_aclk_2 => eth_clk,
            tx_in_axis_arst_2 => eth_rst,
            tx_in_axis_mosi_2 => tx_axi4s_mosi(2),
            tx_in_axis_miso_2 => tx_axi4s_miso(2),
            rx_out_axis_aclk_2 => eth_clk,
            rx_out_axis_arst_2 => eth_rst,
            rx_out_axis_miso_2 => c_axi4s_miso_default,
            rx_out_axis_mosi_2 => open,
            tx_in_axis_aclk_3 => eth_clk,
            tx_in_axis_arst_3 => eth_rst,
            tx_in_axis_mosi_3 => tx_axi4s_mosi(3),
            tx_in_axis_miso_3 => tx_axi4s_miso(3),
            rx_out_axis_aclk_3 => eth_clk,
            rx_out_axis_arst_3 => eth_rst,
            rx_out_axis_miso_3 => c_axi4s_miso_default,
            rx_out_axis_mosi_3 => open,
            clk_data => clk
        );

    eth_rst <= not udp_ready;

end architecture rtl;
