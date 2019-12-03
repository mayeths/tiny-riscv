// forwardUnit: 完成数据forward功能

// 本质问题是数据的更新源与数据的使用隔了周期
// 普通reg数据的更新源：ALU计算，读存储器
// 我们的三级流水线为什么没有forward问题呢？
// 对于ALU计算这个更新源，下一个周期就可以更新到reg里，所以下一个周期读reg是最新的；
// 对于读存储器这个更新源，它这个周期就已经更新到reg里了(只要数据在了WB阶段就表示reg数据是最新的了，而我们的WB是和读存储器合为了一个阶段)

// 五级[IF, ID, EX, MEM, WB]流水线，MEM阶段为EX的neg_1，EX, MEM阶段为ID的neg_1和neg_2。
// 优先使用neg_1的结果数据，因为这是最新的；其次用neg_2的结果数据；最后是普通的regfile数据。
// 例如以下指令流：
// 1.EX使用neg_1的结果
// - lw   $15, 0($20)  运行到MEM阶段，存储器返回了位于$20指示的地址的数据
// - addi $5, $15, $16 运行到EX阶段，但ID提供的数据不是最新的，因为最新的在MEM阶段没写回
//   此时就需要把处于MEM(neg_1)的最新$15数据forward给EX；或者中插1气泡
// 2.ID使用neg_1的结果
// - addi $15, $20, $21 运行到EX阶段，ALU在这里刚算出最新的$15结果，还没写回
// - addi $5, $15, $16  运行到ID阶段，正在读取$15
//   此时就需要把处于EX(neg_1)的最新$15数据forward给ID
//   此时就需要把EX(neg_1)的数据forward回来，因为ID读取的寄存器地址5'b01111和EX要写回的5'b011111
//   相同，所以wrapper就把最新的EX数据bypass给ID的读取
// 3.ID使用neg_2的结果
// - addi $15, $20, $21 运行到MEM阶段，还没写回
// - addi $1,  $2,  $3  运行到EX阶段
// - addi $5, $15, $16  运行到ID阶段，正在读取$15
//   此时就需要把MEM(neg_2)的数据forward回来。

module forward(
  input wire clk,
  input wire rst,
  input wire [4:0]  rs1_addr,
  input wire [4:0]  rs2_addr,
  input wire [31:0] rs1_data,
  input wire [31:0] rs2_data,
  input wire [4:0]  neg_wb_addr,
  input wire [31:0] neg_wb_data,
  input wire        neg_wb_en,

  output wire [31:0] real_rs1_data,
  output wire [31:0] real_rs2_data
);
  // 在WB阶段的数据能保证ID阶段的数据是最新的，因为此时EX和ID合在一起
  assign real_rs1_data =
    (rs1_addr != 5'b0 & rs1_addr == neg_wb_addr & neg_wb_en) ? neg_wb_data :
    rs1_data;
  assign real_rs2_data =
    (rs2_addr != 5'b0 & rs2_addr == neg_wb_addr & neg_wb_en) ? neg_wb_data :
    rs2_data;

endmodule