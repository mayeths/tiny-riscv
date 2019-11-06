module regfile(
  input  logic clk,
  //TODO: 需要rst完成启动时reg初始化吗？reg会初始化为x或z从而导致undefined吗？
  //input  logic rst,  
  input  logic[4:0]  rs1_addr,
  input  logic[4:0]  rs2_addr,
  input  logic[4:0]  dst_addr,
  input  logic dst_enable,
  input  logic[31:0] dst_data,
  output logic[31:0] rs1_data,
  output logic[31:0] rs2_data
  // accelerate LFU jalr
  input  logic[4:0]  jalr_addr,
  output logic[31:0] jalr_data,
);

  reg [31:0] regs[31:1];

  ////////Read////////
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
  // integer i;
  // always @(posedge clk) begin
  //   if (rst)
  //     for (i = 1; i < 32; )
  //   else if (dst_enable && dst_addr != 5'b00000)
  //     regs[dst_addr] <= dst_data;
  // end
  always @(posedge clk) begin
    if (dst_enable && dst_addr != 5'b00000)
      regs[dst_addr] <= dst_data;
  end

endmodule
