module pc(
    input clk,
    input rst_n,
    input [31:0] din,
    output reg[31:0] pc, 
    output reg[31:0] pcadd
);

always @(posedge clk) begin

    if(!rst_n) begin
        pc <= 0;
        pcadd <= 4;
    end
    else begin
        pc <= din;
        pcadd <= pc + 4;
    end
end
    
endmodule
