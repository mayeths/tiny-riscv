// BRU(Branch Result Unit): 分支结果单元
// 该单元输出branch指令的目的地给IFU
// IFU不预测分支，因为就一个周期冲刷的事

module BRU (
  input  wire pc,
  input  wire inst,
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
  wire [31:0] immBxx = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
  wire alu_out_0 = (alu_out == 32'b0);
  wire equal        =  alu_out_0;  // alu sub
  wire no_equal     = !alu_out_0;  // alu sub
  wire less_than    =  alu_out_0;  // alu slt
  wire great_equal  = !alu_out_0;  // alu slt
  wire uless_than   =  alu_out_0;  // alu sltu
  wire ugreat_equal = !alu_out_0;  // alu sltu
  wire do_branch =
    is_beq & equal       | is_bne  & no_equal    |
    is_blt & less_than   | is_bltu & uless_than  |
    is_bge & great_equal | is_bgeu & ugreat_equal;

  ////////
  assign go_branch = is_beq | is_bne | is_blt | is_bltu | is_bge | is_bgeu;
  assign go_branch_op1 = pc;
  assign go_branch_op2 = do_branch ? immBxx : 32'h4;

endmodule