--------------------------------------------------------------------------------
--
-- Title    : tx_path_top.vhd
-- Project  : DUNE DAQ Ethernet Readout
-- Author   : Adam Barcock
-- Date     : 28/03/2022
--------------------------------------------------------------------------------
--
-- Description
-- 
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library unisim;
use unisim.vcomponents.all;

library udp_core_lib;
use udp_core_lib.udp_core_pkg.all;

library axi4_lib;
use axi4_lib.axi4s_pkg.all;
use axi4_lib.axi4lite_pkg.all;

library ipbus; 
use ipbus.ipbus.all;
use ipbus.ipbus_reg_types.all;

library deimos;
use deimos.ipbus_decode_slim_tx_path.all;
use deimos.freq_pkg.all;

entity tx_path is
    generic(
        debug_tx_path       : boolean := false;
        debug_clk           : boolean := false;
        GT_LOOPBACK         : boolean := false;
        ref_freq            : t_freq := f156_25;
        N_MGT               : positive range 1 to 4 := 2;
        N_CLK_DEBUG         : positive := 3
    );
    port(
        eth_clk_p           : in  std_logic;
        eth_clk_n           : in  std_logic;
        ipb_clk             : in  std_logic;
        ipb_rst             : in  std_logic;
        ipb_in              : in  ipb_wbus;
        ipb_out             : out ipb_rbus;
        clk_drp             : in  std_logic;
        clk_156_o           : out std_logic_vector(3 downto 0);
        sfp_rxp_array       : in  std_logic_vector(3 downto 0);
        sfp_rxn_array       : in  std_logic_vector(3 downto 0);
        sfp_txp_array       : out std_logic_vector(3 downto 0);
        sfp_txn_array       : out std_logic_vector(3 downto 0);
        sfp_tx_dis_array    : out std_logic_vector(3 downto 0);
        
        tx_path_ready       : out std_logic_vector(3 downto 0);
        rst_156_25          : out std_logic_vector(3 downto 0);
        
        tx_in_axis_aclk_0   : in  std_logic;
        tx_in_axis_arst_0   : in  std_logic;
        tx_in_axis_mosi_0   : in  t_axi4s_mosi;
        tx_in_axis_miso_0   : out t_axi4s_miso;
        rx_out_axis_aclk_0  : in  std_logic;
        rx_out_axis_arst_0  : in  std_logic;
        rx_out_axis_miso_0  : in  t_axi4s_miso;
        rx_out_axis_mosi_0  : out t_axi4s_mosi;
        
        tx_in_axis_aclk_1   : in  std_logic     := '0';
        tx_in_axis_arst_1   : in  std_logic     := '0';
        tx_in_axis_mosi_1   : in  t_axi4s_mosi  := c_axi4s_mosi_default;
        tx_in_axis_miso_1   : out t_axi4s_miso;
        rx_out_axis_aclk_1  : in  std_logic     := '0';
        rx_out_axis_arst_1  : in  std_logic     := '0';
        rx_out_axis_miso_1  : in  t_axi4s_miso  := c_axi4s_miso_default;
        rx_out_axis_mosi_1  : out t_axi4s_mosi;
        
        tx_in_axis_aclk_2   : in  std_logic     := '0';
        tx_in_axis_arst_2   : in  std_logic     := '0';
        tx_in_axis_mosi_2   : in  t_axi4s_mosi  := c_axi4s_mosi_default;
        tx_in_axis_miso_2   : out t_axi4s_miso;
        rx_out_axis_aclk_2  : in  std_logic     := '0';
        rx_out_axis_arst_2  : in  std_logic     := '0';
        rx_out_axis_miso_2  : in  t_axi4s_miso  := c_axi4s_miso_default;
        rx_out_axis_mosi_2  : out t_axi4s_mosi;
        
        tx_in_axis_aclk_3   : in  std_logic     := '0';
        tx_in_axis_arst_3   : in  std_logic     := '0';
        tx_in_axis_mosi_3   : in  t_axi4s_mosi  := c_axi4s_mosi_default;
        tx_in_axis_miso_3   : out t_axi4s_miso;
        rx_out_axis_aclk_3  : in  std_logic     := '0';
        rx_out_axis_arst_3  : in  std_logic     := '0';
        rx_out_axis_miso_3  : in  t_axi4s_miso  := c_axi4s_miso_default;
        rx_out_axis_mosi_3  : out t_axi4s_mosi;
        
        clk_data: in std_logic
    );
