set_property SRC_FILE_INFO {cfile:d:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/sources_1/ip/video_pll/video_pll.xdc rfile:../../../HDMI_Output_Disp.srcs/sources_1/ip/video_pll/video_pll.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.08
