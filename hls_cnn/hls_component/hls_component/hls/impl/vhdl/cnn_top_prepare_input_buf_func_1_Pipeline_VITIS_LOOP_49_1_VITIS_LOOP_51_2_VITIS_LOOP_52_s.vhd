-- ==============================================================
-- Generated by Vitis HLS v2025.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cnn_top_prepare_input_buf_func_1_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_buf_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    input_buf_ce0 : OUT STD_LOGIC;
    input_buf_we0 : OUT STD_LOGIC;
    input_buf_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of cnn_top_prepare_input_buf_func_1_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_52_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv14_2880 : STD_LOGIC_VECTOR (13 downto 0) := "10100010000000";
    constant ap_const_lv14_1 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000001";
    constant ap_const_lv10_144 : STD_LOGIC_VECTOR (9 downto 0) := "0101000100";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv5_12 : STD_LOGIC_VECTOR (4 downto 0) := "10010";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln49_fu_118_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln51_fu_133_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln51_reg_375 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_2_mid2_fu_220_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_2_mid2_reg_383 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal add_ln54_fu_272_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln54_reg_388 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln54_10_fu_332_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_fu_56 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    signal add_ln52_fu_278_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal i_fu_60 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    signal select_ln51_fu_228_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal indvar_flatten_fu_64 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    signal select_ln51_2_fu_145_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (9 downto 0);
    signal ic_fu_68 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    signal select_ln49_1_fu_202_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal indvar_flatten12_fu_72 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    signal add_ln49_1_fu_124_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_sig_allocacmp_indvar_flatten12_load : STD_LOGIC_VECTOR (13 downto 0);
    signal input_buf_we0_local : STD_LOGIC;
    signal input_buf_ce0_local : STD_LOGIC;
    signal add_ln51_2_fu_139_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln52_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln49_fu_185_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln49_fu_172_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln49_fu_178_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal and_ln49_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_fu_215_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln51_fu_209_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln54_fu_236_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_fu_240_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal shl_ln54_fu_252_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln54_fu_248_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln54_7_fu_258_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln54_3_fu_262_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln54_8_fu_268_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_16_fu_306_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_15_fu_299_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln53_fu_313_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln53_fu_317_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln54_9_fu_323_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln54_1_fu_326_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component cnn_top_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component cnn_top_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready_sig,
        ap_done => ap_done_sig,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_fu_60 <= ap_const_lv5_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                i_fu_60 <= select_ln51_fu_228_p3;
            end if; 
        end if;
    end process;

    ic_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                ic_fu_68 <= ap_const_lv6_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                ic_fu_68 <= select_ln49_1_fu_202_p3;
            end if; 
        end if;
    end process;

    indvar_flatten12_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                if ((icmp_ln49_fu_118_p2 = ap_const_lv1_0)) then 
                    indvar_flatten12_fu_72 <= add_ln49_1_fu_124_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten12_fu_72 <= ap_const_lv14_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                if ((icmp_ln49_fu_118_p2 = ap_const_lv1_0)) then 
                    indvar_flatten_fu_64 <= select_ln51_2_fu_145_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_64 <= ap_const_lv10_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                j_fu_56 <= ap_const_lv5_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                j_fu_56 <= add_ln52_fu_278_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln54_reg_388 <= add_ln54_fu_272_p2;
                j_2_mid2_reg_383 <= j_2_mid2_fu_220_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                icmp_ln51_reg_375 <= icmp_ln51_fu_133_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0, icmp_ln49_fu_118_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((icmp_ln49_fu_118_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln49_1_fu_124_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten12_load) + unsigned(ap_const_lv14_1));
    add_ln49_fu_172_p2 <= std_logic_vector(unsigned(ic_fu_68) + unsigned(ap_const_lv6_1));
    add_ln51_2_fu_139_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv10_1));
    add_ln51_fu_209_p2 <= std_logic_vector(unsigned(select_ln49_fu_178_p3) + unsigned(ap_const_lv5_1));
    add_ln52_fu_278_p2 <= std_logic_vector(unsigned(j_2_mid2_fu_220_p3) + unsigned(ap_const_lv5_1));
    add_ln53_fu_317_p2 <= std_logic_vector(unsigned(tmp_15_fu_299_p3) + unsigned(zext_ln53_fu_313_p1));
    add_ln54_1_fu_326_p2 <= std_logic_vector(unsigned(add_ln53_fu_317_p2) + unsigned(zext_ln54_9_fu_323_p1));
    add_ln54_3_fu_262_p2 <= std_logic_vector(unsigned(zext_ln54_fu_248_p1) + unsigned(zext_ln54_7_fu_258_p1));
    add_ln54_fu_272_p2 <= std_logic_vector(unsigned(add_ln54_3_fu_262_p2) + unsigned(zext_ln54_8_fu_268_p1));
    and_ln49_fu_196_p2 <= (xor_ln49_fu_185_p2 and icmp_ln52_fu_190_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_block_state1_pp0_stage0_iter0)
    begin
        if ((ap_const_boolean_1 = ap_block_state1_pp0_stage0_iter0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;

    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0, icmp_ln49_fu_118_p2)
    begin
        if (((icmp_ln49_fu_118_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;
    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten12_load_assign_proc : process(ap_CS_fsm_state1, ap_loop_init, indvar_flatten12_fu_72)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_indvar_flatten12_load <= ap_const_lv14_0;
        else 
            ap_sig_allocacmp_indvar_flatten12_load <= indvar_flatten12_fu_72;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_state1, ap_loop_init, indvar_flatten_fu_64)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv10_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_64;
        end if; 
    end process;

    empty_fu_215_p2 <= (icmp_ln51_reg_375 or and_ln49_fu_196_p2);
    icmp_ln49_fu_118_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten12_load = ap_const_lv14_2880) else "0";
    icmp_ln51_fu_133_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv10_144) else "0";
    icmp_ln52_fu_190_p2 <= "1" when (j_fu_56 = ap_const_lv5_12) else "0";
    input_buf_address0 <= zext_ln54_10_fu_332_p1(14 - 1 downto 0);
    input_buf_ce0 <= input_buf_ce0_local;

    input_buf_ce0_local_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            input_buf_ce0_local <= ap_const_logic_1;
        else 
            input_buf_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    input_buf_d0 <= ap_const_lv16_0;
    input_buf_we0 <= input_buf_we0_local;

    input_buf_we0_local_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            input_buf_we0_local <= ap_const_logic_1;
        else 
            input_buf_we0_local <= ap_const_logic_0;
        end if; 
    end process;

    j_2_mid2_fu_220_p3 <= 
        ap_const_lv5_0 when (empty_fu_215_p2(0) = '1') else 
        j_fu_56;
    select_ln49_1_fu_202_p3 <= 
        add_ln49_fu_172_p2 when (icmp_ln51_reg_375(0) = '1') else 
        ic_fu_68;
    select_ln49_fu_178_p3 <= 
        ap_const_lv5_0 when (icmp_ln51_reg_375(0) = '1') else 
        i_fu_60;
    select_ln51_2_fu_145_p3 <= 
        ap_const_lv10_1 when (icmp_ln51_fu_133_p2(0) = '1') else 
        add_ln51_2_fu_139_p2;
    select_ln51_fu_228_p3 <= 
        add_ln51_fu_209_p2 when (and_ln49_fu_196_p2(0) = '1') else 
        select_ln49_fu_178_p3;
    shl_ln54_fu_252_p2 <= std_logic_vector(shift_left(unsigned(select_ln49_1_fu_202_p3),to_integer(unsigned('0' & ap_const_lv6_1(6-1 downto 0)))));
    tmp_15_fu_299_p3 <= (add_ln54_reg_388 & ap_const_lv4_0);
    tmp_16_fu_306_p3 <= (add_ln54_reg_388 & ap_const_lv1_0);
    tmp_fu_240_p3 <= (trunc_ln54_fu_236_p1 & ap_const_lv4_0);
    trunc_ln54_fu_236_p1 <= select_ln49_1_fu_202_p3(5 - 1 downto 0);
    xor_ln49_fu_185_p2 <= (icmp_ln51_reg_375 xor ap_const_lv1_1);
    zext_ln53_fu_313_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_16_fu_306_p3),14));
    zext_ln54_10_fu_332_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln54_1_fu_326_p2),32));
    zext_ln54_7_fu_258_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln54_fu_252_p2),10));
    zext_ln54_8_fu_268_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln51_fu_228_p3),10));
    zext_ln54_9_fu_323_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_2_mid2_reg_383),14));
    zext_ln54_fu_248_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_240_p3),10));
end behav;
