library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

library udp_core_lib;
use udp_core_lib.udp_core_pkg.all;
use udp_core_lib.ipbus_decode_udp_core_ctrl_mmap_ipb.all;
use udp_core_lib.udp_core_ipb_rst_pkg.all;

library ipbus;
use ipbus.ipbus.all;
use ipbus.ipbus_reg_types.all;

entity udp_core_settings_ipb_reg_bank is
    generic(
        N_NZ_CTRL_REG   : natural := 15;
        N_PCOUNT_REG    : natural := 8;
        N_NZ_STAT_REG   : natural := 2
    );
    port(
        clk         : in std_logic;
        rst         : in std_logic;
        ipb_in      : in ipb_wbus;
        ipb_out     : out ipb_rbus;
        udp_core_settings_in     : in t_udp_core_settings;
        udp_core_settings_out    : out t_udp_core_settings
    );
end udp_core_settings_ipb_reg_bank;

architecture rtl of udp_core_settings_ipb_reg_bank is
    signal ipbw: ipb_wbus_array(N_SLAVES - 1 downto 0);
    signal ipbr: ipb_rbus_array(N_SLAVES - 1 downto 0);

    signal q_nz     :ipb_reg_v(N_NZ_CTRL_REG-1 downto 0);
    signal d_pcount :ipb_reg_v(N_PCOUNT_REG-1 downto 0);
    signal d_id     :ipb_reg_v(N_NZ_STAT_REG-1 downto 0);

    signal debug_dst_ip_addr    : std_logic_vector(15 downto 0);
    signal debug_src_ip_addr    : std_logic_vector(15 downto 0);
    signal debug_src_mac_addr   : std_logic_vector(47 downto 0);
    signal debug_dst_mac_addr   : std_logic_vector(47 downto 0);

    attribute mark_debug: boolean;
    attribute mark_debug of debug_dst_ip_addr:  signal is True;
    attribute mark_debug of debug_src_ip_addr:  signal is True;
    attribute mark_debug of debug_dst_mac_addr: signal is True;
    attribute mark_debug of debug_src_mac_addr: signal is True;

