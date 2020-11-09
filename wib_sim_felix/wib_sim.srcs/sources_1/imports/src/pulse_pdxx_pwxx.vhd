----------------------------------------------------------------------------------
--! Company:  Weizmann Institute of Science  
--! Engineer: juna
--! 
--! Create Date:    18/12/2014 
--! Module Name:    pulse_pdxx_pwxx
----------------------------------------------------------------------------------
--! Use standard library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--! generates a one clk-pulse pd clkss after trigger rising edge
entity pulse_pdxx_pwxx is
generic (
    pd : integer := 0; -- pulse delay in clks
    pw : integer := 1  -- pulse width in clks
    );
port ( 
    clk         : in   std_logic;
    trigger     : in   std_logic;
    pulseout    : out  std_logic
    );
end pulse_pdxx_pwxx;

architecture Behavioral of pulse_pdxx_pwxx is

------
constant shreg_pd_zeros: std_logic_vector(pd downto 0) := (others => '0');
constant shreg_pw_zeros: std_logic_vector(pw downto 0) := (others => '0');
--
signal shreg_pd: std_logic_vector(pd downto 0) := (others => '0');
signal shreg_pw: std_logic_vector(pw downto 0) := (others => '0');
--
signal on_s : std_logic := '0';
signal pulseout_s_pw_gt1_case_s : std_logic := '0';
signal trigger_1clk_delayed, t0, off_s : std_logic := '0';
------

begin

process (clk)
begin
    if rising_edge(clk) then
        trigger_1clk_delayed <= trigger;
    end if;
end process; 

t0 <= trigger and (not trigger_1clk_delayed); -- the first clk of a trigger, one clk pulse
--


----------------------------------------
-- shift register for pulse delay
----------------------------------------
pd0_case: if (pd = 0) generate
on_s <= t0;
end generate pd0_case;
--
--
pd1_case: if (pd = 1) generate
process (clk)
begin
    if rising_edge(clk) then
        on_s <= t0;
    end if;
end process;
end generate pd1_case;
--
--
pd_gt1_case: if (pd > 1) generate
--
process (clk)
begin
    if rising_edge(clk) then
        if t0 = '1' then
            shreg_pd <= shreg_pd_zeros(pd-1 downto 0) & '1';
        else
            shreg_pd <= shreg_pd(pd-1 downto 0) & '0';
        end if;
    end if;
end process;
--
on_s <= shreg_pd(pd-1);
end generate pd_gt1_case;


----------------------------------------
-- shift register for pulse width
----------------------------------------
pw1_case: if (pw = 1) generate
pulseout <= on_s;
end generate pw1_case;

pw_gt1_case: if (pw > 1) generate
--
process (clk)
begin
    if rising_edge(clk) then
        if on_s = '1' then
            shreg_pw <= shreg_pw_zeros(pw-1 downto 0) & '1';
        else
            shreg_pw <= shreg_pw(pw-1 downto 0) & '0';
        end if;
    end if;
end process;
--
off_s <= shreg_pw(pw-1);      
--
process (clk)
begin
    if rising_edge(clk) then
        if off_s = '1' then
            pulseout_s_pw_gt1_case_s <= '0';
        elsif on_s = '1' then
            pulseout_s_pw_gt1_case_s <= '1';
        end if;
    end if;
end process;
--
pulseout <= (pulseout_s_pw_gt1_case_s or on_s) and (not off_s);
end generate pw_gt1_case;

end Behavioral;

