# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
input_r { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
output_r { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
conv1_weights { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
conv1_bias { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
conv2_weights { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
conv2_bias { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
conv3_weights { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
conv3_bias { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


