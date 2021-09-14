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

// SystemVerilog created from add_i_sfc_logic_s_c0_in_for_cond25_preheader_s_c0_enter1533_add0
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_i_sfc_logic_s_c0_in_for_cond25_preheader_s_c0_enter1533_add0 (
    output wire [31:0] out_intel_reserved_ffwd_34_0,
    output wire [0:0] out_intel_reserved_ffwd_35_0,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [63:0] out_intel_reserved_ffwd_38_0,
    output wire [0:0] out_intel_reserved_ffwd_39_0,
    output wire [0:0] out_intel_reserved_ffwd_40_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_add44,
    output wire [0:0] out_unnamed_add64_0_tpl,
    input wire [0:0] in_c0_eni2152_0_tpl,
    input wire [0:0] in_c0_eni2152_1_tpl,
    input wire [31:0] in_c0_eni2152_2_tpl,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_44_0,
    input wire [31:0] in_intel_reserved_ffwd_45_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_sub4_i_10_i_add69_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_11_i_add74_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_12_i_add79_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_13_i_add84_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_14_i_add89_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_15_i_add94_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_16_i_add99_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_17_i_add104_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_18_i_add109_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_19_i_add114_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_1_i_add24_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_20_i_add119_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_21_i_add124_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_22_i_add129_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_23_i_add134_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_24_i_add139_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_25_i_add144_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_26_i_add149_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_27_i_add154_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_28_i_add159_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_29_i_add164_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_2_i_add29_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_30_i_add169_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_31_i_add174_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_3_i_add34_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_4_i_add39_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_5_i_add44_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_6_i_add49_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_7_i_add54_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_8_i_add59_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_9_i_add64_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_i_add18_sel_x_b;
    wire [31:0] c_i32_0202_recast_x_q;
    wire [63:0] i_idxprom14_i101_add175_sel_x_b;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [7:0] c_i8_220_q;
    wire [0:0] i_cmp27439_add10_q;
    wire [33:0] i_cmp3_i_10_i_add67_a;
    wire [33:0] i_cmp3_i_10_i_add67_b;
    logic [33:0] i_cmp3_i_10_i_add67_o;
    wire [0:0] i_cmp3_i_10_i_add67_c;
    wire [33:0] i_cmp3_i_11_i_add72_a;
    wire [33:0] i_cmp3_i_11_i_add72_b;
    logic [33:0] i_cmp3_i_11_i_add72_o;
    wire [0:0] i_cmp3_i_11_i_add72_c;
    wire [33:0] i_cmp3_i_12_i_add77_a;
    wire [33:0] i_cmp3_i_12_i_add77_b;
    logic [33:0] i_cmp3_i_12_i_add77_o;
    wire [0:0] i_cmp3_i_12_i_add77_c;
    wire [33:0] i_cmp3_i_13_i_add82_a;
    wire [33:0] i_cmp3_i_13_i_add82_b;
    logic [33:0] i_cmp3_i_13_i_add82_o;
    wire [0:0] i_cmp3_i_13_i_add82_c;
    wire [33:0] i_cmp3_i_14_i_add87_a;
    wire [33:0] i_cmp3_i_14_i_add87_b;
    logic [33:0] i_cmp3_i_14_i_add87_o;
    wire [0:0] i_cmp3_i_14_i_add87_c;
    wire [33:0] i_cmp3_i_15_i_add92_a;
    wire [33:0] i_cmp3_i_15_i_add92_b;
    logic [33:0] i_cmp3_i_15_i_add92_o;
    wire [0:0] i_cmp3_i_15_i_add92_c;
    wire [33:0] i_cmp3_i_16_i_add97_a;
    wire [33:0] i_cmp3_i_16_i_add97_b;
    logic [33:0] i_cmp3_i_16_i_add97_o;
    wire [0:0] i_cmp3_i_16_i_add97_c;
    wire [33:0] i_cmp3_i_17_i_add102_a;
    wire [33:0] i_cmp3_i_17_i_add102_b;
    logic [33:0] i_cmp3_i_17_i_add102_o;
    wire [0:0] i_cmp3_i_17_i_add102_c;
    wire [33:0] i_cmp3_i_18_i_add107_a;
    wire [33:0] i_cmp3_i_18_i_add107_b;
    logic [33:0] i_cmp3_i_18_i_add107_o;
    wire [0:0] i_cmp3_i_18_i_add107_c;
    wire [33:0] i_cmp3_i_19_i_add112_a;
    wire [33:0] i_cmp3_i_19_i_add112_b;
    logic [33:0] i_cmp3_i_19_i_add112_o;
    wire [0:0] i_cmp3_i_19_i_add112_c;
    wire [33:0] i_cmp3_i_1_i_add22_a;
    wire [33:0] i_cmp3_i_1_i_add22_b;
    logic [33:0] i_cmp3_i_1_i_add22_o;
    wire [0:0] i_cmp3_i_1_i_add22_c;
    wire [33:0] i_cmp3_i_20_i_add117_a;
    wire [33:0] i_cmp3_i_20_i_add117_b;
    logic [33:0] i_cmp3_i_20_i_add117_o;
    wire [0:0] i_cmp3_i_20_i_add117_c;
    wire [33:0] i_cmp3_i_21_i_add122_a;
    wire [33:0] i_cmp3_i_21_i_add122_b;
    logic [33:0] i_cmp3_i_21_i_add122_o;
    wire [0:0] i_cmp3_i_21_i_add122_c;
    wire [33:0] i_cmp3_i_22_i_add127_a;
    wire [33:0] i_cmp3_i_22_i_add127_b;
    logic [33:0] i_cmp3_i_22_i_add127_o;
    wire [0:0] i_cmp3_i_22_i_add127_c;
    wire [33:0] i_cmp3_i_23_i_add132_a;
    wire [33:0] i_cmp3_i_23_i_add132_b;
    logic [33:0] i_cmp3_i_23_i_add132_o;
    wire [0:0] i_cmp3_i_23_i_add132_c;
    wire [33:0] i_cmp3_i_24_i_add137_a;
    wire [33:0] i_cmp3_i_24_i_add137_b;
    logic [33:0] i_cmp3_i_24_i_add137_o;
    wire [0:0] i_cmp3_i_24_i_add137_c;
    wire [33:0] i_cmp3_i_25_i_add142_a;
    wire [33:0] i_cmp3_i_25_i_add142_b;
    logic [33:0] i_cmp3_i_25_i_add142_o;
    wire [0:0] i_cmp3_i_25_i_add142_c;
    wire [33:0] i_cmp3_i_26_i_add147_a;
    wire [33:0] i_cmp3_i_26_i_add147_b;
    logic [33:0] i_cmp3_i_26_i_add147_o;
    wire [0:0] i_cmp3_i_26_i_add147_c;
    wire [33:0] i_cmp3_i_27_i_add152_a;
    wire [33:0] i_cmp3_i_27_i_add152_b;
    logic [33:0] i_cmp3_i_27_i_add152_o;
    wire [0:0] i_cmp3_i_27_i_add152_c;
    wire [33:0] i_cmp3_i_28_i_add157_a;
    wire [33:0] i_cmp3_i_28_i_add157_b;
    logic [33:0] i_cmp3_i_28_i_add157_o;
    wire [0:0] i_cmp3_i_28_i_add157_c;
    wire [33:0] i_cmp3_i_29_i_add162_a;
    wire [33:0] i_cmp3_i_29_i_add162_b;
    logic [33:0] i_cmp3_i_29_i_add162_o;
    wire [0:0] i_cmp3_i_29_i_add162_c;
    wire [33:0] i_cmp3_i_2_i_add27_a;
    wire [33:0] i_cmp3_i_2_i_add27_b;
    logic [33:0] i_cmp3_i_2_i_add27_o;
    wire [0:0] i_cmp3_i_2_i_add27_c;
    wire [33:0] i_cmp3_i_30_i_add167_a;
    wire [33:0] i_cmp3_i_30_i_add167_b;
    logic [33:0] i_cmp3_i_30_i_add167_o;
    wire [0:0] i_cmp3_i_30_i_add167_c;
    wire [33:0] i_cmp3_i_31_i_add172_a;
    wire [33:0] i_cmp3_i_31_i_add172_b;
    logic [33:0] i_cmp3_i_31_i_add172_o;
    wire [0:0] i_cmp3_i_31_i_add172_c;
    wire [33:0] i_cmp3_i_3_i_add32_a;
    wire [33:0] i_cmp3_i_3_i_add32_b;
    logic [33:0] i_cmp3_i_3_i_add32_o;
    wire [0:0] i_cmp3_i_3_i_add32_c;
    wire [33:0] i_cmp3_i_4_i_add37_a;
    wire [33:0] i_cmp3_i_4_i_add37_b;
    logic [33:0] i_cmp3_i_4_i_add37_o;
    wire [0:0] i_cmp3_i_4_i_add37_c;
    wire [33:0] i_cmp3_i_5_i_add42_a;
    wire [33:0] i_cmp3_i_5_i_add42_b;
    logic [33:0] i_cmp3_i_5_i_add42_o;
    wire [0:0] i_cmp3_i_5_i_add42_c;
    wire [33:0] i_cmp3_i_6_i_add47_a;
    wire [33:0] i_cmp3_i_6_i_add47_b;
    logic [33:0] i_cmp3_i_6_i_add47_o;
    wire [0:0] i_cmp3_i_6_i_add47_c;
    wire [33:0] i_cmp3_i_7_i_add52_a;
    wire [33:0] i_cmp3_i_7_i_add52_b;
    logic [33:0] i_cmp3_i_7_i_add52_o;
    wire [0:0] i_cmp3_i_7_i_add52_c;
    wire [33:0] i_cmp3_i_8_i_add57_a;
    wire [33:0] i_cmp3_i_8_i_add57_b;
    logic [33:0] i_cmp3_i_8_i_add57_o;
    wire [0:0] i_cmp3_i_8_i_add57_c;
    wire [33:0] i_cmp3_i_9_i_add62_a;
    wire [33:0] i_cmp3_i_9_i_add62_b;
    logic [33:0] i_cmp3_i_9_i_add62_o;
    wire [0:0] i_cmp3_i_9_i_add62_c;
    wire [33:0] i_cmp3_i_i_add16_a;
    wire [33:0] i_cmp3_i_i_add16_b;
    logic [33:0] i_cmp3_i_i_add16_o;
    wire [0:0] i_cmp3_i_i_add16_c;
    wire [33:0] i_cmp_i65_add177_a;
    wire [33:0] i_cmp_i65_add177_b;
    logic [33:0] i_cmp_i65_add177_o;
    wire [0:0] i_cmp_i65_add177_c;
    wire [63:0] i_idxprom14_i101_add175_vt_join_q;
    wire [31:0] i_idxprom14_i101_add175_vt_select_31_b;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2444260_add12_out_dest_data_out_13_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i36_add8_out_dest_data_out_3_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_select141117_add2_out_dest_data_out_45_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_select146115_add3_out_dest_data_out_44_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_add54_add4_out_dest_data_out_7_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_add55_add6_out_dest_data_out_5_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_add56_add176_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add59_add181_out_intel_reserved_ffwd_35_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add62_add184_out_intel_reserved_ffwd_39_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add63_add185_out_intel_reserved_ffwd_40_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add57_add179_out_intel_reserved_ffwd_33_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add58_add180_out_intel_reserved_ffwd_34_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add60_add182_out_intel_reserved_ffwd_37_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_add61_add183_out_intel_reserved_ffwd_38_0;
    wire [0:0] i_phi_decision125_xor_add178_q;
    wire [0:0] i_replace_phi50_add5_s;
    reg [31:0] i_replace_phi50_add5_q;
    wire [0:0] i_replace_phi_add7_s;
    reg [31:0] i_replace_phi_add7_q;
    wire [30:0] i_shr_i_i_add15_vt_const_31_q;
    wire [31:0] i_shr_i_i_add15_vt_join_q;
    wire [0:0] i_shr_i_i_add15_vt_select_0_b;
    wire [32:0] i_sub4_i_10_i_add69_a;
    wire [32:0] i_sub4_i_10_i_add69_b;
    logic [32:0] i_sub4_i_10_i_add69_o;
    wire [32:0] i_sub4_i_10_i_add69_q;
    wire [32:0] i_sub4_i_11_i_add74_a;
    wire [32:0] i_sub4_i_11_i_add74_b;
    logic [32:0] i_sub4_i_11_i_add74_o;
    wire [32:0] i_sub4_i_11_i_add74_q;
    wire [32:0] i_sub4_i_12_i_add79_a;
    wire [32:0] i_sub4_i_12_i_add79_b;
    logic [32:0] i_sub4_i_12_i_add79_o;
    wire [32:0] i_sub4_i_12_i_add79_q;
    wire [32:0] i_sub4_i_13_i_add84_a;
    wire [32:0] i_sub4_i_13_i_add84_b;
    logic [32:0] i_sub4_i_13_i_add84_o;
    wire [32:0] i_sub4_i_13_i_add84_q;
    wire [32:0] i_sub4_i_14_i_add89_a;
    wire [32:0] i_sub4_i_14_i_add89_b;
    logic [32:0] i_sub4_i_14_i_add89_o;
    wire [32:0] i_sub4_i_14_i_add89_q;
    wire [32:0] i_sub4_i_15_i_add94_a;
    wire [32:0] i_sub4_i_15_i_add94_b;
    logic [32:0] i_sub4_i_15_i_add94_o;
    wire [32:0] i_sub4_i_15_i_add94_q;
    wire [32:0] i_sub4_i_16_i_add99_a;
    wire [32:0] i_sub4_i_16_i_add99_b;
    logic [32:0] i_sub4_i_16_i_add99_o;
    wire [32:0] i_sub4_i_16_i_add99_q;
    wire [32:0] i_sub4_i_17_i_add104_a;
    wire [32:0] i_sub4_i_17_i_add104_b;
    logic [32:0] i_sub4_i_17_i_add104_o;
    wire [32:0] i_sub4_i_17_i_add104_q;
    wire [32:0] i_sub4_i_18_i_add109_a;
    wire [32:0] i_sub4_i_18_i_add109_b;
    logic [32:0] i_sub4_i_18_i_add109_o;
    wire [32:0] i_sub4_i_18_i_add109_q;
    wire [32:0] i_sub4_i_19_i_add114_a;
    wire [32:0] i_sub4_i_19_i_add114_b;
    logic [32:0] i_sub4_i_19_i_add114_o;
    wire [32:0] i_sub4_i_19_i_add114_q;
    wire [32:0] i_sub4_i_1_i_add24_a;
    wire [32:0] i_sub4_i_1_i_add24_b;
    logic [32:0] i_sub4_i_1_i_add24_o;
    wire [32:0] i_sub4_i_1_i_add24_q;
    wire [32:0] i_sub4_i_20_i_add119_a;
    wire [32:0] i_sub4_i_20_i_add119_b;
    logic [32:0] i_sub4_i_20_i_add119_o;
    wire [32:0] i_sub4_i_20_i_add119_q;
    wire [32:0] i_sub4_i_21_i_add124_a;
    wire [32:0] i_sub4_i_21_i_add124_b;
    logic [32:0] i_sub4_i_21_i_add124_o;
    wire [32:0] i_sub4_i_21_i_add124_q;
    wire [32:0] i_sub4_i_22_i_add129_a;
    wire [32:0] i_sub4_i_22_i_add129_b;
    logic [32:0] i_sub4_i_22_i_add129_o;
    wire [32:0] i_sub4_i_22_i_add129_q;
    wire [32:0] i_sub4_i_23_i_add134_a;
    wire [32:0] i_sub4_i_23_i_add134_b;
    logic [32:0] i_sub4_i_23_i_add134_o;
    wire [32:0] i_sub4_i_23_i_add134_q;
    wire [32:0] i_sub4_i_24_i_add139_a;
    wire [32:0] i_sub4_i_24_i_add139_b;
    logic [32:0] i_sub4_i_24_i_add139_o;
    wire [32:0] i_sub4_i_24_i_add139_q;
    wire [32:0] i_sub4_i_25_i_add144_a;
    wire [32:0] i_sub4_i_25_i_add144_b;
    logic [32:0] i_sub4_i_25_i_add144_o;
    wire [32:0] i_sub4_i_25_i_add144_q;
    wire [32:0] i_sub4_i_26_i_add149_a;
    wire [32:0] i_sub4_i_26_i_add149_b;
    logic [32:0] i_sub4_i_26_i_add149_o;
    wire [32:0] i_sub4_i_26_i_add149_q;
    wire [32:0] i_sub4_i_27_i_add154_a;
    wire [32:0] i_sub4_i_27_i_add154_b;
    logic [32:0] i_sub4_i_27_i_add154_o;
    wire [32:0] i_sub4_i_27_i_add154_q;
    wire [32:0] i_sub4_i_28_i_add159_a;
    wire [32:0] i_sub4_i_28_i_add159_b;
    logic [32:0] i_sub4_i_28_i_add159_o;
    wire [32:0] i_sub4_i_28_i_add159_q;
    wire [32:0] i_sub4_i_29_i_add164_a;
    wire [32:0] i_sub4_i_29_i_add164_b;
    logic [32:0] i_sub4_i_29_i_add164_o;
    wire [32:0] i_sub4_i_29_i_add164_q;
    wire [32:0] i_sub4_i_2_i_add29_a;
    wire [32:0] i_sub4_i_2_i_add29_b;
    logic [32:0] i_sub4_i_2_i_add29_o;
    wire [32:0] i_sub4_i_2_i_add29_q;
    wire [32:0] i_sub4_i_30_i_add169_a;
    wire [32:0] i_sub4_i_30_i_add169_b;
    logic [32:0] i_sub4_i_30_i_add169_o;
    wire [32:0] i_sub4_i_30_i_add169_q;
    wire [32:0] i_sub4_i_31_i_add174_a;
    wire [32:0] i_sub4_i_31_i_add174_b;
    logic [32:0] i_sub4_i_31_i_add174_o;
    wire [32:0] i_sub4_i_31_i_add174_q;
    wire [32:0] i_sub4_i_3_i_add34_a;
    wire [32:0] i_sub4_i_3_i_add34_b;
    logic [32:0] i_sub4_i_3_i_add34_o;
    wire [32:0] i_sub4_i_3_i_add34_q;
    wire [32:0] i_sub4_i_4_i_add39_a;
    wire [32:0] i_sub4_i_4_i_add39_b;
    logic [32:0] i_sub4_i_4_i_add39_o;
    wire [32:0] i_sub4_i_4_i_add39_q;
    wire [32:0] i_sub4_i_5_i_add44_a;
    wire [32:0] i_sub4_i_5_i_add44_b;
    logic [32:0] i_sub4_i_5_i_add44_o;
    wire [32:0] i_sub4_i_5_i_add44_q;
    wire [32:0] i_sub4_i_6_i_add49_a;
    wire [32:0] i_sub4_i_6_i_add49_b;
    logic [32:0] i_sub4_i_6_i_add49_o;
    wire [32:0] i_sub4_i_6_i_add49_q;
    wire [32:0] i_sub4_i_7_i_add54_a;
    wire [32:0] i_sub4_i_7_i_add54_b;
    logic [32:0] i_sub4_i_7_i_add54_o;
    wire [32:0] i_sub4_i_7_i_add54_q;
    wire [32:0] i_sub4_i_8_i_add59_a;
    wire [32:0] i_sub4_i_8_i_add59_b;
    logic [32:0] i_sub4_i_8_i_add59_o;
    wire [32:0] i_sub4_i_8_i_add59_q;
    wire [32:0] i_sub4_i_9_i_add64_a;
    wire [32:0] i_sub4_i_9_i_add64_b;
    logic [32:0] i_sub4_i_9_i_add64_o;
    wire [32:0] i_sub4_i_9_i_add64_q;
    wire [32:0] i_sub4_i_i_add18_a;
    wire [32:0] i_sub4_i_i_add18_b;
    logic [32:0] i_sub4_i_i_add18_o;
    wire [32:0] i_sub4_i_i_add18_q;
    wire [0:0] i_unnamed_add103_s;
    reg [31:0] i_unnamed_add103_q;
    wire [0:0] i_unnamed_add108_s;
    reg [31:0] i_unnamed_add108_q;
    wire [0:0] i_unnamed_add113_s;
    reg [31:0] i_unnamed_add113_q;
    wire [0:0] i_unnamed_add118_s;
    reg [31:0] i_unnamed_add118_q;
    wire [0:0] i_unnamed_add123_s;
    reg [31:0] i_unnamed_add123_q;
    wire [0:0] i_unnamed_add128_s;
    reg [31:0] i_unnamed_add128_q;
    wire [0:0] i_unnamed_add13_q;
    wire [0:0] i_unnamed_add133_s;
    reg [31:0] i_unnamed_add133_q;
    wire [0:0] i_unnamed_add138_s;
    reg [31:0] i_unnamed_add138_q;
    wire [0:0] i_unnamed_add143_s;
    reg [31:0] i_unnamed_add143_q;
    wire [0:0] i_unnamed_add148_s;
    reg [31:0] i_unnamed_add148_q;
    wire [0:0] i_unnamed_add153_s;
    reg [31:0] i_unnamed_add153_q;
    wire [0:0] i_unnamed_add158_s;
    reg [31:0] i_unnamed_add158_q;
    wire [0:0] i_unnamed_add163_s;
    reg [31:0] i_unnamed_add163_q;
    wire [0:0] i_unnamed_add168_s;
    reg [31:0] i_unnamed_add168_q;
    wire [0:0] i_unnamed_add17_s;
    reg [31:0] i_unnamed_add17_q;
    wire [0:0] i_unnamed_add173_s;
    reg [31:0] i_unnamed_add173_q;
    wire [0:0] i_unnamed_add23_s;
    reg [31:0] i_unnamed_add23_q;
    wire [0:0] i_unnamed_add28_s;
    reg [31:0] i_unnamed_add28_q;
    wire [0:0] i_unnamed_add33_s;
    reg [31:0] i_unnamed_add33_q;
    wire [0:0] i_unnamed_add38_s;
    reg [31:0] i_unnamed_add38_q;
    wire [0:0] i_unnamed_add43_s;
    reg [31:0] i_unnamed_add43_q;
    wire [0:0] i_unnamed_add48_s;
    reg [31:0] i_unnamed_add48_q;
    wire [0:0] i_unnamed_add53_s;
    reg [31:0] i_unnamed_add53_q;
    wire [0:0] i_unnamed_add58_s;
    reg [31:0] i_unnamed_add58_q;
    wire [0:0] i_unnamed_add63_s;
    reg [31:0] i_unnamed_add63_q;
    wire [0:0] i_unnamed_add68_s;
    reg [31:0] i_unnamed_add68_q;
    wire [0:0] i_unnamed_add73_s;
    reg [31:0] i_unnamed_add73_q;
    wire [0:0] i_unnamed_add78_s;
    reg [31:0] i_unnamed_add78_q;
    wire [0:0] i_unnamed_add83_s;
    reg [31:0] i_unnamed_add83_q;
    wire [0:0] i_unnamed_add88_s;
    reg [31:0] i_unnamed_add88_q;
    wire [0:0] i_unnamed_add9_s;
    reg [31:0] i_unnamed_add9_q;
    wire [0:0] i_unnamed_add93_s;
    reg [31:0] i_unnamed_add93_q;
    wire [0:0] i_unnamed_add98_s;
    reg [31:0] i_unnamed_add98_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid381_i_shr_i_i_add0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid383_i_shr_i_i_add0_shift_x_q;
    wire [0:0] rightShiftStage0_uid385_i_shr_i_i_add0_shift_x_s;
    reg [31:0] rightShiftStage0_uid385_i_shr_i_i_add0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid386_i_shr_i_i_add0_shift_x_b;
    wire [1:0] rightShiftStage1Idx1Pad2_uid387_i_shr_i_i_add0_shift_x_q;
    wire [31:0] rightShiftStage1Idx1_uid388_i_shr_i_i_add0_shift_x_q;
    wire [0:0] rightShiftStage1_uid390_i_shr_i_i_add0_shift_x_s;
    reg [31:0] rightShiftStage1_uid390_i_shr_i_i_add0_shift_x_q;
    wire [27:0] rightShiftStage2Idx1Rng4_uid391_i_shr_i_i_add0_shift_x_b;
    wire [3:0] rightShiftStage2Idx1Pad4_uid392_i_shr_i_i_add0_shift_x_q;
    wire [31:0] rightShiftStage2Idx1_uid393_i_shr_i_i_add0_shift_x_q;
    wire [0:0] rightShiftStage2_uid395_i_shr_i_i_add0_shift_x_s;
    reg [31:0] rightShiftStage2_uid395_i_shr_i_i_add0_shift_x_q;
    wire [23:0] rightShiftStage3Idx1Rng8_uid396_i_shr_i_i_add0_shift_x_b;
    wire [7:0] rightShiftStage3Idx1Pad8_uid397_i_shr_i_i_add0_shift_x_q;
    wire [31:0] rightShiftStage3Idx1_uid398_i_shr_i_i_add0_shift_x_q;
    wire [0:0] rightShiftStage3_uid400_i_shr_i_i_add0_shift_x_s;
    reg [31:0] rightShiftStage3_uid400_i_shr_i_i_add0_shift_x_q;
    wire [15:0] rightShiftStage4Idx1Rng16_uid401_i_shr_i_i_add0_shift_x_b;
    wire [15:0] rightShiftStage4Idx1Pad16_uid402_i_shr_i_i_add0_shift_x_q;
    wire [31:0] rightShiftStage4Idx1_uid403_i_shr_i_i_add0_shift_x_q;
    wire [0:0] rightShiftStage4_uid405_i_shr_i_i_add0_shift_x_s;
    reg [31:0] rightShiftStage4_uid405_i_shr_i_i_add0_shift_x_q;
    reg [31:0] redist0_i_shr_i_i_add15_vt_join_q_1_q;
    reg [31:0] redist1_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_1_q;
    reg [31:0] redist2_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_2_q;
    reg [31:0] redist3_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_3_q;
    reg [31:0] redist4_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_4_q;
    reg [31:0] redist5_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_5_q;
    reg [31:0] redist6_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_6_q;
    reg [31:0] redist7_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_7_q;
    reg [31:0] redist8_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_8_q;
    reg [31:0] redist9_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_9_q;
    reg [31:0] redist10_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_10_q;
    reg [31:0] redist11_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_11_q;
    reg [31:0] redist12_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_12_q;
    reg [31:0] redist13_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_13_q;
    reg [31:0] redist14_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_14_q;
    reg [31:0] redist15_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_15_q;
    reg [31:0] redist16_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_16_q;
    reg [31:0] redist17_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_17_q;
    reg [31:0] redist18_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_18_q;
    reg [31:0] redist19_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_19_q;
    reg [31:0] redist20_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_20_q;
    reg [31:0] redist21_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_21_q;
    reg [31:0] redist22_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_22_q;
    reg [31:0] redist23_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_23_q;
    reg [31:0] redist24_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_24_q;
    reg [31:0] redist25_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_25_q;
    reg [31:0] redist26_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_26_q;
    reg [31:0] redist27_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_27_q;
    reg [31:0] redist28_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_28_q;
    reg [31:0] redist29_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_29_q;
    reg [31:0] redist30_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_30_q;
    reg [31:0] redist31_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_31_q;
    reg [31:0] redist32_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_32_q;
    reg [31:0] redist33_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_33_q;
    reg [31:0] redist34_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_34_q;
    reg [31:0] redist35_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_35_q;
    reg [31:0] redist36_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_36_q;
    reg [31:0] redist37_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_37_q;
    reg [31:0] redist38_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_38_q;
    reg [31:0] redist39_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_39_q;
    reg [31:0] redist40_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_40_q;
    reg [31:0] redist41_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_41_q;
    reg [31:0] redist42_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_42_q;
    reg [31:0] redist43_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_43_q;
    reg [31:0] redist44_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_44_q;
    reg [31:0] redist45_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_45_q;
    reg [31:0] redist46_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_46_q;
    reg [31:0] redist47_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_47_q;
    reg [0:0] redist48_sync_together215_aunroll_x_in_c0_eni2152_1_tpl_1_q;
    reg [31:0] redist49_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_1_q;
    reg [31:0] redist50_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_2_q;
    reg [31:0] redist51_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_3_q;
    reg [31:0] redist52_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_5_q;
    reg [31:0] redist52_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_5_delay_0;
    reg [31:0] redist53_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_6_q;
    reg [31:0] redist54_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_8_q;
    reg [31:0] redist54_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_8_delay_0;
    reg [31:0] redist55_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_9_q;
    reg [31:0] redist56_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_11_q;
    reg [31:0] redist56_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_11_delay_0;
    reg [31:0] redist57_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_12_q;
    reg [31:0] redist58_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_14_q;
    reg [31:0] redist58_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_14_delay_0;
    reg [31:0] redist59_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_16_q;
    reg [31:0] redist59_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_16_delay_0;
    reg [31:0] redist60_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_17_q;
    reg [31:0] redist61_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_19_q;
    reg [31:0] redist61_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_19_delay_0;
    reg [31:0] redist62_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_20_q;
    reg [31:0] redist63_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_22_q;
    reg [31:0] redist63_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_22_delay_0;
    reg [31:0] redist64_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_23_q;
    reg [31:0] redist65_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_25_q;
    reg [31:0] redist65_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_25_delay_0;
    reg [31:0] redist66_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_26_q;
    reg [31:0] redist67_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_28_q;
    reg [31:0] redist67_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_28_delay_0;
    reg [31:0] redist68_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_29_q;
    reg [31:0] redist69_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_31_q;
    reg [31:0] redist69_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_31_delay_0;
    reg [31:0] redist70_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_32_q;
    reg [31:0] redist71_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_34_q;
    reg [31:0] redist71_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_34_delay_0;
    reg [31:0] redist72_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_35_q;
    reg [31:0] redist73_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_37_q;
    reg [31:0] redist73_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_37_delay_0;
    reg [31:0] redist74_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_38_q;
    reg [31:0] redist75_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_40_q;
    reg [31:0] redist75_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_40_delay_0;
    reg [31:0] redist76_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_41_q;
    reg [31:0] redist77_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_43_q;
    reg [31:0] redist77_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_43_delay_0;
    reg [31:0] redist78_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_44_q;
    reg [31:0] redist79_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_46_q;
    reg [31:0] redist79_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_46_delay_0;
    reg [31:0] redist80_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_47_q;
    reg [0:0] redist81_sync_together215_aunroll_x_in_i_valid_47_q;
    reg [31:0] redist82_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist83_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist84_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q_2_q;
    reg [31:0] redist85_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist86_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist87_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q_2_q;
    reg [31:0] redist88_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist89_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist90_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q_2_q;
    reg [31:0] redist91_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist92_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist93_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist94_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist95_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q_2_q;
    reg [31:0] redist96_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist97_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist98_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist99_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist100_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist101_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist102_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist103_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist104_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist105_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist106_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist107_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist108_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist109_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist110_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist111_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist112_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist113_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist114_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist115_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist116_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_q_1_q;
    reg [31:0] redist117_bgTrunc_i_sub4_i_9_i_add64_sel_x_b_1_q;
    reg [31:0] redist118_bgTrunc_i_sub4_i_29_i_add164_sel_x_b_1_q;
    reg [31:0] redist119_bgTrunc_i_sub4_i_27_i_add154_sel_x_b_1_q;
    reg [31:0] redist120_bgTrunc_i_sub4_i_25_i_add144_sel_x_b_1_q;
    reg [31:0] redist121_bgTrunc_i_sub4_i_23_i_add134_sel_x_b_1_q;
    reg [31:0] redist122_bgTrunc_i_sub4_i_21_i_add124_sel_x_b_1_q;
    reg [31:0] redist123_bgTrunc_i_sub4_i_19_i_add114_sel_x_b_1_q;
    reg [31:0] redist124_bgTrunc_i_sub4_i_17_i_add104_sel_x_b_1_q;
    reg [31:0] redist125_bgTrunc_i_sub4_i_15_i_add94_sel_x_b_1_q;
    reg [31:0] redist126_bgTrunc_i_sub4_i_13_i_add84_sel_x_b_1_q;
    reg [31:0] redist127_bgTrunc_i_sub4_i_11_i_add74_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg10(REG,338)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg4(REG,332)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_add55_add6(BLACKBOX,236)@2
    add_i_llvm_fpga_ffwd_dest_i32_unnamed_55_add0 thei_llvm_fpga_ffwd_dest_i32_unnamed_add55_add6 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_unnamed_add55_add6_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,330)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_select146115_add3(BLACKBOX,233)@2
    add_i_llvm_fpga_ffwd_dest_i32_select146115_0 thei_llvm_fpga_ffwd_dest_i32_select146115_add3 (
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_44_0(i_llvm_fpga_ffwd_dest_i32_select146115_add3_out_dest_data_out_44_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist48_sync_together215_aunroll_x_in_c0_eni2152_1_tpl_1(DELAY,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together215_aunroll_x_in_c0_eni2152_1_tpl_1_q <= '0;
        end
        else
        begin
            redist48_sync_together215_aunroll_x_in_c0_eni2152_1_tpl_1_q <= $unsigned(in_c0_eni2152_1_tpl);
        end
    end

    // i_replace_phi_add7(MUX,247)@2
    assign i_replace_phi_add7_s = redist48_sync_together215_aunroll_x_in_c0_eni2152_1_tpl_1_q;
    always @(i_replace_phi_add7_s or i_llvm_fpga_ffwd_dest_i32_select146115_add3_out_dest_data_out_44_0 or i_llvm_fpga_ffwd_dest_i32_unnamed_add55_add6_out_dest_data_out_5_0)
    begin
        unique case (i_replace_phi_add7_s)
            1'b0 : i_replace_phi_add7_q = i_llvm_fpga_ffwd_dest_i32_select146115_add3_out_dest_data_out_44_0;
            1'b1 : i_replace_phi_add7_q = i_llvm_fpga_ffwd_dest_i32_unnamed_add55_add6_out_dest_data_out_5_0;
            default : i_replace_phi_add7_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_add58_add180(BLACKBOX,242)@2
    // out out_intel_reserved_ffwd_34_0@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_58_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add58_add180 (
        .in_predicate_in(GND_q),
        .in_src_data_in_34_0(i_replace_phi_add7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_34_0(i_llvm_fpga_ffwd_source_i32_unnamed_add58_add180_out_intel_reserved_ffwd_34_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_34_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add58_add180_out_intel_reserved_ffwd_34_0;

    // valid_fanout_reg11(REG,339)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_0202_recast_x(CONSTANT,34)
    assign c_i32_0202_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg3(REG,331)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_add54_add4(BLACKBOX,235)@2
    add_i_llvm_fpga_ffwd_dest_i32_unnamed_54_add0 thei_llvm_fpga_ffwd_dest_i32_unnamed_add54_add4 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_unnamed_add54_add4_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,329)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_select141117_add2(BLACKBOX,232)@2
    add_i_llvm_fpga_ffwd_dest_i32_select141117_0 thei_llvm_fpga_ffwd_dest_i32_select141117_add2 (
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_45_0(i_llvm_fpga_ffwd_dest_i32_select141117_add2_out_dest_data_out_45_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_replace_phi50_add5(MUX,246)@2
    assign i_replace_phi50_add5_s = redist48_sync_together215_aunroll_x_in_c0_eni2152_1_tpl_1_q;
    always @(i_replace_phi50_add5_s or i_llvm_fpga_ffwd_dest_i32_select141117_add2_out_dest_data_out_45_0 or i_llvm_fpga_ffwd_dest_i32_unnamed_add54_add4_out_dest_data_out_7_0)
    begin
        unique case (i_replace_phi50_add5_s)
            1'b0 : i_replace_phi50_add5_q = i_llvm_fpga_ffwd_dest_i32_select141117_add2_out_dest_data_out_45_0;
            1'b1 : i_replace_phi50_add5_q = i_llvm_fpga_ffwd_dest_i32_unnamed_add54_add4_out_dest_data_out_7_0;
            default : i_replace_phi50_add5_q = 32'b0;
        endcase
    end

    // valid_fanout_reg5(REG,333)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_tobool_i_i36_add8(BLACKBOX,231)@2
    add_i_llvm_fpga_ffwd_dest_i1_tobool_i_i36_0 thei_llvm_fpga_ffwd_dest_i1_tobool_i_i36_add8 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_tobool_i_i36_add8_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_add9(MUX,314)@2
    assign i_unnamed_add9_s = i_llvm_fpga_ffwd_dest_i1_tobool_i_i36_add8_out_dest_data_out_3_0;
    always @(i_unnamed_add9_s or i_replace_phi_add7_q or i_replace_phi50_add5_q)
    begin
        unique case (i_unnamed_add9_s)
            1'b0 : i_unnamed_add9_q = i_replace_phi_add7_q;
            1'b1 : i_unnamed_add9_q = i_replace_phi50_add5_q;
            default : i_unnamed_add9_q = 32'b0;
        endcase
    end

    // i_cmp27439_add10(LOGICAL,192)@2
    assign i_cmp27439_add10_q = $unsigned(i_unnamed_add9_q == c_i32_0202_recast_x_q ? 1'b1 : 1'b0);

    // valid_fanout_reg6(REG,334)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp2444260_add12(BLACKBOX,230)@2
    add_i_llvm_fpga_ffwd_dest_i1_cmp2444260_0 thei_llvm_fpga_ffwd_dest_i1_cmp2444260_add12 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i1_cmp2444260_add12_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_add13(LOGICAL,289)@2
    assign i_unnamed_add13_q = i_llvm_fpga_ffwd_dest_i1_cmp2444260_add12_out_dest_data_out_13_0 | i_cmp27439_add10_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_add59_add181(BLACKBOX,238)@2
    // out out_intel_reserved_ffwd_35_0@20000000
    add_i_llvm_fpga_ffwd_source_i1_unnamed_59_add0 thei_llvm_fpga_ffwd_source_i1_unnamed_add59_add181 (
        .in_predicate_in(GND_q),
        .in_src_data_in_35_0(i_unnamed_add13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_35_0(i_llvm_fpga_ffwd_source_i1_unnamed_add59_add181_out_intel_reserved_ffwd_35_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_35_0 = i_llvm_fpga_ffwd_source_i1_unnamed_add59_add181_out_intel_reserved_ffwd_35_0;

    // redist81_sync_together215_aunroll_x_in_i_valid_47(DELAY,487)
    dspba_delay_ver #( .width(1), .depth(47), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist81_sync_together215_aunroll_x_in_i_valid_47 ( .xin(in_i_valid), .xout(redist81_sync_together215_aunroll_x_in_i_valid_47_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg12(REG,340)@48 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist81_sync_together215_aunroll_x_in_i_valid_47_q);
        end
    end

    // valid_fanout_reg7(REG,335)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_select5658_add14(BLACKBOX,234)@2
    add_i_llvm_fpga_ffwd_dest_i32_select5658_0 thei_llvm_fpga_ffwd_dest_i32_select5658_add14 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_1(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_1_q <= '0;
        end
        else
        begin
            redist1_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_1_q <= $unsigned(i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0);
        end
    end

    // redist2_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_2(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_2_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_2_q <= $unsigned(redist1_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_1_q);
        end
    end

    // redist3_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_3(DELAY,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_3_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_3_q <= $unsigned(redist2_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_2_q);
        end
    end

    // redist4_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_4(DELAY,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_4_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_4_q <= $unsigned(redist3_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_3_q);
        end
    end

    // redist5_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_5(DELAY,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_5_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_5_q <= $unsigned(redist4_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_4_q);
        end
    end

    // redist6_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_6(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_6_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_6_q <= $unsigned(redist5_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_5_q);
        end
    end

    // redist7_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_7(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_7_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_7_q <= $unsigned(redist6_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_6_q);
        end
    end

    // redist8_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_8(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_8_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_8_q <= $unsigned(redist7_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_7_q);
        end
    end

    // redist9_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_9(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_9_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_9_q <= $unsigned(redist8_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_8_q);
        end
    end

    // redist10_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_10(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_10_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_10_q <= $unsigned(redist9_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_9_q);
        end
    end

    // redist11_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_11(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_11_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_11_q <= $unsigned(redist10_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_10_q);
        end
    end

    // redist12_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_12(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_12_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_12_q <= $unsigned(redist11_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_11_q);
        end
    end

    // redist13_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_13(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_13_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_13_q <= $unsigned(redist12_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_12_q);
        end
    end

    // redist14_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_14(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_14_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_14_q <= $unsigned(redist13_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_13_q);
        end
    end

    // redist15_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_15(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_15_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_15_q <= $unsigned(redist14_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_14_q);
        end
    end

    // redist16_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_16(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_16_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_16_q <= $unsigned(redist15_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_15_q);
        end
    end

    // redist17_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_17(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_17_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_17_q <= $unsigned(redist16_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_16_q);
        end
    end

    // redist18_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_18(DELAY,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_18_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_18_q <= $unsigned(redist17_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_17_q);
        end
    end

    // redist19_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_19(DELAY,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_19_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_19_q <= $unsigned(redist18_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_18_q);
        end
    end

    // redist20_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_20(DELAY,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_20_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_20_q <= $unsigned(redist19_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_19_q);
        end
    end

    // redist21_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_21(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_21_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_21_q <= $unsigned(redist20_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_20_q);
        end
    end

    // redist22_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_22(DELAY,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_22_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_22_q <= $unsigned(redist21_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_21_q);
        end
    end

    // redist23_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_23(DELAY,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_23_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_23_q <= $unsigned(redist22_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_22_q);
        end
    end

    // redist24_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_24(DELAY,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_24_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_24_q <= $unsigned(redist23_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_23_q);
        end
    end

    // redist25_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_25(DELAY,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_25_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_25_q <= $unsigned(redist24_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_24_q);
        end
    end

    // redist26_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_26(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_26_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_26_q <= $unsigned(redist25_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_25_q);
        end
    end

    // redist27_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_27(DELAY,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_27_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_27_q <= $unsigned(redist26_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_26_q);
        end
    end

    // redist28_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_28(DELAY,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_28_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_28_q <= $unsigned(redist27_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_27_q);
        end
    end

    // redist29_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_29(DELAY,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_29_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_29_q <= $unsigned(redist28_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_28_q);
        end
    end

    // redist30_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_30(DELAY,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_30_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_30_q <= $unsigned(redist29_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_29_q);
        end
    end

    // redist31_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_31(DELAY,437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_31_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_31_q <= $unsigned(redist30_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_30_q);
        end
    end

    // redist32_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_32(DELAY,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_32_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_32_q <= $unsigned(redist31_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_31_q);
        end
    end

    // redist33_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_33(DELAY,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_33_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_33_q <= $unsigned(redist32_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_32_q);
        end
    end

    // redist34_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_34(DELAY,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_34_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_34_q <= $unsigned(redist33_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_33_q);
        end
    end

    // redist35_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_35(DELAY,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_35_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_35_q <= $unsigned(redist34_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_34_q);
        end
    end

    // redist36_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_36(DELAY,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_36_q <= '0;
        end
        else
        begin
            redist36_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_36_q <= $unsigned(redist35_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_35_q);
        end
    end

    // redist37_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_37(DELAY,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_37_q <= '0;
        end
        else
        begin
            redist37_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_37_q <= $unsigned(redist36_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_36_q);
        end
    end

    // redist38_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_38(DELAY,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_38_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_38_q <= $unsigned(redist37_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_37_q);
        end
    end

    // redist39_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_39(DELAY,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_39_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_39_q <= $unsigned(redist38_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_38_q);
        end
    end

    // redist40_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_40(DELAY,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_40_q <= '0;
        end
        else
        begin
            redist40_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_40_q <= $unsigned(redist39_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_39_q);
        end
    end

    // redist41_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_41(DELAY,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_41_q <= '0;
        end
        else
        begin
            redist41_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_41_q <= $unsigned(redist40_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_40_q);
        end
    end

    // redist42_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_42(DELAY,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_42_q <= '0;
        end
        else
        begin
            redist42_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_42_q <= $unsigned(redist41_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_41_q);
        end
    end

    // redist43_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_43(DELAY,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_43_q <= '0;
        end
        else
        begin
            redist43_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_43_q <= $unsigned(redist42_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_42_q);
        end
    end

    // redist44_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_44(DELAY,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_44_q <= '0;
        end
        else
        begin
            redist44_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_44_q <= $unsigned(redist43_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_43_q);
        end
    end

    // redist45_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_45(DELAY,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_45_q <= '0;
        end
        else
        begin
            redist45_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_45_q <= $unsigned(redist44_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_44_q);
        end
    end

    // redist46_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_46(DELAY,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_46_q <= '0;
        end
        else
        begin
            redist46_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_46_q <= $unsigned(redist45_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_45_q);
        end
    end

    // redist47_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_47(DELAY,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_47_q <= '0;
        end
        else
        begin
            redist47_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_47_q <= $unsigned(redist46_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_46_q);
        end
    end

    // c_i8_220(CONSTANT,191)
    assign c_i8_220_q = $unsigned(8'b00000010);

    // i_shr_i_i_add15_vt_const_31(CONSTANT,248)
    assign i_shr_i_i_add15_vt_const_31_q = $unsigned(31'b0000000000000000000000000000000);

    // rightShiftStage4Idx1Pad16_uid402_i_shr_i_i_add0_shift_x(CONSTANT,401)
    assign rightShiftStage4Idx1Pad16_uid402_i_shr_i_i_add0_shift_x_q = $unsigned(16'b0000000000000000);

    // rightShiftStage4Idx1Rng16_uid401_i_shr_i_i_add0_shift_x(BITSELECT,400)@2
    assign rightShiftStage4Idx1Rng16_uid401_i_shr_i_i_add0_shift_x_b = rightShiftStage3_uid400_i_shr_i_i_add0_shift_x_q[31:16];

    // rightShiftStage4Idx1_uid403_i_shr_i_i_add0_shift_x(BITJOIN,402)@2
    assign rightShiftStage4Idx1_uid403_i_shr_i_i_add0_shift_x_q = {rightShiftStage4Idx1Pad16_uid402_i_shr_i_i_add0_shift_x_q, rightShiftStage4Idx1Rng16_uid401_i_shr_i_i_add0_shift_x_b};

    // rightShiftStage3Idx1Pad8_uid397_i_shr_i_i_add0_shift_x(CONSTANT,396)
    assign rightShiftStage3Idx1Pad8_uid397_i_shr_i_i_add0_shift_x_q = $unsigned(8'b00000000);

    // rightShiftStage3Idx1Rng8_uid396_i_shr_i_i_add0_shift_x(BITSELECT,395)@2
    assign rightShiftStage3Idx1Rng8_uid396_i_shr_i_i_add0_shift_x_b = rightShiftStage2_uid395_i_shr_i_i_add0_shift_x_q[31:8];

    // rightShiftStage3Idx1_uid398_i_shr_i_i_add0_shift_x(BITJOIN,397)@2
    assign rightShiftStage3Idx1_uid398_i_shr_i_i_add0_shift_x_q = {rightShiftStage3Idx1Pad8_uid397_i_shr_i_i_add0_shift_x_q, rightShiftStage3Idx1Rng8_uid396_i_shr_i_i_add0_shift_x_b};

    // rightShiftStage2Idx1Pad4_uid392_i_shr_i_i_add0_shift_x(CONSTANT,391)
    assign rightShiftStage2Idx1Pad4_uid392_i_shr_i_i_add0_shift_x_q = $unsigned(4'b0000);

    // rightShiftStage2Idx1Rng4_uid391_i_shr_i_i_add0_shift_x(BITSELECT,390)@2
    assign rightShiftStage2Idx1Rng4_uid391_i_shr_i_i_add0_shift_x_b = rightShiftStage1_uid390_i_shr_i_i_add0_shift_x_q[31:4];

    // rightShiftStage2Idx1_uid393_i_shr_i_i_add0_shift_x(BITJOIN,392)@2
    assign rightShiftStage2Idx1_uid393_i_shr_i_i_add0_shift_x_q = {rightShiftStage2Idx1Pad4_uid392_i_shr_i_i_add0_shift_x_q, rightShiftStage2Idx1Rng4_uid391_i_shr_i_i_add0_shift_x_b};

    // rightShiftStage1Idx1Pad2_uid387_i_shr_i_i_add0_shift_x(CONSTANT,386)
    assign rightShiftStage1Idx1Pad2_uid387_i_shr_i_i_add0_shift_x_q = $unsigned(2'b00);

    // rightShiftStage1Idx1Rng2_uid386_i_shr_i_i_add0_shift_x(BITSELECT,385)@2
    assign rightShiftStage1Idx1Rng2_uid386_i_shr_i_i_add0_shift_x_b = rightShiftStage0_uid385_i_shr_i_i_add0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid388_i_shr_i_i_add0_shift_x(BITJOIN,387)@2
    assign rightShiftStage1Idx1_uid388_i_shr_i_i_add0_shift_x_q = {rightShiftStage1Idx1Pad2_uid387_i_shr_i_i_add0_shift_x_q, rightShiftStage1Idx1Rng2_uid386_i_shr_i_i_add0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid381_i_shr_i_i_add0_shift_x(BITSELECT,380)@2
    assign rightShiftStage0Idx1Rng1_uid381_i_shr_i_i_add0_shift_x_b = redist49_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_1_q[31:1];

    // rightShiftStage0Idx1_uid383_i_shr_i_i_add0_shift_x(BITJOIN,382)@2
    assign rightShiftStage0Idx1_uid383_i_shr_i_i_add0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid381_i_shr_i_i_add0_shift_x_b};

    // redist49_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_1(DELAY,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_1_q <= '0;
        end
        else
        begin
            redist49_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_1_q <= $unsigned(in_c0_eni2152_2_tpl);
        end
    end

    // rightShiftStage0_uid385_i_shr_i_i_add0_shift_x(MUX,384)@2
    assign rightShiftStage0_uid385_i_shr_i_i_add0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid385_i_shr_i_i_add0_shift_x_s or redist49_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_1_q or rightShiftStage0Idx1_uid383_i_shr_i_i_add0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid385_i_shr_i_i_add0_shift_x_s)
            1'b0 : rightShiftStage0_uid385_i_shr_i_i_add0_shift_x_q = redist49_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_1_q;
            1'b1 : rightShiftStage0_uid385_i_shr_i_i_add0_shift_x_q = rightShiftStage0Idx1_uid383_i_shr_i_i_add0_shift_x_q;
            default : rightShiftStage0_uid385_i_shr_i_i_add0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid390_i_shr_i_i_add0_shift_x(MUX,389)@2
    assign rightShiftStage1_uid390_i_shr_i_i_add0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid390_i_shr_i_i_add0_shift_x_s or rightShiftStage0_uid385_i_shr_i_i_add0_shift_x_q or rightShiftStage1Idx1_uid388_i_shr_i_i_add0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid390_i_shr_i_i_add0_shift_x_s)
            1'b0 : rightShiftStage1_uid390_i_shr_i_i_add0_shift_x_q = rightShiftStage0_uid385_i_shr_i_i_add0_shift_x_q;
            1'b1 : rightShiftStage1_uid390_i_shr_i_i_add0_shift_x_q = rightShiftStage1Idx1_uid388_i_shr_i_i_add0_shift_x_q;
            default : rightShiftStage1_uid390_i_shr_i_i_add0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid395_i_shr_i_i_add0_shift_x(MUX,394)@2
    assign rightShiftStage2_uid395_i_shr_i_i_add0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid395_i_shr_i_i_add0_shift_x_s or rightShiftStage1_uid390_i_shr_i_i_add0_shift_x_q or rightShiftStage2Idx1_uid393_i_shr_i_i_add0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid395_i_shr_i_i_add0_shift_x_s)
            1'b0 : rightShiftStage2_uid395_i_shr_i_i_add0_shift_x_q = rightShiftStage1_uid390_i_shr_i_i_add0_shift_x_q;
            1'b1 : rightShiftStage2_uid395_i_shr_i_i_add0_shift_x_q = rightShiftStage2Idx1_uid393_i_shr_i_i_add0_shift_x_q;
            default : rightShiftStage2_uid395_i_shr_i_i_add0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid400_i_shr_i_i_add0_shift_x(MUX,399)@2
    assign rightShiftStage3_uid400_i_shr_i_i_add0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid400_i_shr_i_i_add0_shift_x_s or rightShiftStage2_uid395_i_shr_i_i_add0_shift_x_q or rightShiftStage3Idx1_uid398_i_shr_i_i_add0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid400_i_shr_i_i_add0_shift_x_s)
            1'b0 : rightShiftStage3_uid400_i_shr_i_i_add0_shift_x_q = rightShiftStage2_uid395_i_shr_i_i_add0_shift_x_q;
            1'b1 : rightShiftStage3_uid400_i_shr_i_i_add0_shift_x_q = rightShiftStage3Idx1_uid398_i_shr_i_i_add0_shift_x_q;
            default : rightShiftStage3_uid400_i_shr_i_i_add0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage4_uid405_i_shr_i_i_add0_shift_x(MUX,404)@2
    assign rightShiftStage4_uid405_i_shr_i_i_add0_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid405_i_shr_i_i_add0_shift_x_s or rightShiftStage3_uid400_i_shr_i_i_add0_shift_x_q or rightShiftStage4Idx1_uid403_i_shr_i_i_add0_shift_x_q)
    begin
        unique case (rightShiftStage4_uid405_i_shr_i_i_add0_shift_x_s)
            1'b0 : rightShiftStage4_uid405_i_shr_i_i_add0_shift_x_q = rightShiftStage3_uid400_i_shr_i_i_add0_shift_x_q;
            1'b1 : rightShiftStage4_uid405_i_shr_i_i_add0_shift_x_q = rightShiftStage4Idx1_uid403_i_shr_i_i_add0_shift_x_q;
            default : rightShiftStage4_uid405_i_shr_i_i_add0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr_i_i_add15_vt_select_0(BITSELECT,250)@2
    assign i_shr_i_i_add15_vt_select_0_b = rightShiftStage4_uid405_i_shr_i_i_add0_shift_x_q[0:0];

    // i_shr_i_i_add15_vt_join(BITJOIN,249)@2
    assign i_shr_i_i_add15_vt_join_q = {i_shr_i_i_add15_vt_const_31_q, i_shr_i_i_add15_vt_select_0_b};

    // i_cmp3_i_i_add16(COMPARE,224)@2
    assign i_cmp3_i_i_add16_a = {2'b00, i_shr_i_i_add15_vt_join_q};
    assign i_cmp3_i_i_add16_b = {2'b00, i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0};
    assign i_cmp3_i_i_add16_o = $unsigned(i_cmp3_i_i_add16_a) - $unsigned(i_cmp3_i_i_add16_b);
    assign i_cmp3_i_i_add16_c[0] = i_cmp3_i_i_add16_o[33];

    // i_unnamed_add17(MUX,298)@2 + 1
    assign i_unnamed_add17_s = i_cmp3_i_i_add16_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add17_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add17_s)
                1'b0 : i_unnamed_add17_q <= i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0;
                1'b1 : i_unnamed_add17_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add17_q <= 32'b0;
            endcase
        end
    end

    // redist0_i_shr_i_i_add15_vt_join_q_1(DELAY,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_shr_i_i_add15_vt_join_q_1_q <= '0;
        end
        else
        begin
            redist0_i_shr_i_i_add15_vt_join_q_1_q <= $unsigned(i_shr_i_i_add15_vt_join_q);
        end
    end

    // i_sub4_i_i_add18(SUB,282)@3
    assign i_sub4_i_i_add18_a = {1'b0, redist0_i_shr_i_i_add15_vt_join_q_1_q};
    assign i_sub4_i_i_add18_b = {1'b0, i_unnamed_add17_q};
    assign i_sub4_i_i_add18_o = $unsigned(i_sub4_i_i_add18_a) - $unsigned(i_sub4_i_i_add18_b);
    assign i_sub4_i_i_add18_q = i_sub4_i_i_add18_o[32:0];

    // bgTrunc_i_sub4_i_i_add18_sel_x(BITSELECT,33)@3
    assign bgTrunc_i_sub4_i_i_add18_sel_x_b = $unsigned(i_sub4_i_i_add18_q[31:0]);

    // redist50_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_2(DELAY,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_2_q <= '0;
        end
        else
        begin
            redist50_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_2_q <= $unsigned(redist49_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_1_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,73)@3
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_i_add18_sel_x_b, redist50_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_2_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,72)@3
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_a[30:30]};

    // i_cmp3_i_1_i_add22(COMPARE,203)@3 + 1
    assign i_cmp3_i_1_i_add22_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_1_i_add22_b = {2'b00, redist1_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_1_i_add22_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_1_i_add22_o <= $unsigned(i_cmp3_i_1_i_add22_a) - $unsigned(i_cmp3_i_1_i_add22_b);
        end
    end
    assign i_cmp3_i_1_i_add22_c[0] = i_cmp3_i_1_i_add22_o[33];

    // i_unnamed_add23(MUX,300)@4
    assign i_unnamed_add23_s = i_cmp3_i_1_i_add22_c;
    always @(i_unnamed_add23_s or redist2_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_2_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add23_s)
            1'b0 : i_unnamed_add23_q = redist2_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_2_q;
            1'b1 : i_unnamed_add23_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add23_q = 32'b0;
        endcase
    end

    // redist106_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_q_1(DELAY,512)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist106_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist106_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_1_i_add24(SUB,261)@4
    assign i_sub4_i_1_i_add24_a = {1'b0, redist106_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_1_i_add24_b = {1'b0, i_unnamed_add23_q};
    assign i_sub4_i_1_i_add24_o = $unsigned(i_sub4_i_1_i_add24_a) - $unsigned(i_sub4_i_1_i_add24_b);
    assign i_sub4_i_1_i_add24_q = i_sub4_i_1_i_add24_o[32:0];

    // bgTrunc_i_sub4_i_1_i_add24_sel_x(BITSELECT,12)@4
    assign bgTrunc_i_sub4_i_1_i_add24_sel_x_b = $unsigned(i_sub4_i_1_i_add24_q[31:0]);

    // redist51_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_3(DELAY,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_3_q <= '0;
        end
        else
        begin
            redist51_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_3_q <= $unsigned(redist50_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_2_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,106)@4
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_1_i_add24_sel_x_b, redist51_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_3_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,105)@4
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_a[29:29]};

    // redist94_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q_1(DELAY,500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist94_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist94_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_cmp3_i_2_i_add27(COMPARE,214)@5
    assign i_cmp3_i_2_i_add27_a = {2'b00, redist94_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_cmp3_i_2_i_add27_b = {2'b00, redist3_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_3_q};
    assign i_cmp3_i_2_i_add27_o = $unsigned(i_cmp3_i_2_i_add27_a) - $unsigned(i_cmp3_i_2_i_add27_b);
    assign i_cmp3_i_2_i_add27_c[0] = i_cmp3_i_2_i_add27_o[33];

    // i_unnamed_add28(MUX,301)@5 + 1
    assign i_unnamed_add28_s = i_cmp3_i_2_i_add27_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add28_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add28_s)
                1'b0 : i_unnamed_add28_q <= redist3_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_3_q;
                1'b1 : i_unnamed_add28_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add28_q <= 32'b0;
            endcase
        end
    end

    // redist95_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q_2(DELAY,501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q_2_q <= '0;
        end
        else
        begin
            redist95_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q_2_q <= $unsigned(redist94_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q_1_q);
        end
    end

    // i_sub4_i_2_i_add29(SUB,272)@6
    assign i_sub4_i_2_i_add29_a = {1'b0, redist95_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_add0_NO_NAME_x_q_2_q};
    assign i_sub4_i_2_i_add29_b = {1'b0, i_unnamed_add28_q};
    assign i_sub4_i_2_i_add29_o = $unsigned(i_sub4_i_2_i_add29_a) - $unsigned(i_sub4_i_2_i_add29_b);
    assign i_sub4_i_2_i_add29_q = i_sub4_i_2_i_add29_o[32:0];

    // bgTrunc_i_sub4_i_2_i_add29_sel_x(BITSELECT,23)@6
    assign bgTrunc_i_sub4_i_2_i_add29_sel_x_b = $unsigned(i_sub4_i_2_i_add29_q[31:0]);

    // redist52_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_5(DELAY,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_5_delay_0 <= '0;
            redist52_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_5_q <= '0;
        end
        else
        begin
            redist52_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_5_delay_0 <= $unsigned(redist51_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_3_q);
            redist52_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_5_q <= redist52_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_5_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,115)@6
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_2_i_add29_sel_x_b, redist52_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_5_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,114)@6
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_a[28:28]};

    // i_cmp3_i_3_i_add32(COMPARE,217)@6 + 1
    assign i_cmp3_i_3_i_add32_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_3_i_add32_b = {2'b00, redist4_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_4_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_3_i_add32_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_3_i_add32_o <= $unsigned(i_cmp3_i_3_i_add32_a) - $unsigned(i_cmp3_i_3_i_add32_b);
        end
    end
    assign i_cmp3_i_3_i_add32_c[0] = i_cmp3_i_3_i_add32_o[33];

    // i_unnamed_add33(MUX,302)@7
    assign i_unnamed_add33_s = i_cmp3_i_3_i_add32_c;
    always @(i_unnamed_add33_s or redist5_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_5_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add33_s)
            1'b0 : i_unnamed_add33_q = redist5_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_5_q;
            1'b1 : i_unnamed_add33_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add33_q = 32'b0;
        endcase
    end

    // redist91_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_q_1(DELAY,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist91_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist91_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_3_i_add34(SUB,275)@7
    assign i_sub4_i_3_i_add34_a = {1'b0, redist91_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_3_i_add34_b = {1'b0, i_unnamed_add33_q};
    assign i_sub4_i_3_i_add34_o = $unsigned(i_sub4_i_3_i_add34_a) - $unsigned(i_sub4_i_3_i_add34_b);
    assign i_sub4_i_3_i_add34_q = i_sub4_i_3_i_add34_o[32:0];

    // bgTrunc_i_sub4_i_3_i_add34_sel_x(BITSELECT,26)@7
    assign bgTrunc_i_sub4_i_3_i_add34_sel_x_b = $unsigned(i_sub4_i_3_i_add34_q[31:0]);

    // redist53_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_6(DELAY,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_6_q <= '0;
        end
        else
        begin
            redist53_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_6_q <= $unsigned(redist52_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_5_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,118)@7
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_3_i_add34_sel_x_b, redist53_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_6_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,117)@7
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_a[27:27]};

    // redist89_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q_1(DELAY,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist89_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_cmp3_i_4_i_add37(COMPARE,218)@8
    assign i_cmp3_i_4_i_add37_a = {2'b00, redist89_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_cmp3_i_4_i_add37_b = {2'b00, redist6_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_6_q};
    assign i_cmp3_i_4_i_add37_o = $unsigned(i_cmp3_i_4_i_add37_a) - $unsigned(i_cmp3_i_4_i_add37_b);
    assign i_cmp3_i_4_i_add37_c[0] = i_cmp3_i_4_i_add37_o[33];

    // i_unnamed_add38(MUX,303)@8 + 1
    assign i_unnamed_add38_s = i_cmp3_i_4_i_add37_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add38_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add38_s)
                1'b0 : i_unnamed_add38_q <= redist6_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_6_q;
                1'b1 : i_unnamed_add38_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add38_q <= 32'b0;
            endcase
        end
    end

    // redist90_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q_2(DELAY,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist90_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q_2_q <= '0;
        end
        else
        begin
            redist90_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q_2_q <= $unsigned(redist89_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q_1_q);
        end
    end

    // i_sub4_i_4_i_add39(SUB,276)@9
    assign i_sub4_i_4_i_add39_a = {1'b0, redist90_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_add0_NO_NAME_x_q_2_q};
    assign i_sub4_i_4_i_add39_b = {1'b0, i_unnamed_add38_q};
    assign i_sub4_i_4_i_add39_o = $unsigned(i_sub4_i_4_i_add39_a) - $unsigned(i_sub4_i_4_i_add39_b);
    assign i_sub4_i_4_i_add39_q = i_sub4_i_4_i_add39_o[32:0];

    // bgTrunc_i_sub4_i_4_i_add39_sel_x(BITSELECT,27)@9
    assign bgTrunc_i_sub4_i_4_i_add39_sel_x_b = $unsigned(i_sub4_i_4_i_add39_q[31:0]);

    // redist54_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_8(DELAY,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_8_delay_0 <= '0;
            redist54_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_8_q <= '0;
        end
        else
        begin
            redist54_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_8_delay_0 <= $unsigned(redist53_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_6_q);
            redist54_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_8_q <= redist54_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_8_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,121)@9
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_4_i_add39_sel_x_b, redist54_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_8_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,120)@9
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_a[26:26]};

    // i_cmp3_i_5_i_add42(COMPARE,219)@9 + 1
    assign i_cmp3_i_5_i_add42_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_5_i_add42_b = {2'b00, redist7_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_7_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_5_i_add42_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_5_i_add42_o <= $unsigned(i_cmp3_i_5_i_add42_a) - $unsigned(i_cmp3_i_5_i_add42_b);
        end
    end
    assign i_cmp3_i_5_i_add42_c[0] = i_cmp3_i_5_i_add42_o[33];

    // i_unnamed_add43(MUX,304)@10
    assign i_unnamed_add43_s = i_cmp3_i_5_i_add42_c;
    always @(i_unnamed_add43_s or redist8_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_8_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add43_s)
            1'b0 : i_unnamed_add43_q = redist8_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_8_q;
            1'b1 : i_unnamed_add43_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add43_q = 32'b0;
        endcase
    end

    // redist88_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_q_1(DELAY,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist88_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_5_i_add44(SUB,277)@10
    assign i_sub4_i_5_i_add44_a = {1'b0, redist88_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_5_i_add44_b = {1'b0, i_unnamed_add43_q};
    assign i_sub4_i_5_i_add44_o = $unsigned(i_sub4_i_5_i_add44_a) - $unsigned(i_sub4_i_5_i_add44_b);
    assign i_sub4_i_5_i_add44_q = i_sub4_i_5_i_add44_o[32:0];

    // bgTrunc_i_sub4_i_5_i_add44_sel_x(BITSELECT,28)@10
    assign bgTrunc_i_sub4_i_5_i_add44_sel_x_b = $unsigned(i_sub4_i_5_i_add44_q[31:0]);

    // redist55_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_9(DELAY,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_9_q <= '0;
        end
        else
        begin
            redist55_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_9_q <= $unsigned(redist54_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_8_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,124)@10
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_5_i_add44_sel_x_b, redist55_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_9_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,123)@10
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_a[25:25]};

    // redist86_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q_1(DELAY,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist86_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_cmp3_i_6_i_add47(COMPARE,220)@11
    assign i_cmp3_i_6_i_add47_a = {2'b00, redist86_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_cmp3_i_6_i_add47_b = {2'b00, redist9_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_9_q};
    assign i_cmp3_i_6_i_add47_o = $unsigned(i_cmp3_i_6_i_add47_a) - $unsigned(i_cmp3_i_6_i_add47_b);
    assign i_cmp3_i_6_i_add47_c[0] = i_cmp3_i_6_i_add47_o[33];

    // i_unnamed_add48(MUX,305)@11 + 1
    assign i_unnamed_add48_s = i_cmp3_i_6_i_add47_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add48_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add48_s)
                1'b0 : i_unnamed_add48_q <= redist9_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_9_q;
                1'b1 : i_unnamed_add48_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add48_q <= 32'b0;
            endcase
        end
    end

    // redist87_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q_2(DELAY,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q_2_q <= '0;
        end
        else
        begin
            redist87_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q_2_q <= $unsigned(redist86_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q_1_q);
        end
    end

    // i_sub4_i_6_i_add49(SUB,278)@12
    assign i_sub4_i_6_i_add49_a = {1'b0, redist87_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_add0_NO_NAME_x_q_2_q};
    assign i_sub4_i_6_i_add49_b = {1'b0, i_unnamed_add48_q};
    assign i_sub4_i_6_i_add49_o = $unsigned(i_sub4_i_6_i_add49_a) - $unsigned(i_sub4_i_6_i_add49_b);
    assign i_sub4_i_6_i_add49_q = i_sub4_i_6_i_add49_o[32:0];

    // bgTrunc_i_sub4_i_6_i_add49_sel_x(BITSELECT,29)@12
    assign bgTrunc_i_sub4_i_6_i_add49_sel_x_b = $unsigned(i_sub4_i_6_i_add49_q[31:0]);

    // redist56_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_11(DELAY,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_11_delay_0 <= '0;
            redist56_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_11_q <= '0;
        end
        else
        begin
            redist56_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_11_delay_0 <= $unsigned(redist55_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_9_q);
            redist56_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_11_q <= redist56_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_11_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,127)@12
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_6_i_add49_sel_x_b, redist56_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_11_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,126)@12
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_a[24:24]};

    // i_cmp3_i_7_i_add52(COMPARE,221)@12 + 1
    assign i_cmp3_i_7_i_add52_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_7_i_add52_b = {2'b00, redist10_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_10_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_7_i_add52_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_7_i_add52_o <= $unsigned(i_cmp3_i_7_i_add52_a) - $unsigned(i_cmp3_i_7_i_add52_b);
        end
    end
    assign i_cmp3_i_7_i_add52_c[0] = i_cmp3_i_7_i_add52_o[33];

    // i_unnamed_add53(MUX,306)@13
    assign i_unnamed_add53_s = i_cmp3_i_7_i_add52_c;
    always @(i_unnamed_add53_s or redist11_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_11_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add53_s)
            1'b0 : i_unnamed_add53_q = redist11_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_11_q;
            1'b1 : i_unnamed_add53_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add53_q = 32'b0;
        endcase
    end

    // redist85_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_q_1(DELAY,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist85_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_7_i_add54(SUB,279)@13
    assign i_sub4_i_7_i_add54_a = {1'b0, redist85_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_7_i_add54_b = {1'b0, i_unnamed_add53_q};
    assign i_sub4_i_7_i_add54_o = $unsigned(i_sub4_i_7_i_add54_a) - $unsigned(i_sub4_i_7_i_add54_b);
    assign i_sub4_i_7_i_add54_q = i_sub4_i_7_i_add54_o[32:0];

    // bgTrunc_i_sub4_i_7_i_add54_sel_x(BITSELECT,30)@13
    assign bgTrunc_i_sub4_i_7_i_add54_sel_x_b = $unsigned(i_sub4_i_7_i_add54_q[31:0]);

    // redist57_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_12(DELAY,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_12_q <= '0;
        end
        else
        begin
            redist57_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_12_q <= $unsigned(redist56_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_11_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,130)@13
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_7_i_add54_sel_x_b, redist57_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_12_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,129)@13
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_a[23:23]};

    // redist83_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q_1(DELAY,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist83_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_cmp3_i_8_i_add57(COMPARE,222)@14
    assign i_cmp3_i_8_i_add57_a = {2'b00, redist83_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_cmp3_i_8_i_add57_b = {2'b00, redist12_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_12_q};
    assign i_cmp3_i_8_i_add57_o = $unsigned(i_cmp3_i_8_i_add57_a) - $unsigned(i_cmp3_i_8_i_add57_b);
    assign i_cmp3_i_8_i_add57_c[0] = i_cmp3_i_8_i_add57_o[33];

    // i_unnamed_add58(MUX,307)@14 + 1
    assign i_unnamed_add58_s = i_cmp3_i_8_i_add57_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add58_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add58_s)
                1'b0 : i_unnamed_add58_q <= redist12_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_12_q;
                1'b1 : i_unnamed_add58_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add58_q <= 32'b0;
            endcase
        end
    end

    // redist84_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q_2(DELAY,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q_2_q <= '0;
        end
        else
        begin
            redist84_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q_2_q <= $unsigned(redist83_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q_1_q);
        end
    end

    // i_sub4_i_8_i_add59(SUB,280)@15
    assign i_sub4_i_8_i_add59_a = {1'b0, redist84_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_add0_NO_NAME_x_q_2_q};
    assign i_sub4_i_8_i_add59_b = {1'b0, i_unnamed_add58_q};
    assign i_sub4_i_8_i_add59_o = $unsigned(i_sub4_i_8_i_add59_a) - $unsigned(i_sub4_i_8_i_add59_b);
    assign i_sub4_i_8_i_add59_q = i_sub4_i_8_i_add59_o[32:0];

    // bgTrunc_i_sub4_i_8_i_add59_sel_x(BITSELECT,31)@15
    assign bgTrunc_i_sub4_i_8_i_add59_sel_x_b = $unsigned(i_sub4_i_8_i_add59_q[31:0]);

    // redist58_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_14(DELAY,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_14_delay_0 <= '0;
            redist58_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_14_q <= '0;
        end
        else
        begin
            redist58_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_14_delay_0 <= $unsigned(redist57_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_12_q);
            redist58_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_14_q <= redist58_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_14_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,133)@15
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_8_i_add59_sel_x_b, redist58_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_14_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,132)@15
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_a[22:22]};

    // i_cmp3_i_9_i_add62(COMPARE,223)@15 + 1
    assign i_cmp3_i_9_i_add62_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_9_i_add62_b = {2'b00, redist13_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_13_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_9_i_add62_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_9_i_add62_o <= $unsigned(i_cmp3_i_9_i_add62_a) - $unsigned(i_cmp3_i_9_i_add62_b);
        end
    end
    assign i_cmp3_i_9_i_add62_c[0] = i_cmp3_i_9_i_add62_o[33];

    // i_unnamed_add63(MUX,308)@16
    assign i_unnamed_add63_s = i_cmp3_i_9_i_add62_c;
    always @(i_unnamed_add63_s or redist14_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_14_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add63_s)
            1'b0 : i_unnamed_add63_q = redist14_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_14_q;
            1'b1 : i_unnamed_add63_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add63_q = 32'b0;
        endcase
    end

    // redist82_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_q_1(DELAY,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist82_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_9_i_add64(SUB,281)@16
    assign i_sub4_i_9_i_add64_a = {1'b0, redist82_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_9_i_add64_b = {1'b0, i_unnamed_add63_q};
    assign i_sub4_i_9_i_add64_o = $unsigned(i_sub4_i_9_i_add64_a) - $unsigned(i_sub4_i_9_i_add64_b);
    assign i_sub4_i_9_i_add64_q = i_sub4_i_9_i_add64_o[32:0];

    // bgTrunc_i_sub4_i_9_i_add64_sel_x(BITSELECT,32)@16
    assign bgTrunc_i_sub4_i_9_i_add64_sel_x_b = $unsigned(i_sub4_i_9_i_add64_q[31:0]);

    // redist117_bgTrunc_i_sub4_i_9_i_add64_sel_x_b_1(DELAY,523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist117_bgTrunc_i_sub4_i_9_i_add64_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist117_bgTrunc_i_sub4_i_9_i_add64_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_9_i_add64_sel_x_b);
        end
    end

    // redist59_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_16(DELAY,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_16_delay_0 <= '0;
            redist59_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_16_q <= '0;
        end
        else
        begin
            redist59_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_16_delay_0 <= $unsigned(redist58_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_14_q);
            redist59_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_16_q <= redist59_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_16_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,43)@17
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist117_bgTrunc_i_sub4_i_9_i_add64_sel_x_b_1_q, redist59_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_16_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,42)@17
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_a[21:21]};

    // i_cmp3_i_10_i_add67(COMPARE,193)@17
    assign i_cmp3_i_10_i_add67_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_10_i_add67_b = {2'b00, redist15_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_15_q};
    assign i_cmp3_i_10_i_add67_o = $unsigned(i_cmp3_i_10_i_add67_a) - $unsigned(i_cmp3_i_10_i_add67_b);
    assign i_cmp3_i_10_i_add67_c[0] = i_cmp3_i_10_i_add67_o[33];

    // i_unnamed_add68(MUX,309)@17 + 1
    assign i_unnamed_add68_s = i_cmp3_i_10_i_add67_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add68_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add68_s)
                1'b0 : i_unnamed_add68_q <= redist15_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_15_q;
                1'b1 : i_unnamed_add68_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add68_q <= 32'b0;
            endcase
        end
    end

    // redist116_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_q_1(DELAY,522)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist116_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist116_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_10_i_add69(SUB,251)@18
    assign i_sub4_i_10_i_add69_a = {1'b0, redist116_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_10_i_add69_b = {1'b0, i_unnamed_add68_q};
    assign i_sub4_i_10_i_add69_o = $unsigned(i_sub4_i_10_i_add69_a) - $unsigned(i_sub4_i_10_i_add69_b);
    assign i_sub4_i_10_i_add69_q = i_sub4_i_10_i_add69_o[32:0];

    // bgTrunc_i_sub4_i_10_i_add69_sel_x(BITSELECT,2)@18
    assign bgTrunc_i_sub4_i_10_i_add69_sel_x_b = $unsigned(i_sub4_i_10_i_add69_q[31:0]);

    // redist60_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_17(DELAY,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_17_q <= '0;
        end
        else
        begin
            redist60_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_17_q <= $unsigned(redist59_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_16_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,46)@18
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_10_i_add69_sel_x_b, redist60_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_17_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,45)@18
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_a[20:20]};

    // i_cmp3_i_11_i_add72(COMPARE,194)@18 + 1
    assign i_cmp3_i_11_i_add72_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_11_i_add72_b = {2'b00, redist16_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_16_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_11_i_add72_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_11_i_add72_o <= $unsigned(i_cmp3_i_11_i_add72_a) - $unsigned(i_cmp3_i_11_i_add72_b);
        end
    end
    assign i_cmp3_i_11_i_add72_c[0] = i_cmp3_i_11_i_add72_o[33];

    // i_unnamed_add73(MUX,310)@19
    assign i_unnamed_add73_s = i_cmp3_i_11_i_add72_c;
    always @(i_unnamed_add73_s or redist17_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_17_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add73_s)
            1'b0 : i_unnamed_add73_q = redist17_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_17_q;
            1'b1 : i_unnamed_add73_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add73_q = 32'b0;
        endcase
    end

    // redist115_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_q_1(DELAY,521)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist115_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist115_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_11_i_add74(SUB,252)@19
    assign i_sub4_i_11_i_add74_a = {1'b0, redist115_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_11_i_add74_b = {1'b0, i_unnamed_add73_q};
    assign i_sub4_i_11_i_add74_o = $unsigned(i_sub4_i_11_i_add74_a) - $unsigned(i_sub4_i_11_i_add74_b);
    assign i_sub4_i_11_i_add74_q = i_sub4_i_11_i_add74_o[32:0];

    // bgTrunc_i_sub4_i_11_i_add74_sel_x(BITSELECT,3)@19
    assign bgTrunc_i_sub4_i_11_i_add74_sel_x_b = $unsigned(i_sub4_i_11_i_add74_q[31:0]);

    // redist127_bgTrunc_i_sub4_i_11_i_add74_sel_x_b_1(DELAY,533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist127_bgTrunc_i_sub4_i_11_i_add74_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist127_bgTrunc_i_sub4_i_11_i_add74_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_11_i_add74_sel_x_b);
        end
    end

    // redist61_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_19(DELAY,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_19_delay_0 <= '0;
            redist61_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_19_q <= '0;
        end
        else
        begin
            redist61_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_19_delay_0 <= $unsigned(redist60_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_17_q);
            redist61_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_19_q <= redist61_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_19_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,49)@20
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist127_bgTrunc_i_sub4_i_11_i_add74_sel_x_b_1_q, redist61_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_19_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,48)@20
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_a[19:19]};

    // i_cmp3_i_12_i_add77(COMPARE,195)@20
    assign i_cmp3_i_12_i_add77_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_12_i_add77_b = {2'b00, redist18_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_18_q};
    assign i_cmp3_i_12_i_add77_o = $unsigned(i_cmp3_i_12_i_add77_a) - $unsigned(i_cmp3_i_12_i_add77_b);
    assign i_cmp3_i_12_i_add77_c[0] = i_cmp3_i_12_i_add77_o[33];

    // i_unnamed_add78(MUX,311)@20 + 1
    assign i_unnamed_add78_s = i_cmp3_i_12_i_add77_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add78_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add78_s)
                1'b0 : i_unnamed_add78_q <= redist18_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_18_q;
                1'b1 : i_unnamed_add78_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add78_q <= 32'b0;
            endcase
        end
    end

    // redist114_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_q_1(DELAY,520)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist114_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist114_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_12_i_add79(SUB,253)@21
    assign i_sub4_i_12_i_add79_a = {1'b0, redist114_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_12_i_add79_b = {1'b0, i_unnamed_add78_q};
    assign i_sub4_i_12_i_add79_o = $unsigned(i_sub4_i_12_i_add79_a) - $unsigned(i_sub4_i_12_i_add79_b);
    assign i_sub4_i_12_i_add79_q = i_sub4_i_12_i_add79_o[32:0];

    // bgTrunc_i_sub4_i_12_i_add79_sel_x(BITSELECT,4)@21
    assign bgTrunc_i_sub4_i_12_i_add79_sel_x_b = $unsigned(i_sub4_i_12_i_add79_q[31:0]);

    // redist62_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_20(DELAY,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_20_q <= '0;
        end
        else
        begin
            redist62_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_20_q <= $unsigned(redist61_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_19_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,52)@21
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_12_i_add79_sel_x_b, redist62_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_20_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,51)@21
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_a[18:18]};

    // i_cmp3_i_13_i_add82(COMPARE,196)@21 + 1
    assign i_cmp3_i_13_i_add82_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_13_i_add82_b = {2'b00, redist19_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_19_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_13_i_add82_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_13_i_add82_o <= $unsigned(i_cmp3_i_13_i_add82_a) - $unsigned(i_cmp3_i_13_i_add82_b);
        end
    end
    assign i_cmp3_i_13_i_add82_c[0] = i_cmp3_i_13_i_add82_o[33];

    // i_unnamed_add83(MUX,312)@22
    assign i_unnamed_add83_s = i_cmp3_i_13_i_add82_c;
    always @(i_unnamed_add83_s or redist20_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_20_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add83_s)
            1'b0 : i_unnamed_add83_q = redist20_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_20_q;
            1'b1 : i_unnamed_add83_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add83_q = 32'b0;
        endcase
    end

    // redist113_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_q_1(DELAY,519)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist113_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist113_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_13_i_add84(SUB,254)@22
    assign i_sub4_i_13_i_add84_a = {1'b0, redist113_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_13_i_add84_b = {1'b0, i_unnamed_add83_q};
    assign i_sub4_i_13_i_add84_o = $unsigned(i_sub4_i_13_i_add84_a) - $unsigned(i_sub4_i_13_i_add84_b);
    assign i_sub4_i_13_i_add84_q = i_sub4_i_13_i_add84_o[32:0];

    // bgTrunc_i_sub4_i_13_i_add84_sel_x(BITSELECT,5)@22
    assign bgTrunc_i_sub4_i_13_i_add84_sel_x_b = $unsigned(i_sub4_i_13_i_add84_q[31:0]);

    // redist126_bgTrunc_i_sub4_i_13_i_add84_sel_x_b_1(DELAY,532)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist126_bgTrunc_i_sub4_i_13_i_add84_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist126_bgTrunc_i_sub4_i_13_i_add84_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_13_i_add84_sel_x_b);
        end
    end

    // redist63_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_22(DELAY,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_22_delay_0 <= '0;
            redist63_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_22_q <= '0;
        end
        else
        begin
            redist63_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_22_delay_0 <= $unsigned(redist62_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_20_q);
            redist63_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_22_q <= redist63_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_22_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,55)@23
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist126_bgTrunc_i_sub4_i_13_i_add84_sel_x_b_1_q, redist63_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_22_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,54)@23
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_a[17:17]};

    // i_cmp3_i_14_i_add87(COMPARE,197)@23
    assign i_cmp3_i_14_i_add87_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_14_i_add87_b = {2'b00, redist21_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_21_q};
    assign i_cmp3_i_14_i_add87_o = $unsigned(i_cmp3_i_14_i_add87_a) - $unsigned(i_cmp3_i_14_i_add87_b);
    assign i_cmp3_i_14_i_add87_c[0] = i_cmp3_i_14_i_add87_o[33];

    // i_unnamed_add88(MUX,313)@23 + 1
    assign i_unnamed_add88_s = i_cmp3_i_14_i_add87_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add88_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add88_s)
                1'b0 : i_unnamed_add88_q <= redist21_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_21_q;
                1'b1 : i_unnamed_add88_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add88_q <= 32'b0;
            endcase
        end
    end

    // redist112_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_q_1(DELAY,518)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist112_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist112_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_14_i_add89(SUB,255)@24
    assign i_sub4_i_14_i_add89_a = {1'b0, redist112_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_14_i_add89_b = {1'b0, i_unnamed_add88_q};
    assign i_sub4_i_14_i_add89_o = $unsigned(i_sub4_i_14_i_add89_a) - $unsigned(i_sub4_i_14_i_add89_b);
    assign i_sub4_i_14_i_add89_q = i_sub4_i_14_i_add89_o[32:0];

    // bgTrunc_i_sub4_i_14_i_add89_sel_x(BITSELECT,6)@24
    assign bgTrunc_i_sub4_i_14_i_add89_sel_x_b = $unsigned(i_sub4_i_14_i_add89_q[31:0]);

    // redist64_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_23(DELAY,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_23_q <= '0;
        end
        else
        begin
            redist64_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_23_q <= $unsigned(redist63_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_22_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,58)@24
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_14_i_add89_sel_x_b, redist64_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_23_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,57)@24
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_a[16:16]};

    // i_cmp3_i_15_i_add92(COMPARE,198)@24 + 1
    assign i_cmp3_i_15_i_add92_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_15_i_add92_b = {2'b00, redist22_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_22_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_15_i_add92_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_15_i_add92_o <= $unsigned(i_cmp3_i_15_i_add92_a) - $unsigned(i_cmp3_i_15_i_add92_b);
        end
    end
    assign i_cmp3_i_15_i_add92_c[0] = i_cmp3_i_15_i_add92_o[33];

    // i_unnamed_add93(MUX,315)@25
    assign i_unnamed_add93_s = i_cmp3_i_15_i_add92_c;
    always @(i_unnamed_add93_s or redist23_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_23_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add93_s)
            1'b0 : i_unnamed_add93_q = redist23_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_23_q;
            1'b1 : i_unnamed_add93_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add93_q = 32'b0;
        endcase
    end

    // redist111_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_q_1(DELAY,517)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist111_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist111_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_15_i_add94(SUB,256)@25
    assign i_sub4_i_15_i_add94_a = {1'b0, redist111_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_15_i_add94_b = {1'b0, i_unnamed_add93_q};
    assign i_sub4_i_15_i_add94_o = $unsigned(i_sub4_i_15_i_add94_a) - $unsigned(i_sub4_i_15_i_add94_b);
    assign i_sub4_i_15_i_add94_q = i_sub4_i_15_i_add94_o[32:0];

    // bgTrunc_i_sub4_i_15_i_add94_sel_x(BITSELECT,7)@25
    assign bgTrunc_i_sub4_i_15_i_add94_sel_x_b = $unsigned(i_sub4_i_15_i_add94_q[31:0]);

    // redist125_bgTrunc_i_sub4_i_15_i_add94_sel_x_b_1(DELAY,531)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist125_bgTrunc_i_sub4_i_15_i_add94_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist125_bgTrunc_i_sub4_i_15_i_add94_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_15_i_add94_sel_x_b);
        end
    end

    // redist65_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_25(DELAY,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_25_delay_0 <= '0;
            redist65_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_25_q <= '0;
        end
        else
        begin
            redist65_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_25_delay_0 <= $unsigned(redist64_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_23_q);
            redist65_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_25_q <= redist65_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_25_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,61)@26
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist125_bgTrunc_i_sub4_i_15_i_add94_sel_x_b_1_q, redist65_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_25_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,60)@26
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_a[15:15]};

    // i_cmp3_i_16_i_add97(COMPARE,199)@26
    assign i_cmp3_i_16_i_add97_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_16_i_add97_b = {2'b00, redist24_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_24_q};
    assign i_cmp3_i_16_i_add97_o = $unsigned(i_cmp3_i_16_i_add97_a) - $unsigned(i_cmp3_i_16_i_add97_b);
    assign i_cmp3_i_16_i_add97_c[0] = i_cmp3_i_16_i_add97_o[33];

    // i_unnamed_add98(MUX,316)@26 + 1
    assign i_unnamed_add98_s = i_cmp3_i_16_i_add97_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add98_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add98_s)
                1'b0 : i_unnamed_add98_q <= redist24_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_24_q;
                1'b1 : i_unnamed_add98_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add98_q <= 32'b0;
            endcase
        end
    end

    // redist110_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_q_1(DELAY,516)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist110_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist110_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_16_i_add99(SUB,257)@27
    assign i_sub4_i_16_i_add99_a = {1'b0, redist110_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_16_i_add99_b = {1'b0, i_unnamed_add98_q};
    assign i_sub4_i_16_i_add99_o = $unsigned(i_sub4_i_16_i_add99_a) - $unsigned(i_sub4_i_16_i_add99_b);
    assign i_sub4_i_16_i_add99_q = i_sub4_i_16_i_add99_o[32:0];

    // bgTrunc_i_sub4_i_16_i_add99_sel_x(BITSELECT,8)@27
    assign bgTrunc_i_sub4_i_16_i_add99_sel_x_b = $unsigned(i_sub4_i_16_i_add99_q[31:0]);

    // redist66_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_26(DELAY,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_26_q <= '0;
        end
        else
        begin
            redist66_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_26_q <= $unsigned(redist65_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_25_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,64)@27
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_16_i_add99_sel_x_b, redist66_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_26_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,63)@27
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_a[14:14]};

    // i_cmp3_i_17_i_add102(COMPARE,200)@27 + 1
    assign i_cmp3_i_17_i_add102_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_17_i_add102_b = {2'b00, redist25_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_25_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_17_i_add102_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_17_i_add102_o <= $unsigned(i_cmp3_i_17_i_add102_a) - $unsigned(i_cmp3_i_17_i_add102_b);
        end
    end
    assign i_cmp3_i_17_i_add102_c[0] = i_cmp3_i_17_i_add102_o[33];

    // i_unnamed_add103(MUX,283)@28
    assign i_unnamed_add103_s = i_cmp3_i_17_i_add102_c;
    always @(i_unnamed_add103_s or redist26_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_26_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add103_s)
            1'b0 : i_unnamed_add103_q = redist26_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_26_q;
            1'b1 : i_unnamed_add103_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add103_q = 32'b0;
        endcase
    end

    // redist109_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_q_1(DELAY,515)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist109_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist109_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_17_i_add104(SUB,258)@28
    assign i_sub4_i_17_i_add104_a = {1'b0, redist109_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_17_i_add104_b = {1'b0, i_unnamed_add103_q};
    assign i_sub4_i_17_i_add104_o = $unsigned(i_sub4_i_17_i_add104_a) - $unsigned(i_sub4_i_17_i_add104_b);
    assign i_sub4_i_17_i_add104_q = i_sub4_i_17_i_add104_o[32:0];

    // bgTrunc_i_sub4_i_17_i_add104_sel_x(BITSELECT,9)@28
    assign bgTrunc_i_sub4_i_17_i_add104_sel_x_b = $unsigned(i_sub4_i_17_i_add104_q[31:0]);

    // redist124_bgTrunc_i_sub4_i_17_i_add104_sel_x_b_1(DELAY,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist124_bgTrunc_i_sub4_i_17_i_add104_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist124_bgTrunc_i_sub4_i_17_i_add104_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_17_i_add104_sel_x_b);
        end
    end

    // redist67_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_28(DELAY,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_28_delay_0 <= '0;
            redist67_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_28_q <= '0;
        end
        else
        begin
            redist67_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_28_delay_0 <= $unsigned(redist66_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_26_q);
            redist67_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_28_q <= redist67_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_28_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,67)@29
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist124_bgTrunc_i_sub4_i_17_i_add104_sel_x_b_1_q, redist67_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_28_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,66)@29
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_a[13:13]};

    // i_cmp3_i_18_i_add107(COMPARE,201)@29
    assign i_cmp3_i_18_i_add107_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_18_i_add107_b = {2'b00, redist27_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_27_q};
    assign i_cmp3_i_18_i_add107_o = $unsigned(i_cmp3_i_18_i_add107_a) - $unsigned(i_cmp3_i_18_i_add107_b);
    assign i_cmp3_i_18_i_add107_c[0] = i_cmp3_i_18_i_add107_o[33];

    // i_unnamed_add108(MUX,284)@29 + 1
    assign i_unnamed_add108_s = i_cmp3_i_18_i_add107_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add108_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add108_s)
                1'b0 : i_unnamed_add108_q <= redist27_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_27_q;
                1'b1 : i_unnamed_add108_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add108_q <= 32'b0;
            endcase
        end
    end

    // redist108_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_q_1(DELAY,514)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist108_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist108_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_18_i_add109(SUB,259)@30
    assign i_sub4_i_18_i_add109_a = {1'b0, redist108_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_18_i_add109_b = {1'b0, i_unnamed_add108_q};
    assign i_sub4_i_18_i_add109_o = $unsigned(i_sub4_i_18_i_add109_a) - $unsigned(i_sub4_i_18_i_add109_b);
    assign i_sub4_i_18_i_add109_q = i_sub4_i_18_i_add109_o[32:0];

    // bgTrunc_i_sub4_i_18_i_add109_sel_x(BITSELECT,10)@30
    assign bgTrunc_i_sub4_i_18_i_add109_sel_x_b = $unsigned(i_sub4_i_18_i_add109_q[31:0]);

    // redist68_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_29(DELAY,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_29_q <= '0;
        end
        else
        begin
            redist68_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_29_q <= $unsigned(redist67_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_28_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,70)@30
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_18_i_add109_sel_x_b, redist68_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_29_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,69)@30
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_a[12:12]};

    // i_cmp3_i_19_i_add112(COMPARE,202)@30 + 1
    assign i_cmp3_i_19_i_add112_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_19_i_add112_b = {2'b00, redist28_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_28_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_19_i_add112_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_19_i_add112_o <= $unsigned(i_cmp3_i_19_i_add112_a) - $unsigned(i_cmp3_i_19_i_add112_b);
        end
    end
    assign i_cmp3_i_19_i_add112_c[0] = i_cmp3_i_19_i_add112_o[33];

    // i_unnamed_add113(MUX,285)@31
    assign i_unnamed_add113_s = i_cmp3_i_19_i_add112_c;
    always @(i_unnamed_add113_s or redist29_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_29_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add113_s)
            1'b0 : i_unnamed_add113_q = redist29_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_29_q;
            1'b1 : i_unnamed_add113_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add113_q = 32'b0;
        endcase
    end

    // redist107_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_q_1(DELAY,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist107_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist107_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_19_i_add114(SUB,260)@31
    assign i_sub4_i_19_i_add114_a = {1'b0, redist107_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_19_i_add114_b = {1'b0, i_unnamed_add113_q};
    assign i_sub4_i_19_i_add114_o = $unsigned(i_sub4_i_19_i_add114_a) - $unsigned(i_sub4_i_19_i_add114_b);
    assign i_sub4_i_19_i_add114_q = i_sub4_i_19_i_add114_o[32:0];

    // bgTrunc_i_sub4_i_19_i_add114_sel_x(BITSELECT,11)@31
    assign bgTrunc_i_sub4_i_19_i_add114_sel_x_b = $unsigned(i_sub4_i_19_i_add114_q[31:0]);

    // redist123_bgTrunc_i_sub4_i_19_i_add114_sel_x_b_1(DELAY,529)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist123_bgTrunc_i_sub4_i_19_i_add114_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist123_bgTrunc_i_sub4_i_19_i_add114_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_19_i_add114_sel_x_b);
        end
    end

    // redist69_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_31(DELAY,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_31_delay_0 <= '0;
            redist69_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_31_q <= '0;
        end
        else
        begin
            redist69_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_31_delay_0 <= $unsigned(redist68_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_29_q);
            redist69_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_31_q <= redist69_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_31_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,76)@32
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist123_bgTrunc_i_sub4_i_19_i_add114_sel_x_b_1_q, redist69_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_31_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,75)@32
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_a[11:11]};

    // i_cmp3_i_20_i_add117(COMPARE,204)@32
    assign i_cmp3_i_20_i_add117_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_20_i_add117_b = {2'b00, redist30_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_30_q};
    assign i_cmp3_i_20_i_add117_o = $unsigned(i_cmp3_i_20_i_add117_a) - $unsigned(i_cmp3_i_20_i_add117_b);
    assign i_cmp3_i_20_i_add117_c[0] = i_cmp3_i_20_i_add117_o[33];

    // i_unnamed_add118(MUX,286)@32 + 1
    assign i_unnamed_add118_s = i_cmp3_i_20_i_add117_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add118_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add118_s)
                1'b0 : i_unnamed_add118_q <= redist30_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_30_q;
                1'b1 : i_unnamed_add118_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add118_q <= 32'b0;
            endcase
        end
    end

    // redist105_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_q_1(DELAY,511)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist105_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist105_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_20_i_add119(SUB,262)@33
    assign i_sub4_i_20_i_add119_a = {1'b0, redist105_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_20_i_add119_b = {1'b0, i_unnamed_add118_q};
    assign i_sub4_i_20_i_add119_o = $unsigned(i_sub4_i_20_i_add119_a) - $unsigned(i_sub4_i_20_i_add119_b);
    assign i_sub4_i_20_i_add119_q = i_sub4_i_20_i_add119_o[32:0];

    // bgTrunc_i_sub4_i_20_i_add119_sel_x(BITSELECT,13)@33
    assign bgTrunc_i_sub4_i_20_i_add119_sel_x_b = $unsigned(i_sub4_i_20_i_add119_q[31:0]);

    // redist70_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_32(DELAY,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_32_q <= '0;
        end
        else
        begin
            redist70_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_32_q <= $unsigned(redist69_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_31_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,79)@33
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_20_i_add119_sel_x_b, redist70_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_32_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,78)@33
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_a[10:10]};

    // i_cmp3_i_21_i_add122(COMPARE,205)@33 + 1
    assign i_cmp3_i_21_i_add122_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_21_i_add122_b = {2'b00, redist31_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_31_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_21_i_add122_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_21_i_add122_o <= $unsigned(i_cmp3_i_21_i_add122_a) - $unsigned(i_cmp3_i_21_i_add122_b);
        end
    end
    assign i_cmp3_i_21_i_add122_c[0] = i_cmp3_i_21_i_add122_o[33];

    // i_unnamed_add123(MUX,287)@34
    assign i_unnamed_add123_s = i_cmp3_i_21_i_add122_c;
    always @(i_unnamed_add123_s or redist32_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_32_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add123_s)
            1'b0 : i_unnamed_add123_q = redist32_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_32_q;
            1'b1 : i_unnamed_add123_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add123_q = 32'b0;
        endcase
    end

    // redist104_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_q_1(DELAY,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist104_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist104_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_21_i_add124(SUB,263)@34
    assign i_sub4_i_21_i_add124_a = {1'b0, redist104_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_21_i_add124_b = {1'b0, i_unnamed_add123_q};
    assign i_sub4_i_21_i_add124_o = $unsigned(i_sub4_i_21_i_add124_a) - $unsigned(i_sub4_i_21_i_add124_b);
    assign i_sub4_i_21_i_add124_q = i_sub4_i_21_i_add124_o[32:0];

    // bgTrunc_i_sub4_i_21_i_add124_sel_x(BITSELECT,14)@34
    assign bgTrunc_i_sub4_i_21_i_add124_sel_x_b = $unsigned(i_sub4_i_21_i_add124_q[31:0]);

    // redist122_bgTrunc_i_sub4_i_21_i_add124_sel_x_b_1(DELAY,528)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist122_bgTrunc_i_sub4_i_21_i_add124_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist122_bgTrunc_i_sub4_i_21_i_add124_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_21_i_add124_sel_x_b);
        end
    end

    // redist71_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_34(DELAY,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_34_delay_0 <= '0;
            redist71_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_34_q <= '0;
        end
        else
        begin
            redist71_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_34_delay_0 <= $unsigned(redist70_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_32_q);
            redist71_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_34_q <= redist71_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_34_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,82)@35
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist122_bgTrunc_i_sub4_i_21_i_add124_sel_x_b_1_q, redist71_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_34_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,81)@35
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_a[9:9]};

    // i_cmp3_i_22_i_add127(COMPARE,206)@35
    assign i_cmp3_i_22_i_add127_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_22_i_add127_b = {2'b00, redist33_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_33_q};
    assign i_cmp3_i_22_i_add127_o = $unsigned(i_cmp3_i_22_i_add127_a) - $unsigned(i_cmp3_i_22_i_add127_b);
    assign i_cmp3_i_22_i_add127_c[0] = i_cmp3_i_22_i_add127_o[33];

    // i_unnamed_add128(MUX,288)@35 + 1
    assign i_unnamed_add128_s = i_cmp3_i_22_i_add127_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add128_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add128_s)
                1'b0 : i_unnamed_add128_q <= redist33_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_33_q;
                1'b1 : i_unnamed_add128_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add128_q <= 32'b0;
            endcase
        end
    end

    // redist103_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_q_1(DELAY,509)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist103_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist103_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_22_i_add129(SUB,264)@36
    assign i_sub4_i_22_i_add129_a = {1'b0, redist103_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_22_i_add129_b = {1'b0, i_unnamed_add128_q};
    assign i_sub4_i_22_i_add129_o = $unsigned(i_sub4_i_22_i_add129_a) - $unsigned(i_sub4_i_22_i_add129_b);
    assign i_sub4_i_22_i_add129_q = i_sub4_i_22_i_add129_o[32:0];

    // bgTrunc_i_sub4_i_22_i_add129_sel_x(BITSELECT,15)@36
    assign bgTrunc_i_sub4_i_22_i_add129_sel_x_b = $unsigned(i_sub4_i_22_i_add129_q[31:0]);

    // redist72_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_35(DELAY,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_35_q <= '0;
        end
        else
        begin
            redist72_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_35_q <= $unsigned(redist71_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_34_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,85)@36
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_22_i_add129_sel_x_b, redist72_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_35_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,84)@36
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_a[8:8]};

    // i_cmp3_i_23_i_add132(COMPARE,207)@36 + 1
    assign i_cmp3_i_23_i_add132_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_23_i_add132_b = {2'b00, redist34_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_34_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_23_i_add132_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_23_i_add132_o <= $unsigned(i_cmp3_i_23_i_add132_a) - $unsigned(i_cmp3_i_23_i_add132_b);
        end
    end
    assign i_cmp3_i_23_i_add132_c[0] = i_cmp3_i_23_i_add132_o[33];

    // i_unnamed_add133(MUX,290)@37
    assign i_unnamed_add133_s = i_cmp3_i_23_i_add132_c;
    always @(i_unnamed_add133_s or redist35_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_35_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add133_s)
            1'b0 : i_unnamed_add133_q = redist35_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_35_q;
            1'b1 : i_unnamed_add133_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add133_q = 32'b0;
        endcase
    end

    // redist102_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_q_1(DELAY,508)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist102_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist102_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_23_i_add134(SUB,265)@37
    assign i_sub4_i_23_i_add134_a = {1'b0, redist102_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_23_i_add134_b = {1'b0, i_unnamed_add133_q};
    assign i_sub4_i_23_i_add134_o = $unsigned(i_sub4_i_23_i_add134_a) - $unsigned(i_sub4_i_23_i_add134_b);
    assign i_sub4_i_23_i_add134_q = i_sub4_i_23_i_add134_o[32:0];

    // bgTrunc_i_sub4_i_23_i_add134_sel_x(BITSELECT,16)@37
    assign bgTrunc_i_sub4_i_23_i_add134_sel_x_b = $unsigned(i_sub4_i_23_i_add134_q[31:0]);

    // redist121_bgTrunc_i_sub4_i_23_i_add134_sel_x_b_1(DELAY,527)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist121_bgTrunc_i_sub4_i_23_i_add134_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist121_bgTrunc_i_sub4_i_23_i_add134_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_23_i_add134_sel_x_b);
        end
    end

    // redist73_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_37(DELAY,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_37_delay_0 <= '0;
            redist73_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_37_q <= '0;
        end
        else
        begin
            redist73_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_37_delay_0 <= $unsigned(redist72_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_35_q);
            redist73_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_37_q <= redist73_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_37_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,88)@38
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist121_bgTrunc_i_sub4_i_23_i_add134_sel_x_b_1_q, redist73_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_37_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,87)@38
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_a[7:7]};

    // i_cmp3_i_24_i_add137(COMPARE,208)@38
    assign i_cmp3_i_24_i_add137_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_24_i_add137_b = {2'b00, redist36_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_36_q};
    assign i_cmp3_i_24_i_add137_o = $unsigned(i_cmp3_i_24_i_add137_a) - $unsigned(i_cmp3_i_24_i_add137_b);
    assign i_cmp3_i_24_i_add137_c[0] = i_cmp3_i_24_i_add137_o[33];

    // i_unnamed_add138(MUX,291)@38 + 1
    assign i_unnamed_add138_s = i_cmp3_i_24_i_add137_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add138_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add138_s)
                1'b0 : i_unnamed_add138_q <= redist36_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_36_q;
                1'b1 : i_unnamed_add138_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add138_q <= 32'b0;
            endcase
        end
    end

    // redist101_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_q_1(DELAY,507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist101_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist101_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_24_i_add139(SUB,266)@39
    assign i_sub4_i_24_i_add139_a = {1'b0, redist101_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_24_i_add139_b = {1'b0, i_unnamed_add138_q};
    assign i_sub4_i_24_i_add139_o = $unsigned(i_sub4_i_24_i_add139_a) - $unsigned(i_sub4_i_24_i_add139_b);
    assign i_sub4_i_24_i_add139_q = i_sub4_i_24_i_add139_o[32:0];

    // bgTrunc_i_sub4_i_24_i_add139_sel_x(BITSELECT,17)@39
    assign bgTrunc_i_sub4_i_24_i_add139_sel_x_b = $unsigned(i_sub4_i_24_i_add139_q[31:0]);

    // redist74_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_38(DELAY,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_38_q <= '0;
        end
        else
        begin
            redist74_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_38_q <= $unsigned(redist73_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_37_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,91)@39
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_24_i_add139_sel_x_b, redist74_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_38_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,90)@39
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_a[6:6]};

    // i_cmp3_i_25_i_add142(COMPARE,209)@39 + 1
    assign i_cmp3_i_25_i_add142_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_25_i_add142_b = {2'b00, redist37_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_37_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_25_i_add142_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_25_i_add142_o <= $unsigned(i_cmp3_i_25_i_add142_a) - $unsigned(i_cmp3_i_25_i_add142_b);
        end
    end
    assign i_cmp3_i_25_i_add142_c[0] = i_cmp3_i_25_i_add142_o[33];

    // i_unnamed_add143(MUX,292)@40
    assign i_unnamed_add143_s = i_cmp3_i_25_i_add142_c;
    always @(i_unnamed_add143_s or redist38_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_38_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add143_s)
            1'b0 : i_unnamed_add143_q = redist38_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_38_q;
            1'b1 : i_unnamed_add143_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add143_q = 32'b0;
        endcase
    end

    // redist100_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_q_1(DELAY,506)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist100_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_25_i_add144(SUB,267)@40
    assign i_sub4_i_25_i_add144_a = {1'b0, redist100_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_25_i_add144_b = {1'b0, i_unnamed_add143_q};
    assign i_sub4_i_25_i_add144_o = $unsigned(i_sub4_i_25_i_add144_a) - $unsigned(i_sub4_i_25_i_add144_b);
    assign i_sub4_i_25_i_add144_q = i_sub4_i_25_i_add144_o[32:0];

    // bgTrunc_i_sub4_i_25_i_add144_sel_x(BITSELECT,18)@40
    assign bgTrunc_i_sub4_i_25_i_add144_sel_x_b = $unsigned(i_sub4_i_25_i_add144_q[31:0]);

    // redist120_bgTrunc_i_sub4_i_25_i_add144_sel_x_b_1(DELAY,526)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist120_bgTrunc_i_sub4_i_25_i_add144_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist120_bgTrunc_i_sub4_i_25_i_add144_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_25_i_add144_sel_x_b);
        end
    end

    // redist75_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_40(DELAY,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_40_delay_0 <= '0;
            redist75_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_40_q <= '0;
        end
        else
        begin
            redist75_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_40_delay_0 <= $unsigned(redist74_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_38_q);
            redist75_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_40_q <= redist75_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_40_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,94)@41
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist120_bgTrunc_i_sub4_i_25_i_add144_sel_x_b_1_q, redist75_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_40_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,93)@41
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_a[5:5]};

    // i_cmp3_i_26_i_add147(COMPARE,210)@41
    assign i_cmp3_i_26_i_add147_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_26_i_add147_b = {2'b00, redist39_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_39_q};
    assign i_cmp3_i_26_i_add147_o = $unsigned(i_cmp3_i_26_i_add147_a) - $unsigned(i_cmp3_i_26_i_add147_b);
    assign i_cmp3_i_26_i_add147_c[0] = i_cmp3_i_26_i_add147_o[33];

    // i_unnamed_add148(MUX,293)@41 + 1
    assign i_unnamed_add148_s = i_cmp3_i_26_i_add147_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add148_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add148_s)
                1'b0 : i_unnamed_add148_q <= redist39_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_39_q;
                1'b1 : i_unnamed_add148_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add148_q <= 32'b0;
            endcase
        end
    end

    // redist99_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_q_1(DELAY,505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist99_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist99_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_26_i_add149(SUB,268)@42
    assign i_sub4_i_26_i_add149_a = {1'b0, redist99_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_26_i_add149_b = {1'b0, i_unnamed_add148_q};
    assign i_sub4_i_26_i_add149_o = $unsigned(i_sub4_i_26_i_add149_a) - $unsigned(i_sub4_i_26_i_add149_b);
    assign i_sub4_i_26_i_add149_q = i_sub4_i_26_i_add149_o[32:0];

    // bgTrunc_i_sub4_i_26_i_add149_sel_x(BITSELECT,19)@42
    assign bgTrunc_i_sub4_i_26_i_add149_sel_x_b = $unsigned(i_sub4_i_26_i_add149_q[31:0]);

    // redist76_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_41(DELAY,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_41_q <= '0;
        end
        else
        begin
            redist76_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_41_q <= $unsigned(redist75_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_40_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,97)@42
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_26_i_add149_sel_x_b, redist76_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_41_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,96)@42
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_a[4:4]};

    // i_cmp3_i_27_i_add152(COMPARE,211)@42 + 1
    assign i_cmp3_i_27_i_add152_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_27_i_add152_b = {2'b00, redist40_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_40_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_27_i_add152_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_27_i_add152_o <= $unsigned(i_cmp3_i_27_i_add152_a) - $unsigned(i_cmp3_i_27_i_add152_b);
        end
    end
    assign i_cmp3_i_27_i_add152_c[0] = i_cmp3_i_27_i_add152_o[33];

    // i_unnamed_add153(MUX,294)@43
    assign i_unnamed_add153_s = i_cmp3_i_27_i_add152_c;
    always @(i_unnamed_add153_s or redist41_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_41_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add153_s)
            1'b0 : i_unnamed_add153_q = redist41_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_41_q;
            1'b1 : i_unnamed_add153_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add153_q = 32'b0;
        endcase
    end

    // redist98_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_q_1(DELAY,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist98_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist98_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_27_i_add154(SUB,269)@43
    assign i_sub4_i_27_i_add154_a = {1'b0, redist98_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_27_i_add154_b = {1'b0, i_unnamed_add153_q};
    assign i_sub4_i_27_i_add154_o = $unsigned(i_sub4_i_27_i_add154_a) - $unsigned(i_sub4_i_27_i_add154_b);
    assign i_sub4_i_27_i_add154_q = i_sub4_i_27_i_add154_o[32:0];

    // bgTrunc_i_sub4_i_27_i_add154_sel_x(BITSELECT,20)@43
    assign bgTrunc_i_sub4_i_27_i_add154_sel_x_b = $unsigned(i_sub4_i_27_i_add154_q[31:0]);

    // redist119_bgTrunc_i_sub4_i_27_i_add154_sel_x_b_1(DELAY,525)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist119_bgTrunc_i_sub4_i_27_i_add154_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist119_bgTrunc_i_sub4_i_27_i_add154_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_27_i_add154_sel_x_b);
        end
    end

    // redist77_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_43(DELAY,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_43_delay_0 <= '0;
            redist77_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_43_q <= '0;
        end
        else
        begin
            redist77_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_43_delay_0 <= $unsigned(redist76_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_41_q);
            redist77_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_43_q <= redist77_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_43_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,100)@44
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist119_bgTrunc_i_sub4_i_27_i_add154_sel_x_b_1_q, redist77_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_43_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,99)@44
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_a[3:3]};

    // i_cmp3_i_28_i_add157(COMPARE,212)@44
    assign i_cmp3_i_28_i_add157_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_28_i_add157_b = {2'b00, redist42_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_42_q};
    assign i_cmp3_i_28_i_add157_o = $unsigned(i_cmp3_i_28_i_add157_a) - $unsigned(i_cmp3_i_28_i_add157_b);
    assign i_cmp3_i_28_i_add157_c[0] = i_cmp3_i_28_i_add157_o[33];

    // i_unnamed_add158(MUX,295)@44 + 1
    assign i_unnamed_add158_s = i_cmp3_i_28_i_add157_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add158_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add158_s)
                1'b0 : i_unnamed_add158_q <= redist42_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_42_q;
                1'b1 : i_unnamed_add158_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add158_q <= 32'b0;
            endcase
        end
    end

    // redist97_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_q_1(DELAY,503)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist97_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_28_i_add159(SUB,270)@45
    assign i_sub4_i_28_i_add159_a = {1'b0, redist97_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_28_i_add159_b = {1'b0, i_unnamed_add158_q};
    assign i_sub4_i_28_i_add159_o = $unsigned(i_sub4_i_28_i_add159_a) - $unsigned(i_sub4_i_28_i_add159_b);
    assign i_sub4_i_28_i_add159_q = i_sub4_i_28_i_add159_o[32:0];

    // bgTrunc_i_sub4_i_28_i_add159_sel_x(BITSELECT,21)@45
    assign bgTrunc_i_sub4_i_28_i_add159_sel_x_b = $unsigned(i_sub4_i_28_i_add159_q[31:0]);

    // redist78_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_44(DELAY,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_44_q <= '0;
        end
        else
        begin
            redist78_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_44_q <= $unsigned(redist77_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_43_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,103)@45
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_28_i_add159_sel_x_b, redist78_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_44_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,102)@45
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_a[2:2]};

    // i_cmp3_i_29_i_add162(COMPARE,213)@45 + 1
    assign i_cmp3_i_29_i_add162_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_29_i_add162_b = {2'b00, redist43_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_43_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_29_i_add162_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_29_i_add162_o <= $unsigned(i_cmp3_i_29_i_add162_a) - $unsigned(i_cmp3_i_29_i_add162_b);
        end
    end
    assign i_cmp3_i_29_i_add162_c[0] = i_cmp3_i_29_i_add162_o[33];

    // i_unnamed_add163(MUX,296)@46
    assign i_unnamed_add163_s = i_cmp3_i_29_i_add162_c;
    always @(i_unnamed_add163_s or redist44_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_44_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add163_s)
            1'b0 : i_unnamed_add163_q = redist44_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_44_q;
            1'b1 : i_unnamed_add163_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add163_q = 32'b0;
        endcase
    end

    // redist96_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_q_1(DELAY,502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist96_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist96_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_29_i_add164(SUB,271)@46
    assign i_sub4_i_29_i_add164_a = {1'b0, redist96_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_29_i_add164_b = {1'b0, i_unnamed_add163_q};
    assign i_sub4_i_29_i_add164_o = $unsigned(i_sub4_i_29_i_add164_a) - $unsigned(i_sub4_i_29_i_add164_b);
    assign i_sub4_i_29_i_add164_q = i_sub4_i_29_i_add164_o[32:0];

    // bgTrunc_i_sub4_i_29_i_add164_sel_x(BITSELECT,22)@46
    assign bgTrunc_i_sub4_i_29_i_add164_sel_x_b = $unsigned(i_sub4_i_29_i_add164_q[31:0]);

    // redist118_bgTrunc_i_sub4_i_29_i_add164_sel_x_b_1(DELAY,524)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist118_bgTrunc_i_sub4_i_29_i_add164_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist118_bgTrunc_i_sub4_i_29_i_add164_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_29_i_add164_sel_x_b);
        end
    end

    // redist79_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_46(DELAY,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_46_delay_0 <= '0;
            redist79_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_46_q <= '0;
        end
        else
        begin
            redist79_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_46_delay_0 <= $unsigned(redist78_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_44_q);
            redist79_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_46_q <= redist79_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_46_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,109)@47
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, redist118_bgTrunc_i_sub4_i_29_i_add164_sel_x_b_1_q, redist79_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_46_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,108)@47
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_a[1:1]};

    // i_cmp3_i_30_i_add167(COMPARE,215)@47
    assign i_cmp3_i_30_i_add167_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_30_i_add167_b = {2'b00, redist45_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_45_q};
    assign i_cmp3_i_30_i_add167_o = $unsigned(i_cmp3_i_30_i_add167_a) - $unsigned(i_cmp3_i_30_i_add167_b);
    assign i_cmp3_i_30_i_add167_c[0] = i_cmp3_i_30_i_add167_o[33];

    // i_unnamed_add168(MUX,297)@47 + 1
    assign i_unnamed_add168_s = i_cmp3_i_30_i_add167_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_add168_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_add168_s)
                1'b0 : i_unnamed_add168_q <= redist45_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_45_q;
                1'b1 : i_unnamed_add168_q <= c_i32_0202_recast_x_q;
                default : i_unnamed_add168_q <= 32'b0;
            endcase
        end
    end

    // redist93_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_q_1(DELAY,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist93_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_30_i_add169(SUB,273)@48
    assign i_sub4_i_30_i_add169_a = {1'b0, redist93_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_30_i_add169_b = {1'b0, i_unnamed_add168_q};
    assign i_sub4_i_30_i_add169_o = $unsigned(i_sub4_i_30_i_add169_a) - $unsigned(i_sub4_i_30_i_add169_b);
    assign i_sub4_i_30_i_add169_q = i_sub4_i_30_i_add169_o[32:0];

    // bgTrunc_i_sub4_i_30_i_add169_sel_x(BITSELECT,24)@48
    assign bgTrunc_i_sub4_i_30_i_add169_sel_x_b = $unsigned(i_sub4_i_30_i_add169_q[31:0]);

    // redist80_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_47(DELAY,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_47_q <= '0;
        end
        else
        begin
            redist80_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_47_q <= $unsigned(redist79_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_46_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,112)@48
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_220_q, bgTrunc_i_sub4_i_30_i_add169_sel_x_b, redist80_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_47_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x(CHOOSEBITS,111)@48
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_a[0:0]};

    // i_cmp3_i_31_i_add172(COMPARE,216)@48 + 1
    assign i_cmp3_i_31_i_add172_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_q};
    assign i_cmp3_i_31_i_add172_b = {2'b00, redist46_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_46_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_31_i_add172_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_31_i_add172_o <= $unsigned(i_cmp3_i_31_i_add172_a) - $unsigned(i_cmp3_i_31_i_add172_b);
        end
    end
    assign i_cmp3_i_31_i_add172_c[0] = i_cmp3_i_31_i_add172_o[33];

    // i_unnamed_add173(MUX,299)@49
    assign i_unnamed_add173_s = i_cmp3_i_31_i_add172_c;
    always @(i_unnamed_add173_s or redist47_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_47_q or c_i32_0202_recast_x_q)
    begin
        unique case (i_unnamed_add173_s)
            1'b0 : i_unnamed_add173_q = redist47_i_llvm_fpga_ffwd_dest_i32_select5658_add14_out_dest_data_out_11_0_47_q;
            1'b1 : i_unnamed_add173_q = c_i32_0202_recast_x_q;
            default : i_unnamed_add173_q = 32'b0;
        endcase
    end

    // redist92_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_q_1(DELAY,498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist92_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist92_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_31_i_add174(SUB,274)@49
    assign i_sub4_i_31_i_add174_a = {1'b0, redist92_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_add0_NO_NAME_x_q_1_q};
    assign i_sub4_i_31_i_add174_b = {1'b0, i_unnamed_add173_q};
    assign i_sub4_i_31_i_add174_o = $unsigned(i_sub4_i_31_i_add174_a) - $unsigned(i_sub4_i_31_i_add174_b);
    assign i_sub4_i_31_i_add174_q = i_sub4_i_31_i_add174_o[32:0];

    // bgTrunc_i_sub4_i_31_i_add174_sel_x(BITSELECT,25)@49
    assign bgTrunc_i_sub4_i_31_i_add174_sel_x_b = $unsigned(i_sub4_i_31_i_add174_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_add60_add182(BLACKBOX,243)@49
    // out out_intel_reserved_ffwd_37_0@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_60_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add60_add182 (
        .in_predicate_in(GND_q),
        .in_src_data_in_37_0(bgTrunc_i_sub4_i_31_i_add174_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_37_0(i_llvm_fpga_ffwd_source_i32_unnamed_add60_add182_out_intel_reserved_ffwd_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_37_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add60_add182_out_intel_reserved_ffwd_37_0;

    // valid_fanout_reg13(REG,341)@48 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist81_sync_together215_aunroll_x_in_i_valid_47_q);
        end
    end

    // i_idxprom14_i101_add175_sel_x(BITSELECT,41)@49
    assign i_idxprom14_i101_add175_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_sub4_i_31_i_add174_sel_x_b[31:0]};

    // i_idxprom14_i101_add175_vt_select_31(BITSELECT,229)@49
    assign i_idxprom14_i101_add175_vt_select_31_b = i_idxprom14_i101_add175_sel_x_b[31:0];

    // i_idxprom14_i101_add175_vt_join(BITJOIN,228)@49
    assign i_idxprom14_i101_add175_vt_join_q = {c_i32_0202_recast_x_q, i_idxprom14_i101_add175_vt_select_31_b};

    // i_llvm_fpga_ffwd_source_i64_unnamed_add61_add183(BLACKBOX,244)@49
    // out out_intel_reserved_ffwd_38_0@20000000
    add_i_llvm_fpga_ffwd_source_i64_unnamed_61_add0 thei_llvm_fpga_ffwd_source_i64_unnamed_add61_add183 (
        .in_predicate_in(GND_q),
        .in_src_data_in_38_0(i_idxprom14_i101_add175_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_intel_reserved_ffwd_38_0(i_llvm_fpga_ffwd_source_i64_unnamed_add61_add183_out_intel_reserved_ffwd_38_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_38_0 = i_llvm_fpga_ffwd_source_i64_unnamed_add61_add183_out_intel_reserved_ffwd_38_0;

    // valid_fanout_reg14(REG,342)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,336)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_add56_add176(BLACKBOX,237)@2
    add_i_llvm_fpga_ffwd_dest_i32_unnamed_56_add0 thei_llvm_fpga_ffwd_dest_i32_unnamed_add56_add176 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i32_unnamed_add56_add176_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp_i65_add177(COMPARE,225)@2
    assign i_cmp_i65_add177_a = {2'b00, redist49_sync_together215_aunroll_x_in_c0_eni2152_2_tpl_1_q};
    assign i_cmp_i65_add177_b = {2'b00, i_llvm_fpga_ffwd_dest_i32_unnamed_add56_add176_out_dest_data_out_18_0};
    assign i_cmp_i65_add177_o = $unsigned(i_cmp_i65_add177_a) - $unsigned(i_cmp_i65_add177_b);
    assign i_cmp_i65_add177_c[0] = i_cmp_i65_add177_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_add62_add184(BLACKBOX,239)@2
    // out out_intel_reserved_ffwd_39_0@20000000
    add_i_llvm_fpga_ffwd_source_i1_unnamed_62_add0 thei_llvm_fpga_ffwd_source_i1_unnamed_add62_add184 (
        .in_predicate_in(GND_q),
        .in_src_data_in_39_0(i_cmp_i65_add177_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_intel_reserved_ffwd_39_0(i_llvm_fpga_ffwd_source_i1_unnamed_add62_add184_out_intel_reserved_ffwd_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_39_0 = i_llvm_fpga_ffwd_source_i1_unnamed_add62_add184_out_intel_reserved_ffwd_39_0;

    // valid_fanout_reg15(REG,343)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // i_phi_decision125_xor_add178(LOGICAL,245)@2
    assign i_phi_decision125_xor_add178_q = i_unnamed_add13_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_add63_add185(BLACKBOX,240)@2
    // out out_intel_reserved_ffwd_40_0@20000000
    add_i_llvm_fpga_ffwd_source_i1_unnamed_63_add0 thei_llvm_fpga_ffwd_source_i1_unnamed_add63_add185 (
        .in_predicate_in(GND_q),
        .in_src_data_in_40_0(i_phi_decision125_xor_add178_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_intel_reserved_ffwd_40_0(i_llvm_fpga_ffwd_source_i1_unnamed_add63_add185_out_intel_reserved_ffwd_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_40_0 = i_llvm_fpga_ffwd_source_i1_unnamed_add63_add185_out_intel_reserved_ffwd_40_0;

    // valid_fanout_reg0(REG,328)@48 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist81_sync_together215_aunroll_x_in_i_valid_47_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,139)@49
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_add44 = GND_q;
    assign out_unnamed_add64_0_tpl = GND_q;

    // valid_fanout_reg9(REG,337)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_add57_add179(BLACKBOX,241)@2
    // out out_intel_reserved_ffwd_33_0@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_57_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add57_add179 (
        .in_predicate_in(GND_q),
        .in_src_data_in_33_0(i_replace_phi50_add5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_33_0(i_llvm_fpga_ffwd_source_i32_unnamed_add57_add179_out_intel_reserved_ffwd_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,326)
    assign out_intel_reserved_ffwd_33_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add57_add179_out_intel_reserved_ffwd_33_0;

endmodule