begin

    debug_dst_ip_addr <= udp_core_settings_out.dst_ip_addr(15 downto 0);
    debug_src_ip_addr <= udp_core_settings_out.src_ip_addr(15 downto 0);

    debug_src_mac_addr(47 downto 32)    <= udp_core_settings_out.src_mac_addr_upper;
    debug_src_mac_addr(31 downto 0)     <= udp_core_settings_out.src_mac_addr_lower;

    debug_dst_mac_addr(47 downto 32)    <= udp_core_settings_out.dst_mac_addr_upper;
    debug_dst_mac_addr(31 downto 0)     <= udp_core_settings_out.dst_mac_addr_lower;

    -- ipbus address decode
    fabric: entity ipbus.ipbus_fabric_sel
    generic map(
        NSLV => N_SLAVES,
        SEL_WIDTH => IPBUS_SEL_WIDTH
    )
    port map(
        ipb_in => ipb_in,
        ipb_out => ipb_out,
        sel => ipbus_sel_udp_core_ctrl_mmap_ipb(ipb_in.ipb_addr),
        ipb_to_slaves => ipbw,
        ipb_from_slaves => ipbr
    );

    -- src_mac_addr_lower, src_mac_addr_upper, dst_mac_addr_lower,
    -- dst_mac_addr_upper, ethertype, ipv4_header_0, ipv4_header_1,
    -- ipv4_header_2, dst_ip_addr, src_ip_addr, udp_ports, udp_length,
    -- filer_control, ifg, control
    nz_bank : entity udp_core_lib.ipbus_ctrlreg_nz_bank
    generic map(
        N_REG => N_NZ_CTRL_REG
    )
    port map(
        clk         => clk,
        rst         => rst,
        ipbus_in    => ipbw(N_SLV_NZ_RST_CTRL),
        ipbus_out   => ipbr(N_SLV_NZ_RST_CTRL),
        qmask       => C_udp_settings_qmask_nz_ctrl,
        rst_value   => C_udp_settings_rstv_nz_ctrl,
        q           => q_nz
    );
    udp_core_settings_out.src_mac_addr_lower               <= q_nz(0);
    udp_core_settings_out.src_mac_addr_upper               <= q_nz(1)(15 downto 0);
    udp_core_settings_out.dst_mac_addr_lower               <= q_nz(2);
    udp_core_settings_out.dst_mac_addr_upper               <= q_nz(3)(15 downto 0);
    udp_core_settings_out.ethertype                        <= q_nz(4)(15 downto 0);

    udp_core_settings_out.ipv4_header_0.ip_ver_hdr_len     <= q_nz(5)(7 downto 0);
    udp_core_settings_out.ipv4_header_0.ip_service         <= q_nz(5)(15 downto 8);
    udp_core_settings_out.ipv4_header_0.ip_packet_length   <= q_nz(5)(31 downto 16);

    udp_core_settings_out.ipv4_header_1.ip_count           <= q_nz(6)(15 downto 0);
    udp_core_settings_out.ipv4_header_1.ip_fragment        <= q_nz(6)(31 downto 16);

    udp_core_settings_out.ipv4_header_2.ip_ttl             <= q_nz(7)(7 downto 0);
    udp_core_settings_out.ipv4_header_2.ip_protocol        <= q_nz(7)(15 downto 8);
    udp_core_settings_out.ipv4_header_2.header_checksum    <= q_nz(7)(31 downto 16);

    udp_core_settings_out.dst_ip_addr                      <= q_nz(8);
    udp_core_settings_out.src_ip_addr                      <= q_nz(9);

    udp_core_settings_out.udp_ports.src_port               <= q_nz(10)(15 downto 0);
    udp_core_settings_out.udp_ports.dst_port               <= q_nz(10)(31 downto 16);

    udp_core_settings_out.udp_length                       <= q_nz(11)(15 downto 0);

    udp_core_settings_out.filter_control.broadcast_en       <= q_nz(12)(0);
    udp_core_settings_out.filter_control.arp_en             <= q_nz(12)(1);
    udp_core_settings_out.filter_control.ping_en            <= q_nz(12)(2);
    udp_core_settings_out.filter_control.pass_uns_ethtype   <= q_nz(12)(8);
    udp_core_settings_out.filter_control.pass_uns_ipv4      <= q_nz(12)(9);
    udp_core_settings_out.filter_control.dst_mac_chk_en     <= q_nz(12)(16);
    udp_core_settings_out.filter_control.src_mac_chk_en     <= q_nz(12)(17);
    udp_core_settings_out.filter_control.dst_ip_chk_en      <= q_nz(12)(18);
    udp_core_settings_out.filter_control.src_ip_chk_en      <= q_nz(12)(19);
    udp_core_settings_out.filter_control.dst_port_chk_en    <= q_nz(12)(20);
    udp_core_settings_out.filter_control.src_port_chk_en    <= q_nz(12)(21);
    udp_core_settings_out.filter_control.packet_count_rst_n <= q_nz(12)(22);
    udp_core_settings_out.filter_control.strip_uns_pro      <= q_nz(12)(24);
    udp_core_settings_out.filter_control.strip_uns_eth      <= q_nz(12)(25);
    udp_core_settings_out.filter_control.chk_ip_length      <= q_nz(12)(26);

    udp_core_settings_out.ifg                              <= q_nz(13)(15 downto 0);

    udp_core_settings_out.control.fixed_pkt_size            <= q_nz(14)(3);
    udp_core_settings_out.control.udp_checksum_zero        <= q_nz(14)(4);
    udp_core_settings_out.control.lut_mode                 <= q_nz(14)(5);
    udp_core_settings_out.control.tuser_dst_prt            <= q_nz(14)(6);
    udp_core_settings_out.control.tuser_src_prt            <= q_nz(14)(7);
    udp_core_settings_out.control.reset_n                  <= q_nz(14)(15);
    udp_core_settings_out.control.udp_length               <= q_nz(14)(31 downto 16);

    -- udp_count, ping_count, arp_count, uns_etype_count, uns_pro_count,
    -- dropped_mac_count, dropped_ip_count, dropped_port_count
    p_counter_stat_bank : entity ipbus.ipbus_ctrlreg_v
    generic map(
        N_CTRL => 0,
        N_STAT => N_PCOUNT_REG,
        SWAP_ORDER => false
    )
    port map(
        clk         => clk,
        reset       => rst,
        ipbus_in    => ipbw(N_SLV_PACKET_COUNTERS),
        ipbus_out   => ipbr(N_SLV_PACKET_COUNTERS),
        d           => d_pcount
    );
    -- Breaking out record structure for packet counters.
    d_pcount(0) <= udp_core_settings_in.udp_count;
    d_pcount(1) <= udp_core_settings_in.ping_count;
    d_pcount(2) <= udp_core_settings_in.arp_count;
    d_pcount(3) <= udp_core_settings_in.uns_etype_count;
    d_pcount(4) <= udp_core_settings_in.uns_pro_count;
    d_pcount(5) <= udp_core_settings_in.dropped_mac_count;
    d_pcount(6) <= udp_core_settings_in.dropped_ip_count;
    d_pcount(7) <= udp_core_settings_in.dropped_port_count;

    -- ip_id, udp_core_id
    id_stat_bank : entity udp_core_lib.ipbus_statreg_bank
    generic map(
        N_REG => N_NZ_STAT_REG
    )
    port map(
        clk         => clk,
        reset       => rst,
        ipbus_in    => ipbw(N_SLV_ID_STAT),
        ipbus_out   => ipbr(N_SLV_ID_STAT),
        d           => d_id
    );
    -- Breaking out record structure for ID register.
    d_id(0) <= udp_core_settings_in.ip_id;
    d_id(1) <= udp_core_settings_in.udp_core_id;
end rtl;
