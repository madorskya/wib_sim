library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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
use work.ipbus_decode_ultrascale_combined_tx_path.all;

library deimos;
use deimos.addr_pkg.all;
use deimos.xgmii_pkg.all;
use work.tx_mux_decl.all;


entity ultrascale_combined_tx_path is
    generic(
        N_SRC               : integer := 4;
        N_MGT               : positive range 1 to 4 := 2
    );
    port(
        ipb_clk             : in  std_logic;
        ipb_rst             : in  std_logic;
        ipb_in              : in  ipb_wbus;
        ipb_out             : out ipb_rbus;

        ref_clk_156_in      : in std_logic;
        dune_base_clk	    : in  std_logic; -- From infra
        dune_rst	    : in  std_logic; -- From infra

        ts: in std_logic_vector(63 downto 0);  
        samp: in std_logic; 
        mark: in std_logic; 
 
        xgmii_clk           : in std_logic;
        tx_xgmii_rst        : in std_logic;
        tx_xgmii_d_array    : out xgmii_d_array(N_MGT-1 downto 0);
        tx_xgmii_c_array    : out xgmii_c_array(N_MGT-1 downto 0);
        rx_xgmii_rst        : in std_logic;
        rx_xgmii_d_array    : in xgmii_d_array(N_MGT-1 downto 0);
        rx_xgmii_c_array    : in xgmii_c_array(N_MGT-1 downto 0);

        phy_ready_array      : in std_logic_vector(N_MGT-1 downto 0);
        rst_156_25_array     : in std_logic_vector(N_MGT-1 downto 0);
 
        d : in array_of_src_d_arrays(N_MGT-1 downto 0) (N_SRC-1 downto 0);
        
        ext_mac_addr    : in mac_addr_array(N_MGT-1 downto 0);
        ext_ip_addr     : in ip_addr_array(N_MGT-1 downto 0); 
        ext_port_addr   : in udp_port_array(N_MGT-1 downto 0);
        use_ext_addr    : in std_logic 
    );
end entity ultrascale_combined_tx_path;

architecture rtl of ultrascale_combined_tx_path is

    type t_axi4s_miso_array is array (N_MGT - 1 downto 0) of t_axi4s_miso;
    type t_axi4s_mosi_array is array (N_MGT - 1 downto 0) of t_axi4s_mosi;
    
signal d_0 : src_d_array(N_SRC-1 downto 0);
signal d_1 : src_d_array(N_SRC-1 downto 0);
signal d_2 : src_d_array(N_SRC-1 downto 0);
signal d_3 : src_d_array(N_SRC-1 downto 0);

signal eth_d : src_d_array(N_MGT-1 downto 0);
signal eth_ready : std_logic_vector(N_MGT - 1 downto 0);

signal eth_clk : std_logic_vector(N_MGT -1 downto 0);
signal eth_rst : std_logic_vector(N_MGT -1 downto 0);

signal tx_out_axis_aclk : std_logic_vector(N_MGT -1 downto 0);
signal tx_out_axis_arst : std_logic_vector(N_MGT -1 downto 0);
signal tx_shim_out_axis_mosi : t_axi4s_mosi_array;
signal tx_shim_out_axis_miso : t_axi4s_miso_array;

signal rx_out_axis_mosi_array : t_axi4s_mosi_array;
signal rx_out_axis_miso_array : t_axi4s_miso_array;

signal rx_xgmii_axi4s_s_mosi_array : t_axi4s_mosi_array;

signal tx_xgmii_axi4s_m_mosi_array : t_axi4s_mosi_array;

signal tx_axi4s_m_miso_array : t_axi4s_miso_array;

constant row_length : natural := N_MGT*N_SRC;

signal s_gttxreset          : std_logic;
signal s_gtrxreset          : std_logic;
signal s_txuserrdy          : std_logic;
signal s_qplllock           : std_logic;
signal s_qplloutclk         : std_logic;
signal s_qplloutrefclk      : std_logic;
signal s_reset_counter_done : std_logic; 

signal ipbw: ipb_wbus_array(N_SLAVES - 1 downto 0);
signal ipbr: ipb_rbus_array(N_SLAVES - 1 downto 0);

signal d_array : src_d_array((N_MGT*N_SRC)-1 downto 0);

signal udp_ready : std_logic_vector(N_MGT-1 downto 0);

