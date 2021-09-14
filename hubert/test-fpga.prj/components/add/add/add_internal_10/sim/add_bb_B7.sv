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

// SystemVerilog created from add_bb_B7
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_bb_B7 (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i_0443_0,
    input wire [31:0] in_i_0443_1,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_44_0,
    input wire [31:0] in_intel_reserved_ffwd_45_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_inc35,
    output wire [31:0] out_intel_reserved_ffwd_32_0,
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    output wire [31:0] out_intel_reserved_ffwd_34_0,
    output wire [0:0] out_intel_reserved_ffwd_35_0,
    output wire [63:0] out_intel_reserved_ffwd_36_0,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [63:0] out_intel_reserved_ffwd_38_0,
    output wire [0:0] out_intel_reserved_ffwd_39_0,
    output wire [0:0] out_intel_reserved_ffwd_40_0,
    output wire [31:0] out_intel_reserved_ffwd_41_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] add_B7_branch_out_inc35;
    wire [0:0] add_B7_branch_out_stall_out;
    wire [0:0] add_B7_branch_out_valid_out_0;
    wire [0:0] add_B7_merge_out_forked;
    wire [31:0] add_B7_merge_out_i_0443;
    wire [0:0] add_B7_merge_out_stall_out_0;
    wire [0:0] add_B7_merge_out_stall_out_1;
    wire [0:0] add_B7_merge_out_valid_out;
    wire [31:0] bb_add_B7_stall_region_out_inc35;
    wire [31:0] bb_add_B7_stall_region_out_intel_reserved_ffwd_32_0;
    wire [31:0] bb_add_B7_stall_region_out_intel_reserved_ffwd_33_0;
    wire [31:0] bb_add_B7_stall_region_out_intel_reserved_ffwd_34_0;
    wire [0:0] bb_add_B7_stall_region_out_intel_reserved_ffwd_35_0;
    wire [63:0] bb_add_B7_stall_region_out_intel_reserved_ffwd_36_0;
    wire [31:0] bb_add_B7_stall_region_out_intel_reserved_ffwd_37_0;
    wire [63:0] bb_add_B7_stall_region_out_intel_reserved_ffwd_38_0;
    wire [0:0] bb_add_B7_stall_region_out_intel_reserved_ffwd_39_0;
    wire [0:0] bb_add_B7_stall_region_out_intel_reserved_ffwd_40_0;
    wire [31:0] bb_add_B7_stall_region_out_intel_reserved_ffwd_41_0;
    wire [0:0] bb_add_B7_stall_region_out_stall_out;
    wire [0:0] bb_add_B7_stall_region_out_valid_out;


    // add_B7_merge(BLACKBOX,3)
    add_B7_merge theadd_B7_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_i_0443_0(in_i_0443_0),
        .in_i_0443_1(in_i_0443_1),
        .in_stall_in(bb_add_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(add_B7_merge_out_forked),
        .out_i_0443(add_B7_merge_out_i_0443),
        .out_stall_out_0(add_B7_merge_out_stall_out_0),
        .out_stall_out_1(add_B7_merge_out_stall_out_1),
        .out_valid_out(add_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B7_stall_region(BLACKBOX,4)
    add_bb_B7_stall_region thebb_add_B7_stall_region (
        .in_forked(add_B7_merge_out_forked),
        .in_i_0443(add_B7_merge_out_i_0443),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(add_B7_branch_out_stall_out),
        .in_valid_in(add_B7_merge_out_valid_out),
        .out_inc35(bb_add_B7_stall_region_out_inc35),
        .out_intel_reserved_ffwd_32_0(bb_add_B7_stall_region_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_add_B7_stall_region_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_add_B7_stall_region_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_add_B7_stall_region_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_add_B7_stall_region_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_add_B7_stall_region_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_add_B7_stall_region_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_add_B7_stall_region_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(bb_add_B7_stall_region_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_add_B7_stall_region_out_intel_reserved_ffwd_41_0),
        .out_stall_out(bb_add_B7_stall_region_out_stall_out),
        .out_valid_out(bb_add_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // add_B7_branch(BLACKBOX,2)
    add_B7_branch theadd_B7_branch (
        .in_inc35(bb_add_B7_stall_region_out_inc35),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_add_B7_stall_region_out_valid_out),
        .out_inc35(add_B7_branch_out_inc35),
        .out_stall_out(add_B7_branch_out_stall_out),
        .out_valid_out_0(add_B7_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_inc35(GPOUT,20)
    assign out_inc35 = add_B7_branch_out_inc35;

    // out_intel_reserved_ffwd_32_0(GPOUT,21)
    assign out_intel_reserved_ffwd_32_0 = bb_add_B7_stall_region_out_intel_reserved_ffwd_32_0;

    // out_intel_reserved_ffwd_33_0(GPOUT,22)
    assign out_intel_reserved_ffwd_33_0 = bb_add_B7_stall_region_out_intel_reserved_ffwd_33_0;

    // out_intel_reserved_ffwd_34_0(GPOUT,23)
    assign out_intel_reserved_ffwd_34_0 = bb_add_B7_stall_region_out_intel_reserved_ffwd_34_0;

    // out_intel_reserved_ffwd_35_0(GPOUT,24)
    assign out_intel_reserved_ffwd_35_0 = bb_add_B7_stall_region_out_intel_reserved_ffwd_35_0;

    // out_intel_reserved_ffwd_36_0(GPOUT,25)
    assign out_intel_reserved_ffwd_36_0 = bb_add_B7_stall_region_out_intel_reserved_ffwd_36_0;

    // out_intel_reserved_ffwd_37_0(GPOUT,26)
    assign out_intel_reserved_ffwd_37_0 = bb_add_B7_stall_region_out_intel_reserved_ffwd_37_0;

    // out_intel_reserved_ffwd_38_0(GPOUT,27)
    assign out_intel_reserved_ffwd_38_0 = bb_add_B7_stall_region_out_intel_reserved_ffwd_38_0;

    // out_intel_reserved_ffwd_39_0(GPOUT,28)
    assign out_intel_reserved_ffwd_39_0 = bb_add_B7_stall_region_out_intel_reserved_ffwd_39_0;

    // out_intel_reserved_ffwd_40_0(GPOUT,29)
    assign out_intel_reserved_ffwd_40_0 = bb_add_B7_stall_region_out_intel_reserved_ffwd_40_0;

    // out_intel_reserved_ffwd_41_0(GPOUT,30)
    assign out_intel_reserved_ffwd_41_0 = bb_add_B7_stall_region_out_intel_reserved_ffwd_41_0;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = add_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = add_B7_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,33)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,34)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = add_B7_branch_out_valid_out_0;

endmodule
