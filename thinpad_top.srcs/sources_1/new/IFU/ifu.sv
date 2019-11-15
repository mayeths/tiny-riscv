// IFU (Intruction Fetch Unit): 取指单元
// Contains litebpu & minidecode submodule.
`include "../defines.sv"

module ifu(

  //TODO: add AXI here
  //make stall == 1 if AXI is busy
  LFU_AXI
  [31:0]axi_addr,
  [31:0]axi_data,

  input  logic clk,
  input  logic rst,
  input  logic stall,
  input  logic bpfail,
  output reg  [31:0] pc,
  output logic[31:0] inst,
  //jalr's rd, from regfile
  input  logic[4:0]  jalr_addr,
  output logic[31:0] jalr_data
);

  reg [31:0] branch_backup;
  assign axi_addr = pc;
  assign inst     = axi_data;

  //info
  logic opcode        = inst[6:0];
  logic is_jal        = opcode == `OP_JAL;
  logic is_jalr       = opcode == `OP_JAL;
  logic belong_branch = opcode == `OP_BRANCH;
  logic imm32_neg     = inst[31] == 1;
  logic do_branch     = belong_branch & imm32_neg;
  //bus
  assign jalr_addr = inst[11:7];
  assign pc4       = pc + 4;
  logic [31:0] imm32_Jtype = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0};
  logic [31:0] imm32_Btype = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
  logic [31:0] branch_to   = imm32_Btype + pc4;

  always @(posedge clk)begin
    //从特殊到一般
    pc <=
      rst       ? 32'b0 :
      stall     ? pc :
      bpfail    ? branch_backup :
      is_jal    ? imm32_Jtype :
      is_jalr   ? jalr_data :
      do_branch ? branch_to :
                  pc4;

    branch_backup <= 
      rst       ? 32'b0 :
      stall     ? branch_backup :
      do_branch ? pc4 :
                  branch_to;
  end

endmodule
