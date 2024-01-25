-- <h---------------------------------------------------------------------------
--! @file udp_core_xml_mm_scalable_top.vhd
--! @page udpcoretopxmlmmspage UDP Core XML MM Scalable Top
--!
--! \includedoc esdg_stfc_image.md
--!
--! ### Brief ###
--! Instantiates the Rx and Tx Paths, and breaks out Axi4lite Core settings
--! registers from Memory Map interconnects. Contains FIFOs For received ARPs,
--! Pings, and forwarded addresses to cross from the Rx to the Tx Clk Domain.
--!
--!
--! ### License ###
--! Copyright(c) 2021 UNITED KINGDOM RESEARCH AND INNOVATION
--! Licensed under the BSD 3-Clause license. See LICENSE file in the project
--! root for details.
-- ---------------------------------------------------------------------------h>

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library udp_core_lib;
use udp_core_lib.udp_core_pkg.all;

library axi4_lib;
use axi4_lib.axi4lite_pkg.all;
use axi4_lib.axi4s_pkg.all;

library common_stfc_lib;
use common_stfc_lib.common_stfc_pkg.all;

entity udp_core_xml_mm_scalable_top is
    generic(
        G_FPGA_VENDOR         : string  := "xilinx"; --! Selects the FPGA Vendor for Compilation
        G_FPGA_FAMILY         : string  := "all"; --! Selects the FPGA Family for Compilation
        G_FIFO_IMPLEMENTATION : string  := "auto"; --! Selects how the Fitter implements the FIFO Memory
        G_FIFO_TYPE           : string  := "inferred_mem"; --! Selects how to implement the Core's FIFOs
        G_UDP_CORE_BYTES      : integer := 8; --! Width of Data Bus In Bytes
        G_NUM_OF_ARP_POS      : natural := 8; --! Number Of Positions In ARP Table
        G_TX_BACKPRESSURE     : boolean := false; --! Whether Tx Path needs to respond to backpressure
        G_TX_EXT_IP_FIFO_CAP  : integer := (64 * 4); --! Capacity In Bytes Of Uns IPV4 Protocol Packets FIFOs in Tx Path
        G_TX_EXT_ETH_FIFO_CAP : integer := (64 * 4); --! Capacity In Bytes Of Uns Ethernet Type Packets FIFOs in Tx Path
        G_TX_OUT_FIFO_CAP     : integer := (8 * 64 * 32); --! Capicity Of FIFO at End Of Tx Path. Necessary For 100GbE But Less Important For 1/10GbE. Can Be Set to 0.
        G_RX_IN_FIFO_CAP      : integer := (8 * 64 * 64); --! Capacity Of FIFO at Start Of Rx Path. At least 16 Words Recommended.
        G_CORE_FREQ_KHZ       : integer := 156250; --! KHz Of Tx Path, Used For ARP Refresh Timers, Not Essential
        G_INC_RX_PATH         : boolean := true;
        G_INC_PING            : boolean := true; --! Generate Logic For Internal Ping Replies
        G_INC_ARP             : boolean := true; --! Generate Logic For Interal ARP Requests And Replies
        G_INC_LUTS            : boolean := true;
        G_INC_ETH             : boolean := false; --! Generate Logic To Transmit Externally Provided Ethernet Payloads
        G_INC_IPV4            : boolean := false; --! Generate Logic To Transmit Externally Provided IPV4 Payloads
        debug_arp             : boolean := false;
        debug_ping            : boolean := false
    );
    port(
        -- udp core settings
        udp_core_settings_status_regs  : out t_udp_core_settings;
        udp_core_settings_control_regs : in  t_udp_core_settings;
        -- arp mode control
        arp_mode_status_regs           : out t_arp_mode_control;
        arp_mode_control_regs          : in  t_arp_mode_control;
        -- farm mode lut
        farm_mode_lut_status           : out t_farm_mode_lut_in;
        farm_mode_lut_control          : in  t_farm_mode_lut_out;
        -- Main Core Clocks and Synchronised Resets
        tx_core_clk                    : in  std_logic; --! UDP Core Tx Path Clock
        rx_core_clk                    : in  std_logic; --! UDP Core Rx Path Clock
        tx_core_rst_s_n                : in  std_logic; --! UDP Core Tx Synchronous Active-High Reset
        rx_core_rst_s_n                : in  std_logic; --! UDP Core Rx Synchronous Active-High Reset

        -- Packet Axi4s Interfaces
        rx_axi4s_s_aclk                : in  std_logic; --! Rx PHY Axi4s Clk
        rx_axi4s_s_areset_n            : in  std_logic; --! Rx PHY Axi4s Reset
        rx_in_axi4s_s_mosi             : in  t_axi4s_mosi; --! Rx Data In
        rx_in_axi4s_s_miso             : out t_axi4s_miso; --! Rx Backpressure
        tx_axi4s_m_aclk                : in  std_logic; --! Tx PHY Axi4s Clk
        tx_axi4s_m_areset_n            : in  std_logic; --! Tx PHY Axi4s Reset
        tx_out_axi4s_m_mosi            : out t_axi4s_mosi; --! Tx Data Out
        tx_out_axi4s_m_miso            : in  t_axi4s_miso; --! Tx Backpressure

        -- UDP Axi4s Interfaces
        udp_axi4s_s_mosi               : in  t_axi4s_mosi; --! UDP Tx In Data
        udp_axi4s_s_miso               : out t_axi4s_miso; --! UDP Tx In Backpressure
        udp_axi4s_m_miso               : in  t_axi4s_miso; --! UDP Rx Out Backpressure
        udp_axi4s_m_mosi               : out t_axi4s_mosi; --! UDP Rx Out Data

        --Optional IPV4 Axi4s Interfaces
        ipv4_axi4s_s_aclk              : in  std_logic                     := '0'; --! Uns IPV4 Packet Tx In Clk
        ipv4_axi4s_s_areset_n          : in  std_logic                     := '0'; --! Uns IPV4 Packet Tx In Reset
        ipv4_axi4s_s_mosi              : in  t_axi4s_mosi                  := c_axi4s_mosi_default; --! Uns IPV4 Packet Tx In Data
        ipv4_axi4s_s_miso              : out t_axi4s_miso; --! Uns IPV4 Packet Tx In Backpressure
        ipv4_axi4s_m_miso              : in  t_axi4s_miso                  := c_axi4s_miso_default; --! Uns IPV4 Packet Rx Out Backpressure
        ipv4_axi4s_m_mosi              : out t_axi4s_mosi; --! Uns IPV4 Packet Rx Out Data

        --Optional Eth Axi4s Interfaces
        eth_axi4s_s_aclk               : in  std_logic                     := '0'; --! Uns Ethernet Packet Tx In Clk
        eth_axi4s_s_areset_n           : in  std_logic                     := '0'; --! Uns Ethernet Packet Tx In Reset
        eth_axi4s_s_mosi               : in  t_axi4s_mosi                  := c_axi4s_mosi_default; --! Uns Ethernet Packet Tx In Data
        eth_axi4s_s_miso               : out t_axi4s_miso; --! Uns Ethernet Packet Tx In Backpressure
        eth_axi4s_m_miso               : in  t_axi4s_miso                  := c_axi4s_miso_default; --! Uns Ethernet Packet Rx Out Backpressure
        eth_axi4s_m_mosi               : out t_axi4s_mosi; --! Uns Ethernet Packet Rx Out Data

        --Optional External Network Address Assingment Ports
        ext_mac_addr                   : in  std_logic_vector(47 downto 0) := (others => 'X'); --! Optional SRC Mac Address For The Core To Be Set At Board Level
        ext_ip_addr                    : in  std_logic_vector(31 downto 0) := (others => 'X'); --! Optional SRC IP Address For The Core To Be Set At Board Level
        ext_port_addr                  : in  std_logic_vector(15 downto 0) := (others => 'X'); --! Optional DESTINATION PORT ADDRESS (Not SRC like the preceeding two)
        use_ext_addr                   : in  std_logic                     := 'X' --! Use Optional External MAC & IP Addresses

    );
