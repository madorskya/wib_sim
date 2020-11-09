----------------------------------------------------------------------------------
--! Company:  EDAQ WIS.  
--! Engineer: juna, fschreud
--! 
--! Create Date:    09/10/2016 
--! Module Name:    FMchannelTXctrl
--! Project Name:   FELIX
----------------------------------------------------------------------------------
--! Use standard library
library work, ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
--use work.centralRouter_package.all;

--! Full Mode channel transmitter controller
entity FMchannelTXctrl is
port (
    clk240      : in  std_logic;
    rst         : in  std_logic;
    --
    busy        : in  std_logic;
    fifo_rclk   : out std_logic;
    fifo_re     : out std_logic;
    fifo_dout   : in  std_logic_vector(31 downto 0);
    fifo_dtype  : in  std_logic_vector(1 downto 0);
    fifo_empty  : in  std_logic;
    --
    dout        : out std_logic_vector(31 downto 0); -- data out @ clk240
    kout        : out std_logic_vector(3 downto 0)
    );
end FMchannelTXctrl;


architecture Behavioral of FMchannelTXctrl is

constant comma32word    : std_logic_vector (31 downto 0) := "00000000000000000000000010111100"; -- K28.5
constant eop32word      : std_logic_vector (31 downto 0) := "00000000000000000000000011011100"; -- K28.6
constant sop32word      : std_logic_vector (31 downto 0) := "00000000000000000000000000111100"; -- K28.1

constant sob32word      : std_logic_vector (31 downto 0) := "00000000000000000000000001011100"; -- K28.2
constant eob32word      : std_logic_vector (31 downto 0) := "00000000000000000000000001111100"; -- K28.3

signal reset_state : std_logic := '1';
signal eop_send,receiving : std_logic := '0';
signal sop_detect,eop_detect,err_detect : std_logic;
signal sop_space,eop_space,sop_send : std_logic;
signal sob_detect,eob_detect,sob_space,eob_space,sob_send,eob_send,stretch_sob,stretch_eob : std_logic;
signal busy_state, last_busy : std_logic;

signal fifo_empty_r1: std_logic;

-- signals for CRC calculation (CRC20)
signal crc_calc, crc_start, crc_add, crc_add_r1 : std_logic;
signal crc_din, crc_din_r1: std_logic_vector(31 downto 0);
signal crc_kin, crc_kin_r1 : std_logic_vector(3 downto 0);
signal crc_out : std_logic_vector(19 downto 0);

begin

fifo_rclk   <= clk240;
reset_state <= '0';


--
---------------------------------------------------------------------------------------
-- reading from user's fifo
---------------------------------------------------------------------------------------
fifo_re <= (not fifo_empty) and (not sop_space) and (not eop_space) and (not sob_space) and (not eob_space) and (not reset_state);

fifo_re_pipe: process(clk240)
begin
    if rising_edge (clk240) then
        fifo_empty_r1 <= fifo_empty;
	end if;
end process;

busy_detect: process(clk240)
begin
    if(rst = '1') then
        busy_state <= '0';
    elsif rising_edge (clk240) then
        --if(sop_space = '0' and eop_space = '0' and busy = '0') then
        last_busy <= busy;
        stretch_sob <= '0';
        stretch_eob <= '0';
        
        --if SOP or EOP is sent, we wait one clock and then send SOB
        if((sop_send = '1' or eop_send = '1') and sob_detect = '1') then 
            stretch_sob <= '1';
        end if;
        --if SOP, EOP or SOB is sent, we wait one clock and then send EOB
        if((sop_send = '1' or eop_send = '1' or sob_detect = '1') and eob_detect = '1') then 
            stretch_eob <= '1';
        end if;
        
        if(sob_detect = '1') then
            busy_state <= '1';
        end if;
        if(eob_detect = '1') then
            busy_state <= '0';
        end if;
        
    end if;
end process;

