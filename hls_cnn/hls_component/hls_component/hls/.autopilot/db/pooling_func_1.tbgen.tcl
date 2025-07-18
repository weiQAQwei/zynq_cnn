set moduleName pooling_func_1
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
set C_modelName {pooling_func.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_buf { MEM_WIDTH 16 MEM_SIZE 16384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ input_buf int 16 regular {array 8192 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pool1_out int 16 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_buf", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "pool1_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pool1_out_din sc_out sc_lv 16 signal 1 } 
	{ pool1_out_full_n sc_in sc_logic 1 signal 1 } 
	{ pool1_out_write sc_out sc_logic 1 signal 1 } 
	{ pool1_out_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ pool1_out_fifo_cap sc_in sc_lv 32 signal 1 } 
	{ input_buf_address0 sc_out sc_lv 13 signal 0 } 
	{ input_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_buf_q0 sc_in sc_lv 16 signal 0 } 
	{ input_buf_address1 sc_out sc_lv 13 signal 0 } 
	{ input_buf_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_buf_q1 sc_in sc_lv 16 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pool1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pool1_out", "role": "din" }} , 
 	{ "name": "pool1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "full_n" }} , 
 	{ "name": "pool1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "write" }} , 
 	{ "name": "pool1_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_out", "role": "num_data_valid" }} , 
 	{ "name": "pool1_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_out", "role": "fifo_cap" }} , 
 	{ "name": "input_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "input_buf", "role": "address0" }} , 
 	{ "name": "input_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf", "role": "ce0" }} , 
 	{ "name": "input_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf", "role": "q0" }} , 
 	{ "name": "input_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "input_buf", "role": "address1" }} , 
 	{ "name": "input_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf", "role": "ce1" }} , 
 	{ "name": "input_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf", "role": "q1" }}  ]}

set ArgLastReadFirstWriteLatency {
	pooling_func_1 {
		input_buf {Type I LastRead 3 FirstWrite -1}
		pool1_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8194", "Max" : "8194"}
	, {"Name" : "Interval", "Min" : "8194", "Max" : "8194"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_buf { ap_memory {  { input_buf_address0 mem_address 1 13 }  { input_buf_ce0 mem_ce 1 1 }  { input_buf_q0 mem_dout 0 16 }  { input_buf_address1 MemPortADDR2 1 13 }  { input_buf_ce1 MemPortCE2 1 1 }  { input_buf_q1 MemPortDOUT2 0 16 } } }
	pool1_out { ap_fifo {  { pool1_out_din fifo_data_in 1 16 }  { pool1_out_full_n fifo_status 0 1 }  { pool1_out_write fifo_port_we 1 1 }  { pool1_out_num_data_valid fifo_status_num_data_valid 0 32 }  { pool1_out_fifo_cap fifo_update 0 32 } } }
}
