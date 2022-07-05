module led_sim();



reg rst_n;
reg clk;
wire[7:0] led_en;
wire[7:0] led_ss;
wire[31:0] led_data_i;

assign led_data_i=4;

initial begin
    rst_n=0;
    clk=1;
    # 100 rst_n=1;


end

always #5 clk=!clk;



led_display 
#(
    .TIMES (10)
)
u_led_display(
    .led_data_i (led_data_i ),
    .clk        (clk        ),
    .rst_n      (rst_n      ),
    .led0_en_o  (led_en[0]  ),
    .led1_en_o  (led_en[1] ),
    .led2_en_o  (led_en[2]  ),
    .led3_en_o  (led_en[3]  ),
    .led4_en_o  (led_en[4]  ),
    .led5_en_o  (led_en[5]  ),
    .led6_en_o  (led_en[6]  ),
    .led7_en_o  (led_en[7] ),
    .led_ca_o   (led_ss[0]   ),
    .led_cb_o   (led_ss[1]   ),
    .led_cc_o   (led_ss[2]   ),
    .led_cd_o   (led_ss[3]   ),
    .led_ce_o   (led_ss[4]   ),
    .led_cf_o   (led_ss[5]   ),
    .led_cg_o   (led_ss[6]   ),
    .led_dp_o   (led_ss[7]   )
);


endmodule