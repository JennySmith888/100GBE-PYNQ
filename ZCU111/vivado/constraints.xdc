#set_property PACKAGE_PIN W34      [get_ports "diff_clock_rtl_clk_n"] ;# ALDEC GT CLK
#set_property PACKAGE_PIN W33      [get_ports "diff_clock_rtl_clk_p"] ;# ALDEC GT CLK

# change to local ZCU111 CLK
set_property PACKAGE_PIN V32      [get_ports "diff_clock_rtl_clk_n"] ;# Bank 129 - MGTREFCLK1N_129 ZCU111 GT CLK
set_property PACKAGE_PIN V31      [get_ports "diff_clock_rtl_clk_p"] ;# Bank 129 - MGTREFCLK1P_129 ZCU111 GT CLK

set_property PACKAGE_PIN AP8      [get_ports "qsfp1_resetl"] ;# Bank  65 VCCO - VADJ_FMC - IO_L13P_T2L_N0_GC_QBC_65
set_property IOSTANDARD  LVCMOS18     [get_ports "qsfp1_resetl"] ;# Bank  65 VCCO - VADJ_FMC - IO_L13P_T2L_N0_GC_QBC_65
set_property PACKAGE_PIN AJ12     [get_ports "qsfp1_modsell"] ;# Bank  65 VCCO - VADJ_FMC - IO_L21P_T3L_N4_AD8P_65
set_property IOSTANDARD  LVCMOS18 [get_ports "qsfp1_modsell"] ;# Bank  65 VCCO - VADJ_FMC - IO_L21P_T3L_N4_AD8P_65
set_property PACKAGE_PIN AR9      [get_ports "qsfp1_intl"] ;# Bank  65 VCCO - VADJ_FMC - IO_L14N_T2L_N3_GC_65
set_property IOSTANDARD  LVCMOS18     [get_ports "qsfp1_intl"] ;# Bank  65 VCCO - VADJ_FMC - IO_L14N_T2L_N3_GC_65
set_property PACKAGE_PIN AP9      [get_ports "qsfp1_modprsl"] ;# Bank  65 VCCO - VADJ_FMC - IO_L14P_T2L_N2_GC_65
set_property IOSTANDARD  LVCMOS18     [get_ports "qsfp1_modprsl"] ;# Bank  65 VCCO - VADJ_FMC - IO_L14P_T2L_N2_GC_65
set_property PACKAGE_PIN AR8      [get_ports "qsfp1_lpmode"] ;# Bank  65 VCCO - VADJ_FMC - IO_L14P_T2L_N2_GC_65
set_property IOSTANDARD  LVCMOS18     [get_ports "qsfp1_lpmode"] ;# Bank  65 VCCO - VADJ_FMC - IO_L14P_T2L_N2_GC_65
set_false_path -through [get_nets -hierarchical *qsfp1_intl_1*]
set_false_path -through [get_nets -hierarchical *qsp1_modprsl_1*]

# QSFP 2
set_property PACKAGE_PIN AL7      [get_ports "qsfp2_resetl"] ;# Bank  65 VCCO - VADJ_FMC - IO_L13P_T2L_N0_GC_QBC_65
set_property IOSTANDARD  LVCMOS18     [get_ports "qsfp2_resetl"] ;# Bank  65 VCCO - VADJ_FMC - IO_L13P_T2L_N0_GC_QBC_65
set_property PACKAGE_PIN AN12     [get_ports "qsfp2_modsell"] ;# Bank  65 VCCO - VADJ_FMC - IO_L21P_T3L_N4_AD8P_65
set_property IOSTANDARD  LVCMOS18 [get_ports "qsfp2_modsell"] ;# Bank  65 VCCO - VADJ_FMC - IO_L21P_T3L_N4_AD8P_65
set_property PACKAGE_PIN AM7      [get_ports "qsfp2_intl"] ;# Bank  65 VCCO - VADJ_FMC - IO_L14N_T2L_N3_GC_65
set_property IOSTANDARD  LVCMOS18     [get_ports "qsfp2_intl"] ;# Bank  65 VCCO - VADJ_FMC - IO_L14N_T2L_N3_GC_65
set_property PACKAGE_PIN AM8      [get_ports "qsfp2_modprsl"] ;# Bank  65 VCCO - VADJ_FMC - IO_L14P_T2L_N2_GC_65
set_property IOSTANDARD  LVCMOS18     [get_ports "qsfp2_modprsl"] ;# Bank  65 VCCO - VADJ_FMC - IO_L14P_T2L_N2_GC_65
set_property PACKAGE_PIN AM12      [get_ports "qsfp2_lpmode"] ;# Bank  65 VCCO - VADJ_FMC - IO_L14P_T2L_N2_GC_65
set_property IOSTANDARD  LVCMOS18     [get_ports "qsfp2_lpmode"] ;# Bank  65 VCCO - VADJ_FMC - IO_L14P_T2L_N2_GC_65

set_false_path -through [get_nets -hierarchical *qsfp2_intl_1*]
set_false_path -through [get_nets -hierarchical *qsfp2_modprsl_1*]
