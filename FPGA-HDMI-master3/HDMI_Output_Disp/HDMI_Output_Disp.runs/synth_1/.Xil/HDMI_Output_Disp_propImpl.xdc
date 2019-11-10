set_property SRC_FILE_INFO {cfile:D:/GitHubfiles/FPGA-HDMI-master3/HDMI_Output_Disp/HDMI_Output_Disp.srcs/constrs_1/new/HDMI_Output_Disp.xdc rfile:../../../HDMI_Output_Disp.srcs/constrs_1/new/HDMI_Output_Disp.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H4 IOSTANDARD LVCMOS33     } [get_ports { sysclk }]; #IO_L12N_T1_MRCC_33 Sch=sysclk_n
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F4  IOSTANDARD TMDS_33  } [get_ports { TMDS_clk_n }]; #IO_L6N_T0_VREF_12 Sch=hdmi_tx_clk_n
set_property src_info {type:XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G4  IOSTANDARD TMDS_33  } [get_ports { TMDS_clk_p }]; #IO_L6P_T0_12 Sch=hdmi_tx_clk_p
set_property src_info {type:XDC file:1 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F1  IOSTANDARD TMDS_33  } [get_ports { TMDS_data_n[0] }]; #IO_L5N_T0_12 Sch=hdmi_tx_n[0]
set_property src_info {type:XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G1  IOSTANDARD TMDS_33  } [get_ports { TMDS_data_p[0] }]; #IO_L5P_T0_12 Sch=hdmi_tx_p[0]
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D2  IOSTANDARD TMDS_33  } [get_ports { TMDS_data_n[1] }]; #IO_L4N_T0_12 Sch=hdmi_tx_n[1]
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E2  IOSTANDARD TMDS_33  } [get_ports { TMDS_data_p[1] }]; #IO_L4P_T0_12 Sch=hdmi_tx_p[1]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C1  IOSTANDARD TMDS_33  } [get_ports { TMDS_data_n[2] }]; #IO_L7N_T1_12 Sch=hdmi_tx_n[2]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D1  IOSTANDARD TMDS_33  } [get_ports { TMDS_data_p[2] }]; #IO_L7P_T1_12 Sch=hdmi_tx_p[2]
