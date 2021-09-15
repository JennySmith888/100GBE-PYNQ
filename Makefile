# Makefile

vivado_dir := ZCU111/vivado
board_test_dir := ZCU111

all: board_test sfp28_prj qsfp1_prj qsfp2_prj

board_test:
	cd $(board_test_dir); mkdir board_test

sfp28_prj:
	cd $(vivado_dir); vivado -mode batch -nojou -nolog -source SFP28_prj.tcl
	cd $(vivado_dir); cp ./CMAC_SFP28/CMAC_SFP28.runs/impl_1/sfp28_wrapper.bit ../board_test/sfp28.bit
	cd $(vivado_dir); cp ./CMAC_SFP28/CMAC_SFP28.gen/sources_1/bd/sfp28/hw_handoff/sfp28.hwh ../board_test/
qsfp1_prj:
	cd $(vivado_dir); vivado -mode batch -nojou -nolog -source Aldec_QSFP1_prj.tcl
	cd $(vivado_dir); cp ./CMAC_Aldec_QSFP1/CMAC_Aldec_QSFP1.runs/impl_1/qsfp1_wrapper.bit ../board_test/qsfp1.bit
	cd $(vivado_dir); cp ./CMAC_Aldec_QSFP1/CMAC_Aldec_QSFP1.gen/sources_1/bd/qsfp1/hw_handoff/qsfp1.hwh ../board_test/
qsfp2_prj:
	cd $(vivado_dir); vivado -mode batch -nojou -nolog -source Aldec_QSFP2_prj.tcl
	cd $(vivado_dir); cp ./CMAC_Aldec_QSFP2/CMAC_Aldec_QSFP2.runs/impl_1/qsfp2_wrapper.bit ../board_test/qsfp2.bit
	cd $(vivado_dir); cp ./CMAC_Aldec_QSFP2/CMAC_Aldec_QSFP2.gen/sources_1/bd/qsfp2/hw_handoff/qsfp2.hwh ../board_test/
