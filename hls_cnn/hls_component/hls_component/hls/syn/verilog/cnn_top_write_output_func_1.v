// ==============================================================
// Generated by Vitis HLS v2025.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module cnn_top_write_output_func_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        conv2_out_din,
        conv2_out_full_n,
        conv2_out_write,
        conv2_out_num_data_valid,
        conv2_out_fifo_cap,
        output_buf_address0,
        output_buf_ce0,
        output_buf_q0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] conv2_out_din;
input   conv2_out_full_n;
output   conv2_out_write;
input  [13:0] conv2_out_num_data_valid;
input  [13:0] conv2_out_fifo_cap;
output  [12:0] output_buf_address0;
output   output_buf_ce0;
input  [14:0] output_buf_q0;

reg ap_idle;
reg conv2_out_write;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln103_fu_124_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state3;
reg    ap_block_state3_pp0_stage2_iter0;
reg    conv2_out_blk_n;
wire    ap_CS_fsm_state2;
wire   [31:0] zext_ln108_fu_249_p1;
reg   [5:0] oc_fu_56;
wire   [5:0] add_ln106_fu_254_p2;
wire    ap_loop_init;
reg   [4:0] j_fu_60;
wire   [4:0] select_ln105_fu_219_p3;
reg   [10:0] indvar_flatten_fu_64;
wire   [10:0] select_ln105_2_fu_266_p3;
reg   [4:0] i_fu_68;
wire   [4:0] select_ln103_2_fu_191_p3;
reg   [13:0] indvar_flatten12_fu_72;
wire   [13:0] add_ln103_2_fu_130_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten12_load;
reg    output_buf_ce0_local;
wire   [0:0] icmp_ln105_fu_159_p2;
wire   [0:0] icmp_ln106_fu_179_p2;
wire   [0:0] xor_ln103_fu_173_p2;
wire   [4:0] add_ln103_fu_153_p2;
wire   [4:0] select_ln103_fu_165_p3;
wire   [0:0] and_ln103_fu_185_p2;
wire   [0:0] empty_fu_205_p2;
wire   [4:0] add_ln105_fu_199_p2;
wire   [5:0] oc_mid2_fu_211_p3;
wire   [4:0] trunc_ln108_4_fu_235_p1;
wire   [3:0] trunc_ln108_fu_227_p1;
wire   [3:0] trunc_ln108_3_fu_231_p1;
wire   [12:0] tmp_2_fu_239_p4;
wire   [10:0] add_ln105_2_fu_260_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 oc_fu_56 = 6'd0;
#0 j_fu_60 = 5'd0;
#0 indvar_flatten_fu_64 = 11'd0;
#0 i_fu_68 = 5'd0;
#0 indvar_flatten12_fu_72 = 14'd0;
#0 ap_done_reg = 1'b0;
end

cnn_top_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready_sig),
    .ap_done(ap_done_sig),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_68 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        i_fu_68 <= select_ln103_2_fu_191_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln103_fu_124_p2 == 1'd0)) begin
            indvar_flatten12_fu_72 <= add_ln103_2_fu_130_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12_fu_72 <= 14'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_fu_64 <= 11'd0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        indvar_flatten_fu_64 <= select_ln105_2_fu_266_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        j_fu_60 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        j_fu_60 <= select_ln105_fu_219_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        oc_fu_56 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        oc_fu_56 <= add_ln106_fu_254_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state3_pp0_stage2_iter0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln103_fu_124_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state3_pp0_stage2_iter0) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_indvar_flatten12_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12_load = indvar_flatten12_fu_72;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        conv2_out_blk_n = conv2_out_full_n;
    end else begin
        conv2_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state3_pp0_stage2_iter0) & (1'b1 == ap_CS_fsm_state3))) begin
        conv2_out_write = 1'b1;
    end else begin
        conv2_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_buf_ce0_local = 1'b1;
    end else begin
        output_buf_ce0_local = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln103_fu_124_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b0 == ap_block_state3_pp0_stage2_iter0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln103_2_fu_130_p2 = (ap_sig_allocacmp_indvar_flatten12_load + 14'd1);

assign add_ln103_fu_153_p2 = (i_fu_68 + 5'd1);

assign add_ln105_2_fu_260_p2 = (indvar_flatten_fu_64 + 11'd1);

assign add_ln105_fu_199_p2 = (select_ln103_fu_165_p3 + 5'd1);

assign add_ln106_fu_254_p2 = (oc_mid2_fu_211_p3 + 6'd1);

assign and_ln103_fu_185_p2 = (xor_ln103_fu_173_p2 & icmp_ln106_fu_179_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = (conv2_out_full_n == 1'b0);
end

assign ap_done = ap_done_sig;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = ap_ready_sig;

assign conv2_out_din = output_buf_q0;

assign empty_fu_205_p2 = (icmp_ln105_fu_159_p2 | and_ln103_fu_185_p2);

assign icmp_ln103_fu_124_p2 = ((ap_sig_allocacmp_indvar_flatten12_load == 14'd8192) ? 1'b1 : 1'b0);

assign icmp_ln105_fu_159_p2 = ((indvar_flatten_fu_64 == 11'd512) ? 1'b1 : 1'b0);

assign icmp_ln106_fu_179_p2 = ((oc_fu_56 == 6'd32) ? 1'b1 : 1'b0);

assign oc_mid2_fu_211_p3 = ((empty_fu_205_p2[0:0] == 1'b1) ? 6'd0 : oc_fu_56);

assign output_buf_address0 = zext_ln108_fu_249_p1;

assign output_buf_ce0 = output_buf_ce0_local;

assign select_ln103_2_fu_191_p3 = ((icmp_ln105_fu_159_p2[0:0] == 1'b1) ? add_ln103_fu_153_p2 : i_fu_68);

assign select_ln103_fu_165_p3 = ((icmp_ln105_fu_159_p2[0:0] == 1'b1) ? 5'd0 : j_fu_60);

assign select_ln105_2_fu_266_p3 = ((icmp_ln105_fu_159_p2[0:0] == 1'b1) ? 11'd1 : add_ln105_2_fu_260_p2);

assign select_ln105_fu_219_p3 = ((and_ln103_fu_185_p2[0:0] == 1'b1) ? add_ln105_fu_199_p2 : select_ln103_fu_165_p3);

assign tmp_2_fu_239_p4 = {{{trunc_ln108_4_fu_235_p1}, {trunc_ln108_fu_227_p1}}, {trunc_ln108_3_fu_231_p1}};

assign trunc_ln108_3_fu_231_p1 = select_ln105_fu_219_p3[3:0];

assign trunc_ln108_4_fu_235_p1 = oc_mid2_fu_211_p3[4:0];

assign trunc_ln108_fu_227_p1 = select_ln103_2_fu_191_p3[3:0];

assign xor_ln103_fu_173_p2 = (icmp_ln105_fu_159_p2 ^ 1'd1);

assign zext_ln108_fu_249_p1 = tmp_2_fu_239_p4;

endmodule //cnn_top_write_output_func_1
