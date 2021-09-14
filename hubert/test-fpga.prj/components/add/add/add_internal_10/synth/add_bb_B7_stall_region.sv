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

// SystemVerilog created from add_bb_B7_stall_region
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_bb_B7_stall_region (
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    output wire [31:0] out_inc35,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_34_0,
    output wire [0:0] out_intel_reserved_ffwd_35_0,
    output wire [63:0] out_intel_reserved_ffwd_36_0,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [63:0] out_intel_reserved_ffwd_38_0,
    output wire [0:0] out_intel_reserved_ffwd_39_0,
    output wire [0:0] out_intel_reserved_ffwd_40_0,
    output wire [31:0] out_intel_reserved_ffwd_41_0,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_44_0,
    input wire [31:0] in_intel_reserved_ffwd_45_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_32_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [31:0] in_i_0443,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] add_B7_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] add_B7_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] add_B7_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] add_B7_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] bgTrunc_i_inc35_add1_sel_x_b;
    wire [63:0] i_idxprom14_i156_add0_sel_x_b;
    wire [31:0] i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_33_0;
    wire [31:0] i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_34_0;
    wire [0:0] i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [31:0] i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [63:0] i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_38_0;
    wire [0:0] i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_39_0;
    wire [0:0] i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_40_0;
    wire [0:0] i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_o_valid;
    wire [31:0] c_i32_17_q;
    wire [31:0] i_idxprom14_i156_add0_vt_const_63_q;
    wire [63:0] i_idxprom14_i156_add0_vt_join_q;
    wire [31:0] i_idxprom14_i156_add0_vt_select_31_b;
    wire [32:0] i_inc35_add1_a;
    wire [32:0] i_inc35_add1_b;
    logic [32:0] i_inc35_add1_o;
    wire [32:0] i_inc35_add1_q;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add53_add2_out_intel_reserved_ffwd_32_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add53_add2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add53_add2_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add66_add6_out_intel_reserved_ffwd_41_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add66_add6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add66_add6_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_out_intel_reserved_ffwd_36_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_out_valid_out;
    wire [0:0] redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_valid_in;
    wire redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_stall_in;
    wire redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_data_in;
    wire [0:0] redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_valid_out;
    wire redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_stall_out;
    wire redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_data_out;
    wire [32:0] bubble_join_add_B7_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_add_B7_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_add_B7_merge_reg_aunroll_x_c;
    wire [32:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_join_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_q;
    wire [31:0] bubble_select_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_b;
    wire [0:0] SE_out_add_B7_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_add_B7_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_add_B7_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_add_B7_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_add_B7_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_add_B7_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_add_B7_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_add_B7_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_add_B7_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_add_B7_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_add_B7_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_add_B7_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_add_B7_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireValid;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireStall;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_StallValid;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_toReg0;
    reg [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg0;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed0;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_toReg1;
    reg [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg1;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed1;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_toReg2;
    reg [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg2;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed2;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_toReg3;
    reg [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg3;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed3;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_or0;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_or1;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_or2;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_backStall;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_V0;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_V1;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_V2;
    wire [0:0] SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_V3;


    // c_i32_17(CONSTANT,18)
    assign c_i32_17_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo(BITJOIN,69)
    assign bubble_join_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_q = redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_data_out;

    // bubble_select_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo(BITSELECT,70)
    assign bubble_select_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_b = $unsigned(bubble_join_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_q[31:0]);

    // i_inc35_add1(ADD,25)@52
    assign i_inc35_add1_a = {1'b0, bubble_select_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_b};
    assign i_inc35_add1_b = {1'b0, c_i32_17_q};
    assign i_inc35_add1_o = $unsigned(i_inc35_add1_a) + $unsigned(i_inc35_add1_b);
    assign i_inc35_add1_q = i_inc35_add1_o[32:0];

    // bgTrunc_i_inc35_add1_sel_x(BITSELECT,3)@52
    assign bgTrunc_i_inc35_add1_sel_x_b = i_inc35_add1_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_add66_add6(BLACKBOX,27)@52
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_41_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_66_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add66_add6 (
        .in_predicate_in(GND_q),
        .in_src_data_in_41_0(bgTrunc_i_inc35_add1_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_backStall),
        .in_valid_in(SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_V3),
        .out_intel_reserved_ffwd_41_0(i_llvm_fpga_ffwd_source_i32_unnamed_add66_add6_out_intel_reserved_ffwd_41_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add66_add6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add66_add6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom14_i156_add0_vt_const_63(CONSTANT,22)
    assign i_idxprom14_i156_add0_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_idxprom14_i156_add0_sel_x(BITSELECT,14)@52
    assign i_idxprom14_i156_add0_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_b[31:0]};

    // i_idxprom14_i156_add0_vt_select_31(BITSELECT,24)@52
    assign i_idxprom14_i156_add0_vt_select_31_b = i_idxprom14_i156_add0_sel_x_b[31:0];

    // i_idxprom14_i156_add0_vt_join(BITJOIN,23)@52
    assign i_idxprom14_i156_add0_vt_join_q = {i_idxprom14_i156_add0_vt_const_63_q, i_idxprom14_i156_add0_vt_select_31_b};

    // i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5(BLACKBOX,28)@52
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_36_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i64_unnamed_65_add0 thei_llvm_fpga_ffwd_source_i64_unnamed_add65_add5 (
        .in_predicate_in(GND_q),
        .in_src_data_in_36_0(i_idxprom14_i156_add0_vt_join_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_backStall),
        .in_valid_in(SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_V2),
        .out_intel_reserved_ffwd_36_0(i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_out_intel_reserved_ffwd_36_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_add53_add2(BLACKBOX,26)@52
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_32_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_53_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add53_add2 (
        .in_predicate_in(GND_q),
        .in_src_data_in_32_0(bubble_select_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_backStall),
        .in_valid_in(SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_V0),
        .out_intel_reserved_ffwd_32_0(i_llvm_fpga_ffwd_source_i32_unnamed_add53_add2_out_intel_reserved_ffwd_32_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add53_add2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add53_add2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo(STALLENABLE,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg0 <= '0;
            SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg1 <= '0;
            SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg2 <= '0;
            SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg0 <= SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_toReg0;
            // Successor 1
            SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg1 <= SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_toReg1;
            // Successor 2
            SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg2 <= SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_toReg2;
            // Successor 3
            SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg3 <= SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed0 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_add53_add2_out_stall_out) & SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireValid) | SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg0;
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_backStall) & SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireValid) | SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg1;
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed2 = (~ (i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_out_stall_out) & SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireValid) | SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg2;
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed3 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_add66_add6_out_stall_out) & SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireValid) | SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg3;
    // Consuming
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_StallValid = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_backStall & SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireValid;
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_toReg0 = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_StallValid & SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed0;
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_toReg1 = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_StallValid & SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed1;
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_toReg2 = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_StallValid & SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed2;
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_toReg3 = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_StallValid & SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_or0 = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed0;
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_or1 = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed1 & SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_or0;
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_or2 = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed2 & SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_or1;
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireStall = ~ (SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_consumed3 & SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_or2);
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_backStall = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_V0 = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireValid & ~ (SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg0);
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_V1 = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireValid & ~ (SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg1);
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_V2 = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireValid & ~ (SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg2);
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_V3 = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireValid & ~ (SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_wireValid = redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_valid_out;

    // redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo(STALLFIFO,56)
    assign redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_valid_in = SE_out_add_B7_merge_reg_aunroll_x_V1;
    assign redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_stall_in = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_backStall;
    assign redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_data_in = bubble_select_add_B7_merge_reg_aunroll_x_b;
    assign redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_valid_in_bitsignaltemp = redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_valid_in[0];
    assign redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_stall_in_bitsignaltemp = redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_stall_in[0];
    assign redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_valid_out[0] = redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_valid_out_bitsignaltemp;
    assign redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_stall_out[0] = redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(52),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo (
        .valid_in(redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_add_B7_merge_reg_aunroll_x_b),
        .valid_out(redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,86)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = add_B7_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,65)
    assign bubble_join_stall_entry_q = {in_i_0443, in_forked};

    // bubble_select_stall_entry(BITSELECT,66)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);

    // add_B7_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_B7_merge_reg theadd_B7_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_add_B7_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(add_B7_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(add_B7_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_stall_out(add_B7_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(add_B7_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_add_B7_merge_reg_aunroll_x(STALLENABLE,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_add_B7_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_add_B7_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_add_B7_merge_reg_aunroll_x_fromReg0 <= SE_out_add_B7_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_add_B7_merge_reg_aunroll_x_fromReg1 <= SE_out_add_B7_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_add_B7_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_o_stall) & SE_out_add_B7_merge_reg_aunroll_x_wireValid) | SE_out_add_B7_merge_reg_aunroll_x_fromReg0;
    assign SE_out_add_B7_merge_reg_aunroll_x_consumed1 = (~ (redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_stall_out) & SE_out_add_B7_merge_reg_aunroll_x_wireValid) | SE_out_add_B7_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_add_B7_merge_reg_aunroll_x_StallValid = SE_out_add_B7_merge_reg_aunroll_x_backStall & SE_out_add_B7_merge_reg_aunroll_x_wireValid;
    assign SE_out_add_B7_merge_reg_aunroll_x_toReg0 = SE_out_add_B7_merge_reg_aunroll_x_StallValid & SE_out_add_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_add_B7_merge_reg_aunroll_x_toReg1 = SE_out_add_B7_merge_reg_aunroll_x_StallValid & SE_out_add_B7_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_add_B7_merge_reg_aunroll_x_or0 = SE_out_add_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_add_B7_merge_reg_aunroll_x_wireStall = ~ (SE_out_add_B7_merge_reg_aunroll_x_consumed1 & SE_out_add_B7_merge_reg_aunroll_x_or0);
    assign SE_out_add_B7_merge_reg_aunroll_x_backStall = SE_out_add_B7_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_add_B7_merge_reg_aunroll_x_V0 = SE_out_add_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B7_merge_reg_aunroll_x_fromReg0);
    assign SE_out_add_B7_merge_reg_aunroll_x_V1 = SE_out_add_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_add_B7_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_add_B7_merge_reg_aunroll_x_wireValid = add_B7_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5(STALLENABLE,85)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_V0 = SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_and0 = i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_and1 = i_llvm_fpga_ffwd_source_i32_unnamed_add66_add6_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_and2 = i_llvm_fpga_ffwd_source_i32_unnamed_add53_add2_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_and3 = i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_and2;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_wireValid = SE_out_redist0_add_B7_merge_reg_aunroll_x_out_data_out_0_tpl_51_fifo_V1 & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_and3;

    // bubble_join_add_B7_merge_reg_aunroll_x(BITJOIN,58)
    assign bubble_join_add_B7_merge_reg_aunroll_x_q = {add_B7_merge_reg_aunroll_x_out_data_out_1_tpl, add_B7_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_add_B7_merge_reg_aunroll_x(BITSELECT,59)
    assign bubble_select_add_B7_merge_reg_aunroll_x_b = $unsigned(bubble_join_add_B7_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_add_B7_merge_reg_aunroll_x_c = $unsigned(bubble_join_add_B7_merge_reg_aunroll_x_q[32:32]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x(BLACKBOX,15)@1
    // in in_i_stall@20000000
    // out out_c0_exit156_0_tpl@52
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_intel_reserved_ffwd_34_0@20000000
    // out out_intel_reserved_ffwd_35_0@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_intel_reserved_ffwd_38_0@20000000
    // out out_intel_reserved_ffwd_39_0@20000000
    // out out_intel_reserved_ffwd_40_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@52
    add_i_sfc_s_c0_in_for_cond25_preheader_s_c0_enter1533_add4 thei_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x (
        .in_c0_eni2152_0_tpl(GND_q),
        .in_c0_eni2152_1_tpl(bubble_select_add_B7_merge_reg_aunroll_x_c),
        .in_c0_eni2152_2_tpl(bubble_select_add_B7_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_backStall),
        .in_i_valid(SE_out_add_B7_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .out_c0_exit156_0_tpl(),
        .out_intel_reserved_ffwd_33_0(i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_37_0(i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_40_0),
        .out_o_stall(i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,4)
    assign out_intel_reserved_ffwd_33_0 = i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_33_0;

    // dupName_0_sync_out_x(GPOUT,5)@52
    assign out_inc35 = bgTrunc_i_inc35_add1_sel_x_b;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_V0;

    // dupName_1_regfree_osync_x(GPOUT,6)
    assign out_intel_reserved_ffwd_34_0 = i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_34_0;

    // dupName_2_regfree_osync_x(GPOUT,7)
    assign out_intel_reserved_ffwd_35_0 = i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_35_0;

    // dupName_3_regfree_osync_x(GPOUT,8)
    assign out_intel_reserved_ffwd_36_0 = i_llvm_fpga_ffwd_source_i64_unnamed_add65_add5_out_intel_reserved_ffwd_36_0;

    // dupName_4_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_37_0 = i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_37_0;

    // dupName_5_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_38_0 = i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_38_0;

    // dupName_6_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_39_0 = i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_39_0;

    // dupName_7_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_40_0 = i_sfc_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add4_aunroll_x_out_intel_reserved_ffwd_40_0;

    // dupName_8_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_41_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add66_add6_out_intel_reserved_ffwd_41_0;

    // regfree_osync(GPOUT,47)
    assign out_intel_reserved_ffwd_32_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add53_add2_out_intel_reserved_ffwd_32_0;

    // sync_out(GPOUT,51)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
