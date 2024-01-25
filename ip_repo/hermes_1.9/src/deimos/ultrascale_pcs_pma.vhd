--------------------------------------------------------------------------------
--
-- Title    : ultrascale_pcs_pma.vhd
-- Project  : DUNE DAQ Ethernet Readout
-- Author   : Adam Barcock/Erdem Motuk
-- Date     : 28/03/2022
-- Modified : 26/07/2023
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
use deimos.ipbus_decode_ultrascale_pcs_pma.all;

use deimos.xgmii_pkg.all;
use deimos.freq_pkg.all;


entity ultrascale_pcs_pma is
      generic(
        GT_LOOPBACK      : boolean := false;
        ref_freq         : t_freq := f156_25;
        N_MGT            : positive range 1 to 4 := 2;
        N_CLK_DEBUG      : positive := 3
      );
      port(
        eth_clk_p           : in  std_logic;
        eth_clk_n           : in  std_logic;

        ipb_clk             : in  std_logic;
        ipb_rst             : in  std_logic;
        ipb_in              : in  ipb_wbus;
        ipb_out             : out ipb_rbus;

        clk_drp             : in  std_logic;

        clk_156_o           : out std_logic_vector(N_MGT-1 downto 0);

        sfp_rxp_array       : in  std_logic_vector(N_MGT-1 downto 0);
        sfp_rxn_array       : in  std_logic_vector(N_MGT-1 downto 0);
        sfp_txp_array       : out std_logic_vector(N_MGT-1 downto 0);
        sfp_txn_array       : out std_logic_vector(N_MGT-1 downto 0);
        sfp_tx_dis_array    : out std_logic_vector(N_MGT-1 downto 0);

        tx_path_ready_array : out std_logic_vector(N_MGT-1 downto 0);
        rst_156_25_array    : out std_logic_vector(N_MGT-1 downto 0);

        xgmii_clk           : out std_logic;

        tx_xgmii_d_array    : in xgmii_d_array(N_MGT-1 downto 0);
        tx_xgmii_c_array    : in xgmii_c_array(N_MGT-1 downto 0);

        rx_xgmii_d_array    : out xgmii_d_array(N_MGT-1 downto 0);
        rx_xgmii_c_array    : out xgmii_c_array(N_MGT-1 downto 0)
        
      );
end entity ultrascale_pcs_pma;


      
architecture rtl of ultrascale_pcs_pma is
    
    constant MAX_MGT : positive := 4;
   
    type t_64b_debug_array      is array (MAX_MGT -1 downto 0) of std_logic_vector(63 downto 0);
    type t_loopback_array       is array (MAX_MGT -1 downto 0) of std_logic_vector(2 downto 0);
    
    --type debug_clk_array        is array (N_CLK_DEBUG -1 downto 0) of std_logic_vector(31 downto 0); 
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
    --signal clk_debug_array  : debug_clk_array;

    signal debug_ctrl, debug_stat   : ipb_reg_v(0 downto 0);
    signal phy_reset_ipbus : std_logic;
    
    attribute mark_debug: boolean;
    

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
            sel             => ipbus_sel_ultrascale_pcs_pma(ipb_in.ipb_addr),
            ipb_to_slaves   => ipbw,
            ipb_from_slaves => ipbr
        );

    
    phy_clk: entity deimos.xxv_ethernet_0_clocking_wrapper
        port map(
            ge_ref_clk_p    => eth_clk_p,
            gt_ref_clk_n    => eth_clk_n,
            gt_ref_clk      => ref_clk,
            gt_ref_clk_out  => ref_clk_out
        );
        
--   clk_156_o <= ref_clk_out when (ref_freq = f156_25) else tx_mii_clk_array(0);
    clk_156_o <= tx_mii_clk_array(N_MGT-1 downto 0);
    xgmii_clk <= tx_mii_clk_array(0);
 
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

    sfp_tx_dis_array <= (others  => '1');
    
    phy_gen: for i in 0 to N_MGT -1 generate
    
    phy_reset: component xxv_ethernet_0_reset_wrapper
        port map(
            sys_reset       => phy_reset_ipbus, --ipb_rst,
            dclk            => clk_drp,
            gt_txusrclk2    => tx_mii_clk_array(i),
            gt_rxusrclk2    => rx_clk_out_array(i),
            rx_core_clk     => rx_clk_out_array(i),
            gt_tx_reset_in  => gt_tx_rst_done_out_array(i),
            gt_rx_reset_in  => gt_rx_rst_done_out_array(i), 
            
            tx_core_reset_in    => phy_reset_ipbus, --ipb_rst,
            rx_core_reset_in    => phy_reset_ipbus, --ipb_rst,
            
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
            
            sys_reset           => phy_reset_ipbus, --ipb_rst,
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
    
            rx_mii_d_0              => rx_xgmii_d_array(i),
            rx_mii_c_0              => rx_xgmii_c_array(i),
            
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
    
            tx_mii_d_0 => tx_xgmii_d_array(i),
            tx_mii_c_0 => tx_xgmii_c_array(i),
            
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
        
    
        s_gt_loopback_array(i) <= debug_ctrl(0)(2 downto 0);
        phy_reset_ipbus <= debug_ctrl(0)(16);
    
        tx_path_ready_array(i)    <= rx_status_vector(i);
        rst_156_25_array(i)       <= not(gt_tx_rst_done_out_array(i) and rx_status_vector(i));
        
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
