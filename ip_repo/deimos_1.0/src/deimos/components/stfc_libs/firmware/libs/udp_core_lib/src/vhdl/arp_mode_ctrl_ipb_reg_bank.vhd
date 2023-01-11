library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

library udp_core_lib;
use udp_core_lib.udp_core_pkg.all;
use udp_core_lib.ipbus_decode_arp_mode_ctrl_mmap_ipb.all;
use udp_core_lib.udp_core_ipb_rst_pkg.all;

library ipbus;
use ipbus.ipbus.all;
use ipbus.ipbus_reg_types.all;

entity arp_mode_ctrl_ibp_reg_bank is
    generic(
        N_ARP_CTRL_REG  : natural := 1;
        N_POS_ACT_REG   : natural := 8;
        N_NZ_REG        : natural := 1;
        N_ARP_ENTRY_REG : natural := 256
    );
    port(
        clk         : in std_logic; 
        rst         : in std_logic;
        ipb_in      : in ipb_wbus; 
        ipb_out     : out ipb_rbus;
        arp_mode_control_in     : in t_arp_mode_control;
        arp_mode_control_out    : out t_arp_mode_control
    );
end arp_mode_ctrl_ibp_reg_bank;

architecture rtl of arp_mode_ctrl_ibp_reg_bank is
    signal ipbw: ipb_wbus_array(N_SLAVES - 1 downto 0);
    signal ipbr: ipb_rbus_array(N_SLAVES - 1 downto 0);
    signal q_arp_ctrl           :ipb_reg_v(N_ARP_CTRL_REG-1 downto 0);
    signal q_pos_act            :ipb_reg_v(N_POS_ACT_REG-1 downto 0);
    signal q_nz                 :ipb_reg_v(N_NZ_REG-1 downto 0);
    signal d_arp_entry          :ipb_reg_v(N_ARP_ENTRY_REG-1 downto 0);
    
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
        sel => ipbus_sel_arp_mode_ctrl_mmap_ipb(ipb_in.ipb_addr),
        ipb_to_slaves => ipbw,
        ipb_from_slaves => ipbr
    );

    arp_mode_ctrl_bank : entity ipbus.ipbus_ctrlreg_v
    generic map(
        N_CTRL => N_ARP_CTRL_REG,
        N_STAT => 0,
        SWAP_ORDER => false
    )
    port map(
        clk         => clk,
        reset       => rst,
        ipbus_in    => ipbw(N_SLV_ARP_CONTROL),
        ipbus_out   => ipbr(N_SLV_ARP_CONTROL),
        q           => q_arp_ctrl,
        qmask       => C_arp_ctrl_qmask
    );
    arp_mode_control_out.arp_control.arp_active       <= q_arp_ctrl(0)(0);
    arp_mode_control_out.arp_control.reset_status_reg <= q_arp_ctrl(0)(1);
    
    pos_act_bank : entity ipbus.ipbus_ctrlreg_v
    generic map(
        N_CTRL => N_POS_ACT_REG,
        N_STAT => 0,
        SWAP_ORDER => false
    )
    port map(
        clk         => clk,
        reset       => rst,
        ipbus_in    => ipbw(N_SLV_POSITIONS_ACTIVE),
        ipbus_out   => ipbr(N_SLV_POSITIONS_ACTIVE),
        q           => q_pos_act
    );
    gen_arp_pos_active_we : for i in 0 to N_POS_ACT_REG-1 generate
        arp_mode_control_out.positions_active(i) <= q_pos_act(i);
    end generate;
    
    timeout_nz_bank : entity udp_core_lib.ipbus_ctrlreg_nz_bank
    generic map(
        N_REG => N_NZ_REG
    )
    port map(
        clk         => clk, 
        rst         => rst,
        ipbus_in    => ipbw(N_SLV_ARP_TIMEOUT_LENGTHS),
        ipbus_out   => ipbr(N_SLV_ARP_TIMEOUT_LENGTHS),
        qmask       => C_arp_ctrl_timeout_nz_qmask,
        rst_value   => C_arp_ctrl_timeout_nz_rst,
        q           => q_nz
    );
    arp_mode_control_out.arp_timeout_lengths.request_timeout        <= q_nz(0)(15 downto 4);
    arp_mode_control_out.arp_timeout_lengths.refresh_timeout        <= q_nz(0)(31 downto 16);
    
    arp_mode_entry_bank : entity ipbus.ipbus_ctrlreg_v
    generic map(
        N_CTRL => 0,
        N_STAT => N_ARP_ENTRY_REG,
        SWAP_ORDER => false
    )
    port map(
        clk         => clk,
        reset       => rst,
        ipbus_in    => ipbw(N_SLV_ARP_MODE_ENTRY),
        ipbus_out   => ipbr(N_SLV_ARP_MODE_ENTRY),
        d           => d_arp_entry
    );
    gen_arp_record_struc: for i in 0 to N_ARP_ENTRY_REG-1 generate
        d_arp_entry(i)(0)               <= arp_mode_control_in.arp_mode_entry(i).active;
        d_arp_entry(i)(1)               <= arp_mode_control_in.arp_mode_entry(i).timed_out; 
        d_arp_entry(i)(2)               <= arp_mode_control_in.arp_mode_entry(i).seen_response;
        d_arp_entry(i)(3)               <= arp_mode_control_in.arp_mode_entry(i).request_sent;
        d_arp_entry(i)(15 downto 4)     <= arp_mode_control_in.arp_mode_entry(i).request_timeout;
        d_arp_entry(i)(31 downto 16)    <= arp_mode_control_in.arp_mode_entry(i).refresh_timeout;
    end generate;
end rtl;