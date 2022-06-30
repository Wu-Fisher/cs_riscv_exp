// module pipline #(
//     parameter WIDTH = 100
// )
// (
//     input clk,
//     input rst,
//     input [WIDTH-1:0] datain,
//     input validin, // 上一个阶段是否传来有效数据
//     input allowout, // 下一个阶段是否发来阻塞信号

//     output validout, // 传给下一阶段数据是否有效
//     output allowin, // 是否允许下一个阶段继续往后传数据

//     output reg[WIDTH-1:0] dataout
// );

// wire pipe_ready_go; // 本阶段是是否操作完毕，或者可以向下走
// assign pipe_ready_go=1; // todo

// reg pipe_data_valid; // 本阶段数据是否有效

// assign allowin= (pipe_ready_go && allowout) || !pipe_data_valid;// 是否允许下一个阶段流水器输入到本阶段来

// assign validout= pipe_ready_go && pipe_data_valid; //传给下一个阶段的流水器是否有效

// always @(posedge clk) begin
//     if(rst)begin
//       pipe_data_valid <= 0;
//     end
//     else if(allowin) begin
//         // 如果允许下一个进来，如果下一个进来的是无效数据，则本位也是无效
//         pipe_data_valid <= validin;
//     end

//     if(validin && allowin)
//     begin
//         // 只有进入有效数据，才允许更新当前流水线寄存器
//         dataout <= datain;
//     end

// end
    






// endmodule