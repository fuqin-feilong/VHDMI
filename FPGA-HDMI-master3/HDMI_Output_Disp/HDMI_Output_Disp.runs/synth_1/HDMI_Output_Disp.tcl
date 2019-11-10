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
create_project -in_memory -part xc7s25ftgb196-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.cache/wt [current_project]
set_property parent.project_path D:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths d:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp [current_project]
update_ip_catalog
set_property ip_output_repo d:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  D:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/imports/sources_1/color_bar.v
  D:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/imports/sources_1/HDMI_Output_Disp.v
}
read_ip -quiet D:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/hdmi_disp/hdmi_disp.xci
set_property used_in_implementation false [get_files -all d:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/hdmi_disp/src/rgb2dvi.xdc]
set_property used_in_implementation false [get_files -all d:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/hdmi_disp/src/rgb2dvi_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/hdmi_disp/src/rgb2dvi_ooc.xdc]

read_ip -quiet D:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/video_pll/video_pll.xci
set_property used_in_implementation false [get_files -all d:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/video_pll/video_pll_board.xdc]
set_property used_in_implementation false [get_files -all d:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/video_pll/video_pll.xdc]
set_property used_in_implementation false [get_files -all d:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/video_pll/video_pll_ooc.xdc]

read_ip -quiet D:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all d:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/constrs_1/new/HDMI_Output_Disp.xdc
set_property used_in_implementation false [get_files D:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/constrs_1/new/HDMI_Output_Disp.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top HDMI_Output_Disp -part xc7s25ftgb196-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef HDMI_Output_Disp.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file HDMI_Output_Disp_utilization_synth.rpt -pb HDMI_Output_Disp_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
