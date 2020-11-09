-makelib ies_lib/xilinx_vip -sv \
  "/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/opt/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "/opt/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/gtwizard_ultrascale_v1_7_8 \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../wib_sim.srcs/sources_1/ip/FELIX_GTH/sim/gtwizard_ultrascale_v1_7_gthe4_channel.v" \
  "../../../../wib_sim.srcs/sources_1/ip/FELIX_GTH/sim/FELIX_GTH_gthe4_channel_wrapper.v" \
  "../../../../wib_sim.srcs/sources_1/ip/FELIX_GTH/sim/gtwizard_ultrascale_v1_7_gthe4_common.v" \
  "../../../../wib_sim.srcs/sources_1/ip/FELIX_GTH/sim/FELIX_GTH_gthe4_common_wrapper.v" \
  "../../../../wib_sim.srcs/sources_1/ip/FELIX_GTH/sim/FELIX_GTH_gtwizard_gthe4.v" \
  "../../../../wib_sim.srcs/sources_1/ip/FELIX_GTH/sim/FELIX_GTH_gtwizard_top.v" \
  "../../../../wib_sim.srcs/sources_1/ip/FELIX_GTH/sim/FELIX_GTH.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