end entity tx_path;

architecture rtl of tx_path is
    constant MAX_MGT : positive := 4;
   
    type t_axi4s_miso_array     is array (MAX_MGT -1 downto 0) of t_axi4s_miso;
    type t_axi4s_mosi_array     is array (MAX_MGT -1 downto 0) of t_axi4s_mosi;
    type t_64b_debug_array      is array (MAX_MGT -1 downto 0) of std_logic_vector(63 downto 0);
    type t_loopback_array       is array (MAX_MGT -1 downto 0) of std_logic_vector(2 downto 0);
    type t_serdes_data_array    is array (MAX_MGT -1 downto 0) of std_logic_vector(127 downto 0);
    type t_header_array         is array (MAX_MGT -1 downto 0) of std_logic_vector(5 downto 0);
    type t_rx_valid_array       is array (MAX_MGT -1 downto 0) of std_logic_vector(1 downto 0);
    
    type debug_clk_array        is array (N_CLK_DEBUG -1 downto 0) of std_logic_vector(31 downto 0); 
----------------------------------------------------------------------------
-- Component Declaration for the 10GBASE-R.
    component xxv_ethernet_0
        port (
            gt_rxp_in : in std_logic;
            gt_rxn_in : in std_logic;
            gt_txp_out : out std_logic;
            gt_txn_out : out std_logic;
            rx_core_clk_0 : in std_logic;
            rx_serdes_reset_0 : in std_logic;
            txoutclksel_in_0 : in std_logic_vector(2 downto 0);
            rxoutclksel_in_0 : in std_logic_vector(2 downto 0);
            rxrecclkout_0 : out std_logic;
            sys_reset : in std_logic;
            dclk : in std_logic;
            tx_mii_clk_0 : out std_logic;
            rx_clk_out_0 : out std_logic;
            gtpowergood_out_0 : out std_logic;
            qpll0clk_in : in std_logic_vector(0 downto 0);
            qpll0refclk_in : in std_logic_vector(0 downto 0);
            qpll1clk_in : in std_logic_vector(0 downto 0);
            qpll1refclk_in : in std_logic_vector(0 downto 0);
            gtwiz_reset_qpll0lock_in : in std_logic;
            gtwiz_reset_qpll0reset_out : out std_logic;
            gtwiz_reset_qpll1lock_in : in std_logic;
            gtwiz_reset_qpll1reset_out : out std_logic;
            gt_reset_tx_done_out_0 : out std_logic;
            gt_reset_rx_done_out_0 : out std_logic;
            gt_reset_all_in_0 : in std_logic;
            gt_tx_reset_in_0 : in std_logic;
            gt_rx_reset_in_0 : in std_logic;
            rx_reset_0 : in std_logic;
            rx_mii_d_0 : out std_logic_vector(63 downto 0);
            rx_mii_c_0 : out std_logic_vector(7 downto 0);
            ctl_rx_test_pattern_0 : in std_logic;
            ctl_rx_data_pattern_select_0 : in std_logic;
            ctl_rx_test_pattern_enable_0 : in std_logic;
            ctl_rx_prbs31_test_pattern_enable_0 : in std_logic;
            stat_rx_framing_err_0 : out std_logic;
            stat_rx_framing_err_valid_0 : out std_logic;
            stat_rx_local_fault_0 : out std_logic;
            stat_rx_block_lock_0 : out std_logic;
            stat_rx_valid_ctrl_code_0 : out std_logic;
            stat_rx_status_0 : out std_logic;
            stat_rx_hi_ber_0 : out std_logic;
            stat_rx_bad_code_0 : out std_logic;
            stat_rx_bad_code_valid_0 : out std_logic;
            stat_rx_error_0 : out std_logic_vector(7 downto 0);
            stat_rx_error_valid_0 : out std_logic;
            stat_rx_fifo_error_0 : out std_logic;
            tx_reset_0 : in std_logic;
            tx_mii_d_0 : in std_logic_vector(63 downto 0);
            tx_mii_c_0 : in std_logic_vector(7 downto 0);
            stat_tx_local_fault_0 : out std_logic;
            ctl_tx_test_pattern_0 : in std_logic;
            ctl_tx_test_pattern_enable_0 : in std_logic;
            ctl_tx_test_pattern_select_0 : in std_logic;
            ctl_tx_data_pattern_select_0 : in std_logic;
            ctl_tx_test_pattern_seed_a_0 : in std_logic_vector(57 downto 0);
            ctl_tx_test_pattern_seed_b_0 : in std_logic_vector(57 downto 0);
            ctl_tx_prbs31_test_pattern_enable_0 : in std_logic;
            gt_loopback_in_0 : in std_logic_vector(2 downto 0)
        );
    end component;
    
    component xxv_ethernet_0_reset_wrapper
    port(
        sys_reset       : in std_logic;
        dclk            : in std_logic;
        gt_txusrclk2    : in std_logic;
        gt_rxusrclk2    : in std_logic;
        rx_core_clk     : in std_logic;
        gt_tx_reset_in  : in std_logic;
        gt_rx_reset_in  : in std_logic;
        tx_core_reset_in: in std_logic;
        rx_core_reset_in: in std_logic;
        tx_core_reset_out   : out std_logic;
        rx_core_reset_out   : out std_logic;
        rx_serdes_reset_out : out std_logic;
        usr_tx_reset        : out std_logic;
        usr_rx_reset        : out std_logic;
        gtwiz_reset_all     : out std_logic;
        gtwiz_reset_tx_datapath_out : out std_logic;
        gtwiz_reset_rx_datapath_out : out std_logic
    );
    end component;

    component xxv_ethernet_0_common_wrapper
    port(
        refclk          : in  std_logic;
        qpll0reset      : in  std_logic_vector;
        qpll0lock       : out std_logic_vector;
        qpll0outclk     : out std_logic_vector;
        qpll0outrefclk  : out std_logic_vector;
        qpll1reset      : in  std_logic_vector;
        qpll1lock       : out std_logic_vector;
        qpll1outclk     : out std_logic_vector;
        qpll1outrefclk  : out std_logic_vector
    );
    end component;
    
    component ultrascale_125_gthe4_common_wrapper
    port(
        refclk          : in  std_logic;
        qpll0reset      : in  std_logic_vector;
        qpll0lock       : out std_logic_vector;
        qpll0outclk     : out std_logic_vector;
        qpll0outrefclk  : out std_logic_vector;
        qpll1reset      : in  std_logic_vector;
        qpll1lock       : out std_logic_vector;
        qpll1outclk     : out std_logic_vector;
        qpll1outrefclk  : out std_logic_vector
    );
    end component;
         
    signal ipbw: ipb_wbus_array(N_SLAVES - 1 downto 0);
    signal ipbr: ipb_rbus_array(N_SLAVES - 1 downto 0);
        
    signal ctrl              : ipb_reg_v(0 downto 0);
    
    signal tx_in_axis_aclk_array    : std_logic_vector(MAX_MGT - 1 downto 0);
    signal tx_in_axis_arst_array    : std_logic_vector(MAX_MGT - 1 downto 0);
    signal tx_in_axis_mosi_array    : t_axi4s_mosi_array;
    signal tx_in_axis_miso_array    : t_axi4s_miso_array;
    signal rx_out_axis_aclk_array   : std_logic_vector(MAX_MGT - 1 downto 0);
    signal rx_out_axis_arst_array   : std_logic_vector(MAX_MGT - 1 downto 0);
    signal rx_out_axis_mosi_array   : t_axi4s_mosi_array;
    signal rx_out_axis_miso_array   : t_axi4s_miso_array;
        
    signal tx_xgmii_axi4s_m_mosi_array  : t_axi4s_mosi_array;   --! Tx Data To PHY
    signal rx_xgmii_axi4s_s_mosi_array  : t_axi4s_mosi_array;   --! Rx Data From PHY
    signal tx_axi4s_m_miso              : t_axi4s_miso;         --! Tx Backpressure (From) PHY
   
    signal ref_clk              : std_logic;
    signal ref_clk_out          : std_logic;

    signal s_qpll_0_lock          : std_logic_vector(0 downto 0);
    signal s_qpll_0_outclk        : std_logic_vector(0 downto 0);
    signal s_qpll_0_outrefclk     : std_logic_vector(0 downto 0);
    signal s_qpll_1_lock          : std_logic_vector(0 downto 0); 
    signal s_qpll_1_outclk        : std_logic_vector(0 downto 0);
    signal s_qpll_1_outrefclk     : std_logic_vector(0 downto 0);
    
    
    signal s_qpll_0_rst_logic_vector  : std_logic_vector(MAX_MGT -1 downto 0) := (others => '0');
    signal s_qpll_1_rst_logic_vector  : std_logic_vector(MAX_MGT -1 downto 0) := (others => '0');
    signal or_reduce_qpll_0_reset     : std_logic_vector(0 downto 0);
    signal or_reduce_qpll_1_reset     : std_logic_vector(0 downto 0);
  
    signal tx_mii_clk_array         : std_logic_vector(MAX_MGT - 1 downto 0);
    signal rx_clk_out_array         : std_logic_vector(MAX_MGT - 1 downto 0);
    signal gt_tx_rst_done_out_array : std_logic_vector(MAX_MGT - 1 downto 0);
    signal gt_rx_rst_done_out_array : std_logic_vector(MAX_MGT - 1 downto 0);

    signal gt_tx_reset_out_array    : std_logic_vector(MAX_MGT - 1 downto 0);
    signal gt_rx_reset_out_array    : std_logic_vector(MAX_MGT - 1 downto 0);
    signal reset_tx_datapath_array  : std_logic_vector(MAX_MGT - 1 downto 0);
    signal reset_rx_datapath_array  : std_logic_vector(MAX_MGT - 1 downto 0);
    signal rst_all_array            : std_logic_vector(MAX_MGT - 1 downto 0);
    signal rx_serdes_reset_array    : std_logic_vector(MAX_MGT - 1 downto 0);

    signal s_gt_loopback_array      : t_loopback_array;

    signal rx_status_vector         : std_logic_vector(MAX_MGT - 1 downto 0);
        
    -- Debug
    signal debug_xgmii_txd      : t_64b_debug_array;
    signal debug_xgmii_rxd      : t_64b_debug_array;
    signal debug_tx_axis_data   : t_64b_debug_array;
    signal debug_rx_axis_data   : t_64b_debug_array;

    signal rx_stat  : std_logic_vector(11 downto 0);
    signal rx_error : std_logic_vector(7 downto 0);
    
    signal clk_in           : std_logic_vector(N_CLK_DEBUG -1 downto 0);
    signal clk_debug_array  : debug_clk_array;

    signal debug_ctrl, debug_stat   : ipb_reg_v(0 downto 0);
    
    attribute mark_debug: boolean;
    attribute mark_debug of tx_in_axis_arst_array   : signal is debug_tx_path;
    attribute mark_debug of debug_tx_axis_data      : signal is debug_tx_path;
    attribute mark_debug of rx_out_axis_arst_array  : signal is debug_tx_path;
    attribute mark_debug of debug_rx_axis_data      : signal is debug_tx_path;
    attribute mark_debug of debug_xgmii_txd         : signal is debug_tx_path;
    attribute mark_debug of debug_xgmii_rxd         : signal is debug_tx_path;
    attribute mark_debug of clk_debug_array         : signal is debug_clk;

