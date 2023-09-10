
#set_property -dict {LOC AE5  IOSTANDARD LVDS} [get_ports dune_clk_fpga_in_p]

set_property -dict {LOC W12 IOSTANDARD LVCMOS18} [get_ports gpo_0]

#set_property -dict {LOC P11 IOSTANDARD LVCMOS18} [get_ports daq_clk]; # temporary

#set_property -dict {LOC AD4 IOSTANDARD LVDS} [get_ports femb_cmd_fpga_out_p]

set_property -dict {LOC AG5  IOSTANDARD LVDS} [get_ports femb_clk_fpga_out_p] 

set_property -dict {LOC AE2  IOSTANDARD LVDS} [get_ports i2c_lvds_scl_p[0]]
set_property -dict {LOC AH1  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_sda_c2w_p[0]]
set_property -dict {LOC AD2  IOSTANDARD LVDS} [get_ports i2c_lvds_sda_w2c_p[0]]
#set_property -dict {LOC AF2  IOSTANDARD LVDS} [get_ports i2c_lvds_l2_sda_w2c_p[0]]
#set_property -dict {LOC AG3  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_l2_sda_c2w_p[0]]

set_property -dict {LOC W2   IOSTANDARD LVDS} [get_ports i2c_lvds_scl_p[1]]
set_property -dict {LOC Y2   IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_sda_c2w_p[1]]
set_property -dict {LOC V2   IOSTANDARD LVDS} [get_ports i2c_lvds_sda_w2c_p[1]]
#set_property -dict {LOC AA2  IOSTANDARD LVDS} [get_ports i2c_lvds_l2_sda_w2c_p[1]]
#set_property -dict {LOC AB3  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_l2_sda_c2w_p[1]]

set_property -dict {LOC U5   IOSTANDARD LVDS} [get_ports i2c_lvds_scl_p[2]]
set_property -dict {LOC AB4  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_sda_c2w_p[2]]
set_property -dict {LOC V4   IOSTANDARD LVDS} [get_ports i2c_lvds_sda_w2c_p[2]]
#set_property -dict {LOC W5   IOSTANDARD LVDS} [get_ports i2c_lvds_l2_sda_w2c_p[2]]
#set_property -dict {LOC Y5   IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_l2_sda_c2w_p[2]]

set_property -dict {LOC AA7  IOSTANDARD LVDS} [get_ports i2c_lvds_scl_p[3]]
set_property -dict {LOC AB6   IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_sda_c2w_p[3]]
set_property -dict {LOC Y8  IOSTANDARD LVDS} [get_ports i2c_lvds_sda_w2c_p[3]]
#set_property -dict {LOC W7   IOSTANDARD LVDS} [get_ports i2c_lvds_l2_sda_w2c_p[3]]
#set_property -dict {LOC AB8  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports i2c_lvds_l2_sda_c2w_p[3]]

set_property IOB TRUE [get_ports i2c_lvds_*]

set_property -dict {LOC AH2 IOSTANDARD LVCMOS18} [get_ports coldata_clk40[0]]
set_property -dict {LOC AJ2 IOSTANDARD LVCMOS18} [get_ports coldata_clk40[1]]
set_property -dict {LOC AC2 IOSTANDARD LVCMOS18} [get_ports coldata_clk40[2]]
set_property -dict {LOC AC1 IOSTANDARD LVCMOS18} [get_ports coldata_clk40[3]]
set_property -dict {LOC Y4  IOSTANDARD LVCMOS18} [get_ports coldata_clk40[4]]
set_property -dict {LOC Y3  IOSTANDARD LVCMOS18} [get_ports coldata_clk40[5]]
set_property -dict {LOC AC7 IOSTANDARD LVCMOS18} [get_ports coldata_clk40[6]]
set_property -dict {LOC AC6 IOSTANDARD LVCMOS18} [get_ports coldata_clk40[7]]

#set_property -dict {LOC L12 IOSTANDARD LVDS} [get_ports adn2814_data_p] 
#set_property -dict {LOC AE7 IOSTANDARD LVDS} [get_ports si5344_out1_p]
#set_property -dict {LOC E20 IOSTANDARD LVCMOS33} [get_ports adn2814_los]
#set_property -dict {LOC D20 IOSTANDARD LVCMOS33} [get_ports adn2814_lol]

# timing 
create_clock -period 7.8 -name gtrefclk00p_in0 [get_ports gtrefclk00p_in[0]]
create_clock -period 7.8 -name gtrefclk00p_in1 [get_ports gtrefclk00p_in[1]]
create_clock -period 7.8 -name gtrefclk00p_in2 [get_ports gtrefclk00p_in[2]]
create_clock -period 7.8 -name gtrefclk00p_in3 [get_ports gtrefclk00p_in[3]]

set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks gtrefclk00p_in0]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks gtrefclk00p_in1]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks gtrefclk00p_in2]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks gtrefclk00p_in3]

set_property package_pin R28 [get_ports mgtrefclk0_x0y1_n]
set_property package_pin R27 [get_ports mgtrefclk0_x0y1_p] 
create_clock -name clk_mgtrefclk0_x0y1_p -period 8.0 [get_ports mgtrefclk0_x0y1_p]
create_clock -period 4 -name felix_tx_clk [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1]*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST*}]]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks felix_tx_clk]

