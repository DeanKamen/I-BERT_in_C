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

// SystemVerilog created from add_bb_B1_start
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_bb_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_flush,
    input wire [191:0] in_iord_bl_call_add_i_fifodata,
    input wire [0:0] in_iord_bl_call_add_i_fifovalid,
    input wire [63:0] in_lm1_add_avm_readdata,
    input wire [0:0] in_lm1_add_avm_readdatavalid,
    input wire [0:0] in_lm1_add_avm_waitrequest,
    input wire [0:0] in_lm1_add_avm_writeack,
    input wire [63:0] in_lm722_add_avm_readdata,
    input wire [0:0] in_lm722_add_avm_readdatavalid,
    input wire [0:0] in_lm722_add_avm_waitrequest,
    input wire [0:0] in_lm722_add_avm_writeack,
    input wire [63:0] in_lm743_add_avm_readdata,
    input wire [0:0] in_lm743_add_avm_readdatavalid,
    input wire [0:0] in_lm743_add_avm_waitrequest,
    input wire [0:0] in_lm743_add_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unmaskedload_lm4_add_avm_readdata,
    input wire [0:0] in_unmaskedload_lm4_add_avm_readdatavalid,
    input wire [0:0] in_unmaskedload_lm4_add_avm_waitrequest,
    input wire [0:0] in_unmaskedload_lm4_add_avm_writeack,
    input wire [63:0] in_unnamed_add2_add_avm_readdata,
    input wire [0:0] in_unnamed_add2_add_avm_readdatavalid,
    input wire [0:0] in_unnamed_add2_add_avm_waitrequest,
    input wire [0:0] in_unnamed_add2_add_avm_writeack,
    input wire [63:0] in_unnamed_add3_add_avm_readdata,
    input wire [0:0] in_unnamed_add3_add_avm_readdatavalid,
    input wire [0:0] in_unnamed_add3_add_avm_waitrequest,
    input wire [0:0] in_unnamed_add3_add_avm_writeack,
    input wire [63:0] in_unnamed_add4_add_avm_readdata,
    input wire [0:0] in_unnamed_add4_add_avm_readdatavalid,
    input wire [0:0] in_unnamed_add4_add_avm_waitrequest,
    input wire [0:0] in_unnamed_add4_add_avm_writeack,
    input wire [63:0] in_unnamed_add5_add_avm_readdata,
    input wire [0:0] in_unnamed_add5_add_avm_readdatavalid,
    input wire [0:0] in_unnamed_add5_add_avm_waitrequest,
    input wire [0:0] in_unnamed_add5_add_avm_writeack,
    input wire [63:0] in_unnamed_add6_add_avm_readdata,
    input wire [0:0] in_unnamed_add6_add_avm_readdatavalid,
    input wire [0:0] in_unnamed_add6_add_avm_waitrequest,
    input wire [0:0] in_unnamed_add6_add_avm_writeack,
    input wire [63:0] in_unnamed_add7_add_avm_readdata,
    input wire [0:0] in_unnamed_add7_add_avm_readdatavalid,
    input wire [0:0] in_unnamed_add7_add_avm_waitrequest,
    input wire [0:0] in_unnamed_add7_add_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    output wire [63:0] out_intel_reserved_ffwd_10_0,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    output wire [0:0] out_intel_reserved_ffwd_13_0,
    output wire [0:0] out_intel_reserved_ffwd_14_0,
    output wire [0:0] out_intel_reserved_ffwd_15_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    output wire [31:0] out_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_18_0,
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
    output wire [0:0] out_iord_bl_call_add_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_add_o_fifoready,
    output wire [63:0] out_lm1_add_avm_address,
    output wire [0:0] out_lm1_add_avm_burstcount,
    output wire [7:0] out_lm1_add_avm_byteenable,
    output wire [0:0] out_lm1_add_avm_enable,
    output wire [0:0] out_lm1_add_avm_read,
    output wire [0:0] out_lm1_add_avm_write,
    output wire [63:0] out_lm1_add_avm_writedata,
    output wire [63:0] out_lm722_add_avm_address,
    output wire [0:0] out_lm722_add_avm_burstcount,
    output wire [7:0] out_lm722_add_avm_byteenable,
    output wire [0:0] out_lm722_add_avm_enable,
    output wire [0:0] out_lm722_add_avm_read,
    output wire [0:0] out_lm722_add_avm_write,
    output wire [63:0] out_lm722_add_avm_writedata,
    output wire [63:0] out_lm743_add_avm_address,
    output wire [0:0] out_lm743_add_avm_burstcount,
    output wire [7:0] out_lm743_add_avm_byteenable,
    output wire [0:0] out_lm743_add_avm_enable,
    output wire [0:0] out_lm743_add_avm_read,
    output wire [0:0] out_lm743_add_avm_write,
    output wire [63:0] out_lm743_add_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unmaskedload_lm4_add_avm_address,
    output wire [0:0] out_unmaskedload_lm4_add_avm_burstcount,
    output wire [7:0] out_unmaskedload_lm4_add_avm_byteenable,
    output wire [0:0] out_unmaskedload_lm4_add_avm_enable,
    output wire [0:0] out_unmaskedload_lm4_add_avm_read,
    output wire [0:0] out_unmaskedload_lm4_add_avm_write,
    output wire [63:0] out_unmaskedload_lm4_add_avm_writedata,
    output wire [63:0] out_unnamed_add2_add_avm_address,
    output wire [0:0] out_unnamed_add2_add_avm_burstcount,
    output wire [7:0] out_unnamed_add2_add_avm_byteenable,
    output wire [0:0] out_unnamed_add2_add_avm_enable,
    output wire [0:0] out_unnamed_add2_add_avm_read,
    output wire [0:0] out_unnamed_add2_add_avm_write,
    output wire [63:0] out_unnamed_add2_add_avm_writedata,
    output wire [63:0] out_unnamed_add3_add_avm_address,
    output wire [0:0] out_unnamed_add3_add_avm_burstcount,
    output wire [7:0] out_unnamed_add3_add_avm_byteenable,
    output wire [0:0] out_unnamed_add3_add_avm_enable,
    output wire [0:0] out_unnamed_add3_add_avm_read,
    output wire [0:0] out_unnamed_add3_add_avm_write,
    output wire [63:0] out_unnamed_add3_add_avm_writedata,
    output wire [63:0] out_unnamed_add4_add_avm_address,
    output wire [0:0] out_unnamed_add4_add_avm_burstcount,
    output wire [7:0] out_unnamed_add4_add_avm_byteenable,
    output wire [0:0] out_unnamed_add4_add_avm_enable,
    output wire [0:0] out_unnamed_add4_add_avm_read,
    output wire [0:0] out_unnamed_add4_add_avm_write,
    output wire [63:0] out_unnamed_add4_add_avm_writedata,
    output wire [63:0] out_unnamed_add5_add_avm_address,
    output wire [0:0] out_unnamed_add5_add_avm_burstcount,
    output wire [7:0] out_unnamed_add5_add_avm_byteenable,
    output wire [0:0] out_unnamed_add5_add_avm_enable,
    output wire [0:0] out_unnamed_add5_add_avm_read,
    output wire [0:0] out_unnamed_add5_add_avm_write,
    output wire [63:0] out_unnamed_add5_add_avm_writedata,
    output wire [63:0] out_unnamed_add6_add_avm_address,
    output wire [0:0] out_unnamed_add6_add_avm_burstcount,
    output wire [7:0] out_unnamed_add6_add_avm_byteenable,
    output wire [0:0] out_unnamed_add6_add_avm_enable,
    output wire [0:0] out_unnamed_add6_add_avm_read,
    output wire [0:0] out_unnamed_add6_add_avm_write,
    output wire [63:0] out_unnamed_add6_add_avm_writedata,
    output wire [63:0] out_unnamed_add7_add_avm_address,
    output wire [0:0] out_unnamed_add7_add_avm_burstcount,
    output wire [7:0] out_unnamed_add7_add_avm_byteenable,
    output wire [0:0] out_unnamed_add7_add_avm_enable,
    output wire [0:0] out_unnamed_add7_add_avm_read,
    output wire [0:0] out_unnamed_add7_add_avm_write,
    output wire [63:0] out_unnamed_add7_add_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] add_B1_start_branch_out_stall_out;
    wire [0:0] add_B1_start_branch_out_valid_out_0;
    wire [0:0] add_B1_start_branch_out_valid_out_1;
    wire [0:0] add_B1_start_merge_out_stall_out_0;
    wire [0:0] add_B1_start_merge_out_stall_out_1;
    wire [0:0] add_B1_start_merge_out_valid_out;
    wire [0:0] bb_add_B1_start_stall_region_out_feedback_stall_out_1;
    wire [63:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_10_0;
    wire [31:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_11_0;
    wire [31:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_12_0;
    wire [0:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_13_0;
    wire [0:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_14_0;
    wire [0:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_15_0;
    wire [31:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_16_0;
    wire [31:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_17_0;
    wire [31:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_18_0;
    wire [31:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_19_0;
    wire [63:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_5_0;
    wire [63:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_7_0;
    wire [0:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_8_0;
    wire [63:0] bb_add_B1_start_stall_region_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_add_B1_start_stall_region_out_iord_bl_call_add_o_fifoalmost_full;
    wire [0:0] bb_add_B1_start_stall_region_out_iord_bl_call_add_o_fifoready;
    wire [63:0] bb_add_B1_start_stall_region_out_lm1_add_avm_address;
    wire [0:0] bb_add_B1_start_stall_region_out_lm1_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_stall_region_out_lm1_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_stall_region_out_lm1_add_avm_enable;
    wire [0:0] bb_add_B1_start_stall_region_out_lm1_add_avm_read;
    wire [0:0] bb_add_B1_start_stall_region_out_lm1_add_avm_write;
    wire [63:0] bb_add_B1_start_stall_region_out_lm1_add_avm_writedata;
    wire [63:0] bb_add_B1_start_stall_region_out_lm722_add_avm_address;
    wire [0:0] bb_add_B1_start_stall_region_out_lm722_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_stall_region_out_lm722_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_stall_region_out_lm722_add_avm_enable;
    wire [0:0] bb_add_B1_start_stall_region_out_lm722_add_avm_read;
    wire [0:0] bb_add_B1_start_stall_region_out_lm722_add_avm_write;
    wire [63:0] bb_add_B1_start_stall_region_out_lm722_add_avm_writedata;
    wire [63:0] bb_add_B1_start_stall_region_out_lm743_add_avm_address;
    wire [0:0] bb_add_B1_start_stall_region_out_lm743_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_stall_region_out_lm743_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_stall_region_out_lm743_add_avm_enable;
    wire [0:0] bb_add_B1_start_stall_region_out_lm743_add_avm_read;
    wire [0:0] bb_add_B1_start_stall_region_out_lm743_add_avm_write;
    wire [63:0] bb_add_B1_start_stall_region_out_lm743_add_avm_writedata;
    wire [0:0] bb_add_B1_start_stall_region_out_stall_out;
    wire [63:0] bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_address;
    wire [0:0] bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_enable;
    wire [0:0] bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_read;
    wire [0:0] bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_write;
    wire [63:0] bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_writedata;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add0;
    wire [63:0] bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_address;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_enable;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_read;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_write;
    wire [63:0] bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_writedata;
    wire [63:0] bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_address;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_enable;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_read;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_write;
    wire [63:0] bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_writedata;
    wire [63:0] bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_address;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_enable;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_read;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_write;
    wire [63:0] bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_writedata;
    wire [63:0] bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_address;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_enable;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_read;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_write;
    wire [63:0] bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_writedata;
    wire [63:0] bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_address;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_enable;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_read;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_write;
    wire [63:0] bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_writedata;
    wire [63:0] bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_address;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_enable;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_read;
    wire [0:0] bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_write;
    wire [63:0] bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_writedata;
    wire [0:0] bb_add_B1_start_stall_region_out_valid_out;


    // add_B1_start_merge(BLACKBOX,3)
    add_B1_start_merge theadd_B1_start_merge (
        .in_stall_in(bb_add_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(add_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(add_B1_start_merge_out_stall_out_1),
        .out_valid_out(add_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // add_B1_start_branch(BLACKBOX,2)
    add_B1_start_branch theadd_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_add0(bb_add_B1_start_stall_region_out_unnamed_add0),
        .in_valid_in(bb_add_B1_start_stall_region_out_valid_out),
        .out_stall_out(add_B1_start_branch_out_stall_out),
        .out_valid_out_0(add_B1_start_branch_out_valid_out_0),
        .out_valid_out_1(add_B1_start_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B1_start_stall_region(BLACKBOX,4)
    add_bb_B1_start_stall_region thebb_add_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_flush(in_flush),
        .in_iord_bl_call_add_i_fifodata(in_iord_bl_call_add_i_fifodata),
        .in_iord_bl_call_add_i_fifovalid(in_iord_bl_call_add_i_fifovalid),
        .in_lm1_add_avm_readdata(in_lm1_add_avm_readdata),
        .in_lm1_add_avm_readdatavalid(in_lm1_add_avm_readdatavalid),
        .in_lm1_add_avm_waitrequest(in_lm1_add_avm_waitrequest),
        .in_lm1_add_avm_writeack(in_lm1_add_avm_writeack),
        .in_lm722_add_avm_readdata(in_lm722_add_avm_readdata),
        .in_lm722_add_avm_readdatavalid(in_lm722_add_avm_readdatavalid),
        .in_lm722_add_avm_waitrequest(in_lm722_add_avm_waitrequest),
        .in_lm722_add_avm_writeack(in_lm722_add_avm_writeack),
        .in_lm743_add_avm_readdata(in_lm743_add_avm_readdata),
        .in_lm743_add_avm_readdatavalid(in_lm743_add_avm_readdatavalid),
        .in_lm743_add_avm_waitrequest(in_lm743_add_avm_waitrequest),
        .in_lm743_add_avm_writeack(in_lm743_add_avm_writeack),
        .in_stall_in(add_B1_start_branch_out_stall_out),
        .in_unmaskedload_lm4_add_avm_readdata(in_unmaskedload_lm4_add_avm_readdata),
        .in_unmaskedload_lm4_add_avm_readdatavalid(in_unmaskedload_lm4_add_avm_readdatavalid),
        .in_unmaskedload_lm4_add_avm_waitrequest(in_unmaskedload_lm4_add_avm_waitrequest),
        .in_unmaskedload_lm4_add_avm_writeack(in_unmaskedload_lm4_add_avm_writeack),
        .in_unnamed_add2_add_avm_readdata(in_unnamed_add2_add_avm_readdata),
        .in_unnamed_add2_add_avm_readdatavalid(in_unnamed_add2_add_avm_readdatavalid),
        .in_unnamed_add2_add_avm_waitrequest(in_unnamed_add2_add_avm_waitrequest),
        .in_unnamed_add2_add_avm_writeack(in_unnamed_add2_add_avm_writeack),
        .in_unnamed_add3_add_avm_readdata(in_unnamed_add3_add_avm_readdata),
        .in_unnamed_add3_add_avm_readdatavalid(in_unnamed_add3_add_avm_readdatavalid),
        .in_unnamed_add3_add_avm_waitrequest(in_unnamed_add3_add_avm_waitrequest),
        .in_unnamed_add3_add_avm_writeack(in_unnamed_add3_add_avm_writeack),
        .in_unnamed_add4_add_avm_readdata(in_unnamed_add4_add_avm_readdata),
        .in_unnamed_add4_add_avm_readdatavalid(in_unnamed_add4_add_avm_readdatavalid),
        .in_unnamed_add4_add_avm_waitrequest(in_unnamed_add4_add_avm_waitrequest),
        .in_unnamed_add4_add_avm_writeack(in_unnamed_add4_add_avm_writeack),
        .in_unnamed_add5_add_avm_readdata(in_unnamed_add5_add_avm_readdata),
        .in_unnamed_add5_add_avm_readdatavalid(in_unnamed_add5_add_avm_readdatavalid),
        .in_unnamed_add5_add_avm_waitrequest(in_unnamed_add5_add_avm_waitrequest),
        .in_unnamed_add5_add_avm_writeack(in_unnamed_add5_add_avm_writeack),
        .in_unnamed_add6_add_avm_readdata(in_unnamed_add6_add_avm_readdata),
        .in_unnamed_add6_add_avm_readdatavalid(in_unnamed_add6_add_avm_readdatavalid),
        .in_unnamed_add6_add_avm_waitrequest(in_unnamed_add6_add_avm_waitrequest),
        .in_unnamed_add6_add_avm_writeack(in_unnamed_add6_add_avm_writeack),
        .in_unnamed_add7_add_avm_readdata(in_unnamed_add7_add_avm_readdata),
        .in_unnamed_add7_add_avm_readdatavalid(in_unnamed_add7_add_avm_readdatavalid),
        .in_unnamed_add7_add_avm_waitrequest(in_unnamed_add7_add_avm_waitrequest),
        .in_unnamed_add7_add_avm_writeack(in_unnamed_add7_add_avm_writeack),
        .in_valid_in(add_B1_start_merge_out_valid_out),
        .out_feedback_stall_out_1(bb_add_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_1_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_add_B1_start_stall_region_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_call_add_o_fifoalmost_full(bb_add_B1_start_stall_region_out_iord_bl_call_add_o_fifoalmost_full),
        .out_iord_bl_call_add_o_fifoready(bb_add_B1_start_stall_region_out_iord_bl_call_add_o_fifoready),
        .out_lm1_add_avm_address(bb_add_B1_start_stall_region_out_lm1_add_avm_address),
        .out_lm1_add_avm_burstcount(bb_add_B1_start_stall_region_out_lm1_add_avm_burstcount),
        .out_lm1_add_avm_byteenable(bb_add_B1_start_stall_region_out_lm1_add_avm_byteenable),
        .out_lm1_add_avm_enable(bb_add_B1_start_stall_region_out_lm1_add_avm_enable),
        .out_lm1_add_avm_read(bb_add_B1_start_stall_region_out_lm1_add_avm_read),
        .out_lm1_add_avm_write(bb_add_B1_start_stall_region_out_lm1_add_avm_write),
        .out_lm1_add_avm_writedata(bb_add_B1_start_stall_region_out_lm1_add_avm_writedata),
        .out_lm722_add_avm_address(bb_add_B1_start_stall_region_out_lm722_add_avm_address),
        .out_lm722_add_avm_burstcount(bb_add_B1_start_stall_region_out_lm722_add_avm_burstcount),
        .out_lm722_add_avm_byteenable(bb_add_B1_start_stall_region_out_lm722_add_avm_byteenable),
        .out_lm722_add_avm_enable(bb_add_B1_start_stall_region_out_lm722_add_avm_enable),
        .out_lm722_add_avm_read(bb_add_B1_start_stall_region_out_lm722_add_avm_read),
        .out_lm722_add_avm_write(bb_add_B1_start_stall_region_out_lm722_add_avm_write),
        .out_lm722_add_avm_writedata(bb_add_B1_start_stall_region_out_lm722_add_avm_writedata),
        .out_lm743_add_avm_address(bb_add_B1_start_stall_region_out_lm743_add_avm_address),
        .out_lm743_add_avm_burstcount(bb_add_B1_start_stall_region_out_lm743_add_avm_burstcount),
        .out_lm743_add_avm_byteenable(bb_add_B1_start_stall_region_out_lm743_add_avm_byteenable),
        .out_lm743_add_avm_enable(bb_add_B1_start_stall_region_out_lm743_add_avm_enable),
        .out_lm743_add_avm_read(bb_add_B1_start_stall_region_out_lm743_add_avm_read),
        .out_lm743_add_avm_write(bb_add_B1_start_stall_region_out_lm743_add_avm_write),
        .out_lm743_add_avm_writedata(bb_add_B1_start_stall_region_out_lm743_add_avm_writedata),
        .out_stall_out(bb_add_B1_start_stall_region_out_stall_out),
        .out_unmaskedload_lm4_add_avm_address(bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_address),
        .out_unmaskedload_lm4_add_avm_burstcount(bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_burstcount),
        .out_unmaskedload_lm4_add_avm_byteenable(bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_byteenable),
        .out_unmaskedload_lm4_add_avm_enable(bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_enable),
        .out_unmaskedload_lm4_add_avm_read(bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_read),
        .out_unmaskedload_lm4_add_avm_write(bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_write),
        .out_unmaskedload_lm4_add_avm_writedata(bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_writedata),
        .out_unnamed_add0(bb_add_B1_start_stall_region_out_unnamed_add0),
        .out_unnamed_add2_add_avm_address(bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_address),
        .out_unnamed_add2_add_avm_burstcount(bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_burstcount),
        .out_unnamed_add2_add_avm_byteenable(bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_byteenable),
        .out_unnamed_add2_add_avm_enable(bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_enable),
        .out_unnamed_add2_add_avm_read(bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_read),
        .out_unnamed_add2_add_avm_write(bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_write),
        .out_unnamed_add2_add_avm_writedata(bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_writedata),
        .out_unnamed_add3_add_avm_address(bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_address),
        .out_unnamed_add3_add_avm_burstcount(bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_burstcount),
        .out_unnamed_add3_add_avm_byteenable(bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_byteenable),
        .out_unnamed_add3_add_avm_enable(bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_enable),
        .out_unnamed_add3_add_avm_read(bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_read),
        .out_unnamed_add3_add_avm_write(bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_write),
        .out_unnamed_add3_add_avm_writedata(bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_writedata),
        .out_unnamed_add4_add_avm_address(bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_address),
        .out_unnamed_add4_add_avm_burstcount(bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_burstcount),
        .out_unnamed_add4_add_avm_byteenable(bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_byteenable),
        .out_unnamed_add4_add_avm_enable(bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_enable),
        .out_unnamed_add4_add_avm_read(bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_read),
        .out_unnamed_add4_add_avm_write(bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_write),
        .out_unnamed_add4_add_avm_writedata(bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_writedata),
        .out_unnamed_add5_add_avm_address(bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_address),
        .out_unnamed_add5_add_avm_burstcount(bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_burstcount),
        .out_unnamed_add5_add_avm_byteenable(bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_byteenable),
        .out_unnamed_add5_add_avm_enable(bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_enable),
        .out_unnamed_add5_add_avm_read(bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_read),
        .out_unnamed_add5_add_avm_write(bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_write),
        .out_unnamed_add5_add_avm_writedata(bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_writedata),
        .out_unnamed_add6_add_avm_address(bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_address),
        .out_unnamed_add6_add_avm_burstcount(bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_burstcount),
        .out_unnamed_add6_add_avm_byteenable(bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_byteenable),
        .out_unnamed_add6_add_avm_enable(bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_enable),
        .out_unnamed_add6_add_avm_read(bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_read),
        .out_unnamed_add6_add_avm_write(bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_write),
        .out_unnamed_add6_add_avm_writedata(bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_writedata),
        .out_unnamed_add7_add_avm_address(bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_address),
        .out_unnamed_add7_add_avm_burstcount(bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_burstcount),
        .out_unnamed_add7_add_avm_byteenable(bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_byteenable),
        .out_unnamed_add7_add_avm_enable(bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_enable),
        .out_unnamed_add7_add_avm_read(bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_read),
        .out_unnamed_add7_add_avm_write(bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_write),
        .out_unnamed_add7_add_avm_writedata(bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_writedata),
        .out_valid_out(bb_add_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,6)
    assign out_feedback_stall_out_1 = bb_add_B1_start_stall_region_out_feedback_stall_out_1;

    // out_intel_reserved_ffwd_0_0(GPOUT,55)
    assign out_intel_reserved_ffwd_0_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_10_0(GPOUT,56)
    assign out_intel_reserved_ffwd_10_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_11_0(GPOUT,57)
    assign out_intel_reserved_ffwd_11_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_11_0;

    // out_intel_reserved_ffwd_12_0(GPOUT,58)
    assign out_intel_reserved_ffwd_12_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_12_0;

    // out_intel_reserved_ffwd_13_0(GPOUT,59)
    assign out_intel_reserved_ffwd_13_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_13_0;

    // out_intel_reserved_ffwd_14_0(GPOUT,60)
    assign out_intel_reserved_ffwd_14_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_14_0;

    // out_intel_reserved_ffwd_15_0(GPOUT,61)
    assign out_intel_reserved_ffwd_15_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_15_0;

    // out_intel_reserved_ffwd_16_0(GPOUT,62)
    assign out_intel_reserved_ffwd_16_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_16_0;

    // out_intel_reserved_ffwd_17_0(GPOUT,63)
    assign out_intel_reserved_ffwd_17_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_17_0;

    // out_intel_reserved_ffwd_18_0(GPOUT,64)
    assign out_intel_reserved_ffwd_18_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_18_0;

    // out_intel_reserved_ffwd_19_0(GPOUT,65)
    assign out_intel_reserved_ffwd_19_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_19_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,66)
    assign out_intel_reserved_ffwd_1_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,67)
    assign out_intel_reserved_ffwd_2_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,68)
    assign out_intel_reserved_ffwd_3_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,69)
    assign out_intel_reserved_ffwd_4_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,70)
    assign out_intel_reserved_ffwd_5_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,71)
    assign out_intel_reserved_ffwd_6_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,72)
    assign out_intel_reserved_ffwd_7_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,73)
    assign out_intel_reserved_ffwd_8_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,74)
    assign out_intel_reserved_ffwd_9_0 = bb_add_B1_start_stall_region_out_intel_reserved_ffwd_9_0;

    // out_iord_bl_call_add_o_fifoalmost_full(GPOUT,75)
    assign out_iord_bl_call_add_o_fifoalmost_full = bb_add_B1_start_stall_region_out_iord_bl_call_add_o_fifoalmost_full;

    // out_iord_bl_call_add_o_fifoready(GPOUT,76)
    assign out_iord_bl_call_add_o_fifoready = bb_add_B1_start_stall_region_out_iord_bl_call_add_o_fifoready;

    // out_lm1_add_avm_address(GPOUT,77)
    assign out_lm1_add_avm_address = bb_add_B1_start_stall_region_out_lm1_add_avm_address;

    // out_lm1_add_avm_burstcount(GPOUT,78)
    assign out_lm1_add_avm_burstcount = bb_add_B1_start_stall_region_out_lm1_add_avm_burstcount;

    // out_lm1_add_avm_byteenable(GPOUT,79)
    assign out_lm1_add_avm_byteenable = bb_add_B1_start_stall_region_out_lm1_add_avm_byteenable;

    // out_lm1_add_avm_enable(GPOUT,80)
    assign out_lm1_add_avm_enable = bb_add_B1_start_stall_region_out_lm1_add_avm_enable;

    // out_lm1_add_avm_read(GPOUT,81)
    assign out_lm1_add_avm_read = bb_add_B1_start_stall_region_out_lm1_add_avm_read;

    // out_lm1_add_avm_write(GPOUT,82)
    assign out_lm1_add_avm_write = bb_add_B1_start_stall_region_out_lm1_add_avm_write;

    // out_lm1_add_avm_writedata(GPOUT,83)
    assign out_lm1_add_avm_writedata = bb_add_B1_start_stall_region_out_lm1_add_avm_writedata;

    // out_lm722_add_avm_address(GPOUT,84)
    assign out_lm722_add_avm_address = bb_add_B1_start_stall_region_out_lm722_add_avm_address;

    // out_lm722_add_avm_burstcount(GPOUT,85)
    assign out_lm722_add_avm_burstcount = bb_add_B1_start_stall_region_out_lm722_add_avm_burstcount;

    // out_lm722_add_avm_byteenable(GPOUT,86)
    assign out_lm722_add_avm_byteenable = bb_add_B1_start_stall_region_out_lm722_add_avm_byteenable;

    // out_lm722_add_avm_enable(GPOUT,87)
    assign out_lm722_add_avm_enable = bb_add_B1_start_stall_region_out_lm722_add_avm_enable;

    // out_lm722_add_avm_read(GPOUT,88)
    assign out_lm722_add_avm_read = bb_add_B1_start_stall_region_out_lm722_add_avm_read;

    // out_lm722_add_avm_write(GPOUT,89)
    assign out_lm722_add_avm_write = bb_add_B1_start_stall_region_out_lm722_add_avm_write;

    // out_lm722_add_avm_writedata(GPOUT,90)
    assign out_lm722_add_avm_writedata = bb_add_B1_start_stall_region_out_lm722_add_avm_writedata;

    // out_lm743_add_avm_address(GPOUT,91)
    assign out_lm743_add_avm_address = bb_add_B1_start_stall_region_out_lm743_add_avm_address;

    // out_lm743_add_avm_burstcount(GPOUT,92)
    assign out_lm743_add_avm_burstcount = bb_add_B1_start_stall_region_out_lm743_add_avm_burstcount;

    // out_lm743_add_avm_byteenable(GPOUT,93)
    assign out_lm743_add_avm_byteenable = bb_add_B1_start_stall_region_out_lm743_add_avm_byteenable;

    // out_lm743_add_avm_enable(GPOUT,94)
    assign out_lm743_add_avm_enable = bb_add_B1_start_stall_region_out_lm743_add_avm_enable;

    // out_lm743_add_avm_read(GPOUT,95)
    assign out_lm743_add_avm_read = bb_add_B1_start_stall_region_out_lm743_add_avm_read;

    // out_lm743_add_avm_write(GPOUT,96)
    assign out_lm743_add_avm_write = bb_add_B1_start_stall_region_out_lm743_add_avm_write;

    // out_lm743_add_avm_writedata(GPOUT,97)
    assign out_lm743_add_avm_writedata = bb_add_B1_start_stall_region_out_lm743_add_avm_writedata;

    // out_stall_out_0(GPOUT,98)
    assign out_stall_out_0 = add_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,99)
    assign out_stall_out_1 = add_B1_start_merge_out_stall_out_1;

    // out_unmaskedload_lm4_add_avm_address(GPOUT,100)
    assign out_unmaskedload_lm4_add_avm_address = bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_address;

    // out_unmaskedload_lm4_add_avm_burstcount(GPOUT,101)
    assign out_unmaskedload_lm4_add_avm_burstcount = bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_burstcount;

    // out_unmaskedload_lm4_add_avm_byteenable(GPOUT,102)
    assign out_unmaskedload_lm4_add_avm_byteenable = bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_byteenable;

    // out_unmaskedload_lm4_add_avm_enable(GPOUT,103)
    assign out_unmaskedload_lm4_add_avm_enable = bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_enable;

    // out_unmaskedload_lm4_add_avm_read(GPOUT,104)
    assign out_unmaskedload_lm4_add_avm_read = bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_read;

    // out_unmaskedload_lm4_add_avm_write(GPOUT,105)
    assign out_unmaskedload_lm4_add_avm_write = bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_write;

    // out_unmaskedload_lm4_add_avm_writedata(GPOUT,106)
    assign out_unmaskedload_lm4_add_avm_writedata = bb_add_B1_start_stall_region_out_unmaskedload_lm4_add_avm_writedata;

    // out_unnamed_add2_add_avm_address(GPOUT,107)
    assign out_unnamed_add2_add_avm_address = bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_address;

    // out_unnamed_add2_add_avm_burstcount(GPOUT,108)
    assign out_unnamed_add2_add_avm_burstcount = bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_burstcount;

    // out_unnamed_add2_add_avm_byteenable(GPOUT,109)
    assign out_unnamed_add2_add_avm_byteenable = bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_byteenable;

    // out_unnamed_add2_add_avm_enable(GPOUT,110)
    assign out_unnamed_add2_add_avm_enable = bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_enable;

    // out_unnamed_add2_add_avm_read(GPOUT,111)
    assign out_unnamed_add2_add_avm_read = bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_read;

    // out_unnamed_add2_add_avm_write(GPOUT,112)
    assign out_unnamed_add2_add_avm_write = bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_write;

    // out_unnamed_add2_add_avm_writedata(GPOUT,113)
    assign out_unnamed_add2_add_avm_writedata = bb_add_B1_start_stall_region_out_unnamed_add2_add_avm_writedata;

    // out_unnamed_add3_add_avm_address(GPOUT,114)
    assign out_unnamed_add3_add_avm_address = bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_address;

    // out_unnamed_add3_add_avm_burstcount(GPOUT,115)
    assign out_unnamed_add3_add_avm_burstcount = bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_burstcount;

    // out_unnamed_add3_add_avm_byteenable(GPOUT,116)
    assign out_unnamed_add3_add_avm_byteenable = bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_byteenable;

    // out_unnamed_add3_add_avm_enable(GPOUT,117)
    assign out_unnamed_add3_add_avm_enable = bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_enable;

    // out_unnamed_add3_add_avm_read(GPOUT,118)
    assign out_unnamed_add3_add_avm_read = bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_read;

    // out_unnamed_add3_add_avm_write(GPOUT,119)
    assign out_unnamed_add3_add_avm_write = bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_write;

    // out_unnamed_add3_add_avm_writedata(GPOUT,120)
    assign out_unnamed_add3_add_avm_writedata = bb_add_B1_start_stall_region_out_unnamed_add3_add_avm_writedata;

    // out_unnamed_add4_add_avm_address(GPOUT,121)
    assign out_unnamed_add4_add_avm_address = bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_address;

    // out_unnamed_add4_add_avm_burstcount(GPOUT,122)
    assign out_unnamed_add4_add_avm_burstcount = bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_burstcount;

    // out_unnamed_add4_add_avm_byteenable(GPOUT,123)
    assign out_unnamed_add4_add_avm_byteenable = bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_byteenable;

    // out_unnamed_add4_add_avm_enable(GPOUT,124)
    assign out_unnamed_add4_add_avm_enable = bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_enable;

    // out_unnamed_add4_add_avm_read(GPOUT,125)
    assign out_unnamed_add4_add_avm_read = bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_read;

    // out_unnamed_add4_add_avm_write(GPOUT,126)
    assign out_unnamed_add4_add_avm_write = bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_write;

    // out_unnamed_add4_add_avm_writedata(GPOUT,127)
    assign out_unnamed_add4_add_avm_writedata = bb_add_B1_start_stall_region_out_unnamed_add4_add_avm_writedata;

    // out_unnamed_add5_add_avm_address(GPOUT,128)
    assign out_unnamed_add5_add_avm_address = bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_address;

    // out_unnamed_add5_add_avm_burstcount(GPOUT,129)
    assign out_unnamed_add5_add_avm_burstcount = bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_burstcount;

    // out_unnamed_add5_add_avm_byteenable(GPOUT,130)
    assign out_unnamed_add5_add_avm_byteenable = bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_byteenable;

    // out_unnamed_add5_add_avm_enable(GPOUT,131)
    assign out_unnamed_add5_add_avm_enable = bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_enable;

    // out_unnamed_add5_add_avm_read(GPOUT,132)
    assign out_unnamed_add5_add_avm_read = bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_read;

    // out_unnamed_add5_add_avm_write(GPOUT,133)
    assign out_unnamed_add5_add_avm_write = bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_write;

    // out_unnamed_add5_add_avm_writedata(GPOUT,134)
    assign out_unnamed_add5_add_avm_writedata = bb_add_B1_start_stall_region_out_unnamed_add5_add_avm_writedata;

    // out_unnamed_add6_add_avm_address(GPOUT,135)
    assign out_unnamed_add6_add_avm_address = bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_address;

    // out_unnamed_add6_add_avm_burstcount(GPOUT,136)
    assign out_unnamed_add6_add_avm_burstcount = bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_burstcount;

    // out_unnamed_add6_add_avm_byteenable(GPOUT,137)
    assign out_unnamed_add6_add_avm_byteenable = bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_byteenable;

    // out_unnamed_add6_add_avm_enable(GPOUT,138)
    assign out_unnamed_add6_add_avm_enable = bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_enable;

    // out_unnamed_add6_add_avm_read(GPOUT,139)
    assign out_unnamed_add6_add_avm_read = bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_read;

    // out_unnamed_add6_add_avm_write(GPOUT,140)
    assign out_unnamed_add6_add_avm_write = bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_write;

    // out_unnamed_add6_add_avm_writedata(GPOUT,141)
    assign out_unnamed_add6_add_avm_writedata = bb_add_B1_start_stall_region_out_unnamed_add6_add_avm_writedata;

    // out_unnamed_add7_add_avm_address(GPOUT,142)
    assign out_unnamed_add7_add_avm_address = bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_address;

    // out_unnamed_add7_add_avm_burstcount(GPOUT,143)
    assign out_unnamed_add7_add_avm_burstcount = bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_burstcount;

    // out_unnamed_add7_add_avm_byteenable(GPOUT,144)
    assign out_unnamed_add7_add_avm_byteenable = bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_byteenable;

    // out_unnamed_add7_add_avm_enable(GPOUT,145)
    assign out_unnamed_add7_add_avm_enable = bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_enable;

    // out_unnamed_add7_add_avm_read(GPOUT,146)
    assign out_unnamed_add7_add_avm_read = bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_read;

    // out_unnamed_add7_add_avm_write(GPOUT,147)
    assign out_unnamed_add7_add_avm_write = bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_write;

    // out_unnamed_add7_add_avm_writedata(GPOUT,148)
    assign out_unnamed_add7_add_avm_writedata = bb_add_B1_start_stall_region_out_unnamed_add7_add_avm_writedata;

    // out_valid_in_0(GPOUT,149)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,150)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,151)
    assign out_valid_out_0 = add_B1_start_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,152)
    assign out_valid_out_1 = add_B1_start_branch_out_valid_out_1;

endmodule
