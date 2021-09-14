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

// SystemVerilog created from add_bb_B9_stall_region
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_bb_B9_stall_region (
    output wire [31:0] out_intel_reserved_ffwd_45_0,
    output wire [31:0] out_inc35145_push142,
    output wire [0:0] out_unnamed_add76,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_intel_reserved_ffwd_33_0,
    input wire [31:0] in_intel_reserved_ffwd_34_0,
    input wire [0:0] in_intel_reserved_ffwd_35_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_41_0,
    input wire [31:0] in_intel_reserved_ffwd_42_0,
    input wire [31:0] in_intel_reserved_ffwd_43_0,
    output wire [31:0] out_intel_reserved_ffwd_44_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_inc35145_push142,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [33:0] i_cmp24_add11_a;
    wire [33:0] i_cmp24_add11_b;
    logic [33:0] i_cmp24_add11_o;
    wire [0:0] i_cmp24_add11_c;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_out_dest_data_out_35_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_out_dest_data_out_35_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_inc35111_add10_out_dest_data_out_41_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_inc35111_add10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_inc35111_add10_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_out_dest_data_out_42_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_out_dest_data_out_43_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_out_dest_data_out_33_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_out_intel_reserved_ffwd_44_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_out_intel_reserved_ffwd_45_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_out_valid_out;
    wire [0:0] i_select141_add7_s;
    reg [31:0] i_select141_add7_q;
    wire [0:0] i_select146_add3_s;
    reg [31:0] i_select146_add3_q;
    wire [0:0] i_unnamed_add13_qi;
    reg [0:0] i_unnamed_add13_q;
    wire [0:0] i_unnamed_add9_s;
    reg [31:0] i_unnamed_add9_q;
    reg [31:0] redist0_stall_entry_o4_2_0_q;
    reg [31:0] redist0_stall_entry_o4_2_1_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_b;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_V0;
    reg [0:0] SE_i_unnamed_add13_R_v_0;
    wire [0:0] SE_i_unnamed_add13_v_s_0;
    wire [0:0] SE_i_unnamed_add13_s_tv_0;
    wire [0:0] SE_i_unnamed_add13_backEN;
    wire [0:0] SE_i_unnamed_add13_and0;
    wire [0:0] SE_i_unnamed_add13_backStall;
    wire [0:0] SE_i_unnamed_add13_V0;
    wire [0:0] SE_i_unnamed_add9_wireValid;
    wire [0:0] SE_i_unnamed_add9_and0;
    wire [0:0] SE_i_unnamed_add9_and1;
    wire [0:0] SE_i_unnamed_add9_and2;
    wire [0:0] SE_i_unnamed_add9_backStall;
    wire [0:0] SE_i_unnamed_add9_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_toReg6;
    reg [0:0] SE_stall_entry_fromReg6;
    wire [0:0] SE_stall_entry_consumed6;
    wire [0:0] SE_stall_entry_toReg7;
    reg [0:0] SE_stall_entry_fromReg7;
    wire [0:0] SE_stall_entry_consumed7;
    wire [0:0] SE_stall_entry_toReg8;
    reg [0:0] SE_stall_entry_fromReg8;
    wire [0:0] SE_stall_entry_consumed8;
    wire [0:0] SE_stall_entry_toReg9;
    reg [0:0] SE_stall_entry_fromReg9;
    wire [0:0] SE_stall_entry_consumed9;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_or5;
    wire [0:0] SE_stall_entry_or6;
    wire [0:0] SE_stall_entry_or7;
    wire [0:0] SE_stall_entry_or8;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    wire [0:0] SE_stall_entry_V6;
    wire [0:0] SE_stall_entry_V7;
    wire [0:0] SE_stall_entry_V8;
    wire [0:0] SE_stall_entry_V9;
    reg [0:0] SE_redist0_stall_entry_o4_2_0_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_V0;
    reg [0:0] SE_redist0_stall_entry_o4_2_1_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_2_1_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_2_1_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_2_1_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_2_1_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_2_1_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_V0;


    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg(STALLENABLE,209)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_v_s_0;
            end

        end
    end

    // SE_redist0_stall_entry_o4_2_0(STALLENABLE,135)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_2_0_V0 = SE_redist0_stall_entry_o4_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_2_0_s_tv_0 = SE_redist0_stall_entry_o4_2_1_backStall & SE_redist0_stall_entry_o4_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_2_0_backEN = ~ (SE_redist0_stall_entry_o4_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_2_0_v_s_0 = SE_redist0_stall_entry_o4_2_0_backEN & SE_stall_entry_V9;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_2_0_backStall = ~ (SE_redist0_stall_entry_o4_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o4_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_2_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_2_0_R_v_0 <= SE_redist0_stall_entry_o4_2_0_R_v_0 & SE_redist0_stall_entry_o4_2_0_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_2_0_R_v_0 <= SE_redist0_stall_entry_o4_2_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_lm13413113_add2(BLACKBOX,14)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_43_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_i_llvm_fpga_ffwd_dest_i32_lm13413113_0 thei_llvm_fpga_ffwd_dest_i32_lm13413113_add2 (
        .in_intel_reserved_ffwd_43_0(in_intel_reserved_ffwd_43_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_backStall),
        .in_valid_in(SE_stall_entry_V6),
        .out_dest_data_out_43_0(i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_out_dest_data_out_43_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_inc35111_add10(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_41_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_i_llvm_fpga_ffwd_dest_i32_inc35111_0 thei_llvm_fpga_ffwd_dest_i32_inc35111_add10 (
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_backStall),
        .in_valid_in(SE_stall_entry_V4),
        .out_dest_data_out_41_0(i_llvm_fpga_ffwd_dest_i32_inc35111_add10_out_dest_data_out_41_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_inc35111_add10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_inc35111_add10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_14_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_i_llvm_fpga_ffwd_dest_i1_unnamed_79_add0 thei_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_out_dest_data_out_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_35_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_i_llvm_fpga_ffwd_dest_i1_unnamed_77_add0 thei_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1 (
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_35_0(i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_out_dest_data_out_35_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_0 thei_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
            SE_stall_entry_fromReg6 <= '0;
            SE_stall_entry_fromReg7 <= '0;
            SE_stall_entry_fromReg8 <= '0;
            SE_stall_entry_fromReg9 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
            // Successor 6
            SE_stall_entry_fromReg6 <= SE_stall_entry_toReg6;
            // Successor 7
            SE_stall_entry_fromReg7 <= SE_stall_entry_toReg7;
            // Successor 8
            SE_stall_entry_fromReg8 <= SE_stall_entry_toReg8;
            // Successor 9
            SE_stall_entry_fromReg9 <= SE_stall_entry_toReg9;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_inc35111_add10_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    assign SE_stall_entry_consumed6 = (~ (i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg6;
    assign SE_stall_entry_consumed7 = (~ (i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg7;
    assign SE_stall_entry_consumed8 = (~ (i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg8;
    assign SE_stall_entry_consumed9 = (~ (SE_redist0_stall_entry_o4_2_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg9;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    assign SE_stall_entry_toReg6 = SE_stall_entry_StallValid & SE_stall_entry_consumed6;
    assign SE_stall_entry_toReg7 = SE_stall_entry_StallValid & SE_stall_entry_consumed7;
    assign SE_stall_entry_toReg8 = SE_stall_entry_StallValid & SE_stall_entry_consumed8;
    assign SE_stall_entry_toReg9 = SE_stall_entry_StallValid & SE_stall_entry_consumed9;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_or5 = SE_stall_entry_consumed5 & SE_stall_entry_or4;
    assign SE_stall_entry_or6 = SE_stall_entry_consumed6 & SE_stall_entry_or5;
    assign SE_stall_entry_or7 = SE_stall_entry_consumed7 & SE_stall_entry_or6;
    assign SE_stall_entry_or8 = SE_stall_entry_consumed8 & SE_stall_entry_or7;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed9 & SE_stall_entry_or8);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    assign SE_stall_entry_V6 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg6);
    assign SE_stall_entry_V7 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg7);
    assign SE_stall_entry_V8 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg8);
    assign SE_stall_entry_V9 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg9);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0(BLACKBOX,16)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_34_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_i_llvm_fpga_ffwd_dest_i32_replace_phi98_0 thei_llvm_fpga_ffwd_dest_i32_replace_phi98_add0 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_backStall),
        .in_valid_in(SE_stall_entry_V8),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0(BITJOIN,90)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_q = i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0(BITSELECT,91)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_lm13413113_add2(BITJOIN,84)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_q = i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_out_dest_data_out_43_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13413113_add2(BITSELECT,85)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1(BITJOIN,67)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_q = i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_out_dest_data_out_35_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1(BITSELECT,68)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_select146_add3(MUX,20)@1
    assign i_select146_add3_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_b;
    always @(i_select146_add3_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_b)
    begin
        unique case (i_select146_add3_s)
            1'b0 : i_select146_add3_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_b;
            1'b1 : i_select146_add3_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_b;
            default : i_select146_add3_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14(BLACKBOX,17)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_44_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_80_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add80_add14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_44_0(i_select146_add3_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_V1),
        .out_intel_reserved_ffwd_44_0(i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_out_intel_reserved_ffwd_44_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14(STALLENABLE,126)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg(STALLENABLE,208)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_v_s_0;
            end

        end
    end

    // SE_redist0_stall_entry_o4_2_1(STALLENABLE,136)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_2_1_V0 = SE_redist0_stall_entry_o4_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_2_1_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_backStall & SE_redist0_stall_entry_o4_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_2_1_backEN = ~ (SE_redist0_stall_entry_o4_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_2_1_v_s_0 = SE_redist0_stall_entry_o4_2_1_backEN & SE_redist0_stall_entry_o4_2_0_V0;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_2_1_backStall = ~ (SE_redist0_stall_entry_o4_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o4_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_2_1_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_2_1_R_v_0 <= SE_redist0_stall_entry_o4_2_1_R_v_0 & SE_redist0_stall_entry_o4_2_1_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_2_1_R_v_0 <= SE_redist0_stall_entry_o4_2_1_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg(STALLENABLE,205)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg(STALLENABLE,206)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg(STALLENABLE,207)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1(STALLENABLE,162)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and0 = bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_V0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and1 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and2 = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and3 = SE_redist0_stall_entry_o4_2_1_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and4 = SE_i_unnamed_add13_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and5 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_and5;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12(STALLENABLE,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_1_reg_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_consumed1 = (~ (SE_i_unnamed_add13_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_out_valid_out;

    // SE_i_unnamed_add13(STALLENABLE,131)
    // Valid signal propagation
    assign SE_i_unnamed_add13_V0 = SE_i_unnamed_add13_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_add13_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_backStall & SE_i_unnamed_add13_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_add13_backEN = ~ (SE_i_unnamed_add13_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_add13_and0 = SE_i_unnamed_add9_V0 & SE_i_unnamed_add13_backEN;
    assign SE_i_unnamed_add13_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_V1 & SE_i_unnamed_add13_and0;
    // Backward Stall generation
    assign SE_i_unnamed_add13_backStall = ~ (SE_i_unnamed_add13_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_add13_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_add13_backEN == 1'b0)
            begin
                SE_i_unnamed_add13_R_v_0 <= SE_i_unnamed_add13_R_v_0 & SE_i_unnamed_add13_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_add13_R_v_0 <= SE_i_unnamed_add13_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10(STALLENABLE,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_reg_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_consumed1 = (~ (SE_i_unnamed_add9_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_wireValid = i_llvm_fpga_ffwd_dest_i32_inc35111_add10_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8(STALLENABLE,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_1_reg_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_consumed1 = (~ (SE_i_unnamed_add9_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_wireValid = i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0(STALLENABLE,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_consumed0 = (~ (SE_i_unnamed_add9_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_and0 = i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_and1 = i_llvm_fpga_ffwd_dest_i32_lm13413113_add2_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_add77_add1_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_and1;

    // SE_i_unnamed_add9(STALLENABLE,132)
    // Valid signal propagation
    assign SE_i_unnamed_add9_V0 = SE_i_unnamed_add9_wireValid;
    // Backward Stall generation
    assign SE_i_unnamed_add9_backStall = SE_i_unnamed_add13_backStall | ~ (SE_i_unnamed_add9_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_add9_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_V0;
    assign SE_i_unnamed_add9_and1 = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi98_add0_V0 & SE_i_unnamed_add9_and0;
    assign SE_i_unnamed_add9_and2 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_V1 & SE_i_unnamed_add9_and1;
    assign SE_i_unnamed_add9_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_V1 & SE_i_unnamed_add9_and2;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_35_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_i_llvm_fpga_ffwd_dest_i1_unnamed_78_add0 thei_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5 (
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_35_0(i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_out_dest_data_out_35_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_lm13212112_add6(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_42_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_i_llvm_fpga_ffwd_dest_i32_lm13212112_0 thei_llvm_fpga_ffwd_dest_i32_lm13212112_add6 (
        .in_intel_reserved_ffwd_42_0(in_intel_reserved_ffwd_42_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_backStall),
        .in_valid_in(SE_stall_entry_V5),
        .out_dest_data_out_42_0(i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_out_dest_data_out_42_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_33_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    add_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_0 thei_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4 (
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_backStall),
        .in_valid_in(SE_stall_entry_V7),
        .out_dest_data_out_33_0(i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_out_dest_data_out_33_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4(STALLENABLE,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_consumed0 = (~ (SE_i_unnamed_add9_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_and0 = i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_and1 = i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_and1;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15(STALLENABLE,128)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_out_valid_out;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4(BITJOIN,87)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_q = i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_out_dest_data_out_33_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4(BITSELECT,88)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_lm13212112_add6(BITJOIN,81)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_q = i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_out_dest_data_out_42_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13212112_add6(BITSELECT,82)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5(BITJOIN,70)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_q = i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_out_dest_data_out_35_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5(BITSELECT,71)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_q[0:0]);

    // i_select141_add7(MUX,19)@1
    assign i_select141_add7_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add78_add5_b;
    always @(i_select141_add7_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_b)
    begin
        unique case (i_select141_add7_s)
            1'b0 : i_select141_add7_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13212112_add6_b;
            1'b1 : i_select141_add7_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_b;
            default : i_select141_add7_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15(BLACKBOX,18)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_45_0@20000000
    // out out_stall_out@20000000
    add_i_llvm_fpga_ffwd_source_i32_unnamed_81_add0 thei_llvm_fpga_ffwd_source_i32_unnamed_add81_add15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_45_0(i_select141_add7_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_replace_phi5094_add4_V1),
        .out_intel_reserved_ffwd_45_0(i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_out_intel_reserved_ffwd_45_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,2)
    assign out_intel_reserved_ffwd_45_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add81_add15_out_intel_reserved_ffwd_45_0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12(BITJOIN,73)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_q = i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_out_dest_data_out_14_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12(BITSELECT,74)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8(BITJOIN,63)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_q = i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8(BITSELECT,64)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_q[0:0]);

    // i_unnamed_add9(MUX,22)@1
    assign i_unnamed_add9_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool_i_i30_add8_b;
    always @(i_unnamed_add9_s or i_select141_add7_q or i_select146_add3_q)
    begin
        unique case (i_unnamed_add9_s)
            1'b0 : i_unnamed_add9_q = i_select141_add7_q;
            1'b1 : i_unnamed_add9_q = i_select146_add3_q;
            default : i_unnamed_add9_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_inc35111_add10(BITJOIN,77)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_q = i_llvm_fpga_ffwd_dest_i32_inc35111_add10_out_dest_data_out_41_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_inc35111_add10(BITSELECT,78)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_q[31:0]);

    // i_cmp24_add11(COMPARE,7)@1
    assign i_cmp24_add11_a = {2'b00, bubble_select_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_b};
    assign i_cmp24_add11_b = {2'b00, i_unnamed_add9_q};
    assign i_cmp24_add11_o = $unsigned(i_cmp24_add11_a) - $unsigned(i_cmp24_add11_b);
    assign i_cmp24_add11_c[0] = i_cmp24_add11_o[33];

    // i_unnamed_add13(LOGICAL,21)@1 + 1
    assign i_unnamed_add13_qi = i_cmp24_add11_c & bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_add79_add12_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_add13_delay ( .xin(i_unnamed_add13_qi), .xout(i_unnamed_add13_q), .ena(SE_i_unnamed_add13_backEN[0]), .clk(clock), .aclr(resetn) );

    // bubble_join_stall_entry(BITJOIN,95)
    assign bubble_join_stall_entry_q = in_inc35145_push142;

    // bubble_select_stall_entry(BITSELECT,96)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // redist0_stall_entry_o4_2_0(REG,60)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o4_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_stall_entry_o4_2_0_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_2_0_q <= $unsigned(bubble_select_stall_entry_b);
        end
    end

    // redist0_stall_entry_o4_2_1(REG,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o4_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_stall_entry_o4_2_1_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_2_1_q <= $unsigned(redist0_stall_entry_o4_2_0_q);
        end
    end

    // dupName_0_sync_out_x(GPOUT,3)@2
    assign out_inc35145_push142 = redist0_stall_entry_o4_2_1_q;
    assign out_unnamed_add76 = i_unnamed_add13_q;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_inc35111_add10_1_V0;

    // regfree_osync(GPOUT,53)
    assign out_intel_reserved_ffwd_44_0 = i_llvm_fpga_ffwd_source_i32_unnamed_add80_add14_out_intel_reserved_ffwd_44_0;

    // sync_out(GPOUT,57)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
