# TCL File Generated by Component Editor 16.0
# Mon Oct 03 10:00:30 PDT 2016
# DO NOT MODIFY


# 
# cent_ctrl "Central Controller (CC)" v1.1
# Sachin Kumawat 2016.10.03.10:00:30
# The central Controller to control Off-Chip Memory Read/Write and Design Debuging
# 

# 
# request TCL package from ACDS 16.0
# 
package require -exact qsys 16.0


# 
# module cent_ctrl
# 
set_module_property DESCRIPTION "The central Controller to control Off-Chip Memory Read/Write and Design Debuging"
set_module_property NAME cent_ctrl
set_module_property VERSION 1.1
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP DCNN
set_module_property AUTHOR "Sachin Kumawat"
set_module_property DISPLAY_NAME "Central Controller (CC)"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL cent_ctrl
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file cent_ctrl.v VERILOG PATH cent_ctrl.v TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL cent_ctrl
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file cent_ctrl.v VERILOG PATH cent_ctrl.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset_n
# 
add_interface reset_n reset end
set_interface_property reset_n associatedClock clock
set_interface_property reset_n synchronousEdges DEASSERT
set_interface_property reset_n ENABLED true
set_interface_property reset_n EXPORT_OF ""
set_interface_property reset_n PORT_NAME_MAP ""
set_interface_property reset_n CMSIS_SVD_VARIABLES ""
set_interface_property reset_n SVD_ADDRESS_GROUP ""

add_interface_port reset_n reset_n reset_n Input 1


# 
# connection point mem_status_in
# 
add_interface mem_status_in conduit end
set_interface_property mem_status_in associatedClock ""
set_interface_property mem_status_in associatedReset ""
set_interface_property mem_status_in ENABLED true
set_interface_property mem_status_in EXPORT_OF ""
set_interface_property mem_status_in PORT_NAME_MAP ""
set_interface_property mem_status_in CMSIS_SVD_VARIABLES ""
set_interface_property mem_status_in SVD_ADDRESS_GROUP ""

add_interface_port mem_status_in mem_local_init_done local_init_done Input 1
add_interface_port mem_status_in mem_local_cal_success local_cal_success Input 1
add_interface_port mem_status_in mem_local_cal_fail local_cal_fail Input 1


# 
# connection point status_export
# 
add_interface status_export conduit end
set_interface_property status_export associatedClock clock
set_interface_property status_export associatedReset ""
set_interface_property status_export ENABLED true
set_interface_property status_export EXPORT_OF ""
set_interface_property status_export PORT_NAME_MAP ""
set_interface_property status_export CMSIS_SVD_VARIABLES ""
set_interface_property status_export SVD_ADDRESS_GROUP ""

add_interface_port status_export mem_cal_done mem_cal_done Output 1
add_interface_port status_export mem_ready mem_ready Output 1


# 
# connection point self_test_status_export
# 
add_interface self_test_status_export conduit end
set_interface_property self_test_status_export associatedClock clock
set_interface_property self_test_status_export associatedReset ""
set_interface_property self_test_status_export ENABLED true
set_interface_property self_test_status_export EXPORT_OF ""
set_interface_property self_test_status_export PORT_NAME_MAP ""
set_interface_property self_test_status_export CMSIS_SVD_VARIABLES ""
set_interface_property self_test_status_export SVD_ADDRESS_GROUP ""

add_interface_port self_test_status_export fail fail Output 1
add_interface_port self_test_status_export read_done read_done Output 1


# 
# connection point sdram_self_test
# 
add_interface sdram_self_test avalon start
set_interface_property sdram_self_test addressUnits WORDS
set_interface_property sdram_self_test associatedClock clock
set_interface_property sdram_self_test associatedReset reset_n
set_interface_property sdram_self_test bitsPerSymbol 8
set_interface_property sdram_self_test burstOnBurstBoundariesOnly false
set_interface_property sdram_self_test burstcountUnits WORDS
set_interface_property sdram_self_test doStreamReads false
set_interface_property sdram_self_test doStreamWrites false
set_interface_property sdram_self_test holdTime 0
set_interface_property sdram_self_test linewrapBursts false
set_interface_property sdram_self_test maximumPendingReadTransactions 0
set_interface_property sdram_self_test maximumPendingWriteTransactions 0
set_interface_property sdram_self_test readLatency 0
set_interface_property sdram_self_test readWaitTime 1
set_interface_property sdram_self_test setupTime 0
set_interface_property sdram_self_test timingUnits Cycles
set_interface_property sdram_self_test writeWaitTime 0
set_interface_property sdram_self_test ENABLED true
set_interface_property sdram_self_test EXPORT_OF ""
set_interface_property sdram_self_test PORT_NAME_MAP ""
set_interface_property sdram_self_test CMSIS_SVD_VARIABLES ""
set_interface_property sdram_self_test SVD_ADDRESS_GROUP ""

