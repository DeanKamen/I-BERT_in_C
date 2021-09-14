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

// SystemVerilog created from add_i_sfc_s_c0_in_for_cond25_preheader_s_c0_enter1533_add4
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_i_sfc_s_c0_in_for_cond25_preheader_s_c0_enter1533_add4 (
    output wire [0:0] out_c0_exit156_0_tpl,
    output wire [0:0] out_o_valid,
    output wire [31:0] out_intel_reserved_ffwd_34_0,
    output wire [0:0] out_intel_reserved_ffwd_35_0,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [63:0] out_intel_reserved_ffwd_38_0,
    output wire [0:0] out_intel_reserved_ffwd_39_0,
    output wire [0:0] out_intel_reserved_ffwd_40_0,
    input wire [0:0] in_c0_eni2152_0_tpl,
    input wire [0:0] in_c0_eni2152_1_tpl,
    input wire [31:0] in_c0_eni2152_2_tpl,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_intel_reserved_ffwd_44_0,
    input wire [31:0] in_intel_reserved_ffwd_45_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond25_preheader_adds_c0_exit156_add1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond25_preheader_adds_c0_exit156_add1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond25_preheader_adds_c0_exit156_add1_aunroll_x_out_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_33_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_34_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_38_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_39_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_40_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_o_valid;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x(BLACKBOX,10)@1
    // out out_unnamed_add64_0_tpl@49
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_intel_reserved_ffwd_34_0@20000000
    // out out_intel_reserved_ffwd_35_0@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_intel_reserved_ffwd_38_0@20000000
    // out out_intel_reserved_ffwd_39_0@20000000
    // out out_intel_reserved_ffwd_40_0@20000000
    // out out_o_valid@49
    // out out_unnamed_add44@49
    add_i_sfc_logic_s_c0_in_for_cond25_preheader_s_c0_enter1533_add0 thei_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x (
        .in_c0_eni2152_0_tpl(in_c0_eni2152_0_tpl),
        .in_c0_eni2152_1_tpl(in_c0_eni2152_1_tpl),
        .in_c0_eni2152_2_tpl(in_c0_eni2152_2_tpl),
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .out_unnamed_add64_0_tpl(),
        .out_intel_reserved_ffwd_33_0(i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_37_0(i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_40_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_o_valid),
        .out_unnamed_add44(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,14)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond25_preheader_adds_c0_exit156_add1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,13)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond25_preheader_adds_c0_exit156_add1_aunroll_x(BLACKBOX,9)@49
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@52
    // out out_stall_entry@20000000
    // out out_valid_out@52
    add_i_llvm_fpga_sfc_exit_s_c0_out_for_co0000er_s_c0_exit156_add0 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond25_preheader_adds_c0_exit156_add1_aunroll_x (
        .in_data_in_0_tpl(GND_q),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond25_preheader_adds_c0_exit156_add1_aunroll_x_out_data_out_0_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond25_preheader_adds_c0_exit156_add1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond25_preheader_adds_c0_exit156_add1_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@52
    assign out_c0_exit156_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond25_preheader_adds_c0_exit156_add1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond25_preheader_adds_c0_exit156_add1_aunroll_x_out_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_intel_reserved_ffwd_34_0 = i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_34_0;

    // dupName_1_regfree_osync_x(GPOUT,4)
    assign out_intel_reserved_ffwd_35_0 = i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_35_0;

    // dupName_2_regfree_osync_x(GPOUT,5)
    assign out_intel_reserved_ffwd_37_0 = i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_37_0;

    // dupName_3_regfree_osync_x(GPOUT,6)
    assign out_intel_reserved_ffwd_38_0 = i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_38_0;

    // dupName_4_regfree_osync_x(GPOUT,7)
    assign out_intel_reserved_ffwd_39_0 = i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_39_0;

    // dupName_5_regfree_osync_x(GPOUT,8)
    assign out_intel_reserved_ffwd_40_0 = i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_40_0;

    // regfree_osync(GPOUT,23)
    assign out_intel_reserved_ffwd_33_0 = i_sfc_logic_s_c0_in_for_cond25_preheader_adds_c0_enter1533_add0_aunroll_x_out_intel_reserved_ffwd_33_0;

    // sync_out(GPOUT,25)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond25_preheader_adds_c0_exit156_add1_aunroll_x_out_stall_entry;

endmodule