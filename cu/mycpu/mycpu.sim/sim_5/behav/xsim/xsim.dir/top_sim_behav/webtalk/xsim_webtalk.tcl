webtalk_init -webtalk_dir /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.sim/sim_5/behav/xsim/xsim.dir/top_sim_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Fri Jul  1 10:32:35 2022" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2018.3 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2405991" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "d5e6998b-76f7-4ecc-b72e-d23263de76eb" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "1c7e2f3698864ea3ba10642431a55d1b" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "60" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 20.04.4 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Xeon(R) W-2123 CPU @ 3.60GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "3600.000 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "16.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "30 us" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "4" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "0.56_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "120444_KB" -context "xsim\\usage"
webtalk_transmit -clientid 1828182526 -regid "" -xml /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.sim/sim_5/behav/xsim/xsim.dir/top_sim_behav/webtalk/usage_statistics_ext_xsim.xml -html /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.sim/sim_5/behav/xsim/xsim.dir/top_sim_behav/webtalk/usage_statistics_ext_xsim.html -wdm /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.sim/sim_5/behav/xsim/xsim.dir/top_sim_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