set_property LOC T34 [get_ports ch0_gthrxn_in]
set_property LOC T33 [get_ports ch0_gthrxp_in]
set_property LOC P34 [get_ports ch1_gthrxn_in]
set_property LOC P33 [get_ports ch1_gthrxp_in]
set_property LOC T30 [get_ports ch0_gthtxn_out]
set_property LOC T29 [get_ports ch0_gthtxp_out]
set_property LOC R32 [get_ports ch1_gthtxn_out]
set_property LOC R31 [get_ports ch1_gthtxp_out]

create_clock -period 16.000 -name dune_clk_fpga_in_p [get_ports dune_clk_fpga_in_p]
#create_clock -period 4.166 -name daq_clk [get_ports daq_clk]

set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets clk50]
create_clock -period 20 -name clk50 [get_ports clk_in_50mhz]

set_false_path -from [get_ports bp_crate_addr[*]]
set_false_path -from [get_ports bp_slot_addr[*]]


#create_clock -period 16.000 -name si5344_out1_p [get_ports si5344_out1_p]; # timing endpoint clock via PLL
#set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks si5344_out1_p]
#create_clock -period 4.000 -name adn2814_fpga_clk_p [get_ports adn2814_fpga_clk_p]; # timing endpoint clock via CDR
#set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks adn2814_fpga_clk_p]
#set_false_path -from [get_clocks si5344_out1_p] -to [get_clocks adn2814_fpga_clk_p];
#set_false_path -from [get_clocks adn2814_fpga_clk_p] -to [get_clocks si5344_out1_p]

# tell vivado that the BUFGMUXed clocks never interact
#set_clock_groups -physically_exclusive -group si5344_out1_p -group adn2814_fpga_clk_p

# New timing endpoint uses duty-cycle-shift-keyed "clock" from CDR DATA (passthrough)
create_clock -period 16.000 -name adn2814_data_p [get_ports adn2814_data_p]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks adn2814_data_p]
set_false_path -from [get_ports adn2814_data_p]
# If using CDR bypass (DATA direct from MUX), comment out line below, route ts_fpga_clk_pad into endpoint rx:
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets tp_data_buf_in/O]
# endpoint ourput clock, and PLL clock, can be MUX'd with register bit
# set_clock_groups -physically_exclusive -group si5344_out1_p -group adn2814_data_p
#set_clock_groups -logically_exclusive -group si5344_out1_p -group adn2814_data_p
#set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clock si5344_out1_p] -group [get_clocks -include_generated_clock adn2814_data_p]
#set_clock_groups -asynchronous -group [get_clocks -include_generated_clock si5344_out1_p] -group [get_clocks -include_generated_clock adn2814_data_p]
#create_generated_clock -name clk1mux -divide_by 1 -source [get_nets ts_fake_mmcm/clkin1] [get_nets ts_fake_mmcm/clkout1]
#create_generated_clock -name clk2mux -divide_by 1 -add -master_clock ts_rec_d_clk_pll -source [get_nets ts_fake_mmcm/clkin1] [get_nets ts_fake_mmcm/clkout2]
#set_clock_groups -physically_exclusive -group clk1mux -group clk2mux


# for BUFGMUX in wib_top.sv
create_clock -period 8 -name mux_in_0 [get_pins ts_clk_mux2x/I0]
create_clock -period 8 -name mux_in_1 [get_pins ts_clk_mux2x/I1]
set_clock_groups -physically_exclusive -group mux_in_0 -group mux_in_1 
 
# for BUFGMUX in endpoint
create_clock -period 16 -name mux_inx1_0 [get_pins timing_i/pdts_endpoint_wrapper_i/ts_clk_mux/I0]
create_clock -period 16 -name mux_inx1_1 [get_pins timing_i/pdts_endpoint_wrapper_i/ts_clk_mux/I1]
set_clock_groups -physically_exclusive -group mux_inx1_0 -group mux_inx1_1 
 
 
# timing data input constraints relative to clock
# measured at UPenn setup by Ben on 2020-12-09
#set_input_delay -max -clock si5344_out1_p 2.0 [get_ports adn2814_data_p]
#set_input_delay -min -clock si5344_out1_p 0.8 [get_ports adn2814_data_p] 
 
set_false_path -to [get_ports misc_io[*]] 

# isolate AXI clock
set_clock_groups -asynchronous -group [get_clocks clk_pl_0]

# constraints for DEIMOS module
# with IP
#set_false_path -from [get_clocks -of_objects [get_pins wrp/design_1_i/tx_mux_wib_tux_0/inst/tmw/inst/mux/mmcm/CLKOUT1]] -to [get_clocks mux_inx1_*]
# with direct HDL inclusion
set_false_path -from [get_clocks -of_objects [get_pins wrp/design_1_i/tx_mux_wib_tux_0/inst/tmw/mux/mmcm/CLKOUT1]] -to [get_clocks mux_inx1_*]
# below copied from Jack's project

#BANK  44 HD  2.5V

set_property PACKAGE_PIN AE14 [get_ports {wib_led[0]}]
set_property PACKAGE_PIN AE15 [get_ports {wib_led[1]}]
set_property PACKAGE_PIN AG15 [get_ports {wib_led[2]}]
set_property PACKAGE_PIN AF15 [get_ports {wib_led[3]}]
set_property PACKAGE_PIN AG13 [get_ports {wib_led[4]}]
set_property PACKAGE_PIN AG14 [get_ports {wib_led[5]}]
set_property PACKAGE_PIN AF13 [get_ports {wib_led[6]}]
set_property PACKAGE_PIN AE13 [get_ports {wib_led[7]}]

