module regfile(
    input clk,
    input[4:0] raddr1,
    input[4:0] raddr2,

    output[4:0] rdata1,
    output[4:0] rdata2,

    input we,
    input[4:0] waddr,
    input[31:0] wdata

);
reg[31:0] reg_array[31:0];

always @(posedge clk) begin
    if(we)
    begin
      reg_array[waddr] <= wdata;
    end
    
end

assign rdata1 = (raddr1 == 0) ? 32'b0: reg_array[raddr1];
assign rdata2 = (raddr2 == 0) ? 32'b0: reg_array[raddr2];

endmodule
