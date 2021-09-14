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

// SystemVerilog created from add_bb_B4
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_bb_B4 (
    input wire [0:0] in_forked46_0,
    input wire [0:0] in_forked46_1,
    input wire [31:0] in_i_i_0449_0,
    input wire [31:0] in_i_i_0449_1,
    input wire [0:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_inc7_i,
    output wire [31:0] out_intel_reserved_ffwd_20_0,
    output wire [31:0] out_intel_reserved_ffwd_21_0,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    output wire [0:0] out_intel_reserved_ffwd_23_0,
    output wire [63:0] out_intel_reserved_ffwd_24_0,
    output wire [0:0] out_intel_reserved_ffwd_25_0,
    output wire [0:0] out_intel_reserved_ffwd_26_0,
    output wire [31:0] out_intel_reserved_ffwd_27_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] add_B4_branch_out_inc7_i;
    wire [0:0] add_B4_branch_out_stall_out;
    wire [0:0] add_B4_branch_out_valid_out_0;
    wire [0:0] add_B4_merge_out_forked46;
    wire [31:0] add_B4_merge_out_i_i_0449;
    wire [0:0] add_B4_merge_out_stall_out_0;
    wire [0:0] add_B4_merge_out_stall_out_1;
    wire [0:0] add_B4_merge_out_valid_out;
    wire [31:0] bb_add_B4_stall_region_out_inc7_i;
    wire [31:0] bb_add_B4_stall_region_out_intel_reserved_ffwd_20_0;
    wire [31:0] bb_add_B4_stall_region_out_intel_reserved_ffwd_21_0;
    wire [31:0] bb_add_B4_stall_region_out_intel_reserved_ffwd_22_0;
    wire [0:0] bb_add_B4_stall_region_out_intel_reserved_ffwd_23_0;
    wire [63:0] bb_add_B4_stall_region_out_intel_reserved_ffwd_24_0;
    wire [0:0] bb_add_B4_stall_region_out_intel_reserved_ffwd_25_0;
    wire [0:0] bb_add_B4_stall_region_out_intel_reserved_ffwd_26_0;
    wire [31:0] bb_add_B4_stall_region_out_intel_reserved_ffwd_27_0;
    wire [0:0] bb_add_B4_stall_region_out_stall_out;
    wire [0:0] bb_add_B4_stall_region_out_valid_out;


    // add_B4_merge(BLACKBOX,3)
    add_B4_merge theadd_B4_merge (
        .in_forked46_0(in_forked46_0),
        .in_forked46_1(in_forked46_1),
        .in_i_i_0449_0(in_i_i_0449_0),
        .in_i_i_0449_1(in_i_i_0449_1),
        .in_stall_in(bb_add_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked46(add_B4_merge_out_forked46),
        .out_i_i_0449(add_B4_merge_out_i_i_0449),
        .out_stall_out_0(add_B4_merge_out_stall_out_0),
        .out_stall_out_1(add_B4_merge_out_stall_out_1),
        .out_valid_out(add_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B4_stall_region(BLACKBOX,4)
    add_bb_B4_stall_region thebb_add_B4_stall_region (
        .in_forked46(add_B4_merge_out_forked46),
        .in_i_i_0449(add_B4_merge_out_i_i_0449),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(add_B4_branch_out_stall_out),
        .in_valid_in(add_B4_merge_out_valid_out),
        .out_inc7_i(bb_add_B4_stall_region_out_inc7_i),
        .out_intel_reserved_ffwd_20_0(bb_add_B4_stall_region_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_add_B4_stall_region_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_add_B4_stall_region_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_add_B4_stall_region_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_add_B4_stall_region_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_add_B4_stall_region_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_add_B4_stall_region_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_add_B4_stall_region_out_intel_reserved_ffwd_27_0),
        .out_stall_out(bb_add_B4_stall_region_out_stall_out),
        .out_valid_out(bb_add_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // add_B4_branch(BLACKBOX,2)
    add_B4_branch theadd_B4_branch (
        .in_inc7_i(bb_add_B4_stall_region_out_inc7_i),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_add_B4_stall_region_out_valid_out),
        .out_inc7_i(add_B4_branch_out_inc7_i),
        .out_stall_out(add_B4_branch_out_stall_out),
        .out_valid_out_0(add_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_inc7_i(GPOUT,19)
    assign out_inc7_i = add_B4_branch_out_inc7_i;

    // out_intel_reserved_ffwd_20_0(GPOUT,20)
    assign out_intel_reserved_ffwd_20_0 = bb_add_B4_stall_region_out_intel_reserved_ffwd_20_0;

    // out_intel_reserved_ffwd_21_0(GPOUT,21)
    assign out_intel_reserved_ffwd_21_0 = bb_add_B4_stall_region_out_intel_reserved_ffwd_21_0;

    // out_intel_reserved_ffwd_22_0(GPOUT,22)
    assign out_intel_reserved_ffwd_22_0 = bb_add_B4_stall_region_out_intel_reserved_ffwd_22_0;

    // out_intel_reserved_ffwd_23_0(GPOUT,23)
    assign out_intel_reserved_ffwd_23_0 = bb_add_B4_stall_region_out_intel_reserved_ffwd_23_0;

    // out_intel_reserved_ffwd_24_0(GPOUT,24)
    assign out_intel_reserved_ffwd_24_0 = bb_add_B4_stall_region_out_intel_reserved_ffwd_24_0;

    // out_intel_reserved_ffwd_25_0(GPOUT,25)
    assign out_intel_reserved_ffwd_25_0 = bb_add_B4_stall_region_out_intel_reserved_ffwd_25_0;

    // out_intel_reserved_ffwd_26_0(GPOUT,26)
    assign out_intel_reserved_ffwd_26_0 = bb_add_B4_stall_region_out_intel_reserved_ffwd_26_0;

    // out_intel_reserved_ffwd_27_0(GPOUT,27)
    assign out_intel_reserved_ffwd_27_0 = bb_add_B4_stall_region_out_intel_reserved_ffwd_27_0;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = add_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,29)
    assign out_stall_out_1 = add_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,30)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,31)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,32)
    assign out_valid_out_0 = add_B4_branch_out_valid_out_0;

endmodule
