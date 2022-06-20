# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.ack_duration { PARAM_VALUE.ack_duration } {
	# Procedure called to update ack_duration when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ack_duration { PARAM_VALUE.ack_duration } {
	# Procedure called to validate ack_duration
	return true
}

proc update_PARAM_VALUE.prestop_duration { PARAM_VALUE.prestop_duration } {
	# Procedure called to update prestop_duration when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.prestop_duration { PARAM_VALUE.prestop_duration } {
	# Procedure called to validate prestop_duration
	return true
}

proc update_PARAM_VALUE.scl_down_start { PARAM_VALUE.scl_down_start } {
	# Procedure called to update scl_down_start when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.scl_down_start { PARAM_VALUE.scl_down_start } {
	# Procedure called to validate scl_down_start
	return true
}

proc update_PARAM_VALUE.start_duration { PARAM_VALUE.start_duration } {
	# Procedure called to update start_duration when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.start_duration { PARAM_VALUE.start_duration } {
	# Procedure called to validate start_duration
	return true
}

proc update_PARAM_VALUE.stop_duration { PARAM_VALUE.stop_duration } {
	# Procedure called to update stop_duration when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.stop_duration { PARAM_VALUE.stop_duration } {
	# Procedure called to validate stop_duration
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.bit_duration { MODELPARAM_VALUE.bit_duration } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "bit_duration". Setting updated value from the model parameter.
set_property value 64 ${MODELPARAM_VALUE.bit_duration}
}

proc update_MODELPARAM_VALUE.scl_up { MODELPARAM_VALUE.scl_up } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "scl_up". Setting updated value from the model parameter.
set_property value 15 ${MODELPARAM_VALUE.scl_up}
}

proc update_MODELPARAM_VALUE.scl_down { MODELPARAM_VALUE.scl_down } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "scl_down". Setting updated value from the model parameter.
set_property value 47 ${MODELPARAM_VALUE.scl_down}
}

proc update_MODELPARAM_VALUE.start_duration { MODELPARAM_VALUE.start_duration PARAM_VALUE.start_duration } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.start_duration}] ${MODELPARAM_VALUE.start_duration}
}

proc update_MODELPARAM_VALUE.scl_down_start { MODELPARAM_VALUE.scl_down_start PARAM_VALUE.scl_down_start } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.scl_down_start}] ${MODELPARAM_VALUE.scl_down_start}
}

proc update_MODELPARAM_VALUE.ack_duration { MODELPARAM_VALUE.ack_duration PARAM_VALUE.ack_duration } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ack_duration}] ${MODELPARAM_VALUE.ack_duration}
}

proc update_MODELPARAM_VALUE.prestop_duration { MODELPARAM_VALUE.prestop_duration PARAM_VALUE.prestop_duration } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.prestop_duration}] ${MODELPARAM_VALUE.prestop_duration}
}

proc update_MODELPARAM_VALUE.stop_duration { MODELPARAM_VALUE.stop_duration PARAM_VALUE.stop_duration } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.stop_duration}] ${MODELPARAM_VALUE.stop_duration}
}

