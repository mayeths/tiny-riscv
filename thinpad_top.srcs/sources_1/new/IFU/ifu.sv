// IFU (Intruction Fetch Unit): 取指单元
`include "../defines.sv"

module ifu(
  input  wire clk,
  input  wire rst,
  input  wire stall,
  input  wire bpfail,
  output reg  [31:0] pc,
  output wire [31:0] inst,

  //Assign to regfile to get jalr target address.
  input  wire [31:0] jalr_data,
  output wire [4:0]  jalr_addr,

  //Assign to BIU to fetch instruction from sram.
  input  wire sram_valid,
  input  wire [31:0] sram_data,
  output wire [31:0] sram_addr
);

  wire [31:0] pc_next;
  wire [31:0] pc_backup;
  reg  [31:0] backup_reg;

  pcgu pcgu_(
    //input
  	.inst      (inst      ),
    .pc        (pc        ),
    .jalr_data (jalr_data ),
    //output
    .pc_next   (pc_next   ),
    .pc_backup (pc_backup )
  );

  assign sram_addr = pc_next;
  assign inst = sram_valid ? sram_data : `INST_NOP;
  assign jalr_addr = inst[11:7];

  always @(posedge clk)begin
    //从特殊到一般
    pc <=
      rst                 ? 32'b0 :
      stall | !sram_valid ? pc :
      bpfail              ? backup_reg :
                            pc_next;
    backup_reg <= pc_backup;
  end

endmodule
