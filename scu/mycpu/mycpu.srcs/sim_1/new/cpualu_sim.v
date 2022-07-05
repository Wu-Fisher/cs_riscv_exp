`timescale 1ns / 1ps
module cpualu_sim(


);

wire[31:0] a;
wire[31:0] b;
wire[31:0] c;
wire [3:0]sel;

assign a =-4;
assign b =1;
assign sel = 7 ;

    alu  MALU(
    .alu_src_a(a),
    .alu_src_b(b),
    .alu_op(sel),
    .alu_out(c)

    );






endmodule