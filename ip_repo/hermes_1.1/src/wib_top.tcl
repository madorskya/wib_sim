create_clock -period 16 -name dune_clk [get_ports clk]
create_clock -period 10 -name axi_clk [get_ports S_AXI_ACLK]
create_clock -period 6.4 -name eth_clk [get_ports eth_clk_p]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks dune_clk] -group [get_clocks -include_generated_clocks axi_clk] -group [get_clocks -include_generated_clocks eth_clk]
