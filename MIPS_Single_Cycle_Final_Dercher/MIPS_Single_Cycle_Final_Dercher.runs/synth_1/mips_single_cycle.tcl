# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7vx485tffg1157-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/MIPS_Single_Cycle_Final_Dercher/MIPS_Single_Cycle_Final_Dercher.cache/wt [current_project]
set_property parent.project_path C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/MIPS_Single_Cycle_Final_Dercher/MIPS_Single_Cycle_Final_Dercher.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/incomplete/sign_extend.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/incomplete/regfile.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/incomplete/pc_register.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/incomplete/im_4byte_wide.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/incomplete/dm_4byte_wide.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/incomplete/alu_controller.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/complete/second_shift_left_2.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/complete/mux_second.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/complete/mux_first.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/complete/mips_cu_behav.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/complete/first_shift_left_2.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/complete/alu.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/complete/adder_second.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/complete/adder_first.vhd
  C:/Users/ldercher/Desktop/HW10_MIPS_Single_Cycle_Solution/06_MIPS_Single_Cycle/design_sources/incomplete/mips_single_cycle_struct.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top mips_single_cycle -part xc7vx485tffg1157-1


write_checkpoint -force -noxdef mips_single_cycle.dcp

catch { report_utilization -file mips_single_cycle_utilization_synth.rpt -pb mips_single_cycle_utilization_synth.pb }
