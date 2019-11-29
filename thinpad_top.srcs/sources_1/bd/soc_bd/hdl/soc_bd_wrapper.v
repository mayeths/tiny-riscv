//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sat Nov 30 02:14:13 2019
//Host        : Gyc-Arch-Linux running 64-bit Arch Linux
//Command     : generate_target soc_bd_wrapper.bd
//Design      : soc_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_bd_wrapper
   (base_ram_if_addr,
    base_ram_if_adv_ldn,
    base_ram_if_ben,
    base_ram_if_ce,
    base_ram_if_ce_n,
    base_ram_if_clken,
    base_ram_if_cre,
    base_ram_if_dq_io,
    base_ram_if_lbon,
    base_ram_if_oen,
    base_ram_if_qwen,
    base_ram_if_rnw,
    base_ram_if_rpn,
    base_ram_if_wait,
    base_ram_if_wen,
    ext_ram_if_addr,
    ext_ram_if_adv_ldn,
    ext_ram_if_ben,
    ext_ram_if_ce,
    ext_ram_if_ce_n,
    ext_ram_if_clken,
    ext_ram_if_cre,
    ext_ram_if_dq_io,
    ext_ram_if_lbon,
    ext_ram_if_oen,
    ext_ram_if_qwen,
    ext_ram_if_rnw,
    ext_ram_if_rpn,
    ext_ram_if_wait,
    ext_ram_if_wen,
    system_clk,
    system_rst,
    uart_rxd,
    uart_txd);
  output [31:0]base_ram_if_addr;
  output base_ram_if_adv_ldn;
  output [3:0]base_ram_if_ben;
  output [0:0]base_ram_if_ce;
  output [0:0]base_ram_if_ce_n;
  output base_ram_if_clken;
  output base_ram_if_cre;
  inout [31:0]base_ram_if_dq_io;
  output base_ram_if_lbon;
  output [0:0]base_ram_if_oen;
  output [3:0]base_ram_if_qwen;
  output base_ram_if_rnw;
  output base_ram_if_rpn;
  input [0:0]base_ram_if_wait;
  output base_ram_if_wen;
  output [31:0]ext_ram_if_addr;
  output ext_ram_if_adv_ldn;
  output [3:0]ext_ram_if_ben;
  output [0:0]ext_ram_if_ce;
  output [0:0]ext_ram_if_ce_n;
  output ext_ram_if_clken;
  output ext_ram_if_cre;
  inout [31:0]ext_ram_if_dq_io;
  output ext_ram_if_lbon;
  output [0:0]ext_ram_if_oen;
  output [3:0]ext_ram_if_qwen;
  output ext_ram_if_rnw;
  output ext_ram_if_rpn;
  input [0:0]ext_ram_if_wait;
  output ext_ram_if_wen;
  input system_clk;
  input system_rst;
  input uart_rxd;
  output uart_txd;

  wire [31:0]base_ram_if_addr;
  wire base_ram_if_adv_ldn;
  wire [3:0]base_ram_if_ben;
  wire [0:0]base_ram_if_ce;
  wire [0:0]base_ram_if_ce_n;
  wire base_ram_if_clken;
  wire base_ram_if_cre;
  wire [0:0]base_ram_if_dq_i_0;
  wire [1:1]base_ram_if_dq_i_1;
  wire [10:10]base_ram_if_dq_i_10;
  wire [11:11]base_ram_if_dq_i_11;
  wire [12:12]base_ram_if_dq_i_12;
  wire [13:13]base_ram_if_dq_i_13;
  wire [14:14]base_ram_if_dq_i_14;
  wire [15:15]base_ram_if_dq_i_15;
  wire [16:16]base_ram_if_dq_i_16;
  wire [17:17]base_ram_if_dq_i_17;
  wire [18:18]base_ram_if_dq_i_18;
  wire [19:19]base_ram_if_dq_i_19;
  wire [2:2]base_ram_if_dq_i_2;
  wire [20:20]base_ram_if_dq_i_20;
  wire [21:21]base_ram_if_dq_i_21;
  wire [22:22]base_ram_if_dq_i_22;
  wire [23:23]base_ram_if_dq_i_23;
  wire [24:24]base_ram_if_dq_i_24;
  wire [25:25]base_ram_if_dq_i_25;
  wire [26:26]base_ram_if_dq_i_26;
  wire [27:27]base_ram_if_dq_i_27;
  wire [28:28]base_ram_if_dq_i_28;
  wire [29:29]base_ram_if_dq_i_29;
  wire [3:3]base_ram_if_dq_i_3;
  wire [30:30]base_ram_if_dq_i_30;
  wire [31:31]base_ram_if_dq_i_31;
  wire [4:4]base_ram_if_dq_i_4;
  wire [5:5]base_ram_if_dq_i_5;
  wire [6:6]base_ram_if_dq_i_6;
  wire [7:7]base_ram_if_dq_i_7;
  wire [8:8]base_ram_if_dq_i_8;
  wire [9:9]base_ram_if_dq_i_9;
  wire [0:0]base_ram_if_dq_io_0;
  wire [1:1]base_ram_if_dq_io_1;
  wire [10:10]base_ram_if_dq_io_10;
  wire [11:11]base_ram_if_dq_io_11;
  wire [12:12]base_ram_if_dq_io_12;
  wire [13:13]base_ram_if_dq_io_13;
  wire [14:14]base_ram_if_dq_io_14;
  wire [15:15]base_ram_if_dq_io_15;
  wire [16:16]base_ram_if_dq_io_16;
  wire [17:17]base_ram_if_dq_io_17;
  wire [18:18]base_ram_if_dq_io_18;
  wire [19:19]base_ram_if_dq_io_19;
  wire [2:2]base_ram_if_dq_io_2;
  wire [20:20]base_ram_if_dq_io_20;
  wire [21:21]base_ram_if_dq_io_21;
  wire [22:22]base_ram_if_dq_io_22;
  wire [23:23]base_ram_if_dq_io_23;
  wire [24:24]base_ram_if_dq_io_24;
  wire [25:25]base_ram_if_dq_io_25;
  wire [26:26]base_ram_if_dq_io_26;
  wire [27:27]base_ram_if_dq_io_27;
  wire [28:28]base_ram_if_dq_io_28;
  wire [29:29]base_ram_if_dq_io_29;
  wire [3:3]base_ram_if_dq_io_3;
  wire [30:30]base_ram_if_dq_io_30;
  wire [31:31]base_ram_if_dq_io_31;
  wire [4:4]base_ram_if_dq_io_4;
  wire [5:5]base_ram_if_dq_io_5;
  wire [6:6]base_ram_if_dq_io_6;
  wire [7:7]base_ram_if_dq_io_7;
  wire [8:8]base_ram_if_dq_io_8;
  wire [9:9]base_ram_if_dq_io_9;
  wire [0:0]base_ram_if_dq_o_0;
  wire [1:1]base_ram_if_dq_o_1;
  wire [10:10]base_ram_if_dq_o_10;
  wire [11:11]base_ram_if_dq_o_11;
  wire [12:12]base_ram_if_dq_o_12;
  wire [13:13]base_ram_if_dq_o_13;
  wire [14:14]base_ram_if_dq_o_14;
  wire [15:15]base_ram_if_dq_o_15;
  wire [16:16]base_ram_if_dq_o_16;
  wire [17:17]base_ram_if_dq_o_17;
  wire [18:18]base_ram_if_dq_o_18;
  wire [19:19]base_ram_if_dq_o_19;
  wire [2:2]base_ram_if_dq_o_2;
  wire [20:20]base_ram_if_dq_o_20;
  wire [21:21]base_ram_if_dq_o_21;
  wire [22:22]base_ram_if_dq_o_22;
  wire [23:23]base_ram_if_dq_o_23;
  wire [24:24]base_ram_if_dq_o_24;
  wire [25:25]base_ram_if_dq_o_25;
  wire [26:26]base_ram_if_dq_o_26;
  wire [27:27]base_ram_if_dq_o_27;
  wire [28:28]base_ram_if_dq_o_28;
  wire [29:29]base_ram_if_dq_o_29;
  wire [3:3]base_ram_if_dq_o_3;
  wire [30:30]base_ram_if_dq_o_30;
  wire [31:31]base_ram_if_dq_o_31;
  wire [4:4]base_ram_if_dq_o_4;
  wire [5:5]base_ram_if_dq_o_5;
  wire [6:6]base_ram_if_dq_o_6;
  wire [7:7]base_ram_if_dq_o_7;
  wire [8:8]base_ram_if_dq_o_8;
  wire [9:9]base_ram_if_dq_o_9;
  wire [0:0]base_ram_if_dq_t_0;
  wire [1:1]base_ram_if_dq_t_1;
  wire [10:10]base_ram_if_dq_t_10;
  wire [11:11]base_ram_if_dq_t_11;
  wire [12:12]base_ram_if_dq_t_12;
  wire [13:13]base_ram_if_dq_t_13;
  wire [14:14]base_ram_if_dq_t_14;
  wire [15:15]base_ram_if_dq_t_15;
  wire [16:16]base_ram_if_dq_t_16;
  wire [17:17]base_ram_if_dq_t_17;
  wire [18:18]base_ram_if_dq_t_18;
  wire [19:19]base_ram_if_dq_t_19;
  wire [2:2]base_ram_if_dq_t_2;
  wire [20:20]base_ram_if_dq_t_20;
  wire [21:21]base_ram_if_dq_t_21;
  wire [22:22]base_ram_if_dq_t_22;
  wire [23:23]base_ram_if_dq_t_23;
  wire [24:24]base_ram_if_dq_t_24;
  wire [25:25]base_ram_if_dq_t_25;
  wire [26:26]base_ram_if_dq_t_26;
  wire [27:27]base_ram_if_dq_t_27;
  wire [28:28]base_ram_if_dq_t_28;
  wire [29:29]base_ram_if_dq_t_29;
  wire [3:3]base_ram_if_dq_t_3;
  wire [30:30]base_ram_if_dq_t_30;
  wire [31:31]base_ram_if_dq_t_31;
  wire [4:4]base_ram_if_dq_t_4;
  wire [5:5]base_ram_if_dq_t_5;
  wire [6:6]base_ram_if_dq_t_6;
  wire [7:7]base_ram_if_dq_t_7;
  wire [8:8]base_ram_if_dq_t_8;
  wire [9:9]base_ram_if_dq_t_9;
  wire base_ram_if_lbon;
  wire [0:0]base_ram_if_oen;
  wire [3:0]base_ram_if_qwen;
  wire base_ram_if_rnw;
  wire base_ram_if_rpn;
  wire [0:0]base_ram_if_wait;
  wire base_ram_if_wen;
  wire [31:0]ext_ram_if_addr;
  wire ext_ram_if_adv_ldn;
  wire [3:0]ext_ram_if_ben;
  wire [0:0]ext_ram_if_ce;
  wire [0:0]ext_ram_if_ce_n;
  wire ext_ram_if_clken;
  wire ext_ram_if_cre;
  wire [0:0]ext_ram_if_dq_i_0;
  wire [1:1]ext_ram_if_dq_i_1;
  wire [10:10]ext_ram_if_dq_i_10;
  wire [11:11]ext_ram_if_dq_i_11;
  wire [12:12]ext_ram_if_dq_i_12;
  wire [13:13]ext_ram_if_dq_i_13;
  wire [14:14]ext_ram_if_dq_i_14;
  wire [15:15]ext_ram_if_dq_i_15;
  wire [16:16]ext_ram_if_dq_i_16;
  wire [17:17]ext_ram_if_dq_i_17;
  wire [18:18]ext_ram_if_dq_i_18;
  wire [19:19]ext_ram_if_dq_i_19;
  wire [2:2]ext_ram_if_dq_i_2;
  wire [20:20]ext_ram_if_dq_i_20;
  wire [21:21]ext_ram_if_dq_i_21;
  wire [22:22]ext_ram_if_dq_i_22;
  wire [23:23]ext_ram_if_dq_i_23;
  wire [24:24]ext_ram_if_dq_i_24;
  wire [25:25]ext_ram_if_dq_i_25;
  wire [26:26]ext_ram_if_dq_i_26;
  wire [27:27]ext_ram_if_dq_i_27;
  wire [28:28]ext_ram_if_dq_i_28;
  wire [29:29]ext_ram_if_dq_i_29;
  wire [3:3]ext_ram_if_dq_i_3;
  wire [30:30]ext_ram_if_dq_i_30;
  wire [31:31]ext_ram_if_dq_i_31;
  wire [4:4]ext_ram_if_dq_i_4;
  wire [5:5]ext_ram_if_dq_i_5;
  wire [6:6]ext_ram_if_dq_i_6;
  wire [7:7]ext_ram_if_dq_i_7;
  wire [8:8]ext_ram_if_dq_i_8;
  wire [9:9]ext_ram_if_dq_i_9;
  wire [0:0]ext_ram_if_dq_io_0;
  wire [1:1]ext_ram_if_dq_io_1;
  wire [10:10]ext_ram_if_dq_io_10;
  wire [11:11]ext_ram_if_dq_io_11;
  wire [12:12]ext_ram_if_dq_io_12;
  wire [13:13]ext_ram_if_dq_io_13;
  wire [14:14]ext_ram_if_dq_io_14;
  wire [15:15]ext_ram_if_dq_io_15;
  wire [16:16]ext_ram_if_dq_io_16;
  wire [17:17]ext_ram_if_dq_io_17;
  wire [18:18]ext_ram_if_dq_io_18;
  wire [19:19]ext_ram_if_dq_io_19;
  wire [2:2]ext_ram_if_dq_io_2;
  wire [20:20]ext_ram_if_dq_io_20;
  wire [21:21]ext_ram_if_dq_io_21;
  wire [22:22]ext_ram_if_dq_io_22;
  wire [23:23]ext_ram_if_dq_io_23;
  wire [24:24]ext_ram_if_dq_io_24;
  wire [25:25]ext_ram_if_dq_io_25;
  wire [26:26]ext_ram_if_dq_io_26;
  wire [27:27]ext_ram_if_dq_io_27;
  wire [28:28]ext_ram_if_dq_io_28;
  wire [29:29]ext_ram_if_dq_io_29;
  wire [3:3]ext_ram_if_dq_io_3;
  wire [30:30]ext_ram_if_dq_io_30;
  wire [31:31]ext_ram_if_dq_io_31;
  wire [4:4]ext_ram_if_dq_io_4;
  wire [5:5]ext_ram_if_dq_io_5;
  wire [6:6]ext_ram_if_dq_io_6;
  wire [7:7]ext_ram_if_dq_io_7;
  wire [8:8]ext_ram_if_dq_io_8;
  wire [9:9]ext_ram_if_dq_io_9;
  wire [0:0]ext_ram_if_dq_o_0;
  wire [1:1]ext_ram_if_dq_o_1;
  wire [10:10]ext_ram_if_dq_o_10;
  wire [11:11]ext_ram_if_dq_o_11;
  wire [12:12]ext_ram_if_dq_o_12;
  wire [13:13]ext_ram_if_dq_o_13;
  wire [14:14]ext_ram_if_dq_o_14;
  wire [15:15]ext_ram_if_dq_o_15;
  wire [16:16]ext_ram_if_dq_o_16;
  wire [17:17]ext_ram_if_dq_o_17;
  wire [18:18]ext_ram_if_dq_o_18;
  wire [19:19]ext_ram_if_dq_o_19;
  wire [2:2]ext_ram_if_dq_o_2;
  wire [20:20]ext_ram_if_dq_o_20;
  wire [21:21]ext_ram_if_dq_o_21;
  wire [22:22]ext_ram_if_dq_o_22;
  wire [23:23]ext_ram_if_dq_o_23;
  wire [24:24]ext_ram_if_dq_o_24;
  wire [25:25]ext_ram_if_dq_o_25;
  wire [26:26]ext_ram_if_dq_o_26;
  wire [27:27]ext_ram_if_dq_o_27;
  wire [28:28]ext_ram_if_dq_o_28;
  wire [29:29]ext_ram_if_dq_o_29;
  wire [3:3]ext_ram_if_dq_o_3;
  wire [30:30]ext_ram_if_dq_o_30;
  wire [31:31]ext_ram_if_dq_o_31;
  wire [4:4]ext_ram_if_dq_o_4;
  wire [5:5]ext_ram_if_dq_o_5;
  wire [6:6]ext_ram_if_dq_o_6;
  wire [7:7]ext_ram_if_dq_o_7;
  wire [8:8]ext_ram_if_dq_o_8;
  wire [9:9]ext_ram_if_dq_o_9;
  wire [0:0]ext_ram_if_dq_t_0;
  wire [1:1]ext_ram_if_dq_t_1;
  wire [10:10]ext_ram_if_dq_t_10;
  wire [11:11]ext_ram_if_dq_t_11;
  wire [12:12]ext_ram_if_dq_t_12;
  wire [13:13]ext_ram_if_dq_t_13;
  wire [14:14]ext_ram_if_dq_t_14;
  wire [15:15]ext_ram_if_dq_t_15;
  wire [16:16]ext_ram_if_dq_t_16;
  wire [17:17]ext_ram_if_dq_t_17;
  wire [18:18]ext_ram_if_dq_t_18;
  wire [19:19]ext_ram_if_dq_t_19;
  wire [2:2]ext_ram_if_dq_t_2;
  wire [20:20]ext_ram_if_dq_t_20;
  wire [21:21]ext_ram_if_dq_t_21;
  wire [22:22]ext_ram_if_dq_t_22;
  wire [23:23]ext_ram_if_dq_t_23;
  wire [24:24]ext_ram_if_dq_t_24;
  wire [25:25]ext_ram_if_dq_t_25;
  wire [26:26]ext_ram_if_dq_t_26;
  wire [27:27]ext_ram_if_dq_t_27;
  wire [28:28]ext_ram_if_dq_t_28;
  wire [29:29]ext_ram_if_dq_t_29;
  wire [3:3]ext_ram_if_dq_t_3;
  wire [30:30]ext_ram_if_dq_t_30;
  wire [31:31]ext_ram_if_dq_t_31;
  wire [4:4]ext_ram_if_dq_t_4;
  wire [5:5]ext_ram_if_dq_t_5;
  wire [6:6]ext_ram_if_dq_t_6;
  wire [7:7]ext_ram_if_dq_t_7;
  wire [8:8]ext_ram_if_dq_t_8;
  wire [9:9]ext_ram_if_dq_t_9;
  wire ext_ram_if_lbon;
  wire [0:0]ext_ram_if_oen;
  wire [3:0]ext_ram_if_qwen;
  wire ext_ram_if_rnw;
  wire ext_ram_if_rpn;
  wire [0:0]ext_ram_if_wait;
  wire ext_ram_if_wen;
  wire system_clk;
  wire system_rst;
  wire uart_rxd;
  wire uart_txd;

  IOBUF base_ram_if_dq_iobuf_0
       (.I(base_ram_if_dq_o_0),
        .IO(base_ram_if_dq_io[0]),
        .O(base_ram_if_dq_i_0),
        .T(base_ram_if_dq_t_0));
  IOBUF base_ram_if_dq_iobuf_1
       (.I(base_ram_if_dq_o_1),
        .IO(base_ram_if_dq_io[1]),
        .O(base_ram_if_dq_i_1),
        .T(base_ram_if_dq_t_1));
  IOBUF base_ram_if_dq_iobuf_10
       (.I(base_ram_if_dq_o_10),
        .IO(base_ram_if_dq_io[10]),
        .O(base_ram_if_dq_i_10),
        .T(base_ram_if_dq_t_10));
  IOBUF base_ram_if_dq_iobuf_11
       (.I(base_ram_if_dq_o_11),
        .IO(base_ram_if_dq_io[11]),
        .O(base_ram_if_dq_i_11),
        .T(base_ram_if_dq_t_11));
  IOBUF base_ram_if_dq_iobuf_12
       (.I(base_ram_if_dq_o_12),
        .IO(base_ram_if_dq_io[12]),
        .O(base_ram_if_dq_i_12),
        .T(base_ram_if_dq_t_12));
  IOBUF base_ram_if_dq_iobuf_13
       (.I(base_ram_if_dq_o_13),
        .IO(base_ram_if_dq_io[13]),
        .O(base_ram_if_dq_i_13),
        .T(base_ram_if_dq_t_13));
  IOBUF base_ram_if_dq_iobuf_14
       (.I(base_ram_if_dq_o_14),
        .IO(base_ram_if_dq_io[14]),
        .O(base_ram_if_dq_i_14),
        .T(base_ram_if_dq_t_14));
  IOBUF base_ram_if_dq_iobuf_15
       (.I(base_ram_if_dq_o_15),
        .IO(base_ram_if_dq_io[15]),
        .O(base_ram_if_dq_i_15),
        .T(base_ram_if_dq_t_15));
  IOBUF base_ram_if_dq_iobuf_16
       (.I(base_ram_if_dq_o_16),
        .IO(base_ram_if_dq_io[16]),
        .O(base_ram_if_dq_i_16),
        .T(base_ram_if_dq_t_16));
  IOBUF base_ram_if_dq_iobuf_17
       (.I(base_ram_if_dq_o_17),
        .IO(base_ram_if_dq_io[17]),
        .O(base_ram_if_dq_i_17),
        .T(base_ram_if_dq_t_17));
  IOBUF base_ram_if_dq_iobuf_18
       (.I(base_ram_if_dq_o_18),
        .IO(base_ram_if_dq_io[18]),
        .O(base_ram_if_dq_i_18),
        .T(base_ram_if_dq_t_18));
  IOBUF base_ram_if_dq_iobuf_19
       (.I(base_ram_if_dq_o_19),
        .IO(base_ram_if_dq_io[19]),
        .O(base_ram_if_dq_i_19),
        .T(base_ram_if_dq_t_19));
  IOBUF base_ram_if_dq_iobuf_2
       (.I(base_ram_if_dq_o_2),
        .IO(base_ram_if_dq_io[2]),
        .O(base_ram_if_dq_i_2),
        .T(base_ram_if_dq_t_2));
  IOBUF base_ram_if_dq_iobuf_20
       (.I(base_ram_if_dq_o_20),
        .IO(base_ram_if_dq_io[20]),
        .O(base_ram_if_dq_i_20),
        .T(base_ram_if_dq_t_20));
  IOBUF base_ram_if_dq_iobuf_21
       (.I(base_ram_if_dq_o_21),
        .IO(base_ram_if_dq_io[21]),
        .O(base_ram_if_dq_i_21),
        .T(base_ram_if_dq_t_21));
  IOBUF base_ram_if_dq_iobuf_22
       (.I(base_ram_if_dq_o_22),
        .IO(base_ram_if_dq_io[22]),
        .O(base_ram_if_dq_i_22),
        .T(base_ram_if_dq_t_22));
  IOBUF base_ram_if_dq_iobuf_23
       (.I(base_ram_if_dq_o_23),
        .IO(base_ram_if_dq_io[23]),
        .O(base_ram_if_dq_i_23),
        .T(base_ram_if_dq_t_23));
  IOBUF base_ram_if_dq_iobuf_24
       (.I(base_ram_if_dq_o_24),
        .IO(base_ram_if_dq_io[24]),
        .O(base_ram_if_dq_i_24),
        .T(base_ram_if_dq_t_24));
  IOBUF base_ram_if_dq_iobuf_25
       (.I(base_ram_if_dq_o_25),
        .IO(base_ram_if_dq_io[25]),
        .O(base_ram_if_dq_i_25),
        .T(base_ram_if_dq_t_25));
  IOBUF base_ram_if_dq_iobuf_26
       (.I(base_ram_if_dq_o_26),
        .IO(base_ram_if_dq_io[26]),
        .O(base_ram_if_dq_i_26),
        .T(base_ram_if_dq_t_26));
  IOBUF base_ram_if_dq_iobuf_27
       (.I(base_ram_if_dq_o_27),
        .IO(base_ram_if_dq_io[27]),
        .O(base_ram_if_dq_i_27),
        .T(base_ram_if_dq_t_27));
  IOBUF base_ram_if_dq_iobuf_28
       (.I(base_ram_if_dq_o_28),
        .IO(base_ram_if_dq_io[28]),
        .O(base_ram_if_dq_i_28),
        .T(base_ram_if_dq_t_28));
  IOBUF base_ram_if_dq_iobuf_29
       (.I(base_ram_if_dq_o_29),
        .IO(base_ram_if_dq_io[29]),
        .O(base_ram_if_dq_i_29),
        .T(base_ram_if_dq_t_29));
  IOBUF base_ram_if_dq_iobuf_3
       (.I(base_ram_if_dq_o_3),
        .IO(base_ram_if_dq_io[3]),
        .O(base_ram_if_dq_i_3),
        .T(base_ram_if_dq_t_3));
  IOBUF base_ram_if_dq_iobuf_30
       (.I(base_ram_if_dq_o_30),
        .IO(base_ram_if_dq_io[30]),
        .O(base_ram_if_dq_i_30),
        .T(base_ram_if_dq_t_30));
  IOBUF base_ram_if_dq_iobuf_31
       (.I(base_ram_if_dq_o_31),
        .IO(base_ram_if_dq_io[31]),
        .O(base_ram_if_dq_i_31),
        .T(base_ram_if_dq_t_31));
  IOBUF base_ram_if_dq_iobuf_4
       (.I(base_ram_if_dq_o_4),
        .IO(base_ram_if_dq_io[4]),
        .O(base_ram_if_dq_i_4),
        .T(base_ram_if_dq_t_4));
  IOBUF base_ram_if_dq_iobuf_5
       (.I(base_ram_if_dq_o_5),
        .IO(base_ram_if_dq_io[5]),
        .O(base_ram_if_dq_i_5),
        .T(base_ram_if_dq_t_5));
  IOBUF base_ram_if_dq_iobuf_6
       (.I(base_ram_if_dq_o_6),
        .IO(base_ram_if_dq_io[6]),
        .O(base_ram_if_dq_i_6),
        .T(base_ram_if_dq_t_6));
  IOBUF base_ram_if_dq_iobuf_7
       (.I(base_ram_if_dq_o_7),
        .IO(base_ram_if_dq_io[7]),
        .O(base_ram_if_dq_i_7),
        .T(base_ram_if_dq_t_7));
  IOBUF base_ram_if_dq_iobuf_8
       (.I(base_ram_if_dq_o_8),
        .IO(base_ram_if_dq_io[8]),
        .O(base_ram_if_dq_i_8),
        .T(base_ram_if_dq_t_8));
  IOBUF base_ram_if_dq_iobuf_9
       (.I(base_ram_if_dq_o_9),
        .IO(base_ram_if_dq_io[9]),
        .O(base_ram_if_dq_i_9),
        .T(base_ram_if_dq_t_9));
  IOBUF ext_ram_if_dq_iobuf_0
       (.I(ext_ram_if_dq_o_0),
        .IO(ext_ram_if_dq_io[0]),
        .O(ext_ram_if_dq_i_0),
        .T(ext_ram_if_dq_t_0));
  IOBUF ext_ram_if_dq_iobuf_1
       (.I(ext_ram_if_dq_o_1),
        .IO(ext_ram_if_dq_io[1]),
        .O(ext_ram_if_dq_i_1),
        .T(ext_ram_if_dq_t_1));
  IOBUF ext_ram_if_dq_iobuf_10
       (.I(ext_ram_if_dq_o_10),
        .IO(ext_ram_if_dq_io[10]),
        .O(ext_ram_if_dq_i_10),
        .T(ext_ram_if_dq_t_10));
  IOBUF ext_ram_if_dq_iobuf_11
       (.I(ext_ram_if_dq_o_11),
        .IO(ext_ram_if_dq_io[11]),
        .O(ext_ram_if_dq_i_11),
        .T(ext_ram_if_dq_t_11));
  IOBUF ext_ram_if_dq_iobuf_12
       (.I(ext_ram_if_dq_o_12),
        .IO(ext_ram_if_dq_io[12]),
        .O(ext_ram_if_dq_i_12),
        .T(ext_ram_if_dq_t_12));
  IOBUF ext_ram_if_dq_iobuf_13
       (.I(ext_ram_if_dq_o_13),
        .IO(ext_ram_if_dq_io[13]),
        .O(ext_ram_if_dq_i_13),
        .T(ext_ram_if_dq_t_13));
  IOBUF ext_ram_if_dq_iobuf_14
       (.I(ext_ram_if_dq_o_14),
        .IO(ext_ram_if_dq_io[14]),
        .O(ext_ram_if_dq_i_14),
        .T(ext_ram_if_dq_t_14));
  IOBUF ext_ram_if_dq_iobuf_15
       (.I(ext_ram_if_dq_o_15),
        .IO(ext_ram_if_dq_io[15]),
        .O(ext_ram_if_dq_i_15),
        .T(ext_ram_if_dq_t_15));
  IOBUF ext_ram_if_dq_iobuf_16
       (.I(ext_ram_if_dq_o_16),
        .IO(ext_ram_if_dq_io[16]),
        .O(ext_ram_if_dq_i_16),
        .T(ext_ram_if_dq_t_16));
  IOBUF ext_ram_if_dq_iobuf_17
       (.I(ext_ram_if_dq_o_17),
        .IO(ext_ram_if_dq_io[17]),
        .O(ext_ram_if_dq_i_17),
        .T(ext_ram_if_dq_t_17));
  IOBUF ext_ram_if_dq_iobuf_18
       (.I(ext_ram_if_dq_o_18),
        .IO(ext_ram_if_dq_io[18]),
        .O(ext_ram_if_dq_i_18),
        .T(ext_ram_if_dq_t_18));
  IOBUF ext_ram_if_dq_iobuf_19
       (.I(ext_ram_if_dq_o_19),
        .IO(ext_ram_if_dq_io[19]),
        .O(ext_ram_if_dq_i_19),
        .T(ext_ram_if_dq_t_19));
  IOBUF ext_ram_if_dq_iobuf_2
       (.I(ext_ram_if_dq_o_2),
        .IO(ext_ram_if_dq_io[2]),
        .O(ext_ram_if_dq_i_2),
        .T(ext_ram_if_dq_t_2));
  IOBUF ext_ram_if_dq_iobuf_20
       (.I(ext_ram_if_dq_o_20),
        .IO(ext_ram_if_dq_io[20]),
        .O(ext_ram_if_dq_i_20),
        .T(ext_ram_if_dq_t_20));
  IOBUF ext_ram_if_dq_iobuf_21
       (.I(ext_ram_if_dq_o_21),
        .IO(ext_ram_if_dq_io[21]),
        .O(ext_ram_if_dq_i_21),
        .T(ext_ram_if_dq_t_21));
  IOBUF ext_ram_if_dq_iobuf_22
       (.I(ext_ram_if_dq_o_22),
        .IO(ext_ram_if_dq_io[22]),
        .O(ext_ram_if_dq_i_22),
        .T(ext_ram_if_dq_t_22));
  IOBUF ext_ram_if_dq_iobuf_23
       (.I(ext_ram_if_dq_o_23),
        .IO(ext_ram_if_dq_io[23]),
        .O(ext_ram_if_dq_i_23),
        .T(ext_ram_if_dq_t_23));
  IOBUF ext_ram_if_dq_iobuf_24
       (.I(ext_ram_if_dq_o_24),
        .IO(ext_ram_if_dq_io[24]),
        .O(ext_ram_if_dq_i_24),
        .T(ext_ram_if_dq_t_24));
  IOBUF ext_ram_if_dq_iobuf_25
       (.I(ext_ram_if_dq_o_25),
        .IO(ext_ram_if_dq_io[25]),
        .O(ext_ram_if_dq_i_25),
        .T(ext_ram_if_dq_t_25));
  IOBUF ext_ram_if_dq_iobuf_26
       (.I(ext_ram_if_dq_o_26),
        .IO(ext_ram_if_dq_io[26]),
        .O(ext_ram_if_dq_i_26),
        .T(ext_ram_if_dq_t_26));
  IOBUF ext_ram_if_dq_iobuf_27
       (.I(ext_ram_if_dq_o_27),
        .IO(ext_ram_if_dq_io[27]),
        .O(ext_ram_if_dq_i_27),
        .T(ext_ram_if_dq_t_27));
  IOBUF ext_ram_if_dq_iobuf_28
       (.I(ext_ram_if_dq_o_28),
        .IO(ext_ram_if_dq_io[28]),
        .O(ext_ram_if_dq_i_28),
        .T(ext_ram_if_dq_t_28));
  IOBUF ext_ram_if_dq_iobuf_29
       (.I(ext_ram_if_dq_o_29),
        .IO(ext_ram_if_dq_io[29]),
        .O(ext_ram_if_dq_i_29),
        .T(ext_ram_if_dq_t_29));
  IOBUF ext_ram_if_dq_iobuf_3
       (.I(ext_ram_if_dq_o_3),
        .IO(ext_ram_if_dq_io[3]),
        .O(ext_ram_if_dq_i_3),
        .T(ext_ram_if_dq_t_3));
  IOBUF ext_ram_if_dq_iobuf_30
       (.I(ext_ram_if_dq_o_30),
        .IO(ext_ram_if_dq_io[30]),
        .O(ext_ram_if_dq_i_30),
        .T(ext_ram_if_dq_t_30));
  IOBUF ext_ram_if_dq_iobuf_31
       (.I(ext_ram_if_dq_o_31),
        .IO(ext_ram_if_dq_io[31]),
        .O(ext_ram_if_dq_i_31),
        .T(ext_ram_if_dq_t_31));
  IOBUF ext_ram_if_dq_iobuf_4
       (.I(ext_ram_if_dq_o_4),
        .IO(ext_ram_if_dq_io[4]),
        .O(ext_ram_if_dq_i_4),
        .T(ext_ram_if_dq_t_4));
  IOBUF ext_ram_if_dq_iobuf_5
       (.I(ext_ram_if_dq_o_5),
        .IO(ext_ram_if_dq_io[5]),
        .O(ext_ram_if_dq_i_5),
        .T(ext_ram_if_dq_t_5));
  IOBUF ext_ram_if_dq_iobuf_6
       (.I(ext_ram_if_dq_o_6),
        .IO(ext_ram_if_dq_io[6]),
        .O(ext_ram_if_dq_i_6),
        .T(ext_ram_if_dq_t_6));
  IOBUF ext_ram_if_dq_iobuf_7
       (.I(ext_ram_if_dq_o_7),
        .IO(ext_ram_if_dq_io[7]),
        .O(ext_ram_if_dq_i_7),
        .T(ext_ram_if_dq_t_7));
  IOBUF ext_ram_if_dq_iobuf_8
       (.I(ext_ram_if_dq_o_8),
        .IO(ext_ram_if_dq_io[8]),
        .O(ext_ram_if_dq_i_8),
        .T(ext_ram_if_dq_t_8));
  IOBUF ext_ram_if_dq_iobuf_9
       (.I(ext_ram_if_dq_o_9),
        .IO(ext_ram_if_dq_io[9]),
        .O(ext_ram_if_dq_i_9),
        .T(ext_ram_if_dq_t_9));
  soc_bd soc_bd_i
       (.base_ram_if_addr(base_ram_if_addr),
        .base_ram_if_adv_ldn(base_ram_if_adv_ldn),
        .base_ram_if_ben(base_ram_if_ben),
        .base_ram_if_ce(base_ram_if_ce),
        .base_ram_if_ce_n(base_ram_if_ce_n),
        .base_ram_if_clken(base_ram_if_clken),
        .base_ram_if_cre(base_ram_if_cre),
        .base_ram_if_dq_i({base_ram_if_dq_i_31,base_ram_if_dq_i_30,base_ram_if_dq_i_29,base_ram_if_dq_i_28,base_ram_if_dq_i_27,base_ram_if_dq_i_26,base_ram_if_dq_i_25,base_ram_if_dq_i_24,base_ram_if_dq_i_23,base_ram_if_dq_i_22,base_ram_if_dq_i_21,base_ram_if_dq_i_20,base_ram_if_dq_i_19,base_ram_if_dq_i_18,base_ram_if_dq_i_17,base_ram_if_dq_i_16,base_ram_if_dq_i_15,base_ram_if_dq_i_14,base_ram_if_dq_i_13,base_ram_if_dq_i_12,base_ram_if_dq_i_11,base_ram_if_dq_i_10,base_ram_if_dq_i_9,base_ram_if_dq_i_8,base_ram_if_dq_i_7,base_ram_if_dq_i_6,base_ram_if_dq_i_5,base_ram_if_dq_i_4,base_ram_if_dq_i_3,base_ram_if_dq_i_2,base_ram_if_dq_i_1,base_ram_if_dq_i_0}),
        .base_ram_if_dq_o({base_ram_if_dq_o_31,base_ram_if_dq_o_30,base_ram_if_dq_o_29,base_ram_if_dq_o_28,base_ram_if_dq_o_27,base_ram_if_dq_o_26,base_ram_if_dq_o_25,base_ram_if_dq_o_24,base_ram_if_dq_o_23,base_ram_if_dq_o_22,base_ram_if_dq_o_21,base_ram_if_dq_o_20,base_ram_if_dq_o_19,base_ram_if_dq_o_18,base_ram_if_dq_o_17,base_ram_if_dq_o_16,base_ram_if_dq_o_15,base_ram_if_dq_o_14,base_ram_if_dq_o_13,base_ram_if_dq_o_12,base_ram_if_dq_o_11,base_ram_if_dq_o_10,base_ram_if_dq_o_9,base_ram_if_dq_o_8,base_ram_if_dq_o_7,base_ram_if_dq_o_6,base_ram_if_dq_o_5,base_ram_if_dq_o_4,base_ram_if_dq_o_3,base_ram_if_dq_o_2,base_ram_if_dq_o_1,base_ram_if_dq_o_0}),
        .base_ram_if_dq_t({base_ram_if_dq_t_31,base_ram_if_dq_t_30,base_ram_if_dq_t_29,base_ram_if_dq_t_28,base_ram_if_dq_t_27,base_ram_if_dq_t_26,base_ram_if_dq_t_25,base_ram_if_dq_t_24,base_ram_if_dq_t_23,base_ram_if_dq_t_22,base_ram_if_dq_t_21,base_ram_if_dq_t_20,base_ram_if_dq_t_19,base_ram_if_dq_t_18,base_ram_if_dq_t_17,base_ram_if_dq_t_16,base_ram_if_dq_t_15,base_ram_if_dq_t_14,base_ram_if_dq_t_13,base_ram_if_dq_t_12,base_ram_if_dq_t_11,base_ram_if_dq_t_10,base_ram_if_dq_t_9,base_ram_if_dq_t_8,base_ram_if_dq_t_7,base_ram_if_dq_t_6,base_ram_if_dq_t_5,base_ram_if_dq_t_4,base_ram_if_dq_t_3,base_ram_if_dq_t_2,base_ram_if_dq_t_1,base_ram_if_dq_t_0}),
        .base_ram_if_lbon(base_ram_if_lbon),
        .base_ram_if_oen(base_ram_if_oen),
        .base_ram_if_qwen(base_ram_if_qwen),
        .base_ram_if_rnw(base_ram_if_rnw),
        .base_ram_if_rpn(base_ram_if_rpn),
        .base_ram_if_wait(base_ram_if_wait),
        .base_ram_if_wen(base_ram_if_wen),
        .ext_ram_if_addr(ext_ram_if_addr),
        .ext_ram_if_adv_ldn(ext_ram_if_adv_ldn),
        .ext_ram_if_ben(ext_ram_if_ben),
        .ext_ram_if_ce(ext_ram_if_ce),
        .ext_ram_if_ce_n(ext_ram_if_ce_n),
        .ext_ram_if_clken(ext_ram_if_clken),
        .ext_ram_if_cre(ext_ram_if_cre),
        .ext_ram_if_dq_i({ext_ram_if_dq_i_31,ext_ram_if_dq_i_30,ext_ram_if_dq_i_29,ext_ram_if_dq_i_28,ext_ram_if_dq_i_27,ext_ram_if_dq_i_26,ext_ram_if_dq_i_25,ext_ram_if_dq_i_24,ext_ram_if_dq_i_23,ext_ram_if_dq_i_22,ext_ram_if_dq_i_21,ext_ram_if_dq_i_20,ext_ram_if_dq_i_19,ext_ram_if_dq_i_18,ext_ram_if_dq_i_17,ext_ram_if_dq_i_16,ext_ram_if_dq_i_15,ext_ram_if_dq_i_14,ext_ram_if_dq_i_13,ext_ram_if_dq_i_12,ext_ram_if_dq_i_11,ext_ram_if_dq_i_10,ext_ram_if_dq_i_9,ext_ram_if_dq_i_8,ext_ram_if_dq_i_7,ext_ram_if_dq_i_6,ext_ram_if_dq_i_5,ext_ram_if_dq_i_4,ext_ram_if_dq_i_3,ext_ram_if_dq_i_2,ext_ram_if_dq_i_1,ext_ram_if_dq_i_0}),
        .ext_ram_if_dq_o({ext_ram_if_dq_o_31,ext_ram_if_dq_o_30,ext_ram_if_dq_o_29,ext_ram_if_dq_o_28,ext_ram_if_dq_o_27,ext_ram_if_dq_o_26,ext_ram_if_dq_o_25,ext_ram_if_dq_o_24,ext_ram_if_dq_o_23,ext_ram_if_dq_o_22,ext_ram_if_dq_o_21,ext_ram_if_dq_o_20,ext_ram_if_dq_o_19,ext_ram_if_dq_o_18,ext_ram_if_dq_o_17,ext_ram_if_dq_o_16,ext_ram_if_dq_o_15,ext_ram_if_dq_o_14,ext_ram_if_dq_o_13,ext_ram_if_dq_o_12,ext_ram_if_dq_o_11,ext_ram_if_dq_o_10,ext_ram_if_dq_o_9,ext_ram_if_dq_o_8,ext_ram_if_dq_o_7,ext_ram_if_dq_o_6,ext_ram_if_dq_o_5,ext_ram_if_dq_o_4,ext_ram_if_dq_o_3,ext_ram_if_dq_o_2,ext_ram_if_dq_o_1,ext_ram_if_dq_o_0}),
        .ext_ram_if_dq_t({ext_ram_if_dq_t_31,ext_ram_if_dq_t_30,ext_ram_if_dq_t_29,ext_ram_if_dq_t_28,ext_ram_if_dq_t_27,ext_ram_if_dq_t_26,ext_ram_if_dq_t_25,ext_ram_if_dq_t_24,ext_ram_if_dq_t_23,ext_ram_if_dq_t_22,ext_ram_if_dq_t_21,ext_ram_if_dq_t_20,ext_ram_if_dq_t_19,ext_ram_if_dq_t_18,ext_ram_if_dq_t_17,ext_ram_if_dq_t_16,ext_ram_if_dq_t_15,ext_ram_if_dq_t_14,ext_ram_if_dq_t_13,ext_ram_if_dq_t_12,ext_ram_if_dq_t_11,ext_ram_if_dq_t_10,ext_ram_if_dq_t_9,ext_ram_if_dq_t_8,ext_ram_if_dq_t_7,ext_ram_if_dq_t_6,ext_ram_if_dq_t_5,ext_ram_if_dq_t_4,ext_ram_if_dq_t_3,ext_ram_if_dq_t_2,ext_ram_if_dq_t_1,ext_ram_if_dq_t_0}),
        .ext_ram_if_lbon(ext_ram_if_lbon),
        .ext_ram_if_oen(ext_ram_if_oen),
        .ext_ram_if_qwen(ext_ram_if_qwen),
        .ext_ram_if_rnw(ext_ram_if_rnw),
        .ext_ram_if_rpn(ext_ram_if_rpn),
        .ext_ram_if_wait(ext_ram_if_wait),
        .ext_ram_if_wen(ext_ram_if_wen),
        .system_clk(system_clk),
        .system_rst(system_rst),
        .uart_rxd(uart_rxd),
        .uart_txd(uart_txd));
endmodule
