-- Address decode logic for ipbus fabric
-- 
-- This file has been AUTOGENERATED from the address table - do not hand edit
-- 
-- We assume the synthesis tool is clever enough to recognise exclusive conditions
-- in the if statement.
-- 
-- Dave Newbold, February 2011

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

package ipbus_decode_tx_mux_tb_rx is

  constant IPBUS_SEL_WIDTH: positive := 2;
  subtype ipbus_sel_t is std_logic_vector(IPBUS_SEL_WIDTH - 1 downto 0);
  function ipbus_sel_tx_mux_tb_rx(addr : in std_logic_vector(31 downto 0)) return ipbus_sel_t;

-- START automatically generated VHDL (Thu Oct 27 04:21:40 2022)
  constant N_SLV_STAT: integer := 0;
  constant N_SLV_CTRS: integer := 1;
  constant N_SLAVES: integer := 2;
-- END automatically generated VHDL

    
end ipbus_decode_tx_mux_tb_rx;

package body ipbus_decode_tx_mux_tb_rx is

  function ipbus_sel_tx_mux_tb_rx(addr : in std_logic_vector(31 downto 0)) return ipbus_sel_t is
    variable sel: ipbus_sel_t;
  begin

-- START automatically generated VHDL (Thu Oct 27 04:21:40 2022)
    if    std_match(addr, "------------------------------0-") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_STAT, IPBUS_SEL_WIDTH)); -- stat / base 0x00000000 / mask 0x00000002
    elsif std_match(addr, "------------------------------1-") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_CTRS, IPBUS_SEL_WIDTH)); -- ctrs / base 0x00000002 / mask 0x00000002
-- END automatically generated VHDL

    else
        sel := ipbus_sel_t(to_unsigned(N_SLAVES, IPBUS_SEL_WIDTH));
    end if;

    return sel;

  end function ipbus_sel_tx_mux_tb_rx;

end ipbus_decode_tx_mux_tb_rx;