begin
    tx_in_axis_aclk_array(0)  <= tx_in_axis_aclk_0;
    tx_in_axis_aclk_array(1)  <= tx_in_axis_aclk_1;
    tx_in_axis_aclk_array(2)  <= tx_in_axis_aclk_2;
    tx_in_axis_aclk_array(3)  <= tx_in_axis_aclk_3;
    
    tx_in_axis_arst_array(0)  <= tx_in_axis_arst_0;
    tx_in_axis_arst_array(1)  <= tx_in_axis_arst_1;
    tx_in_axis_arst_array(2)  <= tx_in_axis_arst_2;
    tx_in_axis_arst_array(3)  <= tx_in_axis_arst_3;
    
    tx_in_axis_mosi_array(0)  <= tx_in_axis_mosi_0;
    tx_in_axis_mosi_array(1)  <= tx_in_axis_mosi_1;
    tx_in_axis_mosi_array(2)  <= tx_in_axis_mosi_2;
    tx_in_axis_mosi_array(3)  <= tx_in_axis_mosi_3;
    
    tx_in_axis_miso_0 <= tx_in_axis_miso_array(0);
    tx_in_axis_miso_1 <= tx_in_axis_miso_array(1);
    tx_in_axis_miso_2 <= tx_in_axis_miso_array(2);
    tx_in_axis_miso_3 <= tx_in_axis_miso_array(3);
    
    rx_out_axis_aclk_array(0) <= rx_out_axis_aclk_0;
    rx_out_axis_aclk_array(1) <= rx_out_axis_aclk_1;
    rx_out_axis_aclk_array(2) <= rx_out_axis_aclk_2;
    rx_out_axis_aclk_array(3) <= rx_out_axis_aclk_3;
    
    rx_out_axis_arst_array(0) <= rx_out_axis_arst_0;
    rx_out_axis_arst_array(1) <= rx_out_axis_arst_1;
    rx_out_axis_arst_array(2) <= rx_out_axis_arst_2;
    rx_out_axis_arst_array(3) <= rx_out_axis_arst_3;
    
    rx_out_axis_mosi_0 <= rx_out_axis_mosi_array(0);
    rx_out_axis_mosi_1 <= rx_out_axis_mosi_array(1);
    rx_out_axis_mosi_2 <= rx_out_axis_mosi_array(2);
    rx_out_axis_mosi_3 <= rx_out_axis_mosi_array(3);
    
    rx_out_axis_miso_array(0)  <= rx_out_axis_miso_0;
    rx_out_axis_miso_array(1)  <= rx_out_axis_miso_1;
    rx_out_axis_miso_array(2)  <= rx_out_axis_miso_2;
    rx_out_axis_miso_array(3)  <= rx_out_axis_miso_3;
    
    -- ipbus address decode
    fabric: entity ipbus.ipbus_fabric_sel
        generic map(
            NSLV        => N_SLAVES,
            SEL_WIDTH   => IPBUS_SEL_WIDTH
        )
        port map(
            ipb_in          => ipb_in,
            ipb_out         => ipb_out,
            sel             => ipbus_sel_slim_tx_path(ipb_in.ipb_addr),
            ipb_to_slaves   => ipbw,
            ipb_from_slaves => ipbr
        );

    udp_core_gen : for i in 0 to N_MGT -1 generate
        udp_core: entity udp_core_lib.udp_core_interface_withmac_ipbus_wrapper
            generic map(
                G_FPGA_VENDOR          => "xilinx",       --! Selects the FPGA Vendor for Compilation
                G_FPGA_FAMILY          => "all",          --! Selects the FPGA Family for Compilation
                G_FIFO_IMPLEMENTATION  => "auto",         --! Selects how the Fitter implements the FIFO Memory
                G_FIFO_TYPE            => "inferred_mem", --! Selects how to implement the Core's FIFOs
                G_UDP_CORE_BYTES       => 8,              --! Width Of Data Busses In Bytes
                G_NUM_OF_ARP_POS       => 8,              --! Number Of Positions In ARP Table to treat as dynamic ARP Positions
                G_UDP_CLK_FIFOS        => true,           --! Generate Clk Crossing FIFOs At The I/O of UDP Payloads
                G_EXT_CLK_FIFOS        => true,           --! Generate Clk Crossing FIFOs At The I/O of Unsupported Packet Types
                G_TX_EXT_IP_FIFO_CAP   => 2048,           --! Capacity In Bytes Of Uns IPV4 Protocol Packets FIFOs in Tx Path
                G_TX_EXT_ETH_FIFO_CAP  => 2048,           --! Capacity In Bytes Of Uns Ethernet Type Packets FIFOs in Tx Path
                G_TX_OUT_FIFO_CAP      => 2048,           --! Capacity Of FIFO at End Of Tx Path. Necessary For 100GbE But Less Important For 1/10GbE. Can Be Set to 0.
                G_RX_IN_FIFO_CAP       => 2048,           --! Capacity Of FIFO at Start Of Rx Path. At least 16 Words Recommended.
                G_RX_INPUT_PIPE_STAGES => 1,              --! Pipeline Stages From External MAC/PHY To Rx Path
                G_INC_PING             => true,           --! Generate Logic For Internal Ping Replies
                G_INC_ARP              => true,           --! Generate Logic For Internal ARP Requests And Replies
                G_CORE_FREQ_KHZ        => 156250,         --! KHz Of Tx Path, Only Used To Calibrate ARP Refresh Timers
                G_INC_ETH              => false,          --! Generate Logic To Transmit Externally Provided Ethernet Payloads
                G_INC_IPV4             => false,          --! Generate Logic To Transmit Externally Provided IPV4 Payloads
                debug_arp              => false,
                debug_ping             => false                
            )
            port map(
                clk     => ipb_clk,
                rst     => ipb_rst,
                ipb_in  => ipbw(i),
                ipb_out => ipbr(i),
                --Main Core Clocks
                tx_core_clk         => tx_mii_clk_array(i), --! Tx Path Main Clock, Recommend Use PHY Clock
                rx_core_clk         => rx_clk_out_array(i), --! Rx Path Main Clock, Reccomend Using PHY Clock For 1/10/40GbE. >200MHz for 100GbE
                --PHY Axi4s Interfaces
                rx_axi4s_s_aclk     => rx_clk_out_array(i),             --! Rx PHY Clk
                rx_axi4s_s_areset   => gt_rx_reset_out_array(i),        --! Rx PHY Reset, always required
                rx_axi4s_s_mosi     => rx_xgmii_axi4s_s_mosi_array(i),  --! Rx Data From PHY Mosi
                rx_axi4s_s_miso     => open,                            --! Rx Backpressure (To) PHY, Will Be Ignored By a PHY, Included for Debug & Verification
                tx_axi4s_m_aclk     => tx_mii_clk_array(i),             --! Tx PHY Clk
                tx_axi4s_m_areset   => gt_tx_reset_out_array(i),        --! Tx PHY reset, always required
                tx_axi4s_m_mosi     => tx_xgmii_axi4s_m_mosi_array(i),  --! Tx Data To PHY
                tx_axi4s_m_miso     => tx_axi4s_m_miso,
                -- UDP Axi4s Interfaces
                udp_axi4s_s_aclk    => tx_in_axis_aclk_array(i),     --! UDP Tx In Clk, Ignored if G_UDP_CLK_FIFOS = False
                udp_axi4s_s_areset  => tx_in_axis_arst_array(i),     --! UDP Tx In Reset, Ignored if G_UDP_CLK_FIFOS = False
                udp_axi4s_s_mosi    => tx_in_axis_mosi_array(i),     --! UDP Tx In Data
                udp_axi4s_s_miso    => tx_in_axis_miso_array(i),     --! UDP Tx In Backpressure
                udp_axi4s_m_aclk    => rx_out_axis_aclk_array(i),    --! UDP Rx Out Clk, Ignored if G_UDP_CLK_FIFOS = False
                udp_axi4s_m_areset  => rx_out_axis_arst_array(i),    --! UDP Rx Out Reset, Ignored if G_UDP_CLK_FIFOS = False
                udp_axi4s_m_miso    => rx_out_axis_miso_array(i),    --! UDP Rx Out Backpressure
                udp_axi4s_m_mosi    => rx_out_axis_mosi_array(i),    --! UDP Rx Out Data
                --Optional External Network Address Assignment Ports
                ext_mac_addr    => (others => '0'), --! Optional Mac Address For The Core To Be Set At Board Level
                ext_ip_addr     => (others => '0'), --! Optional IP Address For The Core To Be Set At Board Level
                ext_port_addr   => (others => '0'), --! An Optional Port Address For The Core To Be Set At Board Level
                use_ext_addr    => '0'              --! Use Optional External MAC & IP Addresses
            );
        
        debug_tx_axis_data(i)   <= tx_in_axis_mosi_array(i).tdata(63 downto 0);
        debug_rx_axis_data(i)   <= rx_out_axis_mosi_array(i).tdata(63 downto 0);
        debug_xgmii_txd(i)      <= tx_xgmii_axi4s_m_mosi_array(i).tdata(63 downto 0);
        debug_xgmii_rxd(i)      <= rx_xgmii_axi4s_s_mosi_array(i).tdata(63 downto 0);
    end generate;

    phy_clk: entity deimos.xxv_ethernet_0_clocking_wrapper
        port map(
            ge_ref_clk_p    => eth_clk_p,
            gt_ref_clk_n    => eth_clk_n,
            gt_ref_clk      => ref_clk,
            gt_ref_clk_out  => ref_clk_out
        );
        
