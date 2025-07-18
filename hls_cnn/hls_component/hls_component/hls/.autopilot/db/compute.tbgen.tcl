set moduleName compute
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {compute}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ conv3_out int 16 regular {fifo 0 volatile }  }
	{ output_s int 16 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "conv3_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_s", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv3_out_dout sc_in sc_lv 16 signal 0 } 
	{ conv3_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv3_out_read sc_out sc_logic 1 signal 0 } 
	{ conv3_out_num_data_valid sc_in sc_lv 12 signal 0 } 
	{ conv3_out_fifo_cap sc_in sc_lv 12 signal 0 } 
	{ output_s_din sc_out sc_lv 16 signal 1 } 
	{ output_s_full_n sc_in sc_logic 1 signal 1 } 
	{ output_s_write sc_out sc_logic 1 signal 1 } 
	{ output_s_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ output_s_fifo_cap sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv3_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv3_out", "role": "dout" }} , 
 	{ "name": "conv3_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv3_out", "role": "empty_n" }} , 
 	{ "name": "conv3_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv3_out", "role": "read" }} , 
 	{ "name": "conv3_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "conv3_out", "role": "num_data_valid" }} , 
 	{ "name": "conv3_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "conv3_out", "role": "fifo_cap" }} , 
 	{ "name": "output_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_s", "role": "din" }} , 
 	{ "name": "output_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_s", "role": "full_n" }} , 
 	{ "name": "output_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_s", "role": "write" }} , 
 	{ "name": "output_s_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_s", "role": "num_data_valid" }} , 
 	{ "name": "output_s_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_s", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	compute {
		conv3_out {Type I LastRead 1 FirstWrite -1}
		output_s {Type O LastRead -1 FirstWrite 4}}
	read_input_func {
		conv3_out {Type I LastRead 1 FirstWrite -1}
		input_buf {Type O LastRead -1 FirstWrite 1}}
	pooling_func {
		input_buf {Type I LastRead 3 FirstWrite -1}
		output_s {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6151", "Max" : "6151"}
	, {"Name" : "Interval", "Min" : "6151", "Max" : "6151"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv3_out { ap_fifo {  { conv3_out_dout fifo_data_in 0 16 }  { conv3_out_empty_n fifo_status 0 1 }  { conv3_out_read fifo_port_we 1 1 }  { conv3_out_num_data_valid fifo_status_num_data_valid 0 12 }  { conv3_out_fifo_cap fifo_update 0 12 } } }
	output_s { ap_fifo {  { output_s_din fifo_data_in 1 16 }  { output_s_full_n fifo_status 0 1 }  { output_s_write fifo_port_we 1 1 }  { output_s_num_data_valid fifo_status_num_data_valid 0 32 }  { output_s_fifo_cap fifo_update 0 32 } } }
}