add_interface_port sdram_self_test avl_ready waitrequest_n Input 1
add_interface_port sdram_self_test avl_size burstcount Output 1
add_interface_port sdram_self_test avl_addr address Output 25
add_interface_port sdram_self_test avl_rdata_valid readdatavalid Input 1
add_interface_port sdram_self_test avl_rdata readdata Input 64
add_interface_port sdram_self_test avl_wdata writedata Output 64
add_interface_port sdram_self_test avl_be byteenable Output 8
add_interface_port sdram_self_test avl_read_req read Output 1
add_interface_port sdram_self_test avl_write_req write Output 1
add_interface_port sdram_self_test avl_burstbegin beginbursttransfer Output 1


# 
# connection point sdram_rw
# 
add_interface sdram_rw avalon start
set_interface_property sdram_rw addressUnits WORDS
set_interface_property sdram_rw associatedClock clock
set_interface_property sdram_rw associatedReset reset_n
set_interface_property sdram_rw bitsPerSymbol 8
set_interface_property sdram_rw burstOnBurstBoundariesOnly false
set_interface_property sdram_rw burstcountUnits WORDS
set_interface_property sdram_rw doStreamReads false
set_interface_property sdram_rw doStreamWrites false
set_interface_property sdram_rw holdTime 0
set_interface_property sdram_rw linewrapBursts false
set_interface_property sdram_rw maximumPendingReadTransactions 0
set_interface_property sdram_rw maximumPendingWriteTransactions 0
set_interface_property sdram_rw readLatency 0
set_interface_property sdram_rw readWaitTime 1
set_interface_property sdram_rw setupTime 0
set_interface_property sdram_rw timingUnits Cycles
set_interface_property sdram_rw writeWaitTime 0
set_interface_property sdram_rw ENABLED true
set_interface_property sdram_rw EXPORT_OF ""
set_interface_property sdram_rw PORT_NAME_MAP ""
set_interface_property sdram_rw CMSIS_SVD_VARIABLES ""
set_interface_property sdram_rw SVD_ADDRESS_GROUP ""

add_interface_port sdram_rw sdram_ready waitrequest_n Input 1
add_interface_port sdram_rw sdram_addr address Output 25
add_interface_port sdram_rw sdram_rdata_valid readdatavalid Input 1
add_interface_port sdram_rw sdram_rdata readdata Input 64
add_interface_port sdram_rw sdram_wdata writedata Output 64
add_interface_port sdram_rw sdram_be byteenable Output 8
add_interface_port sdram_rw sdram_read_req read Output 1
add_interface_port sdram_rw sdram_write_req write Output 1
add_interface_port sdram_rw sdram_size burstcount Output 1


# 
# connection point ocmem_rw
# 
add_interface ocmem_rw avalon start
set_interface_property ocmem_rw addressUnits WORDS
set_interface_property ocmem_rw associatedClock clock
set_interface_property ocmem_rw associatedReset reset_n
set_interface_property ocmem_rw bitsPerSymbol 8
set_interface_property ocmem_rw burstOnBurstBoundariesOnly false
set_interface_property ocmem_rw burstcountUnits WORDS
set_interface_property ocmem_rw doStreamReads false
set_interface_property ocmem_rw doStreamWrites false
set_interface_property ocmem_rw holdTime 0
set_interface_property ocmem_rw linewrapBursts false
set_interface_property ocmem_rw maximumPendingReadTransactions 0
set_interface_property ocmem_rw maximumPendingWriteTransactions 0
set_interface_property ocmem_rw readLatency 0
set_interface_property ocmem_rw readWaitTime 1
set_interface_property ocmem_rw setupTime 0
set_interface_property ocmem_rw timingUnits Cycles
set_interface_property ocmem_rw writeWaitTime 0
set_interface_property ocmem_rw ENABLED true
set_interface_property ocmem_rw EXPORT_OF ""
set_interface_property ocmem_rw PORT_NAME_MAP ""
set_interface_property ocmem_rw CMSIS_SVD_VARIABLES ""
set_interface_property ocmem_rw SVD_ADDRESS_GROUP ""

add_interface_port ocmem_rw ocmem_addr address Output 14
add_interface_port ocmem_rw ocmem_chipselect chipselect Output 1
add_interface_port ocmem_rw ocmem_rdata readdata Input 32
add_interface_port ocmem_rw ocmem_wdata writedata Output 32
add_interface_port ocmem_rw ocmem_be byteenable Output 4
add_interface_port ocmem_rw ocmem_write_req write Output 1
add_interface_port ocmem_rw ocmem_waitrequest waitrequest Input 1


# 
# connection point pcie_clock
# 
add_interface pcie_clock clock end
set_interface_property pcie_clock clockRate 0
set_interface_property pcie_clock ENABLED true
set_interface_property pcie_clock EXPORT_OF ""
set_interface_property pcie_clock PORT_NAME_MAP ""
set_interface_property pcie_clock CMSIS_SVD_VARIABLES ""
set_interface_property pcie_clock SVD_ADDRESS_GROUP ""

add_interface_port pcie_clock pcie_clk clk Input 1


