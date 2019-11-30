// BRU(Branch Result Unit): 分支结果单元
// 该单元输出branch指令的目的地给IFU
// IFU不预测分支，因为就一个周期冲刷的事

module BRU (
  input  wire [31:0] pc,
  input  wire [31:0] inst,
  input  wire is_beq,
  input  wire is_bne,
  input  wire is_blt,
  input  wire is_bge,
  input  wire is_bltu,
  input  wire is_bgeu,
  input  wire [31:0] alu_out,

  output wire go_branch,
  output wire [31:0] go_branch_op1,
  output wire [31:0] go_branch_op2
);

  ////////
  (* dont_touch = "true" *) wire [31:0] immBxx = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
  (* dont_touch = "true" *) wire equal        = alu_out == 32'b0;  // alu sub
  (* dont_touch = "true" *) wire no_equal     = !equal;            // alu sub
  (* dont_touch = "true" *) wire less_than    = alu_out == 32'b1;  // alu slt
  (* dont_touch = "true" *) wire great_equal  = !less_than;
  (* dont_touch = "true" *) wire uless_than   = alu_out == 32'b1;  // alu sltu
  (* dont_touch = "true" *) wire ugreat_equal = !uless_than;

  assign go_branch =
    is_beq & equal       | is_bne  & no_equal    |
    is_blt & less_than   | is_bltu & uless_than  |
    is_bge & great_equal | is_bgeu & ugreat_equal;
  assign go_branch_op1 = pc;
  assign go_branch_op2 = immBxx;

  ////////

endmodule