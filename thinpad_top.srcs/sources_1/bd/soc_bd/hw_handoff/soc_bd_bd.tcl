
################################################################
# This is a generated script based on design: soc_bd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source soc_bd_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# core

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tfgg676-2L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name soc_bd

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set base_ram_if [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:emc_rtl:1.0 base_ram_if ]
  set ext_ram_if [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:emc_rtl:1.0 ext_ram_if ]

  # Create ports
  set system_clk [ create_bd_port -dir I -type clk system_clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {system_rst} \
 ] $system_clk
  set system_rst [ create_bd_port -dir I -type rst system_rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $system_rst
  set uart_rxd [ create_bd_port -dir I uart_rxd ]
  set uart_txd [ create_bd_port -dir O uart_txd ]

  # Create instance: axi_crossbar_0, and set properties
  set axi_crossbar_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_0 ]
  set_property -dict [ list \
   CONFIG.ID_WIDTH {16} \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {2} \
   CONFIG.S00_ARB_PRIORITY {2} \
   CONFIG.S01_ARB_PRIORITY {1} \
   CONFIG.S01_BASE_ID {0x00008000} \
   CONFIG.S02_BASE_ID {0x00010000} \
   CONFIG.S03_BASE_ID {0x00018000} \
   CONFIG.S04_BASE_ID {0x00020000} \
   CONFIG.S05_BASE_ID {0x00028000} \
   CONFIG.S06_BASE_ID {0x00030000} \
   CONFIG.S07_BASE_ID {0x00038000} \
   CONFIG.S08_BASE_ID {0x00040000} \
   CONFIG.S09_BASE_ID {0x00048000} \
   CONFIG.S10_BASE_ID {0x00050000} \
   CONFIG.S11_BASE_ID {0x00058000} \
   CONFIG.S12_BASE_ID {0x00060000} \
   CONFIG.S13_BASE_ID {0x00068000} \
   CONFIG.S14_BASE_ID {0x00070000} \
   CONFIG.S15_BASE_ID {0x00078000} \
 ] $axi_crossbar_0

  # Create instance: axi_emc_0, and set properties
  set axi_emc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_emc:3.0 axi_emc_0 ]
  set_property -dict [ list \
   CONFIG.C_INCLUDE_DATAWIDTH_MATCHING_0 {0} \
   CONFIG.C_INCLUDE_DATAWIDTH_MATCHING_1 {0} \
   CONFIG.C_MAX_MEM_WIDTH {32} \
   CONFIG.C_MEM0_TYPE {1} \
   CONFIG.C_MEM0_WIDTH {32} \
   CONFIG.C_MEM1_TYPE {1} \
   CONFIG.C_MEM1_WIDTH {32} \
   CONFIG.C_NUM_BANKS_MEM {1} \
   CONFIG.C_S_AXI_MEM_ID_WIDTH {16} \
 ] $axi_emc_0

  # Create instance: axi_emc_1, and set properties
  set axi_emc_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_emc:3.0 axi_emc_1 ]
  set_property -dict [ list \
   CONFIG.C_INCLUDE_DATAWIDTH_MATCHING_0 {0} \
   CONFIG.C_INCLUDE_DATAWIDTH_MATCHING_1 {0} \
   CONFIG.C_MAX_MEM_WIDTH {32} \
   CONFIG.C_MEM0_TYPE {1} \
   CONFIG.C_MEM0_WIDTH {32} \
   CONFIG.C_MEM1_TYPE {1} \
   CONFIG.C_MEM1_WIDTH {32} \
   CONFIG.C_NUM_BANKS_MEM {1} \
   CONFIG.C_S_AXI_MEM_ID_WIDTH {16} \
 ] $axi_emc_1

  # Create instance: axi_uart16550_0, and set properties
  set axi_uart16550_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_0 ]

  # Create instance: core_0, and set properties
  set block_name core
  set block_cell_name core_0
  if { [catch {set core_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $core_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_crossbar_0_M00_AXI [get_bd_intf_pins axi_crossbar_0/M00_AXI] [get_bd_intf_pins axi_emc_0/S_AXI_MEM]
  connect_bd_intf_net -intf_net axi_crossbar_0_M01_AXI [get_bd_intf_pins axi_crossbar_0/M01_AXI] [get_bd_intf_pins axi_emc_1/S_AXI_MEM]
  connect_bd_intf_net -intf_net axi_crossbar_0_M02_AXI [get_bd_intf_pins axi_crossbar_0/M02_AXI] [get_bd_intf_pins smartconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_emc_0_EMC_INTF [get_bd_intf_ports base_ram_if] [get_bd_intf_pins axi_emc_0/EMC_INTF]
  connect_bd_intf_net -intf_net axi_emc_1_EMC_INTF [get_bd_intf_ports ext_ram_if] [get_bd_intf_pins axi_emc_1/EMC_INTF]
  connect_bd_intf_net -intf_net core_0_dbus [get_bd_intf_pins axi_crossbar_0/S00_AXI] [get_bd_intf_pins core_0/dbus]
  connect_bd_intf_net -intf_net core_0_ibus [get_bd_intf_pins axi_crossbar_0/S01_AXI] [get_bd_intf_pins core_0/ibus]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins axi_uart16550_0/S_AXI] [get_bd_intf_pins smartconnect_0/M00_AXI]

  # Create port connections
  connect_bd_net -net axi_uart16550_0_sout [get_bd_ports uart_txd] [get_bd_pins axi_uart16550_0/sout]
  connect_bd_net -net sin_0_1 [get_bd_ports uart_rxd] [get_bd_pins axi_uart16550_0/sin]
  connect_bd_net -net system_clk_0_1 [get_bd_ports system_clk] [get_bd_pins axi_crossbar_0/aclk] [get_bd_pins axi_emc_0/rdclk] [get_bd_pins axi_emc_0/s_axi_aclk] [get_bd_pins axi_emc_1/rdclk] [get_bd_pins axi_emc_1/s_axi_aclk] [get_bd_pins axi_uart16550_0/s_axi_aclk] [get_bd_pins core_0/system_clk] [get_bd_pins smartconnect_0/aclk]
  connect_bd_net -net system_rst_0_1 [get_bd_ports system_rst] [get_bd_pins core_0/system_rst] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins axi_crossbar_0/aresetn] [get_bd_pins axi_emc_0/s_axi_aresetn] [get_bd_pins axi_emc_1/s_axi_aresetn] [get_bd_pins axi_uart16550_0/s_axi_aresetn] [get_bd_pins smartconnect_0/aresetn] [get_bd_pins util_vector_logic_0/Res]

  # Create address segments
  create_bd_addr_seg -range 0x00400000 -offset 0x80000000 [get_bd_addr_spaces core_0/dbus] [get_bd_addr_segs axi_emc_0/S_AXI_MEM/Mem0] SEG_axi_emc_0_Mem0
  create_bd_addr_seg -range 0x00400000 -offset 0x80000000 [get_bd_addr_spaces core_0/ibus] [get_bd_addr_segs axi_emc_0/S_AXI_MEM/Mem0] SEG_axi_emc_0_Mem0
  create_bd_addr_seg -range 0x00400000 -offset 0x80400000 [get_bd_addr_spaces core_0/dbus] [get_bd_addr_segs axi_emc_1/S_AXI_MEM/Mem0] SEG_axi_emc_1_Mem0
  create_bd_addr_seg -range 0x00400000 -offset 0x80400000 [get_bd_addr_spaces core_0/ibus] [get_bd_addr_segs axi_emc_1/S_AXI_MEM/Mem0] SEG_axi_emc_1_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x10000000 [get_bd_addr_spaces core_0/dbus] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] SEG_axi_uart16550_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x10000000 [get_bd_addr_spaces core_0/ibus] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] SEG_axi_uart16550_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


