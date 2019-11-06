// EXU: 执行单元
// 所有执行有关的子单元均置在该模块下。
// 当前只有ALU，以后可能还有MDU(Mul-Div Unit)，FPU(Floating Point Unit)以支持M和F指令拓展
// 届时，还需要一个Dispatch Unit.

module exu(
  input logic[31:0] rs1,
  input logic[31:0] rs2,
  input logic[31:0] pc4,
  input logic[31:0] imm32,
  input logic[3:0]  alu_action,
  input logic op1_is_pc4,
  input logic op2_is_imm,
  input logic[31:0] out
);

  logic[31:0] in1 = op1_is_pc4 ? pc4   : rs1;
  logic[31:0] in2 = op2_is_imm ? imm32 : rs1;

  ALU alu_(
    .in1(in1), .in2(in2), .action(alu_action), .out(out)
  );

endmodule
