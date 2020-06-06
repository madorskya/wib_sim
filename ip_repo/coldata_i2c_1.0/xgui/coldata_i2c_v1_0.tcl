# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "bit_duration" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ack_timeout" -parent ${Page_0}
  ipgui::add_param $IPINST -name "scl_up" -parent ${Page_0}
  ipgui::add_param $IPINST -name "scl_down" -parent ${Page_0}


}

proc update_PARAM_VALUE.ack_timeout { PARAM_VALUE.ack_timeout } {
	# Procedure called to update ack_timeout when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ack_timeout { PARAM_VALUE.ack_timeout } {
	# Procedure called to validate ack_timeout
	return true
}

proc update_PARAM_VALUE.bit_duration { PARAM_VALUE.bit_duration } {
	# Procedure called to update bit_duration when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.bit_duration { PARAM_VALUE.bit_duration } {
	# Procedure called to validate bit_duration
	return true
}

proc update_PARAM_VALUE.scl_down { PARAM_VALUE.scl_down } {
	# Procedure called to update scl_down when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.scl_down { PARAM_VALUE.scl_down } {
	# Procedure called to validate scl_down
	return true
}

proc update_PARAM_VALUE.scl_up { PARAM_VALUE.scl_up } {
	# Procedure called to update scl_up when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.scl_up { PARAM_VALUE.scl_up } {
	# Procedure called to validate scl_up
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

proc update_MODELPARAM_VALUE.bit_duration { MODELPARAM_VALUE.bit_duration PARAM_VALUE.bit_duration } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.bit_duration}] ${MODELPARAM_VALUE.bit_duration}
}

proc update_MODELPARAM_VALUE.ack_timeout { MODELPARAM_VALUE.ack_timeout PARAM_VALUE.ack_timeout } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ack_timeout}] ${MODELPARAM_VALUE.ack_timeout}
}

proc update_MODELPARAM_VALUE.scl_up { MODELPARAM_VALUE.scl_up PARAM_VALUE.scl_up } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.scl_up}] ${MODELPARAM_VALUE.scl_up}
}

proc update_MODELPARAM_VALUE.scl_down { MODELPARAM_VALUE.scl_down PARAM_VALUE.scl_down } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.scl_down}] ${MODELPARAM_VALUE.scl_down}
}