--   clk_156_o <= ref_clk_out when (ref_freq = f156_25) else tx_mii_clk_array(0);
    clk_156_o <= tx_mii_clk_array;
 
    gen_ref_156_25: if (ref_freq = f156_25) generate
        common_block: component xxv_ethernet_0_common_wrapper
        port map(
            refclk          => ref_clk,
            qpll0reset      => or_reduce_qpll_0_reset,
            qpll0lock       => s_qpll_0_lock,
            qpll0outclk     => s_qpll_0_outclk,
            qpll0outrefclk  => s_qpll_0_outrefclk,
            qpll1reset      => or_reduce_qpll_1_reset,
            qpll1lock       => s_qpll_1_lock,
            qpll1outclk     => s_qpll_1_outclk,
            qpll1outrefclk  => s_qpll_1_outrefclk
        );
    end generate gen_ref_156_25;
    
    gen_ref_125: if (ref_freq = f125) generate
        common_block: component ultrascale_125_gthe4_common_wrapper
        port map(
            refclk          => ref_clk,
            qpll0reset      => or_reduce_qpll_0_reset,
            qpll0lock       => s_qpll_0_lock,
            qpll0outclk     => s_qpll_0_outclk,
            qpll0outrefclk  => s_qpll_0_outrefclk,
            qpll1reset      => or_reduce_qpll_1_reset,
            qpll1lock       => s_qpll_1_lock,
            qpll1outclk     => s_qpll_1_outclk,
            qpll1outrefclk  => s_qpll_1_outrefclk
        );
    end generate gen_ref_125;
        
    or_reduce_qpll_0_reset(0) <= or_reduce(s_qpll_0_rst_logic_vector);
    or_reduce_qpll_1_reset(0) <= or_reduce(s_qpll_1_rst_logic_vector);
    
    phy_gen: for i in 0 to N_MGT -1 generate
    
    phy_reset: component xxv_ethernet_0_reset_wrapper
        port map(
            sys_reset       => ipb_rst,
            dclk            => clk_drp,
            gt_txusrclk2    => tx_mii_clk_array(i),
            gt_rxusrclk2    => rx_clk_out_array(i),
            rx_core_clk     => rx_clk_out_array(i),
            gt_tx_reset_in  => gt_tx_rst_done_out_array(i),
            gt_rx_reset_in  => gt_rx_rst_done_out_array(i), 
            
            tx_core_reset_in    => ipb_rst,
            rx_core_reset_in    => ipb_rst,
            
            tx_core_reset_out   => gt_tx_reset_out_array(i),
            rx_core_reset_out   => gt_rx_reset_out_array(i),
            rx_serdes_reset_out => rx_serdes_reset_array(i),
            usr_tx_reset        => open,
            usr_rx_reset        => open,
            gtwiz_reset_all             => rst_all_array(i),
            gtwiz_reset_tx_datapath_out => reset_tx_datapath_array(i),
            gtwiz_reset_rx_datapath_out => reset_rx_datapath_array(i)
        );
        
    phy_10gbe : xxv_ethernet_0
        port map (
            gt_rxp_in     => sfp_rxp_array(i),
            gt_rxn_in     => sfp_rxn_array(i),
            gt_txp_out    => sfp_txp_array(i),
            gt_txn_out    => sfp_txn_array(i),
            
            rx_core_clk_0       => rx_clk_out_array(i),       -- Rx clk input
            rx_serdes_reset_0   => rx_serdes_reset_array(i),  -- Rx rst input
            txoutclksel_in_0    => b"101",
            rxoutclksel_in_0    => b"101",
            rxrecclkout_0       => open,
            
            sys_reset           => ipb_rst,
            dclk                => clk_drp,
            tx_mii_clk_0        => tx_mii_clk_array(i),
            rx_clk_out_0        => rx_clk_out_array(i),
            gtpowergood_out_0   => open,
            
            qpll0clk_in                 => s_qpll_0_outclk,
            qpll0refclk_in              => s_qpll_0_outrefclk,
            qpll1clk_in                 => s_qpll_1_outclk,
            qpll1refclk_in              => s_qpll_1_outrefclk,
            gtwiz_reset_qpll0lock_in    => s_qpll_0_lock(0),
            gtwiz_reset_qpll0reset_out  => s_qpll_0_rst_logic_vector(i),
            gtwiz_reset_qpll1lock_in    => s_qpll_1_lock(0),
            gtwiz_reset_qpll1reset_out  => s_qpll_1_rst_logic_vector(i),
            
            gt_reset_tx_done_out_0  => gt_tx_rst_done_out_array(i),
            gt_reset_rx_done_out_0  => gt_rx_rst_done_out_array(i),
            gt_reset_all_in_0       => rst_all_array(i),
            gt_tx_reset_in_0        => reset_tx_datapath_array(i),
            gt_rx_reset_in_0        => reset_rx_datapath_array(i),
            rx_reset_0              => gt_rx_reset_out_array(i),
            rx_mii_d_0              => rx_xgmii_axi4s_s_mosi_array(i).tdata(63 downto 0),
            rx_mii_c_0              => rx_xgmii_axi4s_s_mosi_array(i).tkeep(7  downto 0),
            
            ctl_rx_test_pattern_0               => '0',
            ctl_rx_data_pattern_select_0        => '0',
            ctl_rx_test_pattern_enable_0        => '0',
            ctl_rx_prbs31_test_pattern_enable_0 => '0',
            
            stat_rx_framing_err_0       => open,
            stat_rx_framing_err_valid_0 => open,
            stat_rx_local_fault_0       => open,
            stat_rx_block_lock_0        => open,
            stat_rx_valid_ctrl_code_0   => open,
            stat_rx_status_0            => rx_status_vector(i),
            stat_rx_hi_ber_0            => open,
            stat_rx_bad_code_0          => open,
            stat_rx_bad_code_valid_0    => open,
            stat_rx_error_0             => open,
            stat_rx_error_valid_0       => open,
            stat_rx_fifo_error_0        => open,
            
            tx_reset_0 => gt_tx_reset_out_array(i),
            tx_mii_d_0 => tx_xgmii_axi4s_m_mosi_array(i).tdata(63 downto 0),
            tx_mii_c_0 => tx_xgmii_axi4s_m_mosi_array(i).tkeep(7  downto 0),
            
            stat_tx_local_fault_0 => open,
            
            ctl_tx_test_pattern_0 => '0',
            ctl_tx_test_pattern_enable_0 => '0',
            ctl_tx_test_pattern_select_0 => '0',
            ctl_tx_data_pattern_select_0 => '0',
            ctl_tx_test_pattern_seed_a_0 => (others=>'0'),
            ctl_tx_test_pattern_seed_b_0 => (others=>'0'),
            ctl_tx_prbs31_test_pattern_enable_0 => '0',
            
            gt_loopback_in_0 => s_gt_loopback_array(i)
        );
        
        -- gt_loopback_in_0: std_logic_vector(2 downto 0);
        -- 000: Normal operation
        -- 001: Near-end PCS Loopback
        -- 010: Near-end PMA Loopback
        -- 011: Reserved
        -- 100: Far-end PMA Loopback
        -- 101: Reserved
        -- 110: Far-end PCS Loopback
    
        s_gt_loopback_array(i) <= debug_ctrl(0)(2 downto 0);
    
        tx_path_ready(i)    <= rx_status_vector(i);
        rst_156_25(i)       <= not(gt_tx_rst_done_out_array(i));
        
    end generate phy_gen;
    
