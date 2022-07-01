module lights(
    input [31:0] data_i,
    output [23:0] data_o,

    input wire en,
    input wire clk,
    input wire rst_n
);

reg [31:0] data_reg;

assign data_o = data_reg[23:0];

always @(posedge clk) begin
    if (!rst_n) begin
        data_reg <= 0;
    end else begin
        if (en == 1) begin
            data_reg <= data_i;
        end
    end
end
    



endmodule