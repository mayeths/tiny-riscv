`include "../defines.sv"

module lsu(
  //input
  input wire clk,
  input wire rst,
  input wire load_enable,
  input wire [2:0] load_type,
  input wire store_enable,
  input wire [1:0] store_type,
  input wire [31:0] addr,
  input wire [31:0] store_data,
  //output
  output wire [31:0] load_data,

  //Assign to data ram
  output wire        dram_cen,
  output wire [31:0] dram_addr,
  output wire        dram_wen,
  output wire [3:0]  dram_ben,
  output wire        dram_oen,
  inout  wire [31:0] dram_data,

  //Assign to async uart controller
  output wire       uart_tx_start,
  output wire [7:0] uart_tx_data,
  input  wire       uart_tx_busy,

  input wire        uart_rx_data_ready,
  input wire [7:0]  uart_rx_data,
  output wire       uart_rx_clear
);

  // Load data source
  (* dont_touch = "true" *) wire [31:0] load_data_in = load_enable ? dram_data : 32'b0;

  // Load Byte
  (* dont_touch = "true" *) wire load_byte_a = addr[1:0] == 2'b00;
  (* dont_touch = "true" *) wire load_byte_b = addr[1:0] == 2'b01;
  (* dont_touch = "true" *) wire load_byte_c = addr[1:0] == 2'b10;
  (* dont_touch = "true" *) wire load_byte_d = addr[1:0] == 2'b11;
  (* dont_touch = "true" *) wire lb_extend =
    load_byte_a & load_data_in[7]  |
    load_byte_b & load_data_in[15] |
    load_byte_c & load_data_in[23] |
    load_byte_d & load_data_in[31] ;
  (* dont_touch = "true" *) wire [31:0] load_byte_out = {load_type == `LB ? {24{lb_extend}} : 24'b0,
    {8{load_byte_a}} & load_data_in[7:0]   |
    {8{load_byte_b}} & load_data_in[15:8]  |
    {8{load_byte_c}} & load_data_in[23:16] |
    {8{load_byte_d}} & load_data_in[31:24]
  };
  // Load Half
  (* dont_touch = "true" *) wire load_half_ab = addr[1:0] == 2'b00;
  (* dont_touch = "true" *) wire load_half_bc = addr[1:0] == 2'b01;
  (* dont_touch = "true" *) wire load_half_cd = addr[1:0] == 2'b10;
  (* dont_touch = "true" *) wire lh_extend =
    load_half_ab & load_data_in[15] |
    load_half_bc & load_data_in[23] |
    load_half_cd & load_data_in[31] ;
  (* dont_touch = "true" *) wire [31:0] load_half_out = {load_type == `LH ? {16{lh_extend}} : 16'b0,
    {16{load_half_ab}} & load_data_in[15:0] |
    {16{load_half_bc}} & load_data_in[23:8] |
    {16{load_half_cd}} & load_data_in[31:16]
  };
  // Load Word
  (* dont_touch = "true" *) wire load_word_out = load_data_in;

  // Store Byte
  (* dont_touch = "true" *) wire store_byte_a = store_type == `SB & addr[1:0] == 2'b00;
  (* dont_touch = "true" *) wire store_byte_b = store_type == `SB & addr[1:0] == 2'b01;
  (* dont_touch = "true" *) wire store_byte_c = store_type == `SB & addr[1:0] == 2'b10;
  (* dont_touch = "true" *) wire store_byte_d = store_type == `SB & addr[1:0] == 2'b11;

  // Store Half
  (* dont_touch = "true" *) wire store_half_ab = store_type == `SH & addr[1:0] == 2'b00;
  (* dont_touch = "true" *) wire store_half_bc = store_type == `SH & addr[1:0] == 2'b01;
  (* dont_touch = "true" *) wire store_half_cd = store_type == `SH & addr[1:0] == 2'b10;

  // Store Word
  (* dont_touch = "true" *) wire store_word = store_type == `SW;
  (* dont_touch = "true" *) wire [3:0] store_abcd = {
    store_word | store_byte_d | store_half_cd,
    store_word | store_byte_c | store_half_cd | store_half_bc,
    store_word | store_byte_b | store_half_bc | store_half_ab,
    store_word | store_byte_a | store_half_ab
  };

  wire dram_enable = (load_enable | store_enable) &
    (addr >= 32'h8040_0000) & (addr <= 32'h807F_FFFF);
  
  assign dram_cen  = ~dram_enable;
  assign dram_addr = addr >> 2;   // mem address is in words
  assign dram_oen  = ~load_enable;
  assign dram_wen  = ~store_enable;
  assign dram_ben  = ~store_abcd;
  assign dram_data = store_enable ? store_data : 32'bz;

  assign load_data =
    uart_rx_enable ? uart_load_data : 
    {32{load_type == `LB || load_type == `LBU}} & load_byte_out |
    {32{load_type == `LH || load_type == `LHU}} & load_half_out |
    {32{load_type == `LW                     }} & load_word_out ;

  // UART controller
  wire uart_enable = 
    (load_enable | store_enable) & 
    addr >= 32'h1000_0000 & addr <= 32'h1000_0008;

  // async txd
  wire uart_tx_enable = uart_enable & store_enable;
  assign uart_tx_data = store_data[7:0];
  assign uart_tx_start = uart_tx_enable & addr == 32'h1000_0000;
  
  // async rxd
  wire uart_rx_enable = uart_enable & load_enable;
  wire [31:0] uart_status_reg = {26'b0, ~uart_tx_busy, 3'b0, uart_rx_data_ready, 1'b0};
  wire [31:0] uart_load_data = 
    addr == 32'h1000_0000 ? uart_rx_data :  // read uart rx data
    addr == 32'h1000_0005 ? uart_status_reg : // read status
    32'b0;

  assign uart_rx_clear = 1'b0;

endmodule