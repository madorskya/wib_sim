library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

library ipbus;
use ipbus.ipbus.all;
use ipbus.ipbus_reg_types.all;

package udp_core_ipb_rst_pkg is
    --------------------------------------------------------------------------------
    -- IPBus Constant Declarations:
    --------------------------------------------------------------------------------
    -- Arp Mode Ctrl Reg Bank
    constant C_arp_ctrl_qmask: ipb_reg_v(0 downto 0)              := (0 => X"00000003");
    constant C_arp_ctrl_timeout_nz_rst: ipb_reg_v(0 downto 0)     := (0 => X"2FFF0FF0");
    constant C_arp_ctrl_timeout_nz_qmask: ipb_reg_v(0 downto 0)   := (0 => X"FFFFFFF0");

    -- UDP Settings Reg Bank                                    -- (control,                ifg,                filer_control,          udp_length, 
                                                                --  dst_udp_port,           dst_ip_addr,        ipv4_header_2,          ipv4_header_1,          
                                                                --  ipv4_header_0,          ethertype,          dst_mac addr_upper,     dst_mac_addr_lower);
                                                               
    constant C_udp_settings_rstv_nz_ctrl: ipb_reg_v(11 downto 0) :=  ( X"07450307", X"00000000", X"00088010", X"00000008",
                                                                       X"0000F0D1", X"C0A80201", X"00001180", X"0000DB00", 
                                                                       X"001C0045", X"00000008", X"00006200", X"0000FF00");

                                                                -- (control,                ifg,                    filer_control,          udp_length, 
                                                                --  dst_udp_port,           dst_ip_addr,            ipv4_header_2,          ipv4_header_1,
                                                                --  ipv4_header_0,          ethertype,              dst_mac addr_upper,     dst_mac_addr_lower);
                                                                
    constant C_udp_settings_qmask_nz_ctrl: ipb_reg_v(11 downto 0) := (X"FFFF80F8", X"0000FFFF", X"077F0307", X"0000FFFF",
                                                                      X"0000FFFF", X"FFFFFFFF", X"FFFFFFFF", X"FFFFFFFF", 
                                                                      X"FFFFFFFF", X"0000FFFF", X"0000FFFF", X"FFFFFFFF");

                                                            -- (dst_udp_port, src_ip_addr,    src_mac_addr_upper,     src_mac_addr_lower,     use_external);
    constant C_src_addr_qmask_ctrl: ipb_reg_v(4 downto 0) := (X"0000FFFF", X"FFFFFFFF", X"0000FFFF", X"FFFFFFFF", X"00000001"); 
 
                                                        -- (dst_udp_port, src_ip_addr,    src_mac_addr_upper,     src_mac_addr_lower,     use_external);
    constant C_src_addr_rstv_ctrl: ipb_reg_v(4 downto 0) := (X"0000F0D0", X"C0A8020B", X"00006200", X"00000201", X"00000001");
    
 
                                                                --  udp_core_id  ip_id
    --constant C_udp_settings_rstv_nz_stat: ipb_reg_v(1 downto 0) := (X"76543210", X"00000000");
    
    -- Farm Mode Reg Bank
    constant C_farm_mode_dpram_qmask: ipb_reg_v(3 downto 0) := (X"0000FFFF", X"FFFFFFFF", X"0000FFFF", X"FFFFFFFF");
end package udp_core_ipb_rst_pkg;