set_property PACKAGE_PIN AJ14 [get_ports {misc_io[0]}]
set_property PACKAGE_PIN AJ15 [get_ports {misc_io[1]}]
set_property PACKAGE_PIN AH13 [get_ports {misc_io[2]}]
set_property PACKAGE_PIN AH14 [get_ports {misc_io[3]}]
set_property PACKAGE_PIN AL12 [get_ports {misc_io[4]}]
set_property PACKAGE_PIN AK13 [get_ports {misc_io[5]}]
set_property PACKAGE_PIN AK14 [get_ports {misc_io[6]}]
set_property PACKAGE_PIN AK15 [get_ports {misc_io[7]}]
set_property PACKAGE_PIN AM13 [get_ports {misc_io[8]}]
set_property PACKAGE_PIN AL13 [get_ports {misc_io[9]}]
set_property PACKAGE_PIN AP12 [get_ports {misc_io[10]}]
set_property PACKAGE_PIN AN12 [get_ports {misc_io[11]}]
set_property PACKAGE_PIN AN13 [get_ports {misc_io[12]}]
set_property PACKAGE_PIN AM14 [get_ports {misc_io[13]}]
set_property PACKAGE_PIN AP14 [get_ports {misc_io[14]}]
set_property PACKAGE_PIN AN14 [get_ports {misc_io[15]}]


#BANK  47 HD  3.3V

# switches for DAC source select
#FEMB0   U89  A20
#FEMB1   U111 B21
#FEMB2   U92  C21
#FEMB3   U113 C22

set_property PACKAGE_PIN A20 [get_ports dac_src_sel[0]]
set_property PACKAGE_PIN B21 [get_ports dac_src_sel[1]]
set_property PACKAGE_PIN C21 [get_ports dac_src_sel[2]]
set_property PACKAGE_PIN C22 [get_ports dac_src_sel[3]]
set_property IOSTANDARD LVCMOS33 [get_ports dac_src_sel[*]]

set_property PACKAGE_PIN B20 [get_ports qsfp_sda]
set_property PACKAGE_PIN A22 [get_ports qsfp_scl]
set_property PACKAGE_PIN A21 [get_ports qsfp_rst]
set_property PACKAGE_PIN D21 [get_ports uart_nrst]
set_property PACKAGE_PIN D20 [get_ports adn2814_lol]
set_property PACKAGE_PIN E20 [get_ports adn2814_los]
set_property PACKAGE_PIN D22 [get_ports adn2814_scl]
set_property PACKAGE_PIN E22 [get_ports adn2814_sda]
set_property PACKAGE_PIN G20 [get_ports ps_dimm_vddq_to_psvcco_on]
set_property PACKAGE_PIN F21 [get_ports tx_timing_disable]
set_property PACKAGE_PIN G21 [get_ports reset_ext]
set_property PACKAGE_PIN J20 [get_ports sensor_i2c_scl]
set_property PACKAGE_PIN J19 [get_ports sensor_i2c_sda]
set_property PACKAGE_PIN H21 [get_ports pl_femb_pwr_scl]
set_property PACKAGE_PIN J21 [get_ports pl_femb_pwr_sda]
set_property PACKAGE_PIN K19 [get_ports pl_femb_en_scl]
set_property PACKAGE_PIN L19 [get_ports pl_femb_en_sda]
set_property PACKAGE_PIN K20 [get_ports pl_femb_pwr2_scl]
set_property PACKAGE_PIN L20 [get_ports pl_femb_pwr2_sda]

#BANK  48 HD  2.5V

set_property PACKAGE_PIN A18 [get_ports {bp_crate_addr[0]}]
set_property PACKAGE_PIN A17 [get_ports {bp_crate_addr[1]}]
set_property PACKAGE_PIN C19 [get_ports {bp_crate_addr[2]}]
set_property PACKAGE_PIN C18 [get_ports {bp_crate_addr[3]}]
set_property PACKAGE_PIN B19 [get_ports mgt_clk_sel]
set_property PACKAGE_PIN B18 [get_ports femb_cmd_sel]
set_property PACKAGE_PIN C17 [get_ports femb_clk_sel]
set_property PACKAGE_PIN D17 [get_ports rx_timing_sel]
set_property PACKAGE_PIN E18 [get_ports fp_sfp_sel]

set_property PACKAGE_PIN E17 [get_ports mon_adc_sdo[3]]
set_property PACKAGE_PIN D19 [get_ports cal_dac_sync]
set_property PACKAGE_PIN E19 [get_ports clk_in_50mhz]
set_property PACKAGE_PIN F18 [get_ports cal_dac_sclk]
set_property PACKAGE_PIN F17 [get_ports flash_scl]
set_property PACKAGE_PIN G19 [get_ports flash_sda]
set_property PACKAGE_PIN G18 [get_ports cal_dac_din]
set_property PACKAGE_PIN K17 [get_ports {bp_io[0]}]
set_property PACKAGE_PIN L17 [get_ports {bp_io[1]}]
set_property PACKAGE_PIN K18 [get_ports {bp_io[2]}]
set_property PACKAGE_PIN L18 [get_ports {bp_io[3]}]
set_property PACKAGE_PIN H17 [get_ports {bp_io[4]}]
set_property PACKAGE_PIN J17 [get_ports {bp_io[5]}]
set_property PACKAGE_PIN H19 [get_ports {bp_io[6]}]
set_property PACKAGE_PIN H18 [get_ports {bp_io[7]}]