signal ctrl_tx_mux: ipb_reg_v(0 downto 0);
signal ctrl_udp_core: ipb_reg_v(0 downto 0);
signal stat_tx_mux: ipb_reg_v(0 downto 0);
signal stat_udp_core: ipb_reg_v(0 downto 0);
signal ipbw_quad_tx_mux: ipb_wbus_array(N_MGT - 1 downto 0);
signal ipbr_quad_tx_mux: ipb_rbus_array(N_MGT - 1 downto 0);
signal ipbw_quad_udp_core: ipb_wbus_array(N_MGT - 1 downto 0);
signal ipbr_quad_udp_core: ipb_rbus_array(N_MGT - 1 downto 0);


begin

        -- ipbus address decode
        fabric: entity ipbus.ipbus_fabric_sel
        generic map(
            NSLV        => N_SLAVES,
            SEL_WIDTH   => IPBUS_SEL_WIDTH
        )
        port map(
            ipb_in          => ipb_in,
            ipb_out         => ipb_out,
            sel             => ipbus_sel_ultrascale_combined_tx_path(ipb_in.ipb_addr),
            ipb_to_slaves   => ipbw,
            ipb_from_slaves => ipbr
        );
        
        array_assign: for i in 0 to N_MGT-1  generate
            array_nest:for j in 0 to N_SRC-1 generate
                d_array((i*N_SRC)+j) <= d(i)(j);
            end generate;
        end generate;

       csr_tx_mux: entity ipbus.ipbus_ctrlreg_v
		generic map(
			N_CTRL => 1,
                        N_STAT => 1
		)
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(N_SLV_CSR_TX_MUX),
			ipbus_out => ipbr(N_SLV_CSR_TX_MUX),
			d => stat_tx_mux,
			q => ctrl_tx_mux
		);
    
    stat_tx_mux(0) <= std_logic_vector(to_unsigned(N_MGT,32));
    
    fabric_quad_tx_mux: entity ipbus.ipbus_fabric_sel
		generic map(
			NSLV => N_MGT,
			SEL_WIDTH => 4
		)
		port map(
			ipb_in => ipbw(N_SLV_TX_MUX),
			ipb_out => ipbr(N_SLV_TX_MUX),
			sel => ctrl_tx_mux(0)(3 downto 0),
			ipb_to_slaves => ipbw_quad_tx_mux,
			ipb_from_slaves => ipbr_quad_tx_mux
		);

     csr_udp_core: entity ipbus.ipbus_ctrlreg_v
		generic map(
			N_CTRL => 1,
                        N_STAT => 1
		)
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(N_SLV_CSR_UDP_CORE),
			ipbus_out => ipbr(N_SLV_CSR_UDP_CORE),
			d => stat_udp_core,
			q => ctrl_udp_core
		);
    
    stat_udp_core(0) <= std_logic_vector(to_unsigned(N_MGT,32));
    
    fabric_quad_udp_core: entity ipbus.ipbus_fabric_sel
		generic map(
			NSLV => N_MGT,
			SEL_WIDTH => 4
		)
		port map(
			ipb_in => ipbw(N_SLV_UDP_CORE),
			ipb_out => ipbr(N_SLV_UDP_CORE),
			sel => ctrl_udp_core(0)(3 downto 0),
			ipb_to_slaves => ipbw_quad_udp_core,
			ipb_from_slaves => ipbr_quad_udp_core
		);

