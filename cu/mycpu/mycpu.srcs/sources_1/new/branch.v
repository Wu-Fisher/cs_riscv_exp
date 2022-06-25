module branch(
    input[31:0] data1,
    input[31:0] data2,

    output wire breq,
    output wire brlt,
    output wire brgt
);

assign breq = data1 == data2;
assign brlt = data1 < data2;
assign brgt = data1 > data2;

endmodule