# 
# connection point pcie_reset
# 
add_interface pcie_reset reset end
set_interface_property pcie_reset associatedClock clock
set_interface_property pcie_reset synchronousEdges DEASSERT
set_interface_property pcie_reset ENABLED true
set_interface_property pcie_reset EXPORT_OF ""
set_interface_property pcie_reset PORT_NAME_MAP ""
set_interface_property pcie_reset CMSIS_SVD_VARIABLES ""
set_interface_property pcie_reset SVD_ADDRESS_GROUP ""

add_interface_port pcie_reset pcie_reset_n reset_n Input 1


# 
# connection point pcie_rw
# 
add_interface pcie_rw avalon end
set_interface_property pcie_rw addressUnits WORDS
set_interface_property pcie_rw associatedClock pcie_clock
set_interface_property pcie_rw associatedReset pcie_reset
set_interface_property pcie_rw bitsPerSymbol 8
set_interface_property pcie_rw burstOnBurstBoundariesOnly false
set_interface_property pcie_rw burstcountUnits WORDS
set_interface_property pcie_rw explicitAddressSpan 0
set_interface_property pcie_rw holdTime 0
set_interface_property pcie_rw linewrapBursts false
set_interface_property pcie_rw maximumPendingReadTransactions 1
set_interface_property pcie_rw maximumPendingWriteTransactions 0
set_interface_property pcie_rw readLatency 0
set_interface_property pcie_rw readWaitTime 1
set_interface_property pcie_rw setupTime 0
set_interface_property pcie_rw timingUnits Cycles
set_interface_property pcie_rw writeWaitTime 0
set_interface_property pcie_rw ENABLED true
set_interface_property pcie_rw EXPORT_OF ""
set_interface_property pcie_rw PORT_NAME_MAP ""
set_interface_property pcie_rw CMSIS_SVD_VARIABLES ""
set_interface_property pcie_rw SVD_ADDRESS_GROUP ""

add_interface_port pcie_rw pcie_write_req write Input 1
add_interface_port pcie_rw pcie_read_req read Input 1
add_interface_port pcie_rw pcie_writedata writedata Input 32
add_interface_port pcie_rw pcie_readdata readdata Output 32
add_interface_port pcie_rw pcie_waitrequest waitrequest Output 1
add_interface_port pcie_rw pcie_readdatavalid readdatavalid Output 1
add_interface_port pcie_rw pcie_addr address Input 3
add_interface_port pcie_rw pcie_byteenable byteenable Input 4
set_interface_assignment pcie_rw embeddedsw.configuration.isFlash 0
set_interface_assignment pcie_rw embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment pcie_rw embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment pcie_rw embeddedsw.configuration.isPrintableDevice 0


# 
# connection point user_io
# 
add_interface user_io conduit end
set_interface_property user_io associatedClock clock
set_interface_property user_io associatedReset ""
set_interface_property user_io ENABLED true
set_interface_property user_io EXPORT_OF ""
set_interface_property user_io PORT_NAME_MAP ""
set_interface_property user_io CMSIS_SVD_VARIABLES ""
set_interface_property user_io SVD_ADDRESS_GROUP ""

add_interface_port user_io debug_pb debug Input 1
add_interface_port user_io pcie_load_done pcie_load_done_n Input 1


# 
# connection point fpga_conn
# 
add_interface fpga_conn avalon start
set_interface_property fpga_conn addressUnits SYMBOLS
set_interface_property fpga_conn associatedClock clock
set_interface_property fpga_conn associatedReset reset_n
set_interface_property fpga_conn bitsPerSymbol 8
set_interface_property fpga_conn burstOnBurstBoundariesOnly false
set_interface_property fpga_conn burstcountUnits WORDS
set_interface_property fpga_conn doStreamReads false
set_interface_property fpga_conn doStreamWrites false
set_interface_property fpga_conn holdTime 0
set_interface_property fpga_conn linewrapBursts false
set_interface_property fpga_conn maximumPendingReadTransactions 0
set_interface_property fpga_conn maximumPendingWriteTransactions 0
set_interface_property fpga_conn readLatency 0
set_interface_property fpga_conn readWaitTime 1
set_interface_property fpga_conn setupTime 0
set_interface_property fpga_conn timingUnits Cycles
set_interface_property fpga_conn writeWaitTime 0
set_interface_property fpga_conn ENABLED true
set_interface_property fpga_conn EXPORT_OF ""
set_interface_property fpga_conn PORT_NAME_MAP ""
set_interface_property fpga_conn CMSIS_SVD_VARIABLES ""
set_interface_property fpga_conn SVD_ADDRESS_GROUP ""

add_interface_port fpga_conn fpga_address address Output 5
add_interface_port fpga_conn fpga_write_n write_n Output 1
add_interface_port fpga_conn fpga_writedata writedata Output 32
add_interface_port fpga_conn fpga_chipselect chipselect Output 1
add_interface_port fpga_conn fpga_readdata readdata Input 32
add_interface_port fpga_conn fpga_waitrequest waitrequest Input 1
