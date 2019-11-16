// Standard pipeline
// 开启足量的in out接口，让vivado在实例化时把没用到的优化掉。
// TODO: 会优化掉吗？

module pipeline(
  input  wire clk, rst, flush, stall,
  input  wire [1023:0] in,

  output reg  [1023:0] out
);

  always @(posedge clk)
    if (rst | flush)
      out <= 1024'b0;
    else if (stall)
      out <= out;
    else
      out <= in;

endmodule
