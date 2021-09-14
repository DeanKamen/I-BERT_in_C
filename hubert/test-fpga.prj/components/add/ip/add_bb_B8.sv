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

// SystemVerilog created from add_bb_B8
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_bb_B8 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked95_0,
    input wire [0:0] in_forked95_1,
    input wire [31:0] in_inc35149_0,
    input wire [31:0] in_inc35149_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [0:0] in_intel_reserved_ffwd_15_0,
    input wire [31:0] in_intel_reserved_ffwd_16_0,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_32_0,
    input wire [31:0] in_intel_reserved_ffwd_33_0,
    input wire [31:0] in_intel_reserved_ffwd_34_0,
    input wire [0:0] in_intel_reserved_ffwd_35_0,
    input wire [63:0] in_intel_reserved_ffwd_36_0,
    input wire [31:0] in_intel_reserved_ffwd_37_0,
    input wire [63:0] in_intel_reserved_ffwd_38_0,
    input wire [0:0] in_intel_reserved_ffwd_39_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_intel_reserved_ffwd_40_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire [63:0] in_lm1269_add_avm_readdata,
    input wire [0:0] in_lm1269_add_avm_readdatavalid,
    input wire [0:0] in_lm1269_add_avm_waitrequest,
    input wire [0:0] in_lm1269_add_avm_writeack,
    input wire [63:0] in_lm12810_add_avm_readdata,
    input wire [0:0] in_lm12810_add_avm_readdatavalid,
    input wire [0:0] in_lm12810_add_avm_waitrequest,
    input wire [0:0] in_lm12810_add_avm_writeack,
    input wire [63:0] in_lm13212_add_avm_readdata,
    input wire [0:0] in_lm13212_add_avm_readdatavalid,
    input wire [0:0] in_lm13212_add_avm_waitrequest,
    input wire [0:0] in_lm13212_add_avm_writeack,
    input wire [63:0] in_lm13413_add_avm_readdata,
    input wire [0:0] in_lm13413_add_avm_readdatavalid,
    input wire [0:0] in_lm13413_add_avm_waitrequest,
    input wire [0:0] in_lm13413_add_avm_writeack,
    input wire [63:0] in_memdep_16_add_avm_readdata,
    input wire [0:0] in_memdep_16_add_avm_readdatavalid,
    input wire [0:0] in_memdep_16_add_avm_waitrequest,
    input wire [0:0] in_memdep_16_add_avm_writeack,
    input wire [63:0] in_ml3211_add_avm_readdata,
    input wire [0:0] in_ml3211_add_avm_readdatavalid,
    input wire [0:0] in_ml3211_add_avm_waitrequest,
    input wire [0:0] in_ml3211_add_avm_writeack,
    input wire [63:0] in_ml358_add_avm_readdata,
    input wire [0:0] in_ml358_add_avm_readdatavalid,
    input wire [0:0] in_ml358_add_avm_waitrequest,
    input wire [0:0] in_ml358_add_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_inc35145_push14,
    output wire [31:0] out_intel_reserved_ffwd_42_0,
    output wire [31:0] out_intel_reserved_ffwd_43_0,
    output wire [63:0] out_lm1269_add_avm_address,
    output wire [0:0] out_lm1269_add_avm_burstcount,
    output wire [7:0] out_lm1269_add_avm_byteenable,
    output wire [0:0] out_lm1269_add_avm_enable,
    output wire [0:0] out_lm1269_add_avm_read,
    output wire [0:0] out_lm1269_add_avm_write,
    output wire [63:0] out_lm1269_add_avm_writedata,
    output wire [63:0] out_lm12810_add_avm_address,
    output wire [0:0] out_lm12810_add_avm_burstcount,
    output wire [7:0] out_lm12810_add_avm_byteenable,
    output wire [0:0] out_lm12810_add_avm_enable,
    output wire [0:0] out_lm12810_add_avm_read,
    output wire [0:0] out_lm12810_add_avm_write,
    output wire [63:0] out_lm12810_add_avm_writedata,
    output wire [63:0] out_lm13212_add_avm_address,
    output wire [0:0] out_lm13212_add_avm_burstcount,
    output wire [7:0] out_lm13212_add_avm_byteenable,
    output wire [0:0] out_lm13212_add_avm_enable,
    output wire [0:0] out_lm13212_add_avm_read,
    output wire [0:0] out_lm13212_add_avm_write,
    output wire [63:0] out_lm13212_add_avm_writedata,
    output wire [63:0] out_lm13413_add_avm_address,
    output wire [0:0] out_lm13413_add_avm_burstcount,
    output wire [7:0] out_lm13413_add_avm_byteenable,
    output wire [0:0] out_lm13413_add_avm_enable,
    output wire [0:0] out_lm13413_add_avm_read,
    output wire [0:0] out_lm13413_add_avm_write,
    output wire [63:0] out_lm13413_add_avm_writedata,
    output wire [0:0] out_lsu_memdep_16_o_active,
    output wire [63:0] out_memdep_16_add_avm_address,
    output wire [0:0] out_memdep_16_add_avm_burstcount,
    output wire [7:0] out_memdep_16_add_avm_byteenable,
    output wire [0:0] out_memdep_16_add_avm_enable,
    output wire [0:0] out_memdep_16_add_avm_read,
    output wire [0:0] out_memdep_16_add_avm_write,
    output wire [63:0] out_memdep_16_add_avm_writedata,
    output wire [63:0] out_ml3211_add_avm_address,
    output wire [0:0] out_ml3211_add_avm_burstcount,
    output wire [7:0] out_ml3211_add_avm_byteenable,
    output wire [0:0] out_ml3211_add_avm_enable,
    output wire [0:0] out_ml3211_add_avm_read,
    output wire [0:0] out_ml3211_add_avm_write,
    output wire [63:0] out_ml3211_add_avm_writedata,
    output wire [63:0] out_ml358_add_avm_address,
    output wire [0:0] out_ml358_add_avm_burstcount,
    output wire [7:0] out_ml358_add_avm_byteenable,
    output wire [0:0] out_ml358_add_avm_enable,
    output wire [0:0] out_ml358_add_avm_read,
    output wire [0:0] out_ml358_add_avm_write,
    output wire [63:0] out_ml358_add_avm_writedata,
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

    wire [31:0] add_B8_branch_out_inc35145_push14;
    wire [0:0] add_B8_branch_out_stall_out;
    wire [0:0] add_B8_branch_out_valid_out_0;
    wire [0:0] add_B8_branch_out_valid_out_1;
    wire [0:0] add_B8_merge_out_forked95;
    wire [31:0] add_B8_merge_out_inc35149;
    wire [0:0] add_B8_merge_out_stall_out_0;
    wire [0:0] add_B8_merge_out_stall_out_1;
    wire [0:0] add_B8_merge_out_valid_out;
    wire [0:0] bb_add_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_add45_exiting_stall_out;
    wire [0:0] bb_add_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_add45_exiting_valid_out;
    wire [31:0] bb_add_B8_stall_region_out_inc35145_push14;
    wire [31:0] bb_add_B8_stall_region_out_intel_reserved_ffwd_42_0;
    wire [31:0] bb_add_B8_stall_region_out_intel_reserved_ffwd_43_0;
    wire [63:0] bb_add_B8_stall_region_out_lm1269_add_avm_address;
    wire [0:0] bb_add_B8_stall_region_out_lm1269_add_avm_burstcount;
    wire [7:0] bb_add_B8_stall_region_out_lm1269_add_avm_byteenable;
    wire [0:0] bb_add_B8_stall_region_out_lm1269_add_avm_enable;
    wire [0:0] bb_add_B8_stall_region_out_lm1269_add_avm_read;
    wire [0:0] bb_add_B8_stall_region_out_lm1269_add_avm_write;
    wire [63:0] bb_add_B8_stall_region_out_lm1269_add_avm_writedata;
    wire [63:0] bb_add_B8_stall_region_out_lm12810_add_avm_address;
    wire [0:0] bb_add_B8_stall_region_out_lm12810_add_avm_burstcount;
    wire [7:0] bb_add_B8_stall_region_out_lm12810_add_avm_byteenable;
    wire [0:0] bb_add_B8_stall_region_out_lm12810_add_avm_enable;
    wire [0:0] bb_add_B8_stall_region_out_lm12810_add_avm_read;
    wire [0:0] bb_add_B8_stall_region_out_lm12810_add_avm_write;
    wire [63:0] bb_add_B8_stall_region_out_lm12810_add_avm_writedata;
    wire [63:0] bb_add_B8_stall_region_out_lm13212_add_avm_address;
    wire [0:0] bb_add_B8_stall_region_out_lm13212_add_avm_burstcount;
    wire [7:0] bb_add_B8_stall_region_out_lm13212_add_avm_byteenable;
    wire [0:0] bb_add_B8_stall_region_out_lm13212_add_avm_enable;
    wire [0:0] bb_add_B8_stall_region_out_lm13212_add_avm_read;
    wire [0:0] bb_add_B8_stall_region_out_lm13212_add_avm_write;
    wire [63:0] bb_add_B8_stall_region_out_lm13212_add_avm_writedata;
    wire [63:0] bb_add_B8_stall_region_out_lm13413_add_avm_address;
    wire [0:0] bb_add_B8_stall_region_out_lm13413_add_avm_burstcount;
    wire [7:0] bb_add_B8_stall_region_out_lm13413_add_avm_byteenable;
    wire [0:0] bb_add_B8_stall_region_out_lm13413_add_avm_enable;
    wire [0:0] bb_add_B8_stall_region_out_lm13413_add_avm_read;
    wire [0:0] bb_add_B8_stall_region_out_lm13413_add_avm_write;
    wire [63:0] bb_add_B8_stall_region_out_lm13413_add_avm_writedata;
    wire [0:0] bb_add_B8_stall_region_out_lsu_memdep_16_o_active;
    wire [0:0] bb_add_B8_stall_region_out_masked135;
    wire [63:0] bb_add_B8_stall_region_out_memdep_16_add_avm_address;
    wire [0:0] bb_add_B8_stall_region_out_memdep_16_add_avm_burstcount;
    wire [7:0] bb_add_B8_stall_region_out_memdep_16_add_avm_byteenable;
    wire [0:0] bb_add_B8_stall_region_out_memdep_16_add_avm_enable;
    wire [0:0] bb_add_B8_stall_region_out_memdep_16_add_avm_read;
    wire [0:0] bb_add_B8_stall_region_out_memdep_16_add_avm_write;
    wire [63:0] bb_add_B8_stall_region_out_memdep_16_add_avm_writedata;
    wire [63:0] bb_add_B8_stall_region_out_ml3211_add_avm_address;
    wire [0:0] bb_add_B8_stall_region_out_ml3211_add_avm_burstcount;
    wire [7:0] bb_add_B8_stall_region_out_ml3211_add_avm_byteenable;
    wire [0:0] bb_add_B8_stall_region_out_ml3211_add_avm_enable;
    wire [0:0] bb_add_B8_stall_region_out_ml3211_add_avm_read;
    wire [0:0] bb_add_B8_stall_region_out_ml3211_add_avm_write;
    wire [63:0] bb_add_B8_stall_region_out_ml3211_add_avm_writedata;
    wire [63:0] bb_add_B8_stall_region_out_ml358_add_avm_address;
    wire [0:0] bb_add_B8_stall_region_out_ml358_add_avm_burstcount;
    wire [7:0] bb_add_B8_stall_region_out_ml358_add_avm_byteenable;
    wire [0:0] bb_add_B8_stall_region_out_ml358_add_avm_enable;
    wire [0:0] bb_add_B8_stall_region_out_ml358_add_avm_read;
    wire [0:0] bb_add_B8_stall_region_out_ml358_add_avm_write;
    wire [63:0] bb_add_B8_stall_region_out_ml358_add_avm_writedata;
    wire [0:0] bb_add_B8_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_add_B8_stall_region_out_stall_out;
    wire [0:0] bb_add_B8_stall_region_out_valid_out;


    // add_B8_branch(BLACKBOX,2)
    add_B8_branch theadd_B8_branch (
        .in_inc35145_push14(bb_add_B8_stall_region_out_inc35145_push14),
        .in_masked135(bb_add_B8_stall_region_out_masked135),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_add_B8_stall_region_out_valid_out),
        .out_inc35145_push14(add_B8_branch_out_inc35145_push14),
        .out_stall_out(add_B8_branch_out_stall_out),
        .out_valid_out_0(add_B8_branch_out_valid_out_0),
        .out_valid_out_1(add_B8_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // add_B8_merge(BLACKBOX,3)
    add_B8_merge theadd_B8_merge (
        .in_forked95_0(in_forked95_0),
        .in_forked95_1(in_forked95_1),
        .in_inc35149_0(in_inc35149_0),
        .in_inc35149_1(in_inc35149_1),
        .in_stall_in(bb_add_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked95(add_B8_merge_out_forked95),
        .out_inc35149(add_B8_merge_out_inc35149),
        .out_stall_out_0(add_B8_merge_out_stall_out_0),
        .out_stall_out_1(add_B8_merge_out_stall_out_1),
        .out_valid_out(add_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B8_stall_region(BLACKBOX,4)
    add_bb_B8_stall_region thebb_add_B8_stall_region (
        .in_flush(in_flush),
        .in_forked95(add_B8_merge_out_forked95),
        .in_inc35149(add_B8_merge_out_inc35149),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_lm1269_add_avm_readdata(in_lm1269_add_avm_readdata),
        .in_lm1269_add_avm_readdatavalid(in_lm1269_add_avm_readdatavalid),
        .in_lm1269_add_avm_waitrequest(in_lm1269_add_avm_waitrequest),
        .in_lm1269_add_avm_writeack(in_lm1269_add_avm_writeack),
        .in_lm12810_add_avm_readdata(in_lm12810_add_avm_readdata),
        .in_lm12810_add_avm_readdatavalid(in_lm12810_add_avm_readdatavalid),
        .in_lm12810_add_avm_waitrequest(in_lm12810_add_avm_waitrequest),
        .in_lm12810_add_avm_writeack(in_lm12810_add_avm_writeack),
        .in_lm13212_add_avm_readdata(in_lm13212_add_avm_readdata),
        .in_lm13212_add_avm_readdatavalid(in_lm13212_add_avm_readdatavalid),
        .in_lm13212_add_avm_waitrequest(in_lm13212_add_avm_waitrequest),
        .in_lm13212_add_avm_writeack(in_lm13212_add_avm_writeack),
        .in_lm13413_add_avm_readdata(in_lm13413_add_avm_readdata),
        .in_lm13413_add_avm_readdatavalid(in_lm13413_add_avm_readdatavalid),
        .in_lm13413_add_avm_waitrequest(in_lm13413_add_avm_waitrequest),
        .in_lm13413_add_avm_writeack(in_lm13413_add_avm_writeack),
        .in_memdep_16_add_avm_readdata(in_memdep_16_add_avm_readdata),
        .in_memdep_16_add_avm_readdatavalid(in_memdep_16_add_avm_readdatavalid),
        .in_memdep_16_add_avm_waitrequest(in_memdep_16_add_avm_waitrequest),
        .in_memdep_16_add_avm_writeack(in_memdep_16_add_avm_writeack),
        .in_ml3211_add_avm_readdata(in_ml3211_add_avm_readdata),
        .in_ml3211_add_avm_readdatavalid(in_ml3211_add_avm_readdatavalid),
        .in_ml3211_add_avm_waitrequest(in_ml3211_add_avm_waitrequest),
        .in_ml3211_add_avm_writeack(in_ml3211_add_avm_writeack),
        .in_ml358_add_avm_readdata(in_ml358_add_avm_readdata),
        .in_ml358_add_avm_readdatavalid(in_ml358_add_avm_readdatavalid),
        .in_ml358_add_avm_waitrequest(in_ml358_add_avm_waitrequest),
        .in_ml358_add_avm_writeack(in_ml358_add_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(add_B8_branch_out_stall_out),
        .in_valid_in(add_B8_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_add45_exiting_stall_out(bb_add_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_add45_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_add45_exiting_valid_out(bb_add_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_add45_exiting_valid_out),
        .out_inc35145_push14(bb_add_B8_stall_region_out_inc35145_push14),
        .out_intel_reserved_ffwd_42_0(bb_add_B8_stall_region_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_add_B8_stall_region_out_intel_reserved_ffwd_43_0),
        .out_lm1269_add_avm_address(bb_add_B8_stall_region_out_lm1269_add_avm_address),
        .out_lm1269_add_avm_burstcount(bb_add_B8_stall_region_out_lm1269_add_avm_burstcount),
        .out_lm1269_add_avm_byteenable(bb_add_B8_stall_region_out_lm1269_add_avm_byteenable),
        .out_lm1269_add_avm_enable(bb_add_B8_stall_region_out_lm1269_add_avm_enable),
        .out_lm1269_add_avm_read(bb_add_B8_stall_region_out_lm1269_add_avm_read),
        .out_lm1269_add_avm_write(bb_add_B8_stall_region_out_lm1269_add_avm_write),
        .out_lm1269_add_avm_writedata(bb_add_B8_stall_region_out_lm1269_add_avm_writedata),
        .out_lm12810_add_avm_address(bb_add_B8_stall_region_out_lm12810_add_avm_address),
        .out_lm12810_add_avm_burstcount(bb_add_B8_stall_region_out_lm12810_add_avm_burstcount),
        .out_lm12810_add_avm_byteenable(bb_add_B8_stall_region_out_lm12810_add_avm_byteenable),
        .out_lm12810_add_avm_enable(bb_add_B8_stall_region_out_lm12810_add_avm_enable),
        .out_lm12810_add_avm_read(bb_add_B8_stall_region_out_lm12810_add_avm_read),
        .out_lm12810_add_avm_write(bb_add_B8_stall_region_out_lm12810_add_avm_write),
        .out_lm12810_add_avm_writedata(bb_add_B8_stall_region_out_lm12810_add_avm_writedata),
        .out_lm13212_add_avm_address(bb_add_B8_stall_region_out_lm13212_add_avm_address),
        .out_lm13212_add_avm_burstcount(bb_add_B8_stall_region_out_lm13212_add_avm_burstcount),
        .out_lm13212_add_avm_byteenable(bb_add_B8_stall_region_out_lm13212_add_avm_byteenable),
        .out_lm13212_add_avm_enable(bb_add_B8_stall_region_out_lm13212_add_avm_enable),
        .out_lm13212_add_avm_read(bb_add_B8_stall_region_out_lm13212_add_avm_read),
        .out_lm13212_add_avm_write(bb_add_B8_stall_region_out_lm13212_add_avm_write),
        .out_lm13212_add_avm_writedata(bb_add_B8_stall_region_out_lm13212_add_avm_writedata),
        .out_lm13413_add_avm_address(bb_add_B8_stall_region_out_lm13413_add_avm_address),
        .out_lm13413_add_avm_burstcount(bb_add_B8_stall_region_out_lm13413_add_avm_burstcount),
        .out_lm13413_add_avm_byteenable(bb_add_B8_stall_region_out_lm13413_add_avm_byteenable),
        .out_lm13413_add_avm_enable(bb_add_B8_stall_region_out_lm13413_add_avm_enable),
        .out_lm13413_add_avm_read(bb_add_B8_stall_region_out_lm13413_add_avm_read),
        .out_lm13413_add_avm_write(bb_add_B8_stall_region_out_lm13413_add_avm_write),
        .out_lm13413_add_avm_writedata(bb_add_B8_stall_region_out_lm13413_add_avm_writedata),
        .out_lsu_memdep_16_o_active(bb_add_B8_stall_region_out_lsu_memdep_16_o_active),
        .out_masked135(bb_add_B8_stall_region_out_masked135),
        .out_memdep_16_add_avm_address(bb_add_B8_stall_region_out_memdep_16_add_avm_address),
        .out_memdep_16_add_avm_burstcount(bb_add_B8_stall_region_out_memdep_16_add_avm_burstcount),
        .out_memdep_16_add_avm_byteenable(bb_add_B8_stall_region_out_memdep_16_add_avm_byteenable),
        .out_memdep_16_add_avm_enable(bb_add_B8_stall_region_out_memdep_16_add_avm_enable),
        .out_memdep_16_add_avm_read(bb_add_B8_stall_region_out_memdep_16_add_avm_read),
        .out_memdep_16_add_avm_write(bb_add_B8_stall_region_out_memdep_16_add_avm_write),
        .out_memdep_16_add_avm_writedata(bb_add_B8_stall_region_out_memdep_16_add_avm_writedata),
        .out_ml3211_add_avm_address(bb_add_B8_stall_region_out_ml3211_add_avm_address),
        .out_ml3211_add_avm_burstcount(bb_add_B8_stall_region_out_ml3211_add_avm_burstcount),
        .out_ml3211_add_avm_byteenable(bb_add_B8_stall_region_out_ml3211_add_avm_byteenable),
        .out_ml3211_add_avm_enable(bb_add_B8_stall_region_out_ml3211_add_avm_enable),
        .out_ml3211_add_avm_read(bb_add_B8_stall_region_out_ml3211_add_avm_read),
        .out_ml3211_add_avm_write(bb_add_B8_stall_region_out_ml3211_add_avm_write),
        .out_ml3211_add_avm_writedata(bb_add_B8_stall_region_out_ml3211_add_avm_writedata),
        .out_ml358_add_avm_address(bb_add_B8_stall_region_out_ml358_add_avm_address),
        .out_ml358_add_avm_burstcount(bb_add_B8_stall_region_out_ml358_add_avm_burstcount),
        .out_ml358_add_avm_byteenable(bb_add_B8_stall_region_out_ml358_add_avm_byteenable),
        .out_ml358_add_avm_enable(bb_add_B8_stall_region_out_ml358_add_avm_enable),
        .out_ml358_add_avm_read(bb_add_B8_stall_region_out_ml358_add_avm_read),
        .out_ml358_add_avm_write(bb_add_B8_stall_region_out_ml358_add_avm_write),
        .out_ml358_add_avm_writedata(bb_add_B8_stall_region_out_ml358_add_avm_writedata),
        .out_pipeline_valid_out(bb_add_B8_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_add_B8_stall_region_out_stall_out),
        .out_valid_out(bb_add_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,64)
    assign out_exiting_stall_out = bb_add_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_add45_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,65)
    assign out_exiting_valid_out = bb_add_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_add45_exiting_valid_out;

    // out_inc35145_push14(GPOUT,66)
    assign out_inc35145_push14 = add_B8_branch_out_inc35145_push14;

    // out_intel_reserved_ffwd_42_0(GPOUT,67)
    assign out_intel_reserved_ffwd_42_0 = bb_add_B8_stall_region_out_intel_reserved_ffwd_42_0;

    // out_intel_reserved_ffwd_43_0(GPOUT,68)
    assign out_intel_reserved_ffwd_43_0 = bb_add_B8_stall_region_out_intel_reserved_ffwd_43_0;

    // out_lm1269_add_avm_address(GPOUT,69)
    assign out_lm1269_add_avm_address = bb_add_B8_stall_region_out_lm1269_add_avm_address;

    // out_lm1269_add_avm_burstcount(GPOUT,70)
    assign out_lm1269_add_avm_burstcount = bb_add_B8_stall_region_out_lm1269_add_avm_burstcount;

    // out_lm1269_add_avm_byteenable(GPOUT,71)
    assign out_lm1269_add_avm_byteenable = bb_add_B8_stall_region_out_lm1269_add_avm_byteenable;

    // out_lm1269_add_avm_enable(GPOUT,72)
    assign out_lm1269_add_avm_enable = bb_add_B8_stall_region_out_lm1269_add_avm_enable;

    // out_lm1269_add_avm_read(GPOUT,73)
    assign out_lm1269_add_avm_read = bb_add_B8_stall_region_out_lm1269_add_avm_read;

    // out_lm1269_add_avm_write(GPOUT,74)
    assign out_lm1269_add_avm_write = bb_add_B8_stall_region_out_lm1269_add_avm_write;

    // out_lm1269_add_avm_writedata(GPOUT,75)
    assign out_lm1269_add_avm_writedata = bb_add_B8_stall_region_out_lm1269_add_avm_writedata;

    // out_lm12810_add_avm_address(GPOUT,76)
    assign out_lm12810_add_avm_address = bb_add_B8_stall_region_out_lm12810_add_avm_address;

    // out_lm12810_add_avm_burstcount(GPOUT,77)
    assign out_lm12810_add_avm_burstcount = bb_add_B8_stall_region_out_lm12810_add_avm_burstcount;

    // out_lm12810_add_avm_byteenable(GPOUT,78)
    assign out_lm12810_add_avm_byteenable = bb_add_B8_stall_region_out_lm12810_add_avm_byteenable;

    // out_lm12810_add_avm_enable(GPOUT,79)
    assign out_lm12810_add_avm_enable = bb_add_B8_stall_region_out_lm12810_add_avm_enable;

    // out_lm12810_add_avm_read(GPOUT,80)
    assign out_lm12810_add_avm_read = bb_add_B8_stall_region_out_lm12810_add_avm_read;

    // out_lm12810_add_avm_write(GPOUT,81)
    assign out_lm12810_add_avm_write = bb_add_B8_stall_region_out_lm12810_add_avm_write;

    // out_lm12810_add_avm_writedata(GPOUT,82)
    assign out_lm12810_add_avm_writedata = bb_add_B8_stall_region_out_lm12810_add_avm_writedata;

    // out_lm13212_add_avm_address(GPOUT,83)
    assign out_lm13212_add_avm_address = bb_add_B8_stall_region_out_lm13212_add_avm_address;

    // out_lm13212_add_avm_burstcount(GPOUT,84)
    assign out_lm13212_add_avm_burstcount = bb_add_B8_stall_region_out_lm13212_add_avm_burstcount;

    // out_lm13212_add_avm_byteenable(GPOUT,85)
    assign out_lm13212_add_avm_byteenable = bb_add_B8_stall_region_out_lm13212_add_avm_byteenable;

    // out_lm13212_add_avm_enable(GPOUT,86)
    assign out_lm13212_add_avm_enable = bb_add_B8_stall_region_out_lm13212_add_avm_enable;

    // out_lm13212_add_avm_read(GPOUT,87)
    assign out_lm13212_add_avm_read = bb_add_B8_stall_region_out_lm13212_add_avm_read;

    // out_lm13212_add_avm_write(GPOUT,88)
    assign out_lm13212_add_avm_write = bb_add_B8_stall_region_out_lm13212_add_avm_write;

    // out_lm13212_add_avm_writedata(GPOUT,89)
    assign out_lm13212_add_avm_writedata = bb_add_B8_stall_region_out_lm13212_add_avm_writedata;

    // out_lm13413_add_avm_address(GPOUT,90)
    assign out_lm13413_add_avm_address = bb_add_B8_stall_region_out_lm13413_add_avm_address;

    // out_lm13413_add_avm_burstcount(GPOUT,91)
    assign out_lm13413_add_avm_burstcount = bb_add_B8_stall_region_out_lm13413_add_avm_burstcount;

    // out_lm13413_add_avm_byteenable(GPOUT,92)
    assign out_lm13413_add_avm_byteenable = bb_add_B8_stall_region_out_lm13413_add_avm_byteenable;

    // out_lm13413_add_avm_enable(GPOUT,93)
    assign out_lm13413_add_avm_enable = bb_add_B8_stall_region_out_lm13413_add_avm_enable;

    // out_lm13413_add_avm_read(GPOUT,94)
    assign out_lm13413_add_avm_read = bb_add_B8_stall_region_out_lm13413_add_avm_read;

    // out_lm13413_add_avm_write(GPOUT,95)
    assign out_lm13413_add_avm_write = bb_add_B8_stall_region_out_lm13413_add_avm_write;

    // out_lm13413_add_avm_writedata(GPOUT,96)
    assign out_lm13413_add_avm_writedata = bb_add_B8_stall_region_out_lm13413_add_avm_writedata;

    // out_lsu_memdep_16_o_active(GPOUT,97)
    assign out_lsu_memdep_16_o_active = bb_add_B8_stall_region_out_lsu_memdep_16_o_active;

    // out_memdep_16_add_avm_address(GPOUT,98)
    assign out_memdep_16_add_avm_address = bb_add_B8_stall_region_out_memdep_16_add_avm_address;

    // out_memdep_16_add_avm_burstcount(GPOUT,99)
    assign out_memdep_16_add_avm_burstcount = bb_add_B8_stall_region_out_memdep_16_add_avm_burstcount;

    // out_memdep_16_add_avm_byteenable(GPOUT,100)
    assign out_memdep_16_add_avm_byteenable = bb_add_B8_stall_region_out_memdep_16_add_avm_byteenable;

    // out_memdep_16_add_avm_enable(GPOUT,101)
    assign out_memdep_16_add_avm_enable = bb_add_B8_stall_region_out_memdep_16_add_avm_enable;

    // out_memdep_16_add_avm_read(GPOUT,102)
    assign out_memdep_16_add_avm_read = bb_add_B8_stall_region_out_memdep_16_add_avm_read;

    // out_memdep_16_add_avm_write(GPOUT,103)
    assign out_memdep_16_add_avm_write = bb_add_B8_stall_region_out_memdep_16_add_avm_write;

    // out_memdep_16_add_avm_writedata(GPOUT,104)
    assign out_memdep_16_add_avm_writedata = bb_add_B8_stall_region_out_memdep_16_add_avm_writedata;

    // out_ml3211_add_avm_address(GPOUT,105)
    assign out_ml3211_add_avm_address = bb_add_B8_stall_region_out_ml3211_add_avm_address;

    // out_ml3211_add_avm_burstcount(GPOUT,106)
    assign out_ml3211_add_avm_burstcount = bb_add_B8_stall_region_out_ml3211_add_avm_burstcount;

    // out_ml3211_add_avm_byteenable(GPOUT,107)
    assign out_ml3211_add_avm_byteenable = bb_add_B8_stall_region_out_ml3211_add_avm_byteenable;

    // out_ml3211_add_avm_enable(GPOUT,108)
    assign out_ml3211_add_avm_enable = bb_add_B8_stall_region_out_ml3211_add_avm_enable;

    // out_ml3211_add_avm_read(GPOUT,109)
    assign out_ml3211_add_avm_read = bb_add_B8_stall_region_out_ml3211_add_avm_read;

    // out_ml3211_add_avm_write(GPOUT,110)
    assign out_ml3211_add_avm_write = bb_add_B8_stall_region_out_ml3211_add_avm_write;

    // out_ml3211_add_avm_writedata(GPOUT,111)
    assign out_ml3211_add_avm_writedata = bb_add_B8_stall_region_out_ml3211_add_avm_writedata;

    // out_ml358_add_avm_address(GPOUT,112)
    assign out_ml358_add_avm_address = bb_add_B8_stall_region_out_ml358_add_avm_address;

    // out_ml358_add_avm_burstcount(GPOUT,113)
    assign out_ml358_add_avm_burstcount = bb_add_B8_stall_region_out_ml358_add_avm_burstcount;

    // out_ml358_add_avm_byteenable(GPOUT,114)
    assign out_ml358_add_avm_byteenable = bb_add_B8_stall_region_out_ml358_add_avm_byteenable;

    // out_ml358_add_avm_enable(GPOUT,115)
    assign out_ml358_add_avm_enable = bb_add_B8_stall_region_out_ml358_add_avm_enable;

    // out_ml358_add_avm_read(GPOUT,116)
    assign out_ml358_add_avm_read = bb_add_B8_stall_region_out_ml358_add_avm_read;

    // out_ml358_add_avm_write(GPOUT,117)
    assign out_ml358_add_avm_write = bb_add_B8_stall_region_out_ml358_add_avm_write;

    // out_ml358_add_avm_writedata(GPOUT,118)
    assign out_ml358_add_avm_writedata = bb_add_B8_stall_region_out_ml358_add_avm_writedata;

    // out_stall_in_0(GPOUT,119)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,120)
    assign out_stall_out_0 = add_B8_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,121)
    assign out_stall_out_1 = add_B8_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,122)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,123)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,124)
    assign out_valid_out_0 = add_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,125)
    assign out_valid_out_1 = add_B8_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,127)
    assign out_pipeline_valid_out = bb_add_B8_stall_region_out_pipeline_valid_out;

endmodule
