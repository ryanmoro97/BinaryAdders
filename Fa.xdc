
##Switches
set_property -dict { PACKAGE_PIN G15 #IO_L19N_T3_VREF_35 Sch=sw[0] IOSTANDARD LVCMOS33 } [get_ports { A[0] }]; 
set_property -dict { PACKAGE_PIN P15 #IO_L24P_T3_34 Sch=sw[1] IOSTANDARD LVCMOS33 } [get_ports { A[1] }];
set_property -dict { PACKAGE_PIN W13 #IO_L4N_T0_34 Sch=sw[2] IOSTANDARD LVCMOS33 } [get_ports { B[0] }];
 
set_property -dict { PACKAGE_PIN T16 #IO_L9P_T1_DQS_34 Sch=sw[3] IOSTANDARD LVCMOS33 } [get_ports { B[1] }];


##Buttons
set_property -dict { PACKAGE_PIN K18 #IO_L12N_T1_MRCC_35 Sch=btn[0] IOSTANDARD LVCMOS33 } [get_ports { C_in }];

##LEDs
set_property -dict { PACKAGE_PIN M14 #IO_L23P_T3_35 Sch=led[0] IOSTANDARD LVCMOS33 } [get_ports { S[0] }];
set_property -dict { PACKAGE_PIN M15 #IO_L23N_T3_35 Sch=led[1] IOSTANDARD LVCMOS33 } [get_ports { S[1] }];
set_property -dict { PACKAGE_PIN G14 #IO_0_35 Sch=led[2] IOSTANDARD LVCMOS33 } [get_ports { C_out }];
