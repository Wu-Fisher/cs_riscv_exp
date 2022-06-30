# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a100tfgg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.cache/wt [current_project]
set_property parent.project_path /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/ip/prgrom/inst_ram.coe
add_files /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/ip/dram/data_ram.coe
read_verilog -library xil_defaultlib {
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/al_interface.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/aline.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/alu.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/alu_mux.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/branch.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/controller.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/led_display.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/npc.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/pc.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/regfile.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/rv_u.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/sext.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/wb_mux.v
  /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/new/top.v
}
read_ip -quiet /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/ip/cpuclk/cpuclk.xci
set_property used_in_implementation false [get_files -all /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/ip/cpuclk/cpuclk_board.xdc]
set_property used_in_implementation false [get_files -all /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/ip/cpuclk/cpuclk.xdc]
set_property used_in_implementation false [get_files -all /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/ip/cpuclk/cpuclk_ooc.xdc]

read_ip -quiet /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/ip/prgrom/prgrom.xci
set_property used_in_implementation false [get_files -all /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/ip/prgrom/prgrom_ooc.xdc]

read_ip -quiet /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/ip/dram/dram.xci
set_property used_in_implementation false [get_files -all /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/sources_1/ip/dram/dram_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/constris_1/pin.xdc
set_property used_in_implementation false [get_files /home/wufisher/hub/cs_riscv_exp/cu/mycpu/mycpu.srcs/constris_1/pin.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top top -part xc7a100tfgg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]