end entity udp_core_xml_mm_scalable_top;

architecture struct of udp_core_xml_mm_scalable_top is
    constant C_RX_TX_CROSS_FIFO_WIDTH : integer       := 5;
    constant C_PING_FIFO_DESC         : t_axi4s_descr := (tdata_nof_bytes => G_UDP_CORE_BYTES,
                                                          tid_width       => 8,
                                                          tuser_width     => 16,
                                                          has_tlast       => 1,
                                                          has_tkeep       => 1,
                                                          has_tid         => 0,
                                                          has_tuser       => 0);
    constant C_PING_ADDR_FIFO_DESC    : t_axi4s_descr := (tdata_nof_bytes => 10,
                                                          tid_width       => 1,
                                                          tuser_width     => 1,
                                                          has_tlast       => 1,
                                                          has_tkeep       => 0,
                                                          has_tid         => 0,
                                                          has_tuser       => 0);

    -- LL Ethernet/UDP Header Signals:
    signal mac_dst_addr      : std_logic_vector(47 downto 0);
    signal mac_src_addr      : std_logic_vector(47 downto 0);
    signal packet_type       : std_logic_vector(15 downto 0);
    signal ip_ver_hdr_len    : std_logic_vector(7 downto 0);
    signal ip_service        : std_logic_vector(7 downto 0);
    signal ip_ident_count    : std_logic_vector(15 downto 0);
    signal ip_flag_frag      : std_logic_vector(15 downto 0);
    signal ip_time_to_live   : std_logic_vector(7 downto 0);
    signal ip_protocol       : std_logic_vector(7 downto 0);
    signal ip_dst_addr       : std_logic_vector(31 downto 0);
    signal ip_src_addr       : std_logic_vector(31 downto 0);
    signal udp_dst_port_addr : std_logic_vector(15 downto 0);
    signal udp_src_port_addr : std_logic_vector(15 downto 0);
    signal filter_controls   : t_udp_core_settings_filter_control;
    signal ifg_val           : std_logic_vector(15 downto 0);
    signal lut_mode          : std_logic;
    signal tuser_dst_prt     : std_logic;
    signal tuser_src_prt     : std_logic;

    --The Following Signals Are From The Memory Map & Currently Unused In this Version Of The Core
    signal ip_pkt_length_base : std_logic_vector(15 downto 0);
    signal udp_length_base    : std_logic_vector(15 downto 0);
    signal fxd_pkt_sze        : std_logic;
    signal udp_chk_sum_zero   : std_logic;
    signal ip_hdr_checksum    : std_logic_vector(15 downto 0);

    signal rx_dropped_mac_count  : std_logic_vector(31 downto 0);
    signal rx_dropped_ip_count   : std_logic_vector(31 downto 0);
    signal rx_dropped_port_count : std_logic_vector(31 downto 0);
    signal rx_udp_count          : std_logic_vector(31 downto 0);
    signal rx_arp_count          : std_logic_vector(31 downto 0);
    signal rx_uns_etype_count    : std_logic_vector(31 downto 0);
    signal rx_ping_count         : std_logic_vector(31 downto 0);
    signal rx_uns_pro_count      : std_logic_vector(31 downto 0);

    signal tx_udp_count     : std_logic_vector(31 downto 0); 
    signal tx_arp_count     : std_logic_vector(31 downto 0);
    signal tx_ping_count    : std_logic_vector(31 downto 0);
    
    signal ping_dst_mac_addr : std_logic_vector(47 downto 0);
    signal ping_dst_ip_addr  : std_logic_vector(31 downto 0);
    signal ping_dst_addr_en  : std_logic;

    signal axi4s_rx_ping_m_mosi   : t_axi4s_mosi;
    signal axi4s_rx_ping_m_miso   : t_axi4s_miso;
    signal axi4s_tx_ping_s_mosi   : t_axi4s_mosi;
    signal axi4s_tx_ping_s_miso   : t_axi4s_miso;
    signal axi4s_ping_addr_s_miso : t_axi4s_miso;
    signal axi4s_ping_addr_s_mosi : t_axi4s_mosi;
    signal axi4s_ping_addr_m_mosi : t_axi4s_mosi;
    signal axi4s_ping_addr_m_miso : t_axi4s_miso;
    signal axi4s_rx_arp_m_miso    : t_axi4s_miso;
    signal axi4s_rx_arp_m_mosi    : t_axi4s_mosi;
    signal axi4s_tx_arp_s_mosi    : t_axi4s_mosi;
    signal axi4s_tx_arp_s_miso    : t_axi4s_miso;
    signal udp_axi4s_m_mosi_reg   : t_axi4s_mosi;
    signal udp_axi4s_m_miso_reg   : t_axi4s_miso;

    -- debug
    constant c_debug_tdata_width : integer := G_UDP_CORE_BYTES*8 - 1;

    signal debug_rx_arp_tdata   : std_logic_vector(c_debug_tdata_width downto 0);
    signal debug_rx_arp_tvalid  : std_logic;
    signal debug_tx_arp_tdata   : std_logic_vector(c_debug_tdata_width downto 0);
    signal debug_tx_arp_tvalid  : std_logic;
    signal debug_tx_ping_tdata  : std_logic_vector(c_debug_tdata_width downto 0);
    signal debug_tx_ping_tvalid : std_logic;
    --
    attribute mark_debug : boolean;
    attribute mark_debug of debug_rx_arp_tdata  :signal is debug_arp;
    attribute mark_debug of debug_rx_arp_tvalid :signal is debug_arp;
    attribute mark_debug of debug_tx_arp_tdata  :signal is debug_arp;
    attribute mark_debug of debug_tx_arp_tvalid :signal is debug_arp;
    attribute mark_debug of debug_tx_ping_tdata :signal is debug_ping;
    attribute mark_debug of debug_tx_ping_tvalid:signal is debug_ping;