#BANK  49 HD   3.3V


set_property PACKAGE_PIN E13 [get_ports {eq_los_brd0_rx[0]}]
set_property PACKAGE_PIN F13 [get_ports {eq_los_brd0_rx[1]}]
set_property PACKAGE_PIN D12 [get_ports {eq_los_brd0_rx[2]}]
set_property PACKAGE_PIN E12 [get_ports {eq_los_brd0_rx[3]}]
set_property PACKAGE_PIN B12 [get_ports mon_adc_sdo[0]]
set_property PACKAGE_PIN C12 [get_ports {eq_los_brd1_rx[0]}]
set_property PACKAGE_PIN A12 [get_ports {eq_los_brd1_rx[1]}]
set_property PACKAGE_PIN A13 [get_ports {eq_los_brd1_rx[2]}]
set_property PACKAGE_PIN B13 [get_ports {eq_los_brd1_rx[3]}]
set_property PACKAGE_PIN C13 [get_ports mon_adc_sdo[1]]
set_property PACKAGE_PIN B14 [get_ports {eq_los_brd2_rx[0]}]
set_property PACKAGE_PIN C14 [get_ports {eq_los_brd2_rx[1]}]
set_property PACKAGE_PIN D14 [get_ports {eq_los_brd2_rx[2]}]
set_property PACKAGE_PIN E14 [get_ports {eq_los_brd2_rx[3]}]
set_property PACKAGE_PIN D15 [get_ports mon_adc_sdo[2]]
set_property PACKAGE_PIN E15 [get_ports {eq_los_brd3_rx[0]}]
set_property PACKAGE_PIN A15 [get_ports {eq_los_brd3_rx[1]}]
set_property PACKAGE_PIN B15 [get_ports {eq_los_brd3_rx[2]}]
set_property PACKAGE_PIN A16 [get_ports {eq_los_brd3_rx[3]}]

set_property PACKAGE_PIN B16 [get_ports mon_adc_sck]
set_property PACKAGE_PIN C16 [get_ports mon_adc_cs]
set_property PACKAGE_PIN D16 [get_ports pwr_good]
set_property PACKAGE_PIN F15 [get_ports ltc2977_sda]
set_property PACKAGE_PIN F16 [get_ports ltc2977_scl]


#BANK  50 HD   2.5V



set_property PACKAGE_PIN J15 [get_ports si5344_sda]
set_property PACKAGE_PIN J16 [get_ports si5344_scl]
set_property PACKAGE_PIN G16 [get_ports si5344_sel0]
set_property PACKAGE_PIN H16 [get_ports si5344_sel1]
set_property PACKAGE_PIN H14 [get_ports si5344_rst]
set_property PACKAGE_PIN J14 [get_ports si5344_oe]
set_property PACKAGE_PIN G14 [get_ports si5344_intr]

#Switch for monitor vs pulse select     U90,U110,U112,U114  G15
#Switch to inject calibration pulse     U91  G13
set_property PACKAGE_PIN G15 [get_ports mon_vs_pulse_sel] 
set_property PACKAGE_PIN G13 [get_ports inj_cal_pulse]

set_property PACKAGE_PIN H13 [get_ports si5342_sda]
set_property PACKAGE_PIN H12 [get_ports si5342_scl]
set_property PACKAGE_PIN J12 [get_ports si5342_sel1]
set_property PACKAGE_PIN F11 [get_ports si5342_sel0]
set_property PACKAGE_PIN F12 [get_ports si5342_rst]
set_property PACKAGE_PIN G11 [get_ports si5342_oe]
set_property PACKAGE_PIN H11 [get_ports si5342_intr]


set_property PACKAGE_PIN D10 [get_ports {fp_io[0]}]
set_property PACKAGE_PIN D11 [get_ports {fp_io[1]}]
set_property PACKAGE_PIN E10 [get_ports {fp_io[2]}]
set_property PACKAGE_PIN F10 [get_ports {fp_io[3]}]


set_property PACKAGE_PIN G10 [get_ports {bp_slot_addr[3]}]
set_property PACKAGE_PIN H10 [get_ports {bp_slot_addr[2]}]
set_property PACKAGE_PIN J10 [get_ports {bp_slot_addr[1]}]
set_property PACKAGE_PIN J11 [get_ports {bp_slot_addr[0]}]
set_property PULLUP true     [get_ports {bp_slot_addr[*]}]

#BANK  64 HD   1.8V


set_property PACKAGE_PIN AK7 [get_ports core_clk2_n]
set_property PACKAGE_PIN AK8 [get_ports core_clk2_p]

set_property PACKAGE_PIN AM5 [get_ports {lemo_io_0}]
set_property PACKAGE_PIN AM6 [get_ports {lemo_io_1}]
set_property PACKAGE_PIN AP4 [get_ports {lemo_dir[0]}]
set_property PACKAGE_PIN AP5 [get_ports {lemo_dir[1]}]

