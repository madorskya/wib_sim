library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.ipbus.all;
use work.ipbus_axi4lite_decl.all;

entity ipbus_axi4lite2ipb is
	generic(
        IPB_ADDR_MASK: std_logic_vector(31 downto 0) := X"000000FF"; -- Maq: was 0x11111111 here, that leads to wrong address masking
        IPB_ADDR_BASE: std_logic_vector(31 downto 0) := X"00000000"
	);
	port(
		axi_clk: in std_logic;
		axi_rstn: in std_logic;
		axi_in: in ipb_axi4lite_mosi;
		axi_out: out ipb_axi4lite_miso;
		ipb_out: out ipb_wbus;
		ipb_in: in ipb_rbus;
		ipb_rst: out std_logic
	);
	
end ipbus_axi4lite2ipb;

architecture rtl of ipbus_axi4lite2ipb is

    signal ack, wrdy, rrdy, hold, l_ack, l_err, hold_r: std_logic;
    signal addr, l_rdata: std_logic_vector(31 downto 0);
    signal ipb_addr_w: std_logic_vector(31 downto 0);
--    COMPONENT ila_deimos
--    PORT (
--        clk : IN STD_LOGIC;
--        probe0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
--        probe1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
--        probe2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
--        probe3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
--        probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
--    );
--    END COMPONENT  ;
        
begin

-- AW / W busses

    axi_out.awready <= ack and wrdy;
    axi_out.wready <= ack and wrdy;
    wrdy <= '1' when axi_in.awvalid = '1' and axi_in.wvalid = '1' and axi_in.wstrb = "1111" else '0';

-- AR bus

    axi_out.arready <= ack and rrdy and not wrdy;
    rrdy <= axi_in.arvalid;

-- ipbus output

    addr <= axi_in.awaddr when wrdy = '1' else axi_in.araddr;
    ipb_out.ipb_addr <= (("00" & addr(31 downto 2)) and IPB_ADDR_MASK) or IPB_ADDR_BASE; -- axi byte address to ipbus word address
    ipb_addr_w       <= (("00" & addr(31 downto 2)) and IPB_ADDR_MASK) or IPB_ADDR_BASE; -- duplicate of the above for ILA
    ipb_out.ipb_wdata <= axi_in.wdata;
    ipb_out.ipb_write <= wrdy;
    ipb_out.ipb_strobe <= (wrdy or rrdy) and not hold_r;

-- ipbus input

    process(ipb_in.ipb_rdata, hold) -- This is an intentional latch
    begin
        if hold = '0' then
            l_rdata <= ipb_in.ipb_rdata;
            l_ack <= ipb_in.ipb_ack;
            l_err <= ipb_in.ipb_err;
        end if;
    end process;

    ack <= l_ack or l_err;
    hold <= ack and ((wrdy and not axi_in.bready) or (not wrdy and not axi_in.rready));
    hold_r <= hold when rising_edge(axi_clk); 

-- B bus

	axi_out.bresp <= "00" when l_ack = '1' else "10";
	axi_out.bvalid <= ack and wrdy;

-- R bus

    axi_out.rdata <= l_rdata;
    axi_out.rresp <= "00" when l_ack = '1' else "10";
	axi_out.rvalid <= ack and not wrdy;

-- ipbus reset

	ipb_rst <= not axi_rstn;


--    ila_deimos_i : ila_deimos
--    PORT MAP (
--        clk       => axi_clk,
--        probe0    => axi_in.awaddr, 
--        probe1    => axi_in.araddr, 
--        probe2    => addr, 
--        probe3    => ipb_addr_w, 
--        probe4(0) => wrdy, 
--        probe5(0) => rrdy, 
--        probe6(0) => hold_r,
--        probe7(0) => hold_r
--    );


end rtl;
