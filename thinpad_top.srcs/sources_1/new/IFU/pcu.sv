// 平常pcu(pending collect unit)都不会有什么用，开始stall时，它就会累积stall期间的跳转信号
// stall结束后，使用pending的跳转地址送给pc_next，然后等一个周期就可以拿到新的指令了
module pcu(
  input wire clk,
  input wire stall,
  // 记录branch
  input wire go_branch,
  input wire [31:0] go_branch_op1,
  input wire [31:0] go_branch_op2,
  // 记录jalr
  input wire go_jalr,
  input wire [31:0] go_jalr_op1,
  input wire [31:0] go_jalr_op2,
  // 记录jal
  input wire is_jal,
  input wire [31:0] pc,
  input wire [31:0] immJal,

  output wire pending_valid,
  output wire [31:0] pending_op1,
  output wire [31:0] pending_op2
);

  reg pending_branch;
  reg pending_jalr;
  reg pending_jal;
  reg [31:0] pending_branch_op1;
  reg [31:0] pending_branch_op2;
  reg [31:0] pending_jalr_op1;
  reg [31:0] pending_jalr_op2;
  reg [31:0] pending_jal_op1;
  reg [31:0] pending_jal_op2;


  assign pending_valid = pending_branch | pending_jalr | pending_jal;
  assign pending_op1 =
    pending_branch ? pending_branch_op1 :
    pending_jalr   ? pending_jalr_op1 :
    pending_jal    ? pending_jal_op1 :
    32'b0;
  assign pending_op2 =
    pending_branch ? pending_branch_op2 :
    pending_jalr   ? pending_jalr_op2 :
    pending_jal    ? pending_jal_op2 :
    32'b0;

  always @(posedge clk) begin
    if (stall) begin
      // stall时，累积branch等跳转信号们。如，若stall内一直无go_branch, 则pending_branch累积为0。
      // 在stall内只要有新的go_branch trigger了，pending_branch就会一直挂1。同时更新pending_branch_op1和pending_branch_op2。
      pending_branch <= go_branch ? 1'b1 : pending_branch;
      pending_jalr   <= go_jalr   ? 1'b1 : pending_jalr;
      pending_jal    <= is_jal    ? 1'b1 : pending_jal;
      pending_branch_op1 <= go_branch ? go_branch_op1 : pending_branch_op1;
      pending_branch_op2 <= go_branch ? go_branch_op2 : pending_branch_op2;
      pending_jalr_op1   <= go_jalr   ? go_jalr_op1   : pending_jalr_op1;
      pending_jalr_op2   <= go_jalr   ? go_jalr_op2   : pending_jalr_op2;
      pending_jal_op1    <= is_jal    ? pc            : pending_jal_op1;
      pending_jal_op2    <= is_jal    ? immJal        : pending_jal_op2;
    end else begin
      // 清空pending信号们，使得pending_valid置0
      pending_branch <= 1'b0;
      pending_jalr   <= 1'b0;
      pending_jal    <= 1'b0;
      pending_branch_op1 <= 32'b0;
      pending_branch_op2 <= 32'b0;
      pending_jalr_op1   <= 32'b0;
      pending_jalr_op2   <= 32'b0;
      pending_jal_op1    <= 32'b0;
      pending_jal_op2    <= 32'b0;
    end
  end

endmodule