
# file: wib_ibert_coldata.xdc
####################################################################################
##   ____  ____ 
##  /   /\/   /
## /___/  \  /    Vendor: Xilinx
## \   \   \/     Version : 2012.3
##  \   \         Application : IBERT Ultrascale
##  /   /         Filename : example_wib_ibert_coldata.xdc
## /___/   /\     
## \   \  /  \ 
##  \___\/\___\
##
##
## 
## Generated by Xilinx IBERT 7Series 
##**************************************************************************
##
## Icon Constraints
##
set_property C_CLK_INPUT_FREQ_HZ 125000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER true [get_debug_cores dbg_hub]

##gth_refclk lock constraints
##
set_property PACKAGE_PIN G27 [get_ports gth_refclk0p_i[0]]
set_property PACKAGE_PIN G28 [get_ports gth_refclk0n_i[0]]
set_property PACKAGE_PIN E27 [get_ports gth_refclk1p_i[0]]
set_property PACKAGE_PIN E28 [get_ports gth_refclk1n_i[0]]
set_property PACKAGE_PIN L8 [get_ports gth_refclk0p_i[1]]
set_property PACKAGE_PIN L7 [get_ports gth_refclk0n_i[1]]
set_property PACKAGE_PIN J8 [get_ports gth_refclk1p_i[1]]
set_property PACKAGE_PIN J7 [get_ports gth_refclk1n_i[1]]
set_property PACKAGE_PIN G8 [get_ports gth_refclk0p_i[2]]
set_property PACKAGE_PIN G7 [get_ports gth_refclk0n_i[2]]
set_property PACKAGE_PIN E8 [get_ports gth_refclk1p_i[2]]
set_property PACKAGE_PIN E7 [get_ports gth_refclk1n_i[2]]
set_property PACKAGE_PIN C8 [get_ports gth_refclk0p_i[3]]
set_property PACKAGE_PIN C7 [get_ports gth_refclk0n_i[3]]
set_property PACKAGE_PIN B10 [get_ports gth_refclk1p_i[3]]
set_property PACKAGE_PIN B9 [get_ports gth_refclk1n_i[3]]
##
## Refclk constraints
##
create_clock -name gth_refclk0_3 -period 8.0 [get_ports gth_refclk0p_i[0]]
create_clock -name gth_refclk1_3 -period 8.0 [get_ports gth_refclk1p_i[0]]
set_clock_groups -group [get_clocks gth_refclk0_3 -include_generated_clocks] -asynchronous
set_clock_groups -group [get_clocks gth_refclk1_3 -include_generated_clocks] -asynchronous
create_clock -name gth_refclk0_5 -period 8.0 [get_ports gth_refclk0p_i[1]]
create_clock -name gth_refclk1_5 -period 8.0 [get_ports gth_refclk1p_i[1]]
set_clock_groups -group [get_clocks gth_refclk0_5 -include_generated_clocks] -asynchronous
set_clock_groups -group [get_clocks gth_refclk1_5 -include_generated_clocks] -asynchronous
create_clock -name gth_refclk0_6 -period 8.0 [get_ports gth_refclk0p_i[2]]
create_clock -name gth_refclk1_6 -period 8.0 [get_ports gth_refclk1p_i[2]]
set_clock_groups -group [get_clocks gth_refclk0_6 -include_generated_clocks] -asynchronous
set_clock_groups -group [get_clocks gth_refclk1_6 -include_generated_clocks] -asynchronous
create_clock -name gth_refclk0_7 -period 8.0 [get_ports gth_refclk0p_i[3]]
create_clock -name gth_refclk1_7 -period 8.0 [get_ports gth_refclk1p_i[3]]
set_clock_groups -group [get_clocks gth_refclk0_7 -include_generated_clocks] -asynchronous
set_clock_groups -group [get_clocks gth_refclk1_7 -include_generated_clocks] -asynchronous
