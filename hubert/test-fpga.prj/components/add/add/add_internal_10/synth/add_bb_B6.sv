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

// SystemVerilog created from add_bb_B6
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_bb_B6 (
    input wire [31:0] in_inc7_i146_push231_0,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [0:0] in_intel_reserved_ffwd_23_0,
    input wire [31:0] in_intel_reserved_ffwd_27_0,
    input wire [31:0] in_intel_reserved_ffwd_28_0,
    input wire [31:0] in_intel_reserved_ffwd_29_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_inc7_i146_push231,
    output wire [31:0] out_intel_reserved_ffwd_30_0,
    output wire [31:0] out_intel_reserved_ffwd_31_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] add_B6_branch_out_inc7_i146_push231;
    wire [0:0] add_B6_branch_out_stall_out;
    wire [0:0] add_B6_branch_out_valid_out_0;
    wire [0:0] add_B6_branch_out_valid_out_1;
    wire [31:0] add_B6_merge_out_inc7_i146_push231;
    wire [0:0] add_B6_merge_out_stall_out_0;
    wire [0:0] add_B6_merge_out_valid_out;
    wire [31:0] bb_add_B6_stall_region_out_inc7_i146_push231;
    wire [31:0] bb_add_B6_stall_region_out_intel_reserved_ffwd_30_0;
    wire [31:0] bb_add_B6_stall_region_out_intel_reserved_ffwd_31_0;
    wire [0:0] bb_add_B6_stall_region_out_stall_out;
    wire [0:0] bb_add_B6_stall_region_out_unnamed_add47;
    wire [0:0] bb_add_B6_stall_region_out_valid_out;


    // add_B6_merge(BLACKBOX,3)
    add_B6_merge theadd_B6_merge (
        .in_inc7_i146_push231_0(in_inc7_i146_push231_0),
        .in_stall_in(bb_add_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_inc7_i146_push231(add_B6_merge_out_inc7_i146_push231),
        .out_stall_out_0(add_B6_merge_out_stall_out_0),
        .out_valid_out(add_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B6_stall_region(BLACKBOX,4)
    add_bb_B6_stall_region thebb_add_B6_stall_region (
        .in_inc7_i146_push231(add_B6_merge_out_inc7_i146_push231),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(add_B6_branch_out_stall_out),
        .in_valid_in(add_B6_merge_out_valid_out),
        .out_inc7_i146_push231(bb_add_B6_stall_region_out_inc7_i146_push231),
        .out_intel_reserved_ffwd_30_0(bb_add_B6_stall_region_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_add_B6_stall_region_out_intel_reserved_ffwd_31_0),
        .out_stall_out(bb_add_B6_stall_region_out_stall_out),
        .out_unnamed_add47(bb_add_B6_stall_region_out_unnamed_add47),
        .out_valid_out(bb_add_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // add_B6_branch(BLACKBOX,2)
    add_B6_branch theadd_B6_branch (
        .in_inc7_i146_push231(bb_add_B6_stall_region_out_inc7_i146_push231),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_add47(bb_add_B6_stall_region_out_unnamed_add47),
        .in_valid_in(bb_add_B6_stall_region_out_valid_out),
        .out_inc7_i146_push231(add_B6_branch_out_inc7_i146_push231),
        .out_stall_out(add_B6_branch_out_stall_out),
        .out_valid_out_0(add_B6_branch_out_valid_out_0),
        .out_valid_out_1(add_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_inc7_i146_push231(GPOUT,17)
    assign out_inc7_i146_push231 = add_B6_branch_out_inc7_i146_push231;

    // out_intel_reserved_ffwd_30_0(GPOUT,18)
    assign out_intel_reserved_ffwd_30_0 = bb_add_B6_stall_region_out_intel_reserved_ffwd_30_0;

    // out_intel_reserved_ffwd_31_0(GPOUT,19)
    assign out_intel_reserved_ffwd_31_0 = bb_add_B6_stall_region_out_intel_reserved_ffwd_31_0;

    // out_stall_in_0(GPOUT,20)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,21)
    assign out_stall_out_0 = add_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,22)
    assign out_valid_out_0 = add_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,23)
    assign out_valid_out_1 = add_B6_branch_out_valid_out_1;

endmodule
