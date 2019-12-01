// IFU (Intruction Fetch Unit): 取指单元
`include "../defines.sv"

module ifu(
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

  // IFU遇到jal或jalr指令，直接在内部完成跳转
  // IFU遇到branch或mret等指令，不作为，后面的部件通知go_trap, from_trap或者go_branch再跳转

  ////// Control signals
  (* dont_touch = "true" *) wire is_jal  = inst[6:0] == `OP_JAL;
  (* dont_touch = "true" *) wire [31:0] immJal  = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0};
  ////// Bus
  // PC privilege: trap > branch > jal | jalr
  (* dont_touch = "true" *) wire [31:0] pc_next_op1 =
    go_branch ? go_branch_op1 :  // pc of EX phase
    stall     ? pc :
    go_jalr   ? go_jalr_op1 :    // pc of EX phase
    is_jal    ? pc :             // pc of IF phase
    pc;                          // Normal
  (* dont_touch = "true" *) wire [31:0] pc_next_op2 =
    go_branch ? go_branch_op2 :  // B-type imm32
    stall     ? 32'b0 : 
    go_jalr   ? go_jalr_op2 :    // pc of EX phase
    is_jal    ? immJal :         // J-type imm32
    rst       ? 32'h0 :          // reset
    32'h4;                       // Normal
  (* dont_touch = "true" *) wire [31:0] pc_next = pc_next_op1 + pc_next_op2;

  assign jalr_addr = inst[19:15];

  assign ibus_ce = 1'b1;
  assign ibus_addr = rst ? 32'h8000_0000 : pc_next;

  always @(posedge clk) begin
    //PC从特殊到一般
    pc <=
      rst   ? 32'h8000_0000 :
      pc_next;
    
    inst <= stall ? (is_jal ? inst : `INST_NOP) : ibus_rdata;
  end

endmodule
