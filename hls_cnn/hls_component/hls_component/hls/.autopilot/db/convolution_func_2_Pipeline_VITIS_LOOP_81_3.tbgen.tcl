set moduleName convolution_func_2_Pipeline_VITIS_LOOP_81_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 42
set C_modelName {convolution_func.2_Pipeline_VITIS_LOOP_81_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_buf_0_0 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_buf_0_1 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_buf_0_2 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_buf_1_0 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_buf_1_1 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_buf_1_2 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_buf_2_0 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_buf_2_1 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_buf_2_2 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_buf { MEM_WIDTH 15 MEM_SIZE 16384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ mul_ln90_9 int 5 regular  }
	{ input_buf_0_0 int 16 regular {array 36 { 1 3 } 1 1 }  }
	{ mul_ln90_10 int 5 regular  }
	{ mul_ln90_11 int 5 regular  }
	{ input_buf_0_1 int 16 regular {array 36 { 1 3 } 1 1 }  }
	{ input_buf_0_2 int 16 regular {array 36 { 1 3 } 1 1 }  }
	{ input_buf_1_0 int 16 regular {array 36 { 1 3 } 1 1 }  }
	{ input_buf_1_1 int 16 regular {array 36 { 1 3 } 1 1 }  }
	{ input_buf_1_2 int 16 regular {array 36 { 1 3 } 1 1 }  }
	{ input_buf_2_0 int 16 regular {array 36 { 1 3 } 1 1 }  }
	{ input_buf_2_1 int 16 regular {array 36 { 1 3 } 1 1 }  }
	{ input_buf_2_2 int 16 regular {array 36 { 1 3 } 1 1 }  }
	{ empty_41 int 2 regular  }
	{ sext_ln90_15 int 16 regular  }
	{ sext_ln90_16 int 16 regular  }
	{ sext_ln90_17 int 16 regular  }
	{ sext_ln90_1 int 16 regular  }
	{ sext_ln90_2 int 16 regular  }
	{ sext_ln90_11 int 16 regular  }
	{ sext_ln90_12 int 16 regular  }
	{ sext_ln90_13 int 16 regular  }
	{ sext_ln90_14 int 16 regular  }
	{ sum int 28 regular  }
	{ empty int 5 regular  }
	{ i int 4 regular  }
	{ output_buf int 15 regular {array 8192 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mul_ln90_9", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "input_buf_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln90_10", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln90_11", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "input_buf_0_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_buf_0_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_buf_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_buf_1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_buf_1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_buf_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_buf_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_buf_2_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "empty_41", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln90_15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln90_16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln90_17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln90_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln90_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln90_11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln90_12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln90_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln90_14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sum", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "i", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "output_buf", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mul_ln90_9 sc_in sc_lv 5 signal 0 } 
	{ input_buf_0_0_address0 sc_out sc_lv 6 signal 1 } 
	{ input_buf_0_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_buf_0_0_q0 sc_in sc_lv 16 signal 1 } 
	{ mul_ln90_10 sc_in sc_lv 5 signal 2 } 
	{ mul_ln90_11 sc_in sc_lv 5 signal 3 } 
	{ input_buf_0_1_address0 sc_out sc_lv 6 signal 4 } 
	{ input_buf_0_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_buf_0_1_q0 sc_in sc_lv 16 signal 4 } 
	{ input_buf_0_2_address0 sc_out sc_lv 6 signal 5 } 
	{ input_buf_0_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ input_buf_0_2_q0 sc_in sc_lv 16 signal 5 } 
	{ input_buf_1_0_address0 sc_out sc_lv 6 signal 6 } 
	{ input_buf_1_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ input_buf_1_0_q0 sc_in sc_lv 16 signal 6 } 
	{ input_buf_1_1_address0 sc_out sc_lv 6 signal 7 } 
	{ input_buf_1_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_buf_1_1_q0 sc_in sc_lv 16 signal 7 } 
	{ input_buf_1_2_address0 sc_out sc_lv 6 signal 8 } 
	{ input_buf_1_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ input_buf_1_2_q0 sc_in sc_lv 16 signal 8 } 
	{ input_buf_2_0_address0 sc_out sc_lv 6 signal 9 } 
	{ input_buf_2_0_ce0 sc_out sc_logic 1 signal 9 } 
	{ input_buf_2_0_q0 sc_in sc_lv 16 signal 9 } 
	{ input_buf_2_1_address0 sc_out sc_lv 6 signal 10 } 
	{ input_buf_2_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ input_buf_2_1_q0 sc_in sc_lv 16 signal 10 } 
	{ input_buf_2_2_address0 sc_out sc_lv 6 signal 11 } 
	{ input_buf_2_2_ce0 sc_out sc_logic 1 signal 11 } 
	{ input_buf_2_2_q0 sc_in sc_lv 16 signal 11 } 
	{ empty_41 sc_in sc_lv 2 signal 12 } 
	{ sext_ln90_15 sc_in sc_lv 16 signal 13 } 
	{ sext_ln90_16 sc_in sc_lv 16 signal 14 } 
	{ sext_ln90_17 sc_in sc_lv 16 signal 15 } 
	{ sext_ln90_1 sc_in sc_lv 16 signal 16 } 
	{ sext_ln90_2 sc_in sc_lv 16 signal 17 } 
	{ sext_ln90_11 sc_in sc_lv 16 signal 18 } 
	{ sext_ln90_12 sc_in sc_lv 16 signal 19 } 
	{ sext_ln90_13 sc_in sc_lv 16 signal 20 } 
	{ sext_ln90_14 sc_in sc_lv 16 signal 21 } 
	{ sum sc_in sc_lv 28 signal 22 } 
	{ empty sc_in sc_lv 5 signal 23 } 
	{ i sc_in sc_lv 4 signal 24 } 
	{ output_buf_address0 sc_out sc_lv 13 signal 25 } 
	{ output_buf_ce0 sc_out sc_logic 1 signal 25 } 
	{ output_buf_we0 sc_out sc_logic 1 signal 25 } 
	{ output_buf_d0 sc_out sc_lv 15 signal 25 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mul_ln90_9", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mul_ln90_9", "role": "default" }} , 
 	{ "name": "input_buf_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_0_0", "role": "address0" }} , 
 	{ "name": "input_buf_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_0_0", "role": "ce0" }} , 
 	{ "name": "input_buf_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_0_0", "role": "q0" }} , 
 	{ "name": "mul_ln90_10", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mul_ln90_10", "role": "default" }} , 
 	{ "name": "mul_ln90_11", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mul_ln90_11", "role": "default" }} , 
 	{ "name": "input_buf_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_0_1", "role": "address0" }} , 
 	{ "name": "input_buf_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_0_1", "role": "ce0" }} , 
 	{ "name": "input_buf_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_0_1", "role": "q0" }} , 
 	{ "name": "input_buf_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_0_2", "role": "address0" }} , 
 	{ "name": "input_buf_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_0_2", "role": "ce0" }} , 
 	{ "name": "input_buf_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_0_2", "role": "q0" }} , 
 	{ "name": "input_buf_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_1_0", "role": "address0" }} , 
 	{ "name": "input_buf_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_1_0", "role": "ce0" }} , 
 	{ "name": "input_buf_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_1_0", "role": "q0" }} , 
 	{ "name": "input_buf_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_1_1", "role": "address0" }} , 
 	{ "name": "input_buf_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_1_1", "role": "ce0" }} , 
 	{ "name": "input_buf_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_1_1", "role": "q0" }} , 
 	{ "name": "input_buf_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_1_2", "role": "address0" }} , 
 	{ "name": "input_buf_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_1_2", "role": "ce0" }} , 
 	{ "name": "input_buf_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_1_2", "role": "q0" }} , 
 	{ "name": "input_buf_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_2_0", "role": "address0" }} , 
 	{ "name": "input_buf_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_2_0", "role": "ce0" }} , 
 	{ "name": "input_buf_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_2_0", "role": "q0" }} , 
 	{ "name": "input_buf_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_2_1", "role": "address0" }} , 
 	{ "name": "input_buf_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_2_1", "role": "ce0" }} , 
 	{ "name": "input_buf_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_2_1", "role": "q0" }} , 
 	{ "name": "input_buf_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_2_2", "role": "address0" }} , 
 	{ "name": "input_buf_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_2_2", "role": "ce0" }} , 
 	{ "name": "input_buf_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_2_2", "role": "q0" }} , 
 	{ "name": "empty_41", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty_41", "role": "default" }} , 
 	{ "name": "sext_ln90_15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln90_15", "role": "default" }} , 
 	{ "name": "sext_ln90_16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln90_16", "role": "default" }} , 
 	{ "name": "sext_ln90_17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln90_17", "role": "default" }} , 
 	{ "name": "sext_ln90_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln90_1", "role": "default" }} , 
 	{ "name": "sext_ln90_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln90_2", "role": "default" }} , 
 	{ "name": "sext_ln90_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln90_11", "role": "default" }} , 
 	{ "name": "sext_ln90_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln90_12", "role": "default" }} , 
 	{ "name": "sext_ln90_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln90_13", "role": "default" }} , 
 	{ "name": "sext_ln90_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln90_14", "role": "default" }} , 
 	{ "name": "sum", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "sum", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "i", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "i", "role": "default" }} , 
 	{ "name": "output_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "output_buf", "role": "address0" }} , 
 	{ "name": "output_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_buf", "role": "ce0" }} , 
 	{ "name": "output_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_buf", "role": "we0" }} , 
 	{ "name": "output_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "output_buf", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	convolution_func_2_Pipeline_VITIS_LOOP_81_3 {
		mul_ln90_9 {Type I LastRead 0 FirstWrite -1}
		input_buf_0_0 {Type I LastRead 2 FirstWrite -1}
		mul_ln90_10 {Type I LastRead 0 FirstWrite -1}
		mul_ln90_11 {Type I LastRead 0 FirstWrite -1}
		input_buf_0_1 {Type I LastRead 2 FirstWrite -1}
		input_buf_0_2 {Type I LastRead 2 FirstWrite -1}
		input_buf_1_0 {Type I LastRead 2 FirstWrite -1}
		input_buf_1_1 {Type I LastRead 2 FirstWrite -1}
		input_buf_1_2 {Type I LastRead 2 FirstWrite -1}
		input_buf_2_0 {Type I LastRead 2 FirstWrite -1}
		input_buf_2_1 {Type I LastRead 2 FirstWrite -1}
		input_buf_2_2 {Type I LastRead 2 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		sext_ln90_15 {Type I LastRead 0 FirstWrite -1}
		sext_ln90_16 {Type I LastRead 0 FirstWrite -1}
		sext_ln90_17 {Type I LastRead 0 FirstWrite -1}
		sext_ln90_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln90_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln90_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln90_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln90_13 {Type I LastRead 0 FirstWrite -1}
		sext_ln90_14 {Type I LastRead 0 FirstWrite -1}
		sum {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		output_buf {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25", "Max" : "25"}
	, {"Name" : "Interval", "Min" : "25", "Max" : "25"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mul_ln90_9 { ap_none {  { mul_ln90_9 in_data 0 5 } } }
	input_buf_0_0 { ap_memory {  { input_buf_0_0_address0 mem_address 1 6 }  { input_buf_0_0_ce0 mem_ce 1 1 }  { input_buf_0_0_q0 mem_dout 0 16 } } }
	mul_ln90_10 { ap_none {  { mul_ln90_10 in_data 0 5 } } }
	mul_ln90_11 { ap_none {  { mul_ln90_11 in_data 0 5 } } }
	input_buf_0_1 { ap_memory {  { input_buf_0_1_address0 mem_address 1 6 }  { input_buf_0_1_ce0 mem_ce 1 1 }  { input_buf_0_1_q0 mem_dout 0 16 } } }
	input_buf_0_2 { ap_memory {  { input_buf_0_2_address0 mem_address 1 6 }  { input_buf_0_2_ce0 mem_ce 1 1 }  { input_buf_0_2_q0 mem_dout 0 16 } } }
	input_buf_1_0 { ap_memory {  { input_buf_1_0_address0 mem_address 1 6 }  { input_buf_1_0_ce0 mem_ce 1 1 }  { input_buf_1_0_q0 mem_dout 0 16 } } }
	input_buf_1_1 { ap_memory {  { input_buf_1_1_address0 mem_address 1 6 }  { input_buf_1_1_ce0 mem_ce 1 1 }  { input_buf_1_1_q0 mem_dout 0 16 } } }
	input_buf_1_2 { ap_memory {  { input_buf_1_2_address0 mem_address 1 6 }  { input_buf_1_2_ce0 mem_ce 1 1 }  { input_buf_1_2_q0 mem_dout 0 16 } } }
	input_buf_2_0 { ap_memory {  { input_buf_2_0_address0 mem_address 1 6 }  { input_buf_2_0_ce0 mem_ce 1 1 }  { input_buf_2_0_q0 mem_dout 0 16 } } }
	input_buf_2_1 { ap_memory {  { input_buf_2_1_address0 mem_address 1 6 }  { input_buf_2_1_ce0 mem_ce 1 1 }  { input_buf_2_1_q0 mem_dout 0 16 } } }
	input_buf_2_2 { ap_memory {  { input_buf_2_2_address0 mem_address 1 6 }  { input_buf_2_2_ce0 mem_ce 1 1 }  { input_buf_2_2_q0 mem_dout 0 16 } } }
	empty_41 { ap_none {  { empty_41 in_data 0 2 } } }
	sext_ln90_15 { ap_none {  { sext_ln90_15 in_data 0 16 } } }
	sext_ln90_16 { ap_none {  { sext_ln90_16 in_data 0 16 } } }
	sext_ln90_17 { ap_none {  { sext_ln90_17 in_data 0 16 } } }
	sext_ln90_1 { ap_none {  { sext_ln90_1 in_data 0 16 } } }
	sext_ln90_2 { ap_none {  { sext_ln90_2 in_data 0 16 } } }
	sext_ln90_11 { ap_none {  { sext_ln90_11 in_data 0 16 } } }
	sext_ln90_12 { ap_none {  { sext_ln90_12 in_data 0 16 } } }
	sext_ln90_13 { ap_none {  { sext_ln90_13 in_data 0 16 } } }
	sext_ln90_14 { ap_none {  { sext_ln90_14 in_data 0 16 } } }
	sum { ap_none {  { sum in_data 0 28 } } }
	empty { ap_none {  { empty in_data 0 5 } } }
	i { ap_none {  { i in_data 0 4 } } }
	output_buf { ap_memory {  { output_buf_address0 mem_address 1 13 }  { output_buf_ce0 mem_ce 1 1 }  { output_buf_we0 mem_we 1 1 }  { output_buf_d0 mem_din 1 15 } } }
}
