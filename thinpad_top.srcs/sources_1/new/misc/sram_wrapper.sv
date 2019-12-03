// 利用timer实现sram的访问response。ok为1的那个周期表示请求成功。
// 利用busy信号可以stall你的其他模块，ok只trigger一个周期不太好用
module sram_wrapper #(parameter DELAY_COUNT = 1)(
  input  wire clk,
  // assign to biu
  input  wire ce,
  input  wire oe,
  input  wire we,
  input  wire [3:0]  be,
  input  wire [19:0] addr,
  input  wire [31:0] wdata,
  output wire [31:0] rdata,
  output wire        busy,
  output wire        ok,
  // assign to ram
  inout  wire [31:0] ram_data,
  output wire [19:0] ram_addr,
  output wire [3:0]  ram_be_n,
  output wire        ram_ce_n,
  output wire        ram_oe_n,
  output wire        ram_we_n
);

  // reg保持住请求现场
  reg        hold_ce;
  reg        hold_oe;
  reg        hold_we;
  reg [3:0]  hold_be;
  reg [31:0] hold_addr;
  reg [31:0] hold_wdata;

  timer #(DELAY_COUNT)
  timer_(
    .clk(clk),
    .start_signal(req_valid),
    .busy(busy),
    .timeout(ok)
  );

  always @(posedge clk) begin
    if (req_valid & !busy) begin  // 开始处理请求，保存现场
      hold_ce    <= ce;
      hold_oe    <= oe;
      hold_we    <= we;
      hold_be    <= be;
      hold_addr  <= addr;
      hold_wdata <= wdata;
    end else if (ok) begin        // 完成请求，清理现场
      hold_ce    <= 1'b0;
      hold_oe    <= 1'b0;
      hold_we    <= 1'b0;
      hold_be    <= 4'b0;
      hold_addr  <= 32'b0;
      hold_wdata <= 32'b0;
    end else begin                // 处理过程中和完成后不用动这些寄存器
      hold_ce    <= hold_ce;
      hold_oe    <= hold_oe;
      hold_we    <= hold_we;
      hold_be    <= hold_be;
      hold_addr  <= hold_addr;
      hold_wdata <= hold_wdata;
    end
  end

  //用hold住的值一直怼sram的脸
  assign rdata     =  hold_oe ? ram_data   : 32'b0;
  assign ram_data  =  hold_we ? hold_wdata : 32'bz;
  assign ram_addr  =  hold_addr;
  assign ram_be_n  = ~hold_be;
  assign ram_ce_n  = ~hold_ce;
  assign ram_oe_n  = ~hold_oe;
  assign ram_we_n  = ~hold_we;

endmodule
