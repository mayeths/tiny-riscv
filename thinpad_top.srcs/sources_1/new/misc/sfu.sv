// SFU(Stall Flush Unit): 阻塞冲刷单元
// pipeline的阻塞和冲刷信号都由这个单元生成
// - 什么是stall?
//   一个阶段的工作实在没法在一个周期内完成，则它左边的流水线都要先stall住。
//   例如，访存操作，多周期指令（乘除法）
// - 什么是flush?
//   一个阶段的工作出现了error，则它左边的流水线都要flush掉（无效化），最左端的IFU重新启动
//   例如，除0错误。则浮点运算单元左边的都不要再执行(如果它们执行下去并写回寄存器，有可能也是除零错之类的但放任它们写回了)，交由TrapHandleUnit着手。
//   CPU全局(即无法说说明白属于哪一个阶段)出现了error，则所有流水线都要flush掉
//   例如，interrupt。不能认为可以让他们正在流的指令继续流完。因为它们有可能异常(除零错)，写回错的。

module sfu(
  input  wire phase1_busy,       input  wire phase1_error,
  input  wire phase2_busy,       input  wire phase2_error,
  input  wire phase3_busy,       input  wire phase3_error,
  input  wire phase4_busy,       input  wire phase4_error,
  input  wire global_busy,       input  wire global_error,
  output wire pipeline1_stall,   output wire pipeline1_flush,
  output wire pipeline2_stall,   output wire pipeline2_flush,
  output wire pipeline3_stall,   output wire pipeline3_flush,
  output wire pipeline4_stall,   output wire pipeline4_flush
);

  //NOTE: flush的源一定要能让stall的源也消失。否则，flush结束还是会stall住。
  //例如多周期乘法器正在stall，trap发生应该能令乘法器rst一下，清除它的stall。
  // phase x busy,  pipeline_(_ <= x) stall
  assign pipeline1_stall = phase1_busy  | pipeline2_stall;
  assign pipeline2_stall = phase2_busy  | pipeline3_stall;
  assign pipeline3_stall = phase3_busy  | pipeline4_stall;
  assign pipeline4_stall = phase4_busy  | global_busy;

  // phase x error, pipeline_(_ <= x) flush
  assign pipeline1_flush = phase1_error | global_error;
  assign pipeline2_flush = phase2_error | global_error;
  assign pipeline3_flush = phase3_error | global_error;
  assign pipeline4_flush = phase4_error | global_error;

endmodule
