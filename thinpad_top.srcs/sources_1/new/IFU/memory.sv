`include "../defines.sv"

module InstructionMemory(
  input  wire clk,
  input  wire rst,
  input  wire        data_req,
  output wire        data_rvalid,
  input  wire [31:0] data_addr,
  output wire [31:0] data_rdata
);

    wire [31:0] Address;
    reg [31:0] Instruction;
    assign data_rvalid = 1'b1;
    assign data_rdata = Instruction;

    assign Address = data_addr;
    always @(posedge clk)
        if (rst)
            Instruction <= 32'h00000000;
        else case (Address)
32'h80000000: Instruction <= 32'b0000_0000_1111_1111_0001_0000_1011_0111;	//00ff10b7
32'h80000004: Instruction <= 32'b1111_0000_0000_0000_1000_0000_1001_0011;	//f0008093
32'h80000008: Instruction <= 32'b1111_0000_1111_0000_1100_0111_0001_0011;	//f0f0c713
32'h8000000c: Instruction <= 32'b1111_1111_0000_0000_1111_1110_1011_0111;	//ff00feb7
32'h80000010: Instruction <= 32'b0000_0000_1111_1110_1000_1110_1001_0011;	//00fe8e93
32'h80000014: Instruction <= 32'b0000_0000_0010_0000_0000_0001_1001_0011;	//00200193
32'h80000018: Instruction <= 32'b0001_1101_1101_0111_0001_0110_0110_0011;	//1dd71663

            default: Instruction <= 32'hffff_ffff;
        endcase
endmodule
