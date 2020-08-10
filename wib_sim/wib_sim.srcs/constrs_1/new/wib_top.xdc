
set_property -dict {LOC AE5  IOSTANDARD LVDS} [get_ports dune_clk_fpga_in_p]

set_property -dict {LOC W12 IOSTANDARD LVCMOS18} [get_ports gpo_0]

set_property -dict {LOC P11 IOSTANDARD LVCMOS18} [get_ports daq_clk]; # temporary

set_property -dict {LOC AD4 IOSTANDARD LVDS} [get_ports femb_cmd_fpga_out_p]

#set_property -dict {LOC AG5  IOSTANDARD LVDS} [get_ports femb_clk_fpga_out_p] 

set_property -dict {LOC AE2  IOSTANDARD LVDS} [get_ports i2c_lvds_scl_p[0]]
set_property -dict {LOC AD2  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_sda_c2w_p[0]]
set_property -dict {LOC AH1  IOSTANDARD LVDS} [get_ports i2c_lvds_sda_w2c_p[0]]
set_property -dict {LOC AF2  IOSTANDARD LVDS} [get_ports i2c_lvds_l2_sda_w2c_p[0]]
set_property -dict {LOC AG3  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_l2_sda_c2w_p[0]]
set_property -dict {LOC AH2  IOSTANDARD LVDS} [get_ports coldata_clk40_p[0]]

set_property -dict {LOC W2   IOSTANDARD LVDS} [get_ports i2c_lvds_scl_p[1]]
set_property -dict {LOC V2   IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_sda_c2w_p[1]]
set_property -dict {LOC Y2   IOSTANDARD LVDS} [get_ports i2c_lvds_sda_w2c_p[1]]
set_property -dict {LOC AA2  IOSTANDARD LVDS} [get_ports i2c_lvds_l2_sda_w2c_p[1]]
set_property -dict {LOC AB3  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_l2_sda_c2w_p[1]]
set_property -dict {LOC AC2  IOSTANDARD LVDS} [get_ports coldata_clk40_p[1]]

set_property -dict {LOC U5   IOSTANDARD LVDS} [get_ports i2c_lvds_scl_p[2]]
set_property -dict {LOC V4   IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_sda_c2w_p[2]]
set_property -dict {LOC AB4  IOSTANDARD LVDS} [get_ports i2c_lvds_sda_w2c_p[2]]
set_property -dict {LOC W5   IOSTANDARD LVDS} [get_ports i2c_lvds_l2_sda_w2c_p[2]]
set_property -dict {LOC Y5   IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_l2_sda_c2w_p[2]]
set_property -dict {LOC Y4   IOSTANDARD LVDS} [get_ports coldata_clk40_p[2]]

set_property -dict {LOC AA7  IOSTANDARD LVDS} [get_ports i2c_lvds_scl_p[3]]
set_property -dict {LOC Y8   IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_sda_c2w_p[3]]
set_property -dict {LOC AB6  IOSTANDARD LVDS} [get_ports i2c_lvds_sda_w2c_p[3]]
set_property -dict {LOC W7   IOSTANDARD LVDS} [get_ports i2c_lvds_l2_sda_w2c_p[3]]
set_property -dict {LOC AB8  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_l2_sda_c2w_p[3]]
set_property -dict {LOC AC7  IOSTANDARD LVDS} [get_ports coldata_clk40_p[3]]

set_property LOC G27 [get_ports gtrefclk00p_in[0]]
set_property LOC L8  [get_ports gtrefclk00p_in[1]]
set_property LOC G8  [get_ports gtrefclk00p_in[2]]
set_property LOC C8  [get_ports gtrefclk00p_in[3]]

set_property -dict {LOC L12 IOSTANDARD LVDS} [get_ports adn2814_data_p] 
set_property -dict {LOC AE7 IOSTANDARD LVDS} [get_ports si5344_out1_p]
set_property -dict {LOC E20 IOSTANDARD LVCMOS33} [get_ports adn2814_los]
set_property -dict {LOC D20 IOSTANDARD LVCMOS33} [get_ports adn2814_lol]

# timing 
create_clock -period 8 -name gtrefclk00p_in0 [get_ports gtrefclk00p_in[0]]
create_clock -period 8 -name gtrefclk00p_in1 [get_ports gtrefclk00p_in[1]]
create_clock -period 8 -name gtrefclk00p_in2 [get_ports gtrefclk00p_in[2]]
create_clock -period 8 -name gtrefclk00p_in3 [get_ports gtrefclk00p_in[3]]

create_clock -period 16.000 -name dune_clk_fpga_in_p [get_ports dune_clk_fpga_in_p]
create_clock -period 4.166 -name daq_clk [get_ports daq_clk]

set_clock_groups -group [get_clocks -include_generated_clocks dune_clk_fpga_in_p] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks daq_clk] -asynchronous
 
 