// IFU (Intruction Fetch Unit): 取指单元
`include "../defines.sv"

module ifu(
  input  wire clk,
  input  wire rst,
  input  wire stall,
  output reg  [31:0] pc,
  output reg  [31:0] inst,

  //Assign to system bus
  input  wire ibus_valid,
  input  wire [31:0] ibus_data_i,
  output wire [31:0] ibus_addr,
  output wire ibus_rd,

  //Assign to regfile to get jalr target address.
  input  wire [31:0] jalr_data,
  output wire [4:0]  jalr_addr,

  //Assign to BRU to get branch target
  input  wire go_branch,
  input  wire [31:0] go_branch_op1,
  input  wire [31:0] go_branch_op2
);

  // IFU遇到jal或jalr指令，直接在内部完成跳转
  // IFU遇到branch或mret等指令，不作为，后面的部件通知go_trap, from_trap或者go_branch再跳转

  ////// Control signals
  wire is_jal  = inst[6:0] == `OP_JAL;
  wire is_jalr = inst[6:0] == `OP_JALR;
  wire [31:0] immJal  = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0};
  wire [31:0] immJalr = {{21{inst[31]}}, inst[30:20]};
  ////// Bus
  // PC privilege: trap > branch > jal | jalr
  wire [31:0] pc_next_op1 =
    go_branch ? go_branch_op1 :  // pc of EX phase
    is_jal    ? pc :             // pc of IF phase
    is_jalr   ? jalr_data :      // rs1 of jalr instruction
    pc;                          // Normal
  wire [31:0] pc_next_op2 =
    go_branch ? go_branch_op2 :  // B-type imm32
    is_jal    ? immJal :         // J-type imm32
    is_jalr   ? immJalr :        // I-type imm32
    32'h4;                       // Normal
  wire [31:0] pc_next = pc_next_op1 + pc_next_op2;

  assign ibus_addr = pc_next;
  assign ibus_rd = 1'b1;
  assign jalr_addr = inst[11:7];

  always @(posedge clk)begin
    //PC从特殊到一般
    pc <=
      rst   ? 32'h8000_0000 :
      stall | !ibus_valid ? pc :
      pc_next;
    inst <= ibus_valid ? ibus_data_i : `INST_NOP;
  end

endmodule
