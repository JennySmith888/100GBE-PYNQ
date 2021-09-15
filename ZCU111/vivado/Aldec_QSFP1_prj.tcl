# Copyright (C) 2021 Xilinx, Inc
# SPDX-License-Identifier: BSD-3-Clause

# Set project origin
set origin_dir "."

# Set project name
set _xil_proj_name_ "CMAC_Aldec_QSFP1"

# Create project
 create_project ${_xil_proj_name_} ./${_xil_proj_name_} -part xczu28dr-ffvg1517-2-e

# Set project properties
 set obj [current_project]
 set_property -name "board_part" -value "xilinx.com:zcu111:part0:1.2" -objects $obj

# Build block design
source ${origin_dir}/qsfp1_bd.tcl

# Add constraints
update_compile_order -fileset sources_1
add_files -fileset constrs_1 -norecurse ${origin_dir}/constraints.xdc

# Generate HDL Wrapper
make_wrapper -files [get_files ${origin_dir}/${_xil_proj_name_}/${_xil_proj_name_}.srcs/sources_1/bd/${design_name}/${design_name}.bd] -top
add_files -norecurse ${origin_dir}/${_xil_proj_name_}/${_xil_proj_name_}.srcs/sources_1/bd/${design_name}/hdl/${design_name}_wrapper.v

set_property top performance_test_sfp28_wrapper [current_fileset]
update_compile_order -fileset sources_1

#Uncomment below to run through bitstream generation
update_compile_order -fileset sources_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1

