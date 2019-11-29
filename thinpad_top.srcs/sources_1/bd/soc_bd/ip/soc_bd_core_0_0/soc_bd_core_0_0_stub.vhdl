-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sat Nov 30 01:43:26 2019
-- Host        : Gyc-Arch-Linux running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/gaoyichuan/workspace/cod/cod19grp73/thinpad_top.srcs/sources_1/bd/soc_bd/ip/soc_bd_core_0_0/soc_bd_core_0_0_stub.vhdl
-- Design      : soc_bd_core_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity soc_bd_core_0_0 is
  Port ( 
    system_clk : in STD_LOGIC;
    system_rst : in STD_LOGIC;
    ibus_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ibus_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ibus_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ibus_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ibus_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ibus_awlock : out STD_LOGIC;
    ibus_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ibus_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ibus_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ibus_awuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ibus_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ibus_awvalid : out STD_LOGIC;
    ibus_awready : in STD_LOGIC;
    ibus_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ibus_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ibus_wlast : out STD_LOGIC;
    ibus_wuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ibus_wvalid : out STD_LOGIC;
    ibus_wready : in STD_LOGIC;
    ibus_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ibus_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ibus_bvalid : in STD_LOGIC;
    ibus_buser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ibus_bready : out STD_LOGIC;
    ibus_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ibus_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ibus_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ibus_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ibus_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ibus_arlock : out STD_LOGIC;
    ibus_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ibus_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ibus_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ibus_aruser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ibus_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ibus_arvalid : out STD_LOGIC;
    ibus_arready : in STD_LOGIC;
    ibus_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ibus_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ibus_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ibus_rlast : in STD_LOGIC;
    ibus_ruser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ibus_rvalid : in STD_LOGIC;
    ibus_rready : out STD_LOGIC;
    dbus_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbus_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dbus_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dbus_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dbus_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dbus_awlock : out STD_LOGIC;
    dbus_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dbus_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dbus_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dbus_awuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dbus_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dbus_awvalid : out STD_LOGIC;
    dbus_awready : in STD_LOGIC;
    dbus_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dbus_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dbus_wlast : out STD_LOGIC;
    dbus_wuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dbus_wvalid : out STD_LOGIC;
    dbus_wready : in STD_LOGIC;
    dbus_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dbus_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dbus_bvalid : in STD_LOGIC;
    dbus_buser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dbus_bready : out STD_LOGIC;
    dbus_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dbus_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dbus_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dbus_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dbus_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dbus_arlock : out STD_LOGIC;
    dbus_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dbus_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dbus_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dbus_aruser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dbus_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dbus_arvalid : out STD_LOGIC;
    dbus_arready : in STD_LOGIC;
    dbus_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dbus_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dbus_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dbus_rlast : in STD_LOGIC;
    dbus_ruser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dbus_rvalid : in STD_LOGIC;
    dbus_rready : out STD_LOGIC
  );

end soc_bd_core_0_0;

architecture stub of soc_bd_core_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "system_clk,system_rst,ibus_awid[15:0],ibus_awaddr[31:0],ibus_awlen[7:0],ibus_awsize[2:0],ibus_awburst[1:0],ibus_awlock,ibus_awcache[3:0],ibus_awprot[2:0],ibus_awregion[3:0],ibus_awuser[7:0],ibus_awqos[3:0],ibus_awvalid,ibus_awready,ibus_wdata[31:0],ibus_wstrb[3:0],ibus_wlast,ibus_wuser[7:0],ibus_wvalid,ibus_wready,ibus_bid[15:0],ibus_bresp[1:0],ibus_bvalid,ibus_buser[7:0],ibus_bready,ibus_arid[15:0],ibus_araddr[31:0],ibus_arlen[7:0],ibus_arsize[2:0],ibus_arburst[1:0],ibus_arlock,ibus_arcache[3:0],ibus_arprot[2:0],ibus_arregion[3:0],ibus_aruser[7:0],ibus_arqos[3:0],ibus_arvalid,ibus_arready,ibus_rid[15:0],ibus_rdata[31:0],ibus_rresp[1:0],ibus_rlast,ibus_ruser[7:0],ibus_rvalid,ibus_rready,dbus_awid[15:0],dbus_awaddr[31:0],dbus_awlen[7:0],dbus_awsize[2:0],dbus_awburst[1:0],dbus_awlock,dbus_awcache[3:0],dbus_awprot[2:0],dbus_awregion[3:0],dbus_awuser[7:0],dbus_awqos[3:0],dbus_awvalid,dbus_awready,dbus_wdata[31:0],dbus_wstrb[3:0],dbus_wlast,dbus_wuser[7:0],dbus_wvalid,dbus_wready,dbus_bid[15:0],dbus_bresp[1:0],dbus_bvalid,dbus_buser[7:0],dbus_bready,dbus_arid[15:0],dbus_araddr[31:0],dbus_arlen[7:0],dbus_arsize[2:0],dbus_arburst[1:0],dbus_arlock,dbus_arcache[3:0],dbus_arprot[2:0],dbus_arregion[3:0],dbus_aruser[7:0],dbus_arqos[3:0],dbus_arvalid,dbus_arready,dbus_rid[15:0],dbus_rdata[31:0],dbus_rresp[1:0],dbus_rlast,dbus_ruser[7:0],dbus_rvalid,dbus_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "core,Vivado 2018.3";
begin
end;
