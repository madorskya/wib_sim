
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY coldadc_i2c_master IS
  GENERIC(
    input_clk : INTEGER := 64_000_000; --input clock speed from user logic in Hz
    bus_clk   : INTEGER := 1_000_000);   --speed the i2c bus (scl) will run at in Hz   1_000_000);  
  PORT(
    clk         : IN     STD_LOGIC;                    -- system clock
    reset       : IN     STD_LOGIC;                    -- reset, active high reset
    enable      : IN     STD_LOGIC;                    -- enable signal for i2c bus.
    FEMB_Long_cable_en : IN     STD_LOGIC;                  
    reg_addr    : IN     STD_LOGIC_VECTOR(7 downto 0); -- 8 bits register address
    reg_data    : IN     STD_LOGIC_VECTOR(7 downto 0); -- 8 bits of register value to be written
    reg_data_rd : OUT    STD_LOGIC_VECTOR(7 downto 0); -- 8 bits of register data output 
    rw          : IN     STD_LOGIC;                    -- read or write control, 0 for write, 1 for read
    busy        : OUT    STD_LOGIC;                    -- indicates transaction in progress
    ack_error   : buffer STD_LOGIC;                    -- ack error.
    chip_id     : IN     STD_LOGIC_VECTOR(3 downto 0); -- 4 bits of chip ID
    page        : IN     STD_LOGIC_VECTOR(2 downto 0); -- 3 bits of page, 0,1,2
    sda_c2w     : IN     STD_LOGIC;                    -- input from cold to warm
    sda_w2c     : OUT    STD_LOGIC;                    -- output from warm to cold
    scl         : OUT    STD_LOGIC;                     -- serial clock output of i2c bus
	 
	 tp_sda_o    : OUT    STD_LOGIC;                    --add 2 test pins
	 tp_scl_o    : OUT    STD_LOGIC;               
	 tp_sda_i    : OUT    STD_LOGIC
);                   
END coldadc_i2c_master;





ARCHITECTURE logic OF coldadc_i2c_master IS
  CONSTANT divider  :  INTEGER := (input_clk/bus_clk)/4; --number of clocks in 1/2 cycle of scl
  TYPE machine IS(IDLE, START, COMMAND, SLV_ACK1, SLV_ACK1_WAIT, REG_ADDRESS, SLV_ACK2, 
                  SLV_ACK2_WAIT, REG_VALUE, SLV_ACK3, SLV_ACK3_WAIT, STOP, DONE, 
						SLV_ACK1_WAIT2, SLV_ACK2_WAIT2, SLV_ACK3_WAIT2); --needed states
  SIGNAL state         : machine;                        --state machine

  SIGNAL bit_cnt       : INTEGER RANGE 0 TO 7 := 7;      --tracks bit number in transaction
--  SIGNAL stretch       : STD_LOGIC := '0';               --identifies if slave is stretching scl
  signal data_tx         : STD_LOGIC_VECTOR(7 downto 0);   --latches signals for transmission
  signal data_rx         : STD_LOGIC_VECTOR(7 downto 0);   -- buffer for latch signals
  signal scl_clk         : STD_LOGIC;
  signal data_clk        : STD_LOGIC;
  signal data_clk_dly    : STD_LOGIC;
  signal scl_ena         : STD_LOGIC;                      --internal SCL enable signal
  signal ena             : STD_LOGIC;                      --latched enable signal
  signal sda_w2c_int     : STD_LOGIC;
  signal sda_c2w_int     : STD_LOGIC;
  signal scl_wait_act     : STD_LOGIC;
