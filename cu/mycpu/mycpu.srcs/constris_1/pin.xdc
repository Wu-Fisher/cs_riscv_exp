create_clock -period 10 [get_ports clk_i]

# fa
set_property PACKAGE_PIN R1 [get_ports rst_i]
set_property PACKAGE_PIN Y18 [get_ports clk_i]


set_property IOSTANDARD LVCMOS33 [get_ports rst_i]
set_property IOSTANDARD LVCMOS33 [get_ports clk_i]


# led
set_property PACKAGE_PIN C19 [get_ports led0_en_o]
set_property PACKAGE_PIN E19 [get_ports led1_en_o]
set_property PACKAGE_PIN D19 [get_ports led2_en_o]
set_property PACKAGE_PIN F18 [get_ports led3_en_o]
set_property PACKAGE_PIN E18 [get_ports led4_en_o]
set_property PACKAGE_PIN B20 [get_ports led5_en_o]
set_property PACKAGE_PIN A20 [get_ports led6_en_o]
set_property PACKAGE_PIN A18 [get_ports led7_en_o]
set_property PACKAGE_PIN F15 [get_ports led_ca_o]
set_property PACKAGE_PIN F13 [get_ports led_cb_o]
set_property PACKAGE_PIN F14 [get_ports led_cc_o]
set_property PACKAGE_PIN F16 [get_ports led_cd_o]
set_property PACKAGE_PIN E17 [get_ports led_ce_o]
set_property PACKAGE_PIN C14 [get_ports led_cf_o]
set_property PACKAGE_PIN C15 [get_ports led_cg_o]
set_property PACKAGE_PIN E13 [get_ports led_dp_o]


set_property IOSTANDARD LVCMOS33 [get_ports led0_en_o]
set_property IOSTANDARD LVCMOS33 [get_ports led1_en_o]
set_property IOSTANDARD LVCMOS33 [get_ports led2_en_o]
set_property IOSTANDARD LVCMOS33 [get_ports led3_en_o]
set_property IOSTANDARD LVCMOS33 [get_ports led4_en_o]
set_property IOSTANDARD LVCMOS33 [get_ports led5_en_o]
set_property IOSTANDARD LVCMOS33 [get_ports led6_en_o]
set_property IOSTANDARD LVCMOS33 [get_ports led7_en_o]
set_property IOSTANDARD LVCMOS33 [get_ports led_ca_o]
set_property IOSTANDARD LVCMOS33 [get_ports led_cb_o]
set_property IOSTANDARD LVCMOS33 [get_ports led_cc_o]
set_property IOSTANDARD LVCMOS33 [get_ports led_cd_o]
set_property IOSTANDARD LVCMOS33 [get_ports led_ce_o]
set_property IOSTANDARD LVCMOS33 [get_ports led_cf_o]
set_property IOSTANDARD LVCMOS33 [get_ports led_cg_o]
set_property IOSTANDARD LVCMOS33 [get_ports led_dp_o]