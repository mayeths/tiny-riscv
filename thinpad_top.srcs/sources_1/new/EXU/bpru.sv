// BPRU(Branch Predict Result Unit): 分支预测结果单元
// 该单元输出IFU的分支预测是否失败
// IFU使用了简单的静态分支预测：后跳（PC减）跳，前跳（PC增）不跳

module BPRU (
  input  wire is_beq,
  input  wire is_bne,
  input  wire is_blt,
  input  wire is_bge,
  input  wire is_bltu,
  input  wire is_bgeu,
  input  wire [31:0] alu_out,
  input  wire imm32_neg,

  output wire bpfail
);

  ////////
  wire alu_out_0 = (alu_out == 32'b0);
  wire equal        =  alu_out_0;  // alu sub
  wire no_equal     = !alu_out_0;  // alu sub
  wire less_than    =  alu_out_0;  // alu slt
  wire great_equal  = !alu_out_0;  // alu slt
  wire uless_than   =  alu_out_0;  // alu sltu
  wire ugreat_equal = !alu_out_0;  // alu sltu
  wire did_jump     =  imm32_neg;
  wire did_pc4      = !imm32_neg;

  ////////
  // TODO: please test this module.
  assign bpfail = 1'b0
    | (is_beq  & (equal      & did_pc4  | no_equal     & did_jump))
    | (is_bne  & (equal      & did_jump | no_equal     & did_pc4 ))
    | (is_blt  & (less_than  & did_pc4  | great_equal  & did_jump))
    | (is_bge  & (less_than  & did_jump | great_equal  & did_pc4 ))
    | (is_bltu & (uless_than & did_pc4  | ugreat_equal & did_jump))
    | (is_bgeu & (uless_than & did_jump | ugreat_equal & did_pc4 ))
    ;

endmodule