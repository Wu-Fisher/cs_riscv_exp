module branch(
    input[31:0] data1,
    input[31:0] data2,

    output wire breq,
    output wire brlt,
    output wire brgt
);

wire[31:0] a ;
assign a = data1+(~data2)+1;

assign breq = a==0;
assign brlt = a[31]==1;
assign brgt = a[31]!=1;

endmodule