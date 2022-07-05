module alu(
    input[31:0] alu_src_a,
    input[31:0] alu_src_b,
    input[3:0] alu_op,

    output[31:0] alu_out
);

wire op_add;
wire op_sub;
wire op_and;
wire op_or;
wire op_xor;
wire op_sll;
wire op_srl;
wire op_sra;
wire op_lui;

assign op_add = alu_op == 0;
assign op_sub = alu_op == 1;
assign op_and = alu_op == 2;
assign op_or = alu_op == 3;
assign op_xor = alu_op == 4;
assign op_sll = alu_op == 5;
assign op_srl = alu_op == 6;
assign op_sra = alu_op == 7;
assign op_lui = alu_op == 8;

wire[31:0] add_sub_result;
wire[31:0] and_result;
wire[31:0] or_result;
wire[31:0] xor_result;
wire[31:0] sll_result;
wire[31:0] srl_result;
wire[31:0] sra_result;
wire[31:0] lui_result;

assign lui_result = alu_src_b;

assign and_result = alu_src_a & alu_src_b;
assign or_result = alu_src_a | alu_src_b;
assign xor_result = alu_src_a ^ alu_src_b;

wire [31:0] adder_a;
wire [31:0] adder_b;
wire adder_cin;
wire [31:0]adder_result;
wire adder_cout;

assign adder_a = alu_src_a;
assign adder_b = (op_sub)? ~alu_src_b : alu_src_b;
assign adder_cin = (op_sub)? 1 : 0;
assign {adder_cout, adder_result} = adder_a+adder_b+adder_cin;

assign add_sub_result = adder_result;

assign sll_result = alu_src_a << (alu_src_b[4:0]);
assign srl_result = alu_src_a >> (alu_src_b[4:0]);
assign sra_result = ($signed(alu_src_a)) >>> (alu_src_b[4:0]);

assign alu_out=({32{op_add|op_sub}}&add_sub_result)
|({32{op_and}}&and_result)
|({32{op_or}}&or_result)
|({32{op_xor}}&xor_result)
|({32{op_sll}}&sll_result)
|({32{op_srl}}&srl_result)
|({32{op_sra}}&sra_result)
|({32{op_lui}}&lui_result)
;

 

endmodule