# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FRAME_LNG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FULL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IDLE_CHECK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RECORD" -parent ${Page_0}


}

proc update_PARAM_VALUE.FRAME_LNG { PARAM_VALUE.FRAME_LNG } {
	# Procedure called to update FRAME_LNG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FRAME_LNG { PARAM_VALUE.FRAME_LNG } {
	# Procedure called to validate FRAME_LNG
	return true
}

proc update_PARAM_VALUE.FULL { PARAM_VALUE.FULL } {
	# Procedure called to update FULL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FULL { PARAM_VALUE.FULL } {
	# Procedure called to validate FULL
	return true
}

proc update_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to update IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to validate IDLE
	return true
}

proc update_PARAM_VALUE.IDLE_CHECK { PARAM_VALUE.IDLE_CHECK } {
	# Procedure called to update IDLE_CHECK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE_CHECK { PARAM_VALUE.IDLE_CHECK } {
	# Procedure called to validate IDLE_CHECK
	return true
}

proc update_PARAM_VALUE.LAST { PARAM_VALUE.LAST } {
	# Procedure called to update LAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LAST { PARAM_VALUE.LAST } {
	# Procedure called to validate LAST
	return true
}

proc update_PARAM_VALUE.RECORD { PARAM_VALUE.RECORD } {
	# Procedure called to update RECORD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RECORD { PARAM_VALUE.RECORD } {
	# Procedure called to validate RECORD
	return true
}


proc update_MODELPARAM_VALUE.IDLE { MODELPARAM_VALUE.IDLE PARAM_VALUE.IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE}] ${MODELPARAM_VALUE.IDLE}
}

proc update_MODELPARAM_VALUE.IDLE_CHECK { MODELPARAM_VALUE.IDLE_CHECK PARAM_VALUE.IDLE_CHECK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE_CHECK}] ${MODELPARAM_VALUE.IDLE_CHECK}
}

proc update_MODELPARAM_VALUE.RECORD { MODELPARAM_VALUE.RECORD PARAM_VALUE.RECORD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RECORD}] ${MODELPARAM_VALUE.RECORD}
}

proc update_MODELPARAM_VALUE.LAST { MODELPARAM_VALUE.LAST PARAM_VALUE.LAST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LAST}] ${MODELPARAM_VALUE.LAST}
}

proc update_MODELPARAM_VALUE.FULL { MODELPARAM_VALUE.FULL PARAM_VALUE.FULL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FULL}] ${MODELPARAM_VALUE.FULL}
}

proc update_MODELPARAM_VALUE.FRAME_LNG { MODELPARAM_VALUE.FRAME_LNG PARAM_VALUE.FRAME_LNG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FRAME_LNG}] ${MODELPARAM_VALUE.FRAME_LNG}
}

