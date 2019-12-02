module core (
  input wire system_clk,
  input wire system_rst,

  // BaseRAM (instruction ram)
  inout wire  [31:0] base_ram_data,
  output wire [19:0] base_ram_addr,
  output wire [3:0]  base_ram_be_n,
  output wire        base_ram_ce_n,
  output wire        base_ram_oe_n,
  output wire        base_ram_we_n,

  // ExtRAM (data ram)
  inout wire  [31:0] ext_ram_data,
  output wire [19:0] ext_ram_addr,
  output wire [3:0]  ext_ram_be_n,
  output wire        ext_ram_ce_n,
  output wire        ext_ram_oe_n,
  output wire        ext_ram_we_n,

  // async uart controller
  output wire       uart_tx_start,
  output wire [7:0] uart_tx_data,
  input wire        uart_tx_busy,
  input wire        uart_rx_data_ready,
  input wire  [7:0] uart_rx_data,
  output wire       uart_rx_clear
);

  parameter AXI4_ADDRESS_WIDTH = 32;
  parameter AXI4_RDATA_WIDTH   = 32;
  parameter AXI4_WDATA_WIDTH   = 32;
  parameter AXI4_ID_WIDTH      = 16;
  parameter AXI4_USER_WIDTH    = 8;
  parameter REGISTERED_GRANT   = "FALSE";

  ////////output of modules////////
  // Then what you need is assign them to next corresponding modules.
  ////        ibus_axi_if
  (* dont_touch = "true" *) wire                          ibus_data_req;
  (* dont_touch = "true" *) wire                          ibus_data_rvalid;
  (* dont_touch = "true" *) wire [AXI4_ADDRESS_WIDTH-1:0] ibus_data_addr;
  (* dont_touch = "true" *) wire [AXI4_RDATA_WIDTH-1:0]   ibus_data_rdata;
  ////        dbus_axi_if
  (* dont_touch = "true" *) wire                          dbus_data_req;
  (* dont_touch = "true" *) wire                          dbus_data_we;
  (* dont_touch = "true" *) wire                          dbus_data_rvalid;
  (* dont_touch = "true" *) wire                          dbus_data_gnt;
  (* dont_touch = "true" *) wire [AXI4_ADDRESS_WIDTH-1:0] dbus_data_addr;
  (* dont_touch = "true" *) wire [AXI4_RDATA_WIDTH-1:0]   dbus_data_rdata;
  (* dont_touch = "true" *) wire [3:0]                    dbus_data_be;
  (* dont_touch = "true" *) wire [AXI4_WDATA_WIDTH-1:0]   dbus_data_wdata;
  ////        ifu
  (* dont_touch = "true" *) wire [31:0] ifu_pc;
  (* dont_touch = "true" *) wire [31:0] ifu_inst;
  (* dont_touch = "true" *) wire [4:0]  ifu_jalr_addr;
  (* dont_touch = "true" *) wire        ifu_ibus_ce;
  (* dont_touch = "true" *) wire [31:0] ifu_ibus_addr;
  (* dont_touch = "true" *) wire [31:0] ifu_ibus_rdata;
  ////        pipeline1
  (* dont_touch = "true" *) wire [31:0] pipe1_pc;
  (* dont_touch = "true" *) wire [31:0] pipe1_inst;
  ////        decode
  (* dont_touch = "true" *) wire        decode_rs1_enable;
  (* dont_touch = "true" *) wire        decode_rs2_enable;
  (* dont_touch = "true" *) wire [4:0]  decode_rs1_addr;
  (* dont_touch = "true" *) wire [4:0]  decode_rs2_addr;
  (* dont_touch = "true" *) wire [3:0]  decode_alu_action;
  (* dont_touch = "true" *) wire        decode_op1_is_pc;
  (* dont_touch = "true" *) wire        decode_op2_is_imm;
  (* dont_touch = "true" *) wire [31:0] decode_imm32;
  (* dont_touch = "true" *) wire        decode_is_jalr;
  (* dont_touch = "true" *) wire        decode_is_beq;
  (* dont_touch = "true" *) wire        decode_is_bne;
  (* dont_touch = "true" *) wire        decode_is_blt;
  (* dont_touch = "true" *) wire        decode_is_bge;
  (* dont_touch = "true" *) wire        decode_is_bltu;
  (* dont_touch = "true" *) wire        decode_is_bgeu;
  (* dont_touch = "true" *) wire        decode_dst_enable;
  (* dont_touch = "true" *) wire [4:0]  decode_dst_addr;
  (* dont_touch = "true" *) wire        decode_load_enable;
  (* dont_touch = "true" *) wire        decode_store_enable;
  (* dont_touch = "true" *) wire [2:0]  decode_load_type;
  (* dont_touch = "true" *) wire [1:0]  decode_store_type;
  (* dont_touch = "true" *) wire [1:0]  decode_exu_out_src;
  (* dont_touch = "true" *) wire [11:0] decode_csr_addr;
  (* dont_touch = "true" *) wire        decode_csr_read_enable;
  (* dont_touch = "true" *) wire        decode_csr_write_enable;
  (* dont_touch = "true" *) wire [2:0]  decode_csru_action;
  (* dont_touch = "true" *) wire [31:0] decode_uimm32;
  ////        regfile
  (* dont_touch = "true" *) wire [31:0] regfile_rs1_data;
  (* dont_touch = "true" *) wire [31:0] regfile_rs2_data;
  (* dont_touch = "true" *) wire [31:0] regfile_jalr_data;
  ////        exu
  (* dont_touch = "true" *) wire [31:0] exu_exu_out;
  (* dont_touch = "true" *) wire [31:0] exu_csr_out;
  ////        bru
  (* dont_touch = "true" *) wire        bru_go_branch;
  (* dont_touch = "true" *) wire [31:0] bru_go_branch_op1;
  (* dont_touch = "true" *) wire [31:0] bru_go_branch_op2;
  ////        pipeline2
  (* dont_touch = "true" *) wire [31:0] pipe2_alu_out;
  (* dont_touch = "true" *) wire        pipe2_load_enable;
  (* dont_touch = "true" *) wire        pipe2_store_enable;
  (* dont_touch = "true" *) wire [2:0]  pipe2_load_type;
  (* dont_touch = "true" *) wire [1:0]  pipe2_store_type;
  (* dont_touch = "true" *) wire [31:0] pipe2_store_data;
  (* dont_touch = "true" *) wire        pipe2_dst_enable;
  (* dont_touch = "true" *) wire [4:0]  pipe2_dst_addr;
  ////        lsu
  (* dont_touch = "true" *) wire [31:0] lsu_load_data;
  (* dont_touch = "true" *) wire        lsu_dbus_ce;
  (* dont_touch = "true" *) wire [31:0] lsu_dbus_addr;
  (* dont_touch = "true" *) wire        lsu_dbus_we;
  (* dont_touch = "true" *) wire [3:0]  lsu_dbus_be;
  (* dont_touch = "true" *) wire        lsu_dbus_oe;
  (* dont_touch = "true" *) wire [31:0] lsu_dbus_rdata;
  (* dont_touch = "true" *) wire [31:0] lsu_dbus_wdata;
  ////        wbu
  (* dont_touch = "true" *) wire [31:0] wbu_wb_data;
  ////        biu
  wire ibus_stallreq;

  ifu ifu_(
    //input
    .clk            (system_clk),
    .rst            (system_rst),
    .stall          (ibus_stallreq),
    //output
    .pc             (ifu_pc),
    .inst           (ifu_inst),
    //assign to biu
    .ibus_ce        (ifu_ibus_ce),
    .ibus_addr      (ifu_ibus_addr),
    .ibus_rdata     (ifu_ibus_rdata),
    //jalr
    .go_jalr       (decode_is_jalr),
    .go_jalr_op1   (regfile_rs1_data),
    .go_jalr_op2   (32'b0),
    //assign to BRU
    .go_branch      (bru_go_branch),
    .go_branch_op1  (bru_go_branch_op1),
    .go_branch_op2  (bru_go_branch_op2)
  );

  pipeline1 pipeline1_(
    .clk    (system_clk),
    .rst    (system_rst),
    .flush  (bru_go_branch | decode_is_jalr),
    .stall  (),
    .if_pc  (ifu_pc),             .ex_pc  (pipe1_pc),
    .if_inst(ifu_inst),           .ex_inst(pipe1_inst)
  );

  decode decode_(
    //input
    .inst(pipe1_inst),
    //output
    .rs1_enable      (decode_rs1_enable),
    .rs2_enable      (decode_rs2_enable),
    .rs1_addr        (decode_rs1_addr),
    .rs2_addr        (decode_rs2_addr),
    .alu_action      (decode_alu_action),
    .op1_is_pc       (decode_op1_is_pc),
    .op2_is_imm      (decode_op2_is_imm),
    .imm32           (decode_imm32),
    .is_jalr         (decode_is_jalr),
    .is_beq          (decode_is_beq),
    .is_bne          (decode_is_bne),
    .is_blt          (decode_is_blt),
    .is_bge          (decode_is_bge),
    .is_bltu         (decode_is_bltu),
    .is_bgeu         (decode_is_bgeu),
    .dst_enable      (decode_dst_enable),
    .dst_addr        (decode_dst_addr),
    .load_enable     (decode_load_enable),
    .store_enable    (decode_store_enable),
    .load_type       (decode_load_type),
    .store_type      (decode_store_type),
    .exu_out_src     (decode_exu_out_src),
    .csr_addr        (decode_csr_addr),
    .csr_read_enable (decode_csr_read_enable),
    .csr_write_enable(decode_csr_write_enable),
    .csru_action     (decode_csru_action),
    .uimm32          (decode_uimm32)
  );

  regfile regfile_(
    //input
    .clk       (system_clk),
    .rst       (system_rst),
    .rs1_addr  (decode_rs1_addr),
    .rs2_addr  (decode_rs2_addr),
    .dst_addr  (pipe2_dst_addr),
    .dst_enable(pipe2_dst_enable),
    .dst_data  (wbu_wb_data),
    .jalr_addr (ifu_jalr_addr),
    //output
    .rs1_data (regfile_rs1_data),
    .rs2_data (regfile_rs2_data),
    .jalr_data(regfile_jalr_data)
  );

  BRU bru_(
    //input
    .pc(pipe1_pc),
    .inst(pipe1_inst),
    .is_beq (decode_is_beq),
    .is_bne (decode_is_bne),
    .is_blt (decode_is_blt),
    .is_bge (decode_is_bge),
    .is_bltu(decode_is_bltu),
    .is_bgeu(decode_is_bgeu),
    .alu_out(exu_exu_out),
    //output
    .go_branch(bru_go_branch),
    .go_branch_op1(bru_go_branch_op1),
    .go_branch_op2(bru_go_branch_op2)
  );

  exu exu_(
    //input
    .rs1        (regfile_rs1_data),
    .rs2        (regfile_rs2_data),
    .pc         (pipe1_pc),
    .imm32      (decode_imm32),
    .op1_is_pc  (decode_op1_is_pc),
    .op2_is_imm (decode_op2_is_imm),
    .alu_action (decode_alu_action),
    .csru_action(decode_csru_action),
    .csr        (),
    .uimm32     (decode_uimm32),
    .exu_out_src(decode_exu_out_src),
    //output
    .exu_out(exu_exu_out),
    .csr_out(exu_csr_out)
  );

  pipeline2 pipepine2_(
    .clk  (system_clk),
    .rst  (system_rst),
    .flush(),
    .stall(),
    .exu_alu_out     (exu_exu_out),            .lsu_alu_out     (pipe2_alu_out),
    .exu_load_enable (decode_load_enable),     .lsu_load_enable (pipe2_load_enable),
    .exu_store_enable(decode_store_enable),    .lsu_store_enable(pipe2_store_enable),
    .exu_load_type   (decode_load_type),       .lsu_load_type   (pipe2_load_type),
    .exu_store_type  (decode_store_type),      .lsu_store_type  (pipe2_store_type),
    .exu_store_data  (regfile_rs2_data),       .lsu_store_data  (pipe2_store_data),
    .exu_dst_enable  (decode_dst_enable),      .lsu_dst_enable  (pipe2_dst_enable),
    .exu_dst_addr    (decode_dst_addr),        .lsu_dst_addr    (pipe2_dst_addr)
  );
// 4091410ns
  lsu lsu_(
    //input
    .clk             (system_clk),
    .rst             (system_rst),
    .load_enable     (pipe2_load_enable),
    .load_type       (pipe2_load_type),
    .store_enable    (pipe2_store_enable),
    .store_type      (pipe2_store_type),
    .addr            (pipe2_alu_out),
    .store_data      (pipe2_store_data),
    //output
    .load_data       (lsu_load_data),
    //assign to biu
    .dbus_ce         (lsu_dbus_ce),
    .dbus_addr       (lsu_dbus_addr),
    .dbus_we         (lsu_dbus_we),
    .dbus_be         (lsu_dbus_be),
    .dbus_oe         (lsu_dbus_oe),
    .dbus_rdata      (lsu_dbus_rdata),
    .dbus_wdata      (lsu_dbus_wdata),
    //assign to uart
    .uart_tx_start      (uart_tx_start),
    .uart_tx_data       (uart_tx_data),
    .uart_tx_busy       (uart_tx_busy),
    .uart_rx_data_ready (uart_rx_data_ready),
    .uart_rx_data       (uart_rx_data),
    .uart_rx_clear      (uart_rx_clear)
  );

  wbu wbu_(
    //input
  	.load_enable(pipe2_load_enable),
    .load_data  (lsu_load_data),
    .alu_out    (pipe2_alu_out),
    //output
    .wb_data(wbu_wb_data)
  );

  biu biu_(
  	.dbus_ce       (lsu_dbus_ce   ),
    .dbus_addr     (lsu_dbus_addr ),
    .dbus_we       (lsu_dbus_we   ),
    .dbus_be       (lsu_dbus_be   ),
    .dbus_oe       (lsu_dbus_oe   ),
    .dbus_rdata    (lsu_dbus_rdata),
    .dbus_wdata    (lsu_dbus_wdata),
    .ibus_ce       (ifu_ibus_ce   ),
    .ibus_addr     (ifu_ibus_addr ),
    .ibus_rdata    (ifu_ibus_rdata),
    .ibus_stallreq (ibus_stallreq ),

    .base_ram_data (base_ram_data ),
    .base_ram_addr (base_ram_addr ),
    .base_ram_be_n (base_ram_be_n ),
    .base_ram_ce_n (base_ram_ce_n ),
    .base_ram_oe_n (base_ram_oe_n ),
    .base_ram_we_n (base_ram_we_n ),
    .ext_ram_data  (ext_ram_data  ),
    .ext_ram_addr  (ext_ram_addr  ),
    .ext_ram_be_n  (ext_ram_be_n  ),
    .ext_ram_ce_n  (ext_ram_ce_n  ),
    .ext_ram_oe_n  (ext_ram_oe_n  ),
    .ext_ram_we_n  (ext_ram_we_n  )
  );

endmodule

