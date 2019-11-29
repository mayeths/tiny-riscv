module core (
  input wire system_clk,
  input wire system_rst,

  // BaseRAM信号
  inout wire [31:0] base_ram_data,  //BaseRAM数据，低8位与CPLD串口控制器共享
  output wire [19:0] base_ram_addr, //BaseRAM地址
  output wire [3:0] base_ram_be_n,  //BaseRAM字节使能，低有效。如果不使用字节使能，请保持为0
  output wire base_ram_ce_n,       //BaseRAM片选，低有效
  output wire base_ram_oe_n,       //BaseRAM读使能，低有效
  output wire base_ram_we_n,       //BaseRAM写使能，低有效

  // ExtRAM信号
  inout wire [31:0] ext_ram_data,  //ExtRAM数据
  output wire [19:0] ext_ram_addr, //ExtRAM地址
  output wire [3:0] ext_ram_be_n,  //ExtRAM字节使能，低有效。如果不使用字节使能，请保持为0
  output wire ext_ram_ce_n,       //ExtRAM片选，低有效
  output wire ext_ram_oe_n,       //ExtRAM读使能，低有效
  output wire ext_ram_we_n       //ExtRAM写使能，低有效
);

  wire system_clk;
  wire system_rst;

  ////////output of modules////////
  // Then what you need is assign them to next corresponding modules.
  ////        ifu
  wire [31:0] ifu_pc;
  wire [31:0] ifu_inst;
  wire [4:0]  ifu_jalr_addr;
  wire ibus_valid;
  wire [31:0] ibus_data;
  wire [31:0] ibus_addr;
  wire ibus_rd;
  // wire exception_addr_misalign_inst;
  // wire exception_access_fault_inst;
  // wire exception_page_fault_ins;
  ////        pipeline1
  wire [31:0] pipe1_pc;
  wire [31:0] pipe1_inst;
  ////        decode
  wire        decode_rs1_enable;
  wire        decode_rs2_enable;
  wire [4:0]  decode_rs1_addr;
  wire [4:0]  decode_rs2_addr;
  wire [3:0]  decode_alu_action;
  wire        decode_op1_is_pc;
  wire        decode_op2_is_imm;
  wire [31:0] decode_imm32;
  wire        decode_dst_enable;
  wire [4:0]  decode_dst_addr;
  wire        decode_load_enable;
  wire        decode_store_enable;
  wire [2:0]  decode_load_type;
  wire [1:0]  decode_store_type;
  wire [1:0]  decode_exu_out_src;
  wire [11:0] decode_csr_addr;
  wire        decode_csr_read_enable;
  wire        decode_csr_write_enable;
  wire [2:0]  decode_csru_action;
  wire [31:0] decode_uimm32;
  ////        regfile
  wire [31:0] regfile_rs1_data;
  wire [31:0] regfile_rs2_data;
  wire [31:0] regfile_jalr_data;
  ////        exu
  wire [31:0] exu_exu_out;
  wire [31:0] exu_csr_out;
  ////        bru
  wire        go_branch;
  wire [31:0] go_branch_op1;
  wire [31:0] go_branch_op2;
  ////        pipeline2
  wire [31:0] pipe2_alu_out;
  wire        pipe2_load_enable;
  wire        pipe2_store_enable;
  wire [2:0]  pipe2_load_type;
  wire [1:0]  pipe2_store_type;
  wire [31:0] pipe2_store_data;
  wire        pipe2_dst_enable;
  wire [4:0]  pipe2_dst_addr;
  ////        lsu
  wire        lsu_stall;
  wire        lsu_load_data_valid;
  wire [31:0] lsu_load_data;
  ////        computed wires
  wire pipeline1_flush = go_branch | go_trap | from_trap;


  IFU ifu_(
    //input
    .clk      (system_clk),
    .rst      (system_rst),
    .stall    (),
    //output
    .pc  (ifu_pc),
    .inst(ifu_inst),
    //assign to BIU
    .ibus_valid(ibus_valid),
    .ibus_data_i(ibus_data),
    .ibus_addr(ifu_sram_addr),
    .ibus_rd(ibus_rd),
    //assign to regfile
    .jalr_data(),
    .jalr_addr(ifu_jalr_addr),
    //assign to BRU
    .go_branch(),
    .go_branch_op1(),
    .go_branch_op2()
    //assign to CSRHub
    // .go_trap      (),
    // .go_trap_op1  (),
    // .go_trap_op2  (),
    // .from_trap    (),
    // .from_trap_op1(),
    // .from_trap_op2(),
    // .exception_addr_misalign_inst(exception_addr_misalign_inst),
    // .exception_access_fault_inst (exception_access_fault_inst),
    // .exception_page_fault_inst   (exception_page_fault_inst)
  );

  pipeline1 pipeline1_(
    .clk    (system_clk),
    .rst    (system_rst),
    .flush  (pipeline1_flush),
    .stall  (),
    .if_pc  (),              .ex_pc  (pipe1_pc),
    .if_inst(),              .ex_inst(pipe1_inst)
  );

  decode decode_(
    //input
    .inst(),
    //output
    .rs1_enable      (decode_rs1_enable),
    .rs2_enable      (decode_rs2_enable),
    .rs1_addr        (decode_rs1_addr),
    .rs2_addr        (decode_rs2_enable),
    .alu_action      (decode_alu_action),
    .op1_is_pc       (decode_op1_is_pc),
    .op2_is_imm      (decode_op2_is_imm),
    .imm32           (decode_imm32),
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
    .rs1_addr  (),
    .rs2_addr  (),
    .dst_addr  (),
    .dst_enable(),
    .dst_data  (),
    .jalr_addr (),
    //output
    .rs1_data (regfile_rs1_data),
    .rs2_data (regfile_rs2_data),
    .jalr_data(regfile_jalr_data)
  );

  BRU bru_(
    //input
    .pc(),
    .inst(),
    .is_beq (),
    .is_bne (),
    .is_blt (),
    .is_bge (),
    .is_bltu(),
    .is_bgeu(),
    .alu_out(),
    //output
    .go_branch(),
    .go_branch_op1(),
    .go_branch_op2()
  );

  exu exu_(
    //input
    .rs1        (),
    .rs2        (),
    .pc         (),
    .imm32      (),
    .op1_is_pc  (),
    .op2_is_imm (),
    .alu_action (),
    .csru_action(),
    .csr        (),
    .uimm32     (),
    .exu_out_src(),
    //output
    .exu_out(exu_exu_out),
    .csr_out(exu_csr_out)
  );

  pipeline2 pipepine2_(
    .clk  (system_clk),
    .rst  (system_rst),
    .flush(),
    .stall(),
    .exu_alu_out     (),            .lsu_alu_out     (pipe2_alu_out),
    .exu_load_enable (),            .lsu_load_enable (pipe2_load_enable),
    .exu_store_enable(),            .lsu_store_enable(pipe2_store_enable),
    .exu_load_type   (),            .lsu_load_type   (pipe2_load_type),
    .exu_store_type  (),            .lsu_store_type  (pipe2_store_type),
    .exu_store_data  (),            .lsu_store_data  (pipe2_store_data),
    .exu_dst_enable  (),            .lsu_dst_enable  (pipe2_dst_enable),
    .exu_dst_addr    (),            .lsu_dst_addr    (pipe2_dst_addr)
  );

  LSU lsu_(
    //input
    .clk         (system_clk),
    .rst         (system_rst),
    .load_enable (),
    .load_type   (),
    .store_enable(),
    .store_type  (),
    .addr        (),
    .store_data  (),
    //output
    .stall          (lsu_stall),
    .load_data_valid(lsu_load_data_valid),
    .load_data      (lsu_load_data)
  );

  // TODO: write back to regfile
  // assign regfile.dst_enable <- pipeline2.lsu_dst_enalbe
  // assign regfile.dst_addr   <- pipeline2.lsu_dst_addr
  // assign regfile.dst_data   <- pipeline2.lsu_load_enable & lsu.load_data_valid ?
  //                              (lsu.load_data : pipeline2.lsu_alu_out)

  biu u_biu(
  	.ibus_addr     (ibus_addr     ),
    .ibus_data_o   (ibus_data     ),
    .ibus_rd       (ibus_rd       ),
    .ibus_valid    (ibus_valid    ),
    .dbus_rd       (dbus_rd       ),
    .dbus_wr       (dbus_wr       ),
    .dbus_addr     (dbus_addr     ),
    .dbus_data_i   (dbus_data_i   ),
    .dbus_data_o   (dbus_data_o   ),
    .dbus_be       (dbus_be       ),
    .dbus_valid    (dbus_valid    ),
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