begin
    ----------------------------------------------------------------------------
    -- Rx To Tx Path Clk Crossing FIFOs: ARP, Ping and Ping Addresses
    ----------------------------------------------------------------------------
    gen_ping : if G_INC_PING and G_INC_RX_PATH generate
        ping_cross_fifo_inst : entity axi4_lib.axi4s_fifo
            generic map(
                g_fpga_vendor         => G_FPGA_VENDOR,
                g_fpga_family         => G_FPGA_FAMILY,
                g_implementation      => G_FIFO_IMPLEMENTATION,
                g_dual_clock          => true,
                g_wr_adr_width        => C_RX_TX_CROSS_FIFO_WIDTH,
                g_axi4s_descr         => C_PING_FIFO_DESC,
                g_in_tdata_nof_bytes  => G_UDP_CORE_BYTES,
                g_out_tdata_nof_bytes => G_UDP_CORE_BYTES,
                g_hold_last_read      => false
            )
            port map(
                s_axi_clk    => rx_core_clk,
                s_axi_rst_n  => rx_core_rst_s_n,
                m_axi_clk    => tx_core_clk,
                m_axi_rst_n  => tx_core_rst_s_n,
                axi4s_s_mosi => axi4s_rx_ping_m_mosi,
                axi4s_s_miso => axi4s_rx_ping_m_miso,
                axi4s_m_mosi => axi4s_tx_ping_s_mosi,
                axi4s_m_miso => axi4s_tx_ping_s_miso
            );

        ping_addr_fifo_inst : entity axi4_lib.axi4s_fifo
            generic map(
                g_fpga_vendor         => G_FPGA_VENDOR,
                g_fpga_family         => G_FPGA_FAMILY,
                g_implementation      => G_FIFO_IMPLEMENTATION,
                g_dual_clock          => true,
                g_wr_adr_width        => C_RX_TX_CROSS_FIFO_WIDTH,
                g_axi4s_descr         => C_PING_ADDR_FIFO_DESC,
                g_in_tdata_nof_bytes  => 10,
                g_out_tdata_nof_bytes => 10,
                g_hold_last_read      => false
            )
            port map(
                s_axi_clk    => rx_core_clk,
                s_axi_rst_n  => rx_core_rst_s_n,
                m_axi_clk    => tx_core_clk,
                m_axi_rst_n  => tx_core_rst_s_n,
                axi4s_s_mosi => axi4s_ping_addr_s_mosi,
                axi4s_s_miso => axi4s_ping_addr_s_miso,
                axi4s_m_mosi => axi4s_ping_addr_m_mosi,
                axi4s_m_miso => axi4s_ping_addr_m_miso
            );

        axi4s_ping_addr_s_mosi.tdata(10 * 8 - 1 downto 0) <= ping_dst_mac_addr & ping_dst_ip_addr;
        axi4s_ping_addr_s_mosi.tvalid                     <= ping_dst_addr_en;
        axi4s_ping_addr_s_mosi.tlast                      <= ping_dst_addr_en;

        debug_tx_ping_tdata  <= axi4s_tx_ping_s_mosi.tdata(c_debug_tdata_width downto 0);
        debug_tx_ping_tvalid <= axi4s_tx_ping_s_mosi.tvalid;

    end generate gen_ping;

    gen_arp : if G_INC_ARP and G_INC_RX_PATH generate
        arp_cross_fifo_inst : entity axi4_lib.axi4s_fifo
            generic map(
                g_fpga_vendor         => G_FPGA_VENDOR,
                g_fpga_family         => G_FPGA_FAMILY,
                g_implementation      => G_FIFO_IMPLEMENTATION,
                g_dual_clock          => true,
                g_wr_adr_width        => C_RX_TX_CROSS_FIFO_WIDTH,
                g_axi4s_descr         => C_PING_FIFO_DESC,
                g_in_tdata_nof_bytes  => G_UDP_CORE_BYTES,
                g_out_tdata_nof_bytes => G_UDP_CORE_BYTES,
                g_hold_last_read      => false
            )
            port map(
                s_axi_clk    => rx_core_clk,
                s_axi_rst_n  => rx_core_rst_s_n,
                m_axi_clk    => tx_core_clk,
                m_axi_rst_n  => tx_core_rst_s_n,
                axi4s_s_mosi => axi4s_rx_arp_m_mosi,
                axi4s_s_miso => axi4s_rx_arp_m_miso,
                axi4s_m_mosi => axi4s_tx_arp_s_mosi,
                axi4s_m_miso => axi4s_tx_arp_s_miso
            );

        debug_rx_arp_tdata  <= axi4s_rx_arp_m_mosi.tdata(c_debug_tdata_width downto 0);
        debug_rx_arp_tvalid <= axi4s_rx_arp_m_mosi.tvalid;

        debug_tx_arp_tdata  <= axi4s_tx_arp_s_mosi.tdata(c_debug_tdata_width downto 0);
        debug_tx_arp_tvalid <= axi4s_tx_arp_s_mosi.tvalid;

    end generate gen_arp;

    --------------------------------------------------------------------------------
    -- UDP Core Receive Path:
    --------------------------------------------------------------------------------
    gen_rx_path: if G_INC_RX_PATH generate
        rx_path_top_inst : entity udp_core_lib.rx_path_top
            generic map(
                G_FPGA_VENDOR         => G_FPGA_VENDOR,
                G_FPGA_FAMILY         => G_FPGA_FAMILY,
                G_FIFO_IMPLEMENTATION => G_FIFO_IMPLEMENTATION,
                G_FIFO_TYPE           => G_FIFO_TYPE,
                G_UDP_CORE_BYTES      => G_UDP_CORE_BYTES,
                G_RX_IN_FIFO_CAP      => G_RX_IN_FIFO_CAP,
                G_INC_PING            => G_INC_PING,
                G_INC_ARP             => G_INC_ARP,
                G_INC_IPV4            => G_INC_IPV4,
                G_INC_ETH             => G_INC_ETH
            )
            port map(
                rx_core_clk            => rx_core_clk,
                rx_core_rst_n          => rx_core_rst_s_n,
                rx_in_axi4s_s_aclk     => rx_axi4s_s_aclk,
                rx_in_axi4s_s_areset_n => rx_axi4s_s_areset_n,
                rx_in_axi4s_s_mosi     => rx_in_axi4s_s_mosi,
                rx_in_axi4s_s_miso     => rx_in_axi4s_s_miso,
                filter_mac_dst_addr    => mac_dst_addr, --!Dst Addr From Core's Perspective, i.e. OTHER
                filter_mac_src_addr    => mac_src_addr, --!Src Addr From Core's Perspective, i.e. SELF
                filter_ip_dst_addr     => ip_dst_addr,
                filter_ip_src_addr     => ip_src_addr,
                filter_port_dst_addr   => udp_dst_port_addr,
                filter_port_src_addr   => udp_src_port_addr,
                filter_controls        => filter_controls,
                udp_axi4s_rx_out_mosi  => udp_axi4s_m_mosi_reg,
                udp_axi4s_rx_out_miso  => udp_axi4s_m_miso_reg,
                ipv4_axi4s_m_mosi      => ipv4_axi4s_m_mosi,
                ipv4_axi4s_m_miso      => ipv4_axi4s_m_miso,
                eth_axi4s_m_mosi       => eth_axi4s_m_mosi,
                eth_axi4s_m_miso       => eth_axi4s_m_miso,
                arp_axi4s_m_mosi       => axi4s_rx_arp_m_mosi,
                arp_axi4s_m_miso       => axi4s_rx_arp_m_miso,
                ping_axi4s_m_mosi      => axi4s_rx_ping_m_mosi,
                ping_axi4s_m_miso      => axi4s_rx_ping_m_miso,
                ping_dst_mac_addr_out  => ping_dst_mac_addr,
                ping_dst_ip_addr_out   => ping_dst_ip_addr,
                ping_dst_addr_en_out   => ping_dst_addr_en,
                udp_count              => rx_udp_count,
                arp_count              => rx_arp_count,
                uns_etype_count        => rx_uns_etype_count,
                ping_count             => rx_ping_count,
                uns_pro_count          => rx_uns_pro_count,
                dropped_mac_count      => rx_dropped_mac_count,
                dropped_ip_count       => rx_dropped_ip_count,
                dropped_port_count     => rx_dropped_port_count
            );
    
        udp_out_pipe_inst : entity udp_core_lib.udp_axi4s_pipe
            generic map(
                G_STAGES       => 2,
                G_BACKPRESSURE => false
            )
            port map(
                axi_clk      => rx_core_clk,
                axi_rst_n    => rx_core_rst_s_n,
                axi4s_s_mosi => udp_axi4s_m_mosi_reg,
                axi4s_s_miso => udp_axi4s_m_miso_reg,
                axi4s_m_mosi => udp_axi4s_m_mosi,
                axi4s_m_miso => udp_axi4s_m_miso
            );
    end generate gen_rx_path;
    
    gen_no_rx_path: if not G_INC_RX_PATH generate
        rx_in_axi4s_s_miso  <= c_axi4s_miso_default;
        udp_axi4s_m_mosi    <= c_axi4s_mosi_default;
        ipv4_axi4s_m_mosi   <= c_axi4s_mosi_default;
        eth_axi4s_m_mosi    <= c_axi4s_mosi_default;
        axi4s_rx_arp_m_mosi <= c_axi4s_mosi_default;
        axi4s_rx_ping_m_mosi<= c_axi4s_mosi_default;
        ping_dst_mac_addr   <= (others=>'0');
        ping_dst_ip_addr    <= (others=>'0');
        ping_dst_addr_en    <= '0';
    end generate gen_no_rx_path;

    --------------------------------------------------------------------------------
    -- End of UDP Core Receive Path
    --------------------------------------------------------------------------------

    tx_path_top_inst : entity udp_core_lib.tx_path_top
        generic map(
            G_NUM_OF_ARP_POS      => G_NUM_OF_ARP_POS,
            G_FPGA_VENDOR         => G_FPGA_VENDOR,
            G_FPGA_FAMILY         => G_FPGA_FAMILY,
            G_FIFO_IMPLEMENTATION => G_FIFO_IMPLEMENTATION,
            G_UDP_CORE_BYTES      => G_UDP_CORE_BYTES,
            G_CORE_FREQ_KHZ       => G_CORE_FREQ_KHZ,
            G_TX_BACKPRESSURE     => G_TX_BACKPRESSURE,
            G_TX_EXT_IP_FIFO_CAP  => G_TX_EXT_IP_FIFO_CAP,
            G_TX_EXT_ETH_FIFO_CAP => G_TX_EXT_ETH_FIFO_CAP,
            G_TX_OUT_FIFO_CAP     => G_TX_OUT_FIFO_CAP,
            G_INC_PING            => G_INC_PING,
            G_INC_ARP             => G_INC_ARP,
            G_INC_LUTS            => G_INC_LUTS,
            G_INC_IPV4            => G_INC_IPV4,
            G_INC_ETH             => G_INC_ETH,
            debug_arp             => debug_arp
        )
        port map(
            arp_mode_status_regs  => arp_mode_status_regs,
            arp_mode_control_regs => arp_mode_control_regs,
            farm_mode_lut_status  => farm_mode_lut_status,
            farm_mode_lut_control => farm_mode_lut_control,
            tx_path_clk           => tx_core_clk,
            tx_path_rst_s_n       => tx_core_rst_s_n,
            tx_axi4s_m_aclk       => tx_axi4s_m_aclk,
            tx_axi4s_m_areset_n   => tx_axi4s_m_areset_n,
            dst_mac_addr          => mac_dst_addr,
            src_mac_addr          => mac_src_addr,
            dst_ip_addr           => ip_dst_addr,
            src_ip_addr           => ip_src_addr,
            dst_port_addr         => udp_dst_port_addr,
            src_port_addr         => udp_src_port_addr,
            udp_axi4s_s_mosi      => udp_axi4s_s_mosi,
            udp_axi4s_s_miso      => udp_axi4s_s_miso,
            ping_axi4s_s_mosi     => axi4s_tx_ping_s_mosi,
            ping_axi4s_s_miso     => axi4s_tx_ping_s_miso,
            arp_axi4s_s_mosi      => axi4s_tx_arp_s_mosi,
            arp_axi4s_s_miso      => axi4s_tx_arp_s_miso,
            ping_addr_s_mosi      => axi4s_ping_addr_m_mosi,
            ping_addr_s_miso      => axi4s_ping_addr_m_miso,
            eth_axi4s_s_aclk      => eth_axi4s_s_aclk,
            eth_axi4s_s_areset_n  => eth_axi4s_s_areset_n,
            eth_axis_s_mosi       => eth_axi4s_s_mosi,
            eth_axis_s_miso       => eth_axi4s_s_miso,
            ipv4_axi4s_s_aclk     => ipv4_axi4s_s_aclk,
            ipv4_axi4s_s_areset_n => ipv4_axi4s_s_areset_n,
            ipv4_axis_s_mosi      => ipv4_axi4s_s_mosi,
            ipv4_axis_s_miso      => ipv4_axi4s_s_miso,
            tx_out_axi4s_s_mosi   => tx_out_axi4s_m_mosi,
            tx_out_axi4s_s_miso   => tx_out_axi4s_m_miso,
            lut_mode_active       => lut_mode,
            tuser_dst_prt         => tuser_dst_prt,
            tuser_src_prt         => tuser_src_prt,
            ifg_val               => ifg_val(7 downto 0),
            packet_type           => packet_type,
            ip_ver_hdr_len        => ip_ver_hdr_len,
            ip_service            => ip_service,
            ip_ident_count        => ip_ident_count,
            ip_flag_frag          => ip_flag_frag,
            ip_time_to_live       => ip_time_to_live,
            ip_protocol           => ip_protocol, 
            tx_udp_count          => tx_udp_count, 
            tx_arp_count          => tx_arp_count,
            tx_ping_count         => tx_ping_count
       );

    -- -----------------------------------------------------------------------------
    -- The following signals to records are used to integrate the script generated
    -- code into the existing VHDL.
    -- -----------------------------------------------------------------------------
    --NOTE: Take Care to Understand which Address SRC & DST refer to. At this level SRC = Self, DST = Other
    -- SRC ADDRs Either From Cores Own MM or Externally Given & MUXd
    mac_src_addr      <= byte_reverse(ext_mac_addr) when use_ext_addr = '1' else
                         byte_reverse(udp_core_settings_control_regs.src_mac_addr_lower) & byte_reverse(udp_core_settings_control_regs.src_mac_addr_upper);
    ip_src_addr       <= byte_reverse(ext_ip_addr) when use_ext_addr = '1' else
                         byte_reverse(udp_core_settings_control_regs.src_ip_addr);
    udp_src_port_addr <= byte_reverse(ext_port_addr) when use_ext_addr = '1' else
                         byte_reverse(udp_core_settings_control_regs.udp_ports.src_port);
    -- DST ADDR (OTHER) From MM
    -- In the Tx Path These Will Be Substituted For LUT Values If Farm Mode Is Enabled
    -- Port Addresses Can Also Be Sourced From TUSER depending on tuser_dst_prt and tuser_src_prt but LUT have priority if farm_mode = '1'
    mac_dst_addr      <= byte_reverse(udp_core_settings_control_regs.dst_mac_addr_lower) & byte_reverse(udp_core_settings_control_regs.dst_mac_addr_upper);
    ip_dst_addr       <= byte_reverse(udp_core_settings_control_regs.dst_ip_addr);
    udp_dst_port_addr <= byte_reverse(udp_core_settings_control_regs.udp_ports.dst_port);

    packet_type        <= udp_core_settings_control_regs.ethertype;
    ip_ver_hdr_len     <= udp_core_settings_control_regs.ipv4_header_0.ip_ver_hdr_len;
    ip_service         <= udp_core_settings_control_regs.ipv4_header_0.ip_service;
    ip_pkt_length_base <= udp_core_settings_control_regs.ipv4_header_0.ip_packet_length;
    ip_ident_count     <= udp_core_settings_control_regs.ipv4_header_1.ip_count;
    ip_flag_frag       <= udp_core_settings_control_regs.ipv4_header_1.ip_fragment;
    ip_time_to_live    <= udp_core_settings_control_regs.ipv4_header_2.ip_ttl;
    ip_protocol        <= udp_core_settings_control_regs.ipv4_header_2.ip_protocol;
    ip_hdr_checksum    <= udp_core_settings_control_regs.ipv4_header_2.header_checksum; --This Set Value Is Currently Unused As Actual Checksum Is Calculated in Tx Path
    udp_length_base    <= udp_core_settings_control_regs.control.udp_length;
    filter_controls    <= udp_core_settings_control_regs.filter_control;
    lut_mode           <= udp_core_settings_control_regs.control.lut_mode when G_INC_LUTS else '0';
    tuser_dst_prt      <= udp_core_settings_control_regs.control.tuser_dst_prt;
    tuser_src_prt      <= udp_core_settings_control_regs.control.tuser_src_prt;
    ifg_val            <= udp_core_settings_control_regs.ifg;
    fxd_pkt_sze        <= udp_core_settings_control_regs.control.fixed_pkt_size;
    udp_chk_sum_zero   <= udp_core_settings_control_regs.control.udp_checksum_zero;

    --Rx counters for debugging
    udp_core_settings_status_regs.rx_udp_count          <= rx_udp_count;             -- when G_INC_RX_PATH else (others =>'0');
    udp_core_settings_status_regs.rx_arp_count          <= rx_arp_count;             -- when G_INC_RX_PATH else (others =>'0');
    udp_core_settings_status_regs.rx_uns_etype_count    <= rx_uns_etype_count;       -- when G_INC_RX_PATH else (others =>'0');
    udp_core_settings_status_regs.rx_ping_count         <= rx_ping_count;            -- when G_INC_RX_PATH else (others =>'0');
    udp_core_settings_status_regs.rx_uns_pro_count      <= rx_uns_pro_count;         -- when G_INC_RX_PATH else (others =>'0');
    udp_core_settings_status_regs.rx_dropped_mac_count  <= rx_dropped_mac_count;     -- when G_INC_RX_PATH else (others =>'0');
    udp_core_settings_status_regs.rx_dropped_ip_count   <= rx_dropped_ip_count;      -- when G_INC_RX_PATH else (others =>'0');
    udp_core_settings_status_regs.rx_dropped_port_count <= rx_dropped_port_count;    -- when G_INC_RX_PATH else (others =>'0');
    
    --Tx counters for debugging
    udp_core_settings_status_regs.tx_udp_count          <= tx_udp_count;
    udp_core_settings_status_regs.tx_arp_count          <= tx_arp_count;
    udp_core_settings_status_regs.tx_ping_count         <= tx_ping_count;

end architecture struct;
