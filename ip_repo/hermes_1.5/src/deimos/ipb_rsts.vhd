--------------------------------------------------------------------------------
--
-- Title    : ipb_rsts.vhd
-- Project  : DUNE DAQ
-- Author   : Alessandro Thea
-- Date     : 29/March/2022
--------------------------------------------------------------------------------
--
-- Description
-- 
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ipbus;


entity ipb_rsts is
    port(
        clki_fr: in std_logic; -- Input free-running clock
        rsti_fr: in std_logic; -- Input free-running reset
        clko_ipb: out std_logic; -- ipbus domain clock (31MHz)
        nuke: in std_logic; -- hard reset input
        soft_rst: in std_logic; -- soft reset input
        rsto_ipb: out std_logic; -- ipbus domain reset
        rsto_ipb_ctrl: out std_logic -- ipbus domain reset for controller

    );
end ipb_rsts;

architecture rtl of ipb_rsts is
    
    signal sysclk, clk_ipb_i: std_logic;
    signal d17, d17_d: std_logic;
    signal nuke_i, nuke_d, nuke_d2: std_logic := '0';
    signal rst, srst, rst_ipb, rst_ipb_ctrl: std_logic := '1';
    signal rctr: unsigned(3 downto 0) := "0000";

begin
    
    sysclk <= clki_fr;
    clk_ipb_i <= clki_fr;
    
    clkdiv: entity ipbus.ipbus_clock_div
        port map(
            clk => sysclk,
            d17 => d17
            --d28 => onehz
        );
    
    process(sysclk)
    begin
        if rising_edge(sysclk) then
            d17_d <= d17;
            if d17='1' and d17_d='0' then
                rst <= nuke_d2 or rsti_fr;
                nuke_d <= nuke_i; -- ~1ms time bomb (allows return packet to be sent)
                nuke_d2 <= nuke_d;
            end if;
        end if;
    end process;
    
    srst <= '1' when rctr /= "0000" else '0';
    
    process(clk_ipb_i)
    begin
        if rising_edge(clk_ipb_i) then
            rst_ipb <= rst or srst;
            --nuke_i <= nuke;
            if srst = '1' or soft_rst = '1' then
                rctr <= rctr + 1;
            end if;
        end if;
    end process;
    
    rsto_ipb <= rst_ipb;
    
    process(clk_ipb_i)
    begin
        if rising_edge(clk_ipb_i) then
            rst_ipb_ctrl <= rst;
        end if;
    end process;
    
    clko_ipb <= clk_ipb_i;
    rsto_ipb_ctrl <= rst_ipb_ctrl;
    
end rtl;