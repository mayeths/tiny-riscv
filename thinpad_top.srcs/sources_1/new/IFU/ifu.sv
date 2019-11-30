// IFU (Intruction Fetch Unit): 取指单元
`include "../defines.sv"

module ifu(
  input  wire clk,
  input  wire rst,
  input  wire stall,
  output reg  [31:0] pc,
  output reg  [31:0] inst,

  //Assign to system bus
  output wire        data_req,
  input  wire        data_rvalid,
  output wire [31:0] data_addr,
  input  wire [31:0] data_rdata,

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
  (* dont_touch = "true" *) wire is_jal  = inst[6:0] == `OP_JAL;
  (* dont_touch = "true" *) wire is_jalr = inst[6:0] == `OP_JALR;
  (* dont_touch = "true" *) wire [31:0] immJal  = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0};
  (* dont_touch = "true" *) wire [31:0] immJalr = {{21{inst[31]}}, inst[30:20]};
  ////// Bus
  // PC privilege: trap > branch > jal | jalr
  (* dont_touch = "true" *) wire [31:0] pc_next_op1 =
    go_branch ? go_branch_op1 :  // pc of EX phase
    is_jal    ? pc :             // pc of IF phase
    is_jalr   ? jalr_data :      // rs1 of jalr instruction
    pc;                          // Normal
  (* dont_touch = "true" *) wire [31:0] pc_next_op2 =
    go_branch ? go_branch_op2 :  // B-type imm32
    is_jal    ? immJal :         // J-type imm32
    is_jalr   ? immJalr :        // I-type imm32
    32'h4;                       // Normal
  (* dont_touch = "true" *) wire [31:0] pc_next = pc_next_op1 + pc_next_op2;

  assign jalr_addr = inst[19:15];
  assign data_req = 1'b1;
  assign data_addr = pc_next;

  always @(posedge clk)begin
    //PC从特殊到一般
    pc <=
      rst   ? 32'h8000_0000 :
      (!data_rvalid) ? pc :
      pc_next;
    inst <= data_rvalid ? data_rdata : `INST_NOP;
  end

endmodule
