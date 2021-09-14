// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.1 (Release Build #173.3)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from add_bb_B5_stall_region
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_bb_B5_stall_region (
    input wire [63:0] in_memdep_add_avm_readdata,
    input wire [0:0] in_memdep_add_avm_writeack,
    input wire [0:0] in_memdep_add_avm_waitrequest,
    input wire [0:0] in_memdep_add_avm_readdatavalid,
    output wire [63:0] out_ml535_add_avm_address,
    output wire [0:0] out_ml535_add_avm_enable,
    output wire [0:0] out_ml535_add_avm_read,
    output wire [0:0] out_ml535_add_avm_write,
    output wire [63:0] out_ml535_add_avm_writedata,
    output wire [7:0] out_ml535_add_avm_byteenable,
    output wire [0:0] out_ml535_add_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_29_0,
    output wire [31:0] out_inc7_i146_push23,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_lm1076_add_avm_readdata,
    input wire [0:0] in_lm1076_add_avm_writeack,
    input wire [0:0] in_lm1076_add_avm_waitrequest,
    input wire [0:0] in_lm1076_add_avm_readdatavalid,
    output wire [63:0] out_memdep_add_avm_address,
    output wire [0:0] out_memdep_add_avm_enable,
    output wire [0:0] out_memdep_add_avm_read,
    output wire [0:0] out_memdep_add_avm_write,
    output wire [63:0] out_memdep_add_avm_writedata,
    output wire [7:0] out_memdep_add_avm_byteenable,
    output wire [0:0] out_memdep_add_avm_burstcount,
    input wire [63:0] in_lm1097_add_avm_readdata,
    input wire [0:0] in_lm1097_add_avm_writeack,
    input wire [0:0] in_lm1097_add_avm_waitrequest,
    input wire [0:0] in_lm1097_add_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [63:0] out_lm1076_add_avm_address,
    output wire [0:0] out_lm1076_add_avm_enable,
    output wire [0:0] out_lm1076_add_avm_read,
    output wire [0:0] out_lm1076_add_avm_write,
    output wire [63:0] out_lm1076_add_avm_writedata,
    output wire [7:0] out_lm1076_add_avm_byteenable,
    output wire [0:0] out_lm1076_add_avm_burstcount,
    output wire [63:0] out_lm1097_add_avm_address,
    output wire [0:0] out_lm1097_add_avm_enable,
    output wire [0:0] out_lm1097_add_avm_read,
    output wire [0:0] out_lm1097_add_avm_write,
    output wire [63:0] out_lm1097_add_avm_writedata,
    output wire [7:0] out_lm1097_add_avm_byteenable,
    output wire [0:0] out_lm1097_add_avm_burstcount,
    input wire [63:0] in_ml535_add_avm_readdata,
    input wire [0:0] in_ml535_add_avm_writeack,
    input wire [0:0] in_ml535_add_avm_waitrequest,
    input wire [0:0] in_ml535_add_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_add30_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_add30_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_15_0,
    input wire [31:0] in_intel_reserved_ffwd_16_0,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [0:0] in_intel_reserved_ffwd_23_0,
    input wire [63:0] in_intel_reserved_ffwd_24_0,
    input wire [0:0] in_intel_reserved_ffwd_25_0,
    input wire [0:0] in_intel_reserved_ffwd_26_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_28_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked73,
    input wire [31:0] in_inc7_i147,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] add_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] add_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] add_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] add_B5_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] bgTrunc_i_inc_i_add45_sel_x_b;
    wire [63:0] i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_arrayidx17_i42_i_add0_dupName_3_trunc_sel_x_b;
    wire [64:0] i_arrayidx17_i42_i_add0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx17_i42_i_add0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx17_i42_i_add0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx17_i42_i_add0_dupName_0_add_x_q;
    wire [64:0] i_arrayidx17_i42_i_add0_dupName_1_add_x_a;
    wire [64:0] i_arrayidx17_i42_i_add0_dupName_1_add_x_b;
    logic [64:0] i_arrayidx17_i42_i_add0_dupName_1_add_x_o;
    wire [64:0] i_arrayidx17_i42_i_add0_dupName_1_add_x_q;
    wire [127:0] i_arrayidx17_i42_i_add0_mult_extender_x_q;
    wire [49:0] i_arrayidx17_i42_i_add0_mult_multconst_x_q;
    wire [63:0] i_arrayidx17_i42_i_add0_trunc_sel_x_b;
    wire [64:0] i_arrayidx17_i42_i_add0_add_x_a;
    wire [64:0] i_arrayidx17_i42_i_add0_add_x_b;
    logic [64:0] i_arrayidx17_i42_i_add0_add_x_o;
    wire [64:0] i_arrayidx17_i42_i_add0_add_x_q;
    wire [1:0] i_arrayidx17_i42_i_add0_c_i2_02_x_q;
    wire [63:0] i_arrayidx17_i42_i_add0_c_i64_123_x_q;
    wire [61:0] i_arrayidx17_i42_i_add0_narrow_x_b;
    wire [63:0] i_arrayidx17_i42_i_add0_shift_join_x_q;
    wire [63:0] i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_arrayidx17_i_i_add0_dupName_3_trunc_sel_x_b;
    wire [64:0] i_arrayidx17_i_i_add0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx17_i_i_add0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx17_i_i_add0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx17_i_i_add0_dupName_0_add_x_q;
    wire [64:0] i_arrayidx17_i_i_add0_dupName_1_add_x_a;
    wire [64:0] i_arrayidx17_i_i_add0_dupName_1_add_x_b;
    logic [64:0] i_arrayidx17_i_i_add0_dupName_1_add_x_o;
    wire [64:0] i_arrayidx17_i_i_add0_dupName_1_add_x_q;
    wire [127:0] i_arrayidx17_i_i_add0_mult_extender_x_q;
    wire [63:0] i_arrayidx17_i_i_add0_trunc_sel_x_b;
    wire [64:0] i_arrayidx17_i_i_add0_add_x_a;
    wire [64:0] i_arrayidx17_i_i_add0_add_x_b;
    logic [64:0] i_arrayidx17_i_i_add0_add_x_o;
    wire [64:0] i_arrayidx17_i_i_add0_add_x_q;
    wire [63:0] i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_arrayidx5_i30_i_add0_dupName_3_trunc_sel_x_b;
    wire [64:0] i_arrayidx5_i30_i_add0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx5_i30_i_add0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx5_i30_i_add0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx5_i30_i_add0_dupName_0_add_x_q;
    wire [64:0] i_arrayidx5_i30_i_add0_dupName_1_add_x_a;
    wire [64:0] i_arrayidx5_i30_i_add0_dupName_1_add_x_b;
    logic [64:0] i_arrayidx5_i30_i_add0_dupName_1_add_x_o;
    wire [64:0] i_arrayidx5_i30_i_add0_dupName_1_add_x_q;
    wire [127:0] i_arrayidx5_i30_i_add0_mult_extender_x_q;
    wire [63:0] i_arrayidx5_i30_i_add0_trunc_sel_x_b;
    wire [64:0] i_arrayidx5_i30_i_add0_add_x_a;
    wire [64:0] i_arrayidx5_i30_i_add0_add_x_b;
    logic [64:0] i_arrayidx5_i30_i_add0_add_x_o;
    wire [64:0] i_arrayidx5_i30_i_add0_add_x_q;
    wire [61:0] i_arrayidx5_i30_i_add0_narrow_x_b;
    wire [63:0] i_arrayidx5_i30_i_add0_shift_join_x_q;
    wire [63:0] i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_arrayidx5_i_i_add0_dupName_3_trunc_sel_x_b;
    wire [64:0] i_arrayidx5_i_i_add0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx5_i_i_add0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx5_i_i_add0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx5_i_i_add0_dupName_0_add_x_q;
    wire [64:0] i_arrayidx5_i_i_add0_dupName_1_add_x_a;
    wire [64:0] i_arrayidx5_i_i_add0_dupName_1_add_x_b;
    logic [64:0] i_arrayidx5_i_i_add0_dupName_1_add_x_o;
    wire [64:0] i_arrayidx5_i_i_add0_dupName_1_add_x_q;
    wire [127:0] i_arrayidx5_i_i_add0_mult_extender_x_q;
    wire [63:0] i_arrayidx5_i_i_add0_trunc_sel_x_b;
    wire [64:0] i_arrayidx5_i_i_add0_add_x_a;
    wire [64:0] i_arrayidx5_i_i_add0_add_x_b;
    logic [64:0] i_arrayidx5_i_i_add0_add_x_o;
    wire [64:0] i_arrayidx5_i_i_add0_add_x_q;
    wire [61:0] i_arrayidx5_i_i_add0_narrow_x_b;
    wire [63:0] i_arrayidx5_i_i_add0_shift_join_x_q;
    wire [63:0] i_idxprom_i27_i_add42_sel_x_b;
    wire [0:0] i_last_initeration_add49_sel_x_b;
    wire [0:0] i_lm1076_toi1_intcast_add82_sel_x_b;
    wire [0:0] i_lm1097_toi1_intcast_add85_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_2_tpl;
    wire [16:0] i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_o_valid;
    wire [16:0] c_i17_6553598_q;
    wire [31:0] c_i32_0101_q;
    wire [31:0] c_i32_1103_q;
    wire [0:0] i_acl_40_add68_q;
    wire [0:0] i_acl_45_add62_qi;
    reg [0:0] i_acl_45_add62_q;
    wire [0:0] i_acl_52_v_add71_s;
    reg [63:0] i_acl_52_v_add71_q;
    wire [0:0] i_addr49_add66_s;
    reg [63:0] i_addr49_add66_q;
    wire [33:0] i_cmp11_i36_i_add50_a;
    wire [33:0] i_cmp11_i36_i_add50_b;
    logic [33:0] i_cmp11_i36_i_add50_o;
    wire [0:0] i_cmp11_i36_i_add50_c;
    wire [33:0] i_cmp11_i_i_add44_a;
    wire [33:0] i_cmp11_i_i_add44_b;
    logic [33:0] i_cmp11_i_i_add44_o;
    wire [0:0] i_cmp11_i_i_add44_c;
    wire [33:0] i_cmp2_i25_i_add52_a;
    wire [33:0] i_cmp2_i25_i_add52_b;
    logic [33:0] i_cmp2_i25_i_add52_o;
    wire [0:0] i_cmp2_i25_i_add52_c;
    wire [33:0] i_cmp2_i_i_add43_a;
    wire [33:0] i_cmp2_i_i_add43_b;
    logic [33:0] i_cmp2_i_i_add43_o;
    wire [0:0] i_cmp2_i_i_add43_c;
    wire [33:0] i_cmp3_i_add90_a;
    wire [33:0] i_cmp3_i_add90_b;
    logic [33:0] i_cmp3_i_add90_o;
    wire [0:0] i_cmp3_i_add90_c;
    wire [33:0] i_cmp_i22_i_add61_a;
    wire [33:0] i_cmp_i22_i_add61_b;
    logic [33:0] i_cmp_i22_i_add61_o;
    wire [0:0] i_cmp_i22_i_add61_c;
    wire [63:0] i_idxprom_i27_i_add42_vt_join_q;
    wire [31:0] i_idxprom_i27_i_add42_vt_select_31_b;
    wire [32:0] i_inc_i_add45_a;
    wire [32:0] i_inc_i_add45_b;
    logic [32:0] i_inc_i_add45_o;
    wire [32:0] i_inc_i_add45_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_out_dest_data_out_25_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_out_dest_data_out_25_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_out_dest_data_out_15_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_out_dest_data_out_15_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_out_dest_data_out_26_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_out_dest_data_out_20_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_lm72266_add14_out_dest_data_out_16_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_lm72266_add14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_lm72266_add14_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_lm74368_add12_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_lm74368_add12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_lm74368_add12_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_out_dest_data_out_22_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_out_dest_data_out_24_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_out_dest_data_out_24_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_out_dest_data_out_24_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_out_dest_data_out_24_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_out_intel_reserved_ffwd_28_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_out_intel_reserved_ffwd_29_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1076_add79_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1076_add79_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1076_add79_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1097_add80_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1097_add80_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1097_add80_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_add77_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_add77_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_add77_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_add77_out_o_writeack;
    wire [63:0] i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_ml535_add73_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_ml535_add73_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_ml535_add73_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_add30_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_add30_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_add30_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_add30_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_add30_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_add30_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_add30_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_add30_out_valid_out;
    wire [16:0] i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_valid_out;
    wire [16:0] i_llvm_fpga_pop_i17_initerations_pop21_add31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i17_initerations_pop21_add31_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i17_initerations_pop21_add31_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i17_initerations_pop21_add31_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_pop15_add32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_pop15_add32_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i32_pop15_add32_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_pop15_add32_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_pop16_add33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_pop16_add33_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i32_pop16_add33_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_pop16_add33_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i17_cleanups_push22_add97_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i17_cleanups_push22_add97_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i17_cleanups_push22_add97_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i17_cleanups_push22_add97_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i17_initerations_push21_add48_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i17_initerations_push21_add48_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i17_initerations_push21_add48_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i17_initerations_push21_add48_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_add60_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_add60_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_add60_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_add60_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi14_push19_add88_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi14_push19_add88_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi14_push19_add88_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi14_push19_add88_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi15_push20_add89_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi15_push20_add89_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi15_push20_add89_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi15_push20_add89_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push18_add78_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push18_add78_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push18_add78_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push18_add78_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_add93_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_add93_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_add93_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_add93_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_i_0446_push17_add59_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_j_i_0446_push17_add59_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i32_j_i_0446_push17_add59_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_i_0446_push17_add59_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_push15_add84_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_push15_add84_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i32_push15_add84_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_push15_add84_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_push16_add81_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_push16_add81_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i32_push16_add81_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_push16_add81_out_valid_out;
    wire [0:0] i_masked_add95_qi;
    reg [0:0] i_masked_add95_q;
    wire [0:0] i_memdep_phi15_or_add46_q;
    wire [0:0] i_next_cleanups_add96_s;
    reg [16:0] i_next_cleanups_add96_q;
    wire [16:0] i_next_initerations_add39_vt_join_q;
    wire [15:0] i_next_initerations_add39_vt_select_15_b;
    wire [0:0] i_notcmp_add92_q;
    wire [0:0] i_or_add94_qi;
    reg [0:0] i_or_add94_q;
    wire [0:0] i_or_cond428_add64_qi;
    reg [0:0] i_or_cond428_add64_q;
    wire [0:0] i_or_cond429_add65_qi;
    reg [0:0] i_or_cond429_add65_q;
    wire [0:0] i_or_cond430_add57_q;
    wire [0:0] i_or_cond431_add58_q;
    wire [0:0] i_or_cond431_not_add63_q;
    wire [0:0] i_pred_sel48_add70_q;
    wire [0:0] i_replace_phi74_add41_s;
    reg [31:0] i_replace_phi74_add41_q;
    wire [0:0] i_replace_phi77_add40_s;
    reg [31:0] i_replace_phi77_add40_q;
    wire [0:0] i_unnamed_add51_s;
    reg [31:0] i_unnamed_add51_q;
    wire [0:0] i_unnamed_add67_qi;
    reg [0:0] i_unnamed_add67_q;
    wire [0:0] i_unnamed_add69_s;
    reg [0:0] i_unnamed_add69_q;
    wire [0:0] i_unnamed_add72_qi;
    reg [0:0] i_unnamed_add72_q;
    wire [0:0] i_unnamed_add86_s;
    reg [31:0] i_unnamed_add86_q;
    wire [0:0] i_unnamed_add91_q;
    wire [35:0] i_arrayidx17_i42_i_add0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx17_i42_i_add0_mult_x_sums_align_0_qint;
    wire [67:0] i_arrayidx17_i42_i_add0_mult_x_sums_join_1_q;
    wire [49:0] i_arrayidx17_i42_i_add0_mult_x_sums_align_2_q;
    wire [49:0] i_arrayidx17_i42_i_add0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx17_i42_i_add0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx17_i42_i_add0_mult_x_sums_align_3_qint;
    wire [77:0] i_arrayidx17_i42_i_add0_mult_x_sums_join_4_q;
    wire [78:0] i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0_a;
    wire [78:0] i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0_b;
    logic [78:0] i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0_o;
    wire [78:0] i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx17_i_i_add0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx17_i_i_add0_mult_x_sums_align_0_qint;
    wire [67:0] i_arrayidx17_i_i_add0_mult_x_sums_join_1_q;
    wire [49:0] i_arrayidx17_i_i_add0_mult_x_sums_align_2_q;
    wire [49:0] i_arrayidx17_i_i_add0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx17_i_i_add0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx17_i_i_add0_mult_x_sums_align_3_qint;
    wire [77:0] i_arrayidx17_i_i_add0_mult_x_sums_join_4_q;
    wire [78:0] i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0_a;
    wire [78:0] i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0_b;
    logic [78:0] i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0_o;
    wire [78:0] i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0_q;
    wire [17:0] i_arrayidx5_i30_i_add0_mult_x_bs1_in;
    wire [17:0] i_arrayidx5_i30_i_add0_mult_x_bs1_b;
    wire [35:0] i_arrayidx5_i30_i_add0_mult_x_bs4_in;
    wire [17:0] i_arrayidx5_i30_i_add0_mult_x_bs4_b;
    wire [53:0] i_arrayidx5_i30_i_add0_mult_x_bs7_in;
    wire [17:0] i_arrayidx5_i30_i_add0_mult_x_bs7_b;
    wire [9:0] i_arrayidx5_i30_i_add0_mult_x_bs10_b;
    wire [35:0] i_arrayidx5_i30_i_add0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx5_i30_i_add0_mult_x_sums_align_0_qint;
    wire [67:0] i_arrayidx5_i30_i_add0_mult_x_sums_join_1_q;
    wire [49:0] i_arrayidx5_i30_i_add0_mult_x_sums_align_2_q;
    wire [49:0] i_arrayidx5_i30_i_add0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx5_i30_i_add0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx5_i30_i_add0_mult_x_sums_align_3_qint;
    wire [77:0] i_arrayidx5_i30_i_add0_mult_x_sums_join_4_q;
    wire [78:0] i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0_a;
    wire [78:0] i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0_b;
    logic [78:0] i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0_o;
    wire [78:0] i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx5_i_i_add0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx5_i_i_add0_mult_x_sums_align_0_qint;
    wire [67:0] i_arrayidx5_i_i_add0_mult_x_sums_join_1_q;
    wire [49:0] i_arrayidx5_i_i_add0_mult_x_sums_align_2_q;
    wire [49:0] i_arrayidx5_i_i_add0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx5_i_i_add0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx5_i_i_add0_mult_x_sums_align_3_qint;
    wire [77:0] i_arrayidx5_i_i_add0_mult_x_sums_join_4_q;
    wire [78:0] i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0_a;
    wire [78:0] i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0_b;
    logic [78:0] i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0_o;
    wire [78:0] i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0_q;
    wire [15:0] rightShiftStage0Idx1Rng1_uid433_i_next_initerations_add0_shift_x_b;
    wire [16:0] rightShiftStage0Idx1_uid435_i_next_initerations_add0_shift_x_q;
    wire [0:0] rightShiftStage0_uid437_i_next_initerations_add0_shift_x_s;
    reg [16:0] rightShiftStage0_uid437_i_next_initerations_add0_shift_x_q;
    wire [18:0] lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_a;
    wire [18:0] lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_b;
    logic [18:0] lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_o;
    wire [18:0] lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_q;
    wire [19:0] lev1_a0_uid449_i_arrayidx17_i42_i_add0_mult_x_im0_q;
    wire [11:0] sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q;
    wire [31:0] sR_mergedSignalTM_uid454_i_arrayidx17_i42_i_add0_mult_x_im0_q;
    wire [18:0] lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_a;
    wire [18:0] lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_b;
    logic [18:0] lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_o;
    wire [18:0] lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_q;
    wire [19:0] lev1_a0_uid511_i_arrayidx17_i42_i_add0_mult_x_im3_q;
    wire [31:0] sR_mergedSignalTM_uid516_i_arrayidx17_i42_i_add0_mult_x_im3_q;
    wire [18:0] lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_a;
    wire [18:0] lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_b;
    logic [18:0] lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_o;
    wire [18:0] lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_q;
    wire [19:0] lev1_a0_uid573_i_arrayidx17_i42_i_add0_mult_x_im6_q;
    wire [31:0] sR_mergedSignalTM_uid578_i_arrayidx17_i42_i_add0_mult_x_im6_q;
    wire [10:0] lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_a;
    wire [10:0] lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_b;
    logic [10:0] lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_o;
    wire [10:0] lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_q;
    wire [11:0] lev1_a0_uid635_i_arrayidx17_i42_i_add0_mult_x_im9_q;
    wire [23:0] sR_mergedSignalTM_uid640_i_arrayidx17_i42_i_add0_mult_x_im9_q;
    wire [18:0] lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_a;
    wire [18:0] lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_b;
    logic [18:0] lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_o;
    wire [18:0] lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_q;
    wire [19:0] lev1_a0_uid685_i_arrayidx17_i_i_add0_mult_x_im0_q;
    wire [31:0] sR_mergedSignalTM_uid690_i_arrayidx17_i_i_add0_mult_x_im0_q;
    wire [18:0] lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_a;
    wire [18:0] lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_b;
    logic [18:0] lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_o;
    wire [18:0] lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_q;
    wire [19:0] lev1_a0_uid747_i_arrayidx17_i_i_add0_mult_x_im3_q;
    wire [31:0] sR_mergedSignalTM_uid752_i_arrayidx17_i_i_add0_mult_x_im3_q;
    wire [18:0] lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_a;
    wire [18:0] lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_b;
    logic [18:0] lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_o;
    wire [18:0] lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_q;
    wire [19:0] lev1_a0_uid809_i_arrayidx17_i_i_add0_mult_x_im6_q;
    wire [31:0] sR_mergedSignalTM_uid814_i_arrayidx17_i_i_add0_mult_x_im6_q;
    wire [10:0] lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_a;
    wire [10:0] lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_b;
    logic [10:0] lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_o;
    wire [10:0] lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_q;
    wire [11:0] lev1_a0_uid871_i_arrayidx17_i_i_add0_mult_x_im9_q;
    wire [23:0] sR_mergedSignalTM_uid876_i_arrayidx17_i_i_add0_mult_x_im9_q;
    wire [18:0] lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_a;
    wire [18:0] lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_b;
    logic [18:0] lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_o;
    wire [18:0] lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_q;
    wire [19:0] lev1_a0_uid921_i_arrayidx5_i30_i_add0_mult_x_im0_q;
    wire [31:0] sR_mergedSignalTM_uid926_i_arrayidx5_i30_i_add0_mult_x_im0_q;
    wire [18:0] lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_a;
    wire [18:0] lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_b;
    logic [18:0] lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_o;
    wire [18:0] lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_q;
    wire [19:0] lev1_a0_uid983_i_arrayidx5_i30_i_add0_mult_x_im3_q;
    wire [31:0] sR_mergedSignalTM_uid988_i_arrayidx5_i30_i_add0_mult_x_im3_q;
    wire [18:0] lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_a;
    wire [18:0] lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_b;
    logic [18:0] lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_o;
    wire [18:0] lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_q;
    wire [19:0] lev1_a0_uid1045_i_arrayidx5_i30_i_add0_mult_x_im6_q;
    wire [31:0] sR_mergedSignalTM_uid1050_i_arrayidx5_i30_i_add0_mult_x_im6_q;
    wire [10:0] lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_a;
    wire [10:0] lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_b;
    logic [10:0] lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_o;
    wire [10:0] lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_q;
    wire [11:0] lev1_a0_uid1107_i_arrayidx5_i30_i_add0_mult_x_im9_q;
    wire [23:0] sR_mergedSignalTM_uid1112_i_arrayidx5_i30_i_add0_mult_x_im9_q;
    wire [17:0] i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_e;
    wire [17:0] i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_e;
    wire [0:0] lowRangeB_uid918_i_arrayidx5_i30_i_add0_mult_x_im0_merged_bit_select_b;
    wire [16:0] lowRangeB_uid918_i_arrayidx5_i30_i_add0_mult_x_im0_merged_bit_select_c;
    wire [0:0] lowRangeB_uid980_i_arrayidx5_i30_i_add0_mult_x_im3_merged_bit_select_b;
    wire [16:0] lowRangeB_uid980_i_arrayidx5_i30_i_add0_mult_x_im3_merged_bit_select_c;
    wire [0:0] lowRangeB_uid1042_i_arrayidx5_i30_i_add0_mult_x_im6_merged_bit_select_b;
    wire [16:0] lowRangeB_uid1042_i_arrayidx5_i30_i_add0_mult_x_im6_merged_bit_select_c;
    wire [0:0] lowRangeB_uid1104_i_arrayidx5_i30_i_add0_mult_x_im9_merged_bit_select_b;
    wire [8:0] lowRangeB_uid1104_i_arrayidx5_i30_i_add0_mult_x_im9_merged_bit_select_c;
    wire [0:0] lowRangeB_uid682_i_arrayidx17_i_i_add0_mult_x_im0_merged_bit_select_b;
    wire [16:0] lowRangeB_uid682_i_arrayidx17_i_i_add0_mult_x_im0_merged_bit_select_c;
    wire [0:0] lowRangeB_uid744_i_arrayidx17_i_i_add0_mult_x_im3_merged_bit_select_b;
    wire [16:0] lowRangeB_uid744_i_arrayidx17_i_i_add0_mult_x_im3_merged_bit_select_c;
    wire [0:0] lowRangeB_uid806_i_arrayidx17_i_i_add0_mult_x_im6_merged_bit_select_b;
    wire [16:0] lowRangeB_uid806_i_arrayidx17_i_i_add0_mult_x_im6_merged_bit_select_c;
    wire [0:0] lowRangeB_uid868_i_arrayidx17_i_i_add0_mult_x_im9_merged_bit_select_b;
    wire [8:0] lowRangeB_uid868_i_arrayidx17_i_i_add0_mult_x_im9_merged_bit_select_c;
    wire [0:0] lowRangeB_uid446_i_arrayidx17_i42_i_add0_mult_x_im0_merged_bit_select_b;
    wire [16:0] lowRangeB_uid446_i_arrayidx17_i42_i_add0_mult_x_im0_merged_bit_select_c;
    wire [0:0] lowRangeB_uid508_i_arrayidx17_i42_i_add0_mult_x_im3_merged_bit_select_b;
    wire [16:0] lowRangeB_uid508_i_arrayidx17_i42_i_add0_mult_x_im3_merged_bit_select_c;
    wire [0:0] lowRangeB_uid570_i_arrayidx17_i42_i_add0_mult_x_im6_merged_bit_select_b;
    wire [16:0] lowRangeB_uid570_i_arrayidx17_i42_i_add0_mult_x_im6_merged_bit_select_c;
    wire [0:0] lowRangeB_uid632_i_arrayidx17_i42_i_add0_mult_x_im9_merged_bit_select_b;
    wire [8:0] lowRangeB_uid632_i_arrayidx17_i42_i_add0_mult_x_im9_merged_bit_select_c;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [0:0] redist0_lowRangeB_uid632_i_arrayidx17_i42_i_add0_mult_x_im9_merged_bit_select_b_1_0_q;
    reg [0:0] redist1_lowRangeB_uid570_i_arrayidx17_i42_i_add0_mult_x_im6_merged_bit_select_b_1_0_q;
    reg [0:0] redist2_lowRangeB_uid508_i_arrayidx17_i42_i_add0_mult_x_im3_merged_bit_select_b_1_0_q;
    reg [0:0] redist3_lowRangeB_uid446_i_arrayidx17_i42_i_add0_mult_x_im0_merged_bit_select_b_1_0_q;
    reg [0:0] redist4_lowRangeB_uid868_i_arrayidx17_i_i_add0_mult_x_im9_merged_bit_select_b_1_0_q;
    reg [0:0] redist5_lowRangeB_uid806_i_arrayidx17_i_i_add0_mult_x_im6_merged_bit_select_b_1_0_q;
    reg [0:0] redist6_lowRangeB_uid744_i_arrayidx17_i_i_add0_mult_x_im3_merged_bit_select_b_1_0_q;
    reg [0:0] redist7_lowRangeB_uid682_i_arrayidx17_i_i_add0_mult_x_im0_merged_bit_select_b_1_0_q;
    reg [0:0] redist8_lowRangeB_uid1104_i_arrayidx5_i30_i_add0_mult_x_im9_merged_bit_select_b_1_0_q;
    reg [0:0] redist9_lowRangeB_uid1042_i_arrayidx5_i30_i_add0_mult_x_im6_merged_bit_select_b_1_0_q;
    reg [0:0] redist10_lowRangeB_uid980_i_arrayidx5_i30_i_add0_mult_x_im3_merged_bit_select_b_1_0_q;
    reg [0:0] redist11_lowRangeB_uid918_i_arrayidx5_i30_i_add0_mult_x_im0_merged_bit_select_b_1_0_q;
    wire [0:0] redist12_i_unnamed_add72_q_35_fifo_valid_in;
    wire redist12_i_unnamed_add72_q_35_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_i_unnamed_add72_q_35_fifo_stall_in;
    wire redist12_i_unnamed_add72_q_35_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist12_i_unnamed_add72_q_35_fifo_data_in;
    wire [0:0] redist12_i_unnamed_add72_q_35_fifo_valid_out;
    wire redist12_i_unnamed_add72_q_35_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_i_unnamed_add72_q_35_fifo_stall_out;
    wire redist12_i_unnamed_add72_q_35_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist12_i_unnamed_add72_q_35_fifo_data_out;
    wire [0:0] redist13_i_unnamed_add69_q_32_fifo_valid_in;
    wire redist13_i_unnamed_add69_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_i_unnamed_add69_q_32_fifo_stall_in;
    wire redist13_i_unnamed_add69_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist13_i_unnamed_add69_q_32_fifo_data_in;
    wire [0:0] redist13_i_unnamed_add69_q_32_fifo_valid_out;
    wire redist13_i_unnamed_add69_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_i_unnamed_add69_q_32_fifo_stall_out;
    wire redist13_i_unnamed_add69_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist13_i_unnamed_add69_q_32_fifo_data_out;
    reg [31:0] redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_0_q;
    reg [31:0] redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_q;
    reg [31:0] redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_q;
    wire [0:0] redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_valid_in;
    wire redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_stall_in;
    wire redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_data_in;
    wire [0:0] redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_valid_out;
    wire redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_stall_out;
    wire redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_data_out;
    wire [0:0] redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_valid_in;
    wire redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_stall_in;
    wire redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_stall_in_bitsignaltemp;
    wire [16:0] redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_data_in;
    wire [0:0] redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_valid_out;
    wire redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_stall_out;
    wire redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_stall_out_bitsignaltemp;
    wire [16:0] redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_data_out;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_q;
    wire [0:0] redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_valid_in;
    wire redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_stall_in;
    wire redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_data_in;
    wire [0:0] redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_valid_out;
    wire redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_stall_out;
    wire redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_data_out;
    reg [0:0] redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_q;
    reg [0:0] redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_q;
    reg [0:0] redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_q;
    reg [0:0] redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_q;
    reg [0:0] redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_q;
    reg [0:0] redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_q;
    reg [0:0] redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_q;
    reg [0:0] redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_q;
    reg [0:0] redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_q;
    reg [0:0] redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_q;
    reg [0:0] redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_q;
    reg [0:0] redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_q;
    wire [0:0] redist24_i_addr49_add66_q_39_fifo_valid_in;
    wire redist24_i_addr49_add66_q_39_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_addr49_add66_q_39_fifo_stall_in;
    wire redist24_i_addr49_add66_q_39_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist24_i_addr49_add66_q_39_fifo_data_in;
    wire [0:0] redist24_i_addr49_add66_q_39_fifo_valid_out;
    wire redist24_i_addr49_add66_q_39_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_addr49_add66_q_39_fifo_stall_out;
    wire redist24_i_addr49_add66_q_39_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist24_i_addr49_add66_q_39_fifo_data_out;
    reg [0:0] redist25_i_acl_45_add62_q_4_0_q;
    reg [0:0] redist25_i_acl_45_add62_q_4_1_q;
    reg [0:0] redist25_i_acl_45_add62_q_4_2_q;
    wire [0:0] redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_valid_in;
    wire redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_stall_in;
    wire redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_stall_in_bitsignaltemp;
    wire [16:0] redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_data_in;
    wire [0:0] redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_valid_out;
    wire redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_stall_out;
    wire redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_stall_out_bitsignaltemp;
    wire [16:0] redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_data_out;
    reg [63:0] redist29_i_arrayidx5_i_i_add0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_q;
    reg [63:0] redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist32_i_arrayidx5_i30_i_add0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_q;
    reg [63:0] redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_q;
    reg [63:0] redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [61:0] redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_0_q;
    reg [61:0] redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_1_q;
    reg [61:0] redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_2_q;
    reg [63:0] redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_q;
    reg [63:0] redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [31:0] redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_q;
    reg [31:0] redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_q;
    reg [31:0] redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_q;
    reg [0:0] redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q;
    reg [0:0] redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q;
    reg [0:0] redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q;
    reg [0:0] redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q;
    wire [0:0] redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_valid_in;
    wire redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_stall_in;
    wire redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_data_in;
    wire [0:0] redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_valid_out;
    wire redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_stall_out;
    wire redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_data_out;
    reg [0:0] redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_q;
    reg [0:0] redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_q;
    reg [0:0] redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_q;
    reg [0:0] redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_q;
    reg [0:0] redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_q;
    reg [0:0] redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_q;
    reg [0:0] redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_q;
    wire [0:0] redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_in;
    wire redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_in;
    wire redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_data_in;
    wire [0:0] redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_out;
    wire redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_out;
    wire redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_data_out;
    reg [0:0] redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_q;
    reg [0:0] redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_q;
    reg [0:0] redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_q;
    wire [0:0] redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_valid_in;
    wire redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_stall_in;
    wire redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_data_in;
    wire [0:0] redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_valid_out;
    wire redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_stall_out;
    wire redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_out;
    wire [32:0] bubble_join_add_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_add_B5_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_add_B5_merge_reg_aunroll_x_c;
    wire [51:0] bubble_join_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_c;
    wire [16:0] bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_f;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1076_add79_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1076_add79_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1097_add80_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1097_add80_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_add77_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_add77_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_ml535_add73_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_ml535_add73_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_add30_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_add30_b;
    wire [16:0] bubble_join_i_llvm_fpga_pop_i17_cleanups_pop22_add29_q;
    wire [16:0] bubble_select_i_llvm_fpga_pop_i17_cleanups_pop22_add29_b;
    wire [16:0] bubble_join_i_llvm_fpga_pop_i17_initerations_pop21_add31_q;
    wire [16:0] bubble_select_i_llvm_fpga_pop_i17_initerations_pop21_add31_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_pop15_add32_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_pop15_add32_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_pop16_add33_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_pop16_add33_b;
    wire [31:0] bubble_join_i_llvm_fpga_push_i32_inc7_i146_push23_add47_q;
    wire [31:0] bubble_select_i_llvm_fpga_push_i32_inc7_i146_push23_add47_b;
    wire [32:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_join_redist12_i_unnamed_add72_q_35_fifo_q;
    wire [0:0] bubble_select_redist12_i_unnamed_add72_q_35_fifo_b;
    wire [0:0] bubble_join_redist13_i_unnamed_add69_q_32_fifo_q;
    wire [0:0] bubble_select_redist13_i_unnamed_add69_q_32_fifo_b;
    wire [31:0] bubble_join_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_q;
    wire [31:0] bubble_select_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_b;
    wire [16:0] bubble_join_redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_q;
    wire [16:0] bubble_select_redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_b;
    wire [0:0] bubble_join_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_q;
    wire [0:0] bubble_select_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_b;
    wire [63:0] bubble_join_redist24_i_addr49_add66_q_39_fifo_q;
    wire [63:0] bubble_select_redist24_i_addr49_add66_q_39_fifo_b;
    wire [16:0] bubble_join_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_q;
    wire [16:0] bubble_select_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_b;
    wire [0:0] bubble_join_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_q;
    wire [0:0] bubble_select_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_b;
    wire [0:0] bubble_join_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_q;
    wire [0:0] bubble_select_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b;
    wire [31:0] bubble_join_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_q;
    wire [31:0] bubble_select_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg10;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg10;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed10;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg11;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg11;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed11;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg12;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg12;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed12;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg13;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg13;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed13;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg14;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg14;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed14;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg15;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg15;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed15;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg16;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg16;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed16;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg17;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg17;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed17;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg18;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg18;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed18;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg19;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg19;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed19;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg20;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg20;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed20;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg21;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg21;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed21;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg22;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg22;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed22;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg23;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg23;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed23;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg24;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg24;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed24;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg25;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg25;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed25;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg26;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg26;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed26;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg27;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg27;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed27;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg28;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg28;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed28;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg29;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg29;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed29;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg30;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg30;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed30;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_toReg31;
    reg [0:0] SE_out_add_B5_merge_reg_aunroll_x_fromReg31;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_consumed31;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or9;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or10;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or11;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or12;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or13;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or14;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or15;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or16;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or17;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or18;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or19;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or20;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or21;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or22;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or23;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or24;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or25;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or26;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or27;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or28;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or29;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_or30;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V9;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V10;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V11;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V12;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V13;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V14;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V15;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V16;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V17;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V18;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V19;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V20;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V21;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V22;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V23;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V24;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V25;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V26;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V27;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V28;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V29;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V30;
    wire [0:0] SE_out_add_B5_merge_reg_aunroll_x_V31;
    wire [0:0] SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_wireValid;
    wire [0:0] SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_and0;
    wire [0:0] SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_backStall;
    wire [0:0] SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_V0;
    wire [0:0] SE_i_arrayidx17_i_i_add0_dupName_0_add_x_wireValid;
    wire [0:0] SE_i_arrayidx17_i_i_add0_dupName_0_add_x_and0;
    wire [0:0] SE_i_arrayidx17_i_i_add0_dupName_0_add_x_backStall;
    wire [0:0] SE_i_arrayidx17_i_i_add0_dupName_0_add_x_V0;
    wire [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_wireValid;
    wire [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_wireStall;
    wire [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_StallValid;
    wire [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_toReg0;
    reg [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_fromReg0;
    wire [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_consumed0;
    wire [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_toReg1;
    reg [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_fromReg1;
    wire [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_consumed1;
    wire [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_or0;
    wire [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_backStall;
    wire [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_V0;
    wire [0:0] SE_i_lm1076_toi1_intcast_add82_sel_x_V1;
    wire [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_wireValid;
    wire [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_wireStall;
    wire [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_StallValid;
    wire [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_toReg0;
    reg [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_fromReg0;
    wire [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_consumed0;
    wire [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_toReg1;
    reg [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_fromReg1;
    wire [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_consumed1;
    wire [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_or0;
    wire [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_backStall;
    wire [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_V0;
    wire [0:0] SE_i_lm1097_toi1_intcast_add85_sel_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_V2;
    reg [0:0] SE_i_acl_45_add62_R_v_0;
    reg [0:0] SE_i_acl_45_add62_R_v_1;
    wire [0:0] SE_i_acl_45_add62_v_s_0;
    wire [0:0] SE_i_acl_45_add62_s_tv_0;
    wire [0:0] SE_i_acl_45_add62_s_tv_1;
    wire [0:0] SE_i_acl_45_add62_backEN;
    wire [0:0] SE_i_acl_45_add62_and0;
    wire [0:0] SE_i_acl_45_add62_or0;
    wire [0:0] SE_i_acl_45_add62_backStall;
    wire [0:0] SE_i_acl_45_add62_V0;
    wire [0:0] SE_i_acl_45_add62_V1;
    reg [0:0] SE_i_addr49_add66_R_v_0;
    wire [0:0] SE_i_addr49_add66_v_s_0;
    wire [0:0] SE_i_addr49_add66_s_tv_0;
    wire [0:0] SE_i_addr49_add66_backEN;
    wire [0:0] SE_i_addr49_add66_backStall;
    wire [0:0] SE_i_addr49_add66_V0;
    wire [0:0] SE_i_cmp11_i36_i_add50_wireValid;
    wire [0:0] SE_i_cmp11_i36_i_add50_and0;
    wire [0:0] SE_i_cmp11_i36_i_add50_backStall;
    wire [0:0] SE_i_cmp11_i36_i_add50_V0;
    wire [0:0] SE_i_cmp2_i25_i_add52_wireValid;
    wire [0:0] SE_i_cmp2_i25_i_add52_and0;
    wire [0:0] SE_i_cmp2_i25_i_add52_backStall;
    wire [0:0] SE_i_cmp2_i25_i_add52_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_V0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_and0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_backStall;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_V0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_and0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_backStall;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1076_add79_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1097_add80_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_add77_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_add30_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_and2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_and3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop15_add32_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_pop16_add33_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i17_cleanups_push22_add97_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i17_cleanups_push22_add97_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i17_initerations_push21_add48_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i17_initerations_push21_add48_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_add60_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_add60_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi14_push19_add88_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi14_push19_add88_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi15_push20_add89_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi15_push20_add89_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push18_add78_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push18_add78_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_add93_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_add93_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_add93_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_add93_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_add93_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_add93_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_i_0446_push17_add59_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_i_0446_push17_add59_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_push15_add84_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_push15_add84_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_push16_add81_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_push16_add81_backStall;
    reg [0:0] SE_i_masked_add95_R_v_0;
    reg [0:0] SE_i_masked_add95_R_v_1;
    wire [0:0] SE_i_masked_add95_v_s_0;
    wire [0:0] SE_i_masked_add95_s_tv_0;
    wire [0:0] SE_i_masked_add95_s_tv_1;
    wire [0:0] SE_i_masked_add95_backEN;
    wire [0:0] SE_i_masked_add95_and0;
    wire [0:0] SE_i_masked_add95_or0;
    wire [0:0] SE_i_masked_add95_backStall;
    wire [0:0] SE_i_masked_add95_V0;
    wire [0:0] SE_i_masked_add95_V1;
    wire [0:0] SE_i_next_initerations_add39_vt_select_15_wireValid;
    wire [0:0] SE_i_next_initerations_add39_vt_select_15_wireStall;
    wire [0:0] SE_i_next_initerations_add39_vt_select_15_StallValid;
    wire [0:0] SE_i_next_initerations_add39_vt_select_15_toReg0;
    reg [0:0] SE_i_next_initerations_add39_vt_select_15_fromReg0;
    wire [0:0] SE_i_next_initerations_add39_vt_select_15_consumed0;
    wire [0:0] SE_i_next_initerations_add39_vt_select_15_toReg1;
    reg [0:0] SE_i_next_initerations_add39_vt_select_15_fromReg1;
    wire [0:0] SE_i_next_initerations_add39_vt_select_15_consumed1;
    wire [0:0] SE_i_next_initerations_add39_vt_select_15_or0;
    wire [0:0] SE_i_next_initerations_add39_vt_select_15_backStall;
    wire [0:0] SE_i_next_initerations_add39_vt_select_15_V0;
    wire [0:0] SE_i_next_initerations_add39_vt_select_15_V1;
    reg [0:0] SE_i_or_cond428_add64_R_v_0;
    reg [0:0] SE_i_or_cond428_add64_R_v_1;
    wire [0:0] SE_i_or_cond428_add64_v_s_0;
    wire [0:0] SE_i_or_cond428_add64_s_tv_0;
    wire [0:0] SE_i_or_cond428_add64_s_tv_1;
    wire [0:0] SE_i_or_cond428_add64_backEN;
    wire [0:0] SE_i_or_cond428_add64_or0;
    wire [0:0] SE_i_or_cond428_add64_backStall;
    wire [0:0] SE_i_or_cond428_add64_V0;
    wire [0:0] SE_i_or_cond428_add64_V1;
    reg [0:0] SE_i_or_cond429_add65_R_v_0;
    wire [0:0] SE_i_or_cond429_add65_v_s_0;
    wire [0:0] SE_i_or_cond429_add65_s_tv_0;
    wire [0:0] SE_i_or_cond429_add65_backEN;
    wire [0:0] SE_i_or_cond429_add65_backStall;
    wire [0:0] SE_i_or_cond429_add65_V0;
    wire [0:0] SE_i_pred_sel48_add70_wireValid;
    wire [0:0] SE_i_pred_sel48_add70_and0;
    wire [0:0] SE_i_pred_sel48_add70_backStall;
    wire [0:0] SE_i_pred_sel48_add70_V0;
    reg [0:0] SE_i_unnamed_add67_R_v_0;
    wire [0:0] SE_i_unnamed_add67_v_s_0;
    wire [0:0] SE_i_unnamed_add67_s_tv_0;
    wire [0:0] SE_i_unnamed_add67_backEN;
    wire [0:0] SE_i_unnamed_add67_and0;
    wire [0:0] SE_i_unnamed_add67_backStall;
    wire [0:0] SE_i_unnamed_add67_V0;
    reg [0:0] SE_i_unnamed_add69_R_v_0;
    wire [0:0] SE_i_unnamed_add69_v_s_0;
    wire [0:0] SE_i_unnamed_add69_s_tv_0;
    wire [0:0] SE_i_unnamed_add69_backEN;
    wire [0:0] SE_i_unnamed_add69_and0;
    wire [0:0] SE_i_unnamed_add69_and1;
    wire [0:0] SE_i_unnamed_add69_backStall;
    wire [0:0] SE_i_unnamed_add69_V0;
    reg [0:0] SE_i_unnamed_add72_R_v_0;
    wire [0:0] SE_i_unnamed_add72_v_s_0;
    wire [0:0] SE_i_unnamed_add72_s_tv_0;
    wire [0:0] SE_i_unnamed_add72_backEN;
    wire [0:0] SE_i_unnamed_add72_and0;
    wire [0:0] SE_i_unnamed_add72_backStall;
    wire [0:0] SE_i_unnamed_add72_V0;
    wire [0:0] SE_i_unnamed_add86_wireValid;
    wire [0:0] SE_i_unnamed_add86_wireStall;
    wire [0:0] SE_i_unnamed_add86_StallValid;
    wire [0:0] SE_i_unnamed_add86_toReg0;
    reg [0:0] SE_i_unnamed_add86_fromReg0;
    wire [0:0] SE_i_unnamed_add86_consumed0;
    wire [0:0] SE_i_unnamed_add86_toReg1;
    reg [0:0] SE_i_unnamed_add86_fromReg1;
    wire [0:0] SE_i_unnamed_add86_consumed1;
    wire [0:0] SE_i_unnamed_add86_and0;
    wire [0:0] SE_i_unnamed_add86_and1;
    wire [0:0] SE_i_unnamed_add86_and2;
    wire [0:0] SE_i_unnamed_add86_and3;
    wire [0:0] SE_i_unnamed_add86_or0;
    wire [0:0] SE_i_unnamed_add86_backStall;
    wire [0:0] SE_i_unnamed_add86_V0;
    wire [0:0] SE_i_unnamed_add86_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_R_v_0;
    wire [0:0] SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_v_s_0;
    wire [0:0] SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_s_tv_0;
    wire [0:0] SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backEN;
    wire [0:0] SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backStall;
    wire [0:0] SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_V0;
    reg [0:0] SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_R_v_0;
    wire [0:0] SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_v_s_0;
    wire [0:0] SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_s_tv_0;
    wire [0:0] SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backEN;
    wire [0:0] SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backStall;
    wire [0:0] SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_V0;
    reg [0:0] SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_R_v_0;
    wire [0:0] SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_v_s_0;
    wire [0:0] SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_s_tv_0;
    wire [0:0] SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN;
    wire [0:0] SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backStall;
    wire [0:0] SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_V0;
    wire [0:0] SE_out_redist13_i_unnamed_add69_q_32_fifo_wireValid;
    wire [0:0] SE_out_redist13_i_unnamed_add69_q_32_fifo_and0;
    wire [0:0] SE_out_redist13_i_unnamed_add69_q_32_fifo_and1;
    wire [0:0] SE_out_redist13_i_unnamed_add69_q_32_fifo_and2;
    wire [0:0] SE_out_redist13_i_unnamed_add69_q_32_fifo_backStall;
    wire [0:0] SE_out_redist13_i_unnamed_add69_q_32_fifo_V0;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_0;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_1;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_2;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_v_s_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_s_tv_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_s_tv_1;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_s_tv_2;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backEN;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_or0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_or1;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backStall;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_V0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_V1;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_V2;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_0;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_1;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_2;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_3;
    reg [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_4;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_v_s_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_1;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_2;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_3;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_4;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backEN;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_or0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_or1;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_or2;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_or3;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backStall;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V0;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V1;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V2;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V3;
    wire [0:0] SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V4;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_wireValid;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_wireStall;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_StallValid;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_toReg0;
    reg [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_fromReg0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_consumed0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_toReg1;
    reg [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_fromReg1;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_consumed1;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_or0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_backStall;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_V0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_V1;
    reg [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_R_v_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_V0;
    reg [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_R_v_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_V0;
    reg [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_0;
    reg [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_1;
    reg [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_2;
    reg [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_3;
    reg [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_4;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_v_s_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_1;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_2;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_3;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_4;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_backEN;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_or0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_or1;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_or2;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_or3;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_backStall;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V0;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V1;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V2;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V3;
    wire [0:0] SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V4;
    reg [0:0] SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_R_v_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_v_s_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_s_tv_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_backEN;
    wire [0:0] SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_backStall;
    wire [0:0] SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_V0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_wireValid;
    wire [0:0] SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_and0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_backStall;
    wire [0:0] SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_V0;
    reg [0:0] SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_R_v_0;
    wire [0:0] SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_v_s_0;
    wire [0:0] SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_s_tv_0;
    wire [0:0] SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_backEN;
    wire [0:0] SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_backStall;
    wire [0:0] SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_V0;
    reg [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_R_v_0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_v_s_0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_s_tv_0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_backEN;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_backStall;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_V0;
    reg [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_R_v_0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_v_s_0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_s_tv_0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_backEN;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_backStall;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_V0;
    reg [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_R_v_0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_v_s_0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_s_tv_0;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_backEN;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_backStall;
    wire [0:0] SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_V0;
    reg [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_V0;
    reg [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_V0;
    reg [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_V0;
    reg [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_V0;
    wire [0:0] SE_out_redist24_i_addr49_add66_q_39_fifo_wireValid;
    wire [0:0] SE_out_redist24_i_addr49_add66_q_39_fifo_and0;
    wire [0:0] SE_out_redist24_i_addr49_add66_q_39_fifo_and1;
    wire [0:0] SE_out_redist24_i_addr49_add66_q_39_fifo_and2;
    wire [0:0] SE_out_redist24_i_addr49_add66_q_39_fifo_backStall;
    wire [0:0] SE_out_redist24_i_addr49_add66_q_39_fifo_V0;
    reg [0:0] SE_redist25_i_acl_45_add62_q_4_0_R_v_0;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_0_v_s_0;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_0_s_tv_0;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_0_backEN;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_0_backStall;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_0_V0;
    reg [0:0] SE_redist25_i_acl_45_add62_q_4_1_R_v_0;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_1_v_s_0;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_1_s_tv_0;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_1_backEN;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_1_backStall;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_1_V0;
    reg [0:0] SE_redist25_i_acl_45_add62_q_4_2_R_v_0;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_2_v_s_0;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_2_s_tv_0;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_2_backEN;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_2_backStall;
    wire [0:0] SE_redist25_i_acl_45_add62_q_4_2_V0;
    wire [0:0] SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_wireValid;
    wire [0:0] SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_and0;
    wire [0:0] SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_and1;
    wire [0:0] SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_and2;
    wire [0:0] SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_backStall;
    wire [0:0] SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_V0;
    reg [0:0] SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_R_v_0;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_v_s_0;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_s_tv_0;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_backEN;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_backStall;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_V0;
    reg [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_R_v_0;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_v_s_0;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_s_tv_0;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_backEN;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_backStall;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_V0;
    reg [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_R_v_0;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_v_s_0;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_s_tv_0;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_backEN;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_backStall;
    wire [0:0] SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_V0;
    reg [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_0;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backStall;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V0;
    reg [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_v_s_0;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_s_tv_0;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V0;
    reg [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0;
    reg [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1;
    reg [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_0;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_1;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_2;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or0;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or1;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V0;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V1;
    wire [0:0] SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V2;
    reg [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0;
    reg [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1;
    reg [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_2;
    reg [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_3;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_v_s_0;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_0;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_1;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_2;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_3;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_or0;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_or1;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_or2;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backStall;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V0;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V1;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V2;
    wire [0:0] SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V3;
    wire [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_wireValid;
    wire [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_wireStall;
    wire [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_StallValid;
    wire [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_toReg0;
    reg [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_fromReg0;
    wire [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_consumed0;
    wire [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_toReg1;
    reg [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_fromReg1;
    wire [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_consumed1;
    wire [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_or0;
    wire [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_backStall;
    wire [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_V0;
    wire [0:0] SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_V1;
    reg [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_R_v_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_v_s_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_s_tv_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_backEN;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_backStall;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_V0;
    reg [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_R_v_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_v_s_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_s_tv_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_backEN;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_backStall;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_V0;
    reg [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_R_v_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_v_s_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_s_tv_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_backEN;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_backStall;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_V0;
    reg [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_R_v_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_v_s_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_s_tv_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_backEN;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_backStall;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_V0;
    reg [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_R_v_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_v_s_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_s_tv_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_backEN;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_backStall;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_V0;
    reg [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_R_v_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_v_s_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_s_tv_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_backEN;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_backStall;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_V0;
    reg [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_0;
    reg [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_1;
    reg [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_2;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_v_s_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_s_tv_0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_s_tv_1;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_s_tv_2;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_backEN;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_or0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_or1;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_backStall;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_V0;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_V1;
    wire [0:0] SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_V2;
    wire [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid;
    wire [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireStall;
    wire [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_StallValid;
    wire [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_toReg0;
    reg [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg0;
    wire [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed0;
    wire [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_toReg1;
    reg [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg1;
    wire [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed1;
    wire [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_or0;
    wire [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_backStall;
    wire [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_V0;
    wire [0:0] SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_V1;
    reg [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_R_v_0;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_v_s_0;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_s_tv_0;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_backEN;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_backStall;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_V0;
    reg [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_R_v_0;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_v_s_0;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_s_tv_0;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_backEN;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_backStall;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_V0;
    reg [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_0;
    reg [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_1;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_v_s_0;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_s_tv_0;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_s_tv_1;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_backEN;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_or0;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_backStall;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_V0;
    wire [0:0] SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_V1;
    wire [0:0] SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_wireValid;
    wire [0:0] SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_and0;
    wire [0:0] SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_backStall;
    wire [0:0] SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg2;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg3;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V3;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_5_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_5_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_5_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_6_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_6_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_6_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_8_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_8_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_8_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_10_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_10_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_10_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_11_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_11_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_11_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_17_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_17_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_17_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_18_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_18_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_18_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_20_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_20_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_20_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_24_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_24_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_24_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_25_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_25_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_25_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_26_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_26_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_26_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_27_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_27_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_27_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_28_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_28_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_28_V0;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_29_wireValid;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_29_backStall;
    wire [0:0] SE_out_bubble_out_add_B5_merge_reg_aunroll_x_29_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and8;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and9;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and10;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and11;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_V0;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_5_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_5_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_5_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_5_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_6_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_6_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_6_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_6_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_8_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_8_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_8_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_8_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_10_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_10_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_10_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_10_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_10_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_10_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_10_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_10_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_11_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_11_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_11_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_11_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_11_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_11_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_11_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_11_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_17_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_17_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_17_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_17_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_17_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_17_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_17_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_17_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_18_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_18_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_18_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_18_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_18_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_18_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_18_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_18_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_20_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_20_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_20_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_20_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_20_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_20_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_20_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_20_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_24_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_24_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_24_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_24_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_24_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_24_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_24_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_24_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_25_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_25_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_25_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_25_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_25_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_25_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_25_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_25_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_26_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_26_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_26_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_26_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_26_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_26_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_26_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_26_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_27_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_27_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_27_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_27_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_27_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_27_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_27_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_27_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_28_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_28_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_28_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_28_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_28_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_28_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_28_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_28_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_29_reg_valid_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_29_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_29_reg_stall_in;
    wire bubble_out_add_B5_merge_reg_aunroll_x_29_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_29_reg_valid_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_29_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_add_B5_merge_reg_aunroll_x_29_reg_stall_out;
    wire bubble_out_add_B5_merge_reg_aunroll_x_29_reg_stall_out_bitsignaltemp;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_V0;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_stall_out_bitsignaltemp;
    reg [0:0] bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_V0;
    wire [0:0] SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid;
    reg [0:0] SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid;
    reg [0:0] SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data0;
    wire [0:0] SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall;
    wire [0:0] SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V;
    wire [0:0] SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_D0;
    wire [0:0] SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_i_valid;
    reg [0:0] SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_valid;
    reg [0:0] SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_data0;
    wire [0:0] SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_backStall;
    wire [0:0] SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_V;
    wire [0:0] SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_D0;
    wire [0:0] SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_i_valid;
    reg [0:0] SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_valid;
    reg [0:0] SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_data0;
    wire [0:0] SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_backStall;
    wire [0:0] SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_V;
    wire [0:0] SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_D0;
    wire [0:0] SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_i_valid;
    reg [0:0] SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_valid;
    reg [0:0] SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_data0;
    wire [0:0] SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_backStall;
    wire [0:0] SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_V;
    wire [0:0] SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_D0;
    wire [0:0] SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_i_valid;
    reg [0:0] SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid;
    reg [63:0] SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_data0;
    wire [0:0] SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_V;
    wire [63:0] SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_D0;
    wire [0:0] SR_SE_i_addr49_add66_i_valid;
    reg [0:0] SR_SE_i_addr49_add66_r_valid;
    wire [0:0] SR_SE_i_addr49_add66_and0;
    wire [0:0] SR_SE_i_addr49_add66_and1;
    reg [0:0] SR_SE_i_addr49_add66_r_data0;
    reg [63:0] SR_SE_i_addr49_add66_r_data1;
    reg [63:0] SR_SE_i_addr49_add66_r_data2;
    wire [0:0] SR_SE_i_addr49_add66_backStall;
    wire [0:0] SR_SE_i_addr49_add66_V;
    wire [0:0] SR_SE_i_addr49_add66_D0;
    wire [63:0] SR_SE_i_addr49_add66_D1;
    wire [63:0] SR_SE_i_addr49_add66_D2;
    wire [0:0] SR_SE_i_or_cond428_add64_i_valid;
    reg [0:0] SR_SE_i_or_cond428_add64_r_valid;
    wire [0:0] SR_SE_i_or_cond428_add64_and0;
    reg [0:0] SR_SE_i_or_cond428_add64_r_data0;
    reg [0:0] SR_SE_i_or_cond428_add64_r_data1;
    wire [0:0] SR_SE_i_or_cond428_add64_backStall;
    wire [0:0] SR_SE_i_or_cond428_add64_V;
    wire [0:0] SR_SE_i_or_cond428_add64_D0;
    wire [0:0] SR_SE_i_or_cond428_add64_D1;
    wire [0:0] SR_SE_i_or_cond429_add65_i_valid;
    reg [0:0] SR_SE_i_or_cond429_add65_r_valid;
    wire [0:0] SR_SE_i_or_cond429_add65_and0;
    reg [0:0] SR_SE_i_or_cond429_add65_r_data0;
    reg [0:0] SR_SE_i_or_cond429_add65_r_data1;
    wire [0:0] SR_SE_i_or_cond429_add65_backStall;
    wire [0:0] SR_SE_i_or_cond429_add65_V;
    wire [0:0] SR_SE_i_or_cond429_add65_D0;
    wire [0:0] SR_SE_i_or_cond429_add65_D1;
    wire [0:0] SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_i_valid;
    reg [0:0] SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid;
    reg [63:0] SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_data0;
    wire [0:0] SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_V;
    wire [63:0] SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_D0;
    wire [0:0] SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_i_valid;
    reg [0:0] SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_valid;
    reg [31:0] SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_data0;
    wire [0:0] SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_backStall;
    wire [0:0] SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_V;
    wire [31:0] SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_D0;
    wire [0:0] SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_i_valid;
    reg [0:0] SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_valid;
    reg [0:0] SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_data0;
    wire [0:0] SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_backStall;
    wire [0:0] SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_V;
    wire [0:0] SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_D0;
    wire [0:0] SR_SE_i_next_initerations_add39_vt_select_15_i_valid;
    reg [0:0] SR_SE_i_next_initerations_add39_vt_select_15_r_valid;
    wire [0:0] SR_SE_i_next_initerations_add39_vt_select_15_and0;
    reg [0:0] SR_SE_i_next_initerations_add39_vt_select_15_r_data0;
    reg [0:0] SR_SE_i_next_initerations_add39_vt_select_15_r_data1;
    reg [0:0] SR_SE_i_next_initerations_add39_vt_select_15_r_data2;
    reg [16:0] SR_SE_i_next_initerations_add39_vt_select_15_r_data3;
    wire [0:0] SR_SE_i_next_initerations_add39_vt_select_15_backStall;
    wire [0:0] SR_SE_i_next_initerations_add39_vt_select_15_V;
    wire [0:0] SR_SE_i_next_initerations_add39_vt_select_15_D0;
    wire [0:0] SR_SE_i_next_initerations_add39_vt_select_15_D1;
    wire [0:0] SR_SE_i_next_initerations_add39_vt_select_15_D2;
    wire [16:0] SR_SE_i_next_initerations_add39_vt_select_15_D3;
    wire [0:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_i_valid;
    reg [0:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_valid;
    wire [0:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_and0;
    reg [0:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data0;
    reg [0:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data1;
    reg [0:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data2;
    reg [31:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data3;
    wire [0:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_backStall;
    wire [0:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_V;
    wire [0:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_D0;
    wire [0:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_D1;
    wire [0:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_D2;
    wire [31:0] SR_SE_i_lm1076_toi1_intcast_add82_sel_x_D3;
    wire [0:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_i_valid;
    reg [0:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_valid;
    wire [0:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_and0;
    reg [0:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data0;
    reg [0:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data1;
    reg [0:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data2;
    reg [31:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data3;
    wire [0:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_backStall;
    wire [0:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_V;
    wire [0:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_D0;
    wire [0:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_D1;
    wire [0:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_D2;
    wire [31:0] SR_SE_i_lm1097_toi1_intcast_add85_sel_x_D3;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_and0;
    reg [31:0] SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_V;
    wire [31:0] SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_D1;


    // i_arrayidx17_i42_i_add0_c_i64_123_x(CONSTANT,29)
    assign i_arrayidx17_i42_i_add0_c_i64_123_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000001100);

    // bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17(BITJOIN,1616)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_q = i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_out_dest_data_out_24_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17(BITSELECT,1617)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_q[63:0]);

    // i_arrayidx5_i_i_add0_narrow_x(BITSELECT,91)@5
    assign i_arrayidx5_i_i_add0_narrow_x_b = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_b[61:0];

    // i_arrayidx17_i42_i_add0_c_i2_02_x(CONSTANT,27)
    assign i_arrayidx17_i42_i_add0_c_i2_02_x_q = $unsigned(2'b00);

    // i_arrayidx5_i_i_add0_shift_join_x(BITJOIN,92)@5
    assign i_arrayidx5_i_i_add0_shift_join_x_q = {i_arrayidx5_i_i_add0_narrow_x_b, i_arrayidx17_i42_i_add0_c_i2_02_x_q};

    // i_arrayidx17_i42_i_add0_mult_multconst_x(CONSTANT,24)
    assign i_arrayidx17_i42_i_add0_mult_multconst_x_q = $unsigned(50'b00000000000000000000000000000000000000000000000000);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // lowRangeB_uid1104_i_arrayidx5_i30_i_add0_mult_x_im9_merged_bit_select(BITSELECT,1387)@2
    assign lowRangeB_uid1104_i_arrayidx5_i30_i_add0_mult_x_im9_merged_bit_select_b = i_arrayidx5_i30_i_add0_mult_x_bs10_b[0:0];
    assign lowRangeB_uid1104_i_arrayidx5_i30_i_add0_mult_x_im9_merged_bit_select_c = i_arrayidx5_i30_i_add0_mult_x_bs10_b[9:1];

    // c_i32_0101(CONSTANT,108)
    assign c_i32_0101_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_1103(CONSTANT,109)
    assign c_i32_1103_q = $unsigned(32'b00000000000000000000000000000001);

    // redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_0(REG,1463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_b);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1(REG,1464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backEN == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_q <= $unsigned(redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_0_q);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2(REG,1465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backEN == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_q <= $unsigned(redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_q);
        end
    end

    // redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo(STALLFIFO,1466)
    assign redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_valid_in = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V2;
    assign redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_stall_in = SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_backStall;
    assign redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_data_in = redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_q;
    assign redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_valid_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_valid_in[0];
    assign redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_stall_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_stall_in[0];
    assign redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_valid_out[0] = redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_valid_out_bitsignaltemp;
    assign redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_stall_out[0] = redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(101),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo (
        .valid_in(redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_stall_in_bitsignaltemp),
        .data_in(redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_q),
        .valid_out(redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo(BITJOIN,1703)
    assign bubble_join_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_q = redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_data_out;

    // bubble_select_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo(BITSELECT,1704)
    assign bubble_select_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_b = $unsigned(bubble_join_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_q[31:0]);

    // i_inc_i_add45(ADD,129)@105
    assign i_inc_i_add45_a = {1'b0, bubble_select_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_b};
    assign i_inc_i_add45_b = {1'b0, c_i32_1103_q};
    assign i_inc_i_add45_o = $unsigned(i_inc_i_add45_a) + $unsigned(i_inc_i_add45_b);
    assign i_inc_i_add45_q = i_inc_i_add45_o[32:0];

    // bgTrunc_i_inc_i_add45_sel_x(BITSELECT,3)@105
    assign bgTrunc_i_inc_i_add45_sel_x_b = i_inc_i_add45_q[31:0];

    // SE_out_i_llvm_fpga_push_i17_cleanups_push22_add97(STALLENABLE,1880)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i17_cleanups_push22_add97_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i17_cleanups_push22_add97_wireValid = i_llvm_fpga_push_i17_cleanups_push22_add97_out_valid_out;

    // redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0(REG,1471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_backEN == 1'b1)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_q <= $unsigned(SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_D0);
        end
    end

    // redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0(REG,1513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_backEN == 1'b1)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_q <= $unsigned(SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_D0);
        end
    end

    // redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1(REG,1514)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_backEN == 1'b1)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_q <= $unsigned(redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_q);
        end
    end

    // redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2(REG,1515)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_backEN == 1'b1)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_q <= $unsigned(redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_q);
        end
    end

    // redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3(REG,1516)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_backEN == 1'b1)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_q <= $unsigned(redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_q);
        end
    end

    // redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4(REG,1517)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_backEN == 1'b1)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_q <= $unsigned(redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_q);
        end
    end

    // redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5(REG,1518)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_backEN == 1'b1)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_q <= $unsigned(SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_D0);
        end
    end

    // redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6(REG,1519)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_q <= $unsigned(1'b0);
        end
        else if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_backEN == 1'b1)
        begin
            redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_q <= $unsigned(redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_q);
        end
    end

    // bubble_join_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo(BITJOIN,1721)
    assign bubble_join_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_q = redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_data_out;

    // bubble_select_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo(BITSELECT,1722)
    assign bubble_select_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b = $unsigned(bubble_join_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_q[0:0]);

    // redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0(REG,1521)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_backEN == 1'b1)
        begin
            redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_q <= $unsigned(bubble_select_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b);
        end
    end

    // SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1(STALLENABLE,2089)
    // Valid signal propagation
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_V0 = SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_R_v_0;
    // Stall signal propagation
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_s_tv_0 = SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_backStall & SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_R_v_0;
    // Backward Enable generation
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_backEN = ~ (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_v_s_0 = SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_backEN & SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_V;
    // Backward Stall generation
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_backStall = ~ (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_backEN == 1'b0)
            begin
                SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_R_v_0 <= SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_R_v_0 & SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_s_tv_0;
            end
            else
            begin
                SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_R_v_0 <= SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_v_s_0;
            end

        end
    end

    // SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1(STALLREG,2424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_valid <= 1'b0;
            SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_valid <= SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_backStall & (SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_valid | SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_i_valid);

            if (SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_data0 <= $unsigned(redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_i_valid = SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_V0;
    // Stall signal propagation
    assign SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_backStall = SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_valid | ~ (SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_i_valid);

    // Valid
    assign SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_V = SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_valid == 1'b1 ? SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_valid : SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_i_valid;

    assign SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_D0 = SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_valid == 1'b1 ? SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_r_data0 : redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_q;

    // SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0(STALLENABLE,2088)
    // Valid signal propagation
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_V0 = SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_R_v_0;
    // Stall signal propagation
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_s_tv_0 = SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_backStall & SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_R_v_0;
    // Backward Enable generation
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_backEN = ~ (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_v_s_0 = SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_backEN & SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_V0;
    // Backward Stall generation
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_backStall = ~ (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_backEN == 1'b0)
            begin
                SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_R_v_0 <= SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_R_v_0 & SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_s_tv_0;
            end
            else
            begin
                SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_R_v_0 <= SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_v_s_0;
            end

        end
    end

    // SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo(STALLENABLE,2087)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg0 <= '0;
            SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg0 <= SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_toReg0;
            // Successor 1
            SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg1 <= SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed0 = (~ (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_0_backStall) & SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid) | SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg0;
    assign SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going_add30_out_stall_out) & SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid) | SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg1;
    // Consuming
    assign SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_StallValid = SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_backStall & SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid;
    assign SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_toReg0 = SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_StallValid & SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed0;
    assign SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_toReg1 = SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_StallValid & SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_or0 = SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed0;
    assign SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireStall = ~ (SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed1 & SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_or0);
    assign SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_backStall = SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_V0 = SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid & ~ (SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg0);
    assign SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_V1 = SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid & ~ (SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid = redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_out;

    // redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo(STALLFIFO,1520)
    assign redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_in = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_V2;
    assign redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_in = SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_backStall;
    assign redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_data_in = redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_q;
    assign redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_in_bitsignaltemp = redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_in[0];
    assign redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_in_bitsignaltemp = redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_in[0];
    assign redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_out[0] = redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_out_bitsignaltemp;
    assign redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_out[0] = redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(61),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo (
        .valid_in(redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_in_bitsignaltemp),
        .stall_in(redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_in_bitsignaltemp),
        .data_in(redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_q),
        .valid_out(redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_out_bitsignaltemp),
        .stall_out(redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_out_bitsignaltemp),
        .data_out(redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_add77(BITJOIN,1651)
    assign bubble_join_i_llvm_fpga_mem_memdep_add77_q = i_llvm_fpga_mem_memdep_add77_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_add77(BITSELECT,1652)
    assign bubble_select_i_llvm_fpga_mem_memdep_add77_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_add77_q[0:0]);

    // redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo(STALLFIFO,1472)
    assign redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_valid_in = SE_out_i_llvm_fpga_mem_memdep_add77_V2;
    assign redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_stall_in = SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_backStall;
    assign redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_data_in = bubble_select_i_llvm_fpga_mem_memdep_add77_b;
    assign redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_valid_in_bitsignaltemp = redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_valid_in[0];
    assign redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_stall_in_bitsignaltemp = redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_stall_in[0];
    assign redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_valid_out[0] = redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_valid_out_bitsignaltemp;
    assign redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_stall_out[0] = redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(30),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo (
        .valid_in(redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_mem_memdep_add77_b),
        .valid_out(redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25(BITJOIN,1625)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_q = i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25(BITSELECT,1626)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_q[63:0]);

    // i_llvm_fpga_mem_lm1097_add80(BLACKBOX,163)@76
    // in in_i_stall@20000000
    // out out_lm1097_add_avm_address@20000000
    // out out_lm1097_add_avm_burstcount@20000000
    // out out_lm1097_add_avm_byteenable@20000000
    // out out_lm1097_add_avm_enable@20000000
    // out out_lm1097_add_avm_read@20000000
    // out out_lm1097_add_avm_write@20000000
    // out out_lm1097_add_avm_writedata@20000000
    // out out_o_readdata@108
    // out out_o_stall@20000000
    // out out_o_valid@108
    add_i_llvm_fpga_mem_lm1097_0 thei_llvm_fpga_mem_lm1097_add80 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_add77_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm1097_add80_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_V0),
        .in_lm1097_add_avm_readdata(in_lm1097_add_avm_readdata),
        .in_lm1097_add_avm_readdatavalid(in_lm1097_add_avm_readdatavalid),
        .in_lm1097_add_avm_waitrequest(in_lm1097_add_avm_waitrequest),
        .in_lm1097_add_avm_writeack(in_lm1097_add_avm_writeack),
        .out_lm1097_add_avm_address(i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_address),
        .out_lm1097_add_avm_burstcount(i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_burstcount),
        .out_lm1097_add_avm_byteenable(i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_byteenable),
        .out_lm1097_add_avm_enable(i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_enable),
        .out_lm1097_add_avm_read(i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_read),
        .out_lm1097_add_avm_write(i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_write),
        .out_lm1097_add_avm_writedata(i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1097_add80_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1097_add80_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1097_add80_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_26(STALLENABLE,2150)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_26_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_26_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_26_backStall = i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_26_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_26_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25(BLACKBOX,154)@75
    // in in_stall_in@20000000
    // out out_dest_data_out_4_0@76
    // out out_stall_out@20000000
    // out out_valid_out@76
    add_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_0 thei_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_26_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25(STALLENABLE,1836)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_backStall = i_llvm_fpga_mem_lm1097_add80_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_and0 = i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_wireValid = SE_out_i_llvm_fpga_mem_memdep_add77_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23(BITJOIN,1628)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_q = i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23(BITSELECT,1629)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_q[63:0]);

    // i_llvm_fpga_mem_lm1076_add79(BLACKBOX,162)@76
    // in in_i_stall@20000000
    // out out_lm1076_add_avm_address@20000000
    // out out_lm1076_add_avm_burstcount@20000000
    // out out_lm1076_add_avm_byteenable@20000000
    // out out_lm1076_add_avm_enable@20000000
    // out out_lm1076_add_avm_read@20000000
    // out out_lm1076_add_avm_write@20000000
    // out out_lm1076_add_avm_writedata@20000000
    // out out_o_readdata@108
    // out out_o_stall@20000000
    // out out_o_valid@108
    add_i_llvm_fpga_mem_lm1076_0 thei_llvm_fpga_mem_lm1076_add79 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_add77_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm1076_add79_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_V0),
        .in_lm1076_add_avm_readdata(in_lm1076_add_avm_readdata),
        .in_lm1076_add_avm_readdatavalid(in_lm1076_add_avm_readdatavalid),
        .in_lm1076_add_avm_waitrequest(in_lm1076_add_avm_waitrequest),
        .in_lm1076_add_avm_writeack(in_lm1076_add_avm_writeack),
        .out_lm1076_add_avm_address(i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_address),
        .out_lm1076_add_avm_burstcount(i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_burstcount),
        .out_lm1076_add_avm_byteenable(i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_byteenable),
        .out_lm1076_add_avm_enable(i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_enable),
        .out_lm1076_add_avm_read(i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_read),
        .out_lm1076_add_avm_write(i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_write),
        .out_lm1076_add_avm_writedata(i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1076_add79_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1076_add79_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1076_add79_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_24(STALLENABLE,2146)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_24_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_24_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_24_backStall = i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_24_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_24_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23(BLACKBOX,155)@75
    // in in_stall_in@20000000
    // out out_dest_data_out_6_0@76
    // out out_stall_out@20000000
    // out out_valid_out@76
    add_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_0 thei_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_24_V0),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23(STALLENABLE,1838)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_backStall = i_llvm_fpga_mem_lm1076_add79_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_and0 = i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_wireValid = SE_out_i_llvm_fpga_mem_memdep_add77_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_and0;

    // SE_out_i_llvm_fpga_mem_memdep_add77(STALLENABLE,1856)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_add77_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_add77_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_add77_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_add77_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_add77_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_add77_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_add77_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_memdep_add77_fromReg2 <= SE_out_i_llvm_fpga_mem_memdep_add77_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_add77_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numrows_i_i48_add23_backStall) & SE_out_i_llvm_fpga_mem_memdep_add77_wireValid) | SE_out_i_llvm_fpga_mem_memdep_add77_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_add77_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_t_numcols_i_i45_add25_backStall) & SE_out_i_llvm_fpga_mem_memdep_add77_wireValid) | SE_out_i_llvm_fpga_mem_memdep_add77_fromReg1;
    assign SE_out_i_llvm_fpga_mem_memdep_add77_consumed2 = (~ (redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_stall_out) & SE_out_i_llvm_fpga_mem_memdep_add77_wireValid) | SE_out_i_llvm_fpga_mem_memdep_add77_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_add77_StallValid = SE_out_i_llvm_fpga_mem_memdep_add77_backStall & SE_out_i_llvm_fpga_mem_memdep_add77_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_add77_toReg0 = SE_out_i_llvm_fpga_mem_memdep_add77_StallValid & SE_out_i_llvm_fpga_mem_memdep_add77_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_add77_toReg1 = SE_out_i_llvm_fpga_mem_memdep_add77_StallValid & SE_out_i_llvm_fpga_mem_memdep_add77_consumed1;
    assign SE_out_i_llvm_fpga_mem_memdep_add77_toReg2 = SE_out_i_llvm_fpga_mem_memdep_add77_StallValid & SE_out_i_llvm_fpga_mem_memdep_add77_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_add77_or0 = SE_out_i_llvm_fpga_mem_memdep_add77_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_add77_or1 = SE_out_i_llvm_fpga_mem_memdep_add77_consumed1 & SE_out_i_llvm_fpga_mem_memdep_add77_or0;
    assign SE_out_i_llvm_fpga_mem_memdep_add77_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_add77_consumed2 & SE_out_i_llvm_fpga_mem_memdep_add77_or1);
    assign SE_out_i_llvm_fpga_mem_memdep_add77_backStall = SE_out_i_llvm_fpga_mem_memdep_add77_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_add77_V0 = SE_out_i_llvm_fpga_mem_memdep_add77_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_add77_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_add77_V1 = SE_out_i_llvm_fpga_mem_memdep_add77_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_add77_fromReg1);
    assign SE_out_i_llvm_fpga_mem_memdep_add77_V2 = SE_out_i_llvm_fpga_mem_memdep_add77_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_add77_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_add77_wireValid = i_llvm_fpga_mem_memdep_add77_out_o_valid;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15(BITJOIN,1562)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_q = i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_out_dest_data_out_25_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15(BITSELECT,1563)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_lm72266_add14(BITJOIN,1601)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_q = i_llvm_fpga_ffwd_dest_i32_lm72266_add14_out_dest_data_out_16_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_lm72266_add14(BITSELECT,1602)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_q[31:0]);

    // i_cmp11_i_i_add44(COMPARE,120)@2
    assign i_cmp11_i_i_add44_a = {2'b00, bubble_select_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_b};
    assign i_cmp11_i_i_add44_b = {2'b00, bubble_select_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_b};
    assign i_cmp11_i_i_add44_o = $unsigned(i_cmp11_i_i_add44_a) - $unsigned(i_cmp11_i_i_add44_b);
    assign i_cmp11_i_i_add44_c[0] = i_cmp11_i_i_add44_o[33];

    // i_or_cond431_add58(LOGICAL,200)@2
    assign i_or_cond431_add58_q = i_cmp11_i_i_add44_c & bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_b;

    // i_or_cond431_not_add63(LOGICAL,201)@2
    assign i_or_cond431_not_add63_q = i_or_cond431_add58_q ^ VCC_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21(BITJOIN,1571)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_q = i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_out_dest_data_out_15_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21(BITSELECT,1572)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_q[0:0]);

    // SE_redist25_i_acl_45_add62_q_4_1(STALLENABLE,2051)
    // Valid signal propagation
    assign SE_redist25_i_acl_45_add62_q_4_1_V0 = SE_redist25_i_acl_45_add62_q_4_1_R_v_0;
    // Stall signal propagation
    assign SE_redist25_i_acl_45_add62_q_4_1_s_tv_0 = SE_redist25_i_acl_45_add62_q_4_2_backStall & SE_redist25_i_acl_45_add62_q_4_1_R_v_0;
    // Backward Enable generation
    assign SE_redist25_i_acl_45_add62_q_4_1_backEN = ~ (SE_redist25_i_acl_45_add62_q_4_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist25_i_acl_45_add62_q_4_1_v_s_0 = SE_redist25_i_acl_45_add62_q_4_1_backEN & SE_redist25_i_acl_45_add62_q_4_0_V0;
    // Backward Stall generation
    assign SE_redist25_i_acl_45_add62_q_4_1_backStall = ~ (SE_redist25_i_acl_45_add62_q_4_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist25_i_acl_45_add62_q_4_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist25_i_acl_45_add62_q_4_1_backEN == 1'b0)
            begin
                SE_redist25_i_acl_45_add62_q_4_1_R_v_0 <= SE_redist25_i_acl_45_add62_q_4_1_R_v_0 & SE_redist25_i_acl_45_add62_q_4_1_s_tv_0;
            end
            else
            begin
                SE_redist25_i_acl_45_add62_q_4_1_R_v_0 <= SE_redist25_i_acl_45_add62_q_4_1_v_s_0;
            end

        end
    end

    // SE_redist25_i_acl_45_add62_q_4_0(STALLENABLE,2050)
    // Valid signal propagation
    assign SE_redist25_i_acl_45_add62_q_4_0_V0 = SE_redist25_i_acl_45_add62_q_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist25_i_acl_45_add62_q_4_0_s_tv_0 = SE_redist25_i_acl_45_add62_q_4_1_backStall & SE_redist25_i_acl_45_add62_q_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist25_i_acl_45_add62_q_4_0_backEN = ~ (SE_redist25_i_acl_45_add62_q_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist25_i_acl_45_add62_q_4_0_v_s_0 = SE_redist25_i_acl_45_add62_q_4_0_backEN & SE_i_acl_45_add62_V1;
    // Backward Stall generation
    assign SE_redist25_i_acl_45_add62_q_4_0_backStall = ~ (SE_redist25_i_acl_45_add62_q_4_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist25_i_acl_45_add62_q_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist25_i_acl_45_add62_q_4_0_backEN == 1'b0)
            begin
                SE_redist25_i_acl_45_add62_q_4_0_R_v_0 <= SE_redist25_i_acl_45_add62_q_4_0_R_v_0 & SE_redist25_i_acl_45_add62_q_4_0_s_tv_0;
            end
            else
            begin
                SE_redist25_i_acl_45_add62_q_4_0_R_v_0 <= SE_redist25_i_acl_45_add62_q_4_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18(STALLENABLE,1794)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_backStall = SE_i_acl_45_add62_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_wireValid = i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12(STALLENABLE,1822)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_backStall = SE_i_acl_45_add62_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_and0 = i_llvm_fpga_ffwd_dest_i32_lm74368_add12_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_and1 = i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_wireValid = SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_V1 & SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_and1;

    // SE_i_acl_45_add62(STALLENABLE,1777)
    // Valid signal propagation
    assign SE_i_acl_45_add62_V0 = SE_i_acl_45_add62_R_v_0;
    assign SE_i_acl_45_add62_V1 = SE_i_acl_45_add62_R_v_1;
    // Stall signal propagation
    assign SE_i_acl_45_add62_s_tv_0 = SE_i_pred_sel48_add70_backStall & SE_i_acl_45_add62_R_v_0;
    assign SE_i_acl_45_add62_s_tv_1 = SE_redist25_i_acl_45_add62_q_4_0_backStall & SE_i_acl_45_add62_R_v_1;
    // Backward Enable generation
    assign SE_i_acl_45_add62_or0 = SE_i_acl_45_add62_s_tv_0;
    assign SE_i_acl_45_add62_backEN = ~ (SE_i_acl_45_add62_s_tv_1 | SE_i_acl_45_add62_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_acl_45_add62_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_V0 & SE_i_acl_45_add62_backEN;
    assign SE_i_acl_45_add62_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_V0 & SE_i_acl_45_add62_and0;
    // Backward Stall generation
    assign SE_i_acl_45_add62_backStall = ~ (SE_i_acl_45_add62_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_acl_45_add62_R_v_0 <= 1'b0;
            SE_i_acl_45_add62_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_acl_45_add62_backEN == 1'b0)
            begin
                SE_i_acl_45_add62_R_v_0 <= SE_i_acl_45_add62_R_v_0 & SE_i_acl_45_add62_s_tv_0;
            end
            else
            begin
                SE_i_acl_45_add62_R_v_0 <= SE_i_acl_45_add62_v_s_0;
            end

            if (SE_i_acl_45_add62_backEN == 1'b0)
            begin
                SE_i_acl_45_add62_R_v_1 <= SE_i_acl_45_add62_R_v_1 & SE_i_acl_45_add62_s_tv_1;
            end
            else
            begin
                SE_i_acl_45_add62_R_v_1 <= SE_i_acl_45_add62_v_s_0;
            end

        end
    end

    // SE_i_pred_sel48_add70(STALLENABLE,1913)
    // Valid signal propagation
    assign SE_i_pred_sel48_add70_V0 = SE_i_pred_sel48_add70_wireValid;
    // Backward Stall generation
    assign SE_i_pred_sel48_add70_backStall = SE_i_unnamed_add72_backStall | ~ (SE_i_pred_sel48_add70_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_pred_sel48_add70_and0 = SE_i_acl_45_add62_V0;
    assign SE_i_pred_sel48_add70_wireValid = SE_i_unnamed_add67_V0 & SE_i_pred_sel48_add70_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21(STALLENABLE,1796)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_backStall = SE_i_unnamed_add67_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_wireValid = i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14(STALLENABLE,1820)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_backStall = SE_i_unnamed_add67_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_and0 = i_llvm_fpga_ffwd_dest_i32_lm72266_add14_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_and1 = i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_wireValid = SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_and1;

    // SE_i_unnamed_add67(STALLENABLE,1917)
    // Valid signal propagation
    assign SE_i_unnamed_add67_V0 = SE_i_unnamed_add67_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_add67_s_tv_0 = SE_i_pred_sel48_add70_backStall & SE_i_unnamed_add67_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_add67_backEN = ~ (SE_i_unnamed_add67_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_add67_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_V0 & SE_i_unnamed_add67_backEN;
    assign SE_i_unnamed_add67_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_V0 & SE_i_unnamed_add67_and0;
    // Backward Stall generation
    assign SE_i_unnamed_add67_backStall = ~ (SE_i_unnamed_add67_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_add67_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_add67_backEN == 1'b0)
            begin
                SE_i_unnamed_add67_R_v_0 <= SE_i_unnamed_add67_R_v_0 & SE_i_unnamed_add67_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_add67_R_v_0 <= SE_i_unnamed_add67_v_s_0;
            end

        end
    end

    // i_unnamed_add67(LOGICAL,206)@2 + 1
    assign i_unnamed_add67_qi = bubble_select_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_b | i_or_cond431_not_add63_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_add67_delay ( .xin(i_unnamed_add67_qi), .xout(i_unnamed_add67_q), .ena(SE_i_unnamed_add67_backEN[0]), .clk(clock), .aclr(resetn) );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18(BITJOIN,1568)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_q = i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_out_dest_data_out_15_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18(BITSELECT,1569)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13(BITJOIN,1565)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_q = i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_out_dest_data_out_25_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13(BITSELECT,1566)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_lm74368_add12(BITJOIN,1604)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_q = i_llvm_fpga_ffwd_dest_i32_lm74368_add12_out_dest_data_out_17_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_lm74368_add12(BITSELECT,1605)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_q[31:0]);

    // i_cmp2_i_i_add43(COMPARE,122)@2
    assign i_cmp2_i_i_add43_a = {2'b00, bubble_select_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_b};
    assign i_cmp2_i_i_add43_b = {2'b00, bubble_select_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_b};
    assign i_cmp2_i_i_add43_o = $unsigned(i_cmp2_i_i_add43_a) - $unsigned(i_cmp2_i_i_add43_b);
    assign i_cmp2_i_i_add43_c[0] = i_cmp2_i_i_add43_o[33];

    // i_or_cond430_add57(LOGICAL,199)@2
    assign i_or_cond430_add57_q = i_cmp2_i_i_add43_c & bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_b;

    // i_acl_45_add62(LOGICAL,116)@2 + 1
    assign i_acl_45_add62_qi = i_or_cond430_add57_q & bubble_select_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_45_add62_delay ( .xin(i_acl_45_add62_qi), .xout(i_acl_45_add62_q), .ena(SE_i_acl_45_add62_backEN[0]), .clk(clock), .aclr(resetn) );

    // i_pred_sel48_add70(LOGICAL,202)@3
    assign i_pred_sel48_add70_q = i_acl_45_add62_q ^ i_unnamed_add67_q;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22(STALLENABLE,1812)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_backStall = SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_valid_out;

    // SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0(STALLENABLE,2036)
    // Valid signal propagation
    assign SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_V0 = SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_s_tv_0 = SE_i_unnamed_add72_backStall & SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_backEN = ~ (SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_v_s_0 = SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_V0;
    // Backward Stall generation
    assign SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_backStall = ~ (SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_R_v_0 <= SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_R_v_0 & SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_s_tv_0;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_R_v_0 <= SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22(BITJOIN,1593)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_q = i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22(BITSELECT,1594)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_q[0:0]);

    // redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0(REG,1473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_backEN == 1'b1)
        begin
            redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_b);
        end
    end

    // i_unnamed_add72(LOGICAL,208)@3 + 1
    assign i_unnamed_add72_qi = redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_q | i_pred_sel48_add70_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_add72_delay ( .xin(i_unnamed_add72_qi), .xout(i_unnamed_add72_q), .ena(SE_i_unnamed_add72_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_i_unnamed_add72(STALLENABLE,1919)
    // Valid signal propagation
    assign SE_i_unnamed_add72_V0 = SE_i_unnamed_add72_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_add72_s_tv_0 = redist12_i_unnamed_add72_q_35_fifo_stall_out & SE_i_unnamed_add72_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_add72_backEN = ~ (SE_i_unnamed_add72_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_add72_and0 = SE_i_pred_sel48_add70_V0 & SE_i_unnamed_add72_backEN;
    assign SE_i_unnamed_add72_v_s_0 = SE_redist20_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0_1_0_V0 & SE_i_unnamed_add72_and0;
    // Backward Stall generation
    assign SE_i_unnamed_add72_backStall = ~ (SE_i_unnamed_add72_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_add72_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_add72_backEN == 1'b0)
            begin
                SE_i_unnamed_add72_R_v_0 <= SE_i_unnamed_add72_R_v_0 & SE_i_unnamed_add72_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_add72_R_v_0 <= SE_i_unnamed_add72_v_s_0;
            end

        end
    end

    // redist12_i_unnamed_add72_q_35_fifo(STALLFIFO,1461)
    assign redist12_i_unnamed_add72_q_35_fifo_valid_in = SE_i_unnamed_add72_V0;
    assign redist12_i_unnamed_add72_q_35_fifo_stall_in = SE_out_redist13_i_unnamed_add69_q_32_fifo_backStall;
    assign redist12_i_unnamed_add72_q_35_fifo_data_in = i_unnamed_add72_q;
    assign redist12_i_unnamed_add72_q_35_fifo_valid_in_bitsignaltemp = redist12_i_unnamed_add72_q_35_fifo_valid_in[0];
    assign redist12_i_unnamed_add72_q_35_fifo_stall_in_bitsignaltemp = redist12_i_unnamed_add72_q_35_fifo_stall_in[0];
    assign redist12_i_unnamed_add72_q_35_fifo_valid_out[0] = redist12_i_unnamed_add72_q_35_fifo_valid_out_bitsignaltemp;
    assign redist12_i_unnamed_add72_q_35_fifo_stall_out[0] = redist12_i_unnamed_add72_q_35_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist12_i_unnamed_add72_q_35_fifo (
        .valid_in(redist12_i_unnamed_add72_q_35_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_i_unnamed_add72_q_35_fifo_stall_in_bitsignaltemp),
        .data_in(i_unnamed_add72_q),
        .valid_out(redist12_i_unnamed_add72_q_35_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_i_unnamed_add72_q_35_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_i_unnamed_add72_q_35_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist12_i_unnamed_add72_q_35_fifo(BITJOIN,1697)
    assign bubble_join_redist12_i_unnamed_add72_q_35_fifo_q = redist12_i_unnamed_add72_q_35_fifo_data_out;

    // bubble_select_redist12_i_unnamed_add72_q_35_fifo(BITSELECT,1698)
    assign bubble_select_redist12_i_unnamed_add72_q_35_fifo_b = $unsigned(bubble_join_redist12_i_unnamed_add72_q_35_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_ml535_add73(BITJOIN,1654)
    assign bubble_join_i_llvm_fpga_mem_ml535_add73_q = i_llvm_fpga_mem_ml535_add73_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_ml535_add73(BITSELECT,1655)
    assign bubble_select_i_llvm_fpga_mem_ml535_add73_b = $unsigned(bubble_join_i_llvm_fpga_mem_ml535_add73_q[31:0]);

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_1(STALLENABLE,2100)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_1_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_1_reg_valid_out;

    // i_cmp11_i36_i_add50(COMPARE,119)@5
    assign i_cmp11_i36_i_add50_a = {2'b00, redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_q};
    assign i_cmp11_i36_i_add50_b = {2'b00, i_replace_phi77_add40_q};
    assign i_cmp11_i36_i_add50_o = $unsigned(i_cmp11_i36_i_add50_a) - $unsigned(i_cmp11_i36_i_add50_b);
    assign i_cmp11_i36_i_add50_c[0] = i_cmp11_i36_i_add50_o[33];

    // SE_i_or_cond429_add65(STALLENABLE,1909)
    // Valid signal propagation
    assign SE_i_or_cond429_add65_V0 = SE_i_or_cond429_add65_R_v_0;
    // Stall signal propagation
    assign SE_i_or_cond429_add65_s_tv_0 = SE_i_unnamed_add69_backStall & SE_i_or_cond429_add65_R_v_0;
    // Backward Enable generation
    assign SE_i_or_cond429_add65_backEN = ~ (SE_i_or_cond429_add65_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_or_cond429_add65_v_s_0 = SE_i_or_cond429_add65_backEN & SR_SE_i_or_cond429_add65_V;
    // Backward Stall generation
    assign SE_i_or_cond429_add65_backStall = ~ (SE_i_or_cond429_add65_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_or_cond429_add65_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_or_cond429_add65_backEN == 1'b0)
            begin
                SE_i_or_cond429_add65_R_v_0 <= SE_i_or_cond429_add65_R_v_0 & SE_i_or_cond429_add65_s_tv_0;
            end
            else
            begin
                SE_i_or_cond429_add65_R_v_0 <= SE_i_or_cond429_add65_v_s_0;
            end

        end
    end

    // SR_SE_i_or_cond429_add65(STALLREG,2428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_or_cond429_add65_r_valid <= 1'b0;
            SR_SE_i_or_cond429_add65_r_data0 <= 1'bx;
            SR_SE_i_or_cond429_add65_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_or_cond429_add65_r_valid <= SE_i_or_cond429_add65_backStall & (SR_SE_i_or_cond429_add65_r_valid | SR_SE_i_or_cond429_add65_i_valid);

            if (SR_SE_i_or_cond429_add65_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_or_cond429_add65_r_data0 <= i_cmp11_i36_i_add50_c;
                SR_SE_i_or_cond429_add65_r_data1 <= i_cmp_i22_i_add61_c;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_or_cond429_add65_and0 = SE_i_cmp11_i36_i_add50_V0;
    assign SR_SE_i_or_cond429_add65_i_valid = SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_V1 & SR_SE_i_or_cond429_add65_and0;
    // Stall signal propagation
    assign SR_SE_i_or_cond429_add65_backStall = SR_SE_i_or_cond429_add65_r_valid | ~ (SR_SE_i_or_cond429_add65_i_valid);

    // Valid
    assign SR_SE_i_or_cond429_add65_V = SR_SE_i_or_cond429_add65_r_valid == 1'b1 ? SR_SE_i_or_cond429_add65_r_valid : SR_SE_i_or_cond429_add65_i_valid;

    // Data0
    assign SR_SE_i_or_cond429_add65_D0 = SR_SE_i_or_cond429_add65_r_valid == 1'b1 ? SR_SE_i_or_cond429_add65_r_data0 : i_cmp11_i36_i_add50_c;
    // Data1
    assign SR_SE_i_or_cond429_add65_D1 = SR_SE_i_or_cond429_add65_r_valid == 1'b1 ? SR_SE_i_or_cond429_add65_r_data1 : i_cmp_i22_i_add61_c;

    // SE_i_cmp11_i36_i_add50(STALLENABLE,1780)
    // Valid signal propagation
    assign SE_i_cmp11_i36_i_add50_V0 = SE_i_cmp11_i36_i_add50_wireValid;
    // Backward Stall generation
    assign SE_i_cmp11_i36_i_add50_backStall = SR_SE_i_or_cond429_add65_backStall | ~ (SE_i_cmp11_i36_i_add50_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_cmp11_i36_i_add50_and0 = SE_out_i_llvm_fpga_pop_i32_pop15_add32_V0;
    assign SE_i_cmp11_i36_i_add50_wireValid = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V0 & SE_i_cmp11_i36_i_add50_and0;

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_2(STALLENABLE,2102)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_2_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1(BLACKBOX,149)@4
    // in in_stall_in@20000000
    // out out_dest_data_out_21_0@5
    // out out_stall_out@20000000
    // out out_valid_out@5
    add_i_llvm_fpga_ffwd_dest_i32_replace_phi5175_0 thei_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_pop16_add33_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_out_dest_data_out_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi14_push19_add88(STALLENABLE,1886)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi14_push19_add88_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi14_push19_add88_wireValid = i_llvm_fpga_push_i1_memdep_phi14_push19_add88_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi14_push19_add88(BLACKBOX,179)@108
    // in in_stall_in@20000000
    // out out_data_out@109
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@109
    add_i_llvm_fpga_push_i1_memdep_phi14_push19_0 thei_llvm_fpga_push_i1_memdep_phi14_push19_add88 (
        .in_data_in(SR_SE_i_lm1076_toi1_intcast_add82_sel_x_D0),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_out_feedback_stall_out_19),
        .in_keep_going(SR_SE_i_lm1076_toi1_intcast_add82_sel_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi14_push19_add88_backStall),
        .in_valid_in(SE_i_lm1076_toi1_intcast_add82_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_memdep_phi14_push19_add88_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_memdep_phi14_push19_add88_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi14_push19_add88_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi14_push19_add88_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_lm1076_toi1_intcast_add82_sel_x(STALLENABLE,1772)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_lm1076_toi1_intcast_add82_sel_x_fromReg0 <= '0;
            SE_i_lm1076_toi1_intcast_add82_sel_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_lm1076_toi1_intcast_add82_sel_x_fromReg0 <= SE_i_lm1076_toi1_intcast_add82_sel_x_toReg0;
            // Successor 1
            SE_i_lm1076_toi1_intcast_add82_sel_x_fromReg1 <= SE_i_lm1076_toi1_intcast_add82_sel_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_lm1076_toi1_intcast_add82_sel_x_consumed0 = (~ (i_llvm_fpga_push_i1_memdep_phi14_push19_add88_out_stall_out) & SE_i_lm1076_toi1_intcast_add82_sel_x_wireValid) | SE_i_lm1076_toi1_intcast_add82_sel_x_fromReg0;
    assign SE_i_lm1076_toi1_intcast_add82_sel_x_consumed1 = (~ (i_llvm_fpga_push_i32_push16_add81_out_stall_out) & SE_i_lm1076_toi1_intcast_add82_sel_x_wireValid) | SE_i_lm1076_toi1_intcast_add82_sel_x_fromReg1;
    // Consuming
    assign SE_i_lm1076_toi1_intcast_add82_sel_x_StallValid = SE_i_lm1076_toi1_intcast_add82_sel_x_backStall & SE_i_lm1076_toi1_intcast_add82_sel_x_wireValid;
    assign SE_i_lm1076_toi1_intcast_add82_sel_x_toReg0 = SE_i_lm1076_toi1_intcast_add82_sel_x_StallValid & SE_i_lm1076_toi1_intcast_add82_sel_x_consumed0;
    assign SE_i_lm1076_toi1_intcast_add82_sel_x_toReg1 = SE_i_lm1076_toi1_intcast_add82_sel_x_StallValid & SE_i_lm1076_toi1_intcast_add82_sel_x_consumed1;
    // Backward Stall generation
    assign SE_i_lm1076_toi1_intcast_add82_sel_x_or0 = SE_i_lm1076_toi1_intcast_add82_sel_x_consumed0;
    assign SE_i_lm1076_toi1_intcast_add82_sel_x_wireStall = ~ (SE_i_lm1076_toi1_intcast_add82_sel_x_consumed1 & SE_i_lm1076_toi1_intcast_add82_sel_x_or0);
    assign SE_i_lm1076_toi1_intcast_add82_sel_x_backStall = SE_i_lm1076_toi1_intcast_add82_sel_x_wireStall;
    // Valid signal propagation
    assign SE_i_lm1076_toi1_intcast_add82_sel_x_V0 = SE_i_lm1076_toi1_intcast_add82_sel_x_wireValid & ~ (SE_i_lm1076_toi1_intcast_add82_sel_x_fromReg0);
    assign SE_i_lm1076_toi1_intcast_add82_sel_x_V1 = SE_i_lm1076_toi1_intcast_add82_sel_x_wireValid & ~ (SE_i_lm1076_toi1_intcast_add82_sel_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_lm1076_toi1_intcast_add82_sel_x_wireValid = SR_SE_i_lm1076_toi1_intcast_add82_sel_x_V;

    // SE_out_i_llvm_fpga_push_i32_push16_add81(STALLENABLE,1900)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_push16_add81_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_push16_add81_wireValid = i_llvm_fpga_push_i32_push16_add81_out_valid_out;

    // i_llvm_fpga_push_i32_push16_add81(BLACKBOX,186)@108
    // in in_stall_in@20000000
    // out out_data_out@109
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@109
    add_i_llvm_fpga_push_i32_push16_0 thei_llvm_fpga_push_i32_push16_add81 (
        .in_data_in(SR_SE_i_lm1076_toi1_intcast_add82_sel_x_D3),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_pop16_add33_out_feedback_stall_out_16),
        .in_keep_going(SR_SE_i_lm1076_toi1_intcast_add82_sel_x_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_push16_add81_backStall),
        .in_valid_in(SE_i_lm1076_toi1_intcast_add82_sel_x_V1),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_push16_add81_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_push16_add81_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i32_push16_add81_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_push16_add81_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0(REG,1508)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN == 1'b1)
        begin
            redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q <= $unsigned(bubble_select_add_B5_merge_reg_aunroll_x_b);
        end
    end

    // redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1(REG,1509)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN == 1'b1)
        begin
            redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q <= $unsigned(redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q);
        end
    end

    // SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1(STALLENABLE,2074)
    // Valid signal propagation
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V0 = SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_s_tv_0 = SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall & SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN = ~ (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_v_s_0 = SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN & SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V0;
    // Backward Stall generation
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall = ~ (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0 <= SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0 & SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_s_tv_0;
            end
            else
            begin
                SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0 <= SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_v_s_0;
            end

        end
    end

    // SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2(STALLREG,2421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid <= 1'b0;
            SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid <= SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall & (SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid | SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid);

            if (SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data0 <= $unsigned(redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid = SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall = SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid | ~ (SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid);

    // Valid
    assign SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V = SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid : SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid;

    assign SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_D0 = SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data0 : redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q;

    // redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2(REG,1510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b1)
        begin
            redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q <= $unsigned(SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_D0);
        end
    end

    // i_llvm_fpga_pop_i32_pop16_add33(BLACKBOX,175)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    add_i_llvm_fpga_pop_i32_pop16_0 thei_llvm_fpga_pop_i32_pop16_add33 (
        .in_data_in(c_i32_0101_q),
        .in_dir(redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_push16_add81_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_push16_add81_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_pop16_add33_backStall),
        .in_valid_in(SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V2),
        .out_data_out(i_llvm_fpga_pop_i32_pop16_add33_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_pop16_add33_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i32_pop16_add33_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_pop16_add33_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_pop16_add33(STALLENABLE,1878)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_pop16_add33_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_pop16_add33_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_pop16_add33_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_pop16_add33_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_pop16_add33_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_pop16_add33_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_consumed0 = (~ (SE_i_cmp2_i25_i_add52_backStall) & SE_out_i_llvm_fpga_pop_i32_pop16_add33_wireValid) | SE_out_i_llvm_fpga_pop_i32_pop16_add33_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_backStall) & SE_out_i_llvm_fpga_pop_i32_pop16_add33_wireValid) | SE_out_i_llvm_fpga_pop_i32_pop16_add33_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_StallValid = SE_out_i_llvm_fpga_pop_i32_pop16_add33_backStall & SE_out_i_llvm_fpga_pop_i32_pop16_add33_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_toReg0 = SE_out_i_llvm_fpga_pop_i32_pop16_add33_StallValid & SE_out_i_llvm_fpga_pop_i32_pop16_add33_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_toReg1 = SE_out_i_llvm_fpga_pop_i32_pop16_add33_StallValid & SE_out_i_llvm_fpga_pop_i32_pop16_add33_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_or0 = SE_out_i_llvm_fpga_pop_i32_pop16_add33_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_pop16_add33_consumed1 & SE_out_i_llvm_fpga_pop_i32_pop16_add33_or0);
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_backStall = SE_out_i_llvm_fpga_pop_i32_pop16_add33_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_V0 = SE_out_i_llvm_fpga_pop_i32_pop16_add33_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_pop16_add33_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_V1 = SE_out_i_llvm_fpga_pop_i32_pop16_add33_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_pop16_add33_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_and0 = i_llvm_fpga_pop_i32_pop16_add33_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_and1 = i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_out_valid_out & SE_out_i_llvm_fpga_pop_i32_pop16_add33_and0;
    assign SE_out_i_llvm_fpga_pop_i32_pop16_add33_wireValid = SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V0 & SE_out_i_llvm_fpga_pop_i32_pop16_add33_and1;

    // SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2(STALLENABLE,2075)
    // Valid signal propagation
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V0 = SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0;
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V1 = SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1;
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V2 = SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2;
    // Stall signal propagation
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_0 = SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backStall & SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0;
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_1 = i_llvm_fpga_pop_i32_pop15_add32_out_stall_out & SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1;
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_2 = i_llvm_fpga_pop_i32_pop16_add33_out_stall_out & SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2;
    // Backward Enable generation
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or0 = SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_0;
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or1 = SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_1 | SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or0;
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN = ~ (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_2 | SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0 = SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN & SR_SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V;
    // Backward Stall generation
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall = ~ (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0 <= 1'b0;
            SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1 <= 1'b0;
            SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0 <= SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0 & SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_0;
            end
            else
            begin
                SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0 <= SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0;
            end

            if (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1 <= SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1 & SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_1;
            end
            else
            begin
                SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1 <= SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0;
            end

            if (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2 <= SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2 & SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_2;
            end
            else
            begin
                SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2 <= SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0;
            end

        end
    end

    // SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0(STALLENABLE,2076)
    // Valid signal propagation
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V0 = SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0;
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V1 = SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1;
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V2 = SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_2;
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V3 = SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_3;
    // Stall signal propagation
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i32_pop16_add33_backStall & SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0;
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_1 = SE_out_i_llvm_fpga_pop_i32_pop15_add32_backStall & SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1;
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_2 = i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_out_stall_out & SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_2;
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_3 = redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_stall_out & SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_3;
    // Backward Enable generation
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_or0 = SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_0;
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_or1 = SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_1 | SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_or0;
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_or2 = SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_2 | SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_or1;
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN = ~ (SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_3 | SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_v_s_0 = SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN & SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V0;
    // Backward Stall generation
    assign SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backStall = ~ (SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0 <= 1'b0;
            SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1 <= 1'b0;
            SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_2 <= 1'b0;
            SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0 <= SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0 & SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_0;
            end
            else
            begin
                SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0 <= SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_v_s_0;
            end

            if (SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1 <= SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1 & SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_1;
            end
            else
            begin
                SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1 <= SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_v_s_0;
            end

            if (SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_2 <= SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_2 & SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_2;
            end
            else
            begin
                SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_2 <= SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_v_s_0;
            end

            if (SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_3 <= SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_3 & SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_3;
            end
            else
            begin
                SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_3 <= SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_v_s_0;
            end

        end
    end

    // SE_i_lm1097_toi1_intcast_add85_sel_x(STALLENABLE,1773)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_lm1097_toi1_intcast_add85_sel_x_fromReg0 <= '0;
            SE_i_lm1097_toi1_intcast_add85_sel_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_lm1097_toi1_intcast_add85_sel_x_fromReg0 <= SE_i_lm1097_toi1_intcast_add85_sel_x_toReg0;
            // Successor 1
            SE_i_lm1097_toi1_intcast_add85_sel_x_fromReg1 <= SE_i_lm1097_toi1_intcast_add85_sel_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_lm1097_toi1_intcast_add85_sel_x_consumed0 = (~ (i_llvm_fpga_push_i1_memdep_phi15_push20_add89_out_stall_out) & SE_i_lm1097_toi1_intcast_add85_sel_x_wireValid) | SE_i_lm1097_toi1_intcast_add85_sel_x_fromReg0;
    assign SE_i_lm1097_toi1_intcast_add85_sel_x_consumed1 = (~ (i_llvm_fpga_push_i32_push15_add84_out_stall_out) & SE_i_lm1097_toi1_intcast_add85_sel_x_wireValid) | SE_i_lm1097_toi1_intcast_add85_sel_x_fromReg1;
    // Consuming
    assign SE_i_lm1097_toi1_intcast_add85_sel_x_StallValid = SE_i_lm1097_toi1_intcast_add85_sel_x_backStall & SE_i_lm1097_toi1_intcast_add85_sel_x_wireValid;
    assign SE_i_lm1097_toi1_intcast_add85_sel_x_toReg0 = SE_i_lm1097_toi1_intcast_add85_sel_x_StallValid & SE_i_lm1097_toi1_intcast_add85_sel_x_consumed0;
    assign SE_i_lm1097_toi1_intcast_add85_sel_x_toReg1 = SE_i_lm1097_toi1_intcast_add85_sel_x_StallValid & SE_i_lm1097_toi1_intcast_add85_sel_x_consumed1;
    // Backward Stall generation
    assign SE_i_lm1097_toi1_intcast_add85_sel_x_or0 = SE_i_lm1097_toi1_intcast_add85_sel_x_consumed0;
    assign SE_i_lm1097_toi1_intcast_add85_sel_x_wireStall = ~ (SE_i_lm1097_toi1_intcast_add85_sel_x_consumed1 & SE_i_lm1097_toi1_intcast_add85_sel_x_or0);
    assign SE_i_lm1097_toi1_intcast_add85_sel_x_backStall = SE_i_lm1097_toi1_intcast_add85_sel_x_wireStall;
    // Valid signal propagation
    assign SE_i_lm1097_toi1_intcast_add85_sel_x_V0 = SE_i_lm1097_toi1_intcast_add85_sel_x_wireValid & ~ (SE_i_lm1097_toi1_intcast_add85_sel_x_fromReg0);
    assign SE_i_lm1097_toi1_intcast_add85_sel_x_V1 = SE_i_lm1097_toi1_intcast_add85_sel_x_wireValid & ~ (SE_i_lm1097_toi1_intcast_add85_sel_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_lm1097_toi1_intcast_add85_sel_x_wireValid = SR_SE_i_lm1097_toi1_intcast_add85_sel_x_V;

    // SE_out_i_llvm_fpga_push_i32_push15_add84(STALLENABLE,1898)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_push15_add84_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_push15_add84_wireValid = i_llvm_fpga_push_i32_push15_add84_out_valid_out;

    // i_llvm_fpga_push_i32_push15_add84(BLACKBOX,185)@108
    // in in_stall_in@20000000
    // out out_data_out@109
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@109
    add_i_llvm_fpga_push_i32_push15_0 thei_llvm_fpga_push_i32_push15_add84 (
        .in_data_in(SR_SE_i_lm1097_toi1_intcast_add85_sel_x_D3),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_pop15_add32_out_feedback_stall_out_15),
        .in_keep_going(SR_SE_i_lm1097_toi1_intcast_add85_sel_x_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_push15_add84_backStall),
        .in_valid_in(SE_i_lm1097_toi1_intcast_add85_sel_x_V1),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_push15_add84_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_push15_add84_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i32_push15_add84_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_push15_add84_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_pop15_add32(BLACKBOX,174)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    add_i_llvm_fpga_pop_i32_pop15_0 thei_llvm_fpga_pop_i32_pop15_add32 (
        .in_data_in(c_i32_0101_q),
        .in_dir(redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_push15_add84_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_push15_add84_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_pop15_add32_backStall),
        .in_valid_in(SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V1),
        .out_data_out(i_llvm_fpga_pop_i32_pop15_add32_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_pop15_add32_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i32_pop15_add32_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_pop15_add32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_pop15_add32(STALLENABLE,1876)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_pop15_add32_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_pop15_add32_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_pop15_add32_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_pop15_add32_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_pop15_add32_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_pop15_add32_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_consumed0 = (~ (SE_i_cmp11_i36_i_add50_backStall) & SE_out_i_llvm_fpga_pop_i32_pop15_add32_wireValid) | SE_out_i_llvm_fpga_pop_i32_pop15_add32_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_backStall) & SE_out_i_llvm_fpga_pop_i32_pop15_add32_wireValid) | SE_out_i_llvm_fpga_pop_i32_pop15_add32_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_StallValid = SE_out_i_llvm_fpga_pop_i32_pop15_add32_backStall & SE_out_i_llvm_fpga_pop_i32_pop15_add32_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_toReg0 = SE_out_i_llvm_fpga_pop_i32_pop15_add32_StallValid & SE_out_i_llvm_fpga_pop_i32_pop15_add32_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_toReg1 = SE_out_i_llvm_fpga_pop_i32_pop15_add32_StallValid & SE_out_i_llvm_fpga_pop_i32_pop15_add32_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_or0 = SE_out_i_llvm_fpga_pop_i32_pop15_add32_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_pop15_add32_consumed1 & SE_out_i_llvm_fpga_pop_i32_pop15_add32_or0);
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_backStall = SE_out_i_llvm_fpga_pop_i32_pop15_add32_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_V0 = SE_out_i_llvm_fpga_pop_i32_pop15_add32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_pop15_add32_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_V1 = SE_out_i_llvm_fpga_pop_i32_pop15_add32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_pop15_add32_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_and0 = i_llvm_fpga_pop_i32_pop15_add32_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_and1 = i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_out_valid_out & SE_out_i_llvm_fpga_pop_i32_pop15_add32_and0;
    assign SE_out_i_llvm_fpga_pop_i32_pop15_add32_wireValid = SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V1 & SE_out_i_llvm_fpga_pop_i32_pop15_add32_and1;

    // i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0(BLACKBOX,148)@4
    // in in_stall_in@20000000
    // out out_dest_data_out_22_0@5
    // out out_stall_out@20000000
    // out out_valid_out@5
    add_i_llvm_fpga_ffwd_dest_i32_replace_phi4778_0 thei_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0 (
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_pop15_add32_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_22_0(i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_out_dest_data_out_22_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0(BITJOIN,1607)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_q = i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_out_dest_data_out_22_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0(BITSELECT,1608)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_pop15_add32(BITJOIN,1684)
    assign bubble_join_i_llvm_fpga_pop_i32_pop15_add32_q = i_llvm_fpga_pop_i32_pop15_add32_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_pop15_add32(BITSELECT,1685)
    assign bubble_select_i_llvm_fpga_pop_i32_pop15_add32_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_pop15_add32_q[31:0]);

    // redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0(REG,1511)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN == 1'b1)
        begin
            redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q <= $unsigned(redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q);
        end
    end

    // i_replace_phi77_add40(MUX,204)@5
    assign i_replace_phi77_add40_s = redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q;
    always @(i_replace_phi77_add40_s or bubble_select_i_llvm_fpga_pop_i32_pop15_add32_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_b)
    begin
        unique case (i_replace_phi77_add40_s)
            1'b0 : i_replace_phi77_add40_q = bubble_select_i_llvm_fpga_pop_i32_pop15_add32_b;
            1'b1 : i_replace_phi77_add40_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi4778_add0_b;
            default : i_replace_phi77_add40_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1(BITJOIN,1610)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_q = i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_out_dest_data_out_21_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1(BITSELECT,1611)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_pop16_add33(BITJOIN,1687)
    assign bubble_join_i_llvm_fpga_pop_i32_pop16_add33_q = i_llvm_fpga_pop_i32_pop16_add33_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_pop16_add33(BITSELECT,1688)
    assign bubble_select_i_llvm_fpga_pop_i32_pop16_add33_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_pop16_add33_q[31:0]);

    // i_replace_phi74_add41(MUX,203)@5
    assign i_replace_phi74_add41_s = redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q;
    always @(i_replace_phi74_add41_s or bubble_select_i_llvm_fpga_pop_i32_pop16_add33_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_b)
    begin
        unique case (i_replace_phi74_add41_s)
            1'b0 : i_replace_phi74_add41_q = bubble_select_i_llvm_fpga_pop_i32_pop16_add33_b;
            1'b1 : i_replace_phi74_add41_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi5175_add1_b;
            default : i_replace_phi74_add41_q = 32'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2(STALLENABLE,1808)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_backStall = SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_wireValid = i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_valid_out;

    // SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0(STALLENABLE,2037)
    // Valid signal propagation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_V0 = SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_s_tv_0 = SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_backStall & SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_backEN = ~ (SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_v_s_0 = SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_V0;
    // Backward Stall generation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_backStall = ~ (SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_backEN == 1'b0)
            begin
                SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_R_v_0 <= SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_R_v_0 & SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_s_tv_0;
            end
            else
            begin
                SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_R_v_0 <= SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_v_s_0;
            end

        end
    end

    // SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1(STALLENABLE,2038)
    // Valid signal propagation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_V0 = SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_s_tv_0 = SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_backStall & SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_backEN = ~ (SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_v_s_0 = SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_backEN & SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_V0;
    // Backward Stall generation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_backStall = ~ (SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_backEN == 1'b0)
            begin
                SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_R_v_0 <= SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_R_v_0 & SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_s_tv_0;
            end
            else
            begin
                SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_R_v_0 <= SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_v_s_0;
            end

        end
    end

    // SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2(STALLENABLE,2039)
    // Valid signal propagation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_V0 = SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_R_v_0;
    // Stall signal propagation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_backStall & SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_R_v_0;
    // Backward Enable generation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_backEN = ~ (SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_v_s_0 = SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_backEN & SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_V0;
    // Backward Stall generation
    assign SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_backStall = ~ (SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_backEN == 1'b0)
            begin
                SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_R_v_0 <= SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_R_v_0 & SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_s_tv_0;
            end
            else
            begin
                SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_R_v_0 <= SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2(BITJOIN,1589)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_q = i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2(BITSELECT,1590)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_q[0:0]);

    // redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0(REG,1474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_backEN == 1'b1)
        begin
            redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_b);
        end
    end

    // redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1(REG,1475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_backEN == 1'b1)
        begin
            redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_q <= $unsigned(redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_0_q);
        end
    end

    // redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2(REG,1476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_backEN == 1'b1)
        begin
            redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_q <= $unsigned(redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_1_q);
        end
    end

    // i_unnamed_add51(MUX,205)@5
    assign i_unnamed_add51_s = redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_q;
    always @(i_unnamed_add51_s or i_replace_phi74_add41_q or i_replace_phi77_add40_q)
    begin
        unique case (i_unnamed_add51_s)
            1'b0 : i_unnamed_add51_q = i_replace_phi74_add41_q;
            1'b1 : i_unnamed_add51_q = i_replace_phi77_add40_q;
            default : i_unnamed_add51_q = 32'b0;
        endcase
    end

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_4(STALLENABLE,2106)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_4_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_4_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3(BLACKBOX,145)@4
    // in in_stall_in@20000000
    // out out_dest_data_out_20_0@5
    // out out_stall_out@20000000
    // out out_valid_out@5
    add_i_llvm_fpga_ffwd_dest_i32_i_i_044971_0 thei_llvm_fpga_ffwd_dest_i32_i_i_044971_add3 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_out_dest_data_out_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3(BITJOIN,1598)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_q = i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_out_dest_data_out_20_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3(BITSELECT,1599)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_q[31:0]);

    // i_cmp_i22_i_add61(COMPARE,124)@5
    assign i_cmp_i22_i_add61_a = {2'b00, bubble_select_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_b};
    assign i_cmp_i22_i_add61_b = {2'b00, i_unnamed_add51_q};
    assign i_cmp_i22_i_add61_o = $unsigned(i_cmp_i22_i_add61_a) - $unsigned(i_cmp_i22_i_add61_b);
    assign i_cmp_i22_i_add61_c[0] = i_cmp_i22_i_add61_o[33];

    // i_cmp2_i25_i_add52(COMPARE,121)@5
    assign i_cmp2_i25_i_add52_a = {2'b00, redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_q};
    assign i_cmp2_i25_i_add52_b = {2'b00, i_replace_phi74_add41_q};
    assign i_cmp2_i25_i_add52_o = $unsigned(i_cmp2_i25_i_add52_a) - $unsigned(i_cmp2_i25_i_add52_b);
    assign i_cmp2_i25_i_add52_c[0] = i_cmp2_i25_i_add52_o[33];

    // SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3(STALLENABLE,1818)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_consumed0 = (~ (SR_SE_i_or_cond428_add64_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_consumed1 = (~ (SR_SE_i_or_cond429_add65_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_and0 = i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_and1 = SE_out_i_llvm_fpga_pop_i32_pop16_add33_V1 & SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_and2 = SE_out_i_llvm_fpga_pop_i32_pop15_add32_V1 & SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_wireValid = SE_redist21_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0_3_2_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_and2;

    // SE_i_cmp2_i25_i_add52(STALLENABLE,1782)
    // Valid signal propagation
    assign SE_i_cmp2_i25_i_add52_V0 = SE_i_cmp2_i25_i_add52_wireValid;
    // Backward Stall generation
    assign SE_i_cmp2_i25_i_add52_backStall = SR_SE_i_or_cond428_add64_backStall | ~ (SE_i_cmp2_i25_i_add52_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_cmp2_i25_i_add52_and0 = SE_out_i_llvm_fpga_pop_i32_pop16_add33_V0;
    assign SE_i_cmp2_i25_i_add52_wireValid = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V1 & SE_i_cmp2_i25_i_add52_and0;

    // SR_SE_i_or_cond428_add64(STALLREG,2427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_or_cond428_add64_r_valid <= 1'b0;
            SR_SE_i_or_cond428_add64_r_data0 <= 1'bx;
            SR_SE_i_or_cond428_add64_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_or_cond428_add64_r_valid <= SE_i_or_cond428_add64_backStall & (SR_SE_i_or_cond428_add64_r_valid | SR_SE_i_or_cond428_add64_i_valid);

            if (SR_SE_i_or_cond428_add64_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_or_cond428_add64_r_data0 <= i_cmp2_i25_i_add52_c;
                SR_SE_i_or_cond428_add64_r_data1 <= i_cmp_i22_i_add61_c;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_or_cond428_add64_and0 = SE_i_cmp2_i25_i_add52_V0;
    assign SR_SE_i_or_cond428_add64_i_valid = SE_out_i_llvm_fpga_ffwd_dest_i32_i_i_044971_add3_V0 & SR_SE_i_or_cond428_add64_and0;
    // Stall signal propagation
    assign SR_SE_i_or_cond428_add64_backStall = SR_SE_i_or_cond428_add64_r_valid | ~ (SR_SE_i_or_cond428_add64_i_valid);

    // Valid
    assign SR_SE_i_or_cond428_add64_V = SR_SE_i_or_cond428_add64_r_valid == 1'b1 ? SR_SE_i_or_cond428_add64_r_valid : SR_SE_i_or_cond428_add64_i_valid;

    // Data0
    assign SR_SE_i_or_cond428_add64_D0 = SR_SE_i_or_cond428_add64_r_valid == 1'b1 ? SR_SE_i_or_cond428_add64_r_data0 : i_cmp2_i25_i_add52_c;
    // Data1
    assign SR_SE_i_or_cond428_add64_D1 = SR_SE_i_or_cond428_add64_r_valid == 1'b1 ? SR_SE_i_or_cond428_add64_r_data1 : i_cmp_i22_i_add61_c;

    // i_or_cond428_add64(LOGICAL,197)@5 + 1
    assign i_or_cond428_add64_qi = SR_SE_i_or_cond428_add64_D0 & SR_SE_i_or_cond428_add64_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or_cond428_add64_delay ( .xin(i_or_cond428_add64_qi), .xout(i_or_cond428_add64_q), .ena(SE_i_or_cond428_add64_backEN[0]), .clk(clock), .aclr(resetn) );

    // i_or_cond429_add65(LOGICAL,198)@5 + 1
    assign i_or_cond429_add65_qi = SR_SE_i_or_cond429_add65_D0 & SR_SE_i_or_cond429_add65_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or_cond429_add65_delay ( .xin(i_or_cond429_add65_qi), .xout(i_or_cond429_add65_q), .ena(SE_i_or_cond429_add65_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11(STALLENABLE,1802)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_backStall = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_wireValid = i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_valid_out;

    // SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0(STALLENABLE,2044)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_V0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_s_tv_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_backStall & SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_backEN = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_v_s_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_V0;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_backStall = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_R_v_0 & SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_v_s_0;
            end

        end
    end

    // SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1(STALLENABLE,2045)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_V0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_s_tv_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_backStall & SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_backEN = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_v_s_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_backEN & SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_V0;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_backStall = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_R_v_0 & SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_v_s_0;
            end

        end
    end

    // SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2(STALLENABLE,2046)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_V0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_s_tv_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_backStall & SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_backEN = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_v_s_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_backEN & SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_V0;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_backStall = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_R_v_0 & SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_v_s_0;
            end

        end
    end

    // SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3(STALLENABLE,2047)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_V0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_s_tv_0 = SE_i_unnamed_add69_backStall & SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_backEN = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_v_s_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_backEN & SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_V0;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_backStall = ~ (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_R_v_0 & SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_R_v_0 <= SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11(BITJOIN,1582)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_q = i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11(BITSELECT,1583)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_q[0:0]);

    // redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0(REG,1481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_b);
        end
    end

    // redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1(REG,1482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_q <= $unsigned(redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_0_q);
        end
    end

    // redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2(REG,1483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_q <= $unsigned(redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_1_q);
        end
    end

    // redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3(REG,1484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_q <= $unsigned(redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_2_q);
        end
    end

    // i_unnamed_add69(MUX,207)@6 + 1
    assign i_unnamed_add69_s = redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add69_q <= 1'b0;
        end
        else if (SE_i_unnamed_add69_backEN == 1'b1)
        begin
            unique case (i_unnamed_add69_s)
                1'b0 : i_unnamed_add69_q <= i_or_cond429_add65_q;
                1'b1 : i_unnamed_add69_q <= i_or_cond428_add64_q;
                default : i_unnamed_add69_q <= 1'b0;
            endcase
        end
    end

    // SE_i_unnamed_add69(STALLENABLE,1918)
    // Valid signal propagation
    assign SE_i_unnamed_add69_V0 = SE_i_unnamed_add69_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_add69_s_tv_0 = redist13_i_unnamed_add69_q_32_fifo_stall_out & SE_i_unnamed_add69_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_add69_backEN = ~ (SE_i_unnamed_add69_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_add69_and0 = SE_i_or_cond428_add64_V1 & SE_i_unnamed_add69_backEN;
    assign SE_i_unnamed_add69_and1 = SE_i_or_cond429_add65_V0 & SE_i_unnamed_add69_and0;
    assign SE_i_unnamed_add69_v_s_0 = SE_redist23_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0_4_3_V0 & SE_i_unnamed_add69_and1;
    // Backward Stall generation
    assign SE_i_unnamed_add69_backStall = ~ (SE_i_unnamed_add69_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_add69_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_add69_backEN == 1'b0)
            begin
                SE_i_unnamed_add69_R_v_0 <= SE_i_unnamed_add69_R_v_0 & SE_i_unnamed_add69_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_add69_R_v_0 <= SE_i_unnamed_add69_v_s_0;
            end

        end
    end

    // redist13_i_unnamed_add69_q_32_fifo(STALLFIFO,1462)
    assign redist13_i_unnamed_add69_q_32_fifo_valid_in = SE_i_unnamed_add69_V0;
    assign redist13_i_unnamed_add69_q_32_fifo_stall_in = SE_out_redist13_i_unnamed_add69_q_32_fifo_backStall;
    assign redist13_i_unnamed_add69_q_32_fifo_data_in = i_unnamed_add69_q;
    assign redist13_i_unnamed_add69_q_32_fifo_valid_in_bitsignaltemp = redist13_i_unnamed_add69_q_32_fifo_valid_in[0];
    assign redist13_i_unnamed_add69_q_32_fifo_stall_in_bitsignaltemp = redist13_i_unnamed_add69_q_32_fifo_stall_in[0];
    assign redist13_i_unnamed_add69_q_32_fifo_valid_out[0] = redist13_i_unnamed_add69_q_32_fifo_valid_out_bitsignaltemp;
    assign redist13_i_unnamed_add69_q_32_fifo_stall_out[0] = redist13_i_unnamed_add69_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist13_i_unnamed_add69_q_32_fifo (
        .valid_in(redist13_i_unnamed_add69_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_i_unnamed_add69_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_unnamed_add69_q),
        .valid_out(redist13_i_unnamed_add69_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_i_unnamed_add69_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_i_unnamed_add69_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist13_i_unnamed_add69_q_32_fifo(BITJOIN,1700)
    assign bubble_join_redist13_i_unnamed_add69_q_32_fifo_q = redist13_i_unnamed_add69_q_32_fifo_data_out;

    // bubble_select_redist13_i_unnamed_add69_q_32_fifo(BITSELECT,1701)
    assign bubble_select_redist13_i_unnamed_add69_q_32_fifo_b = $unsigned(bubble_join_redist13_i_unnamed_add69_q_32_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i17_cleanups_pop22_add29(BITJOIN,1661)
    assign bubble_join_i_llvm_fpga_pop_i17_cleanups_pop22_add29_q = i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i17_cleanups_pop22_add29(BITSELECT,1662)
    assign bubble_select_i_llvm_fpga_pop_i17_cleanups_pop22_add29_b = $unsigned(bubble_join_i_llvm_fpga_pop_i17_cleanups_pop22_add29_q[16:0]);

    // i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x(BLACKBOX,102)@38
    // in in_i_stall@20000000
    // out out_c0_exit_0_tpl@45
    // out out_c0_exit_1_tpl@45
    // out out_c0_exit_2_tpl@45
    // out out_c0_exit_3_tpl@45
    // out out_c0_exit_4_tpl@45
    // out out_c0_exit_5_tpl@45
    // out out_o_stall@20000000
    // out out_o_valid@45
    add_i_sfc_s_c0_in_for_body4_i_s_c0_enter5_add75 thei_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x (
        .in_c0_eni4_0_tpl(GND_q),
        .in_c0_eni4_1_tpl(bubble_select_i_llvm_fpga_pop_i17_cleanups_pop22_add29_b),
        .in_c0_eni4_2_tpl(bubble_select_redist13_i_unnamed_add69_q_32_fifo_b),
        .in_c0_eni4_3_tpl(bubble_select_i_llvm_fpga_mem_ml535_add73_b),
        .in_c0_eni4_4_tpl(bubble_select_redist12_i_unnamed_add72_q_35_fifo_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_backStall),
        .in_i_valid(SE_out_redist13_i_unnamed_add69_q_32_fifo_V0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl),
        .out_c0_exit_4_tpl(i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_4_tpl),
        .out_c0_exit_5_tpl(i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_5_tpl),
        .out_o_stall(i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x(BITJOIN,1559)
    assign bubble_join_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_q = {i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_5_tpl, i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_4_tpl, i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl, i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x(BITSELECT,1560)
    assign bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_q[18:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_q[50:19]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_q[51:51]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37(BITJOIN,1671)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_q = i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37(BITSELECT,1672)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36(BITJOIN,1668)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_q = i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36(BITSELECT,1669)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_q[0:0]);

    // i_memdep_phi15_or_add46(LOGICAL,190)@45
    assign i_memdep_phi15_or_add46_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_b;

    // bubble_join_redist24_i_addr49_add66_q_39_fifo(BITJOIN,1712)
    assign bubble_join_redist24_i_addr49_add66_q_39_fifo_q = redist24_i_addr49_add66_q_39_fifo_data_out;

    // bubble_select_redist24_i_addr49_add66_q_39_fifo(BITSELECT,1713)
    assign bubble_select_redist24_i_addr49_add66_q_39_fifo_b = $unsigned(bubble_join_redist24_i_addr49_add66_q_39_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_add77(BLACKBOX,164)@45
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_add_avm_address@20000000
    // out out_memdep_add_avm_burstcount@20000000
    // out out_memdep_add_avm_byteenable@20000000
    // out out_memdep_add_avm_enable@20000000
    // out out_memdep_add_avm_read@20000000
    // out out_memdep_add_avm_write@20000000
    // out out_memdep_add_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@76
    // out out_o_writeack@76
    add_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_add77 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist24_i_addr49_add66_q_39_fifo_b),
        .in_i_dependence(i_memdep_phi15_or_add46_q),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_f),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_add77_backStall),
        .in_i_valid(SE_out_redist24_i_addr49_add66_q_39_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_e),
        .in_memdep_add_avm_readdata(in_memdep_add_avm_readdata),
        .in_memdep_add_avm_readdatavalid(in_memdep_add_avm_readdatavalid),
        .in_memdep_add_avm_waitrequest(in_memdep_add_avm_waitrequest),
        .in_memdep_add_avm_writeack(in_memdep_add_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_add77_out_lsu_memdep_o_active),
        .out_memdep_add_avm_address(i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_address),
        .out_memdep_add_avm_burstcount(i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_burstcount),
        .out_memdep_add_avm_byteenable(i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_byteenable),
        .out_memdep_add_avm_enable(i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_enable),
        .out_memdep_add_avm_read(i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_read),
        .out_memdep_add_avm_write(i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_write),
        .out_memdep_add_avm_writedata(i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_add77_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_add77_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_add77_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,1447)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,1525)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x(STALLENABLE,1775)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_consumed0 = (~ (SE_out_redist24_i_addr49_add66_q_39_fifo_backStall) & SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_consumed1 = (~ (redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_wireValid = i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_o_valid;

    // i_addr49_add66(MUX,118)@6 + 1
    assign i_addr49_add66_s = SR_SE_i_addr49_add66_D0;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_addr49_add66_q <= 64'b0;
        end
        else if (SE_i_addr49_add66_backEN == 1'b1)
        begin
            unique case (i_addr49_add66_s)
                1'b0 : i_addr49_add66_q <= SR_SE_i_addr49_add66_D1;
                1'b1 : i_addr49_add66_q <= SR_SE_i_addr49_add66_D2;
                default : i_addr49_add66_q <= 64'b0;
            endcase
        end
    end

    // redist24_i_addr49_add66_q_39_fifo(STALLFIFO,1485)
    assign redist24_i_addr49_add66_q_39_fifo_valid_in = SE_i_addr49_add66_V0;
    assign redist24_i_addr49_add66_q_39_fifo_stall_in = SE_out_redist24_i_addr49_add66_q_39_fifo_backStall;
    assign redist24_i_addr49_add66_q_39_fifo_data_in = i_addr49_add66_q;
    assign redist24_i_addr49_add66_q_39_fifo_valid_in_bitsignaltemp = redist24_i_addr49_add66_q_39_fifo_valid_in[0];
    assign redist24_i_addr49_add66_q_39_fifo_stall_in_bitsignaltemp = redist24_i_addr49_add66_q_39_fifo_stall_in[0];
    assign redist24_i_addr49_add66_q_39_fifo_valid_out[0] = redist24_i_addr49_add66_q_39_fifo_valid_out_bitsignaltemp;
    assign redist24_i_addr49_add66_q_39_fifo_stall_out[0] = redist24_i_addr49_add66_q_39_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(39),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist24_i_addr49_add66_q_39_fifo (
        .valid_in(redist24_i_addr49_add66_q_39_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_addr49_add66_q_39_fifo_stall_in_bitsignaltemp),
        .data_in(i_addr49_add66_q),
        .valid_out(redist24_i_addr49_add66_q_39_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_addr49_add66_q_39_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_addr49_add66_q_39_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist24_i_addr49_add66_q_39_fifo(STALLENABLE,2049)
    // Valid signal propagation
    assign SE_out_redist24_i_addr49_add66_q_39_fifo_V0 = SE_out_redist24_i_addr49_add66_q_39_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist24_i_addr49_add66_q_39_fifo_backStall = i_llvm_fpga_mem_memdep_add77_out_o_stall | ~ (SE_out_redist24_i_addr49_add66_q_39_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist24_i_addr49_add66_q_39_fifo_and0 = redist24_i_addr49_add66_q_39_fifo_valid_out;
    assign SE_out_redist24_i_addr49_add66_q_39_fifo_and1 = i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_out_valid_out & SE_out_redist24_i_addr49_add66_q_39_fifo_and0;
    assign SE_out_redist24_i_addr49_add66_q_39_fifo_and2 = i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_out_valid_out & SE_out_redist24_i_addr49_add66_q_39_fifo_and1;
    assign SE_out_redist24_i_addr49_add66_q_39_fifo_wireValid = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_V0 & SE_out_redist24_i_addr49_add66_q_39_fifo_and2;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi15_push20_add89(STALLENABLE,1888)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi15_push20_add89_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi15_push20_add89_wireValid = i_llvm_fpga_push_i1_memdep_phi15_push20_add89_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi15_push20_add89(BLACKBOX,180)@108
    // in in_stall_in@20000000
    // out out_data_out@109
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@109
    add_i_llvm_fpga_push_i1_memdep_phi15_push20_0 thei_llvm_fpga_push_i1_memdep_phi15_push20_add89 (
        .in_data_in(SR_SE_i_lm1097_toi1_intcast_add85_sel_x_D0),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_out_feedback_stall_out_20),
        .in_keep_going(SR_SE_i_lm1097_toi1_intcast_add85_sel_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi15_push20_add89_backStall),
        .in_valid_in(SE_i_lm1097_toi1_intcast_add85_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_memdep_phi15_push20_add89_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_memdep_phi15_push20_add89_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi15_push20_add89_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi15_push20_add89_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37(BLACKBOX,170)@44
    // in in_stall_in@20000000
    // out out_data_out@45
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@45
    add_i_llvm_fpga_pop_i1_memdep_phi15_pop20_0 thei_llvm_fpga_pop_i1_memdep_phi15_pop20_add37 (
        .in_data_in(GND_q),
        .in_dir(redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_q),
        .in_feedback_in_20(i_llvm_fpga_push_i1_memdep_phi15_push20_add89_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_memdep_phi15_push20_add89_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_redist24_i_addr49_add66_q_39_fifo_backStall),
        .in_valid_in(SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36(BLACKBOX,169)@44
    // in in_stall_in@20000000
    // out out_data_out@45
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@45
    add_i_llvm_fpga_pop_i1_memdep_phi14_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi14_pop19_add36 (
        .in_data_in(GND_q),
        .in_dir(redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_q),
        .in_feedback_in_19(i_llvm_fpga_push_i1_memdep_phi14_push19_add88_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_memdep_phi14_push19_add88_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_redist24_i_addr49_add66_q_39_fifo_backStall),
        .in_valid_in(SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6(STALLENABLE,2085)
    // Valid signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_V0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_0;
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_V1 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_1;
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_V2 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_2;
    // Stall signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi14_pop19_add36_out_stall_out & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_0;
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi15_pop20_add37_out_stall_out & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_1;
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_s_tv_2 = redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_out & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_2;
    // Backward Enable generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_or0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_s_tv_0;
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_or1 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_s_tv_1 | SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_or0;
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_backEN = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_s_tv_2 | SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_v_s_0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_backEN & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_V0;
    // Backward Stall generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_backStall = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_0 <= 1'b0;
            SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_1 <= 1'b0;
            SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_backEN == 1'b0)
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_0 & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_s_tv_0;
            end
            else
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_v_s_0;
            end

            if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_backEN == 1'b0)
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_1 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_1 & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_s_tv_1;
            end
            else
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_1 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_v_s_0;
            end

            if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_backEN == 1'b0)
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_2 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_2 & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_s_tv_2;
            end
            else
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_R_v_2 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_v_s_0;
            end

        end
    end

    // SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5(STALLENABLE,2084)
    // Valid signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_V0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_R_v_0;
    // Stall signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_s_tv_0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_6_backStall & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_R_v_0;
    // Backward Enable generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_backEN = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_v_s_0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_backEN & SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_V;
    // Backward Stall generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_backStall = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_backEN == 1'b0)
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_R_v_0 & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_s_tv_0;
            end
            else
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_v_s_0;
            end

        end
    end

    // SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5(STALLREG,2423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_valid <= 1'b0;
            SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_valid <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_backStall & (SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_valid | SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_i_valid);

            if (SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_data0 <= $unsigned(redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_i_valid = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_V0;
    // Stall signal propagation
    assign SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_backStall = SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_valid | ~ (SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_i_valid);

    // Valid
    assign SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_V = SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_valid == 1'b1 ? SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_valid : SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_i_valid;

    assign SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_D0 = SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_valid == 1'b1 ? SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_r_data0 : redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_q;

    // SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4(STALLENABLE,2083)
    // Valid signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_V0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_R_v_0;
    // Stall signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_s_tv_0 = SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_5_backStall & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_R_v_0;
    // Backward Enable generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_backEN = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_v_s_0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_backEN & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_V0;
    // Backward Stall generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_backStall = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_backEN == 1'b0)
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_R_v_0 & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_s_tv_0;
            end
            else
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_v_s_0;
            end

        end
    end

    // SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3(STALLENABLE,2082)
    // Valid signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_V0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_R_v_0;
    // Stall signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_s_tv_0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_4_backStall & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_R_v_0;
    // Backward Enable generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_backEN = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_v_s_0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_backEN & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_V0;
    // Backward Stall generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_backStall = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_backEN == 1'b0)
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_R_v_0 & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_s_tv_0;
            end
            else
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_v_s_0;
            end

        end
    end

    // SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2(STALLENABLE,2081)
    // Valid signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_V0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_R_v_0;
    // Stall signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_s_tv_0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_3_backStall & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_R_v_0;
    // Backward Enable generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_backEN = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_v_s_0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_backEN & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_V0;
    // Backward Stall generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_backStall = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_backEN == 1'b0)
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_R_v_0 & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_s_tv_0;
            end
            else
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_v_s_0;
            end

        end
    end

    // SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1(STALLENABLE,2080)
    // Valid signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_V0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_R_v_0;
    // Stall signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_s_tv_0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_2_backStall & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_R_v_0;
    // Backward Enable generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_backEN = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_v_s_0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_backEN & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_V0;
    // Backward Stall generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_backStall = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_backEN == 1'b0)
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_R_v_0 & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_s_tv_0;
            end
            else
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_v_s_0;
            end

        end
    end

    // SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0(STALLENABLE,2079)
    // Valid signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_V0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_R_v_0;
    // Stall signal propagation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_s_tv_0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_1_backStall & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_R_v_0;
    // Backward Enable generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_backEN = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_v_s_0 = SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_backEN & SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_V;
    // Backward Stall generation
    assign SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_backStall = ~ (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_backEN == 1'b0)
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_R_v_0 & SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_s_tv_0;
            end
            else
            begin
                SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_R_v_0 <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_v_s_0;
            end

        end
    end

    // SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0(STALLREG,2422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_valid <= 1'b0;
            SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_valid <= SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_backStall & (SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_valid | SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_i_valid);

            if (SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_data0 <= $unsigned(bubble_select_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_i_valid = SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_backStall = SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_valid | ~ (SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_i_valid);

    // Valid
    assign SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_V = SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_valid == 1'b1 ? SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_valid : SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_i_valid;

    assign SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_D0 = SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_valid == 1'b1 ? SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_r_data0 : bubble_select_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_b;

    // redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo(STALLFIFO,1512)
    assign redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_valid_in = SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V3;
    assign redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_stall_in = SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_backStall;
    assign redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_data_in = redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q;
    assign redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_valid_in_bitsignaltemp = redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_valid_in[0];
    assign redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_stall_in_bitsignaltemp = redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_stall_in[0];
    assign redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_valid_out[0] = redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_valid_out_bitsignaltemp;
    assign redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_stall_out[0] = redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo (
        .valid_in(redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_valid_in_bitsignaltemp),
        .stall_in(redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_stall_in_bitsignaltemp),
        .data_in(redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q),
        .valid_out(redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_valid_out_bitsignaltemp),
        .stall_out(redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_stall_out_bitsignaltemp),
        .data_out(redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo(STALLENABLE,2078)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_fromReg0 <= '0;
            SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_fromReg0 <= SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_toReg0;
            // Successor 1
            SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_fromReg1 <= SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_consumed0 = (~ (SR_SE_redist46_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_43_0_backStall) & SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_wireValid) | SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_fromReg0;
    assign SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_consumed1 = (~ (i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_stall_out) & SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_wireValid) | SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_fromReg1;
    // Consuming
    assign SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_StallValid = SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_backStall & SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_wireValid;
    assign SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_toReg0 = SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_StallValid & SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_consumed0;
    assign SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_toReg1 = SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_StallValid & SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_or0 = SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_consumed0;
    assign SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_wireStall = ~ (SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_consumed1 & SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_or0);
    assign SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_backStall = SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_V0 = SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_wireValid & ~ (SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_fromReg0);
    assign SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_V1 = SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_wireValid & ~ (SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_wireValid = redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_valid_out;

    // SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29(STALLENABLE,1862)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_fromReg0 <= SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_fromReg1 <= SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_consumed0 = (~ (SE_out_redist13_i_unnamed_add69_q_32_fifo_backStall) & SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_wireValid) | SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_consumed1 = (~ (redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_wireValid) | SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_StallValid = SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_backStall & SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_wireValid;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_toReg0 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_StallValid & SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_consumed0;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_toReg1 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_StallValid & SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_or0 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_consumed0;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_wireStall = ~ (SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_consumed1 & SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_or0);
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_backStall = SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_V0 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_V1 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_wireValid = i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_valid_out;

    // bubble_join_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo(BITJOIN,1718)
    assign bubble_join_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_q = redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_data_out;

    // bubble_select_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo(BITSELECT,1719)
    assign bubble_select_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_b = $unsigned(bubble_join_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_q[0:0]);

    // c_i17_6553598(CONSTANT,105)
    assign c_i17_6553598_q = $unsigned(17'b01111111111111111);

    // i_llvm_fpga_pop_i17_cleanups_pop22_add29(BLACKBOX,167)@37
    // in in_stall_in@20000000
    // out out_data_out@38
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@38
    add_i_llvm_fpga_pop_i17_cleanups_pop22_0 thei_llvm_fpga_pop_i17_cleanups_pop22_add29 (
        .in_data_in(c_i17_6553598_q),
        .in_dir(bubble_select_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_b),
        .in_feedback_in_22(i_llvm_fpga_push_i17_cleanups_push22_add97_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i17_cleanups_push22_add97_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_backStall),
        .in_valid_in(SE_out_redist45_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_36_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo(BITJOIN,1715)
    assign bubble_join_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_q = redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_data_out;

    // bubble_select_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo(BITSELECT,1716)
    assign bubble_select_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_b = $unsigned(bubble_join_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_q[16:0]);

    // bubble_join_redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo(BITJOIN,1706)
    assign bubble_join_redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_q = redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_data_out;

    // bubble_select_redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo(BITSELECT,1707)
    assign bubble_select_redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_b = $unsigned(bubble_join_redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_q[16:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,1727)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,1728)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,1448)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_29(STALLENABLE,2156)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_29_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_29_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_29_backStall = i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_29_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_29_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_29_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28(BLACKBOX,135)@107
    // in in_stall_in@20000000
    // out out_dest_data_out_26_0@108
    // out out_stall_out@20000000
    // out out_valid_out@108
    add_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_0 thei_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28 (
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_29_V0),
        .out_dest_data_out_26_0(i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_out_dest_data_out_26_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28(BITJOIN,1574)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_q = i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_out_dest_data_out_26_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28(BITSELECT,1575)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_lm1076_add79(BITJOIN,1645)
    assign bubble_join_i_llvm_fpga_mem_lm1076_add79_q = i_llvm_fpga_mem_lm1076_add79_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1076_add79(BITSELECT,1646)
    assign bubble_select_i_llvm_fpga_mem_lm1076_add79_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1076_add79_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm1097_add80(BITJOIN,1648)
    assign bubble_join_i_llvm_fpga_mem_lm1097_add80_q = i_llvm_fpga_mem_lm1097_add80_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1097_add80(BITSELECT,1649)
    assign bubble_select_i_llvm_fpga_mem_lm1097_add80_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1097_add80_q[31:0]);

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_28(STALLENABLE,2154)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_28_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_28_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_28_backStall = i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_28_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_28_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_28_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27(BLACKBOX,136)@107
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@108
    // out out_stall_out@20000000
    // out out_valid_out@108
    add_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_0 thei_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_28_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27(BITJOIN,1578)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_q = i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27(BITSELECT,1579)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_q[0:0]);

    // i_unnamed_add86(MUX,209)@108
    assign i_unnamed_add86_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_b;
    always @(i_unnamed_add86_s or bubble_select_i_llvm_fpga_mem_lm1097_add80_b or bubble_select_i_llvm_fpga_mem_lm1076_add79_b)
    begin
        unique case (i_unnamed_add86_s)
            1'b0 : i_unnamed_add86_q = bubble_select_i_llvm_fpga_mem_lm1097_add80_b;
            1'b1 : i_unnamed_add86_q = bubble_select_i_llvm_fpga_mem_lm1076_add79_b;
            default : i_unnamed_add86_q = 32'b0;
        endcase
    end

    // redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0(REG,1505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_backEN == 1'b1)
        begin
            redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_q <= $unsigned(SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_D0);
        end
    end

    // redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1(REG,1506)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_backEN == 1'b1)
        begin
            redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_q <= $unsigned(redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_q);
        end
    end

    // redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2(REG,1507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_backEN == 1'b1)
        begin
            redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_q <= $unsigned(redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_q);
        end
    end

    // i_cmp3_i_add90(COMPARE,123)@108
    assign i_cmp3_i_add90_a = {2'b00, redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_q};
    assign i_cmp3_i_add90_b = {2'b00, i_unnamed_add86_q};
    assign i_cmp3_i_add90_o = $unsigned(i_cmp3_i_add90_a) - $unsigned(i_cmp3_i_add90_b);
    assign i_cmp3_i_add90_c[0] = i_cmp3_i_add90_o[33];

    // i_unnamed_add91(LOGICAL,210)@108
    assign i_unnamed_add91_q = i_cmp3_i_add90_c & bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_b;

    // i_notcmp_add92(LOGICAL,195)@108
    assign i_notcmp_add92_q = i_unnamed_add91_q ^ VCC_q;

    // i_or_add94(LOGICAL,196)@108 + 1
    assign i_or_add94_qi = i_notcmp_add92_q | sel_for_coalesced_delay_0_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or_add94_delay ( .xin(i_or_add94_qi), .xout(i_or_add94_q), .ena(SE_i_masked_add95_backEN[0]), .clk(clock), .aclr(resetn) );

    // i_next_cleanups_add96(MUX,191)@109
    assign i_next_cleanups_add96_s = i_or_add94_q;
    always @(i_next_cleanups_add96_s or bubble_select_redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_b or bubble_select_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_b)
    begin
        unique case (i_next_cleanups_add96_s)
            1'b0 : i_next_cleanups_add96_q = bubble_select_redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_b;
            1'b1 : i_next_cleanups_add96_q = bubble_select_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_b;
            default : i_next_cleanups_add96_q = 17'b0;
        endcase
    end

    // i_llvm_fpga_push_i17_cleanups_push22_add97(BLACKBOX,176)@109
    // in in_stall_in@20000000
    // out out_data_out@110
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@110
    add_i_llvm_fpga_push_i17_cleanups_push22_0 thei_llvm_fpga_push_i17_cleanups_push22_add97 (
        .in_data_in(i_next_cleanups_add96_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_feedback_stall_out_22),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i17_cleanups_push22_add97_backStall),
        .in_valid_in(SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i17_cleanups_push22_add97_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i17_cleanups_push22_add97_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i17_cleanups_push22_add97_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i17_cleanups_push22_add97_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo(STALLFIFO,1467)
    assign redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_valid_in = SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_V1;
    assign redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_stall_in = SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_backStall;
    assign redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_data_in = bubble_select_i_llvm_fpga_pop_i17_cleanups_pop22_add29_b;
    assign redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_valid_in_bitsignaltemp = redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_valid_in[0];
    assign redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_stall_in_bitsignaltemp = redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_stall_in[0];
    assign redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_valid_out[0] = redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_valid_out_bitsignaltemp;
    assign redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_stall_out[0] = redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(72),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(17),
        .IMPL("ram")
    ) theredist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo (
        .valid_in(redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_valid_in_bitsignaltemp),
        .stall_in(redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i17_cleanups_pop22_add29_b),
        .valid_out(redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_valid_out_bitsignaltemp),
        .stall_out(redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_stall_out_bitsignaltemp),
        .data_out(redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo(STALLFIFO,1489)
    assign redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_V1;
    assign redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_stall_in = SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_backStall;
    assign redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_d;
    assign redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_valid_in_bitsignaltemp = redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_valid_in[0];
    assign redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_stall_in_bitsignaltemp = redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_stall_in[0];
    assign redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_valid_out[0] = redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_valid_out_bitsignaltemp;
    assign redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_stall_out[0] = redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(17),
        .IMPL("ram")
    ) theredist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo (
        .valid_in(redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_d),
        .valid_out(redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo(STALLENABLE,2054)
    // Valid signal propagation
    assign SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_V0 = SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_backStall = i_llvm_fpga_push_i17_cleanups_push22_add97_out_stall_out | ~ (SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_and0 = redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_valid_out;
    assign SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_and1 = redist16_i_llvm_fpga_pop_i17_cleanups_pop22_add29_out_data_out_71_fifo_valid_out & SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_and0;
    assign SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_and2 = SE_i_masked_add95_V1 & SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_and1;
    assign SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_wireValid = SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_V0 & SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_and2;

    // SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87(STALLENABLE,1849)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_V0 = SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_out_stall_out | ~ (SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_and0 = SE_out_coalesced_delay_0_fifo_V1;
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_wireValid = SE_out_i_llvm_fpga_mem_lm1097_add80_V1 & SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_and0;

    // i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87(BLACKBOX,161)@108
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_29_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_46_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add46_add87 (
        .in_predicate_in(sel_for_coalesced_delay_0_c),
        .in_src_data_in_29_0(bubble_select_i_llvm_fpga_mem_lm1097_add80_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_V0),
        .out_intel_reserved_ffwd_29_0(i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_out_intel_reserved_ffwd_29_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87(STALLENABLE,1850)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg(STALLENABLE,2417)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83(STALLENABLE,1847)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_V0 = SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_out_stall_out | ~ (SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_and0 = SE_out_coalesced_delay_0_fifo_V0;
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_wireValid = SE_out_i_llvm_fpga_mem_lm1076_add79_V1 & SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_and0;

    // i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83(BLACKBOX,160)@108
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_28_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_45_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add45_add83 (
        .in_predicate_in(sel_for_coalesced_delay_0_c),
        .in_src_data_in_28_0(bubble_select_i_llvm_fpga_mem_lm1076_add79_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_V0),
        .out_intel_reserved_ffwd_28_0(i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_out_intel_reserved_ffwd_28_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83(STALLENABLE,1848)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg(STALLENABLE,2416)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_27(STALLENABLE,2152)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_27_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_27_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_27_backStall = i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_27_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_27_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_27_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26(BLACKBOX,144)@107
    // in in_stall_in@20000000
    // out out_dest_data_out_23_0@108
    // out out_stall_out@20000000
    // out out_valid_out@108
    add_i_llvm_fpga_ffwd_dest_i1_unnamed_43_add0 thei_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_27_V0),
        .out_dest_data_out_23_0(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26(STALLENABLE,1816)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_backStall = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg(STALLENABLE,2415)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_25(STALLENABLE,2148)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_25_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_25_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_25_backStall = i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_25_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_25_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_25_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24(BLACKBOX,143)@107
    // in in_stall_in@20000000
    // out out_dest_data_out_23_0@108
    // out out_stall_out@20000000
    // out out_valid_out@108
    add_i_llvm_fpga_ffwd_dest_i1_unnamed_42_add0 thei_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_25_V0),
        .out_dest_data_out_23_0(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24(STALLENABLE,1814)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_backStall = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg(STALLENABLE,2414)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_11(STALLENABLE,2120)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_11_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_11_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_11_backStall = i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_11_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_11_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10(BLACKBOX,141)@107
    // in in_stall_in@20000000
    // out out_dest_data_out_23_0@108
    // out out_stall_out@20000000
    // out out_valid_out@108
    add_i_llvm_fpga_ffwd_dest_i1_unnamed_40_add0 thei_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_11_V0),
        .out_dest_data_out_23_0(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10(STALLENABLE,1810)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_backStall = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg(STALLENABLE,2413)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_10(STALLENABLE,2118)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_10_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_10_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_10_backStall = i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_10_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_10_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9(BLACKBOX,138)@107
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@108
    // out out_stall_out@20000000
    // out out_valid_out@108
    add_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_0 thei_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_10_V0),
        .out_dest_data_out_3_0(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9(STALLENABLE,1804)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_backStall = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_wireValid = i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg(STALLENABLE,2412)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg(STALLENABLE,2410)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg(STALLENABLE,2411)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_add60(STALLENABLE,1884)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_add60_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_add60_wireValid = i_llvm_fpga_push_i1_lastiniteration_add60_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_add60(BLACKBOX,178)@108
    // in in_stall_in@20000000
    // out out_data_out@109
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@109
    add_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_add60 (
        .in_data_in(SR_SE_i_next_initerations_add39_vt_select_15_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_add30_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_add39_vt_select_15_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_add60_backStall),
        .in_valid_in(SE_i_next_initerations_add39_vt_select_15_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_add60_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_add60_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_add60_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_add60_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_next_initerations_add39_vt_select_15(STALLENABLE,1905)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_add39_vt_select_15_fromReg0 <= '0;
            SE_i_next_initerations_add39_vt_select_15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_add39_vt_select_15_fromReg0 <= SE_i_next_initerations_add39_vt_select_15_toReg0;
            // Successor 1
            SE_i_next_initerations_add39_vt_select_15_fromReg1 <= SE_i_next_initerations_add39_vt_select_15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_add39_vt_select_15_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_add60_out_stall_out) & SE_i_next_initerations_add39_vt_select_15_wireValid) | SE_i_next_initerations_add39_vt_select_15_fromReg0;
    assign SE_i_next_initerations_add39_vt_select_15_consumed1 = (~ (i_llvm_fpga_push_i17_initerations_push21_add48_out_stall_out) & SE_i_next_initerations_add39_vt_select_15_wireValid) | SE_i_next_initerations_add39_vt_select_15_fromReg1;
    // Consuming
    assign SE_i_next_initerations_add39_vt_select_15_StallValid = SE_i_next_initerations_add39_vt_select_15_backStall & SE_i_next_initerations_add39_vt_select_15_wireValid;
    assign SE_i_next_initerations_add39_vt_select_15_toReg0 = SE_i_next_initerations_add39_vt_select_15_StallValid & SE_i_next_initerations_add39_vt_select_15_consumed0;
    assign SE_i_next_initerations_add39_vt_select_15_toReg1 = SE_i_next_initerations_add39_vt_select_15_StallValid & SE_i_next_initerations_add39_vt_select_15_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_add39_vt_select_15_or0 = SE_i_next_initerations_add39_vt_select_15_consumed0;
    assign SE_i_next_initerations_add39_vt_select_15_wireStall = ~ (SE_i_next_initerations_add39_vt_select_15_consumed1 & SE_i_next_initerations_add39_vt_select_15_or0);
    assign SE_i_next_initerations_add39_vt_select_15_backStall = SE_i_next_initerations_add39_vt_select_15_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_add39_vt_select_15_V0 = SE_i_next_initerations_add39_vt_select_15_wireValid & ~ (SE_i_next_initerations_add39_vt_select_15_fromReg0);
    assign SE_i_next_initerations_add39_vt_select_15_V1 = SE_i_next_initerations_add39_vt_select_15_wireValid & ~ (SE_i_next_initerations_add39_vt_select_15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_add39_vt_select_15_wireValid = SR_SE_i_next_initerations_add39_vt_select_15_V;

    // SE_out_i_llvm_fpga_push_i17_initerations_push21_add48(STALLENABLE,1882)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i17_initerations_push21_add48_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i17_initerations_push21_add48_wireValid = i_llvm_fpga_push_i17_initerations_push21_add48_out_valid_out;

    // i_llvm_fpga_push_i17_initerations_push21_add48(BLACKBOX,177)@108
    // in in_stall_in@20000000
    // out out_data_out@109
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@109
    add_i_llvm_fpga_push_i17_initerations_push21_0 thei_llvm_fpga_push_i17_initerations_push21_add48 (
        .in_data_in(SR_SE_i_next_initerations_add39_vt_select_15_D3),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i17_initerations_pop21_add31_out_feedback_stall_out_21),
        .in_keep_going(SR_SE_i_next_initerations_add39_vt_select_15_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i17_initerations_push21_add48_backStall),
        .in_valid_in(SE_i_next_initerations_add39_vt_select_15_V1),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i17_initerations_push21_add48_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i17_initerations_push21_add48_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i17_initerations_push21_add48_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i17_initerations_push21_add48_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i17_initerations_pop21_add31(BLACKBOX,168)@107
    // in in_stall_in@20000000
    // out out_data_out@108
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@108
    add_i_llvm_fpga_pop_i17_initerations_pop21_0 thei_llvm_fpga_pop_i17_initerations_pop21_add31 (
        .in_data_in(c_i17_6553598_q),
        .in_dir(redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_q),
        .in_feedback_in_21(i_llvm_fpga_push_i17_initerations_push21_add48_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i17_initerations_push21_add48_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_backStall),
        .in_valid_in(SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_V1),
        .out_data_out(i_llvm_fpga_pop_i17_initerations_pop21_add31_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i17_initerations_pop21_add31_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i17_initerations_pop21_add31_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i17_initerations_pop21_add31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31(STALLENABLE,1864)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_fromReg0 <= SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_fromReg1 <= SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_backStall) & SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_wireValid) | SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_consumed1 = (~ (SR_SE_i_next_initerations_add39_vt_select_15_backStall) & SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_wireValid) | SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_StallValid = SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_backStall & SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_wireValid;
    assign SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_toReg0 = SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_StallValid & SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_consumed0;
    assign SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_toReg1 = SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_StallValid & SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_or0 = SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_consumed0;
    assign SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_wireStall = ~ (SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_consumed1 & SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_or0);
    assign SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_backStall = SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_V0 = SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_V1 = SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_wireValid = i_llvm_fpga_pop_i17_initerations_pop21_add31_out_valid_out;

    // bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg(STALLENABLE,2419)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_V0 = bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall & bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_v_s_0 = bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_backEN & SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_R_v_0 & bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1(STALLENABLE,2326)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and0 = bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_V0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and1 = bubble_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and2 = bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and3 = i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and4 = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and5 = bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and6 = SE_i_masked_add95_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and7 = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i40_add9_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and8 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add40_add10_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and7;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and9 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add42_add24_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and8;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and10 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add43_add26_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and9;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and11 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and10;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_and11;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,2094)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg2 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
            // Successor 2
            SE_out_coalesced_delay_0_fifo_fromReg2 <= SE_out_coalesced_delay_0_fifo_toReg2;
            // Successor 3
            SE_out_coalesced_delay_0_fifo_fromReg3 <= SE_out_coalesced_delay_0_fifo_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    assign SE_out_coalesced_delay_0_fifo_consumed2 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_add93_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg2;
    assign SE_out_coalesced_delay_0_fifo_consumed3 = (~ (SE_i_masked_add95_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg3;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    assign SE_out_coalesced_delay_0_fifo_toReg2 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed2;
    assign SE_out_coalesced_delay_0_fifo_toReg3 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_or1 = SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0;
    assign SE_out_coalesced_delay_0_fifo_or2 = SE_out_coalesced_delay_0_fifo_consumed2 & SE_out_coalesced_delay_0_fifo_or1;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed3 & SE_out_coalesced_delay_0_fifo_or2);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    assign SE_out_coalesced_delay_0_fifo_V2 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg2);
    assign SE_out_coalesced_delay_0_fifo_V3 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_valid_out;

    // SE_i_masked_add95(STALLENABLE,1901)
    // Valid signal propagation
    assign SE_i_masked_add95_V0 = SE_i_masked_add95_R_v_0;
    assign SE_i_masked_add95_V1 = SE_i_masked_add95_R_v_1;
    // Stall signal propagation
    assign SE_i_masked_add95_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall & SE_i_masked_add95_R_v_0;
    assign SE_i_masked_add95_s_tv_1 = SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_backStall & SE_i_masked_add95_R_v_1;
    // Backward Enable generation
    assign SE_i_masked_add95_or0 = SE_i_masked_add95_s_tv_0;
    assign SE_i_masked_add95_backEN = ~ (SE_i_masked_add95_s_tv_1 | SE_i_masked_add95_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_add95_and0 = SE_i_unnamed_add86_V1 & SE_i_masked_add95_backEN;
    assign SE_i_masked_add95_v_s_0 = SE_out_coalesced_delay_0_fifo_V3 & SE_i_masked_add95_and0;
    // Backward Stall generation
    assign SE_i_masked_add95_backStall = ~ (SE_i_masked_add95_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_add95_R_v_0 <= 1'b0;
            SE_i_masked_add95_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_add95_backEN == 1'b0)
            begin
                SE_i_masked_add95_R_v_0 <= SE_i_masked_add95_R_v_0 & SE_i_masked_add95_s_tv_0;
            end
            else
            begin
                SE_i_masked_add95_R_v_0 <= SE_i_masked_add95_v_s_0;
            end

            if (SE_i_masked_add95_backEN == 1'b0)
            begin
                SE_i_masked_add95_R_v_1 <= SE_i_masked_add95_R_v_1 & SE_i_masked_add95_s_tv_1;
            end
            else
            begin
                SE_i_masked_add95_R_v_1 <= SE_i_masked_add95_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_notexitcond_add93(STALLENABLE,1892)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_add93_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_add93_wireValid = i_llvm_fpga_push_i1_notexitcond_add93_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_add93(BLACKBOX,182)@108
    // in in_stall_in@20000000
    // out out_data_out@109
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@109
    add_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_add93 (
        .in_c0_exe1(sel_for_coalesced_delay_0_b),
        .in_data_in(i_unnamed_add91_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_add30_out_not_exitcond_stall_out),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_add93_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_add93_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_add93_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_add93_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_add93_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_add93_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_notexitcond_add93(STALLENABLE,1891)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_add93_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_add93_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_add93_backStall = i_llvm_fpga_push_i1_notexitcond_add93_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_add93_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_add93_and0 = SE_i_unnamed_add86_V0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_add93_wireValid = SE_out_coalesced_delay_0_fifo_V2 & SE_in_i_llvm_fpga_push_i1_notexitcond_add93_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28(STALLENABLE,1798)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_1_reg_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_consumed1 = (~ (SE_i_unnamed_add86_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_wireValid = i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_out_valid_out;

    // SE_out_i_llvm_fpga_mem_lm1097_add80(STALLENABLE,1854)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg0 <= SE_out_i_llvm_fpga_mem_lm1097_add80_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg1 <= SE_out_i_llvm_fpga_mem_lm1097_add80_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg2 <= SE_out_i_llvm_fpga_mem_lm1097_add80_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_consumed0 = (~ (SR_SE_i_lm1097_toi1_intcast_add85_sel_x_backStall) & SE_out_i_llvm_fpga_mem_lm1097_add80_wireValid) | SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_consumed1 = (~ (SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_backStall) & SE_out_i_llvm_fpga_mem_lm1097_add80_wireValid) | SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg1;
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_consumed2 = (~ (SE_i_unnamed_add86_backStall) & SE_out_i_llvm_fpga_mem_lm1097_add80_wireValid) | SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_StallValid = SE_out_i_llvm_fpga_mem_lm1097_add80_backStall & SE_out_i_llvm_fpga_mem_lm1097_add80_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_toReg0 = SE_out_i_llvm_fpga_mem_lm1097_add80_StallValid & SE_out_i_llvm_fpga_mem_lm1097_add80_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_toReg1 = SE_out_i_llvm_fpga_mem_lm1097_add80_StallValid & SE_out_i_llvm_fpga_mem_lm1097_add80_consumed1;
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_toReg2 = SE_out_i_llvm_fpga_mem_lm1097_add80_StallValid & SE_out_i_llvm_fpga_mem_lm1097_add80_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_or0 = SE_out_i_llvm_fpga_mem_lm1097_add80_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_or1 = SE_out_i_llvm_fpga_mem_lm1097_add80_consumed1 & SE_out_i_llvm_fpga_mem_lm1097_add80_or0;
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm1097_add80_consumed2 & SE_out_i_llvm_fpga_mem_lm1097_add80_or1);
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_backStall = SE_out_i_llvm_fpga_mem_lm1097_add80_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_V0 = SE_out_i_llvm_fpga_mem_lm1097_add80_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_V1 = SE_out_i_llvm_fpga_mem_lm1097_add80_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg1);
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_V2 = SE_out_i_llvm_fpga_mem_lm1097_add80_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1097_add80_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm1097_add80_wireValid = i_llvm_fpga_mem_lm1097_add80_out_o_valid;

    // SE_out_i_llvm_fpga_mem_lm1076_add79(STALLENABLE,1852)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg0 <= SE_out_i_llvm_fpga_mem_lm1076_add79_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg1 <= SE_out_i_llvm_fpga_mem_lm1076_add79_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg2 <= SE_out_i_llvm_fpga_mem_lm1076_add79_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_consumed0 = (~ (SR_SE_i_lm1076_toi1_intcast_add82_sel_x_backStall) & SE_out_i_llvm_fpga_mem_lm1076_add79_wireValid) | SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_consumed1 = (~ (SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_backStall) & SE_out_i_llvm_fpga_mem_lm1076_add79_wireValid) | SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg1;
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_consumed2 = (~ (SE_i_unnamed_add86_backStall) & SE_out_i_llvm_fpga_mem_lm1076_add79_wireValid) | SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_StallValid = SE_out_i_llvm_fpga_mem_lm1076_add79_backStall & SE_out_i_llvm_fpga_mem_lm1076_add79_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_toReg0 = SE_out_i_llvm_fpga_mem_lm1076_add79_StallValid & SE_out_i_llvm_fpga_mem_lm1076_add79_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_toReg1 = SE_out_i_llvm_fpga_mem_lm1076_add79_StallValid & SE_out_i_llvm_fpga_mem_lm1076_add79_consumed1;
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_toReg2 = SE_out_i_llvm_fpga_mem_lm1076_add79_StallValid & SE_out_i_llvm_fpga_mem_lm1076_add79_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_or0 = SE_out_i_llvm_fpga_mem_lm1076_add79_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_or1 = SE_out_i_llvm_fpga_mem_lm1076_add79_consumed1 & SE_out_i_llvm_fpga_mem_lm1076_add79_or0;
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm1076_add79_consumed2 & SE_out_i_llvm_fpga_mem_lm1076_add79_or1);
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_backStall = SE_out_i_llvm_fpga_mem_lm1076_add79_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_V0 = SE_out_i_llvm_fpga_mem_lm1076_add79_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_V1 = SE_out_i_llvm_fpga_mem_lm1076_add79_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg1);
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_V2 = SE_out_i_llvm_fpga_mem_lm1076_add79_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1076_add79_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm1076_add79_wireValid = i_llvm_fpga_mem_lm1076_add79_out_o_valid;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27(STALLENABLE,1800)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_1_reg_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_consumed1 = (~ (SE_i_unnamed_add86_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_wireValid = i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_out_valid_out;

    // SE_i_unnamed_add86(STALLENABLE,1920)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_add86_fromReg0 <= '0;
            SE_i_unnamed_add86_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_add86_fromReg0 <= SE_i_unnamed_add86_toReg0;
            // Successor 1
            SE_i_unnamed_add86_fromReg1 <= SE_i_unnamed_add86_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_add86_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_add93_backStall) & SE_i_unnamed_add86_wireValid) | SE_i_unnamed_add86_fromReg0;
    assign SE_i_unnamed_add86_consumed1 = (~ (SE_i_masked_add95_backStall) & SE_i_unnamed_add86_wireValid) | SE_i_unnamed_add86_fromReg1;
    // Consuming
    assign SE_i_unnamed_add86_StallValid = SE_i_unnamed_add86_backStall & SE_i_unnamed_add86_wireValid;
    assign SE_i_unnamed_add86_toReg0 = SE_i_unnamed_add86_StallValid & SE_i_unnamed_add86_consumed0;
    assign SE_i_unnamed_add86_toReg1 = SE_i_unnamed_add86_StallValid & SE_i_unnamed_add86_consumed1;
    // Backward Stall generation
    assign SE_i_unnamed_add86_or0 = SE_i_unnamed_add86_consumed0;
    assign SE_i_unnamed_add86_wireStall = ~ (SE_i_unnamed_add86_consumed1 & SE_i_unnamed_add86_or0);
    assign SE_i_unnamed_add86_backStall = SE_i_unnamed_add86_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_add86_V0 = SE_i_unnamed_add86_wireValid & ~ (SE_i_unnamed_add86_fromReg0);
    assign SE_i_unnamed_add86_V1 = SE_i_unnamed_add86_wireValid & ~ (SE_i_unnamed_add86_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_add86_and0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i38_add27_V1;
    assign SE_i_unnamed_add86_and1 = SE_out_i_llvm_fpga_mem_lm1076_add79_V2 & SE_i_unnamed_add86_and0;
    assign SE_i_unnamed_add86_and2 = SE_out_i_llvm_fpga_mem_lm1097_add80_V2 & SE_i_unnamed_add86_and1;
    assign SE_i_unnamed_add86_and3 = SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_V0 & SE_i_unnamed_add86_and2;
    assign SE_i_unnamed_add86_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision105_xor85_add28_V1 & SE_i_unnamed_add86_and3;

    // SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2(STALLENABLE,2072)
    // Valid signal propagation
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_V0 = SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_R_v_0;
    // Stall signal propagation
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_s_tv_0 = SE_i_unnamed_add86_backStall & SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_R_v_0;
    // Backward Enable generation
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_backEN = ~ (SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_v_s_0 = SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_backEN & SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_V0;
    // Backward Stall generation
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_backStall = ~ (SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_backEN == 1'b0)
            begin
                SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_R_v_0 <= SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_R_v_0 & SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_s_tv_0;
            end
            else
            begin
                SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_R_v_0 <= SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_v_s_0;
            end

        end
    end

    // SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1(STALLENABLE,2071)
    // Valid signal propagation
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_V0 = SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_s_tv_0 = SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_2_backStall & SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_backEN = ~ (SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_v_s_0 = SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_backEN & SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_V0;
    // Backward Stall generation
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_backStall = ~ (SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_backEN == 1'b0)
            begin
                SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_R_v_0 <= SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_R_v_0 & SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_s_tv_0;
            end
            else
            begin
                SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_R_v_0 <= SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_v_s_0;
            end

        end
    end

    // SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0(STALLENABLE,2070)
    // Valid signal propagation
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_V0 = SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_s_tv_0 = SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_1_backStall & SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_backEN = ~ (SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_v_s_0 = SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_backEN & SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_V;
    // Backward Stall generation
    assign SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_backStall = ~ (SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_backEN == 1'b0)
            begin
                SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_R_v_0 <= SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_R_v_0 & SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_s_tv_0;
            end
            else
            begin
                SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_R_v_0 <= SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_v_s_0;
            end

        end
    end

    // SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0(STALLREG,2430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_valid <= 1'b0;
            SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_valid <= SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_backStall & (SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_valid | SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_i_valid);

            if (SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_data0 <= bgTrunc_i_inc_i_add45_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_i_valid = SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_backStall = SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_valid | ~ (SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_i_valid);

    // Valid
    assign SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_V = SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_valid == 1'b1 ? SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_valid : SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_i_valid;

    assign SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_D0 = SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_valid == 1'b1 ? SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_r_data0 : bgTrunc_i_inc_i_add45_sel_x_b;

    // SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo(STALLENABLE,2027)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_fromReg0 <= '0;
            SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_fromReg0 <= SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_toReg0;
            // Successor 1
            SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_fromReg1 <= SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_consumed0 = (~ (SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_backStall) & SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_wireValid) | SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_fromReg0;
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_consumed1 = (~ (SR_SE_redist42_bgTrunc_i_inc_i_add45_sel_x_b_3_0_backStall) & SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_wireValid) | SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_fromReg1;
    // Consuming
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_StallValid = SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_backStall & SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_wireValid;
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_toReg0 = SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_StallValid & SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_consumed0;
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_toReg1 = SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_StallValid & SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_or0 = SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_consumed0;
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_wireStall = ~ (SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_consumed1 & SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_or0);
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_backStall = SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_V0 = SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_wireValid & ~ (SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_fromReg0);
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_V1 = SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_wireValid & ~ (SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_wireValid = redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_valid_out;

    // SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59(STALLENABLE,1895)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_V0 = SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_backStall = i_llvm_fpga_push_i32_j_i_0446_push17_add59_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_wireValid = SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_V;

    // SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59(STALLREG,2435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_valid <= SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_backStall & (SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_valid | SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_data0 <= bgTrunc_i_inc_i_add45_sel_x_b;
                SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_add30_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_and0 = SE_out_redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_V0;
    assign SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_add30_V2 & SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_backStall = SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_V = SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_valid : SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_D0 = SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_data0 : bgTrunc_i_inc_i_add45_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_D1 = SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_add30_b;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push18_add78(STALLENABLE,1890)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push18_add78_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push18_add78_wireValid = i_llvm_fpga_push_i1_memdep_phi_push18_add78_out_valid_out;

    // bubble_join_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo(BITJOIN,1709)
    assign bubble_join_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_q = redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_data_out;

    // bubble_select_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo(BITSELECT,1710)
    assign bubble_select_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_b = $unsigned(bubble_join_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_push18_add78(BLACKBOX,181)@105
    // in in_stall_in@20000000
    // out out_data_out@106
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@106
    add_i_llvm_fpga_push_i1_memdep_phi_push18_0 thei_llvm_fpga_push_i1_memdep_phi_push18_add78 (
        .in_data_in(bubble_select_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_out_feedback_stall_out_18),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_add30_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push18_add78_backStall),
        .in_valid_in(SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_memdep_phi_push18_add78_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_memdep_phi_push18_add78_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push18_add78_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push18_add78_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo(STALLENABLE,2035)
    // Valid signal propagation
    assign SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_V0 = SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi_push18_add78_out_stall_out | ~ (SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_and0 = redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_valid_out;
    assign SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_add30_V1 & SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_and0;

    // bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg(STALLFIFO,2418)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_add30_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(5),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_add30(BLACKBOX,166)@104
    // in in_stall_in@20000000
    // out out_data_out@105
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@105
    add_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_add30 (
        .in_data_in(bubble_select_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_add60_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_add60_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_add93_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_add93_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_add30_backStall),
        .in_valid_in(SE_out_redist47_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_add30_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_add30_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_add30_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_add30_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_add30_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_add30_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_add30_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_add30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_add30(STALLENABLE,1860)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_add30_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_add30_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_add30_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_add30_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_add30_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed1 = (~ (SE_out_redist19_i_llvm_fpga_mem_memdep_add77_out_o_writeack_29_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed2 = (~ (SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed3 = (~ (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_add30_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_add30_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_add30_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_add30_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_add30_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_add30_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_add30_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_add30_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_add30_or2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_add30_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_add30_wireValid = i_llvm_fpga_pipeline_keep_going_add30_out_valid_out;

    // SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0(STALLENABLE,2030)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_V0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_s_tv_0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_backStall & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_backEN = ~ (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_v_s_0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going_add30_V3;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_backStall = ~ (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_R_v_0 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_R_v_0 & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_R_v_0 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pipeline_keep_going_add30(BITJOIN,1657)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_add30_q = i_llvm_fpga_pipeline_keep_going_add30_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_add30(BITSELECT,1658)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_add30_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_add30_q[0:0]);

    // redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0(REG,1468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_add30_b);
        end
    end

    // redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1(REG,1469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_q <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_q);
        end
    end

    // redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2(REG,1470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_backEN == 1'b1)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_q);
        end
    end

    // SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0(STALLENABLE,2033)
    // Valid signal propagation
    assign SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_V0 = SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_s_tv_0 = SE_out_redist28_i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_c0_exit_3_tpl_64_fifo_backStall & SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_backEN = ~ (SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_v_s_0 = SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_backEN & SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_V;
    // Backward Stall generation
    assign SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_backStall = ~ (SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_backEN == 1'b0)
            begin
                SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_R_v_0 <= SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_R_v_0 & SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_s_tv_0;
            end
            else
            begin
                SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_R_v_0 <= SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_v_s_0;
            end

        end
    end

    // SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0(STALLREG,2431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_valid <= 1'b0;
            SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_valid <= SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_backStall & (SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_valid | SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_i_valid);

            if (SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_data0 <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_i_valid = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V4;
    // Stall signal propagation
    assign SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_backStall = SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_valid | ~ (SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_i_valid);

    // Valid
    assign SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_V = SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_valid == 1'b1 ? SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_valid : SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_i_valid;

    assign SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_D0 = SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_valid == 1'b1 ? SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_r_data0 : redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q;

    // i_lm1097_toi1_intcast_add85_sel_x(BITSELECT,97)@108
    assign i_lm1097_toi1_intcast_add85_sel_x_b = bubble_select_i_llvm_fpga_mem_lm1097_add80_b[0:0];

    // SR_SE_i_lm1097_toi1_intcast_add85_sel_x(STALLREG,2434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_valid <= 1'b0;
            SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data0 <= 1'bx;
            SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data1 <= 1'bx;
            SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data2 <= 1'bx;
            SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_valid <= SE_i_lm1097_toi1_intcast_add85_sel_x_backStall & (SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_valid | SR_SE_i_lm1097_toi1_intcast_add85_sel_x_i_valid);

            if (SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data0 <= i_lm1097_toi1_intcast_add85_sel_x_b;
                SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data1 <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q);
                SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data2 <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q);
                SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data3 <= $unsigned(bubble_select_i_llvm_fpga_mem_lm1097_add80_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_lm1097_toi1_intcast_add85_sel_x_and0 = SE_out_i_llvm_fpga_mem_lm1097_add80_V0;
    assign SR_SE_i_lm1097_toi1_intcast_add85_sel_x_i_valid = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V2 & SR_SE_i_lm1097_toi1_intcast_add85_sel_x_and0;
    // Stall signal propagation
    assign SR_SE_i_lm1097_toi1_intcast_add85_sel_x_backStall = SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_valid | ~ (SR_SE_i_lm1097_toi1_intcast_add85_sel_x_i_valid);

    // Valid
    assign SR_SE_i_lm1097_toi1_intcast_add85_sel_x_V = SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_valid == 1'b1 ? SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_valid : SR_SE_i_lm1097_toi1_intcast_add85_sel_x_i_valid;

    // Data0
    assign SR_SE_i_lm1097_toi1_intcast_add85_sel_x_D0 = SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_valid == 1'b1 ? SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data0 : i_lm1097_toi1_intcast_add85_sel_x_b;
    // Data1
    assign SR_SE_i_lm1097_toi1_intcast_add85_sel_x_D1 = SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_valid == 1'b1 ? SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data1 : redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q;
    // Data2
    assign SR_SE_i_lm1097_toi1_intcast_add85_sel_x_D2 = SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_valid == 1'b1 ? SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data2 : redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q;
    // Data3
    assign SR_SE_i_lm1097_toi1_intcast_add85_sel_x_D3 = SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_valid == 1'b1 ? SR_SE_i_lm1097_toi1_intcast_add85_sel_x_r_data3 : bubble_select_i_llvm_fpga_mem_lm1097_add80_b;

    // i_lm1076_toi1_intcast_add82_sel_x(BITSELECT,96)@108
    assign i_lm1076_toi1_intcast_add82_sel_x_b = bubble_select_i_llvm_fpga_mem_lm1076_add79_b[0:0];

    // SR_SE_i_lm1076_toi1_intcast_add82_sel_x(STALLREG,2433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_valid <= 1'b0;
            SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data0 <= 1'bx;
            SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data1 <= 1'bx;
            SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data2 <= 1'bx;
            SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_valid <= SE_i_lm1076_toi1_intcast_add82_sel_x_backStall & (SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_valid | SR_SE_i_lm1076_toi1_intcast_add82_sel_x_i_valid);

            if (SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data0 <= i_lm1076_toi1_intcast_add82_sel_x_b;
                SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data1 <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q);
                SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data2 <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q);
                SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data3 <= $unsigned(bubble_select_i_llvm_fpga_mem_lm1076_add79_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_lm1076_toi1_intcast_add82_sel_x_and0 = SE_out_i_llvm_fpga_mem_lm1076_add79_V0;
    assign SR_SE_i_lm1076_toi1_intcast_add82_sel_x_i_valid = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V1 & SR_SE_i_lm1076_toi1_intcast_add82_sel_x_and0;
    // Stall signal propagation
    assign SR_SE_i_lm1076_toi1_intcast_add82_sel_x_backStall = SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_valid | ~ (SR_SE_i_lm1076_toi1_intcast_add82_sel_x_i_valid);

    // Valid
    assign SR_SE_i_lm1076_toi1_intcast_add82_sel_x_V = SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_valid == 1'b1 ? SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_valid : SR_SE_i_lm1076_toi1_intcast_add82_sel_x_i_valid;

    // Data0
    assign SR_SE_i_lm1076_toi1_intcast_add82_sel_x_D0 = SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_valid == 1'b1 ? SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data0 : i_lm1076_toi1_intcast_add82_sel_x_b;
    // Data1
    assign SR_SE_i_lm1076_toi1_intcast_add82_sel_x_D1 = SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_valid == 1'b1 ? SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data1 : redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q;
    // Data2
    assign SR_SE_i_lm1076_toi1_intcast_add82_sel_x_D2 = SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_valid == 1'b1 ? SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data2 : redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q;
    // Data3
    assign SR_SE_i_lm1076_toi1_intcast_add82_sel_x_D3 = SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_valid == 1'b1 ? SR_SE_i_lm1076_toi1_intcast_add82_sel_x_r_data3 : bubble_select_i_llvm_fpga_mem_lm1076_add79_b;

    // rightShiftStage0Idx1Rng1_uid433_i_next_initerations_add0_shift_x(BITSELECT,432)@108
    assign rightShiftStage0Idx1Rng1_uid433_i_next_initerations_add0_shift_x_b = bubble_select_i_llvm_fpga_pop_i17_initerations_pop21_add31_b[16:1];

    // rightShiftStage0Idx1_uid435_i_next_initerations_add0_shift_x(BITJOIN,434)@108
    assign rightShiftStage0Idx1_uid435_i_next_initerations_add0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid433_i_next_initerations_add0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i17_initerations_pop21_add31(BITJOIN,1664)
    assign bubble_join_i_llvm_fpga_pop_i17_initerations_pop21_add31_q = i_llvm_fpga_pop_i17_initerations_pop21_add31_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i17_initerations_pop21_add31(BITSELECT,1665)
    assign bubble_select_i_llvm_fpga_pop_i17_initerations_pop21_add31_b = $unsigned(bubble_join_i_llvm_fpga_pop_i17_initerations_pop21_add31_q[16:0]);

    // rightShiftStage0_uid437_i_next_initerations_add0_shift_x(MUX,436)@108
    assign rightShiftStage0_uid437_i_next_initerations_add0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid437_i_next_initerations_add0_shift_x_s or bubble_select_i_llvm_fpga_pop_i17_initerations_pop21_add31_b or rightShiftStage0Idx1_uid435_i_next_initerations_add0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid437_i_next_initerations_add0_shift_x_s)
            1'b0 : rightShiftStage0_uid437_i_next_initerations_add0_shift_x_q = bubble_select_i_llvm_fpga_pop_i17_initerations_pop21_add31_b;
            1'b1 : rightShiftStage0_uid437_i_next_initerations_add0_shift_x_q = rightShiftStage0Idx1_uid435_i_next_initerations_add0_shift_x_q;
            default : rightShiftStage0_uid437_i_next_initerations_add0_shift_x_q = 17'b0;
        endcase
    end

    // i_next_initerations_add39_vt_select_15(BITSELECT,194)@108
    assign i_next_initerations_add39_vt_select_15_b = rightShiftStage0_uid437_i_next_initerations_add0_shift_x_q[15:0];

    // i_next_initerations_add39_vt_join(BITJOIN,193)@108
    assign i_next_initerations_add39_vt_join_q = {GND_q, i_next_initerations_add39_vt_select_15_b};

    // i_last_initeration_add49_sel_x(BITSELECT,95)@108
    assign i_last_initeration_add49_sel_x_b = i_next_initerations_add39_vt_join_q[0:0];

    // SR_SE_i_next_initerations_add39_vt_select_15(STALLREG,2432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_add39_vt_select_15_r_valid <= 1'b0;
            SR_SE_i_next_initerations_add39_vt_select_15_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_add39_vt_select_15_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_add39_vt_select_15_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_add39_vt_select_15_r_data3 <= 17'bxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_add39_vt_select_15_r_valid <= SE_i_next_initerations_add39_vt_select_15_backStall & (SR_SE_i_next_initerations_add39_vt_select_15_r_valid | SR_SE_i_next_initerations_add39_vt_select_15_i_valid);

            if (SR_SE_i_next_initerations_add39_vt_select_15_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_add39_vt_select_15_r_data0 <= i_last_initeration_add49_sel_x_b;
                SR_SE_i_next_initerations_add39_vt_select_15_r_data1 <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q);
                SR_SE_i_next_initerations_add39_vt_select_15_r_data2 <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q);
                SR_SE_i_next_initerations_add39_vt_select_15_r_data3 <= i_next_initerations_add39_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_add39_vt_select_15_and0 = SE_out_i_llvm_fpga_pop_i17_initerations_pop21_add31_V1;
    assign SR_SE_i_next_initerations_add39_vt_select_15_i_valid = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V0 & SR_SE_i_next_initerations_add39_vt_select_15_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_add39_vt_select_15_backStall = SR_SE_i_next_initerations_add39_vt_select_15_r_valid | ~ (SR_SE_i_next_initerations_add39_vt_select_15_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_add39_vt_select_15_V = SR_SE_i_next_initerations_add39_vt_select_15_r_valid == 1'b1 ? SR_SE_i_next_initerations_add39_vt_select_15_r_valid : SR_SE_i_next_initerations_add39_vt_select_15_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_add39_vt_select_15_D0 = SR_SE_i_next_initerations_add39_vt_select_15_r_valid == 1'b1 ? SR_SE_i_next_initerations_add39_vt_select_15_r_data0 : i_last_initeration_add49_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_add39_vt_select_15_D1 = SR_SE_i_next_initerations_add39_vt_select_15_r_valid == 1'b1 ? SR_SE_i_next_initerations_add39_vt_select_15_r_data1 : redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q;
    // Data2
    assign SR_SE_i_next_initerations_add39_vt_select_15_D2 = SR_SE_i_next_initerations_add39_vt_select_15_r_valid == 1'b1 ? SR_SE_i_next_initerations_add39_vt_select_15_r_data2 : redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q;
    // Data3
    assign SR_SE_i_next_initerations_add39_vt_select_15_D3 = SR_SE_i_next_initerations_add39_vt_select_15_r_valid == 1'b1 ? SR_SE_i_next_initerations_add39_vt_select_15_r_data3 : i_next_initerations_add39_vt_join_q;

    // SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1(STALLENABLE,2031)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_V0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_s_tv_0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_backStall & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_backEN = ~ (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_v_s_0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_backEN & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_0_V0;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_backStall = ~ (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_R_v_0 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_R_v_0 & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_R_v_0 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_v_s_0;
            end

        end
    end

    // SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2(STALLENABLE,2032)
    // Valid signal propagation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_0;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V1 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_1;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V2 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_2;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V3 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_3;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V4 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_4;
    // Stall signal propagation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_0 = SR_SE_i_next_initerations_add39_vt_select_15_backStall & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_0;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_1 = SR_SE_i_lm1076_toi1_intcast_add82_sel_x_backStall & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_1;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_2 = SR_SE_i_lm1097_toi1_intcast_add85_sel_x_backStall & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_2;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_3 = SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_backStall & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_3;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_4 = SR_SE_redist18_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_4_0_backStall & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_4;
    // Backward Enable generation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_or0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_0;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_or1 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_1 | SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_or0;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_or2 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_2 | SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_or1;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_or3 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_3 | SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_or2;
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_backEN = ~ (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_4 | SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_v_s_0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_backEN & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_1_V0;
    // Backward Stall generation
    assign SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_backStall = ~ (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_0 <= 1'b0;
            SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_1 <= 1'b0;
            SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_2 <= 1'b0;
            SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_3 <= 1'b0;
            SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_0 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_0 & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_0;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_0 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_v_s_0;
            end

            if (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_1 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_1 & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_1;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_1 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_v_s_0;
            end

            if (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_2 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_2 & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_2;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_2 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_v_s_0;
            end

            if (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_3 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_3 & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_3;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_3 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_v_s_0;
            end

            if (SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_4 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_4 & SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_s_tv_4;
            end
            else
            begin
                SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_R_v_4 <= SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47(STALLENABLE,1893)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_V0 = SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_backStall = i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_and0 = SE_redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_V3;
    assign SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_wireValid = SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_V1 & SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_and0;

    // bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg(STALLENABLE,2420)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_V0 = bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall & bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_v_s_0 = bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_backEN & SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_R_v_0 & bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38(STALLENABLE,1872)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_reg_backStall) & SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_wireValid) | SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_backStall) & SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_wireValid) | SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_StallValid = SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_backStall & SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_toReg0 = SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_StallValid & SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_toReg1 = SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_StallValid & SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_or0 = SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_consumed1 & SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_or0);
    assign SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_backStall = SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_V0 = SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_V1 = SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_wireValid = i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38(BITJOIN,1677)
    assign bubble_join_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_q = i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38(BITSELECT,1678)
    assign bubble_select_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_q[31:0]);

    // i_llvm_fpga_push_i32_inc7_i146_push23_add47(BLACKBOX,183)@108
    // in in_stall_in@20000000
    // out out_data_out@109
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@109
    add_i_llvm_fpga_push_i32_inc7_i146_push23_0 thei_llvm_fpga_push_i32_inc7_i146_push23_add47 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_out_feedback_stall_out_23),
        .in_keep_going(redist17_i_llvm_fpga_pipeline_keep_going_add30_out_data_out_3_2_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_inc7_i146_push23_add47_V0),
        .out_data_out(i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_data_out),
        .out_feedback_out_23(i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1(REG,1522)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_backEN == 1'b1)
        begin
            redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_q <= $unsigned(SR_SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_D0);
        end
    end

    // redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2(REG,1523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_backEN == 1'b1)
        begin
            redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_q <= $unsigned(redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_q);
        end
    end

    // bubble_join_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo(BITJOIN,1724)
    assign bubble_join_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_q = redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_data_out;

    // bubble_select_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo(BITSELECT,1725)
    assign bubble_select_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_b = $unsigned(bubble_join_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_q[31:0]);

    // i_llvm_fpga_pop_i32_inc7_i146_pop23_add38(BLACKBOX,172)@107
    // in in_stall_in@20000000
    // out out_data_out@108
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@108
    add_i_llvm_fpga_pop_i32_inc7_i146_pop23_0 thei_llvm_fpga_pop_i32_inc7_i146_pop23_add38 (
        .in_data_in(bubble_select_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_b),
        .in_dir(redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_backStall),
        .in_valid_in(SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2(STALLENABLE,2090)
    // Valid signal propagation
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_V0 = SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_0;
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_V1 = SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_1;
    // Stall signal propagation
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_s_tv_0 = SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_backStall & SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_0;
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_s_tv_1 = i_llvm_fpga_pop_i17_initerations_pop21_add31_out_stall_out & SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_1;
    // Backward Enable generation
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_or0 = SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_s_tv_0;
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_backEN = ~ (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_s_tv_1 | SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_v_s_0 = SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_backEN & SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_1_V0;
    // Backward Stall generation
    assign SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_backStall = ~ (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_0 <= 1'b0;
            SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_backEN == 1'b0)
            begin
                SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_0 <= SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_0 & SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_s_tv_0;
            end
            else
            begin
                SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_0 <= SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_v_s_0;
            end

            if (SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_backEN == 1'b0)
            begin
                SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_1 <= SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_1 & SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_s_tv_1;
            end
            else
            begin
                SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_R_v_1 <= SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_v_s_0;
            end

        end
    end

    // SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo(STALLENABLE,2092)
    // Valid signal propagation
    assign SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_V0 = SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_backStall = i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_out_stall_out | ~ (SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_and0 = redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_valid_out;
    assign SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_wireValid = SE_redist48_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_106_2_V0 & SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_and0;

    // redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo(STALLFIFO,1524)
    assign redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V31;
    assign redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_stall_in = SE_out_redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_backStall;
    assign redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_data_in = bubble_select_add_B5_merge_reg_aunroll_x_c;
    assign redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_valid_in_bitsignaltemp = redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_valid_in[0];
    assign redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_stall_in_bitsignaltemp = redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_stall_in[0];
    assign redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_valid_out[0] = redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_valid_out_bitsignaltemp;
    assign redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_stall_out[0] = redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(107),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo (
        .valid_in(redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_valid_in_bitsignaltemp),
        .stall_in(redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_add_B5_merge_reg_aunroll_x_c),
        .valid_out(redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_valid_out_bitsignaltemp),
        .stall_out(redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_stall_out_bitsignaltemp),
        .data_out(redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0(STALLENABLE,2073)
    // Valid signal propagation
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V0 = SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_0 = SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall & SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN = ~ (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0 = SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN & SE_out_add_B5_merge_reg_aunroll_x_V29;
    // Backward Stall generation
    assign SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backStall = ~ (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0 <= SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0 & SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_0;
            end
            else
            begin
                SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0 <= SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0;
            end

        end
    end

    // bubble_out_add_B5_merge_reg_aunroll_x_29_reg(STALLFIFO,2409)
    assign bubble_out_add_B5_merge_reg_aunroll_x_29_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V28;
    assign bubble_out_add_B5_merge_reg_aunroll_x_29_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_29_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_29_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_29_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_29_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_29_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_29_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_29_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_29_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_29_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(107),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_29_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_29_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_29_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_29_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_29_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_add_B5_merge_reg_aunroll_x_28_reg(STALLFIFO,2408)
    assign bubble_out_add_B5_merge_reg_aunroll_x_28_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V27;
    assign bubble_out_add_B5_merge_reg_aunroll_x_28_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_28_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_28_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_28_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_28_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_28_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_28_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_28_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_28_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_28_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(107),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_28_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_28_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_28_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_28_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_28_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_add_B5_merge_reg_aunroll_x_27_reg(STALLFIFO,2407)
    assign bubble_out_add_B5_merge_reg_aunroll_x_27_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V26;
    assign bubble_out_add_B5_merge_reg_aunroll_x_27_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_27_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_27_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_27_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_27_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_27_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_27_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_27_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_27_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_27_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(107),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_27_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_27_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_27_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_27_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_27_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_add_B5_merge_reg_aunroll_x_26_reg(STALLFIFO,2406)
    assign bubble_out_add_B5_merge_reg_aunroll_x_26_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V25;
    assign bubble_out_add_B5_merge_reg_aunroll_x_26_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_26_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_26_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_26_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_26_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_26_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_26_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_26_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_26_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_26_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(75),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_26_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_26_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_26_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_26_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_26_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_add_B5_merge_reg_aunroll_x_25_reg(STALLFIFO,2405)
    assign bubble_out_add_B5_merge_reg_aunroll_x_25_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V24;
    assign bubble_out_add_B5_merge_reg_aunroll_x_25_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_25_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_25_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_25_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_25_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_25_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_25_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_25_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_25_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_25_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(107),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_25_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_25_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_25_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_25_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_25_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_add_B5_merge_reg_aunroll_x_24_reg(STALLFIFO,2404)
    assign bubble_out_add_B5_merge_reg_aunroll_x_24_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V23;
    assign bubble_out_add_B5_merge_reg_aunroll_x_24_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_24_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_24_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_24_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_24_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_24_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_24_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_24_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_24_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_24_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(75),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_24_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_24_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_24_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_24_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_24_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx17_i42_i_add0_narrow_x(BITSELECT,31)@2
    assign i_arrayidx17_i42_i_add0_narrow_x_b = i_idxprom_i27_i_add42_vt_join_q[61:0];

    // redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_0(REG,1499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_0_q <= $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_0_q <= $unsigned(i_arrayidx17_i42_i_add0_narrow_x_b);
        end
    end

    // redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_1(REG,1500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_1_q <= $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backEN == 1'b1)
        begin
            redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_1_q <= $unsigned(redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_0_q);
        end
    end

    // redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_2(REG,1501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_2_q <= $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backEN == 1'b1)
        begin
            redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_2_q <= $unsigned(redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_1_q);
        end
    end

    // i_arrayidx17_i42_i_add0_shift_join_x(BITJOIN,32)@5
    assign i_arrayidx17_i42_i_add0_shift_join_x_q = {redist38_i_arrayidx17_i42_i_add0_narrow_x_b_3_2_q, i_arrayidx17_i42_i_add0_c_i2_02_x_q};

    // SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20(STALLENABLE,1828)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_V0 = SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_backStall = SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_wireValid = i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_out_valid_out;

    // SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0(STALLENABLE,1967)
    // Valid signal propagation
    assign SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_V0 = SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_s_tv_0 = SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_backStall & SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backEN = ~ (SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_v_s_0 = SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_V0;
    // Backward Stall generation
    assign SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backStall = ~ (SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backEN == 1'b0)
            begin
                SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_R_v_0 <= SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_R_v_0 & SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_R_v_0 <= SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_v_s_0;
            end

        end
    end

    // lowRangeB_uid868_i_arrayidx17_i_i_add0_mult_x_im9_merged_bit_select(BITSELECT,1391)@2
    assign lowRangeB_uid868_i_arrayidx17_i_i_add0_mult_x_im9_merged_bit_select_b = i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_e[0:0];
    assign lowRangeB_uid868_i_arrayidx17_i_i_add0_mult_x_im9_merged_bit_select_c = i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_e[9:1];

    // bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20(BITJOIN,1613)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_q = i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_out_dest_data_out_24_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20(BITSELECT,1614)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_q[63:0]);

    // i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select(BITSELECT,1382)@2
    assign i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_b[17:0];
    assign i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_b[35:18];
    assign i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_d = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_b[53:36];
    assign i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_e = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_b[63:54];

    // lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9(ADD,869)@2 + 1
    assign lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_a = {1'b0, i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_e};
    assign lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_b = {2'b00, lowRangeB_uid868_i_arrayidx17_i_i_add0_mult_x_im9_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_o <= 11'b0;
        end
        else if (SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_o <= $unsigned(lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_a) + $unsigned(lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_b);
        end
    end
    assign lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_q = lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_o[10:0];

    // redist4_lowRangeB_uid868_i_arrayidx17_i_i_add0_mult_x_im9_merged_bit_select_b_1_0(REG,1453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_lowRangeB_uid868_i_arrayidx17_i_i_add0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist4_lowRangeB_uid868_i_arrayidx17_i_i_add0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid868_i_arrayidx17_i_i_add0_mult_x_im9_merged_bit_select_b);
        end
    end

    // lev1_a0_uid871_i_arrayidx17_i_i_add0_mult_x_im9(BITJOIN,870)@3
    assign lev1_a0_uid871_i_arrayidx17_i_i_add0_mult_x_im9_q = {lev1_a0sumAHighB_uid870_i_arrayidx17_i_i_add0_mult_x_im9_q, redist4_lowRangeB_uid868_i_arrayidx17_i_i_add0_mult_x_im9_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid876_i_arrayidx17_i_i_add0_mult_x_im9(BITJOIN,875)@3
    assign sR_mergedSignalTM_uid876_i_arrayidx17_i_i_add0_mult_x_im9_q = {lev1_a0_uid871_i_arrayidx17_i_i_add0_mult_x_im9_q, sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx17_i_i_add0_mult_x_sums_align_3(BITSHIFT,391)@3
    assign i_arrayidx17_i_i_add0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid876_i_arrayidx17_i_i_add0_mult_x_im9_q, 4'b0000 };
    assign i_arrayidx17_i_i_add0_mult_x_sums_align_3_q = i_arrayidx17_i_i_add0_mult_x_sums_align_3_qint[27:0];

    // lowRangeB_uid744_i_arrayidx17_i_i_add0_mult_x_im3_merged_bit_select(BITSELECT,1389)@2
    assign lowRangeB_uid744_i_arrayidx17_i_i_add0_mult_x_im3_merged_bit_select_b = i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_c[0:0];
    assign lowRangeB_uid744_i_arrayidx17_i_i_add0_mult_x_im3_merged_bit_select_c = i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_c[17:1];

    // lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3(ADD,745)@2 + 1
    assign lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_a = {1'b0, i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_c};
    assign lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_b = {2'b00, lowRangeB_uid744_i_arrayidx17_i_i_add0_mult_x_im3_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_o <= 19'b0;
        end
        else if (SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_o <= $unsigned(lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_a) + $unsigned(lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_b);
        end
    end
    assign lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_q = lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_o[18:0];

    // redist6_lowRangeB_uid744_i_arrayidx17_i_i_add0_mult_x_im3_merged_bit_select_b_1_0(REG,1455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_lowRangeB_uid744_i_arrayidx17_i_i_add0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist6_lowRangeB_uid744_i_arrayidx17_i_i_add0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid744_i_arrayidx17_i_i_add0_mult_x_im3_merged_bit_select_b);
        end
    end

    // lev1_a0_uid747_i_arrayidx17_i_i_add0_mult_x_im3(BITJOIN,746)@3
    assign lev1_a0_uid747_i_arrayidx17_i_i_add0_mult_x_im3_q = {lev1_a0sumAHighB_uid746_i_arrayidx17_i_i_add0_mult_x_im3_q, redist6_lowRangeB_uid744_i_arrayidx17_i_i_add0_mult_x_im3_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid752_i_arrayidx17_i_i_add0_mult_x_im3(BITJOIN,751)@3
    assign sR_mergedSignalTM_uid752_i_arrayidx17_i_i_add0_mult_x_im3_q = {lev1_a0_uid747_i_arrayidx17_i_i_add0_mult_x_im3_q, sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx17_i_i_add0_mult_x_sums_align_2(BITSHIFT,390)@3
    assign i_arrayidx17_i_i_add0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid752_i_arrayidx17_i_i_add0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx17_i_i_add0_mult_x_sums_align_2_q = i_arrayidx17_i_i_add0_mult_x_sums_align_2_qint[49:0];

    // i_arrayidx17_i_i_add0_mult_x_sums_join_4(BITJOIN,392)@3
    assign i_arrayidx17_i_i_add0_mult_x_sums_join_4_q = {i_arrayidx17_i_i_add0_mult_x_sums_align_3_q, i_arrayidx17_i_i_add0_mult_x_sums_align_2_q};

    // lowRangeB_uid806_i_arrayidx17_i_i_add0_mult_x_im6_merged_bit_select(BITSELECT,1390)@2
    assign lowRangeB_uid806_i_arrayidx17_i_i_add0_mult_x_im6_merged_bit_select_b = i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_d[0:0];
    assign lowRangeB_uid806_i_arrayidx17_i_i_add0_mult_x_im6_merged_bit_select_c = i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_d[17:1];

    // lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6(ADD,807)@2 + 1
    assign lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_a = {1'b0, i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_d};
    assign lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_b = {2'b00, lowRangeB_uid806_i_arrayidx17_i_i_add0_mult_x_im6_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_o <= 19'b0;
        end
        else if (SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_o <= $unsigned(lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_a) + $unsigned(lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_b);
        end
    end
    assign lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_q = lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_o[18:0];

    // redist5_lowRangeB_uid806_i_arrayidx17_i_i_add0_mult_x_im6_merged_bit_select_b_1_0(REG,1454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_lowRangeB_uid806_i_arrayidx17_i_i_add0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist5_lowRangeB_uid806_i_arrayidx17_i_i_add0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid806_i_arrayidx17_i_i_add0_mult_x_im6_merged_bit_select_b);
        end
    end

    // lev1_a0_uid809_i_arrayidx17_i_i_add0_mult_x_im6(BITJOIN,808)@3
    assign lev1_a0_uid809_i_arrayidx17_i_i_add0_mult_x_im6_q = {lev1_a0sumAHighB_uid808_i_arrayidx17_i_i_add0_mult_x_im6_q, redist5_lowRangeB_uid806_i_arrayidx17_i_i_add0_mult_x_im6_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid814_i_arrayidx17_i_i_add0_mult_x_im6(BITJOIN,813)@3
    assign sR_mergedSignalTM_uid814_i_arrayidx17_i_i_add0_mult_x_im6_q = {lev1_a0_uid809_i_arrayidx17_i_i_add0_mult_x_im6_q, sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx17_i_i_add0_mult_x_sums_align_0(BITSHIFT,388)@3
    assign i_arrayidx17_i_i_add0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid814_i_arrayidx17_i_i_add0_mult_x_im6_q, 4'b0000 };
    assign i_arrayidx17_i_i_add0_mult_x_sums_align_0_q = i_arrayidx17_i_i_add0_mult_x_sums_align_0_qint[35:0];

    // lowRangeB_uid682_i_arrayidx17_i_i_add0_mult_x_im0_merged_bit_select(BITSELECT,1388)@2
    assign lowRangeB_uid682_i_arrayidx17_i_i_add0_mult_x_im0_merged_bit_select_b = i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_b[0:0];
    assign lowRangeB_uid682_i_arrayidx17_i_i_add0_mult_x_im0_merged_bit_select_c = i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_b[17:1];

    // lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0(ADD,683)@2 + 1
    assign lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_a = {1'b0, i_arrayidx17_i_i_add0_mult_x_bs1_merged_bit_select_b};
    assign lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_b = {2'b00, lowRangeB_uid682_i_arrayidx17_i_i_add0_mult_x_im0_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_o <= 19'b0;
        end
        else if (SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_o <= $unsigned(lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_a) + $unsigned(lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_b);
        end
    end
    assign lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_q = lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_o[18:0];

    // redist7_lowRangeB_uid682_i_arrayidx17_i_i_add0_mult_x_im0_merged_bit_select_b_1_0(REG,1456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_lowRangeB_uid682_i_arrayidx17_i_i_add0_mult_x_im0_merged_bit_select_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist7_lowRangeB_uid682_i_arrayidx17_i_i_add0_mult_x_im0_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid682_i_arrayidx17_i_i_add0_mult_x_im0_merged_bit_select_b);
        end
    end

    // lev1_a0_uid685_i_arrayidx17_i_i_add0_mult_x_im0(BITJOIN,684)@3
    assign lev1_a0_uid685_i_arrayidx17_i_i_add0_mult_x_im0_q = {lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_q, redist7_lowRangeB_uid682_i_arrayidx17_i_i_add0_mult_x_im0_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid690_i_arrayidx17_i_i_add0_mult_x_im0(BITJOIN,689)@3
    assign sR_mergedSignalTM_uid690_i_arrayidx17_i_i_add0_mult_x_im0_q = {lev1_a0_uid685_i_arrayidx17_i_i_add0_mult_x_im0_q, sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx17_i_i_add0_mult_x_sums_join_1(BITJOIN,389)@3
    assign i_arrayidx17_i_i_add0_mult_x_sums_join_1_q = {i_arrayidx17_i_i_add0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid690_i_arrayidx17_i_i_add0_mult_x_im0_q};

    // i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0(ADD,393)@3
    assign i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx17_i_i_add0_mult_x_sums_join_1_q};
    assign i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx17_i_i_add0_mult_x_sums_join_4_q};
    assign i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0_q = i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0_o[78:0];

    // i_arrayidx17_i_i_add0_mult_extender_x(BITJOIN,43)@3
    assign i_arrayidx17_i_i_add0_mult_extender_x_q = {i_arrayidx17_i42_i_add0_mult_multconst_x_q, i_arrayidx17_i_i_add0_mult_x_sums_result_add_0_0_q[77:0]};

    // i_arrayidx17_i_i_add0_trunc_sel_x(BITSELECT,45)@3
    assign i_arrayidx17_i_i_add0_trunc_sel_x_b = i_arrayidx17_i_i_add0_mult_extender_x_q[63:0];

    // redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0(REG,1496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx17_i_i_add0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19(BITJOIN,1637)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_q = i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19(BITSELECT,1638)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_q[63:0]);

    // i_arrayidx17_i_i_add0_add_x(ADD,46)@4
    assign i_arrayidx17_i_i_add0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_b};
    assign i_arrayidx17_i_i_add0_add_x_b = {1'b0, redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx17_i_i_add0_add_x_o = $unsigned(i_arrayidx17_i_i_add0_add_x_a) + $unsigned(i_arrayidx17_i_i_add0_add_x_b);
    assign i_arrayidx17_i_i_add0_add_x_q = i_arrayidx17_i_i_add0_add_x_o[64:0];

    // i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x(BITSELECT,34)@4
    assign i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b = i_arrayidx17_i_i_add0_add_x_q[63:0];

    // redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0(REG,1498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx17_i_i_add0_dupName_0_add_x(ADD,38)@5
    assign i_arrayidx17_i_i_add0_dupName_0_add_x_a = {1'b0, redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx17_i_i_add0_dupName_0_add_x_b = {1'b0, i_arrayidx17_i42_i_add0_shift_join_x_q};
    assign i_arrayidx17_i_i_add0_dupName_0_add_x_o = $unsigned(i_arrayidx17_i_i_add0_dupName_0_add_x_a) + $unsigned(i_arrayidx17_i_i_add0_dupName_0_add_x_b);
    assign i_arrayidx17_i_i_add0_dupName_0_add_x_q = i_arrayidx17_i_i_add0_dupName_0_add_x_o[64:0];

    // i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x(BITSELECT,35)@5
    assign i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b = i_arrayidx17_i_i_add0_dupName_0_add_x_q[63:0];

    // SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0(STALLREG,2425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid <= 1'b0;
            SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid <= SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall & (SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid | SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_i_valid);

            if (SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_data0 <= i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_i_valid = SE_i_arrayidx17_i_i_add0_dupName_0_add_x_V0;
    // Stall signal propagation
    assign SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall = SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid | ~ (SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_V = SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid : SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_i_valid;

    assign SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_D0 = SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_r_data0 : i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b;

    // SE_i_arrayidx17_i_i_add0_dupName_0_add_x(STALLENABLE,1745)
    // Valid signal propagation
    assign SE_i_arrayidx17_i_i_add0_dupName_0_add_x_V0 = SE_i_arrayidx17_i_i_add0_dupName_0_add_x_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx17_i_i_add0_dupName_0_add_x_backStall = SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall | ~ (SE_i_arrayidx17_i_i_add0_dupName_0_add_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx17_i_i_add0_dupName_0_add_x_and0 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V4;
    assign SE_i_arrayidx17_i_i_add0_dupName_0_add_x_wireValid = SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_V0 & SE_i_arrayidx17_i_i_add0_dupName_0_add_x_and0;

    // SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0(STALLENABLE,2063)
    // Valid signal propagation
    assign SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_V0 = SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0 = SE_i_arrayidx17_i_i_add0_dupName_0_add_x_backStall & SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0 = SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_V0;
    // Backward Stall generation
    assign SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 & SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0(STALLENABLE,2061)
    // Valid signal propagation
    assign SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_V0 = SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_backStall & SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_v_s_0 = SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_backEN & SE_lev1_a0sumAHighB_uid684_i_arrayidx17_i_i_add0_mult_x_im0_V0;
    // Backward Stall generation
    assign SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_R_v_0 & SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19(STALLENABLE,1844)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_backStall = SE_redist37_i_arrayidx17_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_and0 = i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_wireValid = SE_redist35_i_arrayidx17_i_i_add0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_and0;

    // i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19(BLACKBOX,158)@3
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@4
    // out out_stall_out@20000000
    // out out_valid_out@4
    add_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_0 thei_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_20_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_20(STALLENABLE,2138)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_20_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_20_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_20_backStall = i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46828_add19_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_20_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_20_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_20_reg_valid_out;

    // bubble_out_add_B5_merge_reg_aunroll_x_20_reg(STALLFIFO,2403)
    assign bubble_out_add_B5_merge_reg_aunroll_x_20_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V22;
    assign bubble_out_add_B5_merge_reg_aunroll_x_20_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_20_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_20_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_20_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_20_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_20_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_20_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_20_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_20_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_20_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_20_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_20_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_20_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_20_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_20_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_18(STALLENABLE,2134)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_18_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_18_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_18_backStall = i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_18_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_18_reg_valid_out;

    // bubble_out_add_B5_merge_reg_aunroll_x_18_reg(STALLFIFO,2402)
    assign bubble_out_add_B5_merge_reg_aunroll_x_18_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V21;
    assign bubble_out_add_B5_merge_reg_aunroll_x_18_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_18_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_18_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_18_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_18_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_18_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_18_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_18_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_18_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_18_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_18_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_18_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_18_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_18_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_18_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_17(STALLENABLE,2132)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_17_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_17_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_17_backStall = i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_17_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_17_reg_valid_out;

    // bubble_out_add_B5_merge_reg_aunroll_x_17_reg(STALLFIFO,2401)
    assign bubble_out_add_B5_merge_reg_aunroll_x_17_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V20;
    assign bubble_out_add_B5_merge_reg_aunroll_x_17_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_17_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_17_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_17_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_17_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_17_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_17_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_17_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_17_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_17_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_17_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_17_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_17_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_17_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_17_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_add_B5_merge_reg_aunroll_x_11_reg(STALLFIFO,2400)
    assign bubble_out_add_B5_merge_reg_aunroll_x_11_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V19;
    assign bubble_out_add_B5_merge_reg_aunroll_x_11_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_11_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_11_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_11_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_11_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_11_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_11_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_11_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_11_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_11_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(107),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_11_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_11_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_11_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_11_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_11_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_add_B5_merge_reg_aunroll_x_10_reg(STALLFIFO,2399)
    assign bubble_out_add_B5_merge_reg_aunroll_x_10_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V18;
    assign bubble_out_add_B5_merge_reg_aunroll_x_10_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_10_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_10_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_10_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_10_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_10_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_10_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_10_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_10_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_10_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(107),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_10_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_10_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_10_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_10_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_10_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8(STALLENABLE,1832)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_V0 = SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_backStall = SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_wireValid = i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_out_valid_out;

    // SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0(STALLENABLE,1955)
    // Valid signal propagation
    assign SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_V0 = SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_s_tv_0 = SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_backStall & SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backEN = ~ (SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_v_s_0 = SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_V0;
    // Backward Stall generation
    assign SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backStall = ~ (SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backEN == 1'b0)
            begin
                SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_R_v_0 <= SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_R_v_0 & SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_R_v_0 <= SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_v_s_0;
            end

        end
    end

    // lowRangeB_uid632_i_arrayidx17_i42_i_add0_mult_x_im9_merged_bit_select(BITSELECT,1395)@2
    assign lowRangeB_uid632_i_arrayidx17_i42_i_add0_mult_x_im9_merged_bit_select_b = i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_e[0:0];
    assign lowRangeB_uid632_i_arrayidx17_i42_i_add0_mult_x_im9_merged_bit_select_c = i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_e[9:1];

    // bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8(BITJOIN,1619)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_q = i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_out_dest_data_out_24_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8(BITSELECT,1620)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_q[63:0]);

    // i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select(BITSELECT,1383)@2
    assign i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_b[17:0];
    assign i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_b[35:18];
    assign i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_d = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_b[53:36];
    assign i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_e = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_b[63:54];

    // lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9(ADD,633)@2 + 1
    assign lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_a = {1'b0, i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_e};
    assign lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_b = {2'b00, lowRangeB_uid632_i_arrayidx17_i42_i_add0_mult_x_im9_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_o <= 11'b0;
        end
        else if (SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_o <= $unsigned(lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_a) + $unsigned(lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_b);
        end
    end
    assign lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_q = lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_o[10:0];

    // redist0_lowRangeB_uid632_i_arrayidx17_i42_i_add0_mult_x_im9_merged_bit_select_b_1_0(REG,1449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_lowRangeB_uid632_i_arrayidx17_i42_i_add0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist0_lowRangeB_uid632_i_arrayidx17_i42_i_add0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid632_i_arrayidx17_i42_i_add0_mult_x_im9_merged_bit_select_b);
        end
    end

    // lev1_a0_uid635_i_arrayidx17_i42_i_add0_mult_x_im9(BITJOIN,634)@3
    assign lev1_a0_uid635_i_arrayidx17_i42_i_add0_mult_x_im9_q = {lev1_a0sumAHighB_uid634_i_arrayidx17_i42_i_add0_mult_x_im9_q, redist0_lowRangeB_uid632_i_arrayidx17_i42_i_add0_mult_x_im9_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid640_i_arrayidx17_i42_i_add0_mult_x_im9(BITJOIN,639)@3
    assign sR_mergedSignalTM_uid640_i_arrayidx17_i42_i_add0_mult_x_im9_q = {lev1_a0_uid635_i_arrayidx17_i42_i_add0_mult_x_im9_q, sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx17_i42_i_add0_mult_x_sums_align_3(BITSHIFT,373)@3
    assign i_arrayidx17_i42_i_add0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid640_i_arrayidx17_i42_i_add0_mult_x_im9_q, 4'b0000 };
    assign i_arrayidx17_i42_i_add0_mult_x_sums_align_3_q = i_arrayidx17_i42_i_add0_mult_x_sums_align_3_qint[27:0];

    // lowRangeB_uid508_i_arrayidx17_i42_i_add0_mult_x_im3_merged_bit_select(BITSELECT,1393)@2
    assign lowRangeB_uid508_i_arrayidx17_i42_i_add0_mult_x_im3_merged_bit_select_b = i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_c[0:0];
    assign lowRangeB_uid508_i_arrayidx17_i42_i_add0_mult_x_im3_merged_bit_select_c = i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_c[17:1];

    // lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3(ADD,509)@2 + 1
    assign lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_a = {1'b0, i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_c};
    assign lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_b = {2'b00, lowRangeB_uid508_i_arrayidx17_i42_i_add0_mult_x_im3_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_o <= 19'b0;
        end
        else if (SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_o <= $unsigned(lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_a) + $unsigned(lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_b);
        end
    end
    assign lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_q = lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_o[18:0];

    // redist2_lowRangeB_uid508_i_arrayidx17_i42_i_add0_mult_x_im3_merged_bit_select_b_1_0(REG,1451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_lowRangeB_uid508_i_arrayidx17_i42_i_add0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist2_lowRangeB_uid508_i_arrayidx17_i42_i_add0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid508_i_arrayidx17_i42_i_add0_mult_x_im3_merged_bit_select_b);
        end
    end

    // lev1_a0_uid511_i_arrayidx17_i42_i_add0_mult_x_im3(BITJOIN,510)@3
    assign lev1_a0_uid511_i_arrayidx17_i42_i_add0_mult_x_im3_q = {lev1_a0sumAHighB_uid510_i_arrayidx17_i42_i_add0_mult_x_im3_q, redist2_lowRangeB_uid508_i_arrayidx17_i42_i_add0_mult_x_im3_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid516_i_arrayidx17_i42_i_add0_mult_x_im3(BITJOIN,515)@3
    assign sR_mergedSignalTM_uid516_i_arrayidx17_i42_i_add0_mult_x_im3_q = {lev1_a0_uid511_i_arrayidx17_i42_i_add0_mult_x_im3_q, sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx17_i42_i_add0_mult_x_sums_align_2(BITSHIFT,372)@3
    assign i_arrayidx17_i42_i_add0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid516_i_arrayidx17_i42_i_add0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx17_i42_i_add0_mult_x_sums_align_2_q = i_arrayidx17_i42_i_add0_mult_x_sums_align_2_qint[49:0];

    // i_arrayidx17_i42_i_add0_mult_x_sums_join_4(BITJOIN,374)@3
    assign i_arrayidx17_i42_i_add0_mult_x_sums_join_4_q = {i_arrayidx17_i42_i_add0_mult_x_sums_align_3_q, i_arrayidx17_i42_i_add0_mult_x_sums_align_2_q};

    // lowRangeB_uid570_i_arrayidx17_i42_i_add0_mult_x_im6_merged_bit_select(BITSELECT,1394)@2
    assign lowRangeB_uid570_i_arrayidx17_i42_i_add0_mult_x_im6_merged_bit_select_b = i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_d[0:0];
    assign lowRangeB_uid570_i_arrayidx17_i42_i_add0_mult_x_im6_merged_bit_select_c = i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_d[17:1];

    // lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6(ADD,571)@2 + 1
    assign lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_a = {1'b0, i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_d};
    assign lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_b = {2'b00, lowRangeB_uid570_i_arrayidx17_i42_i_add0_mult_x_im6_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_o <= 19'b0;
        end
        else if (SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_o <= $unsigned(lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_a) + $unsigned(lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_b);
        end
    end
    assign lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_q = lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_o[18:0];

    // redist1_lowRangeB_uid570_i_arrayidx17_i42_i_add0_mult_x_im6_merged_bit_select_b_1_0(REG,1450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_lowRangeB_uid570_i_arrayidx17_i42_i_add0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist1_lowRangeB_uid570_i_arrayidx17_i42_i_add0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid570_i_arrayidx17_i42_i_add0_mult_x_im6_merged_bit_select_b);
        end
    end

    // lev1_a0_uid573_i_arrayidx17_i42_i_add0_mult_x_im6(BITJOIN,572)@3
    assign lev1_a0_uid573_i_arrayidx17_i42_i_add0_mult_x_im6_q = {lev1_a0sumAHighB_uid572_i_arrayidx17_i42_i_add0_mult_x_im6_q, redist1_lowRangeB_uid570_i_arrayidx17_i42_i_add0_mult_x_im6_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid578_i_arrayidx17_i42_i_add0_mult_x_im6(BITJOIN,577)@3
    assign sR_mergedSignalTM_uid578_i_arrayidx17_i42_i_add0_mult_x_im6_q = {lev1_a0_uid573_i_arrayidx17_i42_i_add0_mult_x_im6_q, sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx17_i42_i_add0_mult_x_sums_align_0(BITSHIFT,370)@3
    assign i_arrayidx17_i42_i_add0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid578_i_arrayidx17_i42_i_add0_mult_x_im6_q, 4'b0000 };
    assign i_arrayidx17_i42_i_add0_mult_x_sums_align_0_q = i_arrayidx17_i42_i_add0_mult_x_sums_align_0_qint[35:0];

    // lowRangeB_uid446_i_arrayidx17_i42_i_add0_mult_x_im0_merged_bit_select(BITSELECT,1392)@2
    assign lowRangeB_uid446_i_arrayidx17_i42_i_add0_mult_x_im0_merged_bit_select_b = i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_b[0:0];
    assign lowRangeB_uid446_i_arrayidx17_i42_i_add0_mult_x_im0_merged_bit_select_c = i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_b[17:1];

    // lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0(ADD,447)@2 + 1
    assign lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_a = {1'b0, i_arrayidx17_i42_i_add0_mult_x_bs1_merged_bit_select_b};
    assign lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_b = {2'b00, lowRangeB_uid446_i_arrayidx17_i42_i_add0_mult_x_im0_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_o <= 19'b0;
        end
        else if (SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_o <= $unsigned(lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_a) + $unsigned(lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_b);
        end
    end
    assign lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_q = lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_o[18:0];

    // redist3_lowRangeB_uid446_i_arrayidx17_i42_i_add0_mult_x_im0_merged_bit_select_b_1_0(REG,1452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_lowRangeB_uid446_i_arrayidx17_i42_i_add0_mult_x_im0_merged_bit_select_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist3_lowRangeB_uid446_i_arrayidx17_i42_i_add0_mult_x_im0_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid446_i_arrayidx17_i42_i_add0_mult_x_im0_merged_bit_select_b);
        end
    end

    // lev1_a0_uid449_i_arrayidx17_i42_i_add0_mult_x_im0(BITJOIN,448)@3
    assign lev1_a0_uid449_i_arrayidx17_i42_i_add0_mult_x_im0_q = {lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_q, redist3_lowRangeB_uid446_i_arrayidx17_i42_i_add0_mult_x_im0_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid454_i_arrayidx17_i42_i_add0_mult_x_im0(BITJOIN,453)@3
    assign sR_mergedSignalTM_uid454_i_arrayidx17_i42_i_add0_mult_x_im0_q = {lev1_a0_uid449_i_arrayidx17_i42_i_add0_mult_x_im0_q, sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx17_i42_i_add0_mult_x_sums_join_1(BITJOIN,371)@3
    assign i_arrayidx17_i42_i_add0_mult_x_sums_join_1_q = {i_arrayidx17_i42_i_add0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid454_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0(ADD,375)@3
    assign i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx17_i42_i_add0_mult_x_sums_join_1_q};
    assign i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx17_i42_i_add0_mult_x_sums_join_4_q};
    assign i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0_q = i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0_o[78:0];

    // i_arrayidx17_i42_i_add0_mult_extender_x(BITJOIN,23)@3
    assign i_arrayidx17_i42_i_add0_mult_extender_x_q = {i_arrayidx17_i42_i_add0_mult_multconst_x_q, i_arrayidx17_i42_i_add0_mult_x_sums_result_add_0_0_q[77:0]};

    // i_arrayidx17_i42_i_add0_trunc_sel_x(BITSELECT,25)@3
    assign i_arrayidx17_i42_i_add0_trunc_sel_x_b = i_arrayidx17_i42_i_add0_mult_extender_x_q[63:0];

    // redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0(REG,1502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx17_i42_i_add0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7(BITJOIN,1631)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_q = i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7(BITSELECT,1632)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_q[63:0]);

    // i_arrayidx17_i42_i_add0_add_x(ADD,26)@4
    assign i_arrayidx17_i42_i_add0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_b};
    assign i_arrayidx17_i42_i_add0_add_x_b = {1'b0, redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx17_i42_i_add0_add_x_o = $unsigned(i_arrayidx17_i42_i_add0_add_x_a) + $unsigned(i_arrayidx17_i42_i_add0_add_x_b);
    assign i_arrayidx17_i42_i_add0_add_x_q = i_arrayidx17_i42_i_add0_add_x_o[64:0];

    // i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x(BITSELECT,14)@4
    assign i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b = i_arrayidx17_i42_i_add0_add_x_q[63:0];

    // redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0(REG,1504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx17_i42_i_add0_dupName_0_add_x(ADD,18)@5
    assign i_arrayidx17_i42_i_add0_dupName_0_add_x_a = {1'b0, redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx17_i42_i_add0_dupName_0_add_x_b = {1'b0, i_arrayidx17_i42_i_add0_shift_join_x_q};
    assign i_arrayidx17_i42_i_add0_dupName_0_add_x_o = $unsigned(i_arrayidx17_i42_i_add0_dupName_0_add_x_a) + $unsigned(i_arrayidx17_i42_i_add0_dupName_0_add_x_b);
    assign i_arrayidx17_i42_i_add0_dupName_0_add_x_q = i_arrayidx17_i42_i_add0_dupName_0_add_x_o[64:0];

    // i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x(BITSELECT,15)@5
    assign i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b = i_arrayidx17_i42_i_add0_dupName_0_add_x_q[63:0];

    // SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0(STALLREG,2429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid <= 1'b0;
            SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid <= SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall & (SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid | SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_i_valid);

            if (SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_data0 <= i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_i_valid = SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_V0;
    // Stall signal propagation
    assign SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall = SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid | ~ (SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_V = SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid : SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_i_valid;

    assign SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_D0 = SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_r_data0 : i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b;

    // SE_i_arrayidx17_i42_i_add0_dupName_0_add_x(STALLENABLE,1735)
    // Valid signal propagation
    assign SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_V0 = SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_backStall = SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall | ~ (SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_and0 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V3;
    assign SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_wireValid = SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_V0 & SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_and0;

    // SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0(STALLENABLE,2069)
    // Valid signal propagation
    assign SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_V0 = SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0 = SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_backStall & SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0 = SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_V0;
    // Backward Stall generation
    assign SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 & SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0(STALLENABLE,2067)
    // Valid signal propagation
    assign SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_V0 = SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_backStall & SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_v_s_0 = SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_backEN & SE_lev1_a0sumAHighB_uid448_i_arrayidx17_i42_i_add0_mult_x_im0_V0;
    // Backward Stall generation
    assign SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_R_v_0 & SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7(STALLENABLE,1840)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_backStall = SE_redist41_i_arrayidx17_i42_i_add0_dupName_0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_and0 = i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_wireValid = SE_redist39_i_arrayidx17_i42_i_add0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_and0;

    // i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7(BLACKBOX,156)@3
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@4
    // out out_stall_out@20000000
    // out out_valid_out@4
    add_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_0 thei_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_8_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_8(STALLENABLE,2114)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_8_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_8_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_8_backStall = i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46622_add7_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_8_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_8_reg_valid_out;

    // bubble_out_add_B5_merge_reg_aunroll_x_8_reg(STALLFIFO,2398)
    assign bubble_out_add_B5_merge_reg_aunroll_x_8_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V17;
    assign bubble_out_add_B5_merge_reg_aunroll_x_8_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_8_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_8_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_8_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_8_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_8_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_8_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_6(STALLENABLE,2110)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_6_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_6_backStall = i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_6_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_6_reg_valid_out;

    // bubble_out_add_B5_merge_reg_aunroll_x_6_reg(STALLFIFO,2397)
    assign bubble_out_add_B5_merge_reg_aunroll_x_6_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V16;
    assign bubble_out_add_B5_merge_reg_aunroll_x_6_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_6_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_6_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_6_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_6_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_6_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_6_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_add_B5_merge_reg_aunroll_x_5(STALLENABLE,2108)
    // Valid signal propagation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_5_V0 = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_5_backStall = i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_out_stall_out | ~ (SE_out_bubble_out_add_B5_merge_reg_aunroll_x_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_add_B5_merge_reg_aunroll_x_5_wireValid = bubble_out_add_B5_merge_reg_aunroll_x_5_reg_valid_out;

    // bubble_out_add_B5_merge_reg_aunroll_x_5_reg(STALLFIFO,2396)
    assign bubble_out_add_B5_merge_reg_aunroll_x_5_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V15;
    assign bubble_out_add_B5_merge_reg_aunroll_x_5_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_5_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_5_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_5_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_5_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_5_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_5_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_add_B5_merge_reg_aunroll_x_4_reg(STALLFIFO,2395)
    assign bubble_out_add_B5_merge_reg_aunroll_x_4_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V14;
    assign bubble_out_add_B5_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_add_B5_merge_reg_aunroll_x_2_reg(STALLFIFO,2394)
    assign bubble_out_add_B5_merge_reg_aunroll_x_2_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V13;
    assign bubble_out_add_B5_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_add_B5_merge_reg_aunroll_x_1_reg(STALLFIFO,2393)
    assign bubble_out_add_B5_merge_reg_aunroll_x_1_reg_valid_in = SE_out_add_B5_merge_reg_aunroll_x_V12;
    assign bubble_out_add_B5_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_add_B5_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_add_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_add_B5_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_add_B5_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_add_B5_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_add_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_add_B5_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_add_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_add_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_add_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_add_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8(BLACKBOX,152)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_24_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_0 thei_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V11),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_out_dest_data_out_24_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20(BLACKBOX,150)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_24_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_0 thei_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V10),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_out_dest_data_out_24_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_lm74368_add12(BLACKBOX,147)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_17_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i32_lm74368_0 thei_llvm_fpga_ffwd_dest_i32_lm74368_add12 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V9),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i32_lm74368_add12_out_dest_data_out_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_lm74368_add12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_lm74368_add12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_lm72266_add14(BLACKBOX,146)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_16_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i32_lm72266_0 thei_llvm_fpga_ffwd_dest_i32_lm72266_add14 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V8),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_i32_lm72266_add14_out_dest_data_out_16_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_lm72266_add14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_lm72266_add14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22(BLACKBOX,142)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_23_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i1_unnamed_41_add0 thei_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V7),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_dest_data_out_23_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2(BLACKBOX,140)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_0 thei_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V6),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2(STALLENABLE,2042)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_V0 = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_s_tv_0 = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_backStall & SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_backEN = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_v_s_0 = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_backEN & SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_backStall = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_R_v_0 & SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1(STALLENABLE,2041)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_V0 = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_s_tv_0 = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_backStall & SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_backEN = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_v_s_0 = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_backEN & SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_backStall = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_R_v_0 & SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0(STALLENABLE,2040)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_V0 = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_s_tv_0 = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_backStall & SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_backEN = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_v_s_0 = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_backStall = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_R_v_0 & SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6(STALLENABLE,1806)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_backStall = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_wireValid = i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6(BLACKBOX,139)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_0 thei_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V5),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11(BLACKBOX,137)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_0 thei_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V4),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21(BLACKBOX,134)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_15_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_0 thei_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V3),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_out_dest_data_out_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18(BLACKBOX,133)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_15_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_0 thei_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V2),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_out_dest_data_out_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13(BLACKBOX,132)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_25_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_0 thei_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13 (
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V1),
        .out_dest_data_out_25_0(i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_out_dest_data_out_25_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15(BLACKBOX,131)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_25_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_0 thei_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15 (
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V0),
        .out_dest_data_out_25_0(i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_out_dest_data_out_25_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,1922)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = add_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,1693)
    assign bubble_join_stall_entry_q = {in_inc7_i147, in_forked73};

    // bubble_select_stall_entry(BITSELECT,1694)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);

    // add_B5_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_B5_merge_reg theadd_B5_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_stall_in(SE_out_add_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(add_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(add_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_stall_out(add_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(add_B5_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_add_B5_merge_reg_aunroll_x(STALLENABLE,1730)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_add_B5_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg9 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg10 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg11 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg12 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg13 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg14 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg15 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg16 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg17 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg18 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg19 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg20 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg21 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg22 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg23 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg24 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg25 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg26 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg27 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg28 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg29 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg30 <= '0;
            SE_out_add_B5_merge_reg_aunroll_x_fromReg31 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_add_B5_merge_reg_aunroll_x_fromReg0 <= SE_out_add_B5_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_add_B5_merge_reg_aunroll_x_fromReg1 <= SE_out_add_B5_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_add_B5_merge_reg_aunroll_x_fromReg2 <= SE_out_add_B5_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_add_B5_merge_reg_aunroll_x_fromReg3 <= SE_out_add_B5_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_add_B5_merge_reg_aunroll_x_fromReg4 <= SE_out_add_B5_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_add_B5_merge_reg_aunroll_x_fromReg5 <= SE_out_add_B5_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_add_B5_merge_reg_aunroll_x_fromReg6 <= SE_out_add_B5_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_add_B5_merge_reg_aunroll_x_fromReg7 <= SE_out_add_B5_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_add_B5_merge_reg_aunroll_x_fromReg8 <= SE_out_add_B5_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_add_B5_merge_reg_aunroll_x_fromReg9 <= SE_out_add_B5_merge_reg_aunroll_x_toReg9;
            // Successor 10
            SE_out_add_B5_merge_reg_aunroll_x_fromReg10 <= SE_out_add_B5_merge_reg_aunroll_x_toReg10;
            // Successor 11
            SE_out_add_B5_merge_reg_aunroll_x_fromReg11 <= SE_out_add_B5_merge_reg_aunroll_x_toReg11;
            // Successor 12
            SE_out_add_B5_merge_reg_aunroll_x_fromReg12 <= SE_out_add_B5_merge_reg_aunroll_x_toReg12;
            // Successor 13
            SE_out_add_B5_merge_reg_aunroll_x_fromReg13 <= SE_out_add_B5_merge_reg_aunroll_x_toReg13;
            // Successor 14
            SE_out_add_B5_merge_reg_aunroll_x_fromReg14 <= SE_out_add_B5_merge_reg_aunroll_x_toReg14;
            // Successor 15
            SE_out_add_B5_merge_reg_aunroll_x_fromReg15 <= SE_out_add_B5_merge_reg_aunroll_x_toReg15;
            // Successor 16
            SE_out_add_B5_merge_reg_aunroll_x_fromReg16 <= SE_out_add_B5_merge_reg_aunroll_x_toReg16;
            // Successor 17
            SE_out_add_B5_merge_reg_aunroll_x_fromReg17 <= SE_out_add_B5_merge_reg_aunroll_x_toReg17;
            // Successor 18
            SE_out_add_B5_merge_reg_aunroll_x_fromReg18 <= SE_out_add_B5_merge_reg_aunroll_x_toReg18;
            // Successor 19
            SE_out_add_B5_merge_reg_aunroll_x_fromReg19 <= SE_out_add_B5_merge_reg_aunroll_x_toReg19;
            // Successor 20
            SE_out_add_B5_merge_reg_aunroll_x_fromReg20 <= SE_out_add_B5_merge_reg_aunroll_x_toReg20;
            // Successor 21
            SE_out_add_B5_merge_reg_aunroll_x_fromReg21 <= SE_out_add_B5_merge_reg_aunroll_x_toReg21;
            // Successor 22
            SE_out_add_B5_merge_reg_aunroll_x_fromReg22 <= SE_out_add_B5_merge_reg_aunroll_x_toReg22;
            // Successor 23
            SE_out_add_B5_merge_reg_aunroll_x_fromReg23 <= SE_out_add_B5_merge_reg_aunroll_x_toReg23;
            // Successor 24
            SE_out_add_B5_merge_reg_aunroll_x_fromReg24 <= SE_out_add_B5_merge_reg_aunroll_x_toReg24;
            // Successor 25
            SE_out_add_B5_merge_reg_aunroll_x_fromReg25 <= SE_out_add_B5_merge_reg_aunroll_x_toReg25;
            // Successor 26
            SE_out_add_B5_merge_reg_aunroll_x_fromReg26 <= SE_out_add_B5_merge_reg_aunroll_x_toReg26;
            // Successor 27
            SE_out_add_B5_merge_reg_aunroll_x_fromReg27 <= SE_out_add_B5_merge_reg_aunroll_x_toReg27;
            // Successor 28
            SE_out_add_B5_merge_reg_aunroll_x_fromReg28 <= SE_out_add_B5_merge_reg_aunroll_x_toReg28;
            // Successor 29
            SE_out_add_B5_merge_reg_aunroll_x_fromReg29 <= SE_out_add_B5_merge_reg_aunroll_x_toReg29;
            // Successor 30
            SE_out_add_B5_merge_reg_aunroll_x_fromReg30 <= SE_out_add_B5_merge_reg_aunroll_x_toReg30;
            // Successor 31
            SE_out_add_B5_merge_reg_aunroll_x_fromReg31 <= SE_out_add_B5_merge_reg_aunroll_x_toReg31;
        end
    end
    // Input Stall processing
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp_i_i83_add15_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg0;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp_i_i84_add13_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg1;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i062_add18_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg2;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i1_lm_i0_cast_i063_add21_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg3;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i1_tobool_i_i39_add11_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg4;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg5;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed6 = (~ (i_llvm_fpga_ffwd_dest_i1_tobool_i_i42_add2_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg6;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed7 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_add41_add22_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg7;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed8 = (~ (i_llvm_fpga_ffwd_dest_i32_lm72266_add14_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg8;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed9 = (~ (i_llvm_fpga_ffwd_dest_i32_lm74368_add12_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg9;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed10 = (~ (i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i79_add20_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg10;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed11 = (~ (i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i81_add8_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg11;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed12 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg12;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed13 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg13;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed14 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg14;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed15 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_5_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg15;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed16 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_6_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg16;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed17 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_8_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg17;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed18 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_10_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg18;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed19 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_11_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg19;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed20 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_17_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg20;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed21 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_18_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg21;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed22 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_20_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg22;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed23 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_24_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg23;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed24 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_25_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg24;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed25 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_26_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg25;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed26 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_27_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg26;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed27 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_28_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg27;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed28 = (~ (bubble_out_add_B5_merge_reg_aunroll_x_29_reg_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg28;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed29 = (~ (SE_redist43_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backStall) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg29;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed30 = (~ (i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg30;
    assign SE_out_add_B5_merge_reg_aunroll_x_consumed31 = (~ (redist49_add_B5_merge_reg_aunroll_x_out_data_out_1_tpl_106_fifo_stall_out) & SE_out_add_B5_merge_reg_aunroll_x_wireValid) | SE_out_add_B5_merge_reg_aunroll_x_fromReg31;
    // Consuming
    assign SE_out_add_B5_merge_reg_aunroll_x_StallValid = SE_out_add_B5_merge_reg_aunroll_x_backStall & SE_out_add_B5_merge_reg_aunroll_x_wireValid;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg0 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg1 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed1;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg2 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed2;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg3 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed3;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg4 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed4;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg5 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed5;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg6 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed6;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg7 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed7;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg8 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed8;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg9 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed9;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg10 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed10;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg11 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed11;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg12 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed12;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg13 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed13;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg14 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed14;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg15 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed15;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg16 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed16;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg17 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed17;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg18 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed18;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg19 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed19;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg20 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed20;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg21 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed21;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg22 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed22;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg23 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed23;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg24 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed24;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg25 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed25;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg26 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed26;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg27 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed27;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg28 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed28;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg29 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed29;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg30 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed30;
    assign SE_out_add_B5_merge_reg_aunroll_x_toReg31 = SE_out_add_B5_merge_reg_aunroll_x_StallValid & SE_out_add_B5_merge_reg_aunroll_x_consumed31;
    // Backward Stall generation
    assign SE_out_add_B5_merge_reg_aunroll_x_or0 = SE_out_add_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_add_B5_merge_reg_aunroll_x_or1 = SE_out_add_B5_merge_reg_aunroll_x_consumed1 & SE_out_add_B5_merge_reg_aunroll_x_or0;
    assign SE_out_add_B5_merge_reg_aunroll_x_or2 = SE_out_add_B5_merge_reg_aunroll_x_consumed2 & SE_out_add_B5_merge_reg_aunroll_x_or1;
    assign SE_out_add_B5_merge_reg_aunroll_x_or3 = SE_out_add_B5_merge_reg_aunroll_x_consumed3 & SE_out_add_B5_merge_reg_aunroll_x_or2;
    assign SE_out_add_B5_merge_reg_aunroll_x_or4 = SE_out_add_B5_merge_reg_aunroll_x_consumed4 & SE_out_add_B5_merge_reg_aunroll_x_or3;
    assign SE_out_add_B5_merge_reg_aunroll_x_or5 = SE_out_add_B5_merge_reg_aunroll_x_consumed5 & SE_out_add_B5_merge_reg_aunroll_x_or4;
    assign SE_out_add_B5_merge_reg_aunroll_x_or6 = SE_out_add_B5_merge_reg_aunroll_x_consumed6 & SE_out_add_B5_merge_reg_aunroll_x_or5;
    assign SE_out_add_B5_merge_reg_aunroll_x_or7 = SE_out_add_B5_merge_reg_aunroll_x_consumed7 & SE_out_add_B5_merge_reg_aunroll_x_or6;
    assign SE_out_add_B5_merge_reg_aunroll_x_or8 = SE_out_add_B5_merge_reg_aunroll_x_consumed8 & SE_out_add_B5_merge_reg_aunroll_x_or7;
    assign SE_out_add_B5_merge_reg_aunroll_x_or9 = SE_out_add_B5_merge_reg_aunroll_x_consumed9 & SE_out_add_B5_merge_reg_aunroll_x_or8;
    assign SE_out_add_B5_merge_reg_aunroll_x_or10 = SE_out_add_B5_merge_reg_aunroll_x_consumed10 & SE_out_add_B5_merge_reg_aunroll_x_or9;
    assign SE_out_add_B5_merge_reg_aunroll_x_or11 = SE_out_add_B5_merge_reg_aunroll_x_consumed11 & SE_out_add_B5_merge_reg_aunroll_x_or10;
    assign SE_out_add_B5_merge_reg_aunroll_x_or12 = SE_out_add_B5_merge_reg_aunroll_x_consumed12 & SE_out_add_B5_merge_reg_aunroll_x_or11;
    assign SE_out_add_B5_merge_reg_aunroll_x_or13 = SE_out_add_B5_merge_reg_aunroll_x_consumed13 & SE_out_add_B5_merge_reg_aunroll_x_or12;
    assign SE_out_add_B5_merge_reg_aunroll_x_or14 = SE_out_add_B5_merge_reg_aunroll_x_consumed14 & SE_out_add_B5_merge_reg_aunroll_x_or13;
    assign SE_out_add_B5_merge_reg_aunroll_x_or15 = SE_out_add_B5_merge_reg_aunroll_x_consumed15 & SE_out_add_B5_merge_reg_aunroll_x_or14;
    assign SE_out_add_B5_merge_reg_aunroll_x_or16 = SE_out_add_B5_merge_reg_aunroll_x_consumed16 & SE_out_add_B5_merge_reg_aunroll_x_or15;
    assign SE_out_add_B5_merge_reg_aunroll_x_or17 = SE_out_add_B5_merge_reg_aunroll_x_consumed17 & SE_out_add_B5_merge_reg_aunroll_x_or16;
    assign SE_out_add_B5_merge_reg_aunroll_x_or18 = SE_out_add_B5_merge_reg_aunroll_x_consumed18 & SE_out_add_B5_merge_reg_aunroll_x_or17;
    assign SE_out_add_B5_merge_reg_aunroll_x_or19 = SE_out_add_B5_merge_reg_aunroll_x_consumed19 & SE_out_add_B5_merge_reg_aunroll_x_or18;
    assign SE_out_add_B5_merge_reg_aunroll_x_or20 = SE_out_add_B5_merge_reg_aunroll_x_consumed20 & SE_out_add_B5_merge_reg_aunroll_x_or19;
    assign SE_out_add_B5_merge_reg_aunroll_x_or21 = SE_out_add_B5_merge_reg_aunroll_x_consumed21 & SE_out_add_B5_merge_reg_aunroll_x_or20;
    assign SE_out_add_B5_merge_reg_aunroll_x_or22 = SE_out_add_B5_merge_reg_aunroll_x_consumed22 & SE_out_add_B5_merge_reg_aunroll_x_or21;
    assign SE_out_add_B5_merge_reg_aunroll_x_or23 = SE_out_add_B5_merge_reg_aunroll_x_consumed23 & SE_out_add_B5_merge_reg_aunroll_x_or22;
    assign SE_out_add_B5_merge_reg_aunroll_x_or24 = SE_out_add_B5_merge_reg_aunroll_x_consumed24 & SE_out_add_B5_merge_reg_aunroll_x_or23;
    assign SE_out_add_B5_merge_reg_aunroll_x_or25 = SE_out_add_B5_merge_reg_aunroll_x_consumed25 & SE_out_add_B5_merge_reg_aunroll_x_or24;
    assign SE_out_add_B5_merge_reg_aunroll_x_or26 = SE_out_add_B5_merge_reg_aunroll_x_consumed26 & SE_out_add_B5_merge_reg_aunroll_x_or25;
    assign SE_out_add_B5_merge_reg_aunroll_x_or27 = SE_out_add_B5_merge_reg_aunroll_x_consumed27 & SE_out_add_B5_merge_reg_aunroll_x_or26;
    assign SE_out_add_B5_merge_reg_aunroll_x_or28 = SE_out_add_B5_merge_reg_aunroll_x_consumed28 & SE_out_add_B5_merge_reg_aunroll_x_or27;
    assign SE_out_add_B5_merge_reg_aunroll_x_or29 = SE_out_add_B5_merge_reg_aunroll_x_consumed29 & SE_out_add_B5_merge_reg_aunroll_x_or28;
    assign SE_out_add_B5_merge_reg_aunroll_x_or30 = SE_out_add_B5_merge_reg_aunroll_x_consumed30 & SE_out_add_B5_merge_reg_aunroll_x_or29;
    assign SE_out_add_B5_merge_reg_aunroll_x_wireStall = ~ (SE_out_add_B5_merge_reg_aunroll_x_consumed31 & SE_out_add_B5_merge_reg_aunroll_x_or30);
    assign SE_out_add_B5_merge_reg_aunroll_x_backStall = SE_out_add_B5_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_add_B5_merge_reg_aunroll_x_V0 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg0);
    assign SE_out_add_B5_merge_reg_aunroll_x_V1 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg1);
    assign SE_out_add_B5_merge_reg_aunroll_x_V2 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg2);
    assign SE_out_add_B5_merge_reg_aunroll_x_V3 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg3);
    assign SE_out_add_B5_merge_reg_aunroll_x_V4 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg4);
    assign SE_out_add_B5_merge_reg_aunroll_x_V5 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg5);
    assign SE_out_add_B5_merge_reg_aunroll_x_V6 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg6);
    assign SE_out_add_B5_merge_reg_aunroll_x_V7 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg7);
    assign SE_out_add_B5_merge_reg_aunroll_x_V8 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg8);
    assign SE_out_add_B5_merge_reg_aunroll_x_V9 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg9);
    assign SE_out_add_B5_merge_reg_aunroll_x_V10 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg10);
    assign SE_out_add_B5_merge_reg_aunroll_x_V11 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg11);
    assign SE_out_add_B5_merge_reg_aunroll_x_V12 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg12);
    assign SE_out_add_B5_merge_reg_aunroll_x_V13 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg13);
    assign SE_out_add_B5_merge_reg_aunroll_x_V14 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg14);
    assign SE_out_add_B5_merge_reg_aunroll_x_V15 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg15);
    assign SE_out_add_B5_merge_reg_aunroll_x_V16 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg16);
    assign SE_out_add_B5_merge_reg_aunroll_x_V17 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg17);
    assign SE_out_add_B5_merge_reg_aunroll_x_V18 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg18);
    assign SE_out_add_B5_merge_reg_aunroll_x_V19 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg19);
    assign SE_out_add_B5_merge_reg_aunroll_x_V20 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg20);
    assign SE_out_add_B5_merge_reg_aunroll_x_V21 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg21);
    assign SE_out_add_B5_merge_reg_aunroll_x_V22 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg22);
    assign SE_out_add_B5_merge_reg_aunroll_x_V23 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg23);
    assign SE_out_add_B5_merge_reg_aunroll_x_V24 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg24);
    assign SE_out_add_B5_merge_reg_aunroll_x_V25 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg25);
    assign SE_out_add_B5_merge_reg_aunroll_x_V26 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg26);
    assign SE_out_add_B5_merge_reg_aunroll_x_V27 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg27);
    assign SE_out_add_B5_merge_reg_aunroll_x_V28 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg28);
    assign SE_out_add_B5_merge_reg_aunroll_x_V29 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg29);
    assign SE_out_add_B5_merge_reg_aunroll_x_V30 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg30);
    assign SE_out_add_B5_merge_reg_aunroll_x_V31 = SE_out_add_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B5_merge_reg_aunroll_x_fromReg31);
    // Computing multiple Valid(s)
    assign SE_out_add_B5_merge_reg_aunroll_x_wireValid = add_B5_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34(STALLENABLE,1874)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_lm72266_add14_backStall) & SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_lm74368_add12_backStall) & SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_consumed2 = (~ (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backStall) & SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_StallValid = SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_backStall & SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_toReg0 = SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_StallValid & SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_toReg1 = SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_StallValid & SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_toReg2 = SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_StallValid & SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_or0 = SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_or1 = SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_consumed1 & SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_or0;
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_consumed2 & SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_or1);
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_backStall = SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_V0 = SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_V1 = SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_V2 = SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_wireValid = i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_j_i_0446_push17_add59(STALLENABLE,1896)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_i_0446_push17_add59_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_i_0446_push17_add59_wireValid = i_llvm_fpga_push_i32_j_i_0446_push17_add59_out_valid_out;

    // i_llvm_fpga_push_i32_j_i_0446_push17_add59(BLACKBOX,184)@105
    // in in_stall_in@20000000
    // out out_data_out@106
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@106
    add_i_llvm_fpga_push_i32_j_i_0446_push17_0 thei_llvm_fpga_push_i32_j_i_0446_push17_add59 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_D0),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_feedback_stall_out_17),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_i_0446_push17_add59_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_j_i_0446_push17_add59_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_j_i_0446_push17_add59_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_j_i_0446_push17_add59_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i32_j_i_0446_push17_add59_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_i_0446_push17_add59_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_add_B5_merge_reg_aunroll_x(BITJOIN,1527)
    assign bubble_join_add_B5_merge_reg_aunroll_x_q = {add_B5_merge_reg_aunroll_x_out_data_out_1_tpl, add_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_add_B5_merge_reg_aunroll_x(BITSELECT,1528)
    assign bubble_select_add_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_add_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_add_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_add_B5_merge_reg_aunroll_x_q[32:1]);

    // i_llvm_fpga_pop_i32_j_i_0446_pop17_add34(BLACKBOX,173)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_pop_i32_j_i_0446_pop17_0 thei_llvm_fpga_pop_i32_j_i_0446_pop17_add34 (
        .in_data_in(c_i32_0101_q),
        .in_dir(bubble_select_add_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_17(i_llvm_fpga_push_i32_j_i_0446_push17_add59_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_j_i_0446_push17_add59_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_backStall),
        .in_valid_in(SE_out_add_B5_merge_reg_aunroll_x_V30),
        .out_data_out(i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34(BITJOIN,1681)
    assign bubble_join_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_q = i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34(BITSELECT,1682)
    assign bubble_select_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_q[31:0]);

    // i_idxprom_i27_i_add42_sel_x(BITSELECT,94)@2
    assign i_idxprom_i27_i_add42_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_b[31:0]};

    // i_idxprom_i27_i_add42_vt_select_31(BITSELECT,128)@2
    assign i_idxprom_i27_i_add42_vt_select_31_b = i_idxprom_i27_i_add42_sel_x_b[31:0];

    // i_idxprom_i27_i_add42_vt_join(BITJOIN,127)@2
    assign i_idxprom_i27_i_add42_vt_join_q = {c_i32_0101_q, i_idxprom_i27_i_add42_vt_select_31_b};

    // i_arrayidx5_i30_i_add0_mult_x_bs10(BITSELECT,404)@2
    assign i_arrayidx5_i30_i_add0_mult_x_bs10_b = i_idxprom_i27_i_add42_vt_join_q[63:54];

    // lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9(ADD,1105)@2 + 1
    assign lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_a = {1'b0, i_arrayidx5_i30_i_add0_mult_x_bs10_b};
    assign lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_b = {2'b00, lowRangeB_uid1104_i_arrayidx5_i30_i_add0_mult_x_im9_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_o <= 11'b0;
        end
        else if (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_o <= $unsigned(lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_a) + $unsigned(lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_b);
        end
    end
    assign lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_q = lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_o[10:0];

    // redist8_lowRangeB_uid1104_i_arrayidx5_i30_i_add0_mult_x_im9_merged_bit_select_b_1_0(REG,1457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_lowRangeB_uid1104_i_arrayidx5_i30_i_add0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist8_lowRangeB_uid1104_i_arrayidx5_i30_i_add0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid1104_i_arrayidx5_i30_i_add0_mult_x_im9_merged_bit_select_b);
        end
    end

    // lev1_a0_uid1107_i_arrayidx5_i30_i_add0_mult_x_im9(BITJOIN,1106)@3
    assign lev1_a0_uid1107_i_arrayidx5_i30_i_add0_mult_x_im9_q = {lev1_a0sumAHighB_uid1106_i_arrayidx5_i30_i_add0_mult_x_im9_q, redist8_lowRangeB_uid1104_i_arrayidx5_i30_i_add0_mult_x_im9_merged_bit_select_b_1_0_q};

    // sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0(CONSTANT,451)
    assign sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q = $unsigned(12'b000000000000);

    // sR_mergedSignalTM_uid1112_i_arrayidx5_i30_i_add0_mult_x_im9(BITJOIN,1111)@3
    assign sR_mergedSignalTM_uid1112_i_arrayidx5_i30_i_add0_mult_x_im9_q = {lev1_a0_uid1107_i_arrayidx5_i30_i_add0_mult_x_im9_q, sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx5_i_i_add0_mult_x_sums_align_3(BITSHIFT,427)@3
    assign i_arrayidx5_i_i_add0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1112_i_arrayidx5_i30_i_add0_mult_x_im9_q, 4'b0000 };
    assign i_arrayidx5_i_i_add0_mult_x_sums_align_3_q = i_arrayidx5_i_i_add0_mult_x_sums_align_3_qint[27:0];

    // lowRangeB_uid980_i_arrayidx5_i30_i_add0_mult_x_im3_merged_bit_select(BITSELECT,1385)@2
    assign lowRangeB_uid980_i_arrayidx5_i30_i_add0_mult_x_im3_merged_bit_select_b = i_arrayidx5_i30_i_add0_mult_x_bs4_b[0:0];
    assign lowRangeB_uid980_i_arrayidx5_i30_i_add0_mult_x_im3_merged_bit_select_c = i_arrayidx5_i30_i_add0_mult_x_bs4_b[17:1];

    // i_arrayidx5_i30_i_add0_mult_x_bs4(BITSELECT,398)@2
    assign i_arrayidx5_i30_i_add0_mult_x_bs4_in = i_idxprom_i27_i_add42_vt_join_q[35:0];
    assign i_arrayidx5_i30_i_add0_mult_x_bs4_b = i_arrayidx5_i30_i_add0_mult_x_bs4_in[35:18];

    // lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3(ADD,981)@2 + 1
    assign lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_a = {1'b0, i_arrayidx5_i30_i_add0_mult_x_bs4_b};
    assign lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_b = {2'b00, lowRangeB_uid980_i_arrayidx5_i30_i_add0_mult_x_im3_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_o <= 19'b0;
        end
        else if (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_o <= $unsigned(lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_a) + $unsigned(lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_b);
        end
    end
    assign lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_q = lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_o[18:0];

    // redist10_lowRangeB_uid980_i_arrayidx5_i30_i_add0_mult_x_im3_merged_bit_select_b_1_0(REG,1459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_lowRangeB_uid980_i_arrayidx5_i30_i_add0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist10_lowRangeB_uid980_i_arrayidx5_i30_i_add0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid980_i_arrayidx5_i30_i_add0_mult_x_im3_merged_bit_select_b);
        end
    end

    // lev1_a0_uid983_i_arrayidx5_i30_i_add0_mult_x_im3(BITJOIN,982)@3
    assign lev1_a0_uid983_i_arrayidx5_i30_i_add0_mult_x_im3_q = {lev1_a0sumAHighB_uid982_i_arrayidx5_i30_i_add0_mult_x_im3_q, redist10_lowRangeB_uid980_i_arrayidx5_i30_i_add0_mult_x_im3_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid988_i_arrayidx5_i30_i_add0_mult_x_im3(BITJOIN,987)@3
    assign sR_mergedSignalTM_uid988_i_arrayidx5_i30_i_add0_mult_x_im3_q = {lev1_a0_uid983_i_arrayidx5_i30_i_add0_mult_x_im3_q, sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx5_i_i_add0_mult_x_sums_align_2(BITSHIFT,426)@3
    assign i_arrayidx5_i_i_add0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid988_i_arrayidx5_i30_i_add0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx5_i_i_add0_mult_x_sums_align_2_q = i_arrayidx5_i_i_add0_mult_x_sums_align_2_qint[49:0];

    // i_arrayidx5_i_i_add0_mult_x_sums_join_4(BITJOIN,428)@3
    assign i_arrayidx5_i_i_add0_mult_x_sums_join_4_q = {i_arrayidx5_i_i_add0_mult_x_sums_align_3_q, i_arrayidx5_i_i_add0_mult_x_sums_align_2_q};

    // lowRangeB_uid1042_i_arrayidx5_i30_i_add0_mult_x_im6_merged_bit_select(BITSELECT,1386)@2
    assign lowRangeB_uid1042_i_arrayidx5_i30_i_add0_mult_x_im6_merged_bit_select_b = i_arrayidx5_i30_i_add0_mult_x_bs7_b[0:0];
    assign lowRangeB_uid1042_i_arrayidx5_i30_i_add0_mult_x_im6_merged_bit_select_c = i_arrayidx5_i30_i_add0_mult_x_bs7_b[17:1];

    // i_arrayidx5_i30_i_add0_mult_x_bs7(BITSELECT,401)@2
    assign i_arrayidx5_i30_i_add0_mult_x_bs7_in = i_idxprom_i27_i_add42_vt_join_q[53:0];
    assign i_arrayidx5_i30_i_add0_mult_x_bs7_b = i_arrayidx5_i30_i_add0_mult_x_bs7_in[53:36];

    // lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6(ADD,1043)@2 + 1
    assign lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_a = {1'b0, i_arrayidx5_i30_i_add0_mult_x_bs7_b};
    assign lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_b = {2'b00, lowRangeB_uid1042_i_arrayidx5_i30_i_add0_mult_x_im6_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_o <= 19'b0;
        end
        else if (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_o <= $unsigned(lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_a) + $unsigned(lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_b);
        end
    end
    assign lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_q = lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_o[18:0];

    // redist9_lowRangeB_uid1042_i_arrayidx5_i30_i_add0_mult_x_im6_merged_bit_select_b_1_0(REG,1458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_lowRangeB_uid1042_i_arrayidx5_i30_i_add0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist9_lowRangeB_uid1042_i_arrayidx5_i30_i_add0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid1042_i_arrayidx5_i30_i_add0_mult_x_im6_merged_bit_select_b);
        end
    end

    // lev1_a0_uid1045_i_arrayidx5_i30_i_add0_mult_x_im6(BITJOIN,1044)@3
    assign lev1_a0_uid1045_i_arrayidx5_i30_i_add0_mult_x_im6_q = {lev1_a0sumAHighB_uid1044_i_arrayidx5_i30_i_add0_mult_x_im6_q, redist9_lowRangeB_uid1042_i_arrayidx5_i30_i_add0_mult_x_im6_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid1050_i_arrayidx5_i30_i_add0_mult_x_im6(BITJOIN,1049)@3
    assign sR_mergedSignalTM_uid1050_i_arrayidx5_i30_i_add0_mult_x_im6_q = {lev1_a0_uid1045_i_arrayidx5_i30_i_add0_mult_x_im6_q, sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx5_i_i_add0_mult_x_sums_align_0(BITSHIFT,424)@3
    assign i_arrayidx5_i_i_add0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid1050_i_arrayidx5_i30_i_add0_mult_x_im6_q, 4'b0000 };
    assign i_arrayidx5_i_i_add0_mult_x_sums_align_0_q = i_arrayidx5_i_i_add0_mult_x_sums_align_0_qint[35:0];

    // lowRangeB_uid918_i_arrayidx5_i30_i_add0_mult_x_im0_merged_bit_select(BITSELECT,1384)@2
    assign lowRangeB_uid918_i_arrayidx5_i30_i_add0_mult_x_im0_merged_bit_select_b = i_arrayidx5_i30_i_add0_mult_x_bs1_b[0:0];
    assign lowRangeB_uid918_i_arrayidx5_i30_i_add0_mult_x_im0_merged_bit_select_c = i_arrayidx5_i30_i_add0_mult_x_bs1_b[17:1];

    // i_arrayidx5_i30_i_add0_mult_x_bs1(BITSELECT,395)@2
    assign i_arrayidx5_i30_i_add0_mult_x_bs1_in = i_idxprom_i27_i_add42_vt_join_q[17:0];
    assign i_arrayidx5_i30_i_add0_mult_x_bs1_b = i_arrayidx5_i30_i_add0_mult_x_bs1_in[17:0];

    // lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0(ADD,919)@2 + 1
    assign lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_a = {1'b0, i_arrayidx5_i30_i_add0_mult_x_bs1_b};
    assign lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_b = {2'b00, lowRangeB_uid918_i_arrayidx5_i30_i_add0_mult_x_im0_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_o <= 19'b0;
        end
        else if (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_o <= $unsigned(lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_a) + $unsigned(lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_b);
        end
    end
    assign lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_q = lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_o[18:0];

    // redist11_lowRangeB_uid918_i_arrayidx5_i30_i_add0_mult_x_im0_merged_bit_select_b_1_0(REG,1460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_lowRangeB_uid918_i_arrayidx5_i30_i_add0_mult_x_im0_merged_bit_select_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN == 1'b1)
        begin
            redist11_lowRangeB_uid918_i_arrayidx5_i30_i_add0_mult_x_im0_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid918_i_arrayidx5_i30_i_add0_mult_x_im0_merged_bit_select_b);
        end
    end

    // lev1_a0_uid921_i_arrayidx5_i30_i_add0_mult_x_im0(BITJOIN,920)@3
    assign lev1_a0_uid921_i_arrayidx5_i30_i_add0_mult_x_im0_q = {lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_q, redist11_lowRangeB_uid918_i_arrayidx5_i30_i_add0_mult_x_im0_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid926_i_arrayidx5_i30_i_add0_mult_x_im0(BITJOIN,925)@3
    assign sR_mergedSignalTM_uid926_i_arrayidx5_i30_i_add0_mult_x_im0_q = {lev1_a0_uid921_i_arrayidx5_i30_i_add0_mult_x_im0_q, sR_bottomExtension_uid452_i_arrayidx17_i42_i_add0_mult_x_im0_q};

    // i_arrayidx5_i_i_add0_mult_x_sums_join_1(BITJOIN,425)@3
    assign i_arrayidx5_i_i_add0_mult_x_sums_join_1_q = {i_arrayidx5_i_i_add0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid926_i_arrayidx5_i30_i_add0_mult_x_im0_q};

    // i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0(ADD,429)@3
    assign i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx5_i_i_add0_mult_x_sums_join_1_q};
    assign i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx5_i_i_add0_mult_x_sums_join_4_q};
    assign i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0_q = i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0_o[78:0];

    // i_arrayidx5_i_i_add0_mult_extender_x(BITJOIN,83)@3
    assign i_arrayidx5_i_i_add0_mult_extender_x_q = {i_arrayidx17_i42_i_add0_mult_multconst_x_q, i_arrayidx5_i_i_add0_mult_x_sums_result_add_0_0_q[77:0]};

    // i_arrayidx5_i_i_add0_trunc_sel_x(BITSELECT,85)@3
    assign i_arrayidx5_i_i_add0_trunc_sel_x_b = i_arrayidx5_i_i_add0_mult_extender_x_q[63:0];

    // redist29_i_arrayidx5_i_i_add0_trunc_sel_x_b_1_0(REG,1490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_arrayidx5_i_i_add0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backEN == 1'b1)
        begin
            redist29_i_arrayidx5_i_i_add0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx5_i_i_add0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16(BITJOIN,1640)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_q = i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16(BITSELECT,1641)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_q[63:0]);

    // i_arrayidx5_i_i_add0_add_x(ADD,86)@4
    assign i_arrayidx5_i_i_add0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_b};
    assign i_arrayidx5_i_i_add0_add_x_b = {1'b0, redist29_i_arrayidx5_i_i_add0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx5_i_i_add0_add_x_o = $unsigned(i_arrayidx5_i_i_add0_add_x_a) + $unsigned(i_arrayidx5_i_i_add0_add_x_b);
    assign i_arrayidx5_i_i_add0_add_x_q = i_arrayidx5_i_i_add0_add_x_o[64:0];

    // i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x(BITSELECT,74)@4
    assign i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b = i_arrayidx5_i_i_add0_add_x_q[63:0];

    // redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0(REG,1492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx5_i_i_add0_dupName_0_add_x(ADD,78)@5
    assign i_arrayidx5_i_i_add0_dupName_0_add_x_a = {1'b0, redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx5_i_i_add0_dupName_0_add_x_b = {1'b0, i_arrayidx5_i_i_add0_shift_join_x_q};
    assign i_arrayidx5_i_i_add0_dupName_0_add_x_o = $unsigned(i_arrayidx5_i_i_add0_dupName_0_add_x_a) + $unsigned(i_arrayidx5_i_i_add0_dupName_0_add_x_b);
    assign i_arrayidx5_i_i_add0_dupName_0_add_x_q = i_arrayidx5_i_i_add0_dupName_0_add_x_o[64:0];

    // i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x(BITSELECT,75)@5
    assign i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b = i_arrayidx5_i_i_add0_dupName_0_add_x_q[63:0];

    // redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0(REG,1491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx5_i_i_add0_dupName_1_add_x(ADD,80)@6
    assign i_arrayidx5_i_i_add0_dupName_1_add_x_a = {1'b0, redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_q};
    assign i_arrayidx5_i_i_add0_dupName_1_add_x_b = {1'b0, i_arrayidx17_i42_i_add0_c_i64_123_x_q};
    assign i_arrayidx5_i_i_add0_dupName_1_add_x_o = $unsigned(i_arrayidx5_i_i_add0_dupName_1_add_x_a) + $unsigned(i_arrayidx5_i_i_add0_dupName_1_add_x_b);
    assign i_arrayidx5_i_i_add0_dupName_1_add_x_q = i_arrayidx5_i_i_add0_dupName_1_add_x_o[64:0];

    // i_arrayidx5_i_i_add0_dupName_3_trunc_sel_x(BITSELECT,76)@6
    assign i_arrayidx5_i_i_add0_dupName_3_trunc_sel_x_b = i_arrayidx5_i_i_add0_dupName_1_add_x_q[63:0];

    // redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0(REG,1497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_q <= $unsigned(SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_D0);
        end
    end

    // i_arrayidx17_i_i_add0_dupName_1_add_x(ADD,40)@6
    assign i_arrayidx17_i_i_add0_dupName_1_add_x_a = {1'b0, redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_q};
    assign i_arrayidx17_i_i_add0_dupName_1_add_x_b = {1'b0, i_arrayidx17_i42_i_add0_c_i64_123_x_q};
    assign i_arrayidx17_i_i_add0_dupName_1_add_x_o = $unsigned(i_arrayidx17_i_i_add0_dupName_1_add_x_a) + $unsigned(i_arrayidx17_i_i_add0_dupName_1_add_x_b);
    assign i_arrayidx17_i_i_add0_dupName_1_add_x_q = i_arrayidx17_i_i_add0_dupName_1_add_x_o[64:0];

    // i_arrayidx17_i_i_add0_dupName_3_trunc_sel_x(BITSELECT,36)@6
    assign i_arrayidx17_i_i_add0_dupName_3_trunc_sel_x_b = i_arrayidx17_i_i_add0_dupName_1_add_x_q[63:0];

    // redist25_i_acl_45_add62_q_4_0(REG,1486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_acl_45_add62_q_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist25_i_acl_45_add62_q_4_0_backEN == 1'b1)
        begin
            redist25_i_acl_45_add62_q_4_0_q <= $unsigned(i_acl_45_add62_q);
        end
    end

    // redist25_i_acl_45_add62_q_4_1(REG,1487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_acl_45_add62_q_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist25_i_acl_45_add62_q_4_1_backEN == 1'b1)
        begin
            redist25_i_acl_45_add62_q_4_1_q <= $unsigned(redist25_i_acl_45_add62_q_4_0_q);
        end
    end

    // redist25_i_acl_45_add62_q_4_2(REG,1488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_acl_45_add62_q_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist25_i_acl_45_add62_q_4_2_backEN == 1'b1)
        begin
            redist25_i_acl_45_add62_q_4_2_q <= $unsigned(redist25_i_acl_45_add62_q_4_1_q);
        end
    end

    // SE_redist25_i_acl_45_add62_q_4_2(STALLENABLE,2052)
    // Valid signal propagation
    assign SE_redist25_i_acl_45_add62_q_4_2_V0 = SE_redist25_i_acl_45_add62_q_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist25_i_acl_45_add62_q_4_2_s_tv_0 = SR_SE_i_addr49_add66_backStall & SE_redist25_i_acl_45_add62_q_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist25_i_acl_45_add62_q_4_2_backEN = ~ (SE_redist25_i_acl_45_add62_q_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist25_i_acl_45_add62_q_4_2_v_s_0 = SE_redist25_i_acl_45_add62_q_4_2_backEN & SE_redist25_i_acl_45_add62_q_4_1_V0;
    // Backward Stall generation
    assign SE_redist25_i_acl_45_add62_q_4_2_backStall = ~ (SE_redist25_i_acl_45_add62_q_4_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist25_i_acl_45_add62_q_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist25_i_acl_45_add62_q_4_2_backEN == 1'b0)
            begin
                SE_redist25_i_acl_45_add62_q_4_2_R_v_0 <= SE_redist25_i_acl_45_add62_q_4_2_R_v_0 & SE_redist25_i_acl_45_add62_q_4_2_s_tv_0;
            end
            else
            begin
                SE_redist25_i_acl_45_add62_q_4_2_R_v_0 <= SE_redist25_i_acl_45_add62_q_4_2_v_s_0;
            end

        end
    end

    // SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0(STALLENABLE,2062)
    // Valid signal propagation
    assign SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_V0 = SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0 = SR_SE_i_addr49_add66_backStall & SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN = ~ (SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0 = SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN & SR_SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_V;
    // Backward Stall generation
    assign SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall = ~ (SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 <= SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 & SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 <= SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_addr49_add66(STALLENABLE,1779)
    // Valid signal propagation
    assign SE_i_addr49_add66_V0 = SE_i_addr49_add66_R_v_0;
    // Stall signal propagation
    assign SE_i_addr49_add66_s_tv_0 = redist24_i_addr49_add66_q_39_fifo_stall_out & SE_i_addr49_add66_R_v_0;
    // Backward Enable generation
    assign SE_i_addr49_add66_backEN = ~ (SE_i_addr49_add66_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_addr49_add66_v_s_0 = SE_i_addr49_add66_backEN & SR_SE_i_addr49_add66_V;
    // Backward Stall generation
    assign SE_i_addr49_add66_backStall = ~ (SE_i_addr49_add66_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_addr49_add66_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_addr49_add66_backEN == 1'b0)
            begin
                SE_i_addr49_add66_R_v_0 <= SE_i_addr49_add66_R_v_0 & SE_i_addr49_add66_s_tv_0;
            end
            else
            begin
                SE_i_addr49_add66_R_v_0 <= SE_i_addr49_add66_v_s_0;
            end

        end
    end

    // SR_SE_i_addr49_add66(STALLREG,2426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_addr49_add66_r_valid <= 1'b0;
            SR_SE_i_addr49_add66_r_data0 <= 1'bx;
            SR_SE_i_addr49_add66_r_data1 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_addr49_add66_r_data2 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_addr49_add66_r_valid <= SE_i_addr49_add66_backStall & (SR_SE_i_addr49_add66_r_valid | SR_SE_i_addr49_add66_i_valid);

            if (SR_SE_i_addr49_add66_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_addr49_add66_r_data0 <= $unsigned(redist25_i_acl_45_add62_q_4_2_q);
                SR_SE_i_addr49_add66_r_data1 <= i_arrayidx17_i_i_add0_dupName_3_trunc_sel_x_b;
                SR_SE_i_addr49_add66_r_data2 <= i_arrayidx5_i_i_add0_dupName_3_trunc_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_addr49_add66_and0 = SE_redist36_i_arrayidx17_i_i_add0_dupName_2_trunc_sel_x_b_1_0_V0;
    assign SR_SE_i_addr49_add66_and1 = SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_V0 & SR_SE_i_addr49_add66_and0;
    assign SR_SE_i_addr49_add66_i_valid = SE_redist25_i_acl_45_add62_q_4_2_V0 & SR_SE_i_addr49_add66_and1;
    // Stall signal propagation
    assign SR_SE_i_addr49_add66_backStall = SR_SE_i_addr49_add66_r_valid | ~ (SR_SE_i_addr49_add66_i_valid);

    // Valid
    assign SR_SE_i_addr49_add66_V = SR_SE_i_addr49_add66_r_valid == 1'b1 ? SR_SE_i_addr49_add66_r_valid : SR_SE_i_addr49_add66_i_valid;

    // Data0
    assign SR_SE_i_addr49_add66_D0 = SR_SE_i_addr49_add66_r_valid == 1'b1 ? SR_SE_i_addr49_add66_r_data0 : redist25_i_acl_45_add62_q_4_2_q;
    // Data1
    assign SR_SE_i_addr49_add66_D1 = SR_SE_i_addr49_add66_r_valid == 1'b1 ? SR_SE_i_addr49_add66_r_data1 : i_arrayidx17_i_i_add0_dupName_3_trunc_sel_x_b;
    // Data2
    assign SR_SE_i_addr49_add66_D2 = SR_SE_i_addr49_add66_r_valid == 1'b1 ? SR_SE_i_addr49_add66_r_data2 : i_arrayidx5_i_i_add0_dupName_3_trunc_sel_x_b;

    // SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0(STALLENABLE,2056)
    // Valid signal propagation
    assign SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_V0 = SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0 = SR_SE_i_addr49_add66_backStall & SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN = ~ (SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0 = SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_V0;
    // Backward Stall generation
    assign SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall = ~ (SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 <= SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 & SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 <= SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17(BLACKBOX,151)@4
    // in in_stall_in@20000000
    // out out_dest_data_out_24_0@5
    // out out_stall_out@20000000
    // out out_valid_out@5
    add_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_0 thei_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_18_V0),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_out_dest_data_out_24_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17(STALLENABLE,1830)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_V0 = SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_backStall = SE_redist30_i_arrayidx5_i_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_and0 = i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_wireValid = SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_and0;

    // SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0(STALLENABLE,2057)
    // Valid signal propagation
    assign SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_V0 = SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i80_add17_backStall & SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0 = SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_V0;
    // Backward Stall generation
    assign SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 & SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16(BLACKBOX,159)@3
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@4
    // out out_stall_out@20000000
    // out out_valid_out@4
    add_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_0 thei_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_17_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16(STALLENABLE,1846)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_backStall = SE_redist31_i_arrayidx5_i_i_add0_dupName_0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_and0 = i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_wireValid = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_and0;

    // SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2(STALLENABLE,2025)
    // Valid signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V0 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_0;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V1 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_1;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V2 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_2;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V3 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_3;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_V4 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_4;
    // Stall signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_0 = SE_i_cmp11_i36_i_add50_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_0;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_1 = SE_i_cmp2_i25_i_add52_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_1;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_2 = redist15_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_103_fifo_stall_out & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_2;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_3 = SE_i_arrayidx17_i42_i_add0_dupName_0_add_x_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_3;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_4 = SE_i_arrayidx17_i_i_add0_dupName_0_add_x_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_4;
    // Backward Enable generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_or0 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_0;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_or1 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_1 | SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_or0;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_or2 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_2 | SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_or1;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_or3 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_3 | SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_or2;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backEN = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_4 | SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_v_s_0 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backEN & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_V0;
    // Backward Stall generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backStall = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_0 <= 1'b0;
            SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_1 <= 1'b0;
            SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_2 <= 1'b0;
            SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_3 <= 1'b0;
            SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_0 & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_0;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_v_s_0;
            end

            if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_1 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_1 & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_1;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_1 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_v_s_0;
            end

            if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_2 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_2 & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_2;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_2 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_v_s_0;
            end

            if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_3 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_3 & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_3;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_3 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_v_s_0;
            end

            if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_4 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_4 & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_s_tv_4;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_R_v_4 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_v_s_0;
            end

        end
    end

    // SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0(STALLENABLE,1979)
    // Valid signal propagation
    assign SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_V0 = SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_s_tv_0 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backStall & SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN = ~ (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_v_s_0 = SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN & SE_out_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_V2;
    // Backward Stall generation
    assign SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backStall = ~ (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_backEN == 1'b0)
            begin
                SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_R_v_0 <= SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_R_v_0 & SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_R_v_0 <= SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_v_s_0;
            end

        end
    end

    // SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1(STALLENABLE,2024)
    // Valid signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_V0 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_0;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_V1 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_1;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_V2 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_2;
    // Stall signal propagation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_s_tv_0 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_2_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_0;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_c46829_add16_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_1;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_s_tv_2 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_backStall & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_2;
    // Backward Enable generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_or0 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_s_tv_0;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_or1 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_s_tv_1 | SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_or0;
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backEN = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_s_tv_2 | SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_v_s_0 = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backEN & SE_lev1_a0sumAHighB_uid920_i_arrayidx5_i30_i_add0_mult_x_im0_V0;
    // Backward Stall generation
    assign SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backStall = ~ (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_0 <= 1'b0;
            SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_1 <= 1'b0;
            SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_0 & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_s_tv_0;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_0 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_v_s_0;
            end

            if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_1 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_1 & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_s_tv_1;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_1 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_v_s_0;
            end

            if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backEN == 1'b0)
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_2 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_2 & SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_s_tv_2;
            end
            else
            begin
                SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_R_v_2 <= SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4(BLACKBOX,157)@3
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@4
    // out out_stall_out@20000000
    // out out_valid_out@4
    add_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_0 thei_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_5_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4(STALLENABLE,1842)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_backStall = SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_and0 = i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_wireValid = SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_V2 & SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_and0;

    // SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0(STALLENABLE,2060)
    // Valid signal propagation
    assign SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_V0 = SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_backStall & SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0 = SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_V0;
    // Backward Stall generation
    assign SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 & SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5(BLACKBOX,153)@4
    // in in_stall_in@20000000
    // out out_dest_data_out_24_0@5
    // out out_stall_out@20000000
    // out out_valid_out@5
    add_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_0 thei_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_backStall),
        .in_valid_in(SE_out_bubble_out_add_B5_merge_reg_aunroll_x_6_V0),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_out_dest_data_out_24_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5(STALLENABLE,1834)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_V0 = SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_backStall = SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_and0 = i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_wireValid = SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_and0;

    // SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0(STALLENABLE,2059)
    // Valid signal propagation
    assign SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_V0 = SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_backStall & SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN = ~ (SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0 = SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_V0;
    // Backward Stall generation
    assign SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall = ~ (SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 <= SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 & SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 <= SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0(STALLENABLE,2068)
    // Valid signal propagation
    assign SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_V0 = SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_backStall & SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN = ~ (SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0 = SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN & SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_V;
    // Backward Stall generation
    assign SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_backStall = ~ (SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 <= SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 & SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_R_v_0 <= SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3(STALLENABLE,2043)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_V0 = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_backStall & SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_backEN = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_v_s_0 = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_backEN & SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_backStall = ~ (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_R_v_0 & SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_R_v_0 <= SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_v_s_0;
            end

        end
    end

    // SE_i_or_cond428_add64(STALLENABLE,1908)
    // Valid signal propagation
    assign SE_i_or_cond428_add64_V0 = SE_i_or_cond428_add64_R_v_0;
    assign SE_i_or_cond428_add64_V1 = SE_i_or_cond428_add64_R_v_1;
    // Stall signal propagation
    assign SE_i_or_cond428_add64_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_backStall & SE_i_or_cond428_add64_R_v_0;
    assign SE_i_or_cond428_add64_s_tv_1 = SE_i_unnamed_add69_backStall & SE_i_or_cond428_add64_R_v_1;
    // Backward Enable generation
    assign SE_i_or_cond428_add64_or0 = SE_i_or_cond428_add64_s_tv_0;
    assign SE_i_or_cond428_add64_backEN = ~ (SE_i_or_cond428_add64_s_tv_1 | SE_i_or_cond428_add64_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_or_cond428_add64_v_s_0 = SE_i_or_cond428_add64_backEN & SR_SE_i_or_cond428_add64_V;
    // Backward Stall generation
    assign SE_i_or_cond428_add64_backStall = ~ (SE_i_or_cond428_add64_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_or_cond428_add64_R_v_0 <= 1'b0;
            SE_i_or_cond428_add64_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_or_cond428_add64_backEN == 1'b0)
            begin
                SE_i_or_cond428_add64_R_v_0 <= SE_i_or_cond428_add64_R_v_0 & SE_i_or_cond428_add64_s_tv_0;
            end
            else
            begin
                SE_i_or_cond428_add64_R_v_0 <= SE_i_or_cond428_add64_v_s_0;
            end

            if (SE_i_or_cond428_add64_backEN == 1'b0)
            begin
                SE_i_or_cond428_add64_R_v_1 <= SE_i_or_cond428_add64_R_v_1 & SE_i_or_cond428_add64_s_tv_1;
            end
            else
            begin
                SE_i_or_cond428_add64_R_v_1 <= SE_i_or_cond428_add64_v_s_0;
            end

        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop18_add35(BLACKBOX,171)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    add_i_llvm_fpga_pop_i1_memdep_phi_pop18_0 thei_llvm_fpga_pop_i1_memdep_phi_pop18_add35 (
        .in_data_in(GND_q),
        .in_dir(redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_memdep_phi_push18_add78_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_memdep_phi_push18_add78_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_backStall),
        .in_valid_in(SE_redist44_add_B5_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35(STALLENABLE,1870)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_backStall = i_llvm_fpga_mem_ml535_add73_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_and1 = SE_i_or_cond428_add64_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_and2 = SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_and1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_and3 = SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_and2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_wireValid = SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_and3;

    // SE_out_redist13_i_unnamed_add69_q_32_fifo(STALLENABLE,2022)
    // Valid signal propagation
    assign SE_out_redist13_i_unnamed_add69_q_32_fifo_V0 = SE_out_redist13_i_unnamed_add69_q_32_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist13_i_unnamed_add69_q_32_fifo_backStall = i_sfc_s_c0_in_for_body4_i_adds_c0_enter5_add75_aunroll_x_out_o_stall | ~ (SE_out_redist13_i_unnamed_add69_q_32_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist13_i_unnamed_add69_q_32_fifo_and0 = redist13_i_unnamed_add69_q_32_fifo_valid_out;
    assign SE_out_redist13_i_unnamed_add69_q_32_fifo_and1 = redist12_i_unnamed_add72_q_35_fifo_valid_out & SE_out_redist13_i_unnamed_add69_q_32_fifo_and0;
    assign SE_out_redist13_i_unnamed_add69_q_32_fifo_and2 = i_llvm_fpga_mem_ml535_add73_out_o_valid & SE_out_redist13_i_unnamed_add69_q_32_fifo_and1;
    assign SE_out_redist13_i_unnamed_add69_q_32_fifo_wireValid = SE_out_i_llvm_fpga_pop_i17_cleanups_pop22_add29_V0 & SE_out_redist13_i_unnamed_add69_q_32_fifo_and2;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35(BITJOIN,1674)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_q = i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35(BITSELECT,1675)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5(BITJOIN,1622)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_q = i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_out_dest_data_out_24_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5(BITSELECT,1623)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_q[63:0]);

    // i_arrayidx5_i30_i_add0_narrow_x(BITSELECT,71)@5
    assign i_arrayidx5_i30_i_add0_narrow_x_b = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom14_i39_i82_add5_b[61:0];

    // i_arrayidx5_i30_i_add0_shift_join_x(BITJOIN,72)@5
    assign i_arrayidx5_i30_i_add0_shift_join_x_q = {i_arrayidx5_i30_i_add0_narrow_x_b, i_arrayidx17_i42_i_add0_c_i2_02_x_q};

    // i_arrayidx5_i30_i_add0_mult_x_sums_align_3(BITSHIFT,409)@3
    assign i_arrayidx5_i30_i_add0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1112_i_arrayidx5_i30_i_add0_mult_x_im9_q, 4'b0000 };
    assign i_arrayidx5_i30_i_add0_mult_x_sums_align_3_q = i_arrayidx5_i30_i_add0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx5_i30_i_add0_mult_x_sums_align_2(BITSHIFT,408)@3
    assign i_arrayidx5_i30_i_add0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid988_i_arrayidx5_i30_i_add0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx5_i30_i_add0_mult_x_sums_align_2_q = i_arrayidx5_i30_i_add0_mult_x_sums_align_2_qint[49:0];

    // i_arrayidx5_i30_i_add0_mult_x_sums_join_4(BITJOIN,410)@3
    assign i_arrayidx5_i30_i_add0_mult_x_sums_join_4_q = {i_arrayidx5_i30_i_add0_mult_x_sums_align_3_q, i_arrayidx5_i30_i_add0_mult_x_sums_align_2_q};

    // i_arrayidx5_i30_i_add0_mult_x_sums_align_0(BITSHIFT,406)@3
    assign i_arrayidx5_i30_i_add0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid1050_i_arrayidx5_i30_i_add0_mult_x_im6_q, 4'b0000 };
    assign i_arrayidx5_i30_i_add0_mult_x_sums_align_0_q = i_arrayidx5_i30_i_add0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx5_i30_i_add0_mult_x_sums_join_1(BITJOIN,407)@3
    assign i_arrayidx5_i30_i_add0_mult_x_sums_join_1_q = {i_arrayidx5_i30_i_add0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid926_i_arrayidx5_i30_i_add0_mult_x_im0_q};

    // i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0(ADD,411)@3
    assign i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx5_i30_i_add0_mult_x_sums_join_1_q};
    assign i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx5_i30_i_add0_mult_x_sums_join_4_q};
    assign i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0_q = i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0_o[78:0];

    // i_arrayidx5_i30_i_add0_mult_extender_x(BITJOIN,63)@3
    assign i_arrayidx5_i30_i_add0_mult_extender_x_q = {i_arrayidx17_i42_i_add0_mult_multconst_x_q, i_arrayidx5_i30_i_add0_mult_x_sums_result_add_0_0_q[77:0]};

    // i_arrayidx5_i30_i_add0_trunc_sel_x(BITSELECT,65)@3
    assign i_arrayidx5_i30_i_add0_trunc_sel_x_b = i_arrayidx5_i30_i_add0_mult_extender_x_q[63:0];

    // redist32_i_arrayidx5_i30_i_add0_trunc_sel_x_b_1_0(REG,1493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_arrayidx5_i30_i_add0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist14_i_llvm_fpga_pop_i32_j_i_0446_pop17_add34_out_data_out_3_1_backEN == 1'b1)
        begin
            redist32_i_arrayidx5_i30_i_add0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx5_i30_i_add0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4(BITJOIN,1634)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_q = i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4(BITSELECT,1635)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_q[63:0]);

    // i_arrayidx5_i30_i_add0_add_x(ADD,66)@4
    assign i_arrayidx5_i30_i_add0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024s_class_tensorxls_a46623_add4_b};
    assign i_arrayidx5_i30_i_add0_add_x_b = {1'b0, redist32_i_arrayidx5_i30_i_add0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx5_i30_i_add0_add_x_o = $unsigned(i_arrayidx5_i30_i_add0_add_x_a) + $unsigned(i_arrayidx5_i30_i_add0_add_x_b);
    assign i_arrayidx5_i30_i_add0_add_x_q = i_arrayidx5_i30_i_add0_add_x_o[64:0];

    // i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x(BITSELECT,54)@4
    assign i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b = i_arrayidx5_i30_i_add0_add_x_q[63:0];

    // redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0(REG,1495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx5_i30_i_add0_dupName_0_add_x(ADD,58)@5
    assign i_arrayidx5_i30_i_add0_dupName_0_add_x_a = {1'b0, redist34_i_arrayidx5_i30_i_add0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx5_i30_i_add0_dupName_0_add_x_b = {1'b0, i_arrayidx5_i30_i_add0_shift_join_x_q};
    assign i_arrayidx5_i30_i_add0_dupName_0_add_x_o = $unsigned(i_arrayidx5_i30_i_add0_dupName_0_add_x_a) + $unsigned(i_arrayidx5_i30_i_add0_dupName_0_add_x_b);
    assign i_arrayidx5_i30_i_add0_dupName_0_add_x_q = i_arrayidx5_i30_i_add0_dupName_0_add_x_o[64:0];

    // i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x(BITSELECT,55)@5
    assign i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b = i_arrayidx5_i30_i_add0_dupName_0_add_x_q[63:0];

    // redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0(REG,1494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx5_i30_i_add0_dupName_1_add_x(ADD,60)@6
    assign i_arrayidx5_i30_i_add0_dupName_1_add_x_a = {1'b0, redist33_i_arrayidx5_i30_i_add0_dupName_2_trunc_sel_x_b_1_0_q};
    assign i_arrayidx5_i30_i_add0_dupName_1_add_x_b = {1'b0, i_arrayidx17_i42_i_add0_c_i64_123_x_q};
    assign i_arrayidx5_i30_i_add0_dupName_1_add_x_o = $unsigned(i_arrayidx5_i30_i_add0_dupName_1_add_x_a) + $unsigned(i_arrayidx5_i30_i_add0_dupName_1_add_x_b);
    assign i_arrayidx5_i30_i_add0_dupName_1_add_x_q = i_arrayidx5_i30_i_add0_dupName_1_add_x_o[64:0];

    // i_arrayidx5_i30_i_add0_dupName_3_trunc_sel_x(BITSELECT,56)@6
    assign i_arrayidx5_i30_i_add0_dupName_3_trunc_sel_x_b = i_arrayidx5_i30_i_add0_dupName_1_add_x_q[63:0];

    // redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0(REG,1503)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_q <= $unsigned(SR_SE_redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_D0);
        end
    end

    // i_arrayidx17_i42_i_add0_dupName_1_add_x(ADD,20)@6
    assign i_arrayidx17_i42_i_add0_dupName_1_add_x_a = {1'b0, redist40_i_arrayidx17_i42_i_add0_dupName_2_trunc_sel_x_b_1_0_q};
    assign i_arrayidx17_i42_i_add0_dupName_1_add_x_b = {1'b0, i_arrayidx17_i42_i_add0_c_i64_123_x_q};
    assign i_arrayidx17_i42_i_add0_dupName_1_add_x_o = $unsigned(i_arrayidx17_i42_i_add0_dupName_1_add_x_a) + $unsigned(i_arrayidx17_i42_i_add0_dupName_1_add_x_b);
    assign i_arrayidx17_i42_i_add0_dupName_1_add_x_q = i_arrayidx17_i42_i_add0_dupName_1_add_x_o[64:0];

    // i_arrayidx17_i42_i_add0_dupName_3_trunc_sel_x(BITSELECT,16)@6
    assign i_arrayidx17_i42_i_add0_dupName_3_trunc_sel_x_b = i_arrayidx17_i42_i_add0_dupName_1_add_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6(BITJOIN,1586)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_q = i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6(BITSELECT,1587)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_q[0:0]);

    // redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0(REG,1477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_b);
        end
    end

    // redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1(REG,1478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_q <= $unsigned(redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_0_q);
        end
    end

    // redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2(REG,1479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_q <= $unsigned(redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_1_q);
        end
    end

    // redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3(REG,1480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_q <= $unsigned(redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_2_q);
        end
    end

    // i_acl_40_add68(LOGICAL,115)@6
    assign i_acl_40_add68_q = i_or_cond428_add64_q & redist22_i_llvm_fpga_ffwd_dest_i1_tobool_i_i41_add6_out_dest_data_out_3_0_4_3_q;

    // i_acl_52_v_add71(MUX,117)@6
    assign i_acl_52_v_add71_s = i_acl_40_add68_q;
    always @(i_acl_52_v_add71_s or i_arrayidx17_i42_i_add0_dupName_3_trunc_sel_x_b or i_arrayidx5_i30_i_add0_dupName_3_trunc_sel_x_b)
    begin
        unique case (i_acl_52_v_add71_s)
            1'b0 : i_acl_52_v_add71_q = i_arrayidx17_i42_i_add0_dupName_3_trunc_sel_x_b;
            1'b1 : i_acl_52_v_add71_q = i_arrayidx5_i30_i_add0_dupName_3_trunc_sel_x_b;
            default : i_acl_52_v_add71_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_mem_ml535_add73(BLACKBOX,165)@6
    // in in_i_stall@20000000
    // out out_ml535_add_avm_address@20000000
    // out out_ml535_add_avm_burstcount@20000000
    // out out_ml535_add_avm_byteenable@20000000
    // out out_ml535_add_avm_enable@20000000
    // out out_ml535_add_avm_read@20000000
    // out out_ml535_add_avm_write@20000000
    // out out_ml535_add_avm_writedata@20000000
    // out out_o_readdata@38
    // out out_o_stall@20000000
    // out out_o_valid@38
    add_i_llvm_fpga_mem_ml535_0 thei_llvm_fpga_mem_ml535_add73 (
        .in_flush(in_flush),
        .in_i_address(i_acl_52_v_add71_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist13_i_unnamed_add69_q_32_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop18_add35_V0),
        .in_ml535_add_avm_readdata(in_ml535_add_avm_readdata),
        .in_ml535_add_avm_readdatavalid(in_ml535_add_avm_readdatavalid),
        .in_ml535_add_avm_waitrequest(in_ml535_add_avm_waitrequest),
        .in_ml535_add_avm_writeack(in_ml535_add_avm_writeack),
        .out_ml535_add_avm_address(i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_address),
        .out_ml535_add_avm_burstcount(i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_burstcount),
        .out_ml535_add_avm_byteenable(i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_byteenable),
        .out_ml535_add_avm_enable(i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_enable),
        .out_ml535_add_avm_read(i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_read),
        .out_ml535_add_avm_write(i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_write),
        .out_ml535_add_avm_writedata(i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_ml535_add73_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_ml535_add73_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_ml535_add73_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,5)
    assign out_ml535_add_avm_address = i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_address;
    assign out_ml535_add_avm_enable = i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_enable;
    assign out_ml535_add_avm_read = i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_read;
    assign out_ml535_add_avm_write = i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_write;
    assign out_ml535_add_avm_writedata = i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_writedata;
    assign out_ml535_add_avm_byteenable = i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_byteenable;
    assign out_ml535_add_avm_burstcount = i_llvm_fpga_mem_ml535_add73_out_ml535_add_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,6)
    assign out_intel_reserved_ffwd_29_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add46_add87_out_intel_reserved_ffwd_29_0;

    // i_masked_add95(LOGICAL,189)@108 + 1
    assign i_masked_add95_qi = i_notcmp_add92_q & sel_for_coalesced_delay_0_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_add95_delay ( .xin(i_masked_add95_qi), .xout(i_masked_add95_q), .ena(SE_i_masked_add95_backEN[0]), .clk(clock), .aclr(resetn) );

    // bubble_join_i_llvm_fpga_push_i32_inc7_i146_push23_add47(BITJOIN,1690)
    assign bubble_join_i_llvm_fpga_push_i32_inc7_i146_push23_add47_q = i_llvm_fpga_push_i32_inc7_i146_push23_add47_out_data_out;

    // bubble_select_i_llvm_fpga_push_i32_inc7_i146_push23_add47(BITSELECT,1691)
    assign bubble_select_i_llvm_fpga_push_i32_inc7_i146_push23_add47_b = $unsigned(bubble_join_i_llvm_fpga_push_i32_inc7_i146_push23_add47_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,7)@109
    assign out_inc7_i146_push23 = bubble_select_i_llvm_fpga_push_i32_inc7_i146_push23_add47_b;
    assign out_masked = i_masked_add95_q;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i32_inc7_i146_pop23_add38_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,9)
    assign out_memdep_add_avm_address = i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_address;
    assign out_memdep_add_avm_enable = i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_enable;
    assign out_memdep_add_avm_read = i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_read;
    assign out_memdep_add_avm_write = i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_write;
    assign out_memdep_add_avm_writedata = i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_writedata;
    assign out_memdep_add_avm_byteenable = i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_byteenable;
    assign out_memdep_add_avm_burstcount = i_llvm_fpga_mem_memdep_add77_out_memdep_add_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,11)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_add77_out_lsu_memdep_o_active;

    // dupName_3_ext_sig_sync_out_x(GPOUT,12)
    assign out_lm1076_add_avm_address = i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_address;
    assign out_lm1076_add_avm_enable = i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_enable;
    assign out_lm1076_add_avm_read = i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_read;
    assign out_lm1076_add_avm_write = i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_write;
    assign out_lm1076_add_avm_writedata = i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_writedata;
    assign out_lm1076_add_avm_byteenable = i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_byteenable;
    assign out_lm1076_add_avm_burstcount = i_llvm_fpga_mem_lm1076_add79_out_lm1076_add_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,13)
    assign out_lm1097_add_avm_address = i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_address;
    assign out_lm1097_add_avm_enable = i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_enable;
    assign out_lm1097_add_avm_read = i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_read;
    assign out_lm1097_add_avm_write = i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_write;
    assign out_lm1097_add_avm_writedata = i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_writedata;
    assign out_lm1097_add_avm_byteenable = i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_byteenable;
    assign out_lm1097_add_avm_burstcount = i_llvm_fpga_mem_lm1097_add80_out_lm1097_add_avm_burstcount;

    // ext_sig_sync_out(GPOUT,114)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_add30_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_add30_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_add30_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_add30_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,328)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_add30_out_pipeline_valid_out;

    // regfree_osync(GPOUT,346)
    assign out_intel_reserved_ffwd_28_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add45_add83_out_intel_reserved_ffwd_28_0;

    // sync_out(GPOUT,350)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
