module switch (

    input[23:0] sw_data_i,
    
    output[31:0] sw_data_o

);

assign sw_data_o = {8'b0000_0000,sw_data_i};







endmodule