set moduleName prepare_input_buf_func_1_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_s
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
set C_modelName {prepare_input_buf_func.1_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_buf { MEM_WIDTH 16 MEM_SIZE 20736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ conv1_out int 16 regular {fifo 0 volatile }  }
	{ input_buf int 16 regular {array 10368 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "conv1_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_buf", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv1_out_dout sc_in sc_lv 16 signal 0 } 
	{ conv1_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv1_out_read sc_out sc_logic 1 signal 0 } 
	{ conv1_out_num_data_valid sc_in sc_lv 14 signal 0 } 
	{ conv1_out_fifo_cap sc_in sc_lv 14 signal 0 } 
	{ input_buf_address0 sc_out sc_lv 14 signal 1 } 
	{ input_buf_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_buf_we0 sc_out sc_logic 1 signal 1 } 
	{ input_buf_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv1_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv1_out", "role": "dout" }} , 
 	{ "name": "conv1_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_out", "role": "empty_n" }} , 
 	{ "name": "conv1_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_out", "role": "read" }} , 
 	{ "name": "conv1_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "conv1_out", "role": "num_data_valid" }} , 
 	{ "name": "conv1_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "conv1_out", "role": "fifo_cap" }} , 
 	{ "name": "input_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_buf", "role": "address0" }} , 
 	{ "name": "input_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf", "role": "ce0" }} , 
 	{ "name": "input_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf", "role": "we0" }} , 
 	{ "name": "input_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	prepare_input_buf_func_1_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_s {
		conv1_out {Type I LastRead 2 FirstWrite -1}
		input_buf {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24578", "Max" : "24578"}
	, {"Name" : "Interval", "Min" : "24578", "Max" : "24578"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv1_out { ap_fifo {  { conv1_out_dout fifo_data_in 0 16 }  { conv1_out_empty_n fifo_status 0 1 }  { conv1_out_read fifo_port_we 1 1 }  { conv1_out_num_data_valid fifo_status_num_data_valid 0 14 }  { conv1_out_fifo_cap fifo_update 0 14 } } }
	input_buf { ap_memory {  { input_buf_address0 mem_address 1 14 }  { input_buf_ce0 mem_ce 1 1 }  { input_buf_we0 mem_we 1 1 }  { input_buf_d0 mem_din 1 16 } } }
}
