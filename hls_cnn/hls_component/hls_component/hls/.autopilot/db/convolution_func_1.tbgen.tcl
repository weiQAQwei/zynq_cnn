set moduleName convolution_func_1
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
set C_modelName {convolution_func.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_buf { MEM_WIDTH 16 MEM_SIZE 20736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict local_weights { MEM_WIDTH 16 MEM_SIZE 18432 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict local_bias { MEM_WIDTH 16 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_buf { MEM_WIDTH 15 MEM_SIZE 16384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ input_buf int 16 regular {array 10368 { 1 3 } 1 1 }  }
	{ local_weights int 16 regular {array 9216 { 1 3 } 1 1 }  }
	{ local_bias int 16 regular {array 32 { 1 3 } 1 1 }  }
	{ output_buf int 15 regular {array 8192 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_buf", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_weights", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_bias", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_buf", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_buf_address0 sc_out sc_lv 14 signal 0 } 
	{ input_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_buf_q0 sc_in sc_lv 16 signal 0 } 
	{ local_weights_address0 sc_out sc_lv 14 signal 1 } 
	{ local_weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_weights_q0 sc_in sc_lv 16 signal 1 } 
	{ local_bias_address0 sc_out sc_lv 5 signal 2 } 
	{ local_bias_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_bias_q0 sc_in sc_lv 16 signal 2 } 
	{ output_buf_address0 sc_out sc_lv 13 signal 3 } 
	{ output_buf_ce0 sc_out sc_logic 1 signal 3 } 
	{ output_buf_we0 sc_out sc_logic 1 signal 3 } 
	{ output_buf_d0 sc_out sc_lv 15 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_buf", "role": "address0" }} , 
 	{ "name": "input_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf", "role": "ce0" }} , 
 	{ "name": "input_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_buf", "role": "q0" }} , 
 	{ "name": "local_weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "local_weights", "role": "address0" }} , 
 	{ "name": "local_weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_weights", "role": "ce0" }} , 
 	{ "name": "local_weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_weights", "role": "q0" }} , 
 	{ "name": "local_bias_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_bias", "role": "address0" }} , 
 	{ "name": "local_bias_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_bias", "role": "ce0" }} , 
 	{ "name": "local_bias_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_bias", "role": "q0" }} , 
 	{ "name": "output_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "output_buf", "role": "address0" }} , 
 	{ "name": "output_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_buf", "role": "ce0" }} , 
 	{ "name": "output_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_buf", "role": "we0" }} , 
 	{ "name": "output_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "output_buf", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	convolution_func_1 {
		input_buf {Type I LastRead 4 FirstWrite -1}
		local_weights {Type I LastRead 4 FirstWrite -1}
		local_bias {Type I LastRead 6 FirstWrite -1}
		output_buf {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2359304", "Max" : "2359304"}
	, {"Name" : "Interval", "Min" : "2359304", "Max" : "2359304"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_buf { ap_memory {  { input_buf_address0 mem_address 1 14 }  { input_buf_ce0 mem_ce 1 1 }  { input_buf_q0 mem_dout 0 16 } } }
	local_weights { ap_memory {  { local_weights_address0 mem_address 1 14 }  { local_weights_ce0 mem_ce 1 1 }  { local_weights_q0 mem_dout 0 16 } } }
	local_bias { ap_memory {  { local_bias_address0 mem_address 1 5 }  { local_bias_ce0 mem_ce 1 1 }  { local_bias_q0 mem_dout 0 16 } } }
	output_buf { ap_memory {  { output_buf_address0 mem_address 1 13 }  { output_buf_ce0 mem_ce 1 1 }  { output_buf_we0 mem_we 1 1 }  { output_buf_d0 mem_din 1 15 } } }
}
