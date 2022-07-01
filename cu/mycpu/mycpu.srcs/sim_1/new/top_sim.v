module top_sim (
    
);


reg  rst_n;
reg  clk;
reg[23:0] switch;
initial begin
    rst_n=1;
    clk=1;
    switch=24'b111_00000_00000110_00001000;
    # 10000000 rst_n=0;


end



always #2500 clk=!clk;

wire[7:0] led_ens;
wire[7:0] led_dat;
wire[23:0] lights;

top u_top(
    .clk_i     (clk     ),
    .rst_i     (rst_n     ),
    .led0_en_o (led_ens[0] ),
    .led1_en_o (led_ens[1] ),
    .led2_en_o (led_ens[2] ),
    .led3_en_o (led_ens[3] ),
    .led4_en_o (led_ens[4]),
    .led5_en_o (led_ens[5] ),
    .led6_en_o (led_ens[6] ),
    .led7_en_o (led_ens[7] ),
    .led_ca_o  (led_dat[0]   ),
    .led_cb_o  (led_dat[1]   ),
    .led_cc_o  (led_dat[2]   ),
    .led_cd_o  (led_dat[3]   ),
    .led_ce_o  (led_dat[4]   ),
    .led_cf_o  (led_dat[5]   ),
    .led_cg_o  (led_dat[6]   ),
    .led_dp_o  (led_dat[7]   ),
    .switch_i(switch),
    .lights_o(lights)
);


endmodule //top_sim