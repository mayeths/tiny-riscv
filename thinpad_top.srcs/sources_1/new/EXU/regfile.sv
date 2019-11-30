module regfile(
  input  wire clk,
  input  wire rst,
  input  wire [4:0]  rs1_addr,
  input  wire [4:0]  rs2_addr,
  input  wire [4:0]  dst_addr,
  input  wire        dst_enable,
  input  wire [31:0] dst_data,
  input  wire [4:0]  jalr_addr,

  output wire [31:0] rs1_data,
  output wire [31:0] rs2_data,
  output wire [31:0] jalr_data
);

  reg [31:0] regs[31:1];

  ////////Read////////
  //NOTE: A useful hint is that we can't bypass dst_data to output when dst_addr == 5'b00000
  //      since dst_data may not equal 32'b0 all the time. But it's OK here since the first
  //      line(like rs1_addr == 5'b00000) takes effect first.
  assign rs1_data =
    (rs1_addr == 5'b00000) ? 32'b0 :
    (rs1_addr == dst_addr && dst_enable) ? dst_data :
    regs[rs1_addr];
  assign rs2_data =
    (rs2_addr == 5'b00000) ? 32'b0 :
    (rs2_addr == dst_addr && dst_enable) ? dst_data :
    regs[rs2_addr];
  assign jalr_data =
    (jalr_addr == 5'b00000) ? 32'b0 :
    (jalr_addr == dst_addr && dst_enable) ? dst_data :
    regs[jalr_addr];

  ////////Write////////
  integer i;
  always @(posedge clk) begin
    if (rst)
      for (i = 1; i < 32; i = i + 1)
         regs[i] <= 32'b0;
    else if (dst_enable && dst_addr != 5'b00000)
      regs[dst_addr] <= dst_data;
  end

endmodule
