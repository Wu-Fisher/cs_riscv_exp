module al_interface(
    input clk_i,
    input[31:0] addr_al_i,
    input wen_al_i,
    input[31:0] wdata_al_i,

    output clk_led_o,
    output [31:0] rdata_led_o,
    output wire wen_led_o

);


assign clk_led_o = clk_i;
assign rdata_led_o = wdata_al_i;
assign wen_led_o = wen_al_i;



endmodule