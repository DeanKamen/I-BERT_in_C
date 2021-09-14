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

// SystemVerilog created from add_bb_B4_stall_region
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_bb_B4_stall_region (
    output wire [31:0] out_intel_reserved_ffwd_21_0,
    output wire [31:0] out_inc7_i,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    output wire [0:0] out_intel_reserved_ffwd_23_0,
    output wire [63:0] out_intel_reserved_ffwd_24_0,
    output wire [0:0] out_intel_reserved_ffwd_25_0,
    output wire [0:0] out_intel_reserved_ffwd_26_0,
    output wire [31:0] out_intel_reserved_ffwd_27_0,
    input wire [0:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_20_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked46,
    input wire [31:0] in_i_i_0449,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] add_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] add_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] add_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] add_B4_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] bgTrunc_i_inc7_i_add16_sel_x_b;
    wire [31:0] c_i32_025_recast_x_q;
    wire [63:0] i_idxprom14_i39_i_add12_sel_x_b;
    wire [31:0] c_i32_127_q;
    wire [0:0] i_cmp3_i445_add8_q;
    wire [33:0] i_cmp_i_i_add14_a;
    wire [33:0] i_cmp_i_i_add14_b;
    logic [33:0] i_cmp_i_i_add14_o;
    wire [0:0] i_cmp_i_i_add14_c;
    wire [63:0] i_idxprom14_i39_i_add12_vt_join_q;
    wire [31:0] i_idxprom14_i39_i_add12_vt_select_31_b;
    wire [32:0] i_inc7_i_add16_a;
    wire [32:0] i_inc7_i_add16_b;
    logic [32:0] i_inc7_i_add16_o;
    wire [32:0] i_inc7_i_add16_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_out_dest_data_out_13_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_select12090_add1_out_dest_data_out_30_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_select12090_add1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_select12090_add1_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_select92_add0_out_dest_data_out_31_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_select92_add0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_select92_add0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add35_add20_out_intel_reserved_ffwd_23_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add35_add20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add35_add20_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add37_add22_out_intel_reserved_ffwd_25_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add37_add22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add37_add22_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add38_add23_out_intel_reserved_ffwd_26_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add38_add23_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add38_add23_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add32_add17_out_intel_reserved_ffwd_20_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add32_add17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add32_add17_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add33_add18_out_intel_reserved_ffwd_21_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add33_add18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add33_add18_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add34_add19_out_intel_reserved_ffwd_22_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add34_add19_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add34_add19_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add39_add24_out_intel_reserved_ffwd_27_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add39_add24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add39_add24_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_out_intel_reserved_ffwd_24_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_out_valid_out;
    wire [0:0] i_phi_decision105_xor_add15_q;
    wire [0:0] i_replace_phi47_add5_s;
    reg [31:0] i_replace_phi47_add5_q;
    wire [0:0] i_replace_phi51_add3_s;
    reg [31:0] i_replace_phi51_add3_q;
    wire [0:0] i_unnamed_add11_q;
    wire [0:0] i_unnamed_add7_s;
    reg [31:0] i_unnamed_add7_q;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [32:0] coalesced_delay_0_0_q;
    wire [32:0] bubble_join_add_B4_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_add_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_add_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_select12090_add1_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_select12090_add1_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_select92_add0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_select92_add0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_b;
    wire [32:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_add_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_add_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_add_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_add_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_add_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_add_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_add_B4_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_add_B4_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_add_B4_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and7;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_2;
    reg [0:0] SE_coalesced_delay_0_0_R_v_3;
    reg [0:0] SE_coalesced_delay_0_0_R_v_4;
    reg [0:0] SE_coalesced_delay_0_0_R_v_5;
    reg [0:0] SE_coalesced_delay_0_0_R_v_6;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_2;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_3;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_4;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_5;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_6;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_or0;
    wire [0:0] SE_coalesced_delay_0_0_or1;
    wire [0:0] SE_coalesced_delay_0_0_or2;
    wire [0:0] SE_coalesced_delay_0_0_or3;
    wire [0:0] SE_coalesced_delay_0_0_or4;
    wire [0:0] SE_coalesced_delay_0_0_or5;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_coalesced_delay_0_0_V1;
    wire [0:0] SE_coalesced_delay_0_0_V2;
    wire [0:0] SE_coalesced_delay_0_0_V3;
    wire [0:0] SE_coalesced_delay_0_0_V4;
    wire [0:0] SE_coalesced_delay_0_0_V5;
    wire [0:0] SE_coalesced_delay_0_0_V6;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_i32_025_recast_x(CONSTANT,4)
    assign c_i32_025_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13(BITJOIN,130)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_q = i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13(BITSELECT,131)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_q[31:0]);

    // i_cmp_i_i_add14(COMPARE,21)@2
    assign i_cmp_i_i_add14_a = {2'b00, sel_for_coalesced_delay_0_b};
    assign i_cmp_i_i_add14_b = {2'b00, bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_b};
    assign i_cmp_i_i_add14_o = $unsigned(i_cmp_i_i_add14_a) - $unsigned(i_cmp_i_i_add14_b);
    assign i_cmp_i_i_add14_c[0] = i_cmp_i_i_add14_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_add37_add22(BLACKBOX,35)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i1_unnamed_37_add0 thei_llvm_fpga_ffwd_source_i1_unnamed_add37_add22 (
        .in_predicate_in(GND_q),
        .in_src_data_in_25_0(i_cmp_i_i_add14_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_V0),
        .out_intel_reserved_ffwd_25_0(i_llvm_fpga_ffwd_source_i1_unnamed_add37_add22_out_intel_reserved_ffwd_25_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_add37_add22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_add37_add22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13(STALLENABLE,166)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_add37_add22_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_and0 = i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_and0;

    // i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13(BLACKBOX,33)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_18_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i32_unnamed_31_add0 thei_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_backStall),
        .in_valid_in(SE_out_add_B4_merge_reg_aunroll_x_V6),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_select12090_add1(BLACKBOX,29)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_30_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i32_select12090_0 thei_llvm_fpga_ffwd_dest_i32_select12090_add1 (
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_backStall),
        .in_valid_in(SE_out_add_B4_merge_reg_aunroll_x_V2),
        .out_dest_data_out_30_0(i_llvm_fpga_ffwd_dest_i32_select12090_add1_out_dest_data_out_30_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_select12090_add1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_select12090_add1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,188)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = add_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,141)
    assign bubble_join_stall_entry_q = {in_i_i_0449, in_forked46};

    // bubble_select_stall_entry(BITSELECT,142)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);

    // add_B4_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_B4_merge_reg theadd_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_add_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(add_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(add_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_stall_out(add_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(add_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_add_B4_merge_reg_aunroll_x(STALLENABLE,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_add_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_add_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_add_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_add_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_add_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_add_B4_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_add_B4_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_add_B4_merge_reg_aunroll_x_fromReg7 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_add_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_add_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_add_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_add_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_add_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_add_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_add_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_add_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_add_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_add_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_add_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_add_B4_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_add_B4_merge_reg_aunroll_x_fromReg6 <= SE_out_add_B4_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_add_B4_merge_reg_aunroll_x_fromReg7 <= SE_out_add_B4_merge_reg_aunroll_x_toReg7;
        end
    end
    // Input Stall processing
    assign SE_out_add_B4_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_out_stall_out) & SE_out_add_B4_merge_reg_aunroll_x_wireValid) | SE_out_add_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_add_B4_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_out_stall_out) & SE_out_add_B4_merge_reg_aunroll_x_wireValid) | SE_out_add_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_add_B4_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_select12090_add1_out_stall_out) & SE_out_add_B4_merge_reg_aunroll_x_wireValid) | SE_out_add_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_add_B4_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_select92_add0_out_stall_out) & SE_out_add_B4_merge_reg_aunroll_x_wireValid) | SE_out_add_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_add_B4_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_out_stall_out) & SE_out_add_B4_merge_reg_aunroll_x_wireValid) | SE_out_add_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_add_B4_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_out_stall_out) & SE_out_add_B4_merge_reg_aunroll_x_wireValid) | SE_out_add_B4_merge_reg_aunroll_x_fromReg5;
    assign SE_out_add_B4_merge_reg_aunroll_x_consumed6 = (~ (i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_out_stall_out) & SE_out_add_B4_merge_reg_aunroll_x_wireValid) | SE_out_add_B4_merge_reg_aunroll_x_fromReg6;
    assign SE_out_add_B4_merge_reg_aunroll_x_consumed7 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_add_B4_merge_reg_aunroll_x_wireValid) | SE_out_add_B4_merge_reg_aunroll_x_fromReg7;
    // Consuming
    assign SE_out_add_B4_merge_reg_aunroll_x_StallValid = SE_out_add_B4_merge_reg_aunroll_x_backStall & SE_out_add_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_add_B4_merge_reg_aunroll_x_toReg0 = SE_out_add_B4_merge_reg_aunroll_x_StallValid & SE_out_add_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_add_B4_merge_reg_aunroll_x_toReg1 = SE_out_add_B4_merge_reg_aunroll_x_StallValid & SE_out_add_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_add_B4_merge_reg_aunroll_x_toReg2 = SE_out_add_B4_merge_reg_aunroll_x_StallValid & SE_out_add_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_add_B4_merge_reg_aunroll_x_toReg3 = SE_out_add_B4_merge_reg_aunroll_x_StallValid & SE_out_add_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_add_B4_merge_reg_aunroll_x_toReg4 = SE_out_add_B4_merge_reg_aunroll_x_StallValid & SE_out_add_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_add_B4_merge_reg_aunroll_x_toReg5 = SE_out_add_B4_merge_reg_aunroll_x_StallValid & SE_out_add_B4_merge_reg_aunroll_x_consumed5;
    assign SE_out_add_B4_merge_reg_aunroll_x_toReg6 = SE_out_add_B4_merge_reg_aunroll_x_StallValid & SE_out_add_B4_merge_reg_aunroll_x_consumed6;
    assign SE_out_add_B4_merge_reg_aunroll_x_toReg7 = SE_out_add_B4_merge_reg_aunroll_x_StallValid & SE_out_add_B4_merge_reg_aunroll_x_consumed7;
    // Backward Stall generation
    assign SE_out_add_B4_merge_reg_aunroll_x_or0 = SE_out_add_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_add_B4_merge_reg_aunroll_x_or1 = SE_out_add_B4_merge_reg_aunroll_x_consumed1 & SE_out_add_B4_merge_reg_aunroll_x_or0;
    assign SE_out_add_B4_merge_reg_aunroll_x_or2 = SE_out_add_B4_merge_reg_aunroll_x_consumed2 & SE_out_add_B4_merge_reg_aunroll_x_or1;
    assign SE_out_add_B4_merge_reg_aunroll_x_or3 = SE_out_add_B4_merge_reg_aunroll_x_consumed3 & SE_out_add_B4_merge_reg_aunroll_x_or2;
    assign SE_out_add_B4_merge_reg_aunroll_x_or4 = SE_out_add_B4_merge_reg_aunroll_x_consumed4 & SE_out_add_B4_merge_reg_aunroll_x_or3;
    assign SE_out_add_B4_merge_reg_aunroll_x_or5 = SE_out_add_B4_merge_reg_aunroll_x_consumed5 & SE_out_add_B4_merge_reg_aunroll_x_or4;
    assign SE_out_add_B4_merge_reg_aunroll_x_or6 = SE_out_add_B4_merge_reg_aunroll_x_consumed6 & SE_out_add_B4_merge_reg_aunroll_x_or5;
    assign SE_out_add_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_add_B4_merge_reg_aunroll_x_consumed7 & SE_out_add_B4_merge_reg_aunroll_x_or6);
    assign SE_out_add_B4_merge_reg_aunroll_x_backStall = SE_out_add_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_add_B4_merge_reg_aunroll_x_V0 = SE_out_add_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_add_B4_merge_reg_aunroll_x_V1 = SE_out_add_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_add_B4_merge_reg_aunroll_x_V2 = SE_out_add_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_add_B4_merge_reg_aunroll_x_V3 = SE_out_add_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_add_B4_merge_reg_aunroll_x_V4 = SE_out_add_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_add_B4_merge_reg_aunroll_x_V5 = SE_out_add_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B4_merge_reg_aunroll_x_fromReg5);
    assign SE_out_add_B4_merge_reg_aunroll_x_V6 = SE_out_add_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B4_merge_reg_aunroll_x_fromReg6);
    assign SE_out_add_B4_merge_reg_aunroll_x_V7 = SE_out_add_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B4_merge_reg_aunroll_x_fromReg7);
    // Computing multiple Valid(s)
    assign SE_out_add_B4_merge_reg_aunroll_x_wireValid = add_B4_merge_reg_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4(BLACKBOX,32)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_5_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i32_unnamed_30_add0 thei_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_backStall),
        .in_valid_in(SE_out_add_B4_merge_reg_aunroll_x_V5),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_out_dest_data_out_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4(BITJOIN,127)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_q = i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_out_dest_data_out_5_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4(BITSELECT,128)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_select12090_add1(BITJOIN,118)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_select12090_add1_q = i_llvm_fpga_ffwd_dest_i32_select12090_add1_out_dest_data_out_30_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_select12090_add1(BITSELECT,119)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_select12090_add1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_select12090_add1_q[31:0]);

    // bubble_join_add_B4_merge_reg_aunroll_x(BITJOIN,102)
    assign bubble_join_add_B4_merge_reg_aunroll_x_q = {add_B4_merge_reg_aunroll_x_out_data_out_1_tpl, add_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_add_B4_merge_reg_aunroll_x(BITSELECT,103)
    assign bubble_select_add_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_add_B4_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_add_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_add_B4_merge_reg_aunroll_x_q[32:32]);

    // join_for_coalesced_delay_0(BITJOIN,98)
    assign join_for_coalesced_delay_0_q = {bubble_select_add_B4_merge_reg_aunroll_x_c, bubble_select_add_B4_merge_reg_aunroll_x_b};

    // coalesced_delay_0_0(REG,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,99)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[32:32]);

    // i_replace_phi47_add5(MUX,43)@2
    assign i_replace_phi47_add5_s = sel_for_coalesced_delay_0_c;
    always @(i_replace_phi47_add5_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_select12090_add1_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_b)
    begin
        unique case (i_replace_phi47_add5_s)
            1'b0 : i_replace_phi47_add5_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_select12090_add1_b;
            1'b1 : i_replace_phi47_add5_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_b;
            default : i_replace_phi47_add5_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6(BITJOIN,115)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_q = i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6(BITSELECT,116)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_q[0:0]);

    // i_unnamed_add7(MUX,46)@2
    assign i_unnamed_add7_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_b;
    always @(i_unnamed_add7_s or i_replace_phi47_add5_q or i_replace_phi51_add3_q)
    begin
        unique case (i_unnamed_add7_s)
            1'b0 : i_unnamed_add7_q = i_replace_phi47_add5_q;
            1'b1 : i_unnamed_add7_q = i_replace_phi51_add3_q;
            default : i_unnamed_add7_q = 32'b0;
        endcase
    end

    // i_cmp3_i445_add8(LOGICAL,20)@2
    assign i_cmp3_i445_add8_q = $unsigned(i_unnamed_add7_q == c_i32_025_recast_x_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10(BITJOIN,112)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_q = i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_out_dest_data_out_13_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10(BITSELECT,113)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_q[0:0]);

    // i_unnamed_add11(LOGICAL,45)@2
    assign i_unnamed_add11_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_b | i_cmp3_i445_add8_q;

    // i_phi_decision105_xor_add15(LOGICAL,42)@2
    assign i_phi_decision105_xor_add15_q = i_unnamed_add11_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_add38_add23(BLACKBOX,36)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i1_unnamed_38_add0 thei_llvm_fpga_ffwd_source_i1_unnamed_add38_add23 (
        .in_predicate_in(GND_q),
        .in_src_data_in_26_0(i_phi_decision105_xor_add15_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_V1),
        .out_intel_reserved_ffwd_26_0(i_llvm_fpga_ffwd_source_i1_unnamed_add38_add23_out_intel_reserved_ffwd_26_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_add38_add23_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_add38_add23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i1_unnamed_add35_add20(BLACKBOX,34)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i1_unnamed_35_add0 thei_llvm_fpga_ffwd_source_i1_unnamed_add35_add20 (
        .in_predicate_in(GND_q),
        .in_src_data_in_23_0(i_unnamed_add11_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_V0),
        .out_intel_reserved_ffwd_23_0(i_llvm_fpga_ffwd_source_i1_unnamed_add35_add20_out_intel_reserved_ffwd_23_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_add35_add20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_add35_add20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10(BLACKBOX,27)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_13_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i1_cmp2444261_0 thei_llvm_fpga_ffwd_dest_i1_cmp2444261_add10 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_backStall),
        .in_valid_in(SE_out_add_B4_merge_reg_aunroll_x_V0),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_out_dest_data_out_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_add34_add19(BLACKBOX,39)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_34_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add34_add19 (
        .in_predicate_in(GND_q),
        .in_src_data_in_22_0(i_replace_phi47_add5_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_V1),
        .out_intel_reserved_ffwd_22_0(i_llvm_fpga_ffwd_source_i32_unnamed_add34_add19_out_intel_reserved_ffwd_22_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add34_add19_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add34_add19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4(STALLENABLE,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_add34_add19_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_and0 = i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_and1 = i_llvm_fpga_ffwd_dest_i32_select12090_add1_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_wireValid = SE_coalesced_delay_0_0_V1 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_and1;

    // i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6(BLACKBOX,28)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_0 thei_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_backStall),
        .in_valid_in(SE_out_add_B4_merge_reg_aunroll_x_V1),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6(STALLENABLE,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_consumed0 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_add35_add20_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_add38_add23_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_and0 = i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_and1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_V0 & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_and2 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_V0 & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp2444261_add10_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_and2;

    // c_i32_127(CONSTANT,17)
    assign c_i32_127_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc7_i_add16(ADD,26)@2
    assign i_inc7_i_add16_a = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_inc7_i_add16_b = {1'b0, c_i32_127_q};
    assign i_inc7_i_add16_o = $unsigned(i_inc7_i_add16_a) + $unsigned(i_inc7_i_add16_b);
    assign i_inc7_i_add16_q = i_inc7_i_add16_o[32:0];

    // bgTrunc_i_inc7_i_add16_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc7_i_add16_sel_x_b = i_inc7_i_add16_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_add39_add24(BLACKBOX,40)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_39_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add39_add24 (
        .in_predicate_in(GND_q),
        .in_src_data_in_27_0(bgTrunc_i_inc7_i_add16_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_backStall),
        .in_valid_in(SE_coalesced_delay_0_0_V6),
        .out_intel_reserved_ffwd_27_0(i_llvm_fpga_ffwd_source_i32_unnamed_add39_add24_out_intel_reserved_ffwd_27_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add39_add24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add39_add24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom14_i39_i_add12_sel_x(BITSELECT,13)@2
    assign i_idxprom14_i39_i_add12_sel_x_b = {32'b00000000000000000000000000000000, sel_for_coalesced_delay_0_b[31:0]};

    // i_idxprom14_i39_i_add12_vt_select_31(BITSELECT,25)@2
    assign i_idxprom14_i39_i_add12_vt_select_31_b = i_idxprom14_i39_i_add12_sel_x_b[31:0];

    // i_idxprom14_i39_i_add12_vt_join(BITJOIN,24)@2
    assign i_idxprom14_i39_i_add12_vt_join_q = {c_i32_025_recast_x_q, i_idxprom14_i39_i_add12_vt_select_31_b};

    // i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21(BLACKBOX,41)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i64_unnamed_36_add0 thei_llvm_fpga_ffwd_source_i64_unnamed_add36_add21 (
        .in_predicate_in(GND_q),
        .in_src_data_in_24_0(i_idxprom14_i39_i_add12_vt_join_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_backStall),
        .in_valid_in(SE_coalesced_delay_0_0_V5),
        .out_intel_reserved_ffwd_24_0(i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_out_intel_reserved_ffwd_24_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_add32_add17(BLACKBOX,37)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_32_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add32_add17 (
        .in_predicate_in(GND_q),
        .in_src_data_in_20_0(sel_for_coalesced_delay_0_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_backStall),
        .in_valid_in(SE_coalesced_delay_0_0_V3),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_i32_unnamed_add32_add17_out_intel_reserved_ffwd_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add32_add17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add32_add17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,192)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_V1 = SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_V2 = SE_coalesced_delay_0_0_R_v_2;
    assign SE_coalesced_delay_0_0_V3 = SE_coalesced_delay_0_0_R_v_3;
    assign SE_coalesced_delay_0_0_V4 = SE_coalesced_delay_0_0_R_v_4;
    assign SE_coalesced_delay_0_0_V5 = SE_coalesced_delay_0_0_R_v_5;
    assign SE_coalesced_delay_0_0_V6 = SE_coalesced_delay_0_0_R_v_6;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add31_add13_backStall & SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add30_add4_backStall & SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_s_tv_2 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_backStall & SE_coalesced_delay_0_0_R_v_2;
    assign SE_coalesced_delay_0_0_s_tv_3 = i_llvm_fpga_ffwd_source_i32_unnamed_add32_add17_out_stall_out & SE_coalesced_delay_0_0_R_v_3;
    assign SE_coalesced_delay_0_0_s_tv_4 = SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_backStall & SE_coalesced_delay_0_0_R_v_4;
    assign SE_coalesced_delay_0_0_s_tv_5 = i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_out_stall_out & SE_coalesced_delay_0_0_R_v_5;
    assign SE_coalesced_delay_0_0_s_tv_6 = i_llvm_fpga_ffwd_source_i32_unnamed_add39_add24_out_stall_out & SE_coalesced_delay_0_0_R_v_6;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_or0 = SE_coalesced_delay_0_0_s_tv_0;
    assign SE_coalesced_delay_0_0_or1 = SE_coalesced_delay_0_0_s_tv_1 | SE_coalesced_delay_0_0_or0;
    assign SE_coalesced_delay_0_0_or2 = SE_coalesced_delay_0_0_s_tv_2 | SE_coalesced_delay_0_0_or1;
    assign SE_coalesced_delay_0_0_or3 = SE_coalesced_delay_0_0_s_tv_3 | SE_coalesced_delay_0_0_or2;
    assign SE_coalesced_delay_0_0_or4 = SE_coalesced_delay_0_0_s_tv_4 | SE_coalesced_delay_0_0_or3;
    assign SE_coalesced_delay_0_0_or5 = SE_coalesced_delay_0_0_s_tv_5 | SE_coalesced_delay_0_0_or4;
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_6 | SE_coalesced_delay_0_0_or5);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_add_B4_merge_reg_aunroll_x_V7;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_1 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_2 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_3 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_4 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_5 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_6 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_R_v_1 & SE_coalesced_delay_0_0_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_2 <= SE_coalesced_delay_0_0_R_v_2 & SE_coalesced_delay_0_0_s_tv_2;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_2 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_3 <= SE_coalesced_delay_0_0_R_v_3 & SE_coalesced_delay_0_0_s_tv_3;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_3 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_4 <= SE_coalesced_delay_0_0_R_v_4 & SE_coalesced_delay_0_0_s_tv_4;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_4 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_5 <= SE_coalesced_delay_0_0_R_v_5 & SE_coalesced_delay_0_0_s_tv_5;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_5 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_6 <= SE_coalesced_delay_0_0_R_v_6 & SE_coalesced_delay_0_0_s_tv_6;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_6 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_select92_add0(BLACKBOX,30)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_31_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i32_select92_0 thei_llvm_fpga_ffwd_dest_i32_select92_add0 (
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_backStall),
        .in_valid_in(SE_out_add_B4_merge_reg_aunroll_x_V3),
        .out_dest_data_out_31_0(i_llvm_fpga_ffwd_dest_i32_select92_add0_out_dest_data_out_31_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_select92_add0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_select92_add0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2(BLACKBOX,31)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_7_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_ffwd_dest_i32_unnamed_29_add0 thei_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_backStall),
        .in_valid_in(SE_out_add_B4_merge_reg_aunroll_x_V4),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2(STALLENABLE,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i43_add6_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_add33_add18_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_and0 = i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_and1 = i_llvm_fpga_ffwd_dest_i32_select92_add0_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_wireValid = SE_coalesced_delay_0_0_V2 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_and1;

    // SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21(STALLENABLE,182)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_V0 = SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and0 = i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and1 = i_llvm_fpga_ffwd_source_i32_unnamed_add39_add24_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and2 = i_llvm_fpga_ffwd_source_i32_unnamed_add34_add19_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and3 = i_llvm_fpga_ffwd_source_i32_unnamed_add33_add18_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and2;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and4 = i_llvm_fpga_ffwd_source_i32_unnamed_add32_add17_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and3;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and5 = i_llvm_fpga_ffwd_source_i1_unnamed_add38_add23_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and4;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and6 = i_llvm_fpga_ffwd_source_i1_unnamed_add37_add22_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and5;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and7 = i_llvm_fpga_ffwd_source_i1_unnamed_add35_add20_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and6;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_wireValid = SE_coalesced_delay_0_0_V4 & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_and7;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2(BITJOIN,124)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_q = i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2(BITSELECT,125)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_select92_add0(BITJOIN,121)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_select92_add0_q = i_llvm_fpga_ffwd_dest_i32_select92_add0_out_dest_data_out_31_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_select92_add0(BITSELECT,122)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_select92_add0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_select92_add0_q[31:0]);

    // i_replace_phi51_add3(MUX,44)@2
    assign i_replace_phi51_add3_s = sel_for_coalesced_delay_0_c;
    always @(i_replace_phi51_add3_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_select92_add0_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_b)
    begin
        unique case (i_replace_phi51_add3_s)
            1'b0 : i_replace_phi51_add3_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_select92_add0_b;
            1'b1 : i_replace_phi51_add3_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_b;
            default : i_replace_phi51_add3_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_add33_add18(BLACKBOX,38)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_33_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add33_add18 (
        .in_predicate_in(GND_q),
        .in_src_data_in_21_0(i_replace_phi51_add3_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_add29_add2_V1),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_i32_unnamed_add33_add18_out_intel_reserved_ffwd_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add33_add18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add33_add18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,5)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add33_add18_out_intel_reserved_ffwd_21_0;

    // dupName_0_sync_out_x(GPOUT,6)@2
    assign out_inc7_i = bgTrunc_i_inc7_i_add16_sel_x_b;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_V0;

    // dupName_1_regfree_osync_x(GPOUT,7)
    assign out_intel_reserved_ffwd_22_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add34_add19_out_intel_reserved_ffwd_22_0;

    // dupName_2_regfree_osync_x(GPOUT,8)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_i1_unnamed_add35_add20_out_intel_reserved_ffwd_23_0;

    // dupName_3_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_24_0 = i_llvm_fpga_ffwd_source_i64_unnamed_add36_add21_out_intel_reserved_ffwd_24_0;

    // dupName_4_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_25_0 = i_llvm_fpga_ffwd_source_i1_unnamed_add37_add22_out_intel_reserved_ffwd_25_0;

    // dupName_5_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_26_0 = i_llvm_fpga_ffwd_source_i1_unnamed_add38_add23_out_intel_reserved_ffwd_26_0;

    // dupName_6_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_27_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add39_add24_out_intel_reserved_ffwd_27_0;

    // regfree_osync(GPOUT,87)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add32_add17_out_intel_reserved_ffwd_20_0;

    // sync_out(GPOUT,91)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
