//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sat Nov 30 17:11:23 2019
//Host        : Gyc-Arch-Linux running 64-bit Arch Linux
//Command     : generate_target soc_bd_wrapper.bd
//Design      : soc_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_bd_wrapper
   (system_clk,
    system_rst,
    uart_rxd,
    uart_txd);
  input system_clk;
  input system_rst;
  input uart_rxd;
  output uart_txd;

  wire system_clk;
  wire system_rst;
  wire uart_rxd;
  wire uart_txd;

  soc_bd soc_bd_i
       (.system_clk(system_clk),
        .system_rst(system_rst),
        .uart_rxd(uart_rxd),
        .uart_txd(uart_txd));
endmodule
