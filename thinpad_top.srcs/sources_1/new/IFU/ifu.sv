// IFU (Intruction Fetch Unit): 取指单元
`include "../defines.sv"

module ifu #(parameter ORIGIN_ADDR = 32'h8000_0000)(
  input  wire clk,
  input  wire rst,
  input  wire stall,
  output reg  [31:0] pc,
  output reg  [31:0] inst,

  //Assign to biu
  output wire ibus_ce,
  output wire [31:0] ibus_addr,
  input  wire [31:0] ibus_rdata,

  input wire go_jalr,
  input wire [31:0] go_jalr_op1,
  input wire [31:0] go_jalr_op2,

  //Assign to BRU to get branch target
  input  wire go_branch,
  input  wire [31:0] go_branch_op1,
  input  wire [31:0] go_branch_op2
);

  (* dont_touch = "true" *) wire is_jal  = inst[6:0] == `OP_JAL;
  (* dont_touch = "true" *) wire [31:0] immJal  = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0};


  //平时不工作，但stall期间会自动收集跳转信号们的 pending collect unit。
  pcu u_pcu(
  	.clk           (clk           ),
    .stall         (stall         ),
    // 记录branch
    .go_branch     (go_branch     ),
    .go_branch_op1 (go_branch_op1 ),
    .go_branch_op2 (go_branch_op2 ),
    // 记录jalr
    .go_jalr       (go_jalr       ),
    .go_jalr_op1   (go_jalr_op1   ),
    .go_jalr_op2   (go_jalr_op2   ),
    // 记录jal
    .is_jal        (is_jal        ),
    .pc            (pc            ),
    .immJal        (immJal        ),
    // output
    .pending_valid (pending_valid ),
    .pending_op1   (pending_op1   ),
    .pending_op2   (pending_op2   )
  );

  // PC privilege: pending > branch|jalr > jal
  (* dont_touch = "true" *) wire [31:0] pc_next_op1 =
    pending_valid ? pending_op1 :
    go_branch     ? go_branch_op1 :  // pc of EX phase
    go_jalr       ? go_jalr_op1 :    // pc of EX phase
    is_jal        ? pc :             // pc of IF phase
    pc;                              // Normal
  (* dont_touch = "true" *) wire [31:0] pc_next_op2 =
    pending_valid ? pending_op2 :
    go_branch     ? go_branch_op2 :  // B-type imm32
    go_jalr       ? go_jalr_op2 :    // 32'b0
    is_jal        ? immJal :         // J-type imm32
    32'h4;                           // Normal
  (* dont_touch = "true" *) wire [31:0] pc_next = pc_next_op1 + pc_next_op2;

  assign ibus_addr = pc_next;
  assign ibus_ce   = 1'b1;

  always @(posedge clk) begin
    //从特殊到一般
    if (rst) begin
      inst <= `INST_NOP;
      pc   <= ORIGIN_ADDR - 4;
    end else if (stall) begin
      // stall时，pc_next的请求被忽略了。因而此时的inst是无效的inst
      inst <= `INST_NOP;
      pc   <= pc;
    end else begin
      // 如果不是stall，但pending_valid，则需等待一个周期让bus重新处理pc_next的请求
      inst <= pending_valid ? `INST_NOP : ibus_rdata;
      pc   <= pending_valid ? pc        : pc_next;
    end
  end

endmodule
