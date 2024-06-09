----------------------------------------------------------------------------------
-- Company: University of Breistol
-- Engineer: David Cussans
-- 
-- Create Date: 08/18/2023 02:32:46 PM
-- Design Name: 
-- Module Name: pdts_mod - Behavioral
-- Project Name: 
-- Target Devices: Xilinx 7 series
-- Tool Versions: Vivado 2022.2
-- Description: Takes NRZ data and produces DCSK data
-- 
-- Dependencies: dcsk_mod_fifo
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pdts_mod is
    Port ( clk : in STD_LOGIC;   -- NRZ clock domain
           clk4x : in STD_LOGIC; -- 4x NRZ clock (25/75% DCSK)
           rst : in STD_LOGIC;
           d : in STD_LOGIC;
           q : out STD_LOGIC);
end pdts_mod;

architecture rtl of pdts_mod is

    signal dcsk_pattern : std_logic_vector(3 downto 0);
    signal fifo_empty : std_logic;
    signal dummy: std_logic_vector(2 downto 0);
begin

process (clk)
begin
   if rising_edge(clk) then
      if d = '0' then
         dcsk_pattern <= "1000";
      else
         dcsk_pattern <= "1110";
      end if;
   end if;
end process;

-- Instantiate a 4-bit / 1-bit FIFO
dcsk_mod_fifo: entity work.dcsk_mod_fifo
  PORT map (
    rst    => rst,
    wr_clk => clk,
    rd_clk => clk4x,
    din    => dcsk_pattern,
    wr_en  => '1',
    rd_en  => not fifo_empty,
    dout   => dummy & q, -- Maq
    full   => open,
    empty  => fifo_empty,
    wr_rst_busy => open,
    rd_rst_busy => open
  );
  
end rtl;
