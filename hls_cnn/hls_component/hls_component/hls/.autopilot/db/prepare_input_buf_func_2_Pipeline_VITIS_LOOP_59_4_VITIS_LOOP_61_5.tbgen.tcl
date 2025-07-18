set moduleName prepare_input_buf_func_2_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5
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
set C_modelName {prepare_input_buf_func.2_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_buf_2_2 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict input_buf_2_1 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict input_buf_2_0 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict input_buf_1_2 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict input_buf_1_1 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict input_buf_1_0 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict input_buf_0_2 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict input_buf_0_1 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict input_buf_0_0 { MEM_WIDTH 16 MEM_SIZE 72 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ input_buf_2_2 int 16 regular {array 36 { 0 3 } 0 1 }  }
	{ input_buf_2_1 int 16 regular {array 36 { 0 3 } 0 1 }  }
	{ input_buf_2_0 int 16 regular {array 36 { 0 3 } 0 1 }  }
	{ input_buf_1_2 int 16 regular {array 36 { 0 3 } 0 1 }  }
	{ input_buf_1_1 int 16 regular {array 36 { 0 3 } 0 1 }  }
	{ input_buf_1_0 int 16 regular {array 36 { 0 3 } 0 1 }  }
	{ input_buf_0_2 int 16 regular {array 36 { 0 3 } 0 1 }  }
	{ input_buf_0_1 int 16 regular {array 36 { 0 3 } 0 1 }  }
	{ input_buf_0_0 int 16 regular {array 36 { 0 3 } 0 1 }  }
	{ input_s int 16 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_buf_2_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_buf_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_buf_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_buf_1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_buf_1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_buf_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_buf_0_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_buf_0_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_buf_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_s", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_s_dout sc_in sc_lv 16 signal 9 } 
	{ input_s_empty_n sc_in sc_logic 1 signal 9 } 
	{ input_s_read sc_out sc_logic 1 signal 9 } 
	{ input_s_num_data_valid sc_in sc_lv 9 signal 9 } 
	{ input_s_fifo_cap sc_in sc_lv 9 signal 9 } 
	{ input_buf_2_2_address0 sc_out sc_lv 6 signal 0 } 
	{ input_buf_2_2_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_buf_2_2_we0 sc_out sc_logic 1 signal 0 } 
	{ input_buf_2_2_d0 sc_out sc_lv 16 signal 0 } 
	{ input_buf_2_1_address0 sc_out sc_lv 6 signal 1 } 
	{ input_buf_2_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_buf_2_1_we0 sc_out sc_logic 1 signal 1 } 
	{ input_buf_2_1_d0 sc_out sc_lv 16 signal 1 } 
	{ input_buf_2_0_address0 sc_out sc_lv 6 signal 2 } 
	{ input_buf_2_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_buf_2_0_we0 sc_out sc_logic 1 signal 2 } 
	{ input_buf_2_0_d0 sc_out sc_lv 16 signal 2 } 
	{ input_buf_1_2_address0 sc_out sc_lv 6 signal 3 } 
	{ input_buf_1_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_buf_1_2_we0 sc_out sc_logic 1 signal 3 } 
	{ input_buf_1_2_d0 sc_out sc_lv 16 signal 3 } 
	{ input_buf_1_1_address0 sc_out sc_lv 6 signal 4 } 
	{ input_buf_1_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_buf_1_1_we0 sc_out sc_logic 1 signal 4 } 
	{ input_buf_1_1_d0 sc_out sc_lv 16 signal 4 } 
	{ input_buf_1_0_address0 sc_out sc_lv 6 signal 5 } 
	{ input_buf_1_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ input_buf_1_0_we0 sc_out sc_logic 1 signal 5 } 
	{ input_buf_1_0_d0 sc_out sc_lv 16 signal 5 } 
	{ input_buf_0_2_address0 sc_out sc_lv 6 signal 6 } 
	{ input_buf_0_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ input_buf_0_2_we0 sc_out sc_logic 1 signal 6 } 
	{ input_buf_0_2_d0 sc_out sc_lv 16 signal 6 } 
	{ input_buf_0_1_address0 sc_out sc_lv 6 signal 7 } 
	{ input_buf_0_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_buf_0_1_we0 sc_out sc_logic 1 signal 7 } 
	{ input_buf_0_1_d0 sc_out sc_lv 16 signal 7 } 
	{ input_buf_0_0_address0 sc_out sc_lv 6 signal 8 } 
	{ input_buf_0_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ input_buf_0_0_we0 sc_out sc_logic 1 signal 8 } 
	{ input_buf_0_0_d0 sc_out sc_lv 16 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_s", "role": "dout" }} , 
 	{ "name": "input_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_s", "role": "empty_n" }} , 
 	{ "name": "input_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_s", "role": "read" }} , 
 	{ "name": "input_s_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_s", "role": "num_data_valid" }} , 
 	{ "name": "input_s_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_s", "role": "fifo_cap" }} , 
 	{ "name": "input_buf_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_2_2", "role": "address0" }} , 
 	{ "name": "input_buf_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_2_2", "role": "ce0" }} , 
 	{ "name": "input_buf_2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_2_2", "role": "we0" }} , 
 	{ "name": "input_buf_2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_2_2", "role": "d0" }} , 
 	{ "name": "input_buf_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_2_1", "role": "address0" }} , 
 	{ "name": "input_buf_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_2_1", "role": "ce0" }} , 
 	{ "name": "input_buf_2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_2_1", "role": "we0" }} , 
 	{ "name": "input_buf_2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_2_1", "role": "d0" }} , 
 	{ "name": "input_buf_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_2_0", "role": "address0" }} , 
 	{ "name": "input_buf_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_2_0", "role": "ce0" }} , 
 	{ "name": "input_buf_2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_2_0", "role": "we0" }} , 
 	{ "name": "input_buf_2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_2_0", "role": "d0" }} , 
 	{ "name": "input_buf_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_1_2", "role": "address0" }} , 
 	{ "name": "input_buf_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_1_2", "role": "ce0" }} , 
 	{ "name": "input_buf_1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_1_2", "role": "we0" }} , 
 	{ "name": "input_buf_1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_1_2", "role": "d0" }} , 
 	{ "name": "input_buf_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_1_1", "role": "address0" }} , 
 	{ "name": "input_buf_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_1_1", "role": "ce0" }} , 
 	{ "name": "input_buf_1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_1_1", "role": "we0" }} , 
 	{ "name": "input_buf_1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_1_1", "role": "d0" }} , 
 	{ "name": "input_buf_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_1_0", "role": "address0" }} , 
 	{ "name": "input_buf_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_1_0", "role": "ce0" }} , 
 	{ "name": "input_buf_1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_1_0", "role": "we0" }} , 
 	{ "name": "input_buf_1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_1_0", "role": "d0" }} , 
 	{ "name": "input_buf_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_0_2", "role": "address0" }} , 
 	{ "name": "input_buf_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_0_2", "role": "ce0" }} , 
 	{ "name": "input_buf_0_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_0_2", "role": "we0" }} , 
 	{ "name": "input_buf_0_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_0_2", "role": "d0" }} , 
 	{ "name": "input_buf_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_0_1", "role": "address0" }} , 
 	{ "name": "input_buf_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_0_1", "role": "ce0" }} , 
 	{ "name": "input_buf_0_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_0_1", "role": "we0" }} , 
 	{ "name": "input_buf_0_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_0_1", "role": "d0" }} , 
 	{ "name": "input_buf_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_buf_0_0", "role": "address0" }} , 
 	{ "name": "input_buf_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_0_0", "role": "ce0" }} , 
 	{ "name": "input_buf_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_0_0", "role": "we0" }} , 
 	{ "name": "input_buf_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf_0_0", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	prepare_input_buf_func_2_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5 {
		input_buf_2_2 {Type O LastRead -1 FirstWrite 8}
		input_buf_2_1 {Type O LastRead -1 FirstWrite 8}
		input_buf_2_0 {Type O LastRead -1 FirstWrite 8}
		input_buf_1_2 {Type O LastRead -1 FirstWrite 8}
		input_buf_1_1 {Type O LastRead -1 FirstWrite 8}
		input_buf_1_0 {Type O LastRead -1 FirstWrite 8}
		input_buf_0_2 {Type O LastRead -1 FirstWrite 8}
		input_buf_0_1 {Type O LastRead -1 FirstWrite 8}
		input_buf_0_0 {Type O LastRead -1 FirstWrite 8}
		input_s {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "265", "Max" : "265"}
	, {"Name" : "Interval", "Min" : "265", "Max" : "265"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_buf_2_2 { ap_memory {  { input_buf_2_2_address0 mem_address 1 6 }  { input_buf_2_2_ce0 mem_ce 1 1 }  { input_buf_2_2_we0 mem_we 1 1 }  { input_buf_2_2_d0 mem_din 1 16 } } }
	input_buf_2_1 { ap_memory {  { input_buf_2_1_address0 mem_address 1 6 }  { input_buf_2_1_ce0 mem_ce 1 1 }  { input_buf_2_1_we0 mem_we 1 1 }  { input_buf_2_1_d0 mem_din 1 16 } } }
	input_buf_2_0 { ap_memory {  { input_buf_2_0_address0 mem_address 1 6 }  { input_buf_2_0_ce0 mem_ce 1 1 }  { input_buf_2_0_we0 mem_we 1 1 }  { input_buf_2_0_d0 mem_din 1 16 } } }
	input_buf_1_2 { ap_memory {  { input_buf_1_2_address0 mem_address 1 6 }  { input_buf_1_2_ce0 mem_ce 1 1 }  { input_buf_1_2_we0 mem_we 1 1 }  { input_buf_1_2_d0 mem_din 1 16 } } }
	input_buf_1_1 { ap_memory {  { input_buf_1_1_address0 mem_address 1 6 }  { input_buf_1_1_ce0 mem_ce 1 1 }  { input_buf_1_1_we0 mem_we 1 1 }  { input_buf_1_1_d0 mem_din 1 16 } } }
	input_buf_1_0 { ap_memory {  { input_buf_1_0_address0 mem_address 1 6 }  { input_buf_1_0_ce0 mem_ce 1 1 }  { input_buf_1_0_we0 mem_we 1 1 }  { input_buf_1_0_d0 mem_din 1 16 } } }
	input_buf_0_2 { ap_memory {  { input_buf_0_2_address0 mem_address 1 6 }  { input_buf_0_2_ce0 mem_ce 1 1 }  { input_buf_0_2_we0 mem_we 1 1 }  { input_buf_0_2_d0 mem_din 1 16 } } }
	input_buf_0_1 { ap_memory {  { input_buf_0_1_address0 mem_address 1 6 }  { input_buf_0_1_ce0 mem_ce 1 1 }  { input_buf_0_1_we0 mem_we 1 1 }  { input_buf_0_1_d0 mem_din 1 16 } } }
	input_buf_0_0 { ap_memory {  { input_buf_0_0_address0 mem_address 1 6 }  { input_buf_0_0_ce0 mem_ce 1 1 }  { input_buf_0_0_we0 mem_we 1 1 }  { input_buf_0_0_d0 mem_din 1 16 } } }
	input_s { ap_fifo {  { input_s_dout fifo_data_in 0 16 }  { input_s_empty_n fifo_status 0 1 }  { input_s_read fifo_port_we 1 1 }  { input_s_num_data_valid fifo_status_num_data_valid 0 9 }  { input_s_fifo_cap fifo_update 0 9 } } }
}
