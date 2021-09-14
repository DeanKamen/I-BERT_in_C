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

// SystemVerilog created from add_bb_B5
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_bb_B5 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked73_0,
    input wire [0:0] in_forked73_1,
    input wire [31:0] in_inc7_i147_0,
    input wire [31:0] in_inc7_i147_1,
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
    input wire [63:0] in_lm1076_add_avm_readdata,
    input wire [0:0] in_lm1076_add_avm_readdatavalid,
    input wire [0:0] in_lm1076_add_avm_waitrequest,
    input wire [0:0] in_lm1076_add_avm_writeack,
    input wire [63:0] in_lm1097_add_avm_readdata,
    input wire [0:0] in_lm1097_add_avm_readdatavalid,
    input wire [0:0] in_lm1097_add_avm_waitrequest,
    input wire [0:0] in_lm1097_add_avm_writeack,
    input wire [63:0] in_memdep_add_avm_readdata,
    input wire [0:0] in_memdep_add_avm_readdatavalid,
    input wire [0:0] in_memdep_add_avm_waitrequest,
    input wire [0:0] in_memdep_add_avm_writeack,
    input wire [63:0] in_ml535_add_avm_readdata,
    input wire [0:0] in_ml535_add_avm_readdatavalid,
    input wire [0:0] in_ml535_add_avm_waitrequest,
    input wire [0:0] in_ml535_add_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_inc7_i146_push23,
    output wire [31:0] out_intel_reserved_ffwd_28_0,
    output wire [31:0] out_intel_reserved_ffwd_29_0,
    output wire [63:0] out_lm1076_add_avm_address,
    output wire [0:0] out_lm1076_add_avm_burstcount,
    output wire [7:0] out_lm1076_add_avm_byteenable,
    output wire [0:0] out_lm1076_add_avm_enable,
    output wire [0:0] out_lm1076_add_avm_read,
    output wire [0:0] out_lm1076_add_avm_write,
    output wire [63:0] out_lm1076_add_avm_writedata,
    output wire [63:0] out_lm1097_add_avm_address,
    output wire [0:0] out_lm1097_add_avm_burstcount,
    output wire [7:0] out_lm1097_add_avm_byteenable,
    output wire [0:0] out_lm1097_add_avm_enable,
    output wire [0:0] out_lm1097_add_avm_read,
    output wire [0:0] out_lm1097_add_avm_write,
    output wire [63:0] out_lm1097_add_avm_writedata,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [63:0] out_memdep_add_avm_address,
    output wire [0:0] out_memdep_add_avm_burstcount,
    output wire [7:0] out_memdep_add_avm_byteenable,
    output wire [0:0] out_memdep_add_avm_enable,
    output wire [0:0] out_memdep_add_avm_read,
    output wire [0:0] out_memdep_add_avm_write,
    output wire [63:0] out_memdep_add_avm_writedata,
    output wire [63:0] out_ml535_add_avm_address,
    output wire [0:0] out_ml535_add_avm_burstcount,
    output wire [7:0] out_ml535_add_avm_byteenable,
    output wire [0:0] out_ml535_add_avm_enable,
    output wire [0:0] out_ml535_add_avm_read,
    output wire [0:0] out_ml535_add_avm_write,
    output wire [63:0] out_ml535_add_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] add_B5_branch_out_inc7_i146_push23;
    wire [0:0] add_B5_branch_out_stall_out;
    wire [0:0] add_B5_branch_out_valid_out_0;
    wire [0:0] add_B5_branch_out_valid_out_1;
    wire [0:0] add_B5_merge_out_forked73;
    wire [31:0] add_B5_merge_out_inc7_i147;
    wire [0:0] add_B5_merge_out_stall_out_0;
    wire [0:0] add_B5_merge_out_stall_out_1;
    wire [0:0] add_B5_merge_out_valid_out;
    wire [0:0] bb_add_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_add30_exiting_stall_out;
    wire [0:0] bb_add_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_add30_exiting_valid_out;
    wire [31:0] bb_add_B5_stall_region_out_inc7_i146_push23;
    wire [31:0] bb_add_B5_stall_region_out_intel_reserved_ffwd_28_0;
    wire [31:0] bb_add_B5_stall_region_out_intel_reserved_ffwd_29_0;
    wire [63:0] bb_add_B5_stall_region_out_lm1076_add_avm_address;
    wire [0:0] bb_add_B5_stall_region_out_lm1076_add_avm_burstcount;
    wire [7:0] bb_add_B5_stall_region_out_lm1076_add_avm_byteenable;
    wire [0:0] bb_add_B5_stall_region_out_lm1076_add_avm_enable;
    wire [0:0] bb_add_B5_stall_region_out_lm1076_add_avm_read;
    wire [0:0] bb_add_B5_stall_region_out_lm1076_add_avm_write;
    wire [63:0] bb_add_B5_stall_region_out_lm1076_add_avm_writedata;
    wire [63:0] bb_add_B5_stall_region_out_lm1097_add_avm_address;
    wire [0:0] bb_add_B5_stall_region_out_lm1097_add_avm_burstcount;
    wire [7:0] bb_add_B5_stall_region_out_lm1097_add_avm_byteenable;
    wire [0:0] bb_add_B5_stall_region_out_lm1097_add_avm_enable;
    wire [0:0] bb_add_B5_stall_region_out_lm1097_add_avm_read;
    wire [0:0] bb_add_B5_stall_region_out_lm1097_add_avm_write;
    wire [63:0] bb_add_B5_stall_region_out_lm1097_add_avm_writedata;
    wire [0:0] bb_add_B5_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_add_B5_stall_region_out_masked;
    wire [63:0] bb_add_B5_stall_region_out_memdep_add_avm_address;
    wire [0:0] bb_add_B5_stall_region_out_memdep_add_avm_burstcount;
    wire [7:0] bb_add_B5_stall_region_out_memdep_add_avm_byteenable;
    wire [0:0] bb_add_B5_stall_region_out_memdep_add_avm_enable;
    wire [0:0] bb_add_B5_stall_region_out_memdep_add_avm_read;
    wire [0:0] bb_add_B5_stall_region_out_memdep_add_avm_write;
    wire [63:0] bb_add_B5_stall_region_out_memdep_add_avm_writedata;
    wire [63:0] bb_add_B5_stall_region_out_ml535_add_avm_address;
    wire [0:0] bb_add_B5_stall_region_out_ml535_add_avm_burstcount;
    wire [7:0] bb_add_B5_stall_region_out_ml535_add_avm_byteenable;
    wire [0:0] bb_add_B5_stall_region_out_ml535_add_avm_enable;
    wire [0:0] bb_add_B5_stall_region_out_ml535_add_avm_read;
    wire [0:0] bb_add_B5_stall_region_out_ml535_add_avm_write;
    wire [63:0] bb_add_B5_stall_region_out_ml535_add_avm_writedata;
    wire [0:0] bb_add_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_add_B5_stall_region_out_stall_out;
    wire [0:0] bb_add_B5_stall_region_out_valid_out;


    // add_B5_branch(BLACKBOX,2)
    add_B5_branch theadd_B5_branch (
        .in_inc7_i146_push23(bb_add_B5_stall_region_out_inc7_i146_push23),
        .in_masked(bb_add_B5_stall_region_out_masked),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_add_B5_stall_region_out_valid_out),
        .out_inc7_i146_push23(add_B5_branch_out_inc7_i146_push23),
        .out_stall_out(add_B5_branch_out_stall_out),
        .out_valid_out_0(add_B5_branch_out_valid_out_0),
        .out_valid_out_1(add_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // add_B5_merge(BLACKBOX,3)
    add_B5_merge theadd_B5_merge (
        .in_forked73_0(in_forked73_0),
        .in_forked73_1(in_forked73_1),
        .in_inc7_i147_0(in_inc7_i147_0),
        .in_inc7_i147_1(in_inc7_i147_1),
        .in_stall_in(bb_add_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked73(add_B5_merge_out_forked73),
        .out_inc7_i147(add_B5_merge_out_inc7_i147),
        .out_stall_out_0(add_B5_merge_out_stall_out_0),
        .out_stall_out_1(add_B5_merge_out_stall_out_1),
        .out_valid_out(add_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B5_stall_region(BLACKBOX,4)
    add_bb_B5_stall_region thebb_add_B5_stall_region (
        .in_flush(in_flush),
        .in_forked73(add_B5_merge_out_forked73),
        .in_inc7_i147(add_B5_merge_out_inc7_i147),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_lm1076_add_avm_readdata(in_lm1076_add_avm_readdata),
        .in_lm1076_add_avm_readdatavalid(in_lm1076_add_avm_readdatavalid),
        .in_lm1076_add_avm_waitrequest(in_lm1076_add_avm_waitrequest),
        .in_lm1076_add_avm_writeack(in_lm1076_add_avm_writeack),
        .in_lm1097_add_avm_readdata(in_lm1097_add_avm_readdata),
        .in_lm1097_add_avm_readdatavalid(in_lm1097_add_avm_readdatavalid),
        .in_lm1097_add_avm_waitrequest(in_lm1097_add_avm_waitrequest),
        .in_lm1097_add_avm_writeack(in_lm1097_add_avm_writeack),
        .in_memdep_add_avm_readdata(in_memdep_add_avm_readdata),
        .in_memdep_add_avm_readdatavalid(in_memdep_add_avm_readdatavalid),
        .in_memdep_add_avm_waitrequest(in_memdep_add_avm_waitrequest),
        .in_memdep_add_avm_writeack(in_memdep_add_avm_writeack),
        .in_ml535_add_avm_readdata(in_ml535_add_avm_readdata),
        .in_ml535_add_avm_readdatavalid(in_ml535_add_avm_readdatavalid),
        .in_ml535_add_avm_waitrequest(in_ml535_add_avm_waitrequest),
        .in_ml535_add_avm_writeack(in_ml535_add_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(add_B5_branch_out_stall_out),
        .in_valid_in(add_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_add30_exiting_stall_out(bb_add_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_add30_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_add30_exiting_valid_out(bb_add_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_add30_exiting_valid_out),
        .out_inc7_i146_push23(bb_add_B5_stall_region_out_inc7_i146_push23),
        .out_intel_reserved_ffwd_28_0(bb_add_B5_stall_region_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_add_B5_stall_region_out_intel_reserved_ffwd_29_0),
        .out_lm1076_add_avm_address(bb_add_B5_stall_region_out_lm1076_add_avm_address),
        .out_lm1076_add_avm_burstcount(bb_add_B5_stall_region_out_lm1076_add_avm_burstcount),
        .out_lm1076_add_avm_byteenable(bb_add_B5_stall_region_out_lm1076_add_avm_byteenable),
        .out_lm1076_add_avm_enable(bb_add_B5_stall_region_out_lm1076_add_avm_enable),
        .out_lm1076_add_avm_read(bb_add_B5_stall_region_out_lm1076_add_avm_read),
        .out_lm1076_add_avm_write(bb_add_B5_stall_region_out_lm1076_add_avm_write),
        .out_lm1076_add_avm_writedata(bb_add_B5_stall_region_out_lm1076_add_avm_writedata),
        .out_lm1097_add_avm_address(bb_add_B5_stall_region_out_lm1097_add_avm_address),
        .out_lm1097_add_avm_burstcount(bb_add_B5_stall_region_out_lm1097_add_avm_burstcount),
        .out_lm1097_add_avm_byteenable(bb_add_B5_stall_region_out_lm1097_add_avm_byteenable),
        .out_lm1097_add_avm_enable(bb_add_B5_stall_region_out_lm1097_add_avm_enable),
        .out_lm1097_add_avm_read(bb_add_B5_stall_region_out_lm1097_add_avm_read),
        .out_lm1097_add_avm_write(bb_add_B5_stall_region_out_lm1097_add_avm_write),
        .out_lm1097_add_avm_writedata(bb_add_B5_stall_region_out_lm1097_add_avm_writedata),
        .out_lsu_memdep_o_active(bb_add_B5_stall_region_out_lsu_memdep_o_active),
        .out_masked(bb_add_B5_stall_region_out_masked),
        .out_memdep_add_avm_address(bb_add_B5_stall_region_out_memdep_add_avm_address),
        .out_memdep_add_avm_burstcount(bb_add_B5_stall_region_out_memdep_add_avm_burstcount),
        .out_memdep_add_avm_byteenable(bb_add_B5_stall_region_out_memdep_add_avm_byteenable),
        .out_memdep_add_avm_enable(bb_add_B5_stall_region_out_memdep_add_avm_enable),
        .out_memdep_add_avm_read(bb_add_B5_stall_region_out_memdep_add_avm_read),
        .out_memdep_add_avm_write(bb_add_B5_stall_region_out_memdep_add_avm_write),
        .out_memdep_add_avm_writedata(bb_add_B5_stall_region_out_memdep_add_avm_writedata),
        .out_ml535_add_avm_address(bb_add_B5_stall_region_out_ml535_add_avm_address),
        .out_ml535_add_avm_burstcount(bb_add_B5_stall_region_out_ml535_add_avm_burstcount),
        .out_ml535_add_avm_byteenable(bb_add_B5_stall_region_out_ml535_add_avm_byteenable),
        .out_ml535_add_avm_enable(bb_add_B5_stall_region_out_ml535_add_avm_enable),
        .out_ml535_add_avm_read(bb_add_B5_stall_region_out_ml535_add_avm_read),
        .out_ml535_add_avm_write(bb_add_B5_stall_region_out_ml535_add_avm_write),
        .out_ml535_add_avm_writedata(bb_add_B5_stall_region_out_ml535_add_avm_writedata),
        .out_pipeline_valid_out(bb_add_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_add_B5_stall_region_out_stall_out),
        .out_valid_out(bb_add_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,46)
    assign out_exiting_stall_out = bb_add_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_add30_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,47)
    assign out_exiting_valid_out = bb_add_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_add30_exiting_valid_out;

    // out_inc7_i146_push23(GPOUT,48)
    assign out_inc7_i146_push23 = add_B5_branch_out_inc7_i146_push23;

    // out_intel_reserved_ffwd_28_0(GPOUT,49)
    assign out_intel_reserved_ffwd_28_0 = bb_add_B5_stall_region_out_intel_reserved_ffwd_28_0;

    // out_intel_reserved_ffwd_29_0(GPOUT,50)
    assign out_intel_reserved_ffwd_29_0 = bb_add_B5_stall_region_out_intel_reserved_ffwd_29_0;

    // out_lm1076_add_avm_address(GPOUT,51)
    assign out_lm1076_add_avm_address = bb_add_B5_stall_region_out_lm1076_add_avm_address;

    // out_lm1076_add_avm_burstcount(GPOUT,52)
    assign out_lm1076_add_avm_burstcount = bb_add_B5_stall_region_out_lm1076_add_avm_burstcount;

    // out_lm1076_add_avm_byteenable(GPOUT,53)
    assign out_lm1076_add_avm_byteenable = bb_add_B5_stall_region_out_lm1076_add_avm_byteenable;

    // out_lm1076_add_avm_enable(GPOUT,54)
    assign out_lm1076_add_avm_enable = bb_add_B5_stall_region_out_lm1076_add_avm_enable;

    // out_lm1076_add_avm_read(GPOUT,55)
    assign out_lm1076_add_avm_read = bb_add_B5_stall_region_out_lm1076_add_avm_read;

    // out_lm1076_add_avm_write(GPOUT,56)
    assign out_lm1076_add_avm_write = bb_add_B5_stall_region_out_lm1076_add_avm_write;

    // out_lm1076_add_avm_writedata(GPOUT,57)
    assign out_lm1076_add_avm_writedata = bb_add_B5_stall_region_out_lm1076_add_avm_writedata;

    // out_lm1097_add_avm_address(GPOUT,58)
    assign out_lm1097_add_avm_address = bb_add_B5_stall_region_out_lm1097_add_avm_address;

    // out_lm1097_add_avm_burstcount(GPOUT,59)
    assign out_lm1097_add_avm_burstcount = bb_add_B5_stall_region_out_lm1097_add_avm_burstcount;

    // out_lm1097_add_avm_byteenable(GPOUT,60)
    assign out_lm1097_add_avm_byteenable = bb_add_B5_stall_region_out_lm1097_add_avm_byteenable;

    // out_lm1097_add_avm_enable(GPOUT,61)
    assign out_lm1097_add_avm_enable = bb_add_B5_stall_region_out_lm1097_add_avm_enable;

    // out_lm1097_add_avm_read(GPOUT,62)
    assign out_lm1097_add_avm_read = bb_add_B5_stall_region_out_lm1097_add_avm_read;

    // out_lm1097_add_avm_write(GPOUT,63)
    assign out_lm1097_add_avm_write = bb_add_B5_stall_region_out_lm1097_add_avm_write;

    // out_lm1097_add_avm_writedata(GPOUT,64)
    assign out_lm1097_add_avm_writedata = bb_add_B5_stall_region_out_lm1097_add_avm_writedata;

    // out_lsu_memdep_o_active(GPOUT,65)
    assign out_lsu_memdep_o_active = bb_add_B5_stall_region_out_lsu_memdep_o_active;

    // out_memdep_add_avm_address(GPOUT,66)
    assign out_memdep_add_avm_address = bb_add_B5_stall_region_out_memdep_add_avm_address;

    // out_memdep_add_avm_burstcount(GPOUT,67)
    assign out_memdep_add_avm_burstcount = bb_add_B5_stall_region_out_memdep_add_avm_burstcount;

    // out_memdep_add_avm_byteenable(GPOUT,68)
    assign out_memdep_add_avm_byteenable = bb_add_B5_stall_region_out_memdep_add_avm_byteenable;

    // out_memdep_add_avm_enable(GPOUT,69)
    assign out_memdep_add_avm_enable = bb_add_B5_stall_region_out_memdep_add_avm_enable;

    // out_memdep_add_avm_read(GPOUT,70)
    assign out_memdep_add_avm_read = bb_add_B5_stall_region_out_memdep_add_avm_read;

    // out_memdep_add_avm_write(GPOUT,71)
    assign out_memdep_add_avm_write = bb_add_B5_stall_region_out_memdep_add_avm_write;

    // out_memdep_add_avm_writedata(GPOUT,72)
    assign out_memdep_add_avm_writedata = bb_add_B5_stall_region_out_memdep_add_avm_writedata;

    // out_ml535_add_avm_address(GPOUT,73)
    assign out_ml535_add_avm_address = bb_add_B5_stall_region_out_ml535_add_avm_address;

    // out_ml535_add_avm_burstcount(GPOUT,74)
    assign out_ml535_add_avm_burstcount = bb_add_B5_stall_region_out_ml535_add_avm_burstcount;

    // out_ml535_add_avm_byteenable(GPOUT,75)
    assign out_ml535_add_avm_byteenable = bb_add_B5_stall_region_out_ml535_add_avm_byteenable;

    // out_ml535_add_avm_enable(GPOUT,76)
    assign out_ml535_add_avm_enable = bb_add_B5_stall_region_out_ml535_add_avm_enable;

    // out_ml535_add_avm_read(GPOUT,77)
    assign out_ml535_add_avm_read = bb_add_B5_stall_region_out_ml535_add_avm_read;

    // out_ml535_add_avm_write(GPOUT,78)
    assign out_ml535_add_avm_write = bb_add_B5_stall_region_out_ml535_add_avm_write;

    // out_ml535_add_avm_writedata(GPOUT,79)
    assign out_ml535_add_avm_writedata = bb_add_B5_stall_region_out_ml535_add_avm_writedata;

    // out_stall_in_0(GPOUT,80)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,81)
    assign out_stall_out_0 = add_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,82)
    assign out_stall_out_1 = add_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,83)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,84)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,85)
    assign out_valid_out_0 = add_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,86)
    assign out_valid_out_1 = add_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,88)
    assign out_pipeline_valid_out = bb_add_B5_stall_region_out_pipeline_valid_out;

endmodule
