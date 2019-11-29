# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXI4_ADDRESS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI4_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI4_RDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI4_USER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI4_WDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REGISTERED_GRANT" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXI4_ADDRESS_WIDTH { PARAM_VALUE.AXI4_ADDRESS_WIDTH } {
	# Procedure called to update AXI4_ADDRESS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI4_ADDRESS_WIDTH { PARAM_VALUE.AXI4_ADDRESS_WIDTH } {
	# Procedure called to validate AXI4_ADDRESS_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI4_ID_WIDTH { PARAM_VALUE.AXI4_ID_WIDTH } {
	# Procedure called to update AXI4_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI4_ID_WIDTH { PARAM_VALUE.AXI4_ID_WIDTH } {
	# Procedure called to validate AXI4_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI4_RDATA_WIDTH { PARAM_VALUE.AXI4_RDATA_WIDTH } {
	# Procedure called to update AXI4_RDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI4_RDATA_WIDTH { PARAM_VALUE.AXI4_RDATA_WIDTH } {
	# Procedure called to validate AXI4_RDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI4_USER_WIDTH { PARAM_VALUE.AXI4_USER_WIDTH } {
	# Procedure called to update AXI4_USER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI4_USER_WIDTH { PARAM_VALUE.AXI4_USER_WIDTH } {
	# Procedure called to validate AXI4_USER_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI4_WDATA_WIDTH { PARAM_VALUE.AXI4_WDATA_WIDTH } {
	# Procedure called to update AXI4_WDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI4_WDATA_WIDTH { PARAM_VALUE.AXI4_WDATA_WIDTH } {
	# Procedure called to validate AXI4_WDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.REGISTERED_GRANT { PARAM_VALUE.REGISTERED_GRANT } {
	# Procedure called to update REGISTERED_GRANT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REGISTERED_GRANT { PARAM_VALUE.REGISTERED_GRANT } {
	# Procedure called to validate REGISTERED_GRANT
	return true
}


proc update_MODELPARAM_VALUE.AXI4_ADDRESS_WIDTH { MODELPARAM_VALUE.AXI4_ADDRESS_WIDTH PARAM_VALUE.AXI4_ADDRESS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI4_ADDRESS_WIDTH}] ${MODELPARAM_VALUE.AXI4_ADDRESS_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI4_RDATA_WIDTH { MODELPARAM_VALUE.AXI4_RDATA_WIDTH PARAM_VALUE.AXI4_RDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI4_RDATA_WIDTH}] ${MODELPARAM_VALUE.AXI4_RDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI4_WDATA_WIDTH { MODELPARAM_VALUE.AXI4_WDATA_WIDTH PARAM_VALUE.AXI4_WDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI4_WDATA_WIDTH}] ${MODELPARAM_VALUE.AXI4_WDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI4_ID_WIDTH { MODELPARAM_VALUE.AXI4_ID_WIDTH PARAM_VALUE.AXI4_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI4_ID_WIDTH}] ${MODELPARAM_VALUE.AXI4_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI4_USER_WIDTH { MODELPARAM_VALUE.AXI4_USER_WIDTH PARAM_VALUE.AXI4_USER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI4_USER_WIDTH}] ${MODELPARAM_VALUE.AXI4_USER_WIDTH}
}

proc update_MODELPARAM_VALUE.REGISTERED_GRANT { MODELPARAM_VALUE.REGISTERED_GRANT PARAM_VALUE.REGISTERED_GRANT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REGISTERED_GRANT}] ${MODELPARAM_VALUE.REGISTERED_GRANT}
}

