module core (

);

  wire system_clk;
  wire system_rst;

  ////////output of modules////////
  ////        ifu
  wire [31:0] ifu_pc;
  wire [31:0] ifu_inst;
  wire        ifu_jalr_addr;
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
  wire [11:0] decode_csr_addr;
  wire        decode_csr_read_enable;
  wire        decode_csr_write_enable;
  wire [3:0]  decode_csru_action;
  wire [31:0] decode_uimm32;
  wire [2:0]  decode_exu_out_src;
  ////        regfile
  wire [31:0] regfile_rs1_data;
  wire [31:0] regfile_rs2_data;
  wire [31:0] regfile_jalr_data;
  ////        csrfile
  wire [31:0] csrfile_read_data;
  ////        exu
  wire [31:0] exu_exu_out;
  wire [31:0] exu_csr_out;
  ////        bpru
  wire        bpru_bpfail;
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
  ////        misc wires


  IFU ifu_(
    //input
    .clk      (system_clk),
    .rst      (system_rst),
    .stall    (),
    .bpfail   (),
    .jalr_data(),
    //output
    .pc       (ifu_pc),
    .inst     (ifu_inst),
    .jalr_addr(ifu_jalr_addr)
  );

  pipeline1 pipeline1_(
    .clk    (system_clk),
    .rst    (system_rst),
    .flush  (),
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
    .csr_addr        (decode_csr_addr),
    .csr_read_enable (decode_csr_read_enable),
    .csr_write_enable(decode_csr_write_enable),
    .csru_action     (decode_csru_action),
    .uimm32          (decode_uimm32),
    .exu_out_src     (decode_exu_out_src)
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

  csrfile csrfile_(
    //input
    .clk         (system_clk),
    .rst         (system_rst),
    .read_enable (),
    .write_enable(),
    .read_idx    (),
    .write_idx   (),
    .write_data  (),
    //output
    .read_data(csrfile_read_data)
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
    .csr        (),
    .csru_action(),
    .uimm32     (),
    .exu_out_src(),
    //output
    .exu_out(exu_exu_out),
    .csr_out(exu_csr_out)
  );

  BPRU bpru_(
    //input
    .is_beq (),
    .is_bne (),
    .is_blt (),
    .is_bge (),
    .is_bltu(),
    .is_bgeu(),
    .alu_out(),
    //output
    .bpfail(bpru_bpfail)
  );

  pipeline2 pipepine2_(
    .clk  (system_clk),
    .rst  (system_rst),
    .flush(),
    .stall(),
    .exu_alu_out     (),            .lsu_alu_out     (pipe2_alu_out),
    .exu_load_enable (),            .lsu_load_enable (pipe2_load_enable),
    .exu_load_type   (),            .lsu_load_type   (pipe2_load_type),
    .exu_store_enable(),            .lsu_store_enable(pipe2_store_enable),
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

endmodule

