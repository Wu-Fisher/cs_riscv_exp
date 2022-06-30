module led_display #
(
    parameter TIMES = 10
)
(
    input[31:0] led_data_i,
    input clk,
    input rst_n,
    input en,

    output wire led0_en_o,
    output wire led1_en_o,
    output wire led2_en_o,
    output wire led3_en_o,
    output wire led4_en_o,
    output wire led5_en_o,
    output wire led6_en_o,
    output wire led7_en_o,
//    output reg led_ca_o,
//    output reg led_cb_o,
//    output reg led_cc_o,
//    output reg led_cd_o,
//    output reg led_ce_o,
//    output reg led_cf_o,
//    output reg led_cg_o,
//    output reg led_dp_o
    output wire led_ca_o,
    output wire led_cb_o,
    output wire led_cc_o,
    output wire led_cd_o,
    output wire led_ce_o,
    output wire led_cf_o,
    output wire led_cg_o,
    output wire led_dp_o
);
reg[2:0] bias;
reg[31:0]cnts;
reg[6:0] seps[0:15];
reg[31:0] reg_led_data;

parameter   NUM0     =7'b1000000,
            NUM1     = 7'b1111001,
            NUM2     = 7'b0100100,
            NUM3     = 7'b0110000,
            NUM4     = 7'b0011001,
            NUM5     =7'b0010010,
            NUM6     = 7'b0000010,
            NUM7     = 7'b1111000,
            NUM8     = 7'b0000000,
            NUM9     = 7'b0011000,
            NUMA     = 7'b0001000,
            NUMB     = 7'b0000011,
            NUMC     = 7'b1000110,
            NUMD     = 7'b0100001,
            NUME     = 7'b0000110,
            NUMF     = 7'b0001110;


assign {led7_en_o, led6_en_o, led5_en_o, led4_en_o, led3_en_o, led2_en_o, led1_en_o, led0_en_o} =~(8'b0000_0001<<bias); 


always @(posedge clk) begin
    if(!rst_n || en)
    begin
        cnts<=0;
        bias<=0;        
    end
    else if(cnts==TIMES)
    begin
        cnts<=0;
        bias<=bias+1;
    end
    else
    begin
        cnts<=cnts+1;
    end
    
end

always @(posedge clk) begin
    if(!rst_n)
    begin
        seps[0]<=NUM0;
        seps[1]<=NUM1;
        seps[2]<=NUM2;
        seps[3]<=NUM3;
        seps[4]<=NUM4;
        seps[5]<=NUM5;
        seps[6]<=NUM6;
        seps[7]<=NUM7;
        seps[8]<=NUM8;
        seps[9]<=NUM9;
        seps[10]<=NUMA;
        seps[11]<=NUMB;
        seps[12]<=NUMC;
        seps[13]<=NUMD;
        seps[14]<=NUME;
        seps[15]<=NUMF;
    end
    
end

always @(posedge clk) begin
    if(!rst_n)
    begin
        reg_led_data<=0;
    end
    else if(en)
    begin
        reg_led_data<=led_data_i;
    end
    
end

wire[3:0] idx;


assign idx = {reg_led_data[4*bias+3],reg_led_data[4*bias+2],reg_led_data[4*bias+1],reg_led_data[4*bias]}; 

//always @(posedge clk) begin
//    if(!rst_n)
//    begin
//        {led_dp_o,led_cg_o,led_cf_o,led_ce_o,led_cd_o,led_cc_o,led_cb_o,led_ca_o}<=8'b0;
//    end
//    else
//    begin
//        {led_dp_o,led_cg_o,led_cf_o,led_ce_o,led_cd_o,led_cc_o,led_cb_o,led_ca_o}<={1'b1,seps[idx]};

//    end
    
    
    
//end


assign {led_dp_o,led_cg_o,led_cf_o,led_ce_o,led_cd_o,led_cc_o,led_cb_o,led_ca_o}=rst_n?{1'b1,seps[idx]}:{1'b1,7'b0};





endmodule