module timer #(parameter DELAY = 1)(
  input  wire clk,
  input  wire start_signal,
  output wire busy,
  output wire timeout
);

  // 用法：timeout会在DELAY个周期之后为1。注意一旦开始就无法停止。
  // 由于是onehot实现，不建议太大的值，尽量32以下。

  reg [DELAY - 1:0] timer;
  assign timeout = timer[DELAY - 1]; //最高位为1说明timeout
  assign busy    = timer != 0 & !timeout;

  always @(posedge clk) begin
    if (start_signal & !busy) begin
      timer <= 1;
    end else if (!timeout) begin
      timer <= timer << 1;
    end else begin
      timer <= 0;
    end
  end

endmodule