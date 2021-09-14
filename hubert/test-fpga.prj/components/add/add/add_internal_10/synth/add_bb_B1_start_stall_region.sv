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

// SystemVerilog created from add_bb_B1_start_stall_region
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_bb_B1_start_stall_region (
    input wire [63:0] in_unnamed_add2_add_avm_readdata,
    input wire [0:0] in_unnamed_add2_add_avm_writeack,
    input wire [0:0] in_unnamed_add2_add_avm_waitrequest,
    input wire [0:0] in_unnamed_add2_add_avm_readdatavalid,
    output wire [63:0] out_unnamed_add2_add_avm_address,
    output wire [0:0] out_unnamed_add2_add_avm_enable,
    output wire [0:0] out_unnamed_add2_add_avm_read,
    output wire [0:0] out_unnamed_add2_add_avm_write,
    output wire [63:0] out_unnamed_add2_add_avm_writedata,
    output wire [7:0] out_unnamed_add2_add_avm_byteenable,
    output wire [0:0] out_unnamed_add2_add_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_unnamed_add0,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_add3_add_avm_readdata,
    input wire [0:0] in_unnamed_add3_add_avm_writeack,
    input wire [0:0] in_unnamed_add3_add_avm_waitrequest,
    input wire [0:0] in_unnamed_add3_add_avm_readdatavalid,
    output wire [63:0] out_unnamed_add3_add_avm_address,
    output wire [0:0] out_unnamed_add3_add_avm_enable,
    output wire [0:0] out_unnamed_add3_add_avm_read,
    output wire [0:0] out_unnamed_add3_add_avm_write,
    output wire [63:0] out_unnamed_add3_add_avm_writedata,
    output wire [7:0] out_unnamed_add3_add_avm_byteenable,
    output wire [0:0] out_unnamed_add3_add_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    input wire [63:0] in_unnamed_add4_add_avm_readdata,
    input wire [0:0] in_unnamed_add4_add_avm_writeack,
    input wire [0:0] in_unnamed_add4_add_avm_waitrequest,
    input wire [0:0] in_unnamed_add4_add_avm_readdatavalid,
    output wire [63:0] out_unnamed_add4_add_avm_address,
    output wire [0:0] out_unnamed_add4_add_avm_enable,
    output wire [0:0] out_unnamed_add4_add_avm_read,
    output wire [0:0] out_unnamed_add4_add_avm_write,
    output wire [63:0] out_unnamed_add4_add_avm_writedata,
    output wire [7:0] out_unnamed_add4_add_avm_byteenable,
    output wire [0:0] out_unnamed_add4_add_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    input wire [63:0] in_unnamed_add5_add_avm_readdata,
    input wire [0:0] in_unnamed_add5_add_avm_writeack,
    input wire [0:0] in_unnamed_add5_add_avm_waitrequest,
    input wire [0:0] in_unnamed_add5_add_avm_readdatavalid,
    output wire [63:0] out_unnamed_add5_add_avm_address,
    output wire [0:0] out_unnamed_add5_add_avm_enable,
    output wire [0:0] out_unnamed_add5_add_avm_read,
    output wire [0:0] out_unnamed_add5_add_avm_write,
    output wire [63:0] out_unnamed_add5_add_avm_writedata,
    output wire [7:0] out_unnamed_add5_add_avm_byteenable,
    output wire [0:0] out_unnamed_add5_add_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_13_0,
    input wire [63:0] in_unnamed_add6_add_avm_readdata,
    input wire [0:0] in_unnamed_add6_add_avm_writeack,
    input wire [0:0] in_unnamed_add6_add_avm_waitrequest,
    input wire [0:0] in_unnamed_add6_add_avm_readdatavalid,
    output wire [63:0] out_unnamed_add6_add_avm_address,
    output wire [0:0] out_unnamed_add6_add_avm_enable,
    output wire [0:0] out_unnamed_add6_add_avm_read,
    output wire [0:0] out_unnamed_add6_add_avm_write,
    output wire [63:0] out_unnamed_add6_add_avm_writedata,
    output wire [7:0] out_unnamed_add6_add_avm_byteenable,
    output wire [0:0] out_unnamed_add6_add_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_14_0,
    input wire [63:0] in_unnamed_add7_add_avm_readdata,
    input wire [0:0] in_unnamed_add7_add_avm_writeack,
    input wire [0:0] in_unnamed_add7_add_avm_waitrequest,
    input wire [0:0] in_unnamed_add7_add_avm_readdatavalid,
    output wire [63:0] out_unnamed_add7_add_avm_address,
    output wire [0:0] out_unnamed_add7_add_avm_enable,
    output wire [0:0] out_unnamed_add7_add_avm_read,
    output wire [0:0] out_unnamed_add7_add_avm_write,
    output wire [63:0] out_unnamed_add7_add_avm_writedata,
    output wire [7:0] out_unnamed_add7_add_avm_byteenable,
    output wire [0:0] out_unnamed_add7_add_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_15_0,
    input wire [63:0] in_lm1_add_avm_readdata,
    input wire [0:0] in_lm1_add_avm_writeack,
    input wire [0:0] in_lm1_add_avm_waitrequest,
    input wire [0:0] in_lm1_add_avm_readdatavalid,
    output wire [63:0] out_lm1_add_avm_address,
    output wire [0:0] out_lm1_add_avm_enable,
    output wire [0:0] out_lm1_add_avm_read,
    output wire [0:0] out_lm1_add_avm_write,
    output wire [63:0] out_lm1_add_avm_writedata,
    output wire [7:0] out_lm1_add_avm_byteenable,
    output wire [0:0] out_lm1_add_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    input wire [63:0] in_lm722_add_avm_readdata,
    input wire [0:0] in_lm722_add_avm_writeack,
    input wire [0:0] in_lm722_add_avm_waitrequest,
    input wire [0:0] in_lm722_add_avm_readdatavalid,
    output wire [63:0] out_lm722_add_avm_address,
    output wire [0:0] out_lm722_add_avm_enable,
    output wire [0:0] out_lm722_add_avm_read,
    output wire [0:0] out_lm722_add_avm_write,
    output wire [63:0] out_lm722_add_avm_writedata,
    output wire [7:0] out_lm722_add_avm_byteenable,
    output wire [0:0] out_lm722_add_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_17_0,
    input wire [63:0] in_lm743_add_avm_readdata,
    input wire [0:0] in_lm743_add_avm_writeack,
    input wire [0:0] in_lm743_add_avm_waitrequest,
    input wire [0:0] in_lm743_add_avm_readdatavalid,
    output wire [63:0] out_lm743_add_avm_address,
    output wire [0:0] out_lm743_add_avm_enable,
    output wire [0:0] out_lm743_add_avm_read,
    output wire [0:0] out_lm743_add_avm_write,
    output wire [63:0] out_lm743_add_avm_writedata,
    output wire [7:0] out_lm743_add_avm_byteenable,
    output wire [0:0] out_lm743_add_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_18_0,
    input wire [63:0] in_unmaskedload_lm4_add_avm_readdata,
    input wire [0:0] in_unmaskedload_lm4_add_avm_writeack,
    input wire [0:0] in_unmaskedload_lm4_add_avm_waitrequest,
    input wire [0:0] in_unmaskedload_lm4_add_avm_readdatavalid,
    output wire [63:0] out_unmaskedload_lm4_add_avm_address,
    output wire [0:0] out_unmaskedload_lm4_add_avm_enable,
    output wire [0:0] out_unmaskedload_lm4_add_avm_read,
    output wire [0:0] out_unmaskedload_lm4_add_avm_write,
    output wire [63:0] out_unmaskedload_lm4_add_avm_writedata,
    output wire [7:0] out_unmaskedload_lm4_add_avm_byteenable,
    output wire [0:0] out_unmaskedload_lm4_add_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_19_0,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_intel_reserved_ffwd_9_0,
    input wire [191:0] in_iord_bl_call_add_i_fifodata,
    input wire [0:0] in_iord_bl_call_add_i_fifovalid,
    output wire [0:0] out_iord_bl_call_add_o_fifoready,
    output wire [0:0] out_iord_bl_call_add_o_fifoalmost_full,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_flush,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add3_add37_sel_x_b;
    wire [31:0] bgTrunc_i_select55_add38_sel_x_b;
    wire [31:0] c_i32_088_recast_x_q;
    wire [31:0] c_i32_186_recast_x_q;
    wire [63:0] i_arrayidx5_i_i223_add0_trunc_sel_x_b;
    wire [64:0] i_arrayidx5_i_i223_add0_add_x_a;
    wire [64:0] i_arrayidx5_i_i223_add0_add_x_b;
    logic [64:0] i_arrayidx5_i_i223_add0_add_x_o;
    wire [64:0] i_arrayidx5_i_i223_add0_add_x_q;
    wire [63:0] i_arrayidx5_i_i223_add0_c_i64_121_x_q;
    wire [63:0] i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_iord_bl_call_add_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_iord_bl_call_add_o_fifoready;
    wire [0:0] i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_valid;
    wire [0:0] i_lm_i0_cast_add0_lm_i0_cast_select_0_x_b;
    wire [63:0] i_t_numcols_i33_i_add0_trunc_sel_x_b;
    wire [64:0] i_t_numcols_i33_i_add0_add_x_a;
    wire [64:0] i_t_numcols_i33_i_add0_add_x_b;
    logic [64:0] i_t_numcols_i33_i_add0_add_x_o;
    wire [64:0] i_t_numcols_i33_i_add0_add_x_q;
    wire [63:0] i_t_numcols_i33_i_add0_c_i64_41_x_q;
    wire [63:0] i_t_numcols_i_i62_add0_trunc_sel_x_b;
    wire [64:0] i_t_numcols_i_i62_add0_add_x_a;
    wire [64:0] i_t_numcols_i_i62_add0_add_x_b;
    logic [64:0] i_t_numcols_i_i62_add0_add_x_o;
    wire [64:0] i_t_numcols_i_i62_add0_add_x_q;
    wire [63:0] i_t_numcols_i_i_add0_trunc_sel_x_b;
    wire [64:0] i_t_numcols_i_i_add0_add_x_a;
    wire [64:0] i_t_numcols_i_i_add0_add_x_b;
    logic [64:0] i_t_numcols_i_i_add0_add_x_o;
    wire [64:0] i_t_numcols_i_i_add0_add_x_q;
    wire [0:0] i_tobool_i30_i_add13_sel_x_b;
    wire [0:0] i_tobool_i_i_add5_sel_x_b;
    wire [63:0] i_transposed_i29_i_add0_trunc_sel_x_b;
    wire [64:0] i_transposed_i29_i_add0_add_x_a;
    wire [64:0] i_transposed_i29_i_add0_add_x_b;
    logic [64:0] i_transposed_i29_i_add0_add_x_o;
    wire [64:0] i_transposed_i29_i_add0_add_x_q;
    wire [63:0] i_transposed_i29_i_add0_c_i64_81_x_q;
    wire [63:0] i_transposed_i_add0_trunc_sel_x_b;
    wire [64:0] i_transposed_i_add0_add_x_a;
    wire [64:0] i_transposed_i_add0_add_x_b;
    logic [64:0] i_transposed_i_add0_add_x_o;
    wire [64:0] i_transposed_i_add0_add_x_q;
    wire [63:0] i_transposed_i_i_add0_trunc_sel_x_b;
    wire [64:0] i_transposed_i_i_add0_add_x_a;
    wire [64:0] i_transposed_i_i_add0_add_x_b;
    logic [64:0] i_transposed_i_i_add0_add_x_o;
    wire [64:0] i_transposed_i_i_add0_add_x_q;
    wire [0:0] add_B1_start_merge_reg_out_stall_out;
    wire [0:0] add_B1_start_merge_reg_out_valid_out;
    wire [31:0] c_float_0_000000e_0089_q;
    wire [0:0] i_acl_add63_s;
    reg [31:0] i_acl_add63_q;
    wire [32:0] i_add3_add37_a;
    wire [32:0] i_add3_add37_b;
    logic [32:0] i_add3_add37_o;
    wire [32:0] i_add3_add37_q;
    wire [0:0] i_cmp11_i_i243_add58_qi;
    reg [0:0] i_cmp11_i_i243_add58_q;
    wire [0:0] i_cmp16_add28_q;
    wire [0:0] i_cmp24442_add42_q;
    wire [0:0] i_cmp2_i_i217_add55_qi;
    reg [0:0] i_cmp2_i_i217_add55_q;
    wire [0:0] i_cmp4_i_add23_q;
    wire [0:0] i_cmp_add26_q;
    wire [0:0] i_cmp_i_add19_q;
    wire [0:0] i_do_directly_if_then10_select82_add34_q;
    wire [0:0] i_do_directly_if_then5_select_add36_qi;
    reg [0:0] i_do_directly_if_then5_select_add36_q;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_add28_add83_out_intel_reserved_ffwd_19_0;
    wire [0:0] i_llvm_fpga_ffwd_source_f32_unnamed_add28_add83_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_f32_unnamed_add28_add83_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add17_add72_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add17_add72_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add17_add72_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add22_add77_out_intel_reserved_ffwd_13_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add22_add77_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add22_add77_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add23_add78_out_intel_reserved_ffwd_14_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add23_add78_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add23_add78_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add24_add79_out_intel_reserved_ffwd_15_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add24_add79_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_add24_add79_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_out_intel_reserved_ffwd_12_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add25_add80_out_intel_reserved_ffwd_16_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add25_add80_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add25_add80_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add26_add81_out_intel_reserved_ffwd_17_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add26_add81_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add26_add81_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add27_add82_out_intel_reserved_ffwd_18_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add27_add82_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add27_add82_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm1_add47_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1_add47_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1_add47_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm722_add51_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm722_add51_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm722_add51_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm743_add53_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm743_add53_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm743_add53_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unmaskedload_lm4_add60_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unmaskedload_lm4_add60_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unmaskedload_lm4_add60_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_unnamed_add2_add4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_add2_add4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_add2_add4_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_writedata;
    wire [6:0] i_llvm_fpga_mem_unnamed_add2_add4_vt_const_7_q;
    wire [7:0] i_llvm_fpga_mem_unnamed_add2_add4_vt_join_q;
    wire [0:0] i_llvm_fpga_mem_unnamed_add2_add4_vt_select_0_b;
    wire [31:0] i_llvm_fpga_mem_unnamed_add3_add7_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_add3_add7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_add3_add7_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_add4_add9_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_add4_add9_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_add4_add9_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_unnamed_add5_add12_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_add5_add12_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_add5_add12_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_unnamed_add5_add12_vt_join_q;
    wire [0:0] i_llvm_fpga_mem_unnamed_add5_add12_vt_select_0_b;
    wire [31:0] i_llvm_fpga_mem_unnamed_add6_add15_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_add6_add15_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_add6_add15_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_add7_add17_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_add7_add17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_add7_add17_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_writedata;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_out_valid_out;
    wire [0:0] i_not_cmp_i_add33_q;
    wire [0:0] i_or_cond_add30_q;
    wire [32:0] i_select55_add38_a;
    wire [32:0] i_select55_add38_b;
    logic [32:0] i_select55_add38_o;
    wire [32:0] i_select55_add38_q;
    wire [0:0] i_select56_add39_s;
    reg [31:0] i_select56_add39_q;
    wire [0:0] i_select61_add40_s;
    reg [31:0] i_select61_add40_q;
    wire [0:0] i_select63_add41_s;
    reg [31:0] i_select63_add41_q;
    wire [0:0] i_unnamed_add10_s;
    reg [31:0] i_unnamed_add10_q;
    wire [0:0] i_unnamed_add18_s;
    reg [31:0] i_unnamed_add18_q;
    wire [0:0] i_unnamed_add21_s;
    reg [31:0] i_unnamed_add21_q;
    wire [0:0] i_unnamed_add22_s;
    reg [31:0] i_unnamed_add22_q;
    wire [0:0] i_unnamed_add25_q;
    wire [0:0] i_unnamed_add31_q;
    wire [0:0] i_unnamed_add32_q;
    wire [0:0] i_unnamed_add35_q;
    wire [0:0] i_unnamed_add45_q;
    wire [0:0] i_unnamed_add54_s;
    reg [31:0] i_unnamed_add54_q;
    wire [0:0] i_unnamed_add61_s;
    reg [31:0] i_unnamed_add61_q;
    wire [0:0] i_unnamed_add62_s;
    reg [31:0] i_unnamed_add62_q;
    wire [0:0] i_xor_add46_q;
    wire [127:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [0:0] redist0_i_unnamed_add32_q_32_fifo_valid_in;
    wire redist0_i_unnamed_add32_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_unnamed_add32_q_32_fifo_stall_in;
    wire redist0_i_unnamed_add32_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_i_unnamed_add32_q_32_fifo_data_in;
    wire [0:0] redist0_i_unnamed_add32_q_32_fifo_valid_out;
    wire redist0_i_unnamed_add32_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_unnamed_add32_q_32_fifo_stall_out;
    wire redist0_i_unnamed_add32_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_i_unnamed_add32_q_32_fifo_data_out;
    reg [0:0] redist1_i_do_directly_if_then10_select82_add34_q_1_0_q;
    wire [0:0] redist2_i_cmp2_i_i217_add55_q_32_fifo_valid_in;
    wire redist2_i_cmp2_i_i217_add55_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_cmp2_i_i217_add55_q_32_fifo_stall_in;
    wire redist2_i_cmp2_i_i217_add55_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist2_i_cmp2_i_i217_add55_q_32_fifo_data_in;
    wire [0:0] redist2_i_cmp2_i_i217_add55_q_32_fifo_valid_out;
    wire redist2_i_cmp2_i_i217_add55_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_cmp2_i_i217_add55_q_32_fifo_stall_out;
    wire redist2_i_cmp2_i_i217_add55_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist2_i_cmp2_i_i217_add55_q_32_fifo_data_out;
    wire [0:0] redist3_i_cmp24442_add42_q_32_fifo_valid_in;
    wire redist3_i_cmp24442_add42_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_cmp24442_add42_q_32_fifo_stall_in;
    wire redist3_i_cmp24442_add42_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist3_i_cmp24442_add42_q_32_fifo_data_in;
    wire [0:0] redist3_i_cmp24442_add42_q_32_fifo_valid_out;
    wire redist3_i_cmp24442_add42_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_cmp24442_add42_q_32_fifo_stall_out;
    wire redist3_i_cmp24442_add42_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist3_i_cmp24442_add42_q_32_fifo_data_out;
    wire [0:0] redist4_i_cmp11_i_i243_add58_q_32_fifo_valid_in;
    wire redist4_i_cmp11_i_i243_add58_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_cmp11_i_i243_add58_q_32_fifo_stall_in;
    wire redist4_i_cmp11_i_i243_add58_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_i_cmp11_i_i243_add58_q_32_fifo_data_in;
    wire [0:0] redist4_i_cmp11_i_i243_add58_q_32_fifo_valid_out;
    wire redist4_i_cmp11_i_i243_add58_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_cmp11_i_i243_add58_q_32_fifo_stall_out;
    wire redist4_i_cmp11_i_i243_add58_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_i_cmp11_i_i243_add58_q_32_fifo_data_out;
    wire [0:0] redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_valid_in;
    wire redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_stall_in;
    wire redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_data_in;
    wire [0:0] redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_valid_out;
    wire redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_stall_out;
    wire redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_data_out;
    reg [31:0] redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [127:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [127:0] coalesced_delay_0_fifo_data_out;
    wire [191:0] bubble_join_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_c;
    wire [63:0] bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_d;
    wire [7:0] bubble_join_i_llvm_fpga_mem_lm1_add47_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_lm1_add47_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm722_add51_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm722_add51_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm743_add53_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm743_add53_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unmaskedload_lm4_add60_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unmaskedload_lm4_add60_b;
    wire [7:0] bubble_join_i_llvm_fpga_mem_unnamed_add2_add4_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_unnamed_add2_add4_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_add3_add7_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_add3_add7_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_add4_add9_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_add4_add9_b;
    wire [7:0] bubble_join_i_llvm_fpga_mem_unnamed_add5_add12_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_unnamed_add5_add12_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_add6_add15_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_add6_add15_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_add7_add17_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_add7_add17_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_b;
    wire [0:0] bubble_join_redist0_i_unnamed_add32_q_32_fifo_q;
    wire [0:0] bubble_select_redist0_i_unnamed_add32_q_32_fifo_b;
    wire [0:0] bubble_join_redist2_i_cmp2_i_i217_add55_q_32_fifo_q;
    wire [0:0] bubble_select_redist2_i_cmp2_i_i217_add55_q_32_fifo_b;
    wire [0:0] bubble_join_redist3_i_cmp24442_add42_q_32_fifo_q;
    wire [0:0] bubble_select_redist3_i_cmp24442_add42_q_32_fifo_b;
    wire [0:0] bubble_join_redist4_i_cmp11_i_i243_add58_q_32_fifo_q;
    wire [0:0] bubble_select_redist4_i_cmp11_i_i243_add58_q_32_fifo_b;
    wire [0:0] bubble_join_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_q;
    wire [0:0] bubble_select_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_b;
    wire [127:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [127:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg4;
    reg [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed4;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg5;
    reg [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed5;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg6;
    reg [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed6;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg7;
    reg [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg7;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed7;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg8;
    reg [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg8;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed8;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg9;
    reg [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg9;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed9;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg10;
    reg [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg10;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed10;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or2;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or3;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or4;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or5;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or6;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or7;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or8;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or9;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V2;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V3;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V4;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V5;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V6;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V7;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V8;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V9;
    wire [0:0] SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V10;
    wire [0:0] SE_out_add_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_add_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_add_B1_start_merge_reg_V0;
    reg [0:0] SE_i_cmp11_i_i243_add58_R_v_0;
    wire [0:0] SE_i_cmp11_i_i243_add58_v_s_0;
    wire [0:0] SE_i_cmp11_i_i243_add58_s_tv_0;
    wire [0:0] SE_i_cmp11_i_i243_add58_backEN;
    wire [0:0] SE_i_cmp11_i_i243_add58_backStall;
    wire [0:0] SE_i_cmp11_i_i243_add58_V0;
    reg [0:0] SE_i_cmp2_i_i217_add55_R_v_0;
    wire [0:0] SE_i_cmp2_i_i217_add55_v_s_0;
    wire [0:0] SE_i_cmp2_i_i217_add55_s_tv_0;
    wire [0:0] SE_i_cmp2_i_i217_add55_backEN;
    wire [0:0] SE_i_cmp2_i_i217_add55_backStall;
    wire [0:0] SE_i_cmp2_i_i217_add55_V0;
    wire [0:0] SE_i_cmp4_i_add23_wireValid;
    wire [0:0] SE_i_cmp4_i_add23_wireStall;
    wire [0:0] SE_i_cmp4_i_add23_StallValid;
    wire [0:0] SE_i_cmp4_i_add23_toReg0;
    reg [0:0] SE_i_cmp4_i_add23_fromReg0;
    wire [0:0] SE_i_cmp4_i_add23_consumed0;
    wire [0:0] SE_i_cmp4_i_add23_toReg1;
    reg [0:0] SE_i_cmp4_i_add23_fromReg1;
    wire [0:0] SE_i_cmp4_i_add23_consumed1;
    wire [0:0] SE_i_cmp4_i_add23_toReg2;
    reg [0:0] SE_i_cmp4_i_add23_fromReg2;
    wire [0:0] SE_i_cmp4_i_add23_consumed2;
    wire [0:0] SE_i_cmp4_i_add23_and0;
    wire [0:0] SE_i_cmp4_i_add23_or0;
    wire [0:0] SE_i_cmp4_i_add23_or1;
    wire [0:0] SE_i_cmp4_i_add23_backStall;
    wire [0:0] SE_i_cmp4_i_add23_V0;
    wire [0:0] SE_i_cmp4_i_add23_V1;
    wire [0:0] SE_i_cmp4_i_add23_V2;
    reg [0:0] SE_i_do_directly_if_then5_select_add36_R_v_0;
    wire [0:0] SE_i_do_directly_if_then5_select_add36_v_s_0;
    wire [0:0] SE_i_do_directly_if_then5_select_add36_s_tv_0;
    wire [0:0] SE_i_do_directly_if_then5_select_add36_backEN;
    wire [0:0] SE_i_do_directly_if_then5_select_add36_backStall;
    wire [0:0] SE_i_do_directly_if_then5_select_add36_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_toReg2;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_fromReg2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_consumed2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_or0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_or1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_add47_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_add47_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm722_add51_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm743_add53_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_and2;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add2_add4_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add3_add7_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add4_add9_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add5_add12_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add6_add15_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_add7_add17_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_V0;
    wire [0:0] SE_i_or_cond_add30_wireValid;
    wire [0:0] SE_i_or_cond_add30_wireStall;
    wire [0:0] SE_i_or_cond_add30_StallValid;
    wire [0:0] SE_i_or_cond_add30_toReg0;
    reg [0:0] SE_i_or_cond_add30_fromReg0;
    wire [0:0] SE_i_or_cond_add30_consumed0;
    wire [0:0] SE_i_or_cond_add30_toReg1;
    reg [0:0] SE_i_or_cond_add30_fromReg1;
    wire [0:0] SE_i_or_cond_add30_consumed1;
    wire [0:0] SE_i_or_cond_add30_and0;
    wire [0:0] SE_i_or_cond_add30_or0;
    wire [0:0] SE_i_or_cond_add30_backStall;
    wire [0:0] SE_i_or_cond_add30_V0;
    wire [0:0] SE_i_or_cond_add30_V1;
    wire [0:0] SE_i_select56_add39_wireValid;
    wire [0:0] SE_i_select56_add39_and0;
    wire [0:0] SE_i_select56_add39_backStall;
    wire [0:0] SE_i_select56_add39_V0;
    wire [0:0] SE_i_select61_add40_wireValid;
    wire [0:0] SE_i_select61_add40_and0;
    wire [0:0] SE_i_select61_add40_backStall;
    wire [0:0] SE_i_select61_add40_V0;
    wire [0:0] SE_i_unnamed_add10_wireValid;
    wire [0:0] SE_i_unnamed_add10_wireStall;
    wire [0:0] SE_i_unnamed_add10_StallValid;
    wire [0:0] SE_i_unnamed_add10_toReg0;
    reg [0:0] SE_i_unnamed_add10_fromReg0;
    wire [0:0] SE_i_unnamed_add10_consumed0;
    wire [0:0] SE_i_unnamed_add10_toReg1;
    reg [0:0] SE_i_unnamed_add10_fromReg1;
    wire [0:0] SE_i_unnamed_add10_consumed1;
    wire [0:0] SE_i_unnamed_add10_toReg2;
    reg [0:0] SE_i_unnamed_add10_fromReg2;
    wire [0:0] SE_i_unnamed_add10_consumed2;
    wire [0:0] SE_i_unnamed_add10_toReg3;
    reg [0:0] SE_i_unnamed_add10_fromReg3;
    wire [0:0] SE_i_unnamed_add10_consumed3;
    wire [0:0] SE_i_unnamed_add10_toReg4;
    reg [0:0] SE_i_unnamed_add10_fromReg4;
    wire [0:0] SE_i_unnamed_add10_consumed4;
    wire [0:0] SE_i_unnamed_add10_and0;
    wire [0:0] SE_i_unnamed_add10_and1;
    wire [0:0] SE_i_unnamed_add10_or0;
    wire [0:0] SE_i_unnamed_add10_or1;
    wire [0:0] SE_i_unnamed_add10_or2;
    wire [0:0] SE_i_unnamed_add10_or3;
    wire [0:0] SE_i_unnamed_add10_backStall;
    wire [0:0] SE_i_unnamed_add10_V0;
    wire [0:0] SE_i_unnamed_add10_V1;
    wire [0:0] SE_i_unnamed_add10_V2;
    wire [0:0] SE_i_unnamed_add10_V3;
    wire [0:0] SE_i_unnamed_add10_V4;
    wire [0:0] SE_i_unnamed_add18_wireValid;
    wire [0:0] SE_i_unnamed_add18_wireStall;
    wire [0:0] SE_i_unnamed_add18_StallValid;
    wire [0:0] SE_i_unnamed_add18_toReg0;
    reg [0:0] SE_i_unnamed_add18_fromReg0;
    wire [0:0] SE_i_unnamed_add18_consumed0;
    wire [0:0] SE_i_unnamed_add18_toReg1;
    reg [0:0] SE_i_unnamed_add18_fromReg1;
    wire [0:0] SE_i_unnamed_add18_consumed1;
    wire [0:0] SE_i_unnamed_add18_and0;
    wire [0:0] SE_i_unnamed_add18_and1;
    wire [0:0] SE_i_unnamed_add18_or0;
    wire [0:0] SE_i_unnamed_add18_backStall;
    wire [0:0] SE_i_unnamed_add18_V0;
    wire [0:0] SE_i_unnamed_add18_V1;
    wire [0:0] SE_i_unnamed_add54_wireValid;
    wire [0:0] SE_i_unnamed_add54_and0;
    wire [0:0] SE_i_unnamed_add54_and1;
    wire [0:0] SE_i_unnamed_add54_backStall;
    wire [0:0] SE_i_unnamed_add54_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_wireValid;
    wire [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_wireStall;
    wire [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_StallValid;
    wire [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_toReg0;
    reg [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_fromReg0;
    wire [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_consumed0;
    wire [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_toReg1;
    reg [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_fromReg1;
    wire [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_consumed1;
    wire [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_or0;
    wire [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_backStall;
    wire [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_V0;
    wire [0:0] SE_out_redist3_i_cmp24442_add42_q_32_fifo_V1;
    wire [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_wireStall;
    wire [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_StallValid;
    wire [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_toReg0;
    reg [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_fromReg0;
    wire [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_consumed0;
    wire [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_toReg1;
    reg [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_fromReg1;
    wire [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_consumed1;
    wire [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_or0;
    wire [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_backStall;
    wire [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_V0;
    wire [0:0] SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_V1;
    reg [0:0] SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_V0;
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
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg4;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg4;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed4;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and8;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and9;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and10;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and11;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and12;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and13;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and14;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and15;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and16;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and17;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and18;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and19;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_stall_out_bitsignaltemp;


    // i_llvm_fpga_mem_unnamed_add2_add4_vt_const_7(CONSTANT,140)
    assign i_llvm_fpga_mem_unnamed_add2_add4_vt_const_7_q = $unsigned(7'b0000000);

    // bubble_join_i_llvm_fpga_mem_unnamed_add5_add12(BITJOIN,325)
    assign bubble_join_i_llvm_fpga_mem_unnamed_add5_add12_q = i_llvm_fpga_mem_unnamed_add5_add12_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_add5_add12(BITSELECT,326)
    assign bubble_select_i_llvm_fpga_mem_unnamed_add5_add12_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_add5_add12_q[7:0]);

    // i_llvm_fpga_mem_unnamed_add5_add12_vt_select_0(BITSELECT,148)@34
    assign i_llvm_fpga_mem_unnamed_add5_add12_vt_select_0_b = bubble_select_i_llvm_fpga_mem_unnamed_add5_add12_b[0:0];

    // i_llvm_fpga_mem_unnamed_add5_add12_vt_join(BITJOIN,147)@34
    assign i_llvm_fpga_mem_unnamed_add5_add12_vt_join_q = {i_llvm_fpga_mem_unnamed_add2_add4_vt_const_7_q, i_llvm_fpga_mem_unnamed_add5_add12_vt_select_0_b};

    // i_tobool_i30_i_add13_sel_x(BITSELECT,74)@34
    assign i_tobool_i30_i_add13_sel_x_b = i_llvm_fpga_mem_unnamed_add5_add12_vt_join_q[0:0];

    // c_float_0_000000e_0089(FLOATCONSTANT,91)
    assign c_float_0_000000e_0089_q = $unsigned(32'b00000000000000000000000000000000);

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75(STALLENABLE,406)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_out_valid_out;

    // c_i32_186_recast_x(CONSTANT,5)
    assign c_i32_186_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_mem_unnamed_add3_add7(BITJOIN,319)
    assign bubble_join_i_llvm_fpga_mem_unnamed_add3_add7_q = i_llvm_fpga_mem_unnamed_add3_add7_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_add3_add7(BITSELECT,320)
    assign bubble_select_i_llvm_fpga_mem_unnamed_add3_add7_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_add3_add7_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_add4_add9(BITJOIN,322)
    assign bubble_join_i_llvm_fpga_mem_unnamed_add4_add9_q = i_llvm_fpga_mem_unnamed_add4_add9_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_add4_add9(BITSELECT,323)
    assign bubble_select_i_llvm_fpga_mem_unnamed_add4_add9_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_add4_add9_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_add2_add4(BITJOIN,316)
    assign bubble_join_i_llvm_fpga_mem_unnamed_add2_add4_q = i_llvm_fpga_mem_unnamed_add2_add4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_add2_add4(BITSELECT,317)
    assign bubble_select_i_llvm_fpga_mem_unnamed_add2_add4_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_add2_add4_q[7:0]);

    // i_llvm_fpga_mem_unnamed_add2_add4_vt_select_0(BITSELECT,142)@34
    assign i_llvm_fpga_mem_unnamed_add2_add4_vt_select_0_b = bubble_select_i_llvm_fpga_mem_unnamed_add2_add4_b[0:0];

    // i_llvm_fpga_mem_unnamed_add2_add4_vt_join(BITJOIN,141)@34
    assign i_llvm_fpga_mem_unnamed_add2_add4_vt_join_q = {i_llvm_fpga_mem_unnamed_add2_add4_vt_const_7_q, i_llvm_fpga_mem_unnamed_add2_add4_vt_select_0_b};

    // i_tobool_i_i_add5_sel_x(BITSELECT,75)@34
    assign i_tobool_i_i_add5_sel_x_b = i_llvm_fpga_mem_unnamed_add2_add4_vt_join_q[0:0];

    // i_unnamed_add10(MUX,160)@34
    assign i_unnamed_add10_s = i_tobool_i_i_add5_sel_x_b;
    always @(i_unnamed_add10_s or bubble_select_i_llvm_fpga_mem_unnamed_add4_add9_b or bubble_select_i_llvm_fpga_mem_unnamed_add3_add7_b)
    begin
        unique case (i_unnamed_add10_s)
            1'b0 : i_unnamed_add10_q = bubble_select_i_llvm_fpga_mem_unnamed_add4_add9_b;
            1'b1 : i_unnamed_add10_q = bubble_select_i_llvm_fpga_mem_unnamed_add3_add7_b;
            default : i_unnamed_add10_q = 32'b0;
        endcase
    end

    // i_select55_add38(ADD,154)@34
    assign i_select55_add38_a = {1'b0, i_unnamed_add10_q};
    assign i_select55_add38_b = {1'b0, c_i32_186_recast_x_q};
    assign i_select55_add38_o = $unsigned(i_select55_add38_a) + $unsigned(i_select55_add38_b);
    assign i_select55_add38_q = i_select55_add38_o[32:0];

    // bgTrunc_i_select55_add38_sel_x(BITSELECT,3)@34
    assign bgTrunc_i_select55_add38_sel_x_b = i_select55_add38_q[31:0];

    // bubble_join_i_llvm_fpga_mem_unnamed_add6_add15(BITJOIN,328)
    assign bubble_join_i_llvm_fpga_mem_unnamed_add6_add15_q = i_llvm_fpga_mem_unnamed_add6_add15_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_add6_add15(BITSELECT,329)
    assign bubble_select_i_llvm_fpga_mem_unnamed_add6_add15_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_add6_add15_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_add7_add17(BITJOIN,331)
    assign bubble_join_i_llvm_fpga_mem_unnamed_add7_add17_q = i_llvm_fpga_mem_unnamed_add7_add17_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_add7_add17(BITSELECT,332)
    assign bubble_select_i_llvm_fpga_mem_unnamed_add7_add17_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_add7_add17_q[31:0]);

    // i_unnamed_add18(MUX,161)@34
    assign i_unnamed_add18_s = i_tobool_i30_i_add13_sel_x_b;
    always @(i_unnamed_add18_s or bubble_select_i_llvm_fpga_mem_unnamed_add7_add17_b or bubble_select_i_llvm_fpga_mem_unnamed_add6_add15_b)
    begin
        unique case (i_unnamed_add18_s)
            1'b0 : i_unnamed_add18_q = bubble_select_i_llvm_fpga_mem_unnamed_add7_add17_b;
            1'b1 : i_unnamed_add18_q = bubble_select_i_llvm_fpga_mem_unnamed_add6_add15_b;
            default : i_unnamed_add18_q = 32'b0;
        endcase
    end

    // i_cmp_i_add19(LOGICAL,112)@34
    assign i_cmp_i_add19_q = $unsigned(i_unnamed_add10_q == i_unnamed_add18_q ? 1'b1 : 1'b0);

    // i_not_cmp_i_add33(LOGICAL,152)@34
    assign i_not_cmp_i_add33_q = i_cmp_i_add19_q ^ VCC_q;

    // i_unnamed_add22(MUX,163)@34
    assign i_unnamed_add22_s = i_tobool_i30_i_add13_sel_x_b;
    always @(i_unnamed_add22_s or bubble_select_i_llvm_fpga_mem_unnamed_add6_add15_b or bubble_select_i_llvm_fpga_mem_unnamed_add7_add17_b)
    begin
        unique case (i_unnamed_add22_s)
            1'b0 : i_unnamed_add22_q = bubble_select_i_llvm_fpga_mem_unnamed_add6_add15_b;
            1'b1 : i_unnamed_add22_q = bubble_select_i_llvm_fpga_mem_unnamed_add7_add17_b;
            default : i_unnamed_add22_q = 32'b0;
        endcase
    end

    // i_unnamed_add21(MUX,162)@34
    assign i_unnamed_add21_s = i_tobool_i_i_add5_sel_x_b;
    always @(i_unnamed_add21_s or bubble_select_i_llvm_fpga_mem_unnamed_add3_add7_b or bubble_select_i_llvm_fpga_mem_unnamed_add4_add9_b)
    begin
        unique case (i_unnamed_add21_s)
            1'b0 : i_unnamed_add21_q = bubble_select_i_llvm_fpga_mem_unnamed_add3_add7_b;
            1'b1 : i_unnamed_add21_q = bubble_select_i_llvm_fpga_mem_unnamed_add4_add9_b;
            default : i_unnamed_add21_q = 32'b0;
        endcase
    end

    // i_cmp4_i_add23(LOGICAL,110)@34
    assign i_cmp4_i_add23_q = $unsigned(i_unnamed_add21_q == i_unnamed_add22_q ? 1'b1 : 1'b0);

    // i_do_directly_if_then10_select82_add34(LOGICAL,113)@34
    assign i_do_directly_if_then10_select82_add34_q = i_cmp4_i_add23_q & i_not_cmp_i_add33_q;

    // i_select56_add39(MUX,155)@34
    assign i_select56_add39_s = i_do_directly_if_then10_select82_add34_q;
    always @(i_select56_add39_s or bgTrunc_i_select55_add38_sel_x_b or c_i32_186_recast_x_q)
    begin
        unique case (i_select56_add39_s)
            1'b0 : i_select56_add39_q = bgTrunc_i_select55_add38_sel_x_b;
            1'b1 : i_select56_add39_q = c_i32_186_recast_x_q;
            default : i_select56_add39_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75(BLACKBOX,123)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_20_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add20_add75 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(i_select56_add39_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_backStall),
        .in_valid_in(SE_i_select56_add39_V0),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_out_intel_reserved_ffwd_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_select56_add39(STALLENABLE,458)
    // Valid signal propagation
    assign SE_i_select56_add39_V0 = SE_i_select56_add39_wireValid;
    // Backward Stall generation
    assign SE_i_select56_add39_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_out_stall_out | ~ (SE_i_select56_add39_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_select56_add39_and0 = SE_i_unnamed_add10_V3;
    assign SE_i_select56_add39_wireValid = SE_i_cmp4_i_add23_V1 & SE_i_select56_add39_and0;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76(STALLENABLE,408)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_out_valid_out;

    // i_add3_add37(ADD,105)@34
    assign i_add3_add37_a = {1'b0, i_unnamed_add21_q};
    assign i_add3_add37_b = {1'b0, c_i32_186_recast_x_q};
    assign i_add3_add37_o = $unsigned(i_add3_add37_a) + $unsigned(i_add3_add37_b);
    assign i_add3_add37_q = i_add3_add37_o[32:0];

    // bgTrunc_i_add3_add37_sel_x(BITSELECT,2)@34
    assign bgTrunc_i_add3_add37_sel_x_b = i_add3_add37_q[31:0];

    // redist8_bgTrunc_i_add3_add37_sel_x_b_1_0(REG,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add3_add37_sel_x_b);
        end
    end

    // i_unnamed_add35(LOGICAL,167)@34
    assign i_unnamed_add35_q = i_cmp4_i_add23_q ^ VCC_q;

    // i_do_directly_if_then5_select_add36(LOGICAL,114)@34 + 1
    assign i_do_directly_if_then5_select_add36_qi = i_cmp_i_add19_q & i_unnamed_add35_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_do_directly_if_then5_select_add36_delay ( .xin(i_do_directly_if_then5_select_add36_qi), .xout(i_do_directly_if_then5_select_add36_q), .ena(SE_i_do_directly_if_then5_select_add36_backEN[0]), .clk(clock), .aclr(resetn) );

    // i_select61_add40(MUX,156)@35
    assign i_select61_add40_s = i_do_directly_if_then5_select_add36_q;
    always @(i_select61_add40_s or redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_q or c_i32_186_recast_x_q)
    begin
        unique case (i_select61_add40_s)
            1'b0 : i_select61_add40_q = redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_q;
            1'b1 : i_select61_add40_q = c_i32_186_recast_x_q;
            default : i_select61_add40_q = 32'b0;
        endcase
    end

    // redist1_i_do_directly_if_then10_select82_add34_q_1_0(REG,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_do_directly_if_then10_select82_add34_q_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_i_do_directly_if_then5_select_add36_backEN == 1'b1)
        begin
            redist1_i_do_directly_if_then10_select82_add34_q_1_0_q <= $unsigned(i_do_directly_if_then10_select82_add34_q);
        end
    end

    // i_select63_add41(MUX,157)@35
    assign i_select63_add41_s = redist1_i_do_directly_if_then10_select82_add34_q_1_0_q;
    always @(i_select63_add41_s or i_select61_add40_q or redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_q)
    begin
        unique case (i_select63_add41_s)
            1'b0 : i_select63_add41_q = i_select61_add40_q;
            1'b1 : i_select63_add41_q = redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_q;
            default : i_select63_add41_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76(BLACKBOX,124)@35
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_21_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add21_add76 (
        .in_predicate_in(GND_q),
        .in_src_data_in_12_0(i_select63_add41_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_backStall),
        .in_valid_in(SE_i_select61_add40_V0),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_out_intel_reserved_ffwd_12_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0(STALLENABLE,489)
    // Valid signal propagation
    assign SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_V0 = SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_s_tv_0 = SE_i_select61_add40_backStall & SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_backEN = ~ (SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_v_s_0 = SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_backEN & SE_i_unnamed_add10_V2;
    // Backward Stall generation
    assign SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_backStall = ~ (SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_R_v_0 <= SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_R_v_0 & SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_R_v_0 <= SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_select61_add40(STALLENABLE,459)
    // Valid signal propagation
    assign SE_i_select61_add40_V0 = SE_i_select61_add40_wireValid;
    // Backward Stall generation
    assign SE_i_select61_add40_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_out_stall_out | ~ (SE_i_select61_add40_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_select61_add40_and0 = SE_i_do_directly_if_then5_select_add36_V0;
    assign SE_i_select61_add40_wireValid = SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_V0 & SE_i_select61_add40_and0;

    // SE_i_do_directly_if_then5_select_add36(STALLENABLE,388)
    // Valid signal propagation
    assign SE_i_do_directly_if_then5_select_add36_V0 = SE_i_do_directly_if_then5_select_add36_R_v_0;
    // Stall signal propagation
    assign SE_i_do_directly_if_then5_select_add36_s_tv_0 = SE_i_select61_add40_backStall & SE_i_do_directly_if_then5_select_add36_R_v_0;
    // Backward Enable generation
    assign SE_i_do_directly_if_then5_select_add36_backEN = ~ (SE_i_do_directly_if_then5_select_add36_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_do_directly_if_then5_select_add36_v_s_0 = SE_i_do_directly_if_then5_select_add36_backEN & SE_i_cmp4_i_add23_V0;
    // Backward Stall generation
    assign SE_i_do_directly_if_then5_select_add36_backStall = ~ (SE_i_do_directly_if_then5_select_add36_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_do_directly_if_then5_select_add36_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_do_directly_if_then5_select_add36_backEN == 1'b0)
            begin
                SE_i_do_directly_if_then5_select_add36_R_v_0 <= SE_i_do_directly_if_then5_select_add36_R_v_0 & SE_i_do_directly_if_then5_select_add36_s_tv_0;
            end
            else
            begin
                SE_i_do_directly_if_then5_select_add36_R_v_0 <= SE_i_do_directly_if_then5_select_add36_v_s_0;
            end

        end
    end

    // c_i32_088_recast_x(CONSTANT,4)
    assign c_i32_088_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp24442_add42(LOGICAL,108)@34
    assign i_cmp24442_add42_q = $unsigned(i_unnamed_add10_q == c_i32_088_recast_x_q ? 1'b1 : 1'b0);

    // SE_out_redist3_i_cmp24442_add42_q_32_fifo(STALLENABLE,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist3_i_cmp24442_add42_q_32_fifo_fromReg0 <= '0;
            SE_out_redist3_i_cmp24442_add42_q_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist3_i_cmp24442_add42_q_32_fifo_fromReg0 <= SE_out_redist3_i_cmp24442_add42_q_32_fifo_toReg0;
            // Successor 1
            SE_out_redist3_i_cmp24442_add42_q_32_fifo_fromReg1 <= SE_out_redist3_i_cmp24442_add42_q_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist3_i_cmp24442_add42_q_32_fifo_consumed0 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_add22_add77_out_stall_out) & SE_out_redist3_i_cmp24442_add42_q_32_fifo_wireValid) | SE_out_redist3_i_cmp24442_add42_q_32_fifo_fromReg0;
    assign SE_out_redist3_i_cmp24442_add42_q_32_fifo_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_add23_add78_out_stall_out) & SE_out_redist3_i_cmp24442_add42_q_32_fifo_wireValid) | SE_out_redist3_i_cmp24442_add42_q_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist3_i_cmp24442_add42_q_32_fifo_StallValid = SE_out_redist3_i_cmp24442_add42_q_32_fifo_backStall & SE_out_redist3_i_cmp24442_add42_q_32_fifo_wireValid;
    assign SE_out_redist3_i_cmp24442_add42_q_32_fifo_toReg0 = SE_out_redist3_i_cmp24442_add42_q_32_fifo_StallValid & SE_out_redist3_i_cmp24442_add42_q_32_fifo_consumed0;
    assign SE_out_redist3_i_cmp24442_add42_q_32_fifo_toReg1 = SE_out_redist3_i_cmp24442_add42_q_32_fifo_StallValid & SE_out_redist3_i_cmp24442_add42_q_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist3_i_cmp24442_add42_q_32_fifo_or0 = SE_out_redist3_i_cmp24442_add42_q_32_fifo_consumed0;
    assign SE_out_redist3_i_cmp24442_add42_q_32_fifo_wireStall = ~ (SE_out_redist3_i_cmp24442_add42_q_32_fifo_consumed1 & SE_out_redist3_i_cmp24442_add42_q_32_fifo_or0);
    assign SE_out_redist3_i_cmp24442_add42_q_32_fifo_backStall = SE_out_redist3_i_cmp24442_add42_q_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist3_i_cmp24442_add42_q_32_fifo_V0 = SE_out_redist3_i_cmp24442_add42_q_32_fifo_wireValid & ~ (SE_out_redist3_i_cmp24442_add42_q_32_fifo_fromReg0);
    assign SE_out_redist3_i_cmp24442_add42_q_32_fifo_V1 = SE_out_redist3_i_cmp24442_add42_q_32_fifo_wireValid & ~ (SE_out_redist3_i_cmp24442_add42_q_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist3_i_cmp24442_add42_q_32_fifo_wireValid = redist3_i_cmp24442_add42_q_32_fifo_valid_out;

    // redist3_i_cmp24442_add42_q_32_fifo(STALLFIFO,274)
    assign redist3_i_cmp24442_add42_q_32_fifo_valid_in = SE_i_unnamed_add10_V4;
    assign redist3_i_cmp24442_add42_q_32_fifo_stall_in = SE_out_redist3_i_cmp24442_add42_q_32_fifo_backStall;
    assign redist3_i_cmp24442_add42_q_32_fifo_data_in = i_cmp24442_add42_q;
    assign redist3_i_cmp24442_add42_q_32_fifo_valid_in_bitsignaltemp = redist3_i_cmp24442_add42_q_32_fifo_valid_in[0];
    assign redist3_i_cmp24442_add42_q_32_fifo_stall_in_bitsignaltemp = redist3_i_cmp24442_add42_q_32_fifo_stall_in[0];
    assign redist3_i_cmp24442_add42_q_32_fifo_valid_out[0] = redist3_i_cmp24442_add42_q_32_fifo_valid_out_bitsignaltemp;
    assign redist3_i_cmp24442_add42_q_32_fifo_stall_out[0] = redist3_i_cmp24442_add42_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist3_i_cmp24442_add42_q_32_fifo (
        .valid_in(redist3_i_cmp24442_add42_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_cmp24442_add42_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp24442_add42_q),
        .valid_out(redist3_i_cmp24442_add42_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_cmp24442_add42_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_cmp24442_add42_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm722_add51(STALLENABLE,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm722_add51_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm722_add51_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm722_add51_fromReg0 <= SE_out_i_llvm_fpga_mem_lm722_add51_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm722_add51_fromReg1 <= SE_out_i_llvm_fpga_mem_lm722_add51_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm722_add51_consumed0 = (~ (SE_i_unnamed_add54_backStall) & SE_out_i_llvm_fpga_mem_lm722_add51_wireValid) | SE_out_i_llvm_fpga_mem_lm722_add51_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm722_add51_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_add25_add80_out_stall_out) & SE_out_i_llvm_fpga_mem_lm722_add51_wireValid) | SE_out_i_llvm_fpga_mem_lm722_add51_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm722_add51_StallValid = SE_out_i_llvm_fpga_mem_lm722_add51_backStall & SE_out_i_llvm_fpga_mem_lm722_add51_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm722_add51_toReg0 = SE_out_i_llvm_fpga_mem_lm722_add51_StallValid & SE_out_i_llvm_fpga_mem_lm722_add51_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm722_add51_toReg1 = SE_out_i_llvm_fpga_mem_lm722_add51_StallValid & SE_out_i_llvm_fpga_mem_lm722_add51_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm722_add51_or0 = SE_out_i_llvm_fpga_mem_lm722_add51_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm722_add51_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm722_add51_consumed1 & SE_out_i_llvm_fpga_mem_lm722_add51_or0);
    assign SE_out_i_llvm_fpga_mem_lm722_add51_backStall = SE_out_i_llvm_fpga_mem_lm722_add51_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm722_add51_V0 = SE_out_i_llvm_fpga_mem_lm722_add51_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm722_add51_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm722_add51_V1 = SE_out_i_llvm_fpga_mem_lm722_add51_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm722_add51_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm722_add51_wireValid = i_llvm_fpga_mem_lm722_add51_out_o_valid;

    // SE_out_i_llvm_fpga_mem_lm1_add47(STALLENABLE,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm1_add47_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm1_add47_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm1_add47_fromReg0 <= SE_out_i_llvm_fpga_mem_lm1_add47_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm1_add47_fromReg1 <= SE_out_i_llvm_fpga_mem_lm1_add47_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm1_add47_consumed0 = (~ (SE_i_unnamed_add54_backStall) & SE_out_i_llvm_fpga_mem_lm1_add47_wireValid) | SE_out_i_llvm_fpga_mem_lm1_add47_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm1_add47_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_add24_add79_out_stall_out) & SE_out_i_llvm_fpga_mem_lm1_add47_wireValid) | SE_out_i_llvm_fpga_mem_lm1_add47_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm1_add47_StallValid = SE_out_i_llvm_fpga_mem_lm1_add47_backStall & SE_out_i_llvm_fpga_mem_lm1_add47_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm1_add47_toReg0 = SE_out_i_llvm_fpga_mem_lm1_add47_StallValid & SE_out_i_llvm_fpga_mem_lm1_add47_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1_add47_toReg1 = SE_out_i_llvm_fpga_mem_lm1_add47_StallValid & SE_out_i_llvm_fpga_mem_lm1_add47_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm1_add47_or0 = SE_out_i_llvm_fpga_mem_lm1_add47_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1_add47_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm1_add47_consumed1 & SE_out_i_llvm_fpga_mem_lm1_add47_or0);
    assign SE_out_i_llvm_fpga_mem_lm1_add47_backStall = SE_out_i_llvm_fpga_mem_lm1_add47_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm1_add47_V0 = SE_out_i_llvm_fpga_mem_lm1_add47_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1_add47_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm1_add47_V1 = SE_out_i_llvm_fpga_mem_lm1_add47_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1_add47_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm1_add47_wireValid = i_llvm_fpga_mem_lm1_add47_out_o_valid;

    // SE_i_unnamed_add54(STALLENABLE,470)
    // Valid signal propagation
    assign SE_i_unnamed_add54_V0 = SE_i_unnamed_add54_wireValid;
    // Backward Stall generation
    assign SE_i_unnamed_add54_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_add27_add82_out_stall_out | ~ (SE_i_unnamed_add54_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_add54_and0 = SE_out_i_llvm_fpga_mem_lm1_add47_V0;
    assign SE_i_unnamed_add54_and1 = SE_out_i_llvm_fpga_mem_lm722_add51_V0 & SE_i_unnamed_add54_and0;
    assign SE_i_unnamed_add54_wireValid = SE_out_i_llvm_fpga_mem_lm743_add53_V0 & SE_i_unnamed_add54_and1;

    // SE_out_i_llvm_fpga_mem_lm743_add53(STALLENABLE,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm743_add53_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm743_add53_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm743_add53_fromReg0 <= SE_out_i_llvm_fpga_mem_lm743_add53_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm743_add53_fromReg1 <= SE_out_i_llvm_fpga_mem_lm743_add53_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm743_add53_consumed0 = (~ (SE_i_unnamed_add54_backStall) & SE_out_i_llvm_fpga_mem_lm743_add53_wireValid) | SE_out_i_llvm_fpga_mem_lm743_add53_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm743_add53_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_add26_add81_out_stall_out) & SE_out_i_llvm_fpga_mem_lm743_add53_wireValid) | SE_out_i_llvm_fpga_mem_lm743_add53_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm743_add53_StallValid = SE_out_i_llvm_fpga_mem_lm743_add53_backStall & SE_out_i_llvm_fpga_mem_lm743_add53_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm743_add53_toReg0 = SE_out_i_llvm_fpga_mem_lm743_add53_StallValid & SE_out_i_llvm_fpga_mem_lm743_add53_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm743_add53_toReg1 = SE_out_i_llvm_fpga_mem_lm743_add53_StallValid & SE_out_i_llvm_fpga_mem_lm743_add53_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm743_add53_or0 = SE_out_i_llvm_fpga_mem_lm743_add53_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm743_add53_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm743_add53_consumed1 & SE_out_i_llvm_fpga_mem_lm743_add53_or0);
    assign SE_out_i_llvm_fpga_mem_lm743_add53_backStall = SE_out_i_llvm_fpga_mem_lm743_add53_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm743_add53_V0 = SE_out_i_llvm_fpga_mem_lm743_add53_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm743_add53_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm743_add53_V1 = SE_out_i_llvm_fpga_mem_lm743_add53_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm743_add53_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm743_add53_wireValid = i_llvm_fpga_mem_lm743_add53_out_o_valid;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,353)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,354)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[127:0]);

    // sel_for_coalesced_delay_0(BITSELECT,270)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);

    // i_llvm_fpga_mem_lm743_add53(BLACKBOX,137)@34
    // in in_i_stall@20000000
    // out out_lm743_add_avm_address@20000000
    // out out_lm743_add_avm_burstcount@20000000
    // out out_lm743_add_avm_byteenable@20000000
    // out out_lm743_add_avm_enable@20000000
    // out out_lm743_add_avm_read@20000000
    // out out_lm743_add_avm_write@20000000
    // out out_lm743_add_avm_writedata@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    add_i_llvm_fpga_mem_lm743_0 thei_llvm_fpga_mem_lm743_add53 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_c),
        .in_i_predicate(i_cmp24442_add42_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm743_add53_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm1_add47_V2),
        .in_lm743_add_avm_readdata(in_lm743_add_avm_readdata),
        .in_lm743_add_avm_readdatavalid(in_lm743_add_avm_readdatavalid),
        .in_lm743_add_avm_waitrequest(in_lm743_add_avm_waitrequest),
        .in_lm743_add_avm_writeack(in_lm743_add_avm_writeack),
        .out_lm743_add_avm_address(i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_address),
        .out_lm743_add_avm_burstcount(i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_burstcount),
        .out_lm743_add_avm_byteenable(i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_byteenable),
        .out_lm743_add_avm_enable(i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_enable),
        .out_lm743_add_avm_read(i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_read),
        .out_lm743_add_avm_write(i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_write),
        .out_lm743_add_avm_writedata(i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm743_add53_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm743_add53_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm743_add53_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_t_numcols_i33_i_add0_c_i64_41_x(CONSTANT,64)
    assign i_t_numcols_i33_i_add0_c_i64_41_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // i_t_numcols_i_i62_add0_add_x(ADD,67)@34
    assign i_t_numcols_i_i62_add0_add_x_a = {1'b0, sel_for_coalesced_delay_0_c};
    assign i_t_numcols_i_i62_add0_add_x_b = {1'b0, i_t_numcols_i33_i_add0_c_i64_41_x_q};
    assign i_t_numcols_i_i62_add0_add_x_o = $unsigned(i_t_numcols_i_i62_add0_add_x_a) + $unsigned(i_t_numcols_i_i62_add0_add_x_b);
    assign i_t_numcols_i_i62_add0_add_x_q = i_t_numcols_i_i62_add0_add_x_o[64:0];

    // i_t_numcols_i_i62_add0_trunc_sel_x(BITSELECT,66)@34
    assign i_t_numcols_i_i62_add0_trunc_sel_x_b = i_t_numcols_i_i62_add0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm722_add51(BLACKBOX,136)@34
    // in in_i_stall@20000000
    // out out_lm722_add_avm_address@20000000
    // out out_lm722_add_avm_burstcount@20000000
    // out out_lm722_add_avm_byteenable@20000000
    // out out_lm722_add_avm_enable@20000000
    // out out_lm722_add_avm_read@20000000
    // out out_lm722_add_avm_write@20000000
    // out out_lm722_add_avm_writedata@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    add_i_llvm_fpga_mem_lm722_0 thei_llvm_fpga_mem_lm722_add51 (
        .in_flush(in_flush),
        .in_i_address(i_t_numcols_i_i62_add0_trunc_sel_x_b),
        .in_i_predicate(i_cmp24442_add42_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm722_add51_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm1_add47_V1),
        .in_lm722_add_avm_readdata(in_lm722_add_avm_readdata),
        .in_lm722_add_avm_readdatavalid(in_lm722_add_avm_readdatavalid),
        .in_lm722_add_avm_waitrequest(in_lm722_add_avm_waitrequest),
        .in_lm722_add_avm_writeack(in_lm722_add_avm_writeack),
        .out_lm722_add_avm_address(i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_address),
        .out_lm722_add_avm_burstcount(i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_burstcount),
        .out_lm722_add_avm_byteenable(i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_byteenable),
        .out_lm722_add_avm_enable(i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_enable),
        .out_lm722_add_avm_read(i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_read),
        .out_lm722_add_avm_write(i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_write),
        .out_lm722_add_avm_writedata(i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm722_add51_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm722_add51_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm722_add51_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_transposed_i29_i_add0_c_i64_81_x(CONSTANT,78)
    assign i_transposed_i29_i_add0_c_i64_81_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000001000);

    // i_transposed_i_add0_add_x(ADD,81)@34
    assign i_transposed_i_add0_add_x_a = {1'b0, sel_for_coalesced_delay_0_c};
    assign i_transposed_i_add0_add_x_b = {1'b0, i_transposed_i29_i_add0_c_i64_81_x_q};
    assign i_transposed_i_add0_add_x_o = $unsigned(i_transposed_i_add0_add_x_a) + $unsigned(i_transposed_i_add0_add_x_b);
    assign i_transposed_i_add0_add_x_q = i_transposed_i_add0_add_x_o[64:0];

    // i_transposed_i_add0_trunc_sel_x(BITSELECT,80)@34
    assign i_transposed_i_add0_trunc_sel_x_b = i_transposed_i_add0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm1_add47(BLACKBOX,135)@34
    // in in_i_stall@20000000
    // out out_lm1_add_avm_address@20000000
    // out out_lm1_add_avm_burstcount@20000000
    // out out_lm1_add_avm_byteenable@20000000
    // out out_lm1_add_avm_enable@20000000
    // out out_lm1_add_avm_read@20000000
    // out out_lm1_add_avm_write@20000000
    // out out_lm1_add_avm_writedata@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    add_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_add47 (
        .in_flush(in_flush),
        .in_i_address(i_transposed_i_add0_trunc_sel_x_b),
        .in_i_predicate(i_cmp24442_add42_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm1_add47_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm1_add47_V0),
        .in_lm1_add_avm_readdata(in_lm1_add_avm_readdata),
        .in_lm1_add_avm_readdatavalid(in_lm1_add_avm_readdatavalid),
        .in_lm1_add_avm_waitrequest(in_lm1_add_avm_waitrequest),
        .in_lm1_add_avm_writeack(in_lm1_add_avm_writeack),
        .out_lm1_add_avm_address(i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_address),
        .out_lm1_add_avm_burstcount(i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_burstcount),
        .out_lm1_add_avm_byteenable(i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_byteenable),
        .out_lm1_add_avm_enable(i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_enable),
        .out_lm1_add_avm_read(i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_read),
        .out_lm1_add_avm_write(i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_write),
        .out_lm1_add_avm_writedata(i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_add47_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1_add47_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1_add47_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_mem_lm1_add47(STALLENABLE,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_mem_lm1_add47_fromReg0 <= '0;
            SE_in_i_llvm_fpga_mem_lm1_add47_fromReg1 <= '0;
            SE_in_i_llvm_fpga_mem_lm1_add47_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_mem_lm1_add47_fromReg0 <= SE_in_i_llvm_fpga_mem_lm1_add47_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_mem_lm1_add47_fromReg1 <= SE_in_i_llvm_fpga_mem_lm1_add47_toReg1;
            // Successor 2
            SE_in_i_llvm_fpga_mem_lm1_add47_fromReg2 <= SE_in_i_llvm_fpga_mem_lm1_add47_toReg2;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_mem_lm1_add47_consumed0 = (~ (i_llvm_fpga_mem_lm1_add47_out_o_stall) & SE_in_i_llvm_fpga_mem_lm1_add47_wireValid) | SE_in_i_llvm_fpga_mem_lm1_add47_fromReg0;
    assign SE_in_i_llvm_fpga_mem_lm1_add47_consumed1 = (~ (i_llvm_fpga_mem_lm722_add51_out_o_stall) & SE_in_i_llvm_fpga_mem_lm1_add47_wireValid) | SE_in_i_llvm_fpga_mem_lm1_add47_fromReg1;
    assign SE_in_i_llvm_fpga_mem_lm1_add47_consumed2 = (~ (i_llvm_fpga_mem_lm743_add53_out_o_stall) & SE_in_i_llvm_fpga_mem_lm1_add47_wireValid) | SE_in_i_llvm_fpga_mem_lm1_add47_fromReg2;
    // Consuming
    assign SE_in_i_llvm_fpga_mem_lm1_add47_StallValid = SE_in_i_llvm_fpga_mem_lm1_add47_backStall & SE_in_i_llvm_fpga_mem_lm1_add47_wireValid;
    assign SE_in_i_llvm_fpga_mem_lm1_add47_toReg0 = SE_in_i_llvm_fpga_mem_lm1_add47_StallValid & SE_in_i_llvm_fpga_mem_lm1_add47_consumed0;
    assign SE_in_i_llvm_fpga_mem_lm1_add47_toReg1 = SE_in_i_llvm_fpga_mem_lm1_add47_StallValid & SE_in_i_llvm_fpga_mem_lm1_add47_consumed1;
    assign SE_in_i_llvm_fpga_mem_lm1_add47_toReg2 = SE_in_i_llvm_fpga_mem_lm1_add47_StallValid & SE_in_i_llvm_fpga_mem_lm1_add47_consumed2;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm1_add47_or0 = SE_in_i_llvm_fpga_mem_lm1_add47_consumed0;
    assign SE_in_i_llvm_fpga_mem_lm1_add47_or1 = SE_in_i_llvm_fpga_mem_lm1_add47_consumed1 & SE_in_i_llvm_fpga_mem_lm1_add47_or0;
    assign SE_in_i_llvm_fpga_mem_lm1_add47_wireStall = ~ (SE_in_i_llvm_fpga_mem_lm1_add47_consumed2 & SE_in_i_llvm_fpga_mem_lm1_add47_or1);
    assign SE_in_i_llvm_fpga_mem_lm1_add47_backStall = SE_in_i_llvm_fpga_mem_lm1_add47_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm1_add47_V0 = SE_in_i_llvm_fpga_mem_lm1_add47_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm1_add47_fromReg0);
    assign SE_in_i_llvm_fpga_mem_lm1_add47_V1 = SE_in_i_llvm_fpga_mem_lm1_add47_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm1_add47_fromReg1);
    assign SE_in_i_llvm_fpga_mem_lm1_add47_V2 = SE_in_i_llvm_fpga_mem_lm1_add47_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm1_add47_fromReg2);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm1_add47_and0 = SE_out_coalesced_delay_0_fifo_V4;
    assign SE_in_i_llvm_fpga_mem_lm1_add47_wireValid = SE_i_unnamed_add10_V1 & SE_in_i_llvm_fpga_mem_lm1_add47_and0;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71(STALLENABLE,404)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_out_valid_out;

    // i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71(BLACKBOX,122)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_16_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add16_add71 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(bubble_select_i_llvm_fpga_mem_unnamed_add4_add9_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_add4_add9_V1),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_out_intel_reserved_ffwd_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_add4_add9(STALLENABLE,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_add4_add9_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_add4_add9_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_add4_add9_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_add4_add9_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_add4_add9_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_add4_add9_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_add4_add9_consumed0 = (~ (SE_i_unnamed_add10_backStall) & SE_out_i_llvm_fpga_mem_unnamed_add4_add9_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_add4_add9_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add4_add9_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_out_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_add4_add9_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_add4_add9_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_add4_add9_StallValid = SE_out_i_llvm_fpga_mem_unnamed_add4_add9_backStall & SE_out_i_llvm_fpga_mem_unnamed_add4_add9_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_add4_add9_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_add4_add9_StallValid & SE_out_i_llvm_fpga_mem_unnamed_add4_add9_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add4_add9_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_add4_add9_StallValid & SE_out_i_llvm_fpga_mem_unnamed_add4_add9_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_add4_add9_or0 = SE_out_i_llvm_fpga_mem_unnamed_add4_add9_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add4_add9_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_add4_add9_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_add4_add9_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_add4_add9_backStall = SE_out_i_llvm_fpga_mem_unnamed_add4_add9_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_add4_add9_V0 = SE_out_i_llvm_fpga_mem_unnamed_add4_add9_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_add4_add9_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_add4_add9_V1 = SE_out_i_llvm_fpga_mem_unnamed_add4_add9_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_add4_add9_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_add4_add9_wireValid = i_llvm_fpga_mem_unnamed_add4_add9_out_o_valid;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69(STALLENABLE,402)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_out_valid_out;

    // i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69(BLACKBOX,121)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_14_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add14_add69 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(bubble_select_i_llvm_fpga_mem_unnamed_add3_add7_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_add3_add7_V1),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_add3_add7(STALLENABLE,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_add3_add7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_add3_add7_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_add3_add7_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_add3_add7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_add3_add7_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_add3_add7_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_add3_add7_consumed0 = (~ (SE_i_unnamed_add10_backStall) & SE_out_i_llvm_fpga_mem_unnamed_add3_add7_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_add3_add7_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add3_add7_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_out_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_add3_add7_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_add3_add7_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_add3_add7_StallValid = SE_out_i_llvm_fpga_mem_unnamed_add3_add7_backStall & SE_out_i_llvm_fpga_mem_unnamed_add3_add7_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_add3_add7_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_add3_add7_StallValid & SE_out_i_llvm_fpga_mem_unnamed_add3_add7_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add3_add7_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_add3_add7_StallValid & SE_out_i_llvm_fpga_mem_unnamed_add3_add7_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_add3_add7_or0 = SE_out_i_llvm_fpga_mem_unnamed_add3_add7_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add3_add7_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_add3_add7_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_add3_add7_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_add3_add7_backStall = SE_out_i_llvm_fpga_mem_unnamed_add3_add7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_add3_add7_V0 = SE_out_i_llvm_fpga_mem_unnamed_add3_add7_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_add3_add7_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_add3_add7_V1 = SE_out_i_llvm_fpga_mem_unnamed_add3_add7_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_add3_add7_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_add3_add7_wireValid = i_llvm_fpga_mem_unnamed_add3_add7_out_o_valid;

    // SE_i_unnamed_add10(STALLENABLE,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_add10_fromReg0 <= '0;
            SE_i_unnamed_add10_fromReg1 <= '0;
            SE_i_unnamed_add10_fromReg2 <= '0;
            SE_i_unnamed_add10_fromReg3 <= '0;
            SE_i_unnamed_add10_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_add10_fromReg0 <= SE_i_unnamed_add10_toReg0;
            // Successor 1
            SE_i_unnamed_add10_fromReg1 <= SE_i_unnamed_add10_toReg1;
            // Successor 2
            SE_i_unnamed_add10_fromReg2 <= SE_i_unnamed_add10_toReg2;
            // Successor 3
            SE_i_unnamed_add10_fromReg3 <= SE_i_unnamed_add10_toReg3;
            // Successor 4
            SE_i_unnamed_add10_fromReg4 <= SE_i_unnamed_add10_toReg4;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_add10_consumed0 = (~ (SE_i_cmp4_i_add23_backStall) & SE_i_unnamed_add10_wireValid) | SE_i_unnamed_add10_fromReg0;
    assign SE_i_unnamed_add10_consumed1 = (~ (SE_in_i_llvm_fpga_mem_lm1_add47_backStall) & SE_i_unnamed_add10_wireValid) | SE_i_unnamed_add10_fromReg1;
    assign SE_i_unnamed_add10_consumed2 = (~ (SE_redist8_bgTrunc_i_add3_add37_sel_x_b_1_0_backStall) & SE_i_unnamed_add10_wireValid) | SE_i_unnamed_add10_fromReg2;
    assign SE_i_unnamed_add10_consumed3 = (~ (SE_i_select56_add39_backStall) & SE_i_unnamed_add10_wireValid) | SE_i_unnamed_add10_fromReg3;
    assign SE_i_unnamed_add10_consumed4 = (~ (redist3_i_cmp24442_add42_q_32_fifo_stall_out) & SE_i_unnamed_add10_wireValid) | SE_i_unnamed_add10_fromReg4;
    // Consuming
    assign SE_i_unnamed_add10_StallValid = SE_i_unnamed_add10_backStall & SE_i_unnamed_add10_wireValid;
    assign SE_i_unnamed_add10_toReg0 = SE_i_unnamed_add10_StallValid & SE_i_unnamed_add10_consumed0;
    assign SE_i_unnamed_add10_toReg1 = SE_i_unnamed_add10_StallValid & SE_i_unnamed_add10_consumed1;
    assign SE_i_unnamed_add10_toReg2 = SE_i_unnamed_add10_StallValid & SE_i_unnamed_add10_consumed2;
    assign SE_i_unnamed_add10_toReg3 = SE_i_unnamed_add10_StallValid & SE_i_unnamed_add10_consumed3;
    assign SE_i_unnamed_add10_toReg4 = SE_i_unnamed_add10_StallValid & SE_i_unnamed_add10_consumed4;
    // Backward Stall generation
    assign SE_i_unnamed_add10_or0 = SE_i_unnamed_add10_consumed0;
    assign SE_i_unnamed_add10_or1 = SE_i_unnamed_add10_consumed1 & SE_i_unnamed_add10_or0;
    assign SE_i_unnamed_add10_or2 = SE_i_unnamed_add10_consumed2 & SE_i_unnamed_add10_or1;
    assign SE_i_unnamed_add10_or3 = SE_i_unnamed_add10_consumed3 & SE_i_unnamed_add10_or2;
    assign SE_i_unnamed_add10_wireStall = ~ (SE_i_unnamed_add10_consumed4 & SE_i_unnamed_add10_or3);
    assign SE_i_unnamed_add10_backStall = SE_i_unnamed_add10_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_add10_V0 = SE_i_unnamed_add10_wireValid & ~ (SE_i_unnamed_add10_fromReg0);
    assign SE_i_unnamed_add10_V1 = SE_i_unnamed_add10_wireValid & ~ (SE_i_unnamed_add10_fromReg1);
    assign SE_i_unnamed_add10_V2 = SE_i_unnamed_add10_wireValid & ~ (SE_i_unnamed_add10_fromReg2);
    assign SE_i_unnamed_add10_V3 = SE_i_unnamed_add10_wireValid & ~ (SE_i_unnamed_add10_fromReg3);
    assign SE_i_unnamed_add10_V4 = SE_i_unnamed_add10_wireValid & ~ (SE_i_unnamed_add10_fromReg4);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_add10_and0 = SE_out_i_llvm_fpga_mem_unnamed_add2_add4_V0;
    assign SE_i_unnamed_add10_and1 = SE_out_i_llvm_fpga_mem_unnamed_add3_add7_V0 & SE_i_unnamed_add10_and0;
    assign SE_i_unnamed_add10_wireValid = SE_out_i_llvm_fpga_mem_unnamed_add4_add9_V0 & SE_i_unnamed_add10_and1;

    // SE_i_cmp4_i_add23(STALLENABLE,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp4_i_add23_fromReg0 <= '0;
            SE_i_cmp4_i_add23_fromReg1 <= '0;
            SE_i_cmp4_i_add23_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_cmp4_i_add23_fromReg0 <= SE_i_cmp4_i_add23_toReg0;
            // Successor 1
            SE_i_cmp4_i_add23_fromReg1 <= SE_i_cmp4_i_add23_toReg1;
            // Successor 2
            SE_i_cmp4_i_add23_fromReg2 <= SE_i_cmp4_i_add23_toReg2;
        end
    end
    // Input Stall processing
    assign SE_i_cmp4_i_add23_consumed0 = (~ (SE_i_do_directly_if_then5_select_add36_backStall) & SE_i_cmp4_i_add23_wireValid) | SE_i_cmp4_i_add23_fromReg0;
    assign SE_i_cmp4_i_add23_consumed1 = (~ (SE_i_select56_add39_backStall) & SE_i_cmp4_i_add23_wireValid) | SE_i_cmp4_i_add23_fromReg1;
    assign SE_i_cmp4_i_add23_consumed2 = (~ (SE_i_or_cond_add30_backStall) & SE_i_cmp4_i_add23_wireValid) | SE_i_cmp4_i_add23_fromReg2;
    // Consuming
    assign SE_i_cmp4_i_add23_StallValid = SE_i_cmp4_i_add23_backStall & SE_i_cmp4_i_add23_wireValid;
    assign SE_i_cmp4_i_add23_toReg0 = SE_i_cmp4_i_add23_StallValid & SE_i_cmp4_i_add23_consumed0;
    assign SE_i_cmp4_i_add23_toReg1 = SE_i_cmp4_i_add23_StallValid & SE_i_cmp4_i_add23_consumed1;
    assign SE_i_cmp4_i_add23_toReg2 = SE_i_cmp4_i_add23_StallValid & SE_i_cmp4_i_add23_consumed2;
    // Backward Stall generation
    assign SE_i_cmp4_i_add23_or0 = SE_i_cmp4_i_add23_consumed0;
    assign SE_i_cmp4_i_add23_or1 = SE_i_cmp4_i_add23_consumed1 & SE_i_cmp4_i_add23_or0;
    assign SE_i_cmp4_i_add23_wireStall = ~ (SE_i_cmp4_i_add23_consumed2 & SE_i_cmp4_i_add23_or1);
    assign SE_i_cmp4_i_add23_backStall = SE_i_cmp4_i_add23_wireStall;
    // Valid signal propagation
    assign SE_i_cmp4_i_add23_V0 = SE_i_cmp4_i_add23_wireValid & ~ (SE_i_cmp4_i_add23_fromReg0);
    assign SE_i_cmp4_i_add23_V1 = SE_i_cmp4_i_add23_wireValid & ~ (SE_i_cmp4_i_add23_fromReg1);
    assign SE_i_cmp4_i_add23_V2 = SE_i_cmp4_i_add23_wireValid & ~ (SE_i_cmp4_i_add23_fromReg2);
    // Computing multiple Valid(s)
    assign SE_i_cmp4_i_add23_and0 = SE_i_unnamed_add10_V0;
    assign SE_i_cmp4_i_add23_wireValid = SE_i_unnamed_add18_V0 & SE_i_cmp4_i_add23_and0;

    // SE_i_or_cond_add30(STALLENABLE,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_or_cond_add30_fromReg0 <= '0;
            SE_i_or_cond_add30_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_or_cond_add30_fromReg0 <= SE_i_or_cond_add30_toReg0;
            // Successor 1
            SE_i_or_cond_add30_fromReg1 <= SE_i_or_cond_add30_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_or_cond_add30_consumed0 = (~ (SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_backStall) & SE_i_or_cond_add30_wireValid) | SE_i_or_cond_add30_fromReg0;
    assign SE_i_or_cond_add30_consumed1 = (~ (redist0_i_unnamed_add32_q_32_fifo_stall_out) & SE_i_or_cond_add30_wireValid) | SE_i_or_cond_add30_fromReg1;
    // Consuming
    assign SE_i_or_cond_add30_StallValid = SE_i_or_cond_add30_backStall & SE_i_or_cond_add30_wireValid;
    assign SE_i_or_cond_add30_toReg0 = SE_i_or_cond_add30_StallValid & SE_i_or_cond_add30_consumed0;
    assign SE_i_or_cond_add30_toReg1 = SE_i_or_cond_add30_StallValid & SE_i_or_cond_add30_consumed1;
    // Backward Stall generation
    assign SE_i_or_cond_add30_or0 = SE_i_or_cond_add30_consumed0;
    assign SE_i_or_cond_add30_wireStall = ~ (SE_i_or_cond_add30_consumed1 & SE_i_or_cond_add30_or0);
    assign SE_i_or_cond_add30_backStall = SE_i_or_cond_add30_wireStall;
    // Valid signal propagation
    assign SE_i_or_cond_add30_V0 = SE_i_or_cond_add30_wireValid & ~ (SE_i_or_cond_add30_fromReg0);
    assign SE_i_or_cond_add30_V1 = SE_i_or_cond_add30_wireValid & ~ (SE_i_or_cond_add30_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_or_cond_add30_and0 = SE_i_unnamed_add18_V1;
    assign SE_i_or_cond_add30_wireValid = SE_i_cmp4_i_add23_V2 & SE_i_or_cond_add30_and0;

    // SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66(STALLENABLE,426)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_wireValid = i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_out_valid_out;

    // i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66(BLACKBOX,133)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_p1024s_class0000rxls_unnamed_11_add0 thei_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(sel_for_coalesced_delay_0_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V2),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65(STALLENABLE,424)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_wireValid = i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_out_valid_out;

    // i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65(BLACKBOX,132)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_p1024s_class0000rxls_unnamed_10_add0 thei_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(sel_for_coalesced_delay_0_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74(STALLENABLE,422)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_out_valid_out;

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74(BLACKBOX,131)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_p1024i32_unnamed_19_add0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(sel_for_coalesced_delay_0_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V0),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_out_intel_reserved_ffwd_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg2 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg3 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg4 <= '0;
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
            // Successor 4
            SE_out_coalesced_delay_0_fifo_fromReg4 <= SE_out_coalesced_delay_0_fifo_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    assign SE_out_coalesced_delay_0_fifo_consumed2 = (~ (i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg2;
    assign SE_out_coalesced_delay_0_fifo_consumed3 = (~ (SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg3;
    assign SE_out_coalesced_delay_0_fifo_consumed4 = (~ (SE_in_i_llvm_fpga_mem_lm1_add47_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg4;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    assign SE_out_coalesced_delay_0_fifo_toReg2 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed2;
    assign SE_out_coalesced_delay_0_fifo_toReg3 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed3;
    assign SE_out_coalesced_delay_0_fifo_toReg4 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed4;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_or1 = SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0;
    assign SE_out_coalesced_delay_0_fifo_or2 = SE_out_coalesced_delay_0_fifo_consumed2 & SE_out_coalesced_delay_0_fifo_or1;
    assign SE_out_coalesced_delay_0_fifo_or3 = SE_out_coalesced_delay_0_fifo_consumed3 & SE_out_coalesced_delay_0_fifo_or2;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed4 & SE_out_coalesced_delay_0_fifo_or3);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    assign SE_out_coalesced_delay_0_fifo_V2 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg2);
    assign SE_out_coalesced_delay_0_fifo_V3 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg3);
    assign SE_out_coalesced_delay_0_fifo_V4 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_valid_out;

    // SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60(STALLENABLE,435)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_V0 = SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_backStall = i_llvm_fpga_mem_unmaskedload_lm4_add60_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_and0 = SE_out_coalesced_delay_0_fifo_V3;
    assign SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_wireValid = SE_i_or_cond_add30_V0 & SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_and0;

    // i_unnamed_add25(LOGICAL,164)@34
    assign i_unnamed_add25_q = i_cmp_i_add19_q | i_cmp4_i_add23_q;

    // i_unnamed_add31(LOGICAL,165)@34
    assign i_unnamed_add31_q = i_unnamed_add25_q ^ VCC_q;

    // i_cmp16_add28(LOGICAL,107)@34
    assign i_cmp16_add28_q = $unsigned(i_unnamed_add22_q == c_i32_186_recast_x_q ? 1'b1 : 1'b0);

    // i_cmp_add26(LOGICAL,111)@34
    assign i_cmp_add26_q = $unsigned(i_unnamed_add18_q == c_i32_186_recast_x_q ? 1'b1 : 1'b0);

    // i_or_cond_add30(LOGICAL,153)@34
    assign i_or_cond_add30_q = i_cmp_add26_q & i_cmp16_add28_q;

    // i_unnamed_add32(LOGICAL,166)@34
    assign i_unnamed_add32_q = i_or_cond_add30_q & i_unnamed_add31_q;

    // i_xor_add46(LOGICAL,172)@34
    assign i_xor_add46_q = i_unnamed_add32_q ^ VCC_q;

    // i_arrayidx5_i_i223_add0_c_i64_121_x(CONSTANT,51)
    assign i_arrayidx5_i_i223_add0_c_i64_121_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000001100);

    // i_arrayidx5_i_i223_add0_add_x(ADD,50)@34
    assign i_arrayidx5_i_i223_add0_add_x_a = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_arrayidx5_i_i223_add0_add_x_b = {1'b0, i_arrayidx5_i_i223_add0_c_i64_121_x_q};
    assign i_arrayidx5_i_i223_add0_add_x_o = $unsigned(i_arrayidx5_i_i223_add0_add_x_a) + $unsigned(i_arrayidx5_i_i223_add0_add_x_b);
    assign i_arrayidx5_i_i223_add0_add_x_q = i_arrayidx5_i_i223_add0_add_x_o[64:0];

    // i_arrayidx5_i_i223_add0_trunc_sel_x(BITSELECT,49)@34
    assign i_arrayidx5_i_i223_add0_trunc_sel_x_b = i_arrayidx5_i_i223_add0_add_x_q[63:0];

    // i_llvm_fpga_mem_unmaskedload_lm4_add60(BLACKBOX,138)@34
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_unmaskedload_lm4_add_avm_address@20000000
    // out out_unmaskedload_lm4_add_avm_burstcount@20000000
    // out out_unmaskedload_lm4_add_avm_byteenable@20000000
    // out out_unmaskedload_lm4_add_avm_enable@20000000
    // out out_unmaskedload_lm4_add_avm_read@20000000
    // out out_unmaskedload_lm4_add_avm_write@20000000
    // out out_unmaskedload_lm4_add_avm_writedata@20000000
    add_i_llvm_fpga_mem_unmaskedload_lm4_0 thei_llvm_fpga_mem_unmaskedload_lm4_add60 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5_i_i223_add0_trunc_sel_x_b),
        .in_i_predicate(i_xor_add46_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_unmaskedload_lm4_add60_V0),
        .in_unmaskedload_lm4_add_avm_readdata(in_unmaskedload_lm4_add_avm_readdata),
        .in_unmaskedload_lm4_add_avm_readdatavalid(in_unmaskedload_lm4_add_avm_readdatavalid),
        .in_unmaskedload_lm4_add_avm_waitrequest(in_unmaskedload_lm4_add_avm_waitrequest),
        .in_unmaskedload_lm4_add_avm_writeack(in_unmaskedload_lm4_add_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unmaskedload_lm4_add60_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unmaskedload_lm4_add60_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unmaskedload_lm4_add60_out_o_valid),
        .out_unmaskedload_lm4_add_avm_address(i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_address),
        .out_unmaskedload_lm4_add_avm_burstcount(i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_burstcount),
        .out_unmaskedload_lm4_add_avm_byteenable(i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_byteenable),
        .out_unmaskedload_lm4_add_avm_enable(i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_enable),
        .out_unmaskedload_lm4_add_avm_read(i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_read),
        .out_unmaskedload_lm4_add_avm_write(i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_write),
        .out_unmaskedload_lm4_add_avm_writedata(i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unmaskedload_lm4_add60(BITJOIN,313)
    assign bubble_join_i_llvm_fpga_mem_unmaskedload_lm4_add60_q = i_llvm_fpga_mem_unmaskedload_lm4_add60_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unmaskedload_lm4_add60(BITSELECT,314)
    assign bubble_select_i_llvm_fpga_mem_unmaskedload_lm4_add60_b = $unsigned(bubble_join_i_llvm_fpga_mem_unmaskedload_lm4_add60_q[31:0]);

    // i_cmp2_i_i217_add55(LOGICAL,109)@34 + 1
    assign i_cmp2_i_i217_add55_qi = $unsigned(bubble_select_i_llvm_fpga_mem_unnamed_add7_add17_b == c_i32_088_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp2_i_i217_add55_delay ( .xin(i_cmp2_i_i217_add55_qi), .xout(i_cmp2_i_i217_add55_q), .ena(SE_i_cmp2_i_i217_add55_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_out_i_llvm_fpga_mem_unnamed_add7_add17(STALLENABLE,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_add7_add17_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_add7_add17_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_add7_add17_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_add7_add17_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_add7_add17_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_add7_add17_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_add7_add17_consumed0 = (~ (SE_i_cmp2_i_i217_add55_backStall) & SE_out_i_llvm_fpga_mem_unnamed_add7_add17_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_add7_add17_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add7_add17_consumed1 = (~ (SE_i_unnamed_add18_backStall) & SE_out_i_llvm_fpga_mem_unnamed_add7_add17_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_add7_add17_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_add7_add17_StallValid = SE_out_i_llvm_fpga_mem_unnamed_add7_add17_backStall & SE_out_i_llvm_fpga_mem_unnamed_add7_add17_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_add7_add17_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_add7_add17_StallValid & SE_out_i_llvm_fpga_mem_unnamed_add7_add17_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add7_add17_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_add7_add17_StallValid & SE_out_i_llvm_fpga_mem_unnamed_add7_add17_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_add7_add17_or0 = SE_out_i_llvm_fpga_mem_unnamed_add7_add17_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add7_add17_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_add7_add17_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_add7_add17_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_add7_add17_backStall = SE_out_i_llvm_fpga_mem_unnamed_add7_add17_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_add7_add17_V0 = SE_out_i_llvm_fpga_mem_unnamed_add7_add17_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_add7_add17_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_add7_add17_V1 = SE_out_i_llvm_fpga_mem_unnamed_add7_add17_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_add7_add17_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_add7_add17_wireValid = i_llvm_fpga_mem_unnamed_add7_add17_out_o_valid;

    // SE_i_cmp2_i_i217_add55(STALLENABLE,383)
    // Valid signal propagation
    assign SE_i_cmp2_i_i217_add55_V0 = SE_i_cmp2_i_i217_add55_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp2_i_i217_add55_s_tv_0 = redist2_i_cmp2_i_i217_add55_q_32_fifo_stall_out & SE_i_cmp2_i_i217_add55_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp2_i_i217_add55_backEN = ~ (SE_i_cmp2_i_i217_add55_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp2_i_i217_add55_v_s_0 = SE_i_cmp2_i_i217_add55_backEN & SE_out_i_llvm_fpga_mem_unnamed_add7_add17_V0;
    // Backward Stall generation
    assign SE_i_cmp2_i_i217_add55_backStall = ~ (SE_i_cmp2_i_i217_add55_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp2_i_i217_add55_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp2_i_i217_add55_backEN == 1'b0)
            begin
                SE_i_cmp2_i_i217_add55_R_v_0 <= SE_i_cmp2_i_i217_add55_R_v_0 & SE_i_cmp2_i_i217_add55_s_tv_0;
            end
            else
            begin
                SE_i_cmp2_i_i217_add55_R_v_0 <= SE_i_cmp2_i_i217_add55_v_s_0;
            end

        end
    end

    // redist2_i_cmp2_i_i217_add55_q_32_fifo(STALLFIFO,273)
    assign redist2_i_cmp2_i_i217_add55_q_32_fifo_valid_in = SE_i_cmp2_i_i217_add55_V0;
    assign redist2_i_cmp2_i_i217_add55_q_32_fifo_stall_in = SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_backStall;
    assign redist2_i_cmp2_i_i217_add55_q_32_fifo_data_in = i_cmp2_i_i217_add55_q;
    assign redist2_i_cmp2_i_i217_add55_q_32_fifo_valid_in_bitsignaltemp = redist2_i_cmp2_i_i217_add55_q_32_fifo_valid_in[0];
    assign redist2_i_cmp2_i_i217_add55_q_32_fifo_stall_in_bitsignaltemp = redist2_i_cmp2_i_i217_add55_q_32_fifo_stall_in[0];
    assign redist2_i_cmp2_i_i217_add55_q_32_fifo_valid_out[0] = redist2_i_cmp2_i_i217_add55_q_32_fifo_valid_out_bitsignaltemp;
    assign redist2_i_cmp2_i_i217_add55_q_32_fifo_stall_out[0] = redist2_i_cmp2_i_i217_add55_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist2_i_cmp2_i_i217_add55_q_32_fifo (
        .valid_in(redist2_i_cmp2_i_i217_add55_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_cmp2_i_i217_add55_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp2_i_i217_add55_q),
        .valid_out(redist2_i_cmp2_i_i217_add55_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_cmp2_i_i217_add55_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_cmp2_i_i217_add55_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist2_i_cmp2_i_i217_add55_q_32_fifo(BITJOIN,341)
    assign bubble_join_redist2_i_cmp2_i_i217_add55_q_32_fifo_q = redist2_i_cmp2_i_i217_add55_q_32_fifo_data_out;

    // bubble_select_redist2_i_cmp2_i_i217_add55_q_32_fifo(BITSELECT,342)
    assign bubble_select_redist2_i_cmp2_i_i217_add55_q_32_fifo_b = $unsigned(bubble_join_redist2_i_cmp2_i_i217_add55_q_32_fifo_q[0:0]);

    // i_unnamed_add61(MUX,170)@66
    assign i_unnamed_add61_s = bubble_select_redist2_i_cmp2_i_i217_add55_q_32_fifo_b;
    always @(i_unnamed_add61_s or bubble_select_i_llvm_fpga_mem_unmaskedload_lm4_add60_b or c_float_0_000000e_0089_q)
    begin
        unique case (i_unnamed_add61_s)
            1'b0 : i_unnamed_add61_q = bubble_select_i_llvm_fpga_mem_unmaskedload_lm4_add60_b;
            1'b1 : i_unnamed_add61_q = c_float_0_000000e_0089_q;
            default : i_unnamed_add61_q = 32'b0;
        endcase
    end

    // i_cmp11_i_i243_add58(LOGICAL,106)@34 + 1
    assign i_cmp11_i_i243_add58_qi = $unsigned(bubble_select_i_llvm_fpga_mem_unnamed_add6_add15_b == c_i32_088_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp11_i_i243_add58_delay ( .xin(i_cmp11_i_i243_add58_qi), .xout(i_cmp11_i_i243_add58_q), .ena(SE_i_cmp11_i_i243_add58_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_out_i_llvm_fpga_mem_unnamed_add6_add15(STALLENABLE,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_add6_add15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_add6_add15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_add6_add15_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_add6_add15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_add6_add15_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_add6_add15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_add6_add15_consumed0 = (~ (SE_i_cmp11_i_i243_add58_backStall) & SE_out_i_llvm_fpga_mem_unnamed_add6_add15_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_add6_add15_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add6_add15_consumed1 = (~ (SE_i_unnamed_add18_backStall) & SE_out_i_llvm_fpga_mem_unnamed_add6_add15_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_add6_add15_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_add6_add15_StallValid = SE_out_i_llvm_fpga_mem_unnamed_add6_add15_backStall & SE_out_i_llvm_fpga_mem_unnamed_add6_add15_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_add6_add15_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_add6_add15_StallValid & SE_out_i_llvm_fpga_mem_unnamed_add6_add15_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add6_add15_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_add6_add15_StallValid & SE_out_i_llvm_fpga_mem_unnamed_add6_add15_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_add6_add15_or0 = SE_out_i_llvm_fpga_mem_unnamed_add6_add15_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add6_add15_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_add6_add15_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_add6_add15_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_add6_add15_backStall = SE_out_i_llvm_fpga_mem_unnamed_add6_add15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_add6_add15_V0 = SE_out_i_llvm_fpga_mem_unnamed_add6_add15_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_add6_add15_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_add6_add15_V1 = SE_out_i_llvm_fpga_mem_unnamed_add6_add15_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_add6_add15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_add6_add15_wireValid = i_llvm_fpga_mem_unnamed_add6_add15_out_o_valid;

    // SE_i_cmp11_i_i243_add58(STALLENABLE,380)
    // Valid signal propagation
    assign SE_i_cmp11_i_i243_add58_V0 = SE_i_cmp11_i_i243_add58_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp11_i_i243_add58_s_tv_0 = redist4_i_cmp11_i_i243_add58_q_32_fifo_stall_out & SE_i_cmp11_i_i243_add58_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp11_i_i243_add58_backEN = ~ (SE_i_cmp11_i_i243_add58_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp11_i_i243_add58_v_s_0 = SE_i_cmp11_i_i243_add58_backEN & SE_out_i_llvm_fpga_mem_unnamed_add6_add15_V0;
    // Backward Stall generation
    assign SE_i_cmp11_i_i243_add58_backStall = ~ (SE_i_cmp11_i_i243_add58_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp11_i_i243_add58_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp11_i_i243_add58_backEN == 1'b0)
            begin
                SE_i_cmp11_i_i243_add58_R_v_0 <= SE_i_cmp11_i_i243_add58_R_v_0 & SE_i_cmp11_i_i243_add58_s_tv_0;
            end
            else
            begin
                SE_i_cmp11_i_i243_add58_R_v_0 <= SE_i_cmp11_i_i243_add58_v_s_0;
            end

        end
    end

    // redist4_i_cmp11_i_i243_add58_q_32_fifo(STALLFIFO,275)
    assign redist4_i_cmp11_i_i243_add58_q_32_fifo_valid_in = SE_i_cmp11_i_i243_add58_V0;
    assign redist4_i_cmp11_i_i243_add58_q_32_fifo_stall_in = SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_backStall;
    assign redist4_i_cmp11_i_i243_add58_q_32_fifo_data_in = i_cmp11_i_i243_add58_q;
    assign redist4_i_cmp11_i_i243_add58_q_32_fifo_valid_in_bitsignaltemp = redist4_i_cmp11_i_i243_add58_q_32_fifo_valid_in[0];
    assign redist4_i_cmp11_i_i243_add58_q_32_fifo_stall_in_bitsignaltemp = redist4_i_cmp11_i_i243_add58_q_32_fifo_stall_in[0];
    assign redist4_i_cmp11_i_i243_add58_q_32_fifo_valid_out[0] = redist4_i_cmp11_i_i243_add58_q_32_fifo_valid_out_bitsignaltemp;
    assign redist4_i_cmp11_i_i243_add58_q_32_fifo_stall_out[0] = redist4_i_cmp11_i_i243_add58_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_i_cmp11_i_i243_add58_q_32_fifo (
        .valid_in(redist4_i_cmp11_i_i243_add58_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_cmp11_i_i243_add58_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp11_i_i243_add58_q),
        .valid_out(redist4_i_cmp11_i_i243_add58_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_cmp11_i_i243_add58_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_cmp11_i_i243_add58_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist4_i_cmp11_i_i243_add58_q_32_fifo(BITJOIN,347)
    assign bubble_join_redist4_i_cmp11_i_i243_add58_q_32_fifo_q = redist4_i_cmp11_i_i243_add58_q_32_fifo_data_out;

    // bubble_select_redist4_i_cmp11_i_i243_add58_q_32_fifo(BITSELECT,348)
    assign bubble_select_redist4_i_cmp11_i_i243_add58_q_32_fifo_b = $unsigned(bubble_join_redist4_i_cmp11_i_i243_add58_q_32_fifo_q[0:0]);

    // i_unnamed_add62(MUX,171)@66
    assign i_unnamed_add62_s = bubble_select_redist4_i_cmp11_i_i243_add58_q_32_fifo_b;
    always @(i_unnamed_add62_s or bubble_select_i_llvm_fpga_mem_unmaskedload_lm4_add60_b or c_float_0_000000e_0089_q)
    begin
        unique case (i_unnamed_add62_s)
            1'b0 : i_unnamed_add62_q = bubble_select_i_llvm_fpga_mem_unmaskedload_lm4_add60_b;
            1'b1 : i_unnamed_add62_q = c_float_0_000000e_0089_q;
            default : i_unnamed_add62_q = 32'b0;
        endcase
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_acl_add63(MUX,104)@66
    assign i_acl_add63_s = bubble_select_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_b;
    always @(i_acl_add63_s or i_unnamed_add62_q or i_unnamed_add61_q)
    begin
        unique case (i_acl_add63_s)
            1'b0 : i_acl_add63_q = i_unnamed_add62_q;
            1'b1 : i_acl_add63_q = i_unnamed_add61_q;
            default : i_acl_add63_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_add28_add83(BLACKBOX,115)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_f32_unnamed_28_add0 thei_llvm_fpga_ffwd_source_f32_unnamed_add28_add83 (
        .in_predicate_in(GND_q),
        .in_src_data_in_19_0(i_acl_add63_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_V0),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_f32_unnamed_add28_add83_out_intel_reserved_ffwd_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_f32_unnamed_add28_add83_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_f32_unnamed_add28_add83_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist3_i_cmp24442_add42_q_32_fifo(BITJOIN,344)
    assign bubble_join_redist3_i_cmp24442_add42_q_32_fifo_q = redist3_i_cmp24442_add42_q_32_fifo_data_out;

    // bubble_select_redist3_i_cmp24442_add42_q_32_fifo(BITSELECT,345)
    assign bubble_select_redist3_i_cmp24442_add42_q_32_fifo_b = $unsigned(bubble_join_redist3_i_cmp24442_add42_q_32_fifo_q[0:0]);

    // i_llvm_fpga_ffwd_source_i1_unnamed_add22_add77(BLACKBOX,118)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i1_unnamed_22_add0 thei_llvm_fpga_ffwd_source_i1_unnamed_add22_add77 (
        .in_predicate_in(GND_q),
        .in_src_data_in_13_0(bubble_select_redist3_i_cmp24442_add42_q_32_fifo_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall),
        .in_valid_in(SE_out_redist3_i_cmp24442_add42_q_32_fifo_V0),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i1_unnamed_add22_add77_out_intel_reserved_ffwd_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_add22_add77_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_add22_add77_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_add45(LOGICAL,168)@66
    assign i_unnamed_add45_q = bubble_select_redist3_i_cmp24442_add42_q_32_fifo_b ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_add23_add78(BLACKBOX,119)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i1_unnamed_23_add0 thei_llvm_fpga_ffwd_source_i1_unnamed_add23_add78 (
        .in_predicate_in(GND_q),
        .in_src_data_in_14_0(i_unnamed_add45_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall),
        .in_valid_in(SE_out_redist3_i_cmp24442_add42_q_32_fifo_V1),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i1_unnamed_add23_add78_out_intel_reserved_ffwd_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_add23_add78_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_add23_add78_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm1_add47(BITJOIN,304)
    assign bubble_join_i_llvm_fpga_mem_lm1_add47_q = i_llvm_fpga_mem_lm1_add47_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1_add47(BITSELECT,305)
    assign bubble_select_i_llvm_fpga_mem_lm1_add47_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1_add47_q[7:0]);

    // i_lm_i0_cast_add0_lm_i0_cast_select_0_x(BITSELECT,54)@66
    assign i_lm_i0_cast_add0_lm_i0_cast_select_0_x_b = bubble_select_i_llvm_fpga_mem_lm1_add47_b[0:0];

    // i_llvm_fpga_ffwd_source_i1_unnamed_add24_add79(BLACKBOX,120)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i1_unnamed_24_add0 thei_llvm_fpga_ffwd_source_i1_unnamed_add24_add79 (
        .in_predicate_in(GND_q),
        .in_src_data_in_15_0(i_lm_i0_cast_add0_lm_i0_cast_select_0_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_lm1_add47_V1),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i1_unnamed_add24_add79_out_intel_reserved_ffwd_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_add24_add79_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_add24_add79_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm722_add51(BITJOIN,307)
    assign bubble_join_i_llvm_fpga_mem_lm722_add51_q = i_llvm_fpga_mem_lm722_add51_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm722_add51(BITSELECT,308)
    assign bubble_select_i_llvm_fpga_mem_lm722_add51_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm722_add51_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_add25_add80(BLACKBOX,125)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_25_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add25_add80 (
        .in_predicate_in(GND_q),
        .in_src_data_in_16_0(bubble_select_i_llvm_fpga_mem_lm722_add51_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_lm722_add51_V1),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i32_unnamed_add25_add80_out_intel_reserved_ffwd_16_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add25_add80_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add25_add80_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm743_add53(BITJOIN,310)
    assign bubble_join_i_llvm_fpga_mem_lm743_add53_q = i_llvm_fpga_mem_lm743_add53_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm743_add53(BITSELECT,311)
    assign bubble_select_i_llvm_fpga_mem_lm743_add53_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm743_add53_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_add26_add81(BLACKBOX,126)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_26_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add26_add81 (
        .in_predicate_in(GND_q),
        .in_src_data_in_17_0(bubble_select_i_llvm_fpga_mem_lm743_add53_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_lm743_add53_V1),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_i32_unnamed_add26_add81_out_intel_reserved_ffwd_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add26_add81_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add26_add81_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_add54(MUX,169)@66
    assign i_unnamed_add54_s = i_lm_i0_cast_add0_lm_i0_cast_select_0_x_b;
    always @(i_unnamed_add54_s or bubble_select_i_llvm_fpga_mem_lm743_add53_b or bubble_select_i_llvm_fpga_mem_lm722_add51_b)
    begin
        unique case (i_unnamed_add54_s)
            1'b0 : i_unnamed_add54_q = bubble_select_i_llvm_fpga_mem_lm743_add53_b;
            1'b1 : i_unnamed_add54_q = bubble_select_i_llvm_fpga_mem_lm722_add51_b;
            default : i_unnamed_add54_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_add27_add82(BLACKBOX,127)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_27_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add27_add82 (
        .in_predicate_in(GND_q),
        .in_src_data_in_18_0(i_unnamed_add54_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall),
        .in_valid_in(SE_i_unnamed_add54_V0),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_i32_unnamed_add27_add82_out_intel_reserved_ffwd_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add27_add82_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add27_add82_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_unnamed_add32_q_32_fifo(STALLFIFO,271)
    assign redist0_i_unnamed_add32_q_32_fifo_valid_in = SE_i_or_cond_add30_V1;
    assign redist0_i_unnamed_add32_q_32_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign redist0_i_unnamed_add32_q_32_fifo_data_in = i_unnamed_add32_q;
    assign redist0_i_unnamed_add32_q_32_fifo_valid_in_bitsignaltemp = redist0_i_unnamed_add32_q_32_fifo_valid_in[0];
    assign redist0_i_unnamed_add32_q_32_fifo_stall_in_bitsignaltemp = redist0_i_unnamed_add32_q_32_fifo_stall_in[0];
    assign redist0_i_unnamed_add32_q_32_fifo_valid_out[0] = redist0_i_unnamed_add32_q_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_unnamed_add32_q_32_fifo_stall_out[0] = redist0_i_unnamed_add32_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_i_unnamed_add32_q_32_fifo (
        .valid_in(redist0_i_unnamed_add32_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_unnamed_add32_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_unnamed_add32_q),
        .valid_out(redist0_i_unnamed_add32_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_unnamed_add32_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_unnamed_add32_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67(BLACKBOX,116)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i1_unnamed_12_add0 thei_llvm_fpga_ffwd_source_i1_unnamed_add12_add67 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_tobool_i_i_add5_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_add2_add4_V1),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67(STALLENABLE,392)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg(STALLFIFO,608)
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg(STALLFIFO,609)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg(STALLFIFO,610)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg(STALLFIFO,611)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg(STALLFIFO,612)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68(STALLENABLE,416)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg(STALLFIFO,613)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70(STALLENABLE,418)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg(STALLFIFO,614)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73(STALLENABLE,420)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg(STALLFIFO,615)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg(STALLFIFO,616)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg(STALLFIFO,617)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg(STALLFIFO,618)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64(STALLENABLE,428)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_wireValid = i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg(STALLFIFO,619)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1(STALLENABLE,537)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and0 = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and1 = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and2 = bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and3 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and4 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and5 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and6 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and7 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and8 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and7;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and9 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and8;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and10 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and9;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and11 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and10;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and12 = redist0_i_unnamed_add32_q_32_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and11;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and13 = i_llvm_fpga_ffwd_source_i32_unnamed_add27_add82_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and12;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and14 = i_llvm_fpga_ffwd_source_i32_unnamed_add26_add81_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and13;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and15 = i_llvm_fpga_ffwd_source_i32_unnamed_add25_add80_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and14;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and16 = i_llvm_fpga_ffwd_source_i1_unnamed_add24_add79_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and15;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and17 = i_llvm_fpga_ffwd_source_i1_unnamed_add23_add78_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and16;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and18 = i_llvm_fpga_ffwd_source_i1_unnamed_add22_add77_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and17;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and19 = i_llvm_fpga_ffwd_source_i1_unnamed_add17_add72_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and18;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_wireValid = i_llvm_fpga_ffwd_source_f32_unnamed_add28_add83_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_and19;

    // bubble_join_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo(BITJOIN,350)
    assign bubble_join_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_q = redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_data_out;

    // bubble_select_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo(BITSELECT,351)
    assign bubble_select_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_b = $unsigned(bubble_join_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_q[0:0]);

    // i_llvm_fpga_ffwd_source_i1_unnamed_add17_add72(BLACKBOX,117)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i1_unnamed_17_add0 thei_llvm_fpga_ffwd_source_i1_unnamed_add17_add72 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(bubble_select_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_backStall),
        .in_valid_in(SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_V1),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i1_unnamed_add17_add72_out_intel_reserved_ffwd_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_add17_add72_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_add17_add72_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60(STALLENABLE,436)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_V0 = SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_backStall = i_llvm_fpga_ffwd_source_f32_unnamed_add28_add83_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_and0 = i_llvm_fpga_mem_unmaskedload_lm4_add60_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_and1 = redist4_i_cmp11_i_i243_add58_q_32_fifo_valid_out & SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_and0;
    assign SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_and2 = redist2_i_cmp2_i_i217_add55_q_32_fifo_valid_out & SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_and1;
    assign SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_wireValid = SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_V0 & SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_and2;

    // SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo(STALLENABLE,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_fromReg0 <= '0;
            SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_fromReg0 <= SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_toReg0;
            // Successor 1
            SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_fromReg1 <= SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_unmaskedload_lm4_add60_backStall) & SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_wireValid) | SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_fromReg0;
    assign SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_add17_add72_out_stall_out) & SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_wireValid) | SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_StallValid = SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_backStall & SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_wireValid;
    assign SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_toReg0 = SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_StallValid & SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_consumed0;
    assign SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_toReg1 = SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_StallValid & SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_or0 = SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_consumed0;
    assign SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_wireStall = ~ (SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_consumed1 & SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_or0);
    assign SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_backStall = SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_V0 = SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_wireValid & ~ (SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_fromReg0);
    assign SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_V1 = SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_wireValid & ~ (SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_wireValid = redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_valid_out;

    // redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo(STALLFIFO,276)
    assign redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_valid_in = SE_out_i_llvm_fpga_mem_unnamed_add5_add12_V1;
    assign redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_stall_in = SE_out_redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_backStall;
    assign redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_data_in = i_tobool_i30_i_add13_sel_x_b;
    assign redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_valid_in_bitsignaltemp = redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_valid_in[0];
    assign redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_stall_in_bitsignaltemp = redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_stall_in[0];
    assign redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_valid_out[0] = redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_stall_out[0] = redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist5_i_tobool_i30_i_add13_sel_x_b_32_fifo (
        .valid_in(redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_tobool_i30_i_add13_sel_x_b),
        .valid_out(redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_add18(STALLENABLE,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_add18_fromReg0 <= '0;
            SE_i_unnamed_add18_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_add18_fromReg0 <= SE_i_unnamed_add18_toReg0;
            // Successor 1
            SE_i_unnamed_add18_fromReg1 <= SE_i_unnamed_add18_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_add18_consumed0 = (~ (SE_i_cmp4_i_add23_backStall) & SE_i_unnamed_add18_wireValid) | SE_i_unnamed_add18_fromReg0;
    assign SE_i_unnamed_add18_consumed1 = (~ (SE_i_or_cond_add30_backStall) & SE_i_unnamed_add18_wireValid) | SE_i_unnamed_add18_fromReg1;
    // Consuming
    assign SE_i_unnamed_add18_StallValid = SE_i_unnamed_add18_backStall & SE_i_unnamed_add18_wireValid;
    assign SE_i_unnamed_add18_toReg0 = SE_i_unnamed_add18_StallValid & SE_i_unnamed_add18_consumed0;
    assign SE_i_unnamed_add18_toReg1 = SE_i_unnamed_add18_StallValid & SE_i_unnamed_add18_consumed1;
    // Backward Stall generation
    assign SE_i_unnamed_add18_or0 = SE_i_unnamed_add18_consumed0;
    assign SE_i_unnamed_add18_wireStall = ~ (SE_i_unnamed_add18_consumed1 & SE_i_unnamed_add18_or0);
    assign SE_i_unnamed_add18_backStall = SE_i_unnamed_add18_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_add18_V0 = SE_i_unnamed_add18_wireValid & ~ (SE_i_unnamed_add18_fromReg0);
    assign SE_i_unnamed_add18_V1 = SE_i_unnamed_add18_wireValid & ~ (SE_i_unnamed_add18_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_add18_and0 = SE_out_i_llvm_fpga_mem_unnamed_add5_add12_V0;
    assign SE_i_unnamed_add18_and1 = SE_out_i_llvm_fpga_mem_unnamed_add6_add15_V1 & SE_i_unnamed_add18_and0;
    assign SE_i_unnamed_add18_wireValid = SE_out_i_llvm_fpga_mem_unnamed_add7_add17_V1 & SE_i_unnamed_add18_and1;

    // SE_out_i_llvm_fpga_mem_unnamed_add5_add12(STALLENABLE,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_add5_add12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_add5_add12_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_add5_add12_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_add5_add12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_add5_add12_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_add5_add12_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_add5_add12_consumed0 = (~ (SE_i_unnamed_add18_backStall) & SE_out_i_llvm_fpga_mem_unnamed_add5_add12_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_add5_add12_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add5_add12_consumed1 = (~ (redist5_i_tobool_i30_i_add13_sel_x_b_32_fifo_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_add5_add12_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_add5_add12_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_add5_add12_StallValid = SE_out_i_llvm_fpga_mem_unnamed_add5_add12_backStall & SE_out_i_llvm_fpga_mem_unnamed_add5_add12_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_add5_add12_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_add5_add12_StallValid & SE_out_i_llvm_fpga_mem_unnamed_add5_add12_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add5_add12_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_add5_add12_StallValid & SE_out_i_llvm_fpga_mem_unnamed_add5_add12_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_add5_add12_or0 = SE_out_i_llvm_fpga_mem_unnamed_add5_add12_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add5_add12_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_add5_add12_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_add5_add12_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_add5_add12_backStall = SE_out_i_llvm_fpga_mem_unnamed_add5_add12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_add5_add12_V0 = SE_out_i_llvm_fpga_mem_unnamed_add5_add12_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_add5_add12_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_add5_add12_V1 = SE_out_i_llvm_fpga_mem_unnamed_add5_add12_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_add5_add12_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_add5_add12_wireValid = i_llvm_fpga_mem_unnamed_add5_add12_out_o_valid;

    // bubble_join_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x(BITJOIN,280)
    assign bubble_join_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_q = {i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x(BITSELECT,281)
    assign bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_q[191:128]);

    // i_transposed_i29_i_add0_add_x(ADD,77)@2
    assign i_transposed_i29_i_add0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_c};
    assign i_transposed_i29_i_add0_add_x_b = {1'b0, i_transposed_i29_i_add0_c_i64_81_x_q};
    assign i_transposed_i29_i_add0_add_x_o = $unsigned(i_transposed_i29_i_add0_add_x_a) + $unsigned(i_transposed_i29_i_add0_add_x_b);
    assign i_transposed_i29_i_add0_add_x_q = i_transposed_i29_i_add0_add_x_o[64:0];

    // i_transposed_i29_i_add0_trunc_sel_x(BITSELECT,76)@2
    assign i_transposed_i29_i_add0_trunc_sel_x_b = i_transposed_i29_i_add0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_add5_add12(BLACKBOX,145)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_add5_add_avm_address@20000000
    // out out_unnamed_add5_add_avm_burstcount@20000000
    // out out_unnamed_add5_add_avm_byteenable@20000000
    // out out_unnamed_add5_add_avm_enable@20000000
    // out out_unnamed_add5_add_avm_read@20000000
    // out out_unnamed_add5_add_avm_write@20000000
    // out out_unnamed_add5_add_avm_writedata@20000000
    add_i_llvm_fpga_mem_unnamed_5_add0 thei_llvm_fpga_mem_unnamed_add5_add12 (
        .in_flush(in_flush),
        .in_i_address(i_transposed_i29_i_add0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_add5_add12_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V10),
        .in_unnamed_add5_add_avm_readdata(in_unnamed_add5_add_avm_readdata),
        .in_unnamed_add5_add_avm_readdatavalid(in_unnamed_add5_add_avm_readdatavalid),
        .in_unnamed_add5_add_avm_waitrequest(in_unnamed_add5_add_avm_waitrequest),
        .in_unnamed_add5_add_avm_writeack(in_unnamed_add5_add_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_add5_add12_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_add5_add12_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_add5_add12_out_o_valid),
        .out_unnamed_add5_add_avm_address(i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_address),
        .out_unnamed_add5_add_avm_burstcount(i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_burstcount),
        .out_unnamed_add5_add_avm_byteenable(i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_byteenable),
        .out_unnamed_add5_add_avm_enable(i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_enable),
        .out_unnamed_add5_add_avm_read(i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_read),
        .out_unnamed_add5_add_avm_write(i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_write),
        .out_unnamed_add5_add_avm_writedata(i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_t_numcols_i33_i_add0_add_x(ADD,63)@2
    assign i_t_numcols_i33_i_add0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_c};
    assign i_t_numcols_i33_i_add0_add_x_b = {1'b0, i_t_numcols_i33_i_add0_c_i64_41_x_q};
    assign i_t_numcols_i33_i_add0_add_x_o = $unsigned(i_t_numcols_i33_i_add0_add_x_a) + $unsigned(i_t_numcols_i33_i_add0_add_x_b);
    assign i_t_numcols_i33_i_add0_add_x_q = i_t_numcols_i33_i_add0_add_x_o[64:0];

    // i_t_numcols_i33_i_add0_trunc_sel_x(BITSELECT,62)@2
    assign i_t_numcols_i33_i_add0_trunc_sel_x_b = i_t_numcols_i33_i_add0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_add6_add15(BLACKBOX,149)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_add6_add_avm_address@20000000
    // out out_unnamed_add6_add_avm_burstcount@20000000
    // out out_unnamed_add6_add_avm_byteenable@20000000
    // out out_unnamed_add6_add_avm_enable@20000000
    // out out_unnamed_add6_add_avm_read@20000000
    // out out_unnamed_add6_add_avm_write@20000000
    // out out_unnamed_add6_add_avm_writedata@20000000
    add_i_llvm_fpga_mem_unnamed_6_add0 thei_llvm_fpga_mem_unnamed_add6_add15 (
        .in_flush(in_flush),
        .in_i_address(i_t_numcols_i33_i_add0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_add6_add15_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V8),
        .in_unnamed_add6_add_avm_readdata(in_unnamed_add6_add_avm_readdata),
        .in_unnamed_add6_add_avm_readdatavalid(in_unnamed_add6_add_avm_readdatavalid),
        .in_unnamed_add6_add_avm_waitrequest(in_unnamed_add6_add_avm_waitrequest),
        .in_unnamed_add6_add_avm_writeack(in_unnamed_add6_add_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_add6_add15_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_add6_add15_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_add6_add15_out_o_valid),
        .out_unnamed_add6_add_avm_address(i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_address),
        .out_unnamed_add6_add_avm_burstcount(i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_burstcount),
        .out_unnamed_add6_add_avm_byteenable(i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_byteenable),
        .out_unnamed_add6_add_avm_enable(i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_enable),
        .out_unnamed_add6_add_avm_read(i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_read),
        .out_unnamed_add6_add_avm_write(i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_write),
        .out_unnamed_add6_add_avm_writedata(i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73(BLACKBOX,130)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_p1024i32_unnamed_18_add0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(i_t_numcols_i33_i_add0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V7),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_out_intel_reserved_ffwd_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_t_numcols_i_i_add0_add_x(ADD,71)@2
    assign i_t_numcols_i_i_add0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_b};
    assign i_t_numcols_i_i_add0_add_x_b = {1'b0, i_t_numcols_i33_i_add0_c_i64_41_x_q};
    assign i_t_numcols_i_i_add0_add_x_o = $unsigned(i_t_numcols_i_i_add0_add_x_a) + $unsigned(i_t_numcols_i_i_add0_add_x_b);
    assign i_t_numcols_i_i_add0_add_x_q = i_t_numcols_i_i_add0_add_x_o[64:0];

    // i_t_numcols_i_i_add0_trunc_sel_x(BITSELECT,70)@2
    assign i_t_numcols_i_i_add0_trunc_sel_x_b = i_t_numcols_i_i_add0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_add3_add7(BLACKBOX,143)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_add3_add_avm_address@20000000
    // out out_unnamed_add3_add_avm_burstcount@20000000
    // out out_unnamed_add3_add_avm_byteenable@20000000
    // out out_unnamed_add3_add_avm_enable@20000000
    // out out_unnamed_add3_add_avm_read@20000000
    // out out_unnamed_add3_add_avm_write@20000000
    // out out_unnamed_add3_add_avm_writedata@20000000
    add_i_llvm_fpga_mem_unnamed_3_add0 thei_llvm_fpga_mem_unnamed_add3_add7 (
        .in_flush(in_flush),
        .in_i_address(i_t_numcols_i_i_add0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_add3_add7_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V6),
        .in_unnamed_add3_add_avm_readdata(in_unnamed_add3_add_avm_readdata),
        .in_unnamed_add3_add_avm_readdatavalid(in_unnamed_add3_add_avm_readdatavalid),
        .in_unnamed_add3_add_avm_waitrequest(in_unnamed_add3_add_avm_waitrequest),
        .in_unnamed_add3_add_avm_writeack(in_unnamed_add3_add_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_add3_add7_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_add3_add7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_add3_add7_out_o_valid),
        .out_unnamed_add3_add_avm_address(i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_address),
        .out_unnamed_add3_add_avm_burstcount(i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_burstcount),
        .out_unnamed_add3_add_avm_byteenable(i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_byteenable),
        .out_unnamed_add3_add_avm_enable(i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_enable),
        .out_unnamed_add3_add_avm_read(i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_read),
        .out_unnamed_add3_add_avm_write(i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_write),
        .out_unnamed_add3_add_avm_writedata(i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68(BLACKBOX,128)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_p1024i32_unnamed_13_add0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_t_numcols_i_i_add0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V5),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,269)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_d, bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_c};

    // coalesced_delay_0_fifo(STALLFIFO,278)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V4;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(128),
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

    // i_llvm_fpga_mem_unnamed_add7_add17(BLACKBOX,150)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_add7_add_avm_address@20000000
    // out out_unnamed_add7_add_avm_burstcount@20000000
    // out out_unnamed_add7_add_avm_byteenable@20000000
    // out out_unnamed_add7_add_avm_enable@20000000
    // out out_unnamed_add7_add_avm_read@20000000
    // out out_unnamed_add7_add_avm_write@20000000
    // out out_unnamed_add7_add_avm_writedata@20000000
    add_i_llvm_fpga_mem_unnamed_7_add0 thei_llvm_fpga_mem_unnamed_add7_add17 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_c),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_add7_add17_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V3),
        .in_unnamed_add7_add_avm_readdata(in_unnamed_add7_add_avm_readdata),
        .in_unnamed_add7_add_avm_readdatavalid(in_unnamed_add7_add_avm_readdatavalid),
        .in_unnamed_add7_add_avm_waitrequest(in_unnamed_add7_add_avm_waitrequest),
        .in_unnamed_add7_add_avm_writeack(in_unnamed_add7_add_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_add7_add17_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_add7_add17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_add7_add17_out_o_valid),
        .out_unnamed_add7_add_avm_address(i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_address),
        .out_unnamed_add7_add_avm_burstcount(i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_burstcount),
        .out_unnamed_add7_add_avm_byteenable(i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_byteenable),
        .out_unnamed_add7_add_avm_enable(i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_enable),
        .out_unnamed_add7_add_avm_read(i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_read),
        .out_unnamed_add7_add_avm_write(i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_write),
        .out_unnamed_add7_add_avm_writedata(i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_add4_add9(BLACKBOX,144)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_add4_add_avm_address@20000000
    // out out_unnamed_add4_add_avm_burstcount@20000000
    // out out_unnamed_add4_add_avm_byteenable@20000000
    // out out_unnamed_add4_add_avm_enable@20000000
    // out out_unnamed_add4_add_avm_read@20000000
    // out out_unnamed_add4_add_avm_write@20000000
    // out out_unnamed_add4_add_avm_writedata@20000000
    add_i_llvm_fpga_mem_unnamed_4_add0 thei_llvm_fpga_mem_unnamed_add4_add9 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_add4_add9_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V2),
        .in_unnamed_add4_add_avm_readdata(in_unnamed_add4_add_avm_readdata),
        .in_unnamed_add4_add_avm_readdatavalid(in_unnamed_add4_add_avm_readdatavalid),
        .in_unnamed_add4_add_avm_waitrequest(in_unnamed_add4_add_avm_waitrequest),
        .in_unnamed_add4_add_avm_writeack(in_unnamed_add4_add_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_add4_add9_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_add4_add9_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_add4_add9_out_o_valid),
        .out_unnamed_add4_add_avm_address(i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_address),
        .out_unnamed_add4_add_avm_burstcount(i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_burstcount),
        .out_unnamed_add4_add_avm_byteenable(i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_byteenable),
        .out_unnamed_add4_add_avm_enable(i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_enable),
        .out_unnamed_add4_add_avm_read(i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_read),
        .out_unnamed_add4_add_avm_write(i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_write),
        .out_unnamed_add4_add_avm_writedata(i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64(BLACKBOX,134)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_p1024s_class0000orxls_unnamed_9_add0 thei_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V1),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70(BLACKBOX,129)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_p1024i32_unnamed_15_add0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V0),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,474)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = add_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // add_B1_start_merge_reg(BLACKBOX,88)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_B1_start_merge_reg theadd_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_add_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(add_B1_start_merge_reg_out_stall_out),
        .out_valid_out(add_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_add_B1_start_merge_reg(STALLENABLE,377)
    // Valid signal propagation
    assign SE_out_add_B1_start_merge_reg_V0 = SE_out_add_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_add_B1_start_merge_reg_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_out_stall_out | ~ (SE_out_add_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_add_B1_start_merge_reg_wireValid = add_B1_start_merge_reg_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_add0(BLACKBOX,151)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    add_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_add0 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_backStall),
        .in_valid_in(SE_out_add_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0(STALLENABLE,454)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_backStall = i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0(BITJOIN,334)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0(BITSELECT,335)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_q[0:0]);

    // i_iord_bl_call_add_unnamed_add1_add1_aunroll_x(BLACKBOX,53)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_add_o_fifoalmost_full@20000000
    // out out_iord_bl_call_add_o_fifoready@20000000
    // out out_o_stall@20000000
    add_i_iord_bl_call_unnamed_add1_add0 thei_iord_bl_call_add_unnamed_add1_add1_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_b),
        .in_i_stall(SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_V0),
        .in_iord_bl_call_add_i_fifodata(in_iord_bl_call_add_i_fifodata),
        .in_iord_bl_call_add_i_fifovalid(in_iord_bl_call_add_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_data_2_tpl),
        .out_iord_bl_call_add_o_fifoalmost_full(i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_iord_bl_call_add_o_fifoalmost_full),
        .out_iord_bl_call_add_o_fifoready(i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_iord_bl_call_add_o_fifoready),
        .out_o_stall(i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x(STALLENABLE,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg2 <= '0;
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg3 <= '0;
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg4 <= '0;
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg5 <= '0;
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg6 <= '0;
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg7 <= '0;
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg8 <= '0;
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg9 <= '0;
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg10 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg3 <= SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg4 <= SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg5 <= SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg6 <= SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg6;
            // Successor 7
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg7 <= SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg7;
            // Successor 8
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg8 <= SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg8;
            // Successor 9
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg9 <= SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg9;
            // Successor 10
            SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg10 <= SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg10;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_out_stall_out) & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_out_stall_out) & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed2 = (~ (i_llvm_fpga_mem_unnamed_add4_add9_out_o_stall) & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg2;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed3 = (~ (i_llvm_fpga_mem_unnamed_add7_add17_out_o_stall) & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg3;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed4 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg4;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_out_stall_out) & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg5;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed6 = (~ (i_llvm_fpga_mem_unnamed_add3_add7_out_o_stall) & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg6;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed7 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_out_stall_out) & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg7;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed8 = (~ (i_llvm_fpga_mem_unnamed_add6_add15_out_o_stall) & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg8;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed9 = (~ (i_llvm_fpga_mem_unnamed_add2_add4_out_o_stall) & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg9;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed10 = (~ (i_llvm_fpga_mem_unnamed_add5_add12_out_o_stall) & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg10;
    // Consuming
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_backStall & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg0 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg1 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg2 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed2;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg3 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed3;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg4 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed4;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg5 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed5;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg6 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed6;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg7 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed7;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg8 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed8;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg9 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed9;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_toReg10 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_StallValid & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed10;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or0 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or1 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed1 & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or2 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed2 & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or1;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or3 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed3 & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or2;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or4 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed4 & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or3;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or5 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed5 & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or4;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or6 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed6 & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or5;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or7 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed7 & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or6;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or8 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed8 & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or7;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or9 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed9 & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or8;
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_consumed10 & SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_or9);
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_backStall = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V0 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V1 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V2 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg2);
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V3 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg3);
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V4 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg4);
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V5 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg5);
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V6 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg6);
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V7 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg7);
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V8 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg8);
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V9 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg9);
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V10 = SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_fromReg10);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_wireValid = i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_mem_unnamed_add2_add4(STALLENABLE,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_add2_add4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_add2_add4_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_add2_add4_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_add2_add4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_add2_add4_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_add2_add4_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_add2_add4_consumed0 = (~ (SE_i_unnamed_add10_backStall) & SE_out_i_llvm_fpga_mem_unnamed_add2_add4_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_add2_add4_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add2_add4_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_out_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_add2_add4_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_add2_add4_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_add2_add4_StallValid = SE_out_i_llvm_fpga_mem_unnamed_add2_add4_backStall & SE_out_i_llvm_fpga_mem_unnamed_add2_add4_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_add2_add4_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_add2_add4_StallValid & SE_out_i_llvm_fpga_mem_unnamed_add2_add4_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add2_add4_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_add2_add4_StallValid & SE_out_i_llvm_fpga_mem_unnamed_add2_add4_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_add2_add4_or0 = SE_out_i_llvm_fpga_mem_unnamed_add2_add4_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_add2_add4_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_add2_add4_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_add2_add4_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_add2_add4_backStall = SE_out_i_llvm_fpga_mem_unnamed_add2_add4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_add2_add4_V0 = SE_out_i_llvm_fpga_mem_unnamed_add2_add4_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_add2_add4_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_add2_add4_V1 = SE_out_i_llvm_fpga_mem_unnamed_add2_add4_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_add2_add4_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_add2_add4_wireValid = i_llvm_fpga_mem_unnamed_add2_add4_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_transposed_i_i_add0_add_x(ADD,85)@2
    assign i_transposed_i_i_add0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_b};
    assign i_transposed_i_i_add0_add_x_b = {1'b0, i_transposed_i29_i_add0_c_i64_81_x_q};
    assign i_transposed_i_i_add0_add_x_o = $unsigned(i_transposed_i_i_add0_add_x_a) + $unsigned(i_transposed_i_i_add0_add_x_b);
    assign i_transposed_i_i_add0_add_x_q = i_transposed_i_i_add0_add_x_o[64:0];

    // i_transposed_i_i_add0_trunc_sel_x(BITSELECT,84)@2
    assign i_transposed_i_i_add0_trunc_sel_x_b = i_transposed_i_i_add0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_add2_add4(BLACKBOX,139)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_add2_add_avm_address@20000000
    // out out_unnamed_add2_add_avm_burstcount@20000000
    // out out_unnamed_add2_add_avm_byteenable@20000000
    // out out_unnamed_add2_add_avm_enable@20000000
    // out out_unnamed_add2_add_avm_read@20000000
    // out out_unnamed_add2_add_avm_write@20000000
    // out out_unnamed_add2_add_avm_writedata@20000000
    add_i_llvm_fpga_mem_unnamed_2_add0 thei_llvm_fpga_mem_unnamed_add2_add4 (
        .in_flush(in_flush),
        .in_i_address(i_transposed_i_i_add0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_add2_add4_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_V9),
        .in_unnamed_add2_add_avm_readdata(in_unnamed_add2_add_avm_readdata),
        .in_unnamed_add2_add_avm_readdatavalid(in_unnamed_add2_add_avm_readdatavalid),
        .in_unnamed_add2_add_avm_waitrequest(in_unnamed_add2_add_avm_waitrequest),
        .in_unnamed_add2_add_avm_writeack(in_unnamed_add2_add_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_add2_add4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_add2_add4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_add2_add4_out_o_valid),
        .out_unnamed_add2_add_avm_address(i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_address),
        .out_unnamed_add2_add_avm_burstcount(i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_burstcount),
        .out_unnamed_add2_add_avm_byteenable(i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_byteenable),
        .out_unnamed_add2_add_avm_enable(i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_enable),
        .out_unnamed_add2_add_avm_read(i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_read),
        .out_unnamed_add2_add_avm_write(i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_write),
        .out_unnamed_add2_add_avm_writedata(i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,9)
    assign out_unnamed_add2_add_avm_address = i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_address;
    assign out_unnamed_add2_add_avm_enable = i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_enable;
    assign out_unnamed_add2_add_avm_read = i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_read;
    assign out_unnamed_add2_add_avm_write = i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_write;
    assign out_unnamed_add2_add_avm_writedata = i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_writedata;
    assign out_unnamed_add2_add_avm_byteenable = i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_byteenable;
    assign out_unnamed_add2_add_avm_burstcount = i_llvm_fpga_mem_unnamed_add2_add4_out_unnamed_add2_add_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_add19_add74_out_intel_reserved_ffwd_10_0;

    // bubble_join_redist0_i_unnamed_add32_q_32_fifo(BITJOIN,338)
    assign bubble_join_redist0_i_unnamed_add32_q_32_fifo_q = redist0_i_unnamed_add32_q_32_fifo_data_out;

    // bubble_select_redist0_i_unnamed_add32_q_32_fifo(BITSELECT,339)
    assign bubble_select_redist0_i_unnamed_add32_q_32_fifo_b = $unsigned(bubble_join_redist0_i_unnamed_add32_q_32_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,11)@66
    assign out_unnamed_add0 = bubble_select_redist0_i_unnamed_add32_q_32_fifo_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,14)
    assign out_unnamed_add3_add_avm_address = i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_address;
    assign out_unnamed_add3_add_avm_enable = i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_enable;
    assign out_unnamed_add3_add_avm_read = i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_read;
    assign out_unnamed_add3_add_avm_write = i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_write;
    assign out_unnamed_add3_add_avm_writedata = i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_writedata;
    assign out_unnamed_add3_add_avm_byteenable = i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_byteenable;
    assign out_unnamed_add3_add_avm_burstcount = i_llvm_fpga_mem_unnamed_add3_add7_out_unnamed_add3_add_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add20_add75_out_intel_reserved_ffwd_11_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,17)
    assign out_unnamed_add4_add_avm_address = i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_address;
    assign out_unnamed_add4_add_avm_enable = i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_enable;
    assign out_unnamed_add4_add_avm_read = i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_read;
    assign out_unnamed_add4_add_avm_write = i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_write;
    assign out_unnamed_add4_add_avm_writedata = i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_writedata;
    assign out_unnamed_add4_add_avm_byteenable = i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_byteenable;
    assign out_unnamed_add4_add_avm_burstcount = i_llvm_fpga_mem_unnamed_add4_add9_out_unnamed_add4_add_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add21_add76_out_intel_reserved_ffwd_12_0;

    // dupName_3_ext_sig_sync_out_x(GPOUT,20)
    assign out_unnamed_add5_add_avm_address = i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_address;
    assign out_unnamed_add5_add_avm_enable = i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_enable;
    assign out_unnamed_add5_add_avm_read = i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_read;
    assign out_unnamed_add5_add_avm_write = i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_write;
    assign out_unnamed_add5_add_avm_writedata = i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_writedata;
    assign out_unnamed_add5_add_avm_byteenable = i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_byteenable;
    assign out_unnamed_add5_add_avm_burstcount = i_llvm_fpga_mem_unnamed_add5_add12_out_unnamed_add5_add_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i1_unnamed_add22_add77_out_intel_reserved_ffwd_13_0;

    // dupName_4_ext_sig_sync_out_x(GPOUT,23)
    assign out_unnamed_add6_add_avm_address = i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_address;
    assign out_unnamed_add6_add_avm_enable = i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_enable;
    assign out_unnamed_add6_add_avm_read = i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_read;
    assign out_unnamed_add6_add_avm_write = i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_write;
    assign out_unnamed_add6_add_avm_writedata = i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_writedata;
    assign out_unnamed_add6_add_avm_byteenable = i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_byteenable;
    assign out_unnamed_add6_add_avm_burstcount = i_llvm_fpga_mem_unnamed_add6_add15_out_unnamed_add6_add_avm_burstcount;

    // dupName_4_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i1_unnamed_add23_add78_out_intel_reserved_ffwd_14_0;

    // dupName_5_ext_sig_sync_out_x(GPOUT,26)
    assign out_unnamed_add7_add_avm_address = i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_address;
    assign out_unnamed_add7_add_avm_enable = i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_enable;
    assign out_unnamed_add7_add_avm_read = i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_read;
    assign out_unnamed_add7_add_avm_write = i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_write;
    assign out_unnamed_add7_add_avm_writedata = i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_writedata;
    assign out_unnamed_add7_add_avm_byteenable = i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_byteenable;
    assign out_unnamed_add7_add_avm_burstcount = i_llvm_fpga_mem_unnamed_add7_add17_out_unnamed_add7_add_avm_burstcount;

    // dupName_5_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i1_unnamed_add24_add79_out_intel_reserved_ffwd_15_0;

    // dupName_6_ext_sig_sync_out_x(GPOUT,29)
    assign out_lm1_add_avm_address = i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_address;
    assign out_lm1_add_avm_enable = i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_enable;
    assign out_lm1_add_avm_read = i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_read;
    assign out_lm1_add_avm_write = i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_write;
    assign out_lm1_add_avm_writedata = i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_writedata;
    assign out_lm1_add_avm_byteenable = i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_byteenable;
    assign out_lm1_add_avm_burstcount = i_llvm_fpga_mem_lm1_add47_out_lm1_add_avm_burstcount;

    // dupName_6_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add25_add80_out_intel_reserved_ffwd_16_0;

    // dupName_7_ext_sig_sync_out_x(GPOUT,32)
    assign out_lm722_add_avm_address = i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_address;
    assign out_lm722_add_avm_enable = i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_enable;
    assign out_lm722_add_avm_read = i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_read;
    assign out_lm722_add_avm_write = i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_write;
    assign out_lm722_add_avm_writedata = i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_writedata;
    assign out_lm722_add_avm_byteenable = i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_byteenable;
    assign out_lm722_add_avm_burstcount = i_llvm_fpga_mem_lm722_add51_out_lm722_add_avm_burstcount;

    // dupName_7_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add26_add81_out_intel_reserved_ffwd_17_0;

    // dupName_8_ext_sig_sync_out_x(GPOUT,35)
    assign out_lm743_add_avm_address = i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_address;
    assign out_lm743_add_avm_enable = i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_enable;
    assign out_lm743_add_avm_read = i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_read;
    assign out_lm743_add_avm_write = i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_write;
    assign out_lm743_add_avm_writedata = i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_writedata;
    assign out_lm743_add_avm_byteenable = i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_byteenable;
    assign out_lm743_add_avm_burstcount = i_llvm_fpga_mem_lm743_add53_out_lm743_add_avm_burstcount;

    // dupName_8_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add27_add82_out_intel_reserved_ffwd_18_0;

    // dupName_9_ext_sig_sync_out_x(GPOUT,38)
    assign out_unmaskedload_lm4_add_avm_address = i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_address;
    assign out_unmaskedload_lm4_add_avm_enable = i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_enable;
    assign out_unmaskedload_lm4_add_avm_read = i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_read;
    assign out_unmaskedload_lm4_add_avm_write = i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_write;
    assign out_unmaskedload_lm4_add_avm_writedata = i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_writedata;
    assign out_unmaskedload_lm4_add_avm_byteenable = i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_byteenable;
    assign out_unmaskedload_lm4_add_avm_burstcount = i_llvm_fpga_mem_unmaskedload_lm4_add60_out_unmaskedload_lm4_add_avm_burstcount;

    // dupName_9_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_f32_unnamed_add28_add83_out_intel_reserved_ffwd_19_0;

    // dupName_10_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add10_add65_out_intel_reserved_ffwd_1_0;

    // dupName_11_regfree_osync_x(GPOUT,41)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add11_add66_out_intel_reserved_ffwd_2_0;

    // dupName_12_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i1_unnamed_add12_add67_out_intel_reserved_ffwd_3_0;

    // dupName_13_regfree_osync_x(GPOUT,43)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_add13_add68_out_intel_reserved_ffwd_4_0;

    // dupName_14_regfree_osync_x(GPOUT,44)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add14_add69_out_intel_reserved_ffwd_5_0;

    // dupName_15_regfree_osync_x(GPOUT,45)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_add15_add70_out_intel_reserved_ffwd_6_0;

    // dupName_16_regfree_osync_x(GPOUT,46)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add16_add71_out_intel_reserved_ffwd_7_0;

    // dupName_17_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i1_unnamed_add17_add72_out_intel_reserved_ffwd_8_0;

    // dupName_18_regfree_osync_x(GPOUT,48)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_add18_add73_out_intel_reserved_ffwd_9_0;

    // ext_sig_sync_out(GPOUT,100)
    assign out_iord_bl_call_add_o_fifoready = i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_iord_bl_call_add_o_fifoready;
    assign out_iord_bl_call_add_o_fifoalmost_full = i_iord_bl_call_add_unnamed_add1_add1_aunroll_x_out_iord_bl_call_add_o_fifoalmost_full;

    // feedback_stall_out_1_sync(GPOUT,102)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_add0_out_feedback_stall_out_1;

    // regfree_osync(GPOUT,247)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024s_class_tensorxls_unnamed_add9_add64_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,253)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
