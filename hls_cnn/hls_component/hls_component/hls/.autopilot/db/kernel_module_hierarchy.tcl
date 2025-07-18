set ModuleHierarchy {[{
"Name" : "cnn_top", "RefName" : "cnn_top","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0", "RefName" : "entry_proc","ID" : "1","Type" : "sequential"},
	{"Name" : "read_input_top_U0", "RefName" : "read_input_top","ID" : "2","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_184_1","RefName" : "VITIS_LOOP_184_1","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "compute_4_U0", "RefName" : "compute_4","ID" : "4","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_load_params_func_2_fu_138", "RefName" : "load_params_func_2","ID" : "5","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_load_params_func_2_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_30_3_VITIS_LOOP_31_4_fu_90", "RefName" : "load_params_func_2_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_30_3_VITIS_LOOP_31_4","ID" : "6","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_26_1_VITIS_LOOP_30_3_VITIS_LOOP_31_4","RefName" : "VITIS_LOOP_26_1_VITIS_LOOP_30_3_VITIS_LOOP_31_4","ID" : "7","Type" : "pipeline"},]},
			{"Name" : "grp_load_params_func_2_Pipeline_VITIS_LOOP_40_5_fu_115", "RefName" : "load_params_func_2_Pipeline_VITIS_LOOP_40_5","ID" : "8","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_40_5","RefName" : "VITIS_LOOP_40_5","ID" : "9","Type" : "pipeline"},]},]},
		{"Name" : "grp_prepare_input_buf_func_2_fu_170", "RefName" : "prepare_input_buf_func_2","ID" : "10","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_prepare_input_buf_func_2_Pipeline_VITIS_LOOP_51_2_VITIS_LOOP_52_3_fu_34", "RefName" : "prepare_input_buf_func_2_Pipeline_VITIS_LOOP_51_2_VITIS_LOOP_52_3","ID" : "11","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_51_2_VITIS_LOOP_52_3","RefName" : "VITIS_LOOP_51_2_VITIS_LOOP_52_3","ID" : "12","Type" : "pipeline"},]},
			{"Name" : "grp_prepare_input_buf_func_2_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_fu_56", "RefName" : "prepare_input_buf_func_2_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5","ID" : "13","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_59_4_VITIS_LOOP_61_5","RefName" : "VITIS_LOOP_59_4_VITIS_LOOP_61_5","ID" : "14","Type" : "pipeline"},]},]},
		{"Name" : "grp_convolution_func_2_fu_194", "RefName" : "convolution_func_2","ID" : "15","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_77_1","RefName" : "VITIS_LOOP_77_1","ID" : "16","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_79_2","RefName" : "VITIS_LOOP_79_2","ID" : "17","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_convolution_func_2_Pipeline_VITIS_LOOP_81_3_fu_254", "RefName" : "convolution_func_2_Pipeline_VITIS_LOOP_81_3","ID" : "18","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_81_3","RefName" : "VITIS_LOOP_81_3","ID" : "19","Type" : "pipeline"},]},]},]},]},
		{"Name" : "grp_write_output_func_2_fu_218", "RefName" : "write_output_func_2","ID" : "20","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_103_1_VITIS_LOOP_105_2_VITIS_LOOP_106_3","RefName" : "VITIS_LOOP_103_1_VITIS_LOOP_105_2_VITIS_LOOP_106_3","ID" : "21","Type" : "pipeline"},]},]},
	{"Name" : "compute_3_U0", "RefName" : "compute_3","ID" : "22","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_load_params_func_1_fu_74", "RefName" : "load_params_func_1","ID" : "23","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_load_params_func_1_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITI_fu_74", "RefName" : "load_params_func_1_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITI","ID" : "24","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITIS_LOOP_31_4","RefName" : "VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITIS_LOOP_31_4","ID" : "25","Type" : "pipeline"},]},
			{"Name" : "grp_load_params_func_1_Pipeline_VITIS_LOOP_40_5_fu_83", "RefName" : "load_params_func_1_Pipeline_VITIS_LOOP_40_5","ID" : "26","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_40_5","RefName" : "VITIS_LOOP_40_5","ID" : "27","Type" : "pipeline"},]},]},
		{"Name" : "grp_prepare_input_buf_func_1_fu_90", "RefName" : "prepare_input_buf_func_1","ID" : "28","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_prepare_input_buf_func_1_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_s_fu_18", "RefName" : "prepare_input_buf_func_1_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_s","ID" : "29","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3","RefName" : "VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3","ID" : "30","Type" : "pipeline"},]},
			{"Name" : "grp_prepare_input_buf_func_1_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_s_fu_24", "RefName" : "prepare_input_buf_func_1_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_s","ID" : "31","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_6","RefName" : "VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_6","ID" : "32","Type" : "pipeline"},]},]},
		{"Name" : "grp_convolution_func_1_fu_98", "RefName" : "convolution_func_1","ID" : "33","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_77_1_VITIS_LOOP_79_2_VITIS_LOOP_81_3_VITIS_LOOP_84_4_VITIS_LOOP_86_5_VITIS_LOOP_87_6","RefName" : "VITIS_LOOP_77_1_VITIS_LOOP_79_2_VITIS_LOOP_81_3_VITIS_LOOP_84_4_VITIS_LOOP_86_5_VITIS_LOOP_87_6","ID" : "34","Type" : "pipeline"},]},
		{"Name" : "grp_write_output_func_1_fu_106", "RefName" : "write_output_func_1","ID" : "35","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_103_1_VITIS_LOOP_105_2_VITIS_LOOP_106_3","RefName" : "VITIS_LOOP_103_1_VITIS_LOOP_105_2_VITIS_LOOP_106_3","ID" : "36","Type" : "pipeline"},]},]},
	{"Name" : "compute_1_U0", "RefName" : "compute_1","ID" : "37","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_read_input_func_1_fu_24", "RefName" : "read_input_func_1","ID" : "38","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_143_1_VITIS_LOOP_145_2_VITIS_LOOP_146_3","RefName" : "VITIS_LOOP_143_1_VITIS_LOOP_145_2_VITIS_LOOP_146_3","ID" : "39","Type" : "pipeline"},]},
		{"Name" : "grp_pooling_func_1_fu_32", "RefName" : "pooling_func_1","ID" : "40","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_155_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3","RefName" : "VITIS_LOOP_155_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3","ID" : "41","Type" : "pipeline"},]},]},
	{"Name" : "compute_2_U0", "RefName" : "compute_2","ID" : "42","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_load_params_func_fu_74", "RefName" : "load_params_func","ID" : "43","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_load_params_func_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITIS_s_fu_74", "RefName" : "load_params_func_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITIS_s","ID" : "44","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITIS_LOOP_31_4","RefName" : "VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITIS_LOOP_31_4","ID" : "45","Type" : "pipeline"},]},
			{"Name" : "grp_load_params_func_Pipeline_VITIS_LOOP_40_5_fu_83", "RefName" : "load_params_func_Pipeline_VITIS_LOOP_40_5","ID" : "46","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_40_5","RefName" : "VITIS_LOOP_40_5","ID" : "47","Type" : "pipeline"},]},]},
		{"Name" : "grp_prepare_input_buf_func_fu_90", "RefName" : "prepare_input_buf_func","ID" : "48","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_prepare_input_buf_func_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3_fu_18", "RefName" : "prepare_input_buf_func_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3","ID" : "49","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3","RefName" : "VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3","ID" : "50","Type" : "pipeline"},]},
			{"Name" : "grp_prepare_input_buf_func_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_6_fu_24", "RefName" : "prepare_input_buf_func_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_6","ID" : "51","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_6","RefName" : "VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_6","ID" : "52","Type" : "pipeline"},]},]},
		{"Name" : "grp_convolution_func_fu_98", "RefName" : "convolution_func","ID" : "53","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_77_1_VITIS_LOOP_79_2_VITIS_LOOP_81_3_VITIS_LOOP_84_4_VITIS_LOOP_86_5_VITIS_LOOP_87_6","RefName" : "VITIS_LOOP_77_1_VITIS_LOOP_79_2_VITIS_LOOP_81_3_VITIS_LOOP_84_4_VITIS_LOOP_86_5_VITIS_LOOP_87_6","ID" : "54","Type" : "pipeline"},]},
		{"Name" : "grp_write_output_func_fu_106", "RefName" : "write_output_func","ID" : "55","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_103_1_VITIS_LOOP_105_2_VITIS_LOOP_106_3","RefName" : "VITIS_LOOP_103_1_VITIS_LOOP_105_2_VITIS_LOOP_106_3","ID" : "56","Type" : "pipeline"},]},]},
	{"Name" : "compute_U0", "RefName" : "compute","ID" : "57","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_read_input_func_fu_24", "RefName" : "read_input_func","ID" : "58","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_143_1_VITIS_LOOP_145_2_VITIS_LOOP_146_3","RefName" : "VITIS_LOOP_143_1_VITIS_LOOP_145_2_VITIS_LOOP_146_3","ID" : "59","Type" : "pipeline"},]},
		{"Name" : "grp_pooling_func_fu_32", "RefName" : "pooling_func","ID" : "60","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_155_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3","RefName" : "VITIS_LOOP_155_1_VITIS_LOOP_157_2_VITIS_LOOP_158_3","ID" : "61","Type" : "pipeline"},]},]},
	{"Name" : "Block_entry_gmem1_wr_proc_U0", "RefName" : "Block_entry_gmem1_wr_proc","ID" : "62","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_write_output_top_fu_83", "RefName" : "write_output_top","ID" : "63","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_write_output_top_Pipeline_VITIS_LOOP_192_1_fu_60", "RefName" : "write_output_top_Pipeline_VITIS_LOOP_192_1","ID" : "64","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_192_1","RefName" : "VITIS_LOOP_192_1","ID" : "65","Type" : "pipeline"},]},]},]},]
}]}