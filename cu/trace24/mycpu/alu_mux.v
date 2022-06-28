module alu_mux(
    input [31:0] a,
    input [31:0] b,
    input sel_i,
    output [31:0] c


);

    assign c = sel_i ? b : a;

endmodule