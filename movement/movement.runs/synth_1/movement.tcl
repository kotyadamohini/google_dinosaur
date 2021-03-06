# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/VLSI/Desktop/movement/movement.cache/wt [current_project]
set_property parent.project_path C:/Users/VLSI/Desktop/movement/movement.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files -quiet c:/Users/VLSI/Desktop/movement/movement.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp
set_property used_in_implementation false [get_files c:/Users/VLSI/Desktop/movement/movement.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp]
read_verilog -library xil_defaultlib {
  C:/Users/VLSI/Desktop/movement/movement.srcs/sources_1/new/vga_controller.v
  C:/Users/VLSI/Desktop/movement/movement.srcs/sources_1/new/kbInput.v
  C:/Users/VLSI/Desktop/movement/movement.srcs/sources_1/new/movement.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/VLSI/Desktop/movement/movement.srcs/constrs_1/new/move.xdc
set_property used_in_implementation false [get_files C:/Users/VLSI/Desktop/movement/movement.srcs/constrs_1/new/move.xdc]


synth_design -top movement -part xc7a100tcsg324-1


write_checkpoint -force -noxdef movement.dcp

catch { report_utilization -file movement_utilization_synth.rpt -pb movement_utilization_synth.pb }