set_property PACKAGE_PIN AN4 [get_ports {dip_sw[0]}]
set_property PACKAGE_PIN AM4 [get_ports {dip_sw[1]}]
set_property PACKAGE_PIN AK4 [get_ports {dip_sw[2]}]
set_property PACKAGE_PIN AK5 [get_ports {dip_sw[3]}]
set_property PACKAGE_PIN AP2 [get_ports {dip_sw[4]}]
set_property PACKAGE_PIN AN2 [get_ports {dip_sw[5]}]
set_property PACKAGE_PIN AK12 [get_ports {dip_sw[6]}]
set_property PACKAGE_PIN AJ12 [get_ports {dip_sw[7]}]


set_property PACKAGE_PIN AL2 [get_ports ps_dimm_suspend_en]
set_property PACKAGE_PIN AK2 [get_ports temp_s1_alert]
set_property PACKAGE_PIN AK3 [get_ports temp_s2_alert]
set_property PACKAGE_PIN AM11 [get_ports temp_s3_alert]
set_property PACKAGE_PIN AP9 [get_ports pl_femb_pwr3_scl]
set_property PACKAGE_PIN AN9 [get_ports pl_femb_pwr3_sda]

set_property PACKAGE_PIN AH3 [get_ports {cal_pulse[0]}]
set_property PACKAGE_PIN AB3 [get_ports {cal_pulse[1]}]
set_property PACKAGE_PIN AA5 [get_ports {cal_pulse[2]}]
set_property PACKAGE_PIN AC8 [get_ports {cal_pulse[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports cal_pulse[*]]
set_property IOB TRUE [get_ports cal_pulse[*]]
set_property IOB TRUE [get_ports misc_io[0]]
set_property IOB TRUE [get_ports misc_io[1]]
set_property IOB TRUE [get_ports misc_io[2]]
set_property IOB TRUE [get_ports misc_io[3]]

#BANK  65 HD   1.8V


#set_property PACKAGE_PIN AE2 [get_ports {femb_brd0_io_p[0]}]
#set_property PACKAGE_PIN AE1 [get_ports {femb_brd0_io_n[0]}]
#set_property PACKAGE_PIN AD2 [get_ports {femb_brd0_io_p[1]}]
#set_property PACKAGE_PIN AD1 [get_ports {femb_brd0_io_n[1]}]
#set_property PACKAGE_PIN AH1 [get_ports {femb_brd0_io_p[2]}]
#set_property PACKAGE_PIN AJ1 [get_ports {femb_brd0_io_n[2]}]
#set_property PACKAGE_PIN AF2 [get_ports {femb_brd0_io_p[3]}]
#set_property PACKAGE_PIN AF1 [get_ports {femb_brd0_io_n[3]}]
#set_property PACKAGE_PIN AG3 [get_ports {femb_brd0_io_p[4]}]
#set_property PACKAGE_PIN AH3 [get_ports {femb_brd0_io_n[4]}]
#set_property PACKAGE_PIN AH2 [get_ports {femb_brd0_io_p[5]}]
#set_property PACKAGE_PIN AJ2 [get_ports {femb_brd0_io_n[5]}]


set_property PACKAGE_PIN AD4 [get_ports femb_cmd_fpga_out_p]
set_property PACKAGE_PIN AE4 [get_ports femb_cmd_fpga_out_n]



set_property PACKAGE_PIN AG5 [get_ports dune_clk_fpga_out_p]
set_property PACKAGE_PIN AG4 [get_ports dune_clk_fpga_out_n]
set_property PACKAGE_PIN AE5 [get_ports dune_clk_fpga_in_p]
set_property PACKAGE_PIN AF5 [get_ports dune_clk_fpga_in_n]
set_property PACKAGE_PIN AE7 [get_ports si5344_out1_p]
set_property PACKAGE_PIN AF7 [get_ports si5344_out1_n]


set_property PACKAGE_PIN AG6 [get_ports core_clk3_n]
set_property PACKAGE_PIN AF6 [get_ports core_clk3_p]







#BANK  66 HD   1.8V

#set_property PACKAGE_PIN W2 [get_ports {femb_brd1_io_p[0]}]
#set_property PACKAGE_PIN W1 [get_ports {femb_brd1_io_n[0]}]
#set_property PACKAGE_PIN V2 [get_ports {femb_brd1_io_p[1]}]
#set_property PACKAGE_PIN V1 [get_ports {femb_brd1_io_n[1]}]
#set_property PACKAGE_PIN Y2 [get_ports {femb_brd1_io_p[2]}]
#set_property PACKAGE_PIN Y1 [get_ports {femb_brd1_io_n[2]}]
#set_property PACKAGE_PIN AA2 [get_ports {femb_brd1_io_p[3]}]
#set_property PACKAGE_PIN AA1 [get_ports {femb_brd1_io_n[3]}]
#set_property PACKAGE_PIN AB3 [get_ports {femb_brd1_io_p[4]}]
#set_property PACKAGE_PIN AC3 [get_ports {femb_brd1_io_n[4]}]
#set_property PACKAGE_PIN AC2 [get_ports {femb_brd1_io_p[5]}]
#set_property PACKAGE_PIN AC1 [get_ports {femb_brd1_io_n[5]}]

#set_property PACKAGE_PIN U5 [get_ports {femb_brd2_io_p[0]}]
#set_property PACKAGE_PIN U4 [get_ports {femb_brd2_io_n[0]}]
#set_property PACKAGE_PIN V4 [get_ports {femb_brd2_io_p[1]}]
#set_property PACKAGE_PIN V3 [get_ports {femb_brd2_io_n[1]}]
#set_property PACKAGE_PIN AB4 [get_ports {femb_brd2_io_p[2]}]
#set_property PACKAGE_PIN AC4 [get_ports {femb_brd2_io_n[2]}]
#set_property PACKAGE_PIN W5 [get_ports {femb_brd2_io_p[3]}]
#set_property PACKAGE_PIN W4 [get_ports {femb_brd2_io_n[3]}]
#set_property PACKAGE_PIN Y5 [get_ports {femb_brd2_io_p[4]}]
#set_property PACKAGE_PIN AA5 [get_ports {femb_brd2_io_n[4]}]
#set_property PACKAGE_PIN Y4 [get_ports {femb_brd2_io_p[5]}]
#set_property PACKAGE_PIN Y3 [get_ports {femb_brd2_io_n[5]}]

#set_property PACKAGE_PIN AA7 [get_ports {femb_brd3_io_p[0]}]
#set_property PACKAGE_PIN AA6 [get_ports {femb_brd3_io_n[0]}]
#set_property PACKAGE_PIN Y8 [get_ports {femb_brd3_io_p[1]}]
#set_property PACKAGE_PIN Y7 [get_ports {femb_brd3_io_n[1]}]
#set_property PACKAGE_PIN AB6 [get_ports {femb_brd3_io_p[2]}]
#set_property PACKAGE_PIN AB5 [get_ports {femb_brd3_io_n[2]}]
#set_property PACKAGE_PIN W7 [get_ports {femb_brd3_io_p[3]}]
#set_property PACKAGE_PIN W6 [get_ports {femb_brd3_io_n[3]}]
#set_property PACKAGE_PIN AB8 [get_ports {femb_brd3_io_p[4]}]
#set_property PACKAGE_PIN AC8 [get_ports {femb_brd3_io_n[4]}]
#set_property PACKAGE_PIN AC7 [get_ports {femb_brd3_io_p[5]}]
#set_property PACKAGE_PIN AC6 [get_ports {femb_brd3_io_n[5]}]




#BANK  67 HD   1.8V


set_property PACKAGE_PIN K15 [get_ports si5344_lol]
set_property PACKAGE_PIN L15 [get_ports si5344_losxaxb]

set_property PACKAGE_PIN M13 [get_ports si5342_losxaxb]
set_property PACKAGE_PIN N13 [get_ports si5342_los3]
set_property PACKAGE_PIN N12 [get_ports si5342_los2]
set_property PACKAGE_PIN P12 [get_ports si5342_los1]
set_property PACKAGE_PIN M14 [get_ports si5342_los0]
set_property PACKAGE_PIN M15 [get_ports si5342_lol]

set_property PACKAGE_PIN L16 [get_ports tx_timing_p]
set_property PACKAGE_PIN K16 [get_ports tx_timing_n]

set_property PACKAGE_PIN L12 [get_ports adn2814_data_p]
set_property PACKAGE_PIN K12 [get_ports adn2814_data_n]
set_property DIFF_TERM_ADV TERM_100 [get_ports adn2814_data_p]
set_property DIFF_TERM_ADV TERM_100 [get_ports si5344_out1_p]
#set_property IOB TRUE [get_ports adn2814_data_p]

set_property PACKAGE_PIN P11 [get_ports adn2814_fpga_clk_p]
set_property IOSTANDARD LVDS [get_ports adn2814_fpga_clk_p]
set_property DIFF_TERM_ADV TERM_100 [get_ports adn2814_fpga_clk_p]


set_property PACKAGE_PIN P10 [get_ports recov_clk_p]
set_property PACKAGE_PIN P9 [get_ports recov_clk_n]


set_property PACKAGE_PIN T8 [get_ports si5344_out0_p]
set_property PACKAGE_PIN R8 [get_ports si5344_out0_n]



set_property PACKAGE_PIN R9 [get_ports core_clk1_n]
set_property PACKAGE_PIN R10 [get_ports core_clk1_p]



set_property PACKAGE_PIN U6 [get_ports fpga_clk_n]
set_property PACKAGE_PIN V6 [get_ports fpga_clk_p]





#BANK  44 HD  2.5V


set_property IOSTANDARD LVCMOS25 [get_ports {wib_led[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {wib_led[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {wib_led[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {wib_led[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {wib_led[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {wib_led[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {wib_led[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {wib_led[7]}]

set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[8]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[9]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[10]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[11]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[12]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[13]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[14]}]
set_property IOSTANDARD LVCMOS25 [get_ports {misc_io[15]}]

#BANK  47 HD  3.3V

set_property IOSTANDARD LVCMOS33 [get_ports qsfp_sel]
set_property IOSTANDARD LVCMOS33 [get_ports qsfp_sda]
set_property IOSTANDARD LVCMOS33 [get_ports qsfp_scl]
set_property IOSTANDARD LVCMOS33 [get_ports qsfp_rst]
set_property IOSTANDARD LVCMOS33 [get_ports qsfp_mode]
set_property IOSTANDARD LVCMOS33 [get_ports qsfp_intn]
set_property IOSTANDARD LVCMOS33 [get_ports qsfp_prsn]
set_property IOSTANDARD LVCMOS33 [get_ports uart_nrst]
set_property IOSTANDARD LVCMOS33 [get_ports adn2814_lol]
set_property IOSTANDARD LVCMOS33 [get_ports adn2814_los]
set_property IOSTANDARD LVCMOS33 [get_ports adn2814_scl]
set_property IOSTANDARD LVCMOS33 [get_ports adn2814_sda]
set_property IOSTANDARD LVCMOS33 [get_ports ps_dimm_vddq_to_psvcco_on]
set_property IOSTANDARD LVCMOS33 [get_ports tx_timing_disable]
set_property IOSTANDARD LVCMOS33 [get_ports reset_ext]
set_property IOSTANDARD LVCMOS33 [get_ports sensor_i2c_scl]
set_property IOSTANDARD LVCMOS33 [get_ports sensor_i2c_sda]
set_property IOSTANDARD LVCMOS33 [get_ports pl_femb_pwr_scl]
set_property IOSTANDARD LVCMOS33 [get_ports pl_femb_pwr_sda]
set_property IOSTANDARD LVCMOS33 [get_ports pl_femb_en_scl]
set_property IOSTANDARD LVCMOS33 [get_ports pl_femb_en_sda]
set_property IOSTANDARD LVCMOS33 [get_ports pl_femb_pwr2_scl]
set_property IOSTANDARD LVCMOS33 [get_ports pl_femb_pwr2_sda]

#BANK  48 HD  2.5V

set_property IOSTANDARD LVCMOS25 [get_ports {bp_crate_addr[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_crate_addr[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_crate_addr[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_crate_addr[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports mgt_clk_sel]
set_property IOSTANDARD LVCMOS25 [get_ports femb_cmd_sel]
set_property IOSTANDARD LVCMOS25 [get_ports femb_clk_sel]
set_property IOSTANDARD LVCMOS25 [get_ports rx_timing_sel]
set_property IOSTANDARD LVCMOS25 [get_ports fp_sfp_sel]

set_property IOSTANDARD LVCMOS25 [get_ports mon_adc_sdo[3]]
set_property IOSTANDARD LVCMOS25 [get_ports clk_in_50mhz]
set_property IOSTANDARD LVCMOS25 [get_ports flash_scl]
set_property IOSTANDARD LVCMOS25 [get_ports flash_sda]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_io[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_io[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_io[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_io[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_io[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_io[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_io[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_io[7]}]
# pullups for PTC I2C pins
set_property PULLUP true     [get_ports {bp_io[6]}]
set_property PULLUP true     [get_ports {bp_io[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports cal_dac_sync]
set_property IOSTANDARD LVCMOS25 [get_ports cal_dac_sclk]
set_property IOSTANDARD LVCMOS25 [get_ports cal_dac_din]
set_property IOB TRUE [get_ports cal_dac_sync]
set_property IOB TRUE [get_ports cal_dac_sclk]
set_property IOB TRUE [get_ports cal_dac_din]

#BANK  49 HD   3.3V

set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd0_rx[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd0_rx[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd0_rx[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd0_rx[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports mon_adc_sdo[0]]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd1_rx[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd1_rx[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd1_rx[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd1_rx[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports mon_adc_sdo[1]]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd2_rx[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd2_rx[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd2_rx[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd2_rx[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports mon_adc_sdo[2]]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd3_rx[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd3_rx[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd3_rx[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eq_los_brd3_rx[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports mon_adc_sck]
set_property IOSTANDARD LVCMOS33 [get_ports mon_adc_cs]
set_property IOSTANDARD LVCMOS33 [get_ports pwr_good]
set_property IOSTANDARD LVCMOS33 [get_ports ltc2977_sda]
set_property IOSTANDARD LVCMOS33 [get_ports ltc2977_scl]

set_property IOB TRUE [get_ports mon_adc_*]

#BANK  50 HD   2.5V



set_property IOSTANDARD LVCMOS25 [get_ports si5344_sda]
set_property IOSTANDARD LVCMOS25 [get_ports si5344_scl]
set_property IOSTANDARD LVCMOS25 [get_ports si5344_sel0]
set_property IOSTANDARD LVCMOS25 [get_ports si5344_sel1]
set_property IOSTANDARD LVCMOS25 [get_ports si5344_rst]
set_property IOSTANDARD LVCMOS25 [get_ports si5344_oe]
set_property IOSTANDARD LVCMOS25 [get_ports si5344_intr]

set_property IOSTANDARD LVCMOS25 [get_ports mon_vs_pulse_sel] 
set_property IOSTANDARD LVCMOS25 [get_ports inj_cal_pulse]

set_property IOSTANDARD LVCMOS25 [get_ports si5342_sda]
set_property IOSTANDARD LVCMOS25 [get_ports si5342_scl]
set_property IOSTANDARD LVCMOS25 [get_ports si5342_sel1]
set_property IOSTANDARD LVCMOS25 [get_ports si5342_sel0]
set_property IOSTANDARD LVCMOS25 [get_ports si5342_rst]
set_property IOSTANDARD LVCMOS25 [get_ports si5342_oe]
set_property IOSTANDARD LVCMOS25 [get_ports si5342_intr]


set_property IOSTANDARD LVCMOS25 [get_ports {fp_io[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {fp_io[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {fp_io[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {fp_io[3]}]


set_property IOSTANDARD LVCMOS25 [get_ports {bp_slot_addr[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_slot_addr[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_slot_addr[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {bp_slot_addr[1]}]

#BANK  64 HD   1.8V


set_property IOSTANDARD LVDS [get_ports core_clk2_n]
set_property IOSTANDARD LVDS [get_ports core_clk2_p]

set_property IOSTANDARD LVCMOS18 [get_ports {lemo_io_0}]
set_property IOSTANDARD LVCMOS18 [get_ports {lemo_io_1}]
set_property IOSTANDARD LVCMOS18 [get_ports {lemo_dir[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {lemo_dir[1]}]

set_property IOSTANDARD LVCMOS18 [get_ports {dip_sw[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {dip_sw[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {dip_sw[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {dip_sw[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {dip_sw[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {dip_sw[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {dip_sw[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {dip_sw[7]}]


set_property IOSTANDARD LVCMOS18 [get_ports ps_dimm_suspend_en]
set_property IOSTANDARD LVCMOS18 [get_ports temp_s1_alert]
set_property IOSTANDARD LVCMOS18 [get_ports temp_s2_alert]
set_property IOSTANDARD LVCMOS18 [get_ports temp_s3_alert]
set_property IOSTANDARD LVCMOS18 [get_ports pl_femb_pwr3_scl]
set_property IOSTANDARD LVCMOS18 [get_ports pl_femb_pwr3_sda]

#BANK  65 HD   1.8V


set_property IOSTANDARD LVDS [get_ports {femb_brd0_io_n[0]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd0_io_p[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {femb_brd0_io_n[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {femb_brd0_io_p[1]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd0_io_n[2]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd0_io_p[2]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd0_io_n[3]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd0_io_p[3]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd0_io_n[4]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd0_io_p[4]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd0_io_n[5]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd0_io_p[5]}]


set_property IOSTANDARD LVDS [get_ports femb_cmd_fpga_out_n]
set_property IOSTANDARD LVDS [get_ports femb_cmd_fpga_out_p]



set_property IOSTANDARD LVDS [get_ports dune_clk_fpga_out_n]
set_property IOSTANDARD LVDS [get_ports dune_clk_fpga_out_p]
set_property IOSTANDARD LVDS [get_ports dune_clk_fpga_in_n]
set_property IOSTANDARD LVDS [get_ports dune_clk_fpga_in_p]
set_property IOSTANDARD LVDS [get_ports si5344_out1_n]
set_property IOSTANDARD LVDS [get_ports si5344_out1_p]


set_property IOSTANDARD LVDS [get_ports core_clk3_n]
set_property IOSTANDARD LVDS [get_ports core_clk3_p]







#BANK  66 HD   1.8V

set_property IOSTANDARD LVDS [get_ports {femb_brd1_io_n[0]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd1_io_p[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {femb_brd1_io_n[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {femb_brd1_io_p[1]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd1_io_n[2]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd1_io_p[2]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd1_io_n[3]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd1_io_p[3]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd1_io_n[4]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd1_io_p[4]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd1_io_n[5]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd1_io_p[5]}]

set_property IOSTANDARD LVDS [get_ports {femb_brd2_io_n[0]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd2_io_p[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {femb_brd2_io_n[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {femb_brd2_io_p[1]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd2_io_n[2]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd2_io_p[2]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd2_io_n[3]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd2_io_p[3]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd2_io_n[4]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd2_io_p[4]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd2_io_n[5]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd2_io_p[5]}]

set_property IOSTANDARD LVDS [get_ports {femb_brd3_io_n[0]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd3_io_p[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {femb_brd3_io_n[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {femb_brd3_io_p[1]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd3_io_n[2]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd3_io_p[2]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd3_io_n[3]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd3_io_p[3]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd3_io_n[4]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd3_io_p[4]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd3_io_n[5]}]
set_property IOSTANDARD LVDS [get_ports {femb_brd3_io_p[5]}]




#BANK  67 HD   1.8V


set_property IOSTANDARD LVCMOS18 [get_ports si5344_lol]
set_property IOSTANDARD LVCMOS18 [get_ports si5344_losxaxb]

set_property IOSTANDARD LVCMOS18 [get_ports si5342_losxaxb]
set_property IOSTANDARD LVCMOS18 [get_ports si5342_los3]
set_property IOSTANDARD LVCMOS18 [get_ports si5342_los2]
set_property IOSTANDARD LVCMOS18 [get_ports si5342_los1]
set_property IOSTANDARD LVCMOS18 [get_ports si5342_los0]
set_property IOSTANDARD LVCMOS18 [get_ports si5342_lol]

set_property IOSTANDARD LVDS [get_ports tx_timing_n]
set_property IOSTANDARD LVDS [get_ports tx_timing_p]

set_property IOSTANDARD LVDS [get_ports adn2814_data_n]
set_property IOSTANDARD LVDS [get_ports adn2814_data_p]

set_property IOSTANDARD LVDS [get_ports recov_clk_n]
set_property IOSTANDARD LVDS [get_ports recov_clk_p]


set_property IOSTANDARD LVDS [get_ports si5344_out0_n]
set_property IOSTANDARD LVDS [get_ports si5344_out0_p]

set_property IOSTANDARD LVDS [get_ports core_clk1_n]
set_property IOSTANDARD LVDS [get_ports core_clk1_p]

set_property IOSTANDARD LVDS [get_ports fpga_clk_n]
set_property IOSTANDARD LVDS [get_ports fpga_clk_p]

set_property LOC G27 [get_ports gtrefclk00p_in[0]]
set_property LOC L8  [get_ports gtrefclk00p_in[1]]
set_property LOC G8  [get_ports gtrefclk00p_in[2]]
set_property LOC C8  [get_ports gtrefclk00p_in[3]]

set_property IOSTANDARD ANALOG [get_ports {VP}]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]
 