BEGIN

  with state select
      sda_w2c_int<= data_clk_dly when START,
                   NOT data_clk_dly when STOP,
                   data_tx(bit_cnt) when COMMAND,
                   data_tx(bit_cnt) when REG_ADDRESS,
                   data_tx(bit_cnt) when REG_VALUE,
                   '1' when IDLE,
                   '1' when DONE,
                   '0' when others;
						 
  sda_w2c <= sda_w2c_int;
	
  sda_c2w_int <= sda_c2w;
  
  scl <= '0' when ((scl_ena = '1' and scl_clk = '0' ) or (scl_wait_act = '1')) else '1';
  ----------test points--------
  tp_sda_o <= sda_w2c_int;
  -- tp_scl_o <= '0' when (scl_ena = '1' and scl_clk = '0') else '1';
  tp_scl_o <= '0' when ((scl_ena = '1' and scl_clk = '0' ) or (scl_wait_act = '1')) else '1';
  tp_sda_i <= sda_c2w_int;
  --tp_r <= scl_ena;
  --tp_f <= ena;
  --ena <= enable;
  
	
  process(clk)
  begin
		if(clk'event and clk = '1') then
			ena <= enable;
		end if;
  end process;
  
  
  
  --reg_data_rd <= data_rx;
  --generate the timing for the bus clock (scl_clk) and the data clock (data_clk) --free running
  process(clk, reset)
      variable count : integer range 0 to divider*4;
  begin
      if(reset = '1') then
          scl_clk <= '0';
			 data_clk <= '0';
			 data_clk_dly <= '0';
          count:=0;
      elsif(clk'event and clk = '1') then
           data_clk_dly <= data_clk;
			  if(count = divider*4-1)  then
					count:=0;
			  else
					count:=count + 1;
			  end if;
			  
			  case count is
					when 0 to divider -1 =>
						 scl_clk <= '0';
						 data_clk <= '0';
					when divider to divider*2 -1 =>
						 scl_clk <= '0';
						 data_clk<= '1';
					when divider*2 to divider*3-1 =>
						 scl_clk <= '1';
						 data_clk <= '1';
					when others =>
						 scl_clk <= '1';
						 data_clk <= '0';
			  end case;
		end if;
  end process;

  --state machine for i2c progress
  process(clk, reset)
  begin
      if(reset = '1') then
        state <= IDLE;
        busy  <= '1';
        reg_data_rd <= (others => '0');
        data_tx     <= (others => '0');
        data_rx     <= (others => '0');
		  ack_error <= '0';
        bit_cnt <= 0;
		  scl_ena <= '0';
		  scl_wait_act <= '0';
      elsif(clk'event and clk = '1') then
          if(data_clk_dly = '0' and data_clk = '1') then     --rising edge, load data
					scl_wait_act <= '0';
					case state is 
						when IDLE =>
							if(ena = '1') then
								busy <= '1';
								state <= START;
							else
								busy <= '0';
								state <= IDLE;
							end if;
						when START =>
							bit_cnt <= 7;
							data_tx <= chip_id & page & rw; --load data
							state <= COMMAND;
						when COMMAND =>
							if (bit_cnt = 0) then
								state <= SLV_ACK1_WAIT;
							else
								bit_cnt <= bit_cnt - 1;
								state <= COMMAND;
							end if;
						when SLV_ACK1_WAIT =>
						   state <= SLV_ACK1_WAIT2;
							scl_wait_act <= '1';
						when SLV_ACK1_WAIT2 =>
						   state <= SLV_ACK1;
							scl_wait_act <= '1';
						when SLV_ACK1 =>
							bit_cnt <= 7;
							data_tx <= reg_addr; --load register address;
							state <= REG_ADDRESS;
							
						when REG_ADDRESS =>
							if(bit_cnt = 0) then
								state <= SLV_ACK2_WAIT;
							else
								bit_cnt <= bit_cnt -1;
								state <= REG_ADDRESS;
							end if;
						when SLV_ACK2_WAIT =>
						   state <= SLV_ACK2_WAIT2;
							scl_wait_act <= '1';							
						when SLV_ACK2_WAIT2 =>
						   state <= SLV_ACK2;	
							scl_wait_act <= '1'	;					
						when SLV_ACK2 =>
							bit_cnt <= 7;
								if (rw = '0') then
									data_tx <= reg_data;
								else
									data_tx <= x"00";
								end if;
							state <= REG_VALUE;
						
						when REG_VALUE =>
							if(bit_cnt = 0) then
								state <= SLV_ACK3_WAIT;
								if(FEMB_Long_cable_en = '1') then
                                    reg_data_rd <= data_rx(6 downto 0) & sda_c2w_int; --latch data
                                else
                                    reg_data_rd <= data_rx;
                                end if;
							else
								bit_cnt <= bit_cnt - 1;
								state <= REG_VALUE;
							end if;
						when SLV_ACK3_WAIT =>
						   state <= SLV_ACK3_WAIT2;
							scl_wait_act <= '1';								
						when SLV_ACK3_WAIT2 =>
						   state <= SLV_ACK3;
							scl_wait_act <= '1';
							
						when SLV_ACK3 =>
							state <= STOP;
							
						when STOP =>
							busy <= '0';
                            state <= DONE;
                        when DONE =>
                            if(ena = '1') then
                                state <= DONE; --stay here
                            else
                                state <= IDLE;
                            end if;
                        when others => state <= IDLE;                        
					end case;
					
          elsif(data_clk_dly = '1' and data_clk = '0') then --falling edge, latch data
					case state is 
						when START =>
							--if(scl_ena = '0') then
								scl_ena <= '1';
								ack_error <= '0';
							--end if;
						when SLV_ACK1 =>
							if (sda_c2w_int /= '1' or ack_error = '1') then
								ack_error <= '1';
							end if;
						when SLV_ACK2 =>
							if (sda_c2w_int /='1' or ack_error = '1') then
								ack_error <= '1';
							end if;
						when REG_VALUE =>
							data_rx(bit_cnt) <= sda_c2w_int;
						when SLV_ACK3 =>
							if (sda_c2w_int /='1' or ack_error = '1') then
								ack_error <= '1';
							end if;
						when STOP =>
							scl_ena <= '0';
						when others =>
							NULL;
					end case;
          end if;  
      end if;
  end process; 
  
END logic;
