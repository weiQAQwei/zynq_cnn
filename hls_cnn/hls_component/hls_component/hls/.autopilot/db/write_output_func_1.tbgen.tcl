set moduleName write_output_func_1
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
set C_modelName {write_output_func.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict output_buf { MEM_WIDTH 15 MEM_SIZE 16384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ output_buf int 15 regular {array 8192 { 1 3 } 1 1 }  }
	{ conv2_out int 16 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "output_buf", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv2_out_din sc_out sc_lv 16 signal 1 } 
	{ conv2_out_full_n sc_in sc_logic 1 signal 1 } 
	{ conv2_out_write sc_out sc_logic 1 signal 1 } 
	{ conv2_out_num_data_valid sc_in sc_lv 14 signal 1 } 
	{ conv2_out_fifo_cap sc_in sc_lv 14 signal 1 } 
	{ output_buf_address0 sc_out sc_lv 13 signal 0 } 
	{ output_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_buf_q0 sc_in sc_lv 15 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv2_out", "role": "din" }} , 
 	{ "name": "conv2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out", "role": "full_n" }} , 
 	{ "name": "conv2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out", "role": "write" }} , 
 	{ "name": "conv2_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "conv2_out", "role": "num_data_valid" }} , 
 	{ "name": "conv2_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "conv2_out", "role": "fifo_cap" }} , 
 	{ "name": "output_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "output_buf", "role": "address0" }} , 
 	{ "name": "output_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_buf", "role": "ce0" }} , 
 	{ "name": "output_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "output_buf", "role": "q0" }}  ]}

set ArgLastReadFirstWriteLatency {
	write_output_func_1 {
		output_buf {Type I LastRead 1 FirstWrite -1}
		conv2_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24578", "Max" : "24578"}
	, {"Name" : "Interval", "Min" : "24578", "Max" : "24578"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_buf { ap_memory {  { output_buf_address0 mem_address 1 13 }  { output_buf_ce0 mem_ce 1 1 }  { output_buf_q0 mem_dout 0 15 } } }
	conv2_out { ap_fifo {  { conv2_out_din fifo_data_in 1 16 }  { conv2_out_full_n fifo_status 0 1 }  { conv2_out_write fifo_port_we 1 1 }  { conv2_out_num_data_valid fifo_status_num_data_valid 0 14 }  { conv2_out_fifo_cap fifo_update 0 14 } } }
}