--
---------------------------------------------------------------------------------------
-- data types
---------------------------------------------------------------------------------------
sop_detect <= '1' when (fifo_dtype = "01") else '0'; -- start-of-packet
eop_detect <= '1' when (fifo_dtype = "10") else '0'; -- end-of-packet
err_detect <= '1' when (fifo_dtype = "11" or reset_state = '1' or fifo_empty_r1 = '1') else '0'; -- data to be ignored

sob_detect <= '1' when ((busy = '1' and last_busy = '0') or stretch_sob = '1') else '0'; --start of busy
eob_detect <= '1' when ((busy = '0' and last_busy = '1') or stretch_eob = '1') else '0'; --end of busy

--
---------------------------------------------------------------------------------------
-- special characters insertion triggers
---------------------------------------------------------------------------------------
sop_space_trig: entity work.pulse_pdxx_pwxx generic map(pd=>0,pw=>1) port map(clk240, sop_detect, sop_space);
eop_space_trig: entity work.pulse_pdxx_pwxx generic map(pd=>0,pw=>1) port map(clk240, eop_detect, eop_space);

sob_space_trig: entity work.pulse_pdxx_pwxx generic map(pd=>0,pw=>1) port map(clk240, sob_detect, sob_space);
eob_space_trig: entity work.pulse_pdxx_pwxx generic map(pd=>0,pw=>1) port map(clk240, eob_detect, eob_space);
--
sop_send <= sop_space;
sob_send <= sob_space;
eob_send <= eob_space;
eop_send_trig: process(clk240)
begin
    if rising_edge (clk240) then
        eop_send <= eop_space;
	end if;
end process;

--
---------------------------------------------------------------------------------------
-- receiving state latch (sop - to - eop)
---------------------------------------------------------------------------------------
receiving_state_latch: process(clk240)
begin
    if rising_edge (clk240) then    
        if reset_state = '1' or eop_space = '1' then
            receiving <= '0';
        elsif sop_space = '1' then
            receiving <= '1';       
        end if;
	end if;
end process;


--
---------------------------------------------------------------------------------------
-- data crc calculation
---------------------------------------------------------------------------------------
data_out: process(clk240)
begin
    if rising_edge (clk240) then    
        crc_calc <= '0';
        crc_start <= '0';
        crc_add <= '0';
        if sop_send = '1' then
            crc_din <= sop32word;
            crc_kin <= "0001";
            crc_start <= '1';
        elsif eop_send = '1' then
            crc_din <= eop32word;       
            crc_kin <= "0001";
            crc_add <= '1';
        elsif sob_send = '1' then
            crc_din <= sob32word;
            crc_kin <= "0001";
        elsif eob_send = '1' then
            crc_din <= eob32word;
            crc_kin <= "0001";
        elsif receiving = '1' and err_detect = '0' then
            crc_calc <= '1';
            crc_din <= fifo_dout;  
            crc_kin <= "0000";
            crc_calc <= '1';
        else
            crc_din <= comma32word;  
            crc_kin <= "0001";
        end if;
	end if;
end process;



crc20_0: entity work.CRC 
   generic map(
     Nbits     => 32,
     CRC_Width => 20,
     G_Poly    => x"8359f",
     G_InitVal => x"fffff"
     )
   port map(
     CRC   => crc_out,
     Calc  => crc_calc,
     Clk   => clk240,
     DIn   => crc_din,
     Reset => crc_start);
     
--Pipe crc_din and crc_kin one clock, then add CRC to EOP and drive output ports dout and kout
crc_to_output: process(clk240)
begin
    if rising_edge(clk240) then
        --pipeline
        crc_add_r1 <= crc_add;
        crc_din_r1 <= crc_din;
        crc_kin_r1 <= crc_kin;
        
        --Output either data, or crc + 1 komma char.
        if crc_add_r1 = '1' then
            dout <= busy_state & crc_din_r1(30 downto 28) & crc_out & crc_din_r1(7 downto 0);
        else
            dout <= crc_din_r1;
        end if;
        kout <= crc_kin_r1;
    end if;
end process;




end Behavioral;

