// IFU (Intruction Fetch Unit): 取指单元
// Contains litebpu & minidecode submodule.
`include "../defines.sv";

module ifu(
  input  wire clk,
  input  wire rst,
  input  wire stall,
  input  wire bpfail,
  input  wire [31:0] jalr_data,

  output reg  [31:0] pc,
  output wire [31:0] inst,
  output wire [4:0]  jalr_addr
);

  reg [31:0] branch_backup;
  assign axi_addr = pc;
  assign inst     = axi_data;

  //info
  wire [6:0] opcode  = inst[6:0];
  wire is_jal        = opcode == `OP_JAL;
  wire is_jalr       = opcode == `OP_JAL;
  wire belong_branch = opcode == `OP_BRANCH;
  wire imm32_neg     = inst[31] == 1;
  wire do_branch     = belong_branch & imm32_neg;
  //bus
  assign jalr_addr = inst[11:7];
  wire [31:0] immJal = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0};
  wire [31:0] immBxx = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
  wire [31:0] pc4         = pc + 4;
  wire [31:0] branch_to   = pc + immBxx;

  always @(posedge clk)begin
    //从特殊到一般
    pc <=
      rst       ? 32'b0 :
      stall     ? pc :
      bpfail    ? branch_backup :
      is_jal    ? immJal :
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