src_gen: for i in 0 to N_MGT-1 generate
    
    tx_xgmii_d_array(i)   <= tx_xgmii_axi4s_m_mosi_array(i).tdata(63 downto 0);
    tx_xgmii_c_array(i)  <= tx_xgmii_axi4s_m_mosi_array(i).tkeep(7  downto 0);
    rx_xgmii_axi4s_s_mosi_array(i).tdata(63 downto 0) <=  rx_xgmii_d_array(i);
    rx_xgmii_axi4s_s_mosi_array(i).tkeep(7  downto 0) <= rx_xgmii_c_array(i);

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
        G_INC_IPV4             => false           --! Generate Logic To Transmit Externally Provided IPV4 Payloads
    )
    port map(
        clk     => ipb_clk,
        rst     => ipb_rst,
        ipb_in  => ipbw_quad_udp_core(i), --ipbw(N_SLV_UDP_CORE0+i),
        ipb_out => ipbr_quad_udp_core(i), --ipbr(N_SLV_UDP_CORE0+i),
        --Main Core Clocks
        tx_core_clk         => xgmii_clk, --! Tx Path Main Clock, Recommend Use PHY Clock
        rx_core_clk         => xgmii_clk, --! Rx Path Main Clock, Reccomend Using PHY Clock For 1/10/40GbE. >200MHz for 100GbE
        --PHY Axi4s Interfaces
        rx_axi4s_s_aclk     => xgmii_clk,                     --! Rx PHY Clk
        rx_axi4s_s_areset   => rx_xgmii_rst,                     --! Rx PHY Reset, always required
        rx_axi4s_s_mosi     => rx_xgmii_axi4s_s_mosi_array(i),  --! Rx Data From PHY Mosi
        rx_axi4s_s_miso     => open,                            --! Rx Backpressure (To) PHY, Will Be Ignored By a PHY, Included for Debug & Verification
        tx_axi4s_m_aclk     => xgmii_clk,                     --! Tx PHY Clk
        tx_axi4s_m_areset   => tx_xgmii_rst,                     --! Tx PHY reset, always required
        tx_axi4s_m_mosi     => tx_xgmii_axi4s_m_mosi_array(i),  --! Tx Data To PHY
        tx_axi4s_m_miso     => tx_axi4s_m_miso_array(i),
        -- UDP Axi4s Interfaces
        udp_axi4s_s_aclk    => tx_out_axis_aclk(i),     --! UDP Tx In Clk, Ignored if G_UDP_CLK_FIFOS = False
        udp_axi4s_s_areset  => tx_out_axis_arst(i),     --! UDP Tx In Reset, Ignored if G_UDP_CLK_FIFOS = False
        udp_axi4s_s_mosi    => tx_shim_out_axis_mosi(i),     --! UDP Tx In Data
        udp_axi4s_s_miso    => tx_shim_out_axis_miso(i),     --! UDP Tx In Backpressure
        udp_axi4s_m_aclk    => '0',    --! UDP Rx Out Clk, Ignored if G_UDP_CLK_FIFOS = False
        udp_axi4s_m_areset  => '0',  --! UDP Rx Out Reset, Ignored if G_UDP_CLK_FIFOS = False
        udp_axi4s_m_miso    => c_axi4s_miso_default,    --! UDP Rx Out Backpressure
        udp_axi4s_m_mosi    => open,    --! UDP Rx Out Data
        --Optional External Network Address Assignment Ports
        ext_mac_addr    => ext_mac_addr(i),    --! Optional Mac Address For The Core To Be Set At Board Level
        ext_ip_addr     => ext_ip_addr(i),     --! Optional IP Address For The Core To Be Set At Board Level
        ext_port_addr   => ext_port_addr(i),   --! An Optional Port Address For The Core To Be Set At Board Level
        use_ext_addr    => use_ext_addr     --! Use Optional External MAC & IP Addresses
    );


-- tx_mux       
mux: entity work.tx_mux
generic map(
    N_SRC => N_SRC,
    IFACE_ID => i
)
port map(
    ipb_clk => ipb_clk,
    ipb_rst => ipb_rst,
    ipb_in => ipbw_quad_tx_mux(i), --ipbw(N_SLV_TX_MUX0+i),
    ipb_out => ipbr_quad_tx_mux(i), --ipbr(N_SLV_TX_MUX0+i),
    src_clk => dune_base_clk,
    src_rst => dune_rst,
    ts => ts,
    d => d_array((i*N_SRC)+N_SRC - 1 downto (i*N_SRC)),
    samp => samp,
    mark => mark,
    eth_clk => ref_clk_156_in,
    eth_rst => eth_rst(i),
    eth_q => eth_d(i),
    eth_ready => eth_ready(i),
    udp_ready => udp_ready(i)
);


shim: entity work.tx_mux_axi4s_shim
port map(
    mux_d => eth_d(i),
    mux_ready => eth_ready(i),
    axi4s_mosi => tx_shim_out_axis_mosi(i),
    axi4s_miso => tx_shim_out_axis_miso(i)
);

eth_rst(i) <= rst_156_25_array(i);
udp_ready(i) <= phy_ready_array(i);

tx_out_axis_aclk(i) <= ref_clk_156_in;
tx_out_axis_arst(i) <= eth_rst(i); 
end generate;

end architecture rtl;
