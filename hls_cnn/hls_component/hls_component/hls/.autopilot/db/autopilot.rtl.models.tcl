set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME cnn_top_entry_proc}
  {SRCNAME read_input_top MODELNAME read_input_top RTLNAME cnn_top_read_input_top
    SUBMODULES {
      {MODELNAME cnn_top_flow_control_loop_pipe RTLNAME cnn_top_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_top_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME load_params_func.2_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_30_3_VITIS_LOOP_31_4 MODELNAME load_params_func_2_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_30_3_VITIS_LOOP_31_4 RTLNAME cnn_top_load_params_func_2_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_30_3_VITIS_LOOP_31_4
    SUBMODULES {
      {MODELNAME cnn_top_flow_control_loop_pipe_sequential_init RTLNAME cnn_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME load_params_func.2_Pipeline_VITIS_LOOP_40_5 MODELNAME load_params_func_2_Pipeline_VITIS_LOOP_40_5 RTLNAME cnn_top_load_params_func_2_Pipeline_VITIS_LOOP_40_5}
  {SRCNAME load_params_func.2 MODELNAME load_params_func_2 RTLNAME cnn_top_load_params_func_2}
  {SRCNAME prepare_input_buf_func.2_Pipeline_VITIS_LOOP_51_2_VITIS_LOOP_52_3 MODELNAME prepare_input_buf_func_2_Pipeline_VITIS_LOOP_51_2_VITIS_LOOP_52_3 RTLNAME cnn_top_prepare_input_buf_func_2_Pipeline_VITIS_LOOP_51_2_VITIS_LOOP_52_3
    SUBMODULES {
      {MODELNAME cnn_top_urem_5ns_3ns_2_9_1 RTLNAME cnn_top_urem_5ns_3ns_2_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_mul_5ns_7ns_11_1_1 RTLNAME cnn_top_mul_5ns_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME prepare_input_buf_func.2_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5 MODELNAME prepare_input_buf_func_2_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5 RTLNAME cnn_top_prepare_input_buf_func_2_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5}
  {SRCNAME prepare_input_buf_func.2 MODELNAME prepare_input_buf_func_2 RTLNAME cnn_top_prepare_input_buf_func_2}
  {SRCNAME convolution_func.2_Pipeline_VITIS_LOOP_81_3 MODELNAME convolution_func_2_Pipeline_VITIS_LOOP_81_3 RTLNAME cnn_top_convolution_func_2_Pipeline_VITIS_LOOP_81_3
    SUBMODULES {
      {MODELNAME cnn_top_sparsemux_7_2_16_1_1 RTLNAME cnn_top_sparsemux_7_2_16_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME cnn_top_mul_4ns_6ns_9_1_1 RTLNAME cnn_top_mul_4ns_6ns_9_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_mul_16s_16s_28_1_1 RTLNAME cnn_top_mul_16s_16s_28_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_mac_muladd_16s_16s_28s_28_4_1 RTLNAME cnn_top_mac_muladd_16s_16s_28s_28_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME cnn_top_mac_muladd_16s_16s_28ns_28_4_1 RTLNAME cnn_top_mac_muladd_16s_16s_28ns_28_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME convolution_func.2 MODELNAME convolution_func_2 RTLNAME cnn_top_convolution_func_2
    SUBMODULES {
      {MODELNAME cnn_top_urem_4ns_3ns_2_8_seq_1 RTLNAME cnn_top_urem_4ns_3ns_2_8_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_am_addmul_4ns_2ns_6ns_11_4_1 RTLNAME cnn_top_am_addmul_4ns_2ns_6ns_11_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME write_output_func.2 MODELNAME write_output_func_2 RTLNAME cnn_top_write_output_func_2}
  {SRCNAME compute.4 MODELNAME compute_4 RTLNAME cnn_top_compute_4
    SUBMODULES {
      {MODELNAME cnn_top_compute_4_input_buf_RAM_AUTO_1R1W RTLNAME cnn_top_compute_4_input_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_compute_4_output_buf_RAM_AUTO_1R1W RTLNAME cnn_top_compute_4_output_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_compute_4_local_weights_RAM_AUTO_1R1W RTLNAME cnn_top_compute_4_local_weights_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME load_params_func.1_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITI MODELNAME load_params_func_1_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITI RTLNAME cnn_top_load_params_func_1_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITI}
  {SRCNAME load_params_func.1_Pipeline_VITIS_LOOP_40_5 MODELNAME load_params_func_1_Pipeline_VITIS_LOOP_40_5 RTLNAME cnn_top_load_params_func_1_Pipeline_VITIS_LOOP_40_5}
  {SRCNAME load_params_func.1 MODELNAME load_params_func_1 RTLNAME cnn_top_load_params_func_1}
  {SRCNAME prepare_input_buf_func.1_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_ MODELNAME prepare_input_buf_func_1_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_s RTLNAME cnn_top_prepare_input_buf_func_1_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_s}
  {SRCNAME prepare_input_buf_func.1_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_ MODELNAME prepare_input_buf_func_1_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_s RTLNAME cnn_top_prepare_input_buf_func_1_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_s}
  {SRCNAME prepare_input_buf_func.1 MODELNAME prepare_input_buf_func_1 RTLNAME cnn_top_prepare_input_buf_func_1}
  {SRCNAME convolution_func.1 MODELNAME convolution_func_1 RTLNAME cnn_top_convolution_func_1
    SUBMODULES {
      {MODELNAME cnn_top_mac_muladd_16s_16s_32ns_32_4_1 RTLNAME cnn_top_mac_muladd_16s_16s_32ns_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME write_output_func.1 MODELNAME write_output_func_1 RTLNAME cnn_top_write_output_func_1}
  {SRCNAME compute.3 MODELNAME compute_3 RTLNAME cnn_top_compute_3
    SUBMODULES {
      {MODELNAME cnn_top_compute_3_input_buf_RAM_AUTO_1R1W RTLNAME cnn_top_compute_3_input_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_compute_3_output_buf_RAM_AUTO_1R1W RTLNAME cnn_top_compute_3_output_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_compute_3_local_weights_RAM_AUTO_1R1W RTLNAME cnn_top_compute_3_local_weights_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_compute_3_local_bias_RAM_AUTO_1R1W RTLNAME cnn_top_compute_3_local_bias_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME read_input_func.1 MODELNAME read_input_func_1 RTLNAME cnn_top_read_input_func_1}
  {SRCNAME pooling_func.1 MODELNAME pooling_func_1 RTLNAME cnn_top_pooling_func_1}
  {SRCNAME compute.1 MODELNAME compute_1 RTLNAME cnn_top_compute_1
    SUBMODULES {
      {MODELNAME cnn_top_compute_1_input_buf_RAM_1WNR_AUTO_1R1W RTLNAME cnn_top_compute_1_input_buf_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME load_params_func_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITIS_ MODELNAME load_params_func_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITIS_s RTLNAME cnn_top_load_params_func_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_28_2_VITIS_LOOP_30_3_VITIS_s}
  {SRCNAME load_params_func_Pipeline_VITIS_LOOP_40_5 MODELNAME load_params_func_Pipeline_VITIS_LOOP_40_5 RTLNAME cnn_top_load_params_func_Pipeline_VITIS_LOOP_40_5}
  {SRCNAME load_params_func MODELNAME load_params_func RTLNAME cnn_top_load_params_func}
  {SRCNAME prepare_input_buf_func_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3 MODELNAME prepare_input_buf_func_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3 RTLNAME cnn_top_prepare_input_buf_func_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3}
  {SRCNAME prepare_input_buf_func_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_6 MODELNAME prepare_input_buf_func_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_6 RTLNAME cnn_top_prepare_input_buf_func_Pipeline_VITIS_LOOP_59_4_VITIS_LOOP_61_5_VITIS_LOOP_62_6}
  {SRCNAME prepare_input_buf_func MODELNAME prepare_input_buf_func RTLNAME cnn_top_prepare_input_buf_func}
  {SRCNAME convolution_func MODELNAME convolution_func RTLNAME cnn_top_convolution_func}
  {SRCNAME write_output_func MODELNAME write_output_func RTLNAME cnn_top_write_output_func}
  {SRCNAME compute.2 MODELNAME compute_2 RTLNAME cnn_top_compute_2
    SUBMODULES {
      {MODELNAME cnn_top_compute_2_input_buf_RAM_AUTO_1R1W RTLNAME cnn_top_compute_2_input_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_compute_2_output_buf_RAM_AUTO_1R1W RTLNAME cnn_top_compute_2_output_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_compute_2_local_weights_RAM_AUTO_1R1W RTLNAME cnn_top_compute_2_local_weights_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_compute_2_local_bias_RAM_AUTO_1R1W RTLNAME cnn_top_compute_2_local_bias_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME read_input_func MODELNAME read_input_func RTLNAME cnn_top_read_input_func}
  {SRCNAME pooling_func MODELNAME pooling_func RTLNAME cnn_top_pooling_func}
  {SRCNAME compute MODELNAME compute RTLNAME cnn_top_compute
    SUBMODULES {
      {MODELNAME cnn_top_compute_input_buf_RAM_1WNR_AUTO_1R1W RTLNAME cnn_top_compute_input_buf_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME write_output_top_Pipeline_VITIS_LOOP_192_1 MODELNAME write_output_top_Pipeline_VITIS_LOOP_192_1 RTLNAME cnn_top_write_output_top_Pipeline_VITIS_LOOP_192_1}
  {SRCNAME write_output_top MODELNAME write_output_top RTLNAME cnn_top_write_output_top}
  {SRCNAME Block_entry_gmem1_wr_proc MODELNAME Block_entry_gmem1_wr_proc RTLNAME cnn_top_Block_entry_gmem1_wr_proc}
  {SRCNAME cnn_top MODELNAME cnn_top RTLNAME cnn_top IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_top_fifo_w32_d8_S RTLNAME cnn_top_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME output_r_c_U}
      {MODELNAME cnn_top_fifo_w16_d256_A RTLNAME cnn_top_fifo_w16_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME input_s_U}
      {MODELNAME cnn_top_fifo_w16_d8192_A RTLNAME cnn_top_fifo_w16_d8192_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME conv1_out_U}
      {MODELNAME cnn_top_fifo_w16_d8192_A RTLNAME cnn_top_fifo_w16_d8192_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME conv2_out_U}
      {MODELNAME cnn_top_fifo_w16_d2048_A RTLNAME cnn_top_fifo_w16_d2048_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pool1_out_U}
      {MODELNAME cnn_top_fifo_w16_d2048_A RTLNAME cnn_top_fifo_w16_d2048_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME conv3_out_U}
      {MODELNAME cnn_top_fifo_w16_d512_A RTLNAME cnn_top_fifo_w16_d512_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME output_s_U}
      {MODELNAME cnn_top_start_for_Block_entry_gmem1_wr_proc_U0 RTLNAME cnn_top_start_for_Block_entry_gmem1_wr_proc_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Block_entry_gmem1_wr_proc_U0_U}
      {MODELNAME cnn_top_start_for_compute_1_U0 RTLNAME cnn_top_start_for_compute_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_compute_1_U0_U}
      {MODELNAME cnn_top_start_for_compute_U0 RTLNAME cnn_top_start_for_compute_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_compute_U0_U}
      {MODELNAME cnn_top_gmem0_m_axi RTLNAME cnn_top_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_top_gmem1_m_axi RTLNAME cnn_top_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_top_gmem2_m_axi RTLNAME cnn_top_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_top_gmem3_m_axi RTLNAME cnn_top_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_top_gmem4_m_axi RTLNAME cnn_top_gmem4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_top_gmem5_m_axi RTLNAME cnn_top_gmem5_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_top_gmem6_m_axi RTLNAME cnn_top_gmem6_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_top_gmem7_m_axi RTLNAME cnn_top_gmem7_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_top_control_s_axi RTLNAME cnn_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
