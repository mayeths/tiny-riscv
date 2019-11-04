`include "defines.sv"

module core (

  LFU_AXI

  LSU_AXI

);

  LFU lfu_(
    //TODO: AXI握手拿指令
    //NOTE: 在lfu内记录branch的另一个可能地址，当branch predict fail(bpfail)时改成读这个地址
    //input
    .clk(),
    .rst(),
    .stall(),   // 接 lsu 的 stall 信号，现在只有load/store会阻塞
    .bpfail(),  // 接 exu 的 bpfail, branch predict failed.
    //output
    .pc(),
    .inst(),
  );

  pipeline1 pipeline1_(
    //input
    .clk(),
    .rst(),
    .flush(),  // 接 exu 的 bpfail.
    .stall(),  // 接 lsu 的 stall 信号
    .if_pc(),
    .if_inst(),
    //output
    .ex_pc(),
    .ex_inst()
  );

  decode decode_(
    //input
    .inst(),          // pipeline1的ex_inst
    //output
    .rs1_enable(),   // 接regfile的rs1_enable
    .rs2_enable(),   // 接regfile的rs2_enable
    .rs1_addr(),     // 接regfile的rs1_addr
    .rs2_addr(),     // 接regfile的rs2_addr
    .alu_action(),   // 接exu的action指示alu进行的操作
    .op1_is_pc(),    // 接exu指示op1使用pc还是rs1
    .op2_is_imm(),   // 接exu指示op2使用imm32还是rs2
    .imm32()         // 将instrution里的分散imm位整合成32bit形状再输出
    .dst_enable(),   // 传入lsu阶段指示是否写回寄存器，由LSU阶段接回regfile的dst_enable。跳转和store置为0
    .dst_addr(),     // 传入lsu阶段指示是否写回寄存器，由LSU阶段接回regfile的dst_enable。跳转和store置为0
    .load_enable(),  // 传入lsu指示是否为load指令
    .load_type(),    // 传入lsu指示load的类型
    .store_enable(), // 传入lsu指示是否为store指令
    .store_type()    // 传入lsu指示store的类型
  );

  RegFile regfile_(
    //input
    .clk(),
    .rst(),
    .dst_enable(),
    .rs1_enable(),
    .rs2_enable(),
    .dst_addr(),
    .rs1_addr(),
    .rs2_addr(),
    .dst_data(),
    //output
    .rs1_data(),
    .rs2_data()
  );

  Forward forward_(
    //input
    .rs1_addr(),
    .rs2_addr(),
    .dst_addr(),    // 检测rs1或rs2是否为上一指令的目的寄存器相同，是则forward
    .rs1_data(),
    .rs2_data(),
    .dst_data(),
    .dst_enable(),  // 上一指令是否写入寄存器，跳转和store置0从而不forward
    //output
    .rs1(),         // 接exu的rs1提供forward后的操作数1
    .rs2(),         // 接exu的rs2提供forward后的操作数2
  );

  EXU exu_(
    //input
    .pc(),
    .imm32(),
    .rs1(),
    .rs2(),
    .op1_is_pc(),    // 指示op1使用pc还是rs1
    .op2_is_imm(),   // 指示op2使用imm32还是rs2
    .action(),       // 指示alu进行的操作
    //output
    .bpfail(),       // 传回lfu的bpfail表明branch predict是否错误
    .out()           // 传入pipline2
  );

  pipeline2 pipepine2_(
    //input
    .clk(),
    .rst(),
    .flush(),
    .stall(),
    .exu_alu_out(),
    .exu_load_enable(),
    .exu_load_type(),
    .exu_store_enable(),
    .exu_store_type(),
    .exu_store_data(),   // 接rs2作为store的数据
    .exu_dst_enable(),   // 该指令是否需要写回寄存器
    .exu_dst_addr(),     // 写回的地址
    //output
    .lsu_alu_out(),
    .lsu_load_enable(),
    .lsu_load_type(),
    .lsu_store_enable(),
    .lsu_store_type(),
    .lsu_store_data(),
    .lsu_dst_enable(),
    .lsu_dst_addr()
  );

  LSU lsu_(
    // TODO: AXI握手完成load/store
    //input
    .clk(),
    .rst(),
    .load_enable(),
    .load_type(),       // lb, lh, lw, lbu, lhu?
    .store_enable(),
    .store_type(),      // sb, sh, sw?
    .addr(),            // 接lsu_alu_out
    .store_data(),
    //output
    .stall(),           // 若load/store有效，则 stall ifu和两个流水线，直到l/s完成
    .load_data_valid(),
    .load_data()
  );

  // TODO: write back to regfile
  // assign regfile.dst_enable <- pipeline2.lsu_dst_enalbe
  // assign regfile.dst_addr   <- pipeline2.lsu_dst_addr
  // assign regfile.dst_data   <- pipeline2.lsu_load_enable & lsu.load_data_valid ?
  //                              (lsu.load_data : pipeline2.lsu_alu_out)

endmodule

