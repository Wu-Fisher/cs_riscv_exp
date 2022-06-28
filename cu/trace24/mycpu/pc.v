module pc(
    input clk,
    input rst_n,
    input [31:0] din,
    output reg[31:0] pc, 
    output reg[31:0] pcadd
);
reg rr;
always @(posedge clk) begin

    if(!rst_n) begin
        pc <= 0;
        pcadd <= 4;
        rr<=1;
    end
   
    else begin
        if(rr==1)
        begin
            pc <= 0;
            pcadd <= 4;
            rr<=0;
        end
        else
        begin
        pc <= din;
        pcadd <= din + 4;
        end
    end
end
    
endmodule
