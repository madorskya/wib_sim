library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

library udp_core_lib;
use udp_core_lib.udp_core_pkg.all;
use udp_core_lib.udp_proj_pkg.all;
use udp_core_lib.ipbus_decode_udp_core_farm_mode_luts_mmap_ipb.all;
use udp_core_lib.udp_core_ipb_rst_pkg.all;

library ipbus;
use ipbus.ipbus.all;
use ipbus.ipbus_reg_types.all;

entity udp_farm_mode_luts_ipb_reg_bank is
    generic(
        ADDR_WIDTH      : positive;
        DATA_WIDTH      : positive := 32;
        LATENCY         : integer range 1 to 2 := 1;
        USER_LATENCY    : integer range 1 to 2 := 1
    );
    port(
        clk         : in std_logic;
        rst         : in std_logic;
        ipb_in      : in ipb_wbus;
        ipb_out     : out ipb_rbus;
        farm_mode_lut_in    : in t_farm_mode_lut_in;
        farm_mode_lut_out   : out t_farm_mode_lut_out
    );
end udp_farm_mode_luts_ipb_reg_bank;

architecture rtl of udp_farm_mode_luts_ipb_reg_bank is
    signal ipbw: ipb_wbus_array(N_SLAVES - 1 downto 0);
    signal ipbr: ipb_rbus_array(N_SLAVES - 1 downto 0);

begin
    -- ipbus address decode
    fabric: entity ipbus.ipbus_fabric_sel
    generic map(
        NSLV => N_SLAVES,
        SEL_WIDTH => IPBUS_SEL_WIDTH
    )
    port map(
        ipb_in => ipb_in,
        ipb_out => ipb_out,
        sel => ipbus_sel_udp_core_farm_mode_luts_mmap_ipb(ipb_in.ipb_addr),
        ipb_to_slaves => ipbw,
        ipb_from_slaves => ipbr
    );

    lower_mac_addr_lut : entity udp_core_lib.udp_ipbus_dpram
        generic map(
            ADDR_WIDTH   => ADDR_WIDTH,
            DATA_WIDTH   => DATA_WIDTH,
            LATENCY      => LATENCY,
            USER_LATENCY => USER_LATENCY
        )
        port map(
            clk         => clk,
            rst         => rst,
            ipb_in      => ipbw(N_SLV_LOWER_MAC_ADDR),
            ipb_out     => ipbr(N_SLV_LOWER_MAC_ADDR),
            q_mask      => C_farm_mode_dpram_qmask(0),
            rclk        => farm_mode_lut_in.farm_mode_lut_lower_mac_addr_clk,
            we          => farm_mode_lut_in.farm_mode_lut_lower_mac_addr_we,
            en          => farm_mode_lut_in.farm_mode_lut_lower_mac_addr_en,
            d           => farm_mode_lut_in.farm_mode_lut_lower_mac_addr_wdat,
            addr        => farm_mode_lut_in.farm_mode_lut_lower_mac_addr_add,
            q           => farm_mode_lut_out.farm_mode_lut_lower_mac_addr_rdat
        );

    upper_mac_addr_lut : entity udp_core_lib.udp_ipbus_dpram
        generic map(
            ADDR_WIDTH   => ADDR_WIDTH,
            DATA_WIDTH   => DATA_WIDTH,
            LATENCY      => LATENCY,
            USER_LATENCY => USER_LATENCY
        )
        port map(
            clk         => clk,
            rst         => rst,
            ipb_in      => ipbw(N_SLV_UPPER_MAC_ADDR),
            ipb_out     => ipbr(N_SLV_UPPER_MAC_ADDR),
            q_mask      => C_farm_mode_dpram_qmask(1),
            rclk        => farm_mode_lut_in.farm_mode_lut_upper_mac_addr_clk,
            we          => farm_mode_lut_in.farm_mode_lut_upper_mac_addr_we,
            en          => farm_mode_lut_in.farm_mode_lut_upper_mac_addr_en,
            d           => farm_mode_lut_in.farm_mode_lut_upper_mac_addr_wdat,
            addr        => farm_mode_lut_in.farm_mode_lut_upper_mac_addr_add,
            q           => farm_mode_lut_out.farm_mode_lut_upper_mac_addr_rdat
        );

    ip_addr_lut : entity udp_core_lib.udp_ipbus_dpram
        generic map(
            ADDR_WIDTH   => ADDR_WIDTH,
            DATA_WIDTH   => DATA_WIDTH,
            LATENCY      => LATENCY,
            USER_LATENCY => USER_LATENCY
        )
        port map(
            clk         => clk,
            rst         => rst,
            ipb_in      => ipbw(N_SLV_IP_ADDR),
            ipb_out     => ipbr(N_SLV_IP_ADDR),
            q_mask      => C_farm_mode_dpram_qmask(2),
            rclk        => farm_mode_lut_in.farm_mode_lut_ip_addr_clk,
            we          => farm_mode_lut_in.farm_mode_lut_ip_addr_we,
            en          => farm_mode_lut_in.farm_mode_lut_ip_addr_en,
            d           => farm_mode_lut_in.farm_mode_lut_ip_addr_wdat,
            addr        => farm_mode_lut_in.farm_mode_lut_ip_addr_add,
            q           => farm_mode_lut_out.farm_mode_lut_ip_addr_rdat
        );

    dst_port_lut : entity udp_core_lib.udp_ipbus_dpram
        generic map(
            ADDR_WIDTH   => ADDR_WIDTH,
            DATA_WIDTH   => DATA_WIDTH,
            LATENCY      => LATENCY,
            USER_LATENCY => USER_LATENCY
        )
        port map(
            clk         => clk,
            rst         => rst,
            ipb_in      => ipbw(N_SLV_DST_PORT),
            ipb_out     => ipbr(N_SLV_DST_PORT),
            q_mask      => C_farm_mode_dpram_qmask(3),
            rclk        => farm_mode_lut_in.farm_mode_lut_dst_port_clk,
            we          => farm_mode_lut_in.farm_mode_lut_dst_port_we,
            en          => farm_mode_lut_in.farm_mode_lut_dst_port_en,
            d           => farm_mode_lut_in.farm_mode_lut_dst_port_wdat,
            addr        => farm_mode_lut_in.farm_mode_lut_dst_port_add,
            q           => farm_mode_lut_out.farm_mode_lut_dst_port_rdat
        );
end rtl;
