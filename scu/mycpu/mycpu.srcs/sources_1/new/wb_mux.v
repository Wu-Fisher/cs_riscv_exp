module wb_mux
(
    input [31:0] memdata,
    input [31:0] pcaddr,
    input [31:0] aludata,
    input [1:0] WBsel,
    output [31:0] data
);
    wire sel_alu;
    wire sel_mem;
    wire sel_pc;


    assign sel_alu = (WBsel == 0);
    assign sel_mem = (WBsel == 1);
    assign sel_pc = (WBsel == 2);


    assign data= ({32{sel_alu}} & aludata)|
                ({32{sel_mem}} & memdata)|
                ({32{sel_pc}} & pcaddr);


endmodule