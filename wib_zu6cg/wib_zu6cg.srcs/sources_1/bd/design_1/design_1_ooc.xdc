################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name daq_clk -period 10 [get_ports daq_clk]
create_clock -name ts_clk -period 16 [get_ports ts_clk]
create_clock -name ddi_clk -period 16 [get_ports ddi_clk]
create_clock -name deimos_clk_clk_p -period 6400000 [get_ports deimos_clk_clk_p]

################################################################################