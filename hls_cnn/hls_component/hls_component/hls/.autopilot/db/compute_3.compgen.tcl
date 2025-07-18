# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_top_compute_3_input_buf_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_top_compute_3_output_buf_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_top_compute_3_local_weights_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_top_compute_3_local_bias_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name gmem4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem4 \
    op interface \
    ports { m_axi_gmem4_0_AWVALID { O 1 bit } m_axi_gmem4_0_AWREADY { I 1 bit } m_axi_gmem4_0_AWADDR { O 32 vector } m_axi_gmem4_0_AWID { O 1 vector } m_axi_gmem4_0_AWLEN { O 32 vector } m_axi_gmem4_0_AWSIZE { O 3 vector } m_axi_gmem4_0_AWBURST { O 2 vector } m_axi_gmem4_0_AWLOCK { O 2 vector } m_axi_gmem4_0_AWCACHE { O 4 vector } m_axi_gmem4_0_AWPROT { O 3 vector } m_axi_gmem4_0_AWQOS { O 4 vector } m_axi_gmem4_0_AWREGION { O 4 vector } m_axi_gmem4_0_AWUSER { O 1 vector } m_axi_gmem4_0_WVALID { O 1 bit } m_axi_gmem4_0_WREADY { I 1 bit } m_axi_gmem4_0_WDATA { O 16 vector } m_axi_gmem4_0_WSTRB { O 2 vector } m_axi_gmem4_0_WLAST { O 1 bit } m_axi_gmem4_0_WID { O 1 vector } m_axi_gmem4_0_WUSER { O 1 vector } m_axi_gmem4_0_ARVALID { O 1 bit } m_axi_gmem4_0_ARREADY { I 1 bit } m_axi_gmem4_0_ARADDR { O 32 vector } m_axi_gmem4_0_ARID { O 1 vector } m_axi_gmem4_0_ARLEN { O 32 vector } m_axi_gmem4_0_ARSIZE { O 3 vector } m_axi_gmem4_0_ARBURST { O 2 vector } m_axi_gmem4_0_ARLOCK { O 2 vector } m_axi_gmem4_0_ARCACHE { O 4 vector } m_axi_gmem4_0_ARPROT { O 3 vector } m_axi_gmem4_0_ARQOS { O 4 vector } m_axi_gmem4_0_ARREGION { O 4 vector } m_axi_gmem4_0_ARUSER { O 1 vector } m_axi_gmem4_0_RVALID { I 1 bit } m_axi_gmem4_0_RREADY { O 1 bit } m_axi_gmem4_0_RDATA { I 16 vector } m_axi_gmem4_0_RLAST { I 1 bit } m_axi_gmem4_0_RID { I 1 vector } m_axi_gmem4_0_RFIFONUM { I 11 vector } m_axi_gmem4_0_RUSER { I 1 vector } m_axi_gmem4_0_RRESP { I 2 vector } m_axi_gmem4_0_BVALID { I 1 bit } m_axi_gmem4_0_BREADY { O 1 bit } m_axi_gmem4_0_BRESP { I 2 vector } m_axi_gmem4_0_BID { I 1 vector } m_axi_gmem4_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name this_weights \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_weights \
    op interface \
    ports { this_weights { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name gmem5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem5 \
    op interface \
    ports { m_axi_gmem5_0_AWVALID { O 1 bit } m_axi_gmem5_0_AWREADY { I 1 bit } m_axi_gmem5_0_AWADDR { O 32 vector } m_axi_gmem5_0_AWID { O 1 vector } m_axi_gmem5_0_AWLEN { O 32 vector } m_axi_gmem5_0_AWSIZE { O 3 vector } m_axi_gmem5_0_AWBURST { O 2 vector } m_axi_gmem5_0_AWLOCK { O 2 vector } m_axi_gmem5_0_AWCACHE { O 4 vector } m_axi_gmem5_0_AWPROT { O 3 vector } m_axi_gmem5_0_AWQOS { O 4 vector } m_axi_gmem5_0_AWREGION { O 4 vector } m_axi_gmem5_0_AWUSER { O 1 vector } m_axi_gmem5_0_WVALID { O 1 bit } m_axi_gmem5_0_WREADY { I 1 bit } m_axi_gmem5_0_WDATA { O 16 vector } m_axi_gmem5_0_WSTRB { O 2 vector } m_axi_gmem5_0_WLAST { O 1 bit } m_axi_gmem5_0_WID { O 1 vector } m_axi_gmem5_0_WUSER { O 1 vector } m_axi_gmem5_0_ARVALID { O 1 bit } m_axi_gmem5_0_ARREADY { I 1 bit } m_axi_gmem5_0_ARADDR { O 32 vector } m_axi_gmem5_0_ARID { O 1 vector } m_axi_gmem5_0_ARLEN { O 32 vector } m_axi_gmem5_0_ARSIZE { O 3 vector } m_axi_gmem5_0_ARBURST { O 2 vector } m_axi_gmem5_0_ARLOCK { O 2 vector } m_axi_gmem5_0_ARCACHE { O 4 vector } m_axi_gmem5_0_ARPROT { O 3 vector } m_axi_gmem5_0_ARQOS { O 4 vector } m_axi_gmem5_0_ARREGION { O 4 vector } m_axi_gmem5_0_ARUSER { O 1 vector } m_axi_gmem5_0_RVALID { I 1 bit } m_axi_gmem5_0_RREADY { O 1 bit } m_axi_gmem5_0_RDATA { I 16 vector } m_axi_gmem5_0_RLAST { I 1 bit } m_axi_gmem5_0_RID { I 1 vector } m_axi_gmem5_0_RFIFONUM { I 11 vector } m_axi_gmem5_0_RUSER { I 1 vector } m_axi_gmem5_0_RRESP { I 2 vector } m_axi_gmem5_0_BVALID { I 1 bit } m_axi_gmem5_0_BREADY { O 1 bit } m_axi_gmem5_0_BRESP { I 2 vector } m_axi_gmem5_0_BID { I 1 vector } m_axi_gmem5_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name this_bias \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_bias \
    op interface \
    ports { this_bias { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name conv1_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv1_out \
    op interface \
    ports { conv1_out_dout { I 16 vector } conv1_out_empty_n { I 1 bit } conv1_out_read { O 1 bit } conv1_out_num_data_valid { I 14 vector } conv1_out_fifo_cap { I 14 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name conv2_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2_out \
    op interface \
    ports { conv2_out_din { O 16 vector } conv2_out_full_n { I 1 bit } conv2_out_write { O 1 bit } conv2_out_num_data_valid { I 14 vector } conv2_out_fifo_cap { I 14 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