-- Debug register

    tx_path_csr: entity ipbus.ipbus_ctrlreg_v
        generic map(
            N_CTRL => 1,
            N_STAT => 1
        )
        port map(
            clk => ipb_clk,
            reset => ipb_rst,
            ipbus_in => ipbw(N_SLV_DEBUG),
            ipbus_out => ipbr(N_SLV_DEBUG),
            q => debug_ctrl,
            d => debug_stat
        );   

    debug_stat(0) <= X"A" & b"000" &                -- 7 
                     rx_error &                     -- 8
                     rx_stat(11 downto 10) &        -- 2
                     rx_stat(8 downto 6) &          -- 3
                     rx_stat(4 downto 0) &          -- 5
                     '0' &                          -- 1
                     '0' &                          -- 1
                     '0' &                          -- 1
                     rx_status_vector(0) &          -- 1
                     s_qpll_0_lock(0) &             -- 1
                     gt_tx_rst_done_out_array(0) &  -- 1 
                     gt_rx_rst_done_out_array(0);   -- 1 
                                                    -----
                                                    --32
                                                    
    freqdiv: entity ipbus.freq_ctr_div
        generic map(
            N_CLK => N_CLK_DEBUG
        )
        port map(
            clk(0) => ref_clk_out,
            clk(1) => tx_mii_clk_array(0),
            clk(2) => rx_clk_out_array(0),
            clkdiv => clk_in
        );

    freq: entity ipbus.ipbus_freq_ctr
        generic map(
            N_CLK => N_CLK_DEBUG
        )
        port map(
            clk => ipb_clk,
            rst => ipb_rst,
            ipb_in => ipbw(N_SLV_FREQ),
            ipb_out => ipbr(N_SLV_FREQ),
            clkdiv => clk_in
        );
    
end architecture rtl;