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

// SystemVerilog created from add_function
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_B,
    input wire [63:0] in_arg_C,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [191:0] in_iord_bl_call_add_i_fifodata,
    input wire [0:0] in_iord_bl_call_add_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_add_i_fifoready,
    input wire [63:0] in_lm1076_add_avm_readdata,
    input wire [0:0] in_lm1076_add_avm_readdatavalid,
    input wire [0:0] in_lm1076_add_avm_waitrequest,
    input wire [0:0] in_lm1076_add_avm_writeack,
    input wire [63:0] in_lm1097_add_avm_readdata,
    input wire [0:0] in_lm1097_add_avm_readdatavalid,
    input wire [0:0] in_lm1097_add_avm_waitrequest,
    input wire [0:0] in_lm1097_add_avm_writeack,
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
    input wire [63:0] in_memdep_16_add_avm_readdata,
    input wire [0:0] in_memdep_16_add_avm_readdatavalid,
    input wire [0:0] in_memdep_16_add_avm_waitrequest,
    input wire [0:0] in_memdep_16_add_avm_writeack,
    input wire [63:0] in_memdep_add_avm_readdata,
    input wire [0:0] in_memdep_add_avm_readdatavalid,
    input wire [0:0] in_memdep_add_avm_waitrequest,
    input wire [0:0] in_memdep_add_avm_writeack,
    input wire [63:0] in_ml3211_add_avm_readdata,
    input wire [0:0] in_ml3211_add_avm_readdatavalid,
    input wire [0:0] in_ml3211_add_avm_waitrequest,
    input wire [0:0] in_ml3211_add_avm_writeack,
    input wire [63:0] in_ml358_add_avm_readdata,
    input wire [0:0] in_ml358_add_avm_readdatavalid,
    input wire [0:0] in_ml358_add_avm_waitrequest,
    input wire [0:0] in_ml358_add_avm_writeack,
    input wire [63:0] in_ml535_add_avm_readdata,
    input wire [0:0] in_ml535_add_avm_readdatavalid,
    input wire [0:0] in_ml535_add_avm_waitrequest,
    input wire [0:0] in_ml535_add_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
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
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_add_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_add_o_fifoready,
    output wire [0:0] out_iowr_bl_return_add_o_fifodata,
    output wire [0:0] out_iowr_bl_return_add_o_fifovalid,
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
    output wire [63:0] out_memdep_16_add_avm_address,
    output wire [0:0] out_memdep_16_add_avm_burstcount,
    output wire [7:0] out_memdep_16_add_avm_byteenable,
    output wire [0:0] out_memdep_16_add_avm_enable,
    output wire [0:0] out_memdep_16_add_avm_read,
    output wire [0:0] out_memdep_16_add_avm_write,
    output wire [63:0] out_memdep_16_add_avm_writedata,
    output wire [63:0] out_memdep_add_avm_address,
    output wire [0:0] out_memdep_add_avm_burstcount,
    output wire [7:0] out_memdep_add_avm_byteenable,
    output wire [0:0] out_memdep_add_avm_enable,
    output wire [0:0] out_memdep_add_avm_read,
    output wire [0:0] out_memdep_add_avm_write,
    output wire [63:0] out_memdep_add_avm_writedata,
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
    output wire [63:0] out_ml535_add_avm_address,
    output wire [0:0] out_ml535_add_avm_burstcount,
    output wire [7:0] out_ml535_add_avm_byteenable,
    output wire [0:0] out_ml535_add_avm_enable,
    output wire [0:0] out_ml535_add_avm_read,
    output wire [0:0] out_ml535_add_avm_write,
    output wire [63:0] out_ml535_add_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_o_active_memdep_16,
    output wire [0:0] out_stall_out,
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
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_add_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B10_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_add_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_add_B12_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B12_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_add_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_add_B1_start_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B1_start_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_add_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B1_start_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_add_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_add_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B3_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_add_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_add_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_add_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B4_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_add_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_add_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_add_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_add_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_add_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_add_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B5_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_add_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_add_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B6_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_add_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_add_B7_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_add_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B7_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_add_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_add_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_add_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_add_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_add_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_add_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B8_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_add_B9_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_add_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_add_B9_sr_0_aunroll_x_out_o_valid;
    wire [0:0] add_B1_start_x_i_capture;
    wire add_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] add_B1_start_x_i_clear;
    wire add_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] add_B1_start_x_i_enable;
    wire add_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] add_B1_start_x_i_shift;
    wire add_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] add_B1_start_x_i_stall_pred;
    wire add_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] add_B1_start_x_i_stall_succ;
    wire add_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] add_B1_start_x_i_valid_loop;
    wire add_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] add_B1_start_x_i_valid_pred;
    wire add_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] add_B1_start_x_i_valid_succ;
    wire add_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] add_B4_x_i_capture;
    wire add_B4_x_i_capture_bitsignaltemp;
    wire [0:0] add_B4_x_i_clear;
    wire add_B4_x_i_clear_bitsignaltemp;
    wire [0:0] add_B4_x_i_enable;
    wire add_B4_x_i_enable_bitsignaltemp;
    wire [0:0] add_B4_x_i_shift;
    wire add_B4_x_i_shift_bitsignaltemp;
    wire [0:0] add_B4_x_i_stall_pred;
    wire add_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] add_B4_x_i_stall_succ;
    wire add_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] add_B4_x_i_valid_loop;
    wire add_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] add_B4_x_i_valid_pred;
    wire add_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] add_B4_x_i_valid_succ;
    wire add_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] add_B5_x_i_capture;
    wire add_B5_x_i_capture_bitsignaltemp;
    wire [0:0] add_B5_x_i_clear;
    wire add_B5_x_i_clear_bitsignaltemp;
    wire [0:0] add_B5_x_i_enable;
    wire add_B5_x_i_enable_bitsignaltemp;
    wire [0:0] add_B5_x_i_shift;
    wire add_B5_x_i_shift_bitsignaltemp;
    wire [0:0] add_B5_x_i_stall_pred;
    wire add_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] add_B5_x_i_stall_succ;
    wire add_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] add_B5_x_i_valid_loop;
    wire add_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] add_B5_x_i_valid_pred;
    wire add_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] add_B5_x_i_valid_succ;
    wire add_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] add_B7_x_i_capture;
    wire add_B7_x_i_capture_bitsignaltemp;
    wire [0:0] add_B7_x_i_clear;
    wire add_B7_x_i_clear_bitsignaltemp;
    wire [0:0] add_B7_x_i_enable;
    wire add_B7_x_i_enable_bitsignaltemp;
    wire [0:0] add_B7_x_i_shift;
    wire add_B7_x_i_shift_bitsignaltemp;
    wire [0:0] add_B7_x_i_stall_pred;
    wire add_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] add_B7_x_i_stall_succ;
    wire add_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] add_B7_x_i_valid_loop;
    wire add_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] add_B7_x_i_valid_pred;
    wire add_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] add_B7_x_i_valid_succ;
    wire add_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] add_B8_x_i_capture;
    wire add_B8_x_i_capture_bitsignaltemp;
    wire [0:0] add_B8_x_i_clear;
    wire add_B8_x_i_clear_bitsignaltemp;
    wire [0:0] add_B8_x_i_enable;
    wire add_B8_x_i_enable_bitsignaltemp;
    wire [0:0] add_B8_x_i_shift;
    wire add_B8_x_i_shift_bitsignaltemp;
    wire [0:0] add_B8_x_i_stall_pred;
    wire add_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] add_B8_x_i_stall_succ;
    wire add_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] add_B8_x_i_valid_loop;
    wire add_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] add_B8_x_i_valid_pred;
    wire add_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] add_B8_x_i_valid_succ;
    wire add_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_add_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_add_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_add_B10_out_stall_out_0;
    wire [0:0] bb_add_B10_out_valid_out_0;
    wire [0:0] bb_add_B11_out_stall_out_0;
    wire [0:0] bb_add_B11_out_valid_out_0;
    wire [0:0] bb_add_B12_out_feedback_out_1;
    wire [0:0] bb_add_B12_out_feedback_valid_out_1;
    wire [0:0] bb_add_B12_out_iowr_bl_return_add_o_fifodata;
    wire [0:0] bb_add_B12_out_iowr_bl_return_add_o_fifovalid;
    wire [0:0] bb_add_B12_out_stall_in_0;
    wire [0:0] bb_add_B12_out_stall_out_0;
    wire [0:0] bb_add_B12_out_stall_out_1;
    wire [0:0] bb_add_B12_out_valid_out_0;
    wire [0:0] bb_add_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_add_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_add_B1_start_out_intel_reserved_ffwd_10_0;
    wire [31:0] bb_add_B1_start_out_intel_reserved_ffwd_11_0;
    wire [31:0] bb_add_B1_start_out_intel_reserved_ffwd_12_0;
    wire [0:0] bb_add_B1_start_out_intel_reserved_ffwd_13_0;
    wire [0:0] bb_add_B1_start_out_intel_reserved_ffwd_14_0;
    wire [0:0] bb_add_B1_start_out_intel_reserved_ffwd_15_0;
    wire [31:0] bb_add_B1_start_out_intel_reserved_ffwd_16_0;
    wire [31:0] bb_add_B1_start_out_intel_reserved_ffwd_17_0;
    wire [31:0] bb_add_B1_start_out_intel_reserved_ffwd_18_0;
    wire [31:0] bb_add_B1_start_out_intel_reserved_ffwd_19_0;
    wire [63:0] bb_add_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_add_B1_start_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_add_B1_start_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_add_B1_start_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_add_B1_start_out_intel_reserved_ffwd_5_0;
    wire [63:0] bb_add_B1_start_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_add_B1_start_out_intel_reserved_ffwd_7_0;
    wire [0:0] bb_add_B1_start_out_intel_reserved_ffwd_8_0;
    wire [63:0] bb_add_B1_start_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_add_B1_start_out_iord_bl_call_add_o_fifoalmost_full;
    wire [0:0] bb_add_B1_start_out_iord_bl_call_add_o_fifoready;
    wire [63:0] bb_add_B1_start_out_lm1_add_avm_address;
    wire [0:0] bb_add_B1_start_out_lm1_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_out_lm1_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_out_lm1_add_avm_enable;
    wire [0:0] bb_add_B1_start_out_lm1_add_avm_read;
    wire [0:0] bb_add_B1_start_out_lm1_add_avm_write;
    wire [63:0] bb_add_B1_start_out_lm1_add_avm_writedata;
    wire [63:0] bb_add_B1_start_out_lm722_add_avm_address;
    wire [0:0] bb_add_B1_start_out_lm722_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_out_lm722_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_out_lm722_add_avm_enable;
    wire [0:0] bb_add_B1_start_out_lm722_add_avm_read;
    wire [0:0] bb_add_B1_start_out_lm722_add_avm_write;
    wire [63:0] bb_add_B1_start_out_lm722_add_avm_writedata;
    wire [63:0] bb_add_B1_start_out_lm743_add_avm_address;
    wire [0:0] bb_add_B1_start_out_lm743_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_out_lm743_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_out_lm743_add_avm_enable;
    wire [0:0] bb_add_B1_start_out_lm743_add_avm_read;
    wire [0:0] bb_add_B1_start_out_lm743_add_avm_write;
    wire [63:0] bb_add_B1_start_out_lm743_add_avm_writedata;
    wire [0:0] bb_add_B1_start_out_stall_out_0;
    wire [0:0] bb_add_B1_start_out_stall_out_1;
    wire [63:0] bb_add_B1_start_out_unmaskedload_lm4_add_avm_address;
    wire [0:0] bb_add_B1_start_out_unmaskedload_lm4_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_out_unmaskedload_lm4_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_out_unmaskedload_lm4_add_avm_enable;
    wire [0:0] bb_add_B1_start_out_unmaskedload_lm4_add_avm_read;
    wire [0:0] bb_add_B1_start_out_unmaskedload_lm4_add_avm_write;
    wire [63:0] bb_add_B1_start_out_unmaskedload_lm4_add_avm_writedata;
    wire [63:0] bb_add_B1_start_out_unnamed_add2_add_avm_address;
    wire [0:0] bb_add_B1_start_out_unnamed_add2_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_out_unnamed_add2_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_out_unnamed_add2_add_avm_enable;
    wire [0:0] bb_add_B1_start_out_unnamed_add2_add_avm_read;
    wire [0:0] bb_add_B1_start_out_unnamed_add2_add_avm_write;
    wire [63:0] bb_add_B1_start_out_unnamed_add2_add_avm_writedata;
    wire [63:0] bb_add_B1_start_out_unnamed_add3_add_avm_address;
    wire [0:0] bb_add_B1_start_out_unnamed_add3_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_out_unnamed_add3_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_out_unnamed_add3_add_avm_enable;
    wire [0:0] bb_add_B1_start_out_unnamed_add3_add_avm_read;
    wire [0:0] bb_add_B1_start_out_unnamed_add3_add_avm_write;
    wire [63:0] bb_add_B1_start_out_unnamed_add3_add_avm_writedata;
    wire [63:0] bb_add_B1_start_out_unnamed_add4_add_avm_address;
    wire [0:0] bb_add_B1_start_out_unnamed_add4_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_out_unnamed_add4_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_out_unnamed_add4_add_avm_enable;
    wire [0:0] bb_add_B1_start_out_unnamed_add4_add_avm_read;
    wire [0:0] bb_add_B1_start_out_unnamed_add4_add_avm_write;
    wire [63:0] bb_add_B1_start_out_unnamed_add4_add_avm_writedata;
    wire [63:0] bb_add_B1_start_out_unnamed_add5_add_avm_address;
    wire [0:0] bb_add_B1_start_out_unnamed_add5_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_out_unnamed_add5_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_out_unnamed_add5_add_avm_enable;
    wire [0:0] bb_add_B1_start_out_unnamed_add5_add_avm_read;
    wire [0:0] bb_add_B1_start_out_unnamed_add5_add_avm_write;
    wire [63:0] bb_add_B1_start_out_unnamed_add5_add_avm_writedata;
    wire [63:0] bb_add_B1_start_out_unnamed_add6_add_avm_address;
    wire [0:0] bb_add_B1_start_out_unnamed_add6_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_out_unnamed_add6_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_out_unnamed_add6_add_avm_enable;
    wire [0:0] bb_add_B1_start_out_unnamed_add6_add_avm_read;
    wire [0:0] bb_add_B1_start_out_unnamed_add6_add_avm_write;
    wire [63:0] bb_add_B1_start_out_unnamed_add6_add_avm_writedata;
    wire [63:0] bb_add_B1_start_out_unnamed_add7_add_avm_address;
    wire [0:0] bb_add_B1_start_out_unnamed_add7_add_avm_burstcount;
    wire [7:0] bb_add_B1_start_out_unnamed_add7_add_avm_byteenable;
    wire [0:0] bb_add_B1_start_out_unnamed_add7_add_avm_enable;
    wire [0:0] bb_add_B1_start_out_unnamed_add7_add_avm_read;
    wire [0:0] bb_add_B1_start_out_unnamed_add7_add_avm_write;
    wire [63:0] bb_add_B1_start_out_unnamed_add7_add_avm_writedata;
    wire [0:0] bb_add_B1_start_out_valid_in_0;
    wire [0:0] bb_add_B1_start_out_valid_in_1;
    wire [0:0] bb_add_B1_start_out_valid_out_0;
    wire [0:0] bb_add_B1_start_out_valid_out_1;
    wire [0:0] bb_add_B2_out_stall_out_0;
    wire [0:0] bb_add_B2_out_valid_out_0;
    wire [0:0] bb_add_B3_out_stall_out_0;
    wire [0:0] bb_add_B3_out_valid_out_0;
    wire [31:0] bb_add_B4_out_inc7_i;
    wire [31:0] bb_add_B4_out_intel_reserved_ffwd_20_0;
    wire [31:0] bb_add_B4_out_intel_reserved_ffwd_21_0;
    wire [31:0] bb_add_B4_out_intel_reserved_ffwd_22_0;
    wire [0:0] bb_add_B4_out_intel_reserved_ffwd_23_0;
    wire [63:0] bb_add_B4_out_intel_reserved_ffwd_24_0;
    wire [0:0] bb_add_B4_out_intel_reserved_ffwd_25_0;
    wire [0:0] bb_add_B4_out_intel_reserved_ffwd_26_0;
    wire [31:0] bb_add_B4_out_intel_reserved_ffwd_27_0;
    wire [0:0] bb_add_B4_out_stall_out_0;
    wire [0:0] bb_add_B4_out_stall_out_1;
    wire [0:0] bb_add_B4_out_valid_in_0;
    wire [0:0] bb_add_B4_out_valid_in_1;
    wire [0:0] bb_add_B4_out_valid_out_0;
    wire [0:0] bb_add_B5_out_exiting_stall_out;
    wire [0:0] bb_add_B5_out_exiting_valid_out;
    wire [31:0] bb_add_B5_out_inc7_i146_push23;
    wire [31:0] bb_add_B5_out_intel_reserved_ffwd_28_0;
    wire [31:0] bb_add_B5_out_intel_reserved_ffwd_29_0;
    wire [63:0] bb_add_B5_out_lm1076_add_avm_address;
    wire [0:0] bb_add_B5_out_lm1076_add_avm_burstcount;
    wire [7:0] bb_add_B5_out_lm1076_add_avm_byteenable;
    wire [0:0] bb_add_B5_out_lm1076_add_avm_enable;
    wire [0:0] bb_add_B5_out_lm1076_add_avm_read;
    wire [0:0] bb_add_B5_out_lm1076_add_avm_write;
    wire [63:0] bb_add_B5_out_lm1076_add_avm_writedata;
    wire [63:0] bb_add_B5_out_lm1097_add_avm_address;
    wire [0:0] bb_add_B5_out_lm1097_add_avm_burstcount;
    wire [7:0] bb_add_B5_out_lm1097_add_avm_byteenable;
    wire [0:0] bb_add_B5_out_lm1097_add_avm_enable;
    wire [0:0] bb_add_B5_out_lm1097_add_avm_read;
    wire [0:0] bb_add_B5_out_lm1097_add_avm_write;
    wire [63:0] bb_add_B5_out_lm1097_add_avm_writedata;
    wire [0:0] bb_add_B5_out_lsu_memdep_o_active;
    wire [63:0] bb_add_B5_out_memdep_add_avm_address;
    wire [0:0] bb_add_B5_out_memdep_add_avm_burstcount;
    wire [7:0] bb_add_B5_out_memdep_add_avm_byteenable;
    wire [0:0] bb_add_B5_out_memdep_add_avm_enable;
    wire [0:0] bb_add_B5_out_memdep_add_avm_read;
    wire [0:0] bb_add_B5_out_memdep_add_avm_write;
    wire [63:0] bb_add_B5_out_memdep_add_avm_writedata;
    wire [63:0] bb_add_B5_out_ml535_add_avm_address;
    wire [0:0] bb_add_B5_out_ml535_add_avm_burstcount;
    wire [7:0] bb_add_B5_out_ml535_add_avm_byteenable;
    wire [0:0] bb_add_B5_out_ml535_add_avm_enable;
    wire [0:0] bb_add_B5_out_ml535_add_avm_read;
    wire [0:0] bb_add_B5_out_ml535_add_avm_write;
    wire [63:0] bb_add_B5_out_ml535_add_avm_writedata;
    wire [0:0] bb_add_B5_out_pipeline_valid_out;
    wire [0:0] bb_add_B5_out_stall_in_0;
    wire [0:0] bb_add_B5_out_stall_out_0;
    wire [0:0] bb_add_B5_out_stall_out_1;
    wire [0:0] bb_add_B5_out_valid_in_0;
    wire [0:0] bb_add_B5_out_valid_in_1;
    wire [0:0] bb_add_B5_out_valid_out_0;
    wire [31:0] bb_add_B6_out_inc7_i146_push231;
    wire [31:0] bb_add_B6_out_intel_reserved_ffwd_30_0;
    wire [31:0] bb_add_B6_out_intel_reserved_ffwd_31_0;
    wire [0:0] bb_add_B6_out_stall_in_0;
    wire [0:0] bb_add_B6_out_stall_out_0;
    wire [0:0] bb_add_B6_out_valid_out_0;
    wire [0:0] bb_add_B6_out_valid_out_1;
    wire [31:0] bb_add_B7_out_inc35;
    wire [31:0] bb_add_B7_out_intel_reserved_ffwd_32_0;
    wire [31:0] bb_add_B7_out_intel_reserved_ffwd_33_0;
    wire [31:0] bb_add_B7_out_intel_reserved_ffwd_34_0;
    wire [0:0] bb_add_B7_out_intel_reserved_ffwd_35_0;
    wire [63:0] bb_add_B7_out_intel_reserved_ffwd_36_0;
    wire [31:0] bb_add_B7_out_intel_reserved_ffwd_37_0;
    wire [63:0] bb_add_B7_out_intel_reserved_ffwd_38_0;
    wire [0:0] bb_add_B7_out_intel_reserved_ffwd_39_0;
    wire [0:0] bb_add_B7_out_intel_reserved_ffwd_40_0;
    wire [31:0] bb_add_B7_out_intel_reserved_ffwd_41_0;
    wire [0:0] bb_add_B7_out_stall_out_0;
    wire [0:0] bb_add_B7_out_stall_out_1;
    wire [0:0] bb_add_B7_out_valid_in_0;
    wire [0:0] bb_add_B7_out_valid_in_1;
    wire [0:0] bb_add_B7_out_valid_out_0;
    wire [0:0] bb_add_B8_out_exiting_stall_out;
    wire [0:0] bb_add_B8_out_exiting_valid_out;
    wire [31:0] bb_add_B8_out_inc35145_push14;
    wire [31:0] bb_add_B8_out_intel_reserved_ffwd_42_0;
    wire [31:0] bb_add_B8_out_intel_reserved_ffwd_43_0;
    wire [63:0] bb_add_B8_out_lm1269_add_avm_address;
    wire [0:0] bb_add_B8_out_lm1269_add_avm_burstcount;
    wire [7:0] bb_add_B8_out_lm1269_add_avm_byteenable;
    wire [0:0] bb_add_B8_out_lm1269_add_avm_enable;
    wire [0:0] bb_add_B8_out_lm1269_add_avm_read;
    wire [0:0] bb_add_B8_out_lm1269_add_avm_write;
    wire [63:0] bb_add_B8_out_lm1269_add_avm_writedata;
    wire [63:0] bb_add_B8_out_lm12810_add_avm_address;
    wire [0:0] bb_add_B8_out_lm12810_add_avm_burstcount;
    wire [7:0] bb_add_B8_out_lm12810_add_avm_byteenable;
    wire [0:0] bb_add_B8_out_lm12810_add_avm_enable;
    wire [0:0] bb_add_B8_out_lm12810_add_avm_read;
    wire [0:0] bb_add_B8_out_lm12810_add_avm_write;
    wire [63:0] bb_add_B8_out_lm12810_add_avm_writedata;
    wire [63:0] bb_add_B8_out_lm13212_add_avm_address;
    wire [0:0] bb_add_B8_out_lm13212_add_avm_burstcount;
    wire [7:0] bb_add_B8_out_lm13212_add_avm_byteenable;
    wire [0:0] bb_add_B8_out_lm13212_add_avm_enable;
    wire [0:0] bb_add_B8_out_lm13212_add_avm_read;
    wire [0:0] bb_add_B8_out_lm13212_add_avm_write;
    wire [63:0] bb_add_B8_out_lm13212_add_avm_writedata;
    wire [63:0] bb_add_B8_out_lm13413_add_avm_address;
    wire [0:0] bb_add_B8_out_lm13413_add_avm_burstcount;
    wire [7:0] bb_add_B8_out_lm13413_add_avm_byteenable;
    wire [0:0] bb_add_B8_out_lm13413_add_avm_enable;
    wire [0:0] bb_add_B8_out_lm13413_add_avm_read;
    wire [0:0] bb_add_B8_out_lm13413_add_avm_write;
    wire [63:0] bb_add_B8_out_lm13413_add_avm_writedata;
    wire [0:0] bb_add_B8_out_lsu_memdep_16_o_active;
    wire [63:0] bb_add_B8_out_memdep_16_add_avm_address;
    wire [0:0] bb_add_B8_out_memdep_16_add_avm_burstcount;
    wire [7:0] bb_add_B8_out_memdep_16_add_avm_byteenable;
    wire [0:0] bb_add_B8_out_memdep_16_add_avm_enable;
    wire [0:0] bb_add_B8_out_memdep_16_add_avm_read;
    wire [0:0] bb_add_B8_out_memdep_16_add_avm_write;
    wire [63:0] bb_add_B8_out_memdep_16_add_avm_writedata;
    wire [63:0] bb_add_B8_out_ml3211_add_avm_address;
    wire [0:0] bb_add_B8_out_ml3211_add_avm_burstcount;
    wire [7:0] bb_add_B8_out_ml3211_add_avm_byteenable;
    wire [0:0] bb_add_B8_out_ml3211_add_avm_enable;
    wire [0:0] bb_add_B8_out_ml3211_add_avm_read;
    wire [0:0] bb_add_B8_out_ml3211_add_avm_write;
    wire [63:0] bb_add_B8_out_ml3211_add_avm_writedata;
    wire [63:0] bb_add_B8_out_ml358_add_avm_address;
    wire [0:0] bb_add_B8_out_ml358_add_avm_burstcount;
    wire [7:0] bb_add_B8_out_ml358_add_avm_byteenable;
    wire [0:0] bb_add_B8_out_ml358_add_avm_enable;
    wire [0:0] bb_add_B8_out_ml358_add_avm_read;
    wire [0:0] bb_add_B8_out_ml358_add_avm_write;
    wire [63:0] bb_add_B8_out_ml358_add_avm_writedata;
    wire [0:0] bb_add_B8_out_pipeline_valid_out;
    wire [0:0] bb_add_B8_out_stall_in_0;
    wire [0:0] bb_add_B8_out_stall_out_0;
    wire [0:0] bb_add_B8_out_stall_out_1;
    wire [0:0] bb_add_B8_out_valid_in_0;
    wire [0:0] bb_add_B8_out_valid_in_1;
    wire [0:0] bb_add_B8_out_valid_out_0;
    wire [31:0] bb_add_B9_out_inc35145_push142;
    wire [31:0] bb_add_B9_out_intel_reserved_ffwd_44_0;
    wire [31:0] bb_add_B9_out_intel_reserved_ffwd_45_0;
    wire [0:0] bb_add_B9_out_stall_in_0;
    wire [0:0] bb_add_B9_out_stall_out_0;
    wire [0:0] bb_add_B9_out_valid_out_0;
    wire [0:0] bb_add_B9_out_valid_out_1;
    wire [31:0] c_i32_020_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_add45_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_add45_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_add30_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_add30_sr_out_o_valid;
    wire [0:0] loop_limiter_add0_out_o_stall;
    wire [0:0] loop_limiter_add0_out_o_valid;
    wire [0:0] loop_limiter_add1_out_o_stall;
    wire [0:0] loop_limiter_add1_out_o_valid;
    wire [0:0] loop_limiter_add2_out_o_stall;
    wire [0:0] loop_limiter_add2_out_o_valid;
    wire [0:0] loop_limiter_add3_out_o_stall;
    wire [0:0] loop_limiter_add3_out_o_valid;


    // bb_add_B1_start_sr_0_aunroll_x(BLACKBOX,6)
    add_bb_B1_start_sr_0 thebb_add_B1_start_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_add_B1_start_out_stall_out_0),
        .in_i_valid(bb_add_B12_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_add_B1_start_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B1_start_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B7_sr_0_aunroll_x(BLACKBOX,14)
    add_bb_B7_sr_0 thebb_add_B7_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_add_B9_out_inc35145_push142),
        .in_i_data_1_tpl(GND_q),
        .in_i_stall(bb_add_B7_out_stall_out_0),
        .in_i_valid(bb_add_B9_out_valid_out_0),
        .out_o_data_0_tpl(bb_add_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_add_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_add_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B7_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going126_add45_sr(BLACKBOX,71)
    add_i_llvm_fpga_pipeline_keep_going126_45_sr thei_llvm_fpga_pipeline_keep_going126_add45_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_add_B8_out_stall_out_0),
        .in_i_valid(bb_add_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going126_add45_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going126_add45_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_020(CONSTANT,66)
    assign c_i32_020_q = $unsigned(32'b00000000000000000000000000000000);

    // loop_limiter_add2(BLACKBOX,170)
    add_loop_limiter_2 theloop_limiter_add2 (
        .in_i_stall(bb_add_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_add_B8_out_exiting_stall_out),
        .in_i_valid(bb_add_B7_out_valid_out_0),
        .in_i_valid_exit(bb_add_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_add2_out_o_stall),
        .out_o_valid(loop_limiter_add2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B8_sr_1_aunroll_x(BLACKBOX,16)
    add_bb_B8_sr_1 thebb_add_B8_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_add_B7_out_inc35),
        .in_i_stall(bb_add_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_add2_out_o_valid),
        .out_o_data_0_tpl(bb_add_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_add_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_add_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B8_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B8(BLACKBOX,34)
    add_bb_B8 thebb_add_B8 (
        .in_flush(in_start),
        .in_forked95_0(GND_q),
        .in_forked95_1(bb_add_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_inc35149_0(c_i32_020_q),
        .in_inc35149_1(bb_add_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_0_0(bb_add_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(bb_add_B1_start_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_12_0(bb_add_B1_start_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_15_0(bb_add_B1_start_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(bb_add_B1_start_out_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(bb_add_B1_start_out_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_1_0(bb_add_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_add_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_32_0(bb_add_B7_out_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(bb_add_B7_out_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(bb_add_B7_out_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(bb_add_B7_out_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(bb_add_B7_out_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(bb_add_B7_out_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(bb_add_B7_out_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(bb_add_B7_out_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_3_0(bb_add_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_40_0(bb_add_B7_out_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_4_0(bb_add_B1_start_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(bb_add_B1_start_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_8_0(bb_add_B1_start_out_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(bb_add_B1_start_out_intel_reserved_ffwd_9_0),
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
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going126_add45_sr_out_o_stall),
        .in_stall_in_0(bb_add_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going126_add45_sr_out_o_valid),
        .in_valid_in_1(bb_add_B8_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_add_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_add_B8_out_exiting_valid_out),
        .out_inc35145_push14(bb_add_B8_out_inc35145_push14),
        .out_intel_reserved_ffwd_42_0(bb_add_B8_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_add_B8_out_intel_reserved_ffwd_43_0),
        .out_lm1269_add_avm_address(bb_add_B8_out_lm1269_add_avm_address),
        .out_lm1269_add_avm_burstcount(bb_add_B8_out_lm1269_add_avm_burstcount),
        .out_lm1269_add_avm_byteenable(bb_add_B8_out_lm1269_add_avm_byteenable),
        .out_lm1269_add_avm_enable(bb_add_B8_out_lm1269_add_avm_enable),
        .out_lm1269_add_avm_read(bb_add_B8_out_lm1269_add_avm_read),
        .out_lm1269_add_avm_write(bb_add_B8_out_lm1269_add_avm_write),
        .out_lm1269_add_avm_writedata(bb_add_B8_out_lm1269_add_avm_writedata),
        .out_lm12810_add_avm_address(bb_add_B8_out_lm12810_add_avm_address),
        .out_lm12810_add_avm_burstcount(bb_add_B8_out_lm12810_add_avm_burstcount),
        .out_lm12810_add_avm_byteenable(bb_add_B8_out_lm12810_add_avm_byteenable),
        .out_lm12810_add_avm_enable(bb_add_B8_out_lm12810_add_avm_enable),
        .out_lm12810_add_avm_read(bb_add_B8_out_lm12810_add_avm_read),
        .out_lm12810_add_avm_write(bb_add_B8_out_lm12810_add_avm_write),
        .out_lm12810_add_avm_writedata(bb_add_B8_out_lm12810_add_avm_writedata),
        .out_lm13212_add_avm_address(bb_add_B8_out_lm13212_add_avm_address),
        .out_lm13212_add_avm_burstcount(bb_add_B8_out_lm13212_add_avm_burstcount),
        .out_lm13212_add_avm_byteenable(bb_add_B8_out_lm13212_add_avm_byteenable),
        .out_lm13212_add_avm_enable(bb_add_B8_out_lm13212_add_avm_enable),
        .out_lm13212_add_avm_read(bb_add_B8_out_lm13212_add_avm_read),
        .out_lm13212_add_avm_write(bb_add_B8_out_lm13212_add_avm_write),
        .out_lm13212_add_avm_writedata(bb_add_B8_out_lm13212_add_avm_writedata),
        .out_lm13413_add_avm_address(bb_add_B8_out_lm13413_add_avm_address),
        .out_lm13413_add_avm_burstcount(bb_add_B8_out_lm13413_add_avm_burstcount),
        .out_lm13413_add_avm_byteenable(bb_add_B8_out_lm13413_add_avm_byteenable),
        .out_lm13413_add_avm_enable(bb_add_B8_out_lm13413_add_avm_enable),
        .out_lm13413_add_avm_read(bb_add_B8_out_lm13413_add_avm_read),
        .out_lm13413_add_avm_write(bb_add_B8_out_lm13413_add_avm_write),
        .out_lm13413_add_avm_writedata(bb_add_B8_out_lm13413_add_avm_writedata),
        .out_lsu_memdep_16_o_active(bb_add_B8_out_lsu_memdep_16_o_active),
        .out_memdep_16_add_avm_address(bb_add_B8_out_memdep_16_add_avm_address),
        .out_memdep_16_add_avm_burstcount(bb_add_B8_out_memdep_16_add_avm_burstcount),
        .out_memdep_16_add_avm_byteenable(bb_add_B8_out_memdep_16_add_avm_byteenable),
        .out_memdep_16_add_avm_enable(bb_add_B8_out_memdep_16_add_avm_enable),
        .out_memdep_16_add_avm_read(bb_add_B8_out_memdep_16_add_avm_read),
        .out_memdep_16_add_avm_write(bb_add_B8_out_memdep_16_add_avm_write),
        .out_memdep_16_add_avm_writedata(bb_add_B8_out_memdep_16_add_avm_writedata),
        .out_ml3211_add_avm_address(bb_add_B8_out_ml3211_add_avm_address),
        .out_ml3211_add_avm_burstcount(bb_add_B8_out_ml3211_add_avm_burstcount),
        .out_ml3211_add_avm_byteenable(bb_add_B8_out_ml3211_add_avm_byteenable),
        .out_ml3211_add_avm_enable(bb_add_B8_out_ml3211_add_avm_enable),
        .out_ml3211_add_avm_read(bb_add_B8_out_ml3211_add_avm_read),
        .out_ml3211_add_avm_write(bb_add_B8_out_ml3211_add_avm_write),
        .out_ml3211_add_avm_writedata(bb_add_B8_out_ml3211_add_avm_writedata),
        .out_ml358_add_avm_address(bb_add_B8_out_ml358_add_avm_address),
        .out_ml358_add_avm_burstcount(bb_add_B8_out_ml358_add_avm_burstcount),
        .out_ml358_add_avm_byteenable(bb_add_B8_out_ml358_add_avm_byteenable),
        .out_ml358_add_avm_enable(bb_add_B8_out_ml358_add_avm_enable),
        .out_ml358_add_avm_read(bb_add_B8_out_ml358_add_avm_read),
        .out_ml358_add_avm_write(bb_add_B8_out_ml358_add_avm_write),
        .out_ml358_add_avm_writedata(bb_add_B8_out_ml358_add_avm_writedata),
        .out_pipeline_valid_out(bb_add_B8_out_pipeline_valid_out),
        .out_stall_in_0(bb_add_B8_out_stall_in_0),
        .out_stall_out_0(bb_add_B8_out_stall_out_0),
        .out_stall_out_1(bb_add_B8_out_stall_out_1),
        .out_valid_in_0(bb_add_B8_out_valid_in_0),
        .out_valid_in_1(bb_add_B8_out_valid_in_1),
        .out_valid_out_0(bb_add_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B7(BLACKBOX,33)
    add_bb_B7 thebb_add_B7 (
        .in_forked_0(bb_add_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_forked_1(bb_add_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_i_0443_0(bb_add_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_i_0443_1(bb_add_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_11_0(bb_add_B1_start_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_13_0(bb_add_B1_start_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_18_0(bb_add_B1_start_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_3_0(bb_add_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_44_0(bb_add_B9_out_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(bb_add_B9_out_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_5_0(bb_add_B1_start_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(bb_add_B1_start_out_intel_reserved_ffwd_7_0),
        .in_stall_in_0(loop_limiter_add2_out_o_stall),
        .in_valid_in_0(bb_add_B7_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_add_B7_sr_1_aunroll_x_out_o_valid),
        .out_inc35(bb_add_B7_out_inc35),
        .out_intel_reserved_ffwd_32_0(bb_add_B7_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_add_B7_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_add_B7_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_add_B7_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_add_B7_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_add_B7_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_add_B7_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_add_B7_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(bb_add_B7_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_add_B7_out_intel_reserved_ffwd_41_0),
        .out_stall_out_0(bb_add_B7_out_stall_out_0),
        .out_stall_out_1(bb_add_B7_out_stall_out_1),
        .out_valid_in_0(bb_add_B7_out_valid_in_0),
        .out_valid_in_1(bb_add_B7_out_valid_in_1),
        .out_valid_out_0(bb_add_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B9_sr_0_aunroll_x(BLACKBOX,17)
    add_bb_B9_sr_0 thebb_add_B9_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_add_B8_out_inc35145_push14),
        .in_i_stall(bb_add_B9_out_stall_out_0),
        .in_i_valid(bb_add_B8_out_valid_out_0),
        .out_o_data_0_tpl(bb_add_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_add_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B9_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B9(BLACKBOX,35)
    add_bb_B9 thebb_add_B9 (
        .in_inc35145_push142_0(bb_add_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_14_0(bb_add_B1_start_out_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_33_0(bb_add_B7_out_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(bb_add_B7_out_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(bb_add_B7_out_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_3_0(bb_add_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_41_0(bb_add_B7_out_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_42_0(bb_add_B8_out_intel_reserved_ffwd_42_0),
        .in_intel_reserved_ffwd_43_0(bb_add_B8_out_intel_reserved_ffwd_43_0),
        .in_stall_in_0(bb_add_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_add_B11_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_add_B9_sr_0_aunroll_x_out_o_valid),
        .out_inc35145_push142(bb_add_B9_out_inc35145_push142),
        .out_intel_reserved_ffwd_44_0(bb_add_B9_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(bb_add_B9_out_intel_reserved_ffwd_45_0),
        .out_stall_in_0(bb_add_B9_out_stall_in_0),
        .out_stall_out_0(bb_add_B9_out_stall_out_0),
        .out_valid_out_0(bb_add_B9_out_valid_out_0),
        .out_valid_out_1(bb_add_B9_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B12_sr_0_aunroll_x(BLACKBOX,4)
    add_bb_B12_sr_0 thebb_add_B12_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_add_B12_out_stall_out_0),
        .in_i_valid(bb_add_B11_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_add_B12_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B12_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B11(BLACKBOX,25)
    add_bb_B11 thebb_add_B11 (
        .in_stall_in_0(bb_add_B12_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_add_B11_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_add_B11_out_stall_out_0),
        .out_valid_out_0(bb_add_B11_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B11_sr_0_aunroll_x(BLACKBOX,3)
    add_bb_B11_sr_0 thebb_add_B11_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_add_B11_out_stall_out_0),
        .in_i_valid(bb_add_B9_out_valid_out_1),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_add_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B11_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B7_sr_1_aunroll_x(BLACKBOX,15)
    add_bb_B7_sr_1 thebb_add_B7_sr_1_aunroll_x (
        .in_i_data_0_tpl(c_i32_020_q),
        .in_i_data_1_tpl(VCC_q),
        .in_i_stall(bb_add_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_add0_out_o_valid),
        .out_o_data_0_tpl(bb_add_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_add_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_add_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B7_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_add0(BLACKBOX,168)
    add_loop_limiter_0 theloop_limiter_add0 (
        .in_i_stall(bb_add_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_add_B11_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_add_B2_out_valid_out_0),
        .in_i_valid_exit(bb_add_B9_out_valid_out_1),
        .out_o_stall(loop_limiter_add0_out_o_stall),
        .out_o_valid(loop_limiter_add0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B2(BLACKBOX,28)
    add_bb_B2 thebb_add_B2 (
        .in_stall_in_0(loop_limiter_add0_out_o_stall),
        .in_valid_in_0(bb_add_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_add_B2_out_stall_out_0),
        .out_valid_out_0(bb_add_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B2_sr_0_aunroll_x(BLACKBOX,8)
    add_bb_B2_sr_0 thebb_add_B2_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_add_B2_out_stall_out_0),
        .in_i_valid(bb_add_B1_start_out_valid_out_1),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_add_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B2_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B4_sr_0_aunroll_x(BLACKBOX,10)
    add_bb_B4_sr_0 thebb_add_B4_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_add_B6_out_inc7_i146_push231),
        .in_i_data_1_tpl(GND_q),
        .in_i_stall(bb_add_B4_out_stall_out_0),
        .in_i_valid(bb_add_B6_out_valid_out_0),
        .out_o_data_0_tpl(bb_add_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_add_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_add_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B4_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_add30_sr(BLACKBOX,72)
    add_i_llvm_fpga_pipeline_keep_going_30_sr thei_llvm_fpga_pipeline_keep_going_add30_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_add_B5_out_stall_out_0),
        .in_i_valid(bb_add_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_add30_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_add30_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_add3(BLACKBOX,171)
    add_loop_limiter_3 theloop_limiter_add3 (
        .in_i_stall(bb_add_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_add_B5_out_exiting_stall_out),
        .in_i_valid(bb_add_B4_out_valid_out_0),
        .in_i_valid_exit(bb_add_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_add3_out_o_stall),
        .out_o_valid(loop_limiter_add3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B5_sr_1_aunroll_x(BLACKBOX,12)
    add_bb_B5_sr_1 thebb_add_B5_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_add_B4_out_inc7_i),
        .in_i_stall(bb_add_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_add3_out_o_valid),
        .out_o_data_0_tpl(bb_add_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_add_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_add_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B5_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B5(BLACKBOX,31)
    add_bb_B5 thebb_add_B5 (
        .in_flush(in_start),
        .in_forked73_0(GND_q),
        .in_forked73_1(bb_add_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_inc7_i147_0(c_i32_020_q),
        .in_inc7_i147_1(bb_add_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_0_0(bb_add_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_15_0(bb_add_B1_start_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(bb_add_B1_start_out_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(bb_add_B1_start_out_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_19_0(bb_add_B1_start_out_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_20_0(bb_add_B4_out_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(bb_add_B4_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(bb_add_B4_out_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(bb_add_B4_out_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(bb_add_B4_out_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(bb_add_B4_out_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(bb_add_B4_out_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_2_0(bb_add_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_add_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_add_B1_start_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(bb_add_B1_start_out_intel_reserved_ffwd_6_0),
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
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_add30_sr_out_o_stall),
        .in_stall_in_0(bb_add_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_add30_sr_out_o_valid),
        .in_valid_in_1(bb_add_B5_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_add_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_add_B5_out_exiting_valid_out),
        .out_inc7_i146_push23(bb_add_B5_out_inc7_i146_push23),
        .out_intel_reserved_ffwd_28_0(bb_add_B5_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_add_B5_out_intel_reserved_ffwd_29_0),
        .out_lm1076_add_avm_address(bb_add_B5_out_lm1076_add_avm_address),
        .out_lm1076_add_avm_burstcount(bb_add_B5_out_lm1076_add_avm_burstcount),
        .out_lm1076_add_avm_byteenable(bb_add_B5_out_lm1076_add_avm_byteenable),
        .out_lm1076_add_avm_enable(bb_add_B5_out_lm1076_add_avm_enable),
        .out_lm1076_add_avm_read(bb_add_B5_out_lm1076_add_avm_read),
        .out_lm1076_add_avm_write(bb_add_B5_out_lm1076_add_avm_write),
        .out_lm1076_add_avm_writedata(bb_add_B5_out_lm1076_add_avm_writedata),
        .out_lm1097_add_avm_address(bb_add_B5_out_lm1097_add_avm_address),
        .out_lm1097_add_avm_burstcount(bb_add_B5_out_lm1097_add_avm_burstcount),
        .out_lm1097_add_avm_byteenable(bb_add_B5_out_lm1097_add_avm_byteenable),
        .out_lm1097_add_avm_enable(bb_add_B5_out_lm1097_add_avm_enable),
        .out_lm1097_add_avm_read(bb_add_B5_out_lm1097_add_avm_read),
        .out_lm1097_add_avm_write(bb_add_B5_out_lm1097_add_avm_write),
        .out_lm1097_add_avm_writedata(bb_add_B5_out_lm1097_add_avm_writedata),
        .out_lsu_memdep_o_active(bb_add_B5_out_lsu_memdep_o_active),
        .out_memdep_add_avm_address(bb_add_B5_out_memdep_add_avm_address),
        .out_memdep_add_avm_burstcount(bb_add_B5_out_memdep_add_avm_burstcount),
        .out_memdep_add_avm_byteenable(bb_add_B5_out_memdep_add_avm_byteenable),
        .out_memdep_add_avm_enable(bb_add_B5_out_memdep_add_avm_enable),
        .out_memdep_add_avm_read(bb_add_B5_out_memdep_add_avm_read),
        .out_memdep_add_avm_write(bb_add_B5_out_memdep_add_avm_write),
        .out_memdep_add_avm_writedata(bb_add_B5_out_memdep_add_avm_writedata),
        .out_ml535_add_avm_address(bb_add_B5_out_ml535_add_avm_address),
        .out_ml535_add_avm_burstcount(bb_add_B5_out_ml535_add_avm_burstcount),
        .out_ml535_add_avm_byteenable(bb_add_B5_out_ml535_add_avm_byteenable),
        .out_ml535_add_avm_enable(bb_add_B5_out_ml535_add_avm_enable),
        .out_ml535_add_avm_read(bb_add_B5_out_ml535_add_avm_read),
        .out_ml535_add_avm_write(bb_add_B5_out_ml535_add_avm_write),
        .out_ml535_add_avm_writedata(bb_add_B5_out_ml535_add_avm_writedata),
        .out_pipeline_valid_out(bb_add_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_add_B5_out_stall_in_0),
        .out_stall_out_0(bb_add_B5_out_stall_out_0),
        .out_stall_out_1(bb_add_B5_out_stall_out_1),
        .out_valid_in_0(bb_add_B5_out_valid_in_0),
        .out_valid_in_1(bb_add_B5_out_valid_in_1),
        .out_valid_out_0(bb_add_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B4(BLACKBOX,30)
    add_bb_B4 thebb_add_B4 (
        .in_forked46_0(bb_add_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_forked46_1(bb_add_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_i_i_0449_0(bb_add_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_i_i_0449_1(bb_add_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_13_0(bb_add_B1_start_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_18_0(bb_add_B1_start_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_30_0(bb_add_B6_out_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(bb_add_B6_out_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_3_0(bb_add_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_5_0(bb_add_B1_start_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(bb_add_B1_start_out_intel_reserved_ffwd_7_0),
        .in_stall_in_0(loop_limiter_add3_out_o_stall),
        .in_valid_in_0(bb_add_B4_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_add_B4_sr_1_aunroll_x_out_o_valid),
        .out_inc7_i(bb_add_B4_out_inc7_i),
        .out_intel_reserved_ffwd_20_0(bb_add_B4_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_add_B4_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_add_B4_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_add_B4_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_add_B4_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_add_B4_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_add_B4_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_add_B4_out_intel_reserved_ffwd_27_0),
        .out_stall_out_0(bb_add_B4_out_stall_out_0),
        .out_stall_out_1(bb_add_B4_out_stall_out_1),
        .out_valid_in_0(bb_add_B4_out_valid_in_0),
        .out_valid_in_1(bb_add_B4_out_valid_in_1),
        .out_valid_out_0(bb_add_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B6_sr_0_aunroll_x(BLACKBOX,13)
    add_bb_B6_sr_0 thebb_add_B6_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_add_B5_out_inc7_i146_push23),
        .in_i_stall(bb_add_B6_out_stall_out_0),
        .in_i_valid(bb_add_B5_out_valid_out_0),
        .out_o_data_0_tpl(bb_add_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_add_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B6_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B6(BLACKBOX,32)
    add_bb_B6 thebb_add_B6 (
        .in_inc7_i146_push231_0(bb_add_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_14_0(bb_add_B1_start_out_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_21_0(bb_add_B4_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(bb_add_B4_out_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(bb_add_B4_out_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_27_0(bb_add_B4_out_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(bb_add_B5_out_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(bb_add_B5_out_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_3_0(bb_add_B1_start_out_intel_reserved_ffwd_3_0),
        .in_stall_in_0(bb_add_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_add_B10_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_add_B6_sr_0_aunroll_x_out_o_valid),
        .out_inc7_i146_push231(bb_add_B6_out_inc7_i146_push231),
        .out_intel_reserved_ffwd_30_0(bb_add_B6_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_add_B6_out_intel_reserved_ffwd_31_0),
        .out_stall_in_0(bb_add_B6_out_stall_in_0),
        .out_stall_out_0(bb_add_B6_out_stall_out_0),
        .out_valid_out_0(bb_add_B6_out_valid_out_0),
        .out_valid_out_1(bb_add_B6_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B12_sr_1_aunroll_x(BLACKBOX,5)
    add_bb_B12_sr_1 thebb_add_B12_sr_1_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_add_B12_out_stall_out_1),
        .in_i_valid(bb_add_B10_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_add_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B12_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B10(BLACKBOX,24)
    add_bb_B10 thebb_add_B10 (
        .in_stall_in_0(bb_add_B12_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_add_B10_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_add_B10_out_stall_out_0),
        .out_valid_out_0(bb_add_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B10_sr_0_aunroll_x(BLACKBOX,2)
    add_bb_B10_sr_0 thebb_add_B10_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_add_B10_out_stall_out_0),
        .in_i_valid(bb_add_B6_out_valid_out_1),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_add_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B10_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B4_sr_1_aunroll_x(BLACKBOX,11)
    add_bb_B4_sr_1 thebb_add_B4_sr_1_aunroll_x (
        .in_i_data_0_tpl(c_i32_020_q),
        .in_i_data_1_tpl(VCC_q),
        .in_i_stall(bb_add_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_add1_out_o_valid),
        .out_o_data_0_tpl(bb_add_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_add_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_add_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B4_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_add1(BLACKBOX,169)
    add_loop_limiter_1 theloop_limiter_add1 (
        .in_i_stall(bb_add_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_add_B10_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_add_B3_out_valid_out_0),
        .in_i_valid_exit(bb_add_B6_out_valid_out_1),
        .out_o_stall(loop_limiter_add1_out_o_stall),
        .out_o_valid(loop_limiter_add1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B3(BLACKBOX,29)
    add_bb_B3 thebb_add_B3 (
        .in_stall_in_0(loop_limiter_add1_out_o_stall),
        .in_valid_in_0(bb_add_B3_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_add_B3_out_stall_out_0),
        .out_valid_out_0(bb_add_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B3_sr_0_aunroll_x(BLACKBOX,9)
    add_bb_B3_sr_0 thebb_add_B3_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_add_B3_out_stall_out_0),
        .in_i_valid(bb_add_B1_start_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_add_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B3_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B1_start(BLACKBOX,27)
    add_bb_B1_start thebb_add_B1_start (
        .in_feedback_in_1(bb_add_B12_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_add_B12_out_feedback_valid_out_1),
        .in_flush(in_start),
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
        .in_stall_in_0(bb_add_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_add_B2_sr_0_aunroll_x_out_o_stall),
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
        .in_valid_in_0(bb_add_B1_start_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_add_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_feedback_stall_out_1(bb_add_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_add_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(bb_add_B1_start_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_add_B1_start_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_add_B1_start_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_add_B1_start_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_add_B1_start_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_add_B1_start_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_add_B1_start_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_add_B1_start_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_add_B1_start_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_add_B1_start_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_1_0(bb_add_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_add_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_add_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_add_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_add_B1_start_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_add_B1_start_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_add_B1_start_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_add_B1_start_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_add_B1_start_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_call_add_o_fifoalmost_full(bb_add_B1_start_out_iord_bl_call_add_o_fifoalmost_full),
        .out_iord_bl_call_add_o_fifoready(bb_add_B1_start_out_iord_bl_call_add_o_fifoready),
        .out_lm1_add_avm_address(bb_add_B1_start_out_lm1_add_avm_address),
        .out_lm1_add_avm_burstcount(bb_add_B1_start_out_lm1_add_avm_burstcount),
        .out_lm1_add_avm_byteenable(bb_add_B1_start_out_lm1_add_avm_byteenable),
        .out_lm1_add_avm_enable(bb_add_B1_start_out_lm1_add_avm_enable),
        .out_lm1_add_avm_read(bb_add_B1_start_out_lm1_add_avm_read),
        .out_lm1_add_avm_write(bb_add_B1_start_out_lm1_add_avm_write),
        .out_lm1_add_avm_writedata(bb_add_B1_start_out_lm1_add_avm_writedata),
        .out_lm722_add_avm_address(bb_add_B1_start_out_lm722_add_avm_address),
        .out_lm722_add_avm_burstcount(bb_add_B1_start_out_lm722_add_avm_burstcount),
        .out_lm722_add_avm_byteenable(bb_add_B1_start_out_lm722_add_avm_byteenable),
        .out_lm722_add_avm_enable(bb_add_B1_start_out_lm722_add_avm_enable),
        .out_lm722_add_avm_read(bb_add_B1_start_out_lm722_add_avm_read),
        .out_lm722_add_avm_write(bb_add_B1_start_out_lm722_add_avm_write),
        .out_lm722_add_avm_writedata(bb_add_B1_start_out_lm722_add_avm_writedata),
        .out_lm743_add_avm_address(bb_add_B1_start_out_lm743_add_avm_address),
        .out_lm743_add_avm_burstcount(bb_add_B1_start_out_lm743_add_avm_burstcount),
        .out_lm743_add_avm_byteenable(bb_add_B1_start_out_lm743_add_avm_byteenable),
        .out_lm743_add_avm_enable(bb_add_B1_start_out_lm743_add_avm_enable),
        .out_lm743_add_avm_read(bb_add_B1_start_out_lm743_add_avm_read),
        .out_lm743_add_avm_write(bb_add_B1_start_out_lm743_add_avm_write),
        .out_lm743_add_avm_writedata(bb_add_B1_start_out_lm743_add_avm_writedata),
        .out_stall_out_0(bb_add_B1_start_out_stall_out_0),
        .out_stall_out_1(bb_add_B1_start_out_stall_out_1),
        .out_unmaskedload_lm4_add_avm_address(bb_add_B1_start_out_unmaskedload_lm4_add_avm_address),
        .out_unmaskedload_lm4_add_avm_burstcount(bb_add_B1_start_out_unmaskedload_lm4_add_avm_burstcount),
        .out_unmaskedload_lm4_add_avm_byteenable(bb_add_B1_start_out_unmaskedload_lm4_add_avm_byteenable),
        .out_unmaskedload_lm4_add_avm_enable(bb_add_B1_start_out_unmaskedload_lm4_add_avm_enable),
        .out_unmaskedload_lm4_add_avm_read(bb_add_B1_start_out_unmaskedload_lm4_add_avm_read),
        .out_unmaskedload_lm4_add_avm_write(bb_add_B1_start_out_unmaskedload_lm4_add_avm_write),
        .out_unmaskedload_lm4_add_avm_writedata(bb_add_B1_start_out_unmaskedload_lm4_add_avm_writedata),
        .out_unnamed_add2_add_avm_address(bb_add_B1_start_out_unnamed_add2_add_avm_address),
        .out_unnamed_add2_add_avm_burstcount(bb_add_B1_start_out_unnamed_add2_add_avm_burstcount),
        .out_unnamed_add2_add_avm_byteenable(bb_add_B1_start_out_unnamed_add2_add_avm_byteenable),
        .out_unnamed_add2_add_avm_enable(bb_add_B1_start_out_unnamed_add2_add_avm_enable),
        .out_unnamed_add2_add_avm_read(bb_add_B1_start_out_unnamed_add2_add_avm_read),
        .out_unnamed_add2_add_avm_write(bb_add_B1_start_out_unnamed_add2_add_avm_write),
        .out_unnamed_add2_add_avm_writedata(bb_add_B1_start_out_unnamed_add2_add_avm_writedata),
        .out_unnamed_add3_add_avm_address(bb_add_B1_start_out_unnamed_add3_add_avm_address),
        .out_unnamed_add3_add_avm_burstcount(bb_add_B1_start_out_unnamed_add3_add_avm_burstcount),
        .out_unnamed_add3_add_avm_byteenable(bb_add_B1_start_out_unnamed_add3_add_avm_byteenable),
        .out_unnamed_add3_add_avm_enable(bb_add_B1_start_out_unnamed_add3_add_avm_enable),
        .out_unnamed_add3_add_avm_read(bb_add_B1_start_out_unnamed_add3_add_avm_read),
        .out_unnamed_add3_add_avm_write(bb_add_B1_start_out_unnamed_add3_add_avm_write),
        .out_unnamed_add3_add_avm_writedata(bb_add_B1_start_out_unnamed_add3_add_avm_writedata),
        .out_unnamed_add4_add_avm_address(bb_add_B1_start_out_unnamed_add4_add_avm_address),
        .out_unnamed_add4_add_avm_burstcount(bb_add_B1_start_out_unnamed_add4_add_avm_burstcount),
        .out_unnamed_add4_add_avm_byteenable(bb_add_B1_start_out_unnamed_add4_add_avm_byteenable),
        .out_unnamed_add4_add_avm_enable(bb_add_B1_start_out_unnamed_add4_add_avm_enable),
        .out_unnamed_add4_add_avm_read(bb_add_B1_start_out_unnamed_add4_add_avm_read),
        .out_unnamed_add4_add_avm_write(bb_add_B1_start_out_unnamed_add4_add_avm_write),
        .out_unnamed_add4_add_avm_writedata(bb_add_B1_start_out_unnamed_add4_add_avm_writedata),
        .out_unnamed_add5_add_avm_address(bb_add_B1_start_out_unnamed_add5_add_avm_address),
        .out_unnamed_add5_add_avm_burstcount(bb_add_B1_start_out_unnamed_add5_add_avm_burstcount),
        .out_unnamed_add5_add_avm_byteenable(bb_add_B1_start_out_unnamed_add5_add_avm_byteenable),
        .out_unnamed_add5_add_avm_enable(bb_add_B1_start_out_unnamed_add5_add_avm_enable),
        .out_unnamed_add5_add_avm_read(bb_add_B1_start_out_unnamed_add5_add_avm_read),
        .out_unnamed_add5_add_avm_write(bb_add_B1_start_out_unnamed_add5_add_avm_write),
        .out_unnamed_add5_add_avm_writedata(bb_add_B1_start_out_unnamed_add5_add_avm_writedata),
        .out_unnamed_add6_add_avm_address(bb_add_B1_start_out_unnamed_add6_add_avm_address),
        .out_unnamed_add6_add_avm_burstcount(bb_add_B1_start_out_unnamed_add6_add_avm_burstcount),
        .out_unnamed_add6_add_avm_byteenable(bb_add_B1_start_out_unnamed_add6_add_avm_byteenable),
        .out_unnamed_add6_add_avm_enable(bb_add_B1_start_out_unnamed_add6_add_avm_enable),
        .out_unnamed_add6_add_avm_read(bb_add_B1_start_out_unnamed_add6_add_avm_read),
        .out_unnamed_add6_add_avm_write(bb_add_B1_start_out_unnamed_add6_add_avm_write),
        .out_unnamed_add6_add_avm_writedata(bb_add_B1_start_out_unnamed_add6_add_avm_writedata),
        .out_unnamed_add7_add_avm_address(bb_add_B1_start_out_unnamed_add7_add_avm_address),
        .out_unnamed_add7_add_avm_burstcount(bb_add_B1_start_out_unnamed_add7_add_avm_burstcount),
        .out_unnamed_add7_add_avm_byteenable(bb_add_B1_start_out_unnamed_add7_add_avm_byteenable),
        .out_unnamed_add7_add_avm_enable(bb_add_B1_start_out_unnamed_add7_add_avm_enable),
        .out_unnamed_add7_add_avm_read(bb_add_B1_start_out_unnamed_add7_add_avm_read),
        .out_unnamed_add7_add_avm_write(bb_add_B1_start_out_unnamed_add7_add_avm_write),
        .out_unnamed_add7_add_avm_writedata(bb_add_B1_start_out_unnamed_add7_add_avm_writedata),
        .out_valid_in_0(bb_add_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_add_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_add_B1_start_out_valid_out_0),
        .out_valid_out_1(bb_add_B1_start_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B12(BLACKBOX,26)
    add_bb_B12 thebb_add_B12 (
        .in_feedback_stall_in_1(bb_add_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_add_i_fifoready(in_iowr_bl_return_add_i_fifoready),
        .in_stall_in_0(bb_add_B1_start_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_add_B12_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_add_B12_sr_1_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_add_B12_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_add_B12_out_feedback_valid_out_1),
        .out_iowr_bl_return_add_o_fifodata(bb_add_B12_out_iowr_bl_return_add_o_fifodata),
        .out_iowr_bl_return_add_o_fifovalid(bb_add_B12_out_iowr_bl_return_add_o_fifovalid),
        .out_stall_in_0(bb_add_B12_out_stall_in_0),
        .out_stall_out_0(bb_add_B12_out_stall_out_0),
        .out_stall_out_1(bb_add_B12_out_stall_out_1),
        .out_valid_out_0(bb_add_B12_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B0_runOnce(BLACKBOX,23)
    add_bb_B0_runOnce thebb_add_B0_runOnce (
        .in_stall_in_0(bb_add_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_add_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_add_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_add_B1_start_sr_1_aunroll_x(BLACKBOX,7)
    add_bb_B1_start_sr_1 thebb_add_B1_start_sr_1_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_add_B1_start_out_stall_out_1),
        .in_i_valid(bb_add_B0_runOnce_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_add_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_add_B1_start_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // add_B1_start_x(EXTIFACE,18)
    assign add_B1_start_x_i_capture = GND_q;
    assign add_B1_start_x_i_clear = GND_q;
    assign add_B1_start_x_i_enable = VCC_q;
    assign add_B1_start_x_i_shift = GND_q;
    assign add_B1_start_x_i_stall_pred = bb_add_B1_start_sr_1_aunroll_x_out_o_stall;
    assign add_B1_start_x_i_stall_succ = bb_add_B12_out_stall_in_0;
    assign add_B1_start_x_i_valid_loop = bb_add_B1_start_out_valid_in_0;
    assign add_B1_start_x_i_valid_pred = bb_add_B1_start_out_valid_in_1;
    assign add_B1_start_x_i_valid_succ = bb_add_B12_out_valid_out_0;
    assign add_B1_start_x_i_capture_bitsignaltemp = add_B1_start_x_i_capture[0];
    assign add_B1_start_x_i_clear_bitsignaltemp = add_B1_start_x_i_clear[0];
    assign add_B1_start_x_i_enable_bitsignaltemp = add_B1_start_x_i_enable[0];
    assign add_B1_start_x_i_shift_bitsignaltemp = add_B1_start_x_i_shift[0];
    assign add_B1_start_x_i_stall_pred_bitsignaltemp = add_B1_start_x_i_stall_pred[0];
    assign add_B1_start_x_i_stall_succ_bitsignaltemp = add_B1_start_x_i_stall_succ[0];
    assign add_B1_start_x_i_valid_loop_bitsignaltemp = add_B1_start_x_i_valid_loop[0];
    assign add_B1_start_x_i_valid_pred_bitsignaltemp = add_B1_start_x_i_valid_pred[0];
    assign add_B1_start_x_i_valid_succ_bitsignaltemp = add_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("add.B1.start")
    ) theadd_B1_start_x (
        .i_capture(add_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(add_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(add_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(add_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(add_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(add_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(add_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(add_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(add_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // add_B4_x(EXTIFACE,19)
    assign add_B4_x_i_capture = GND_q;
    assign add_B4_x_i_clear = GND_q;
    assign add_B4_x_i_enable = VCC_q;
    assign add_B4_x_i_shift = GND_q;
    assign add_B4_x_i_stall_pred = loop_limiter_add1_out_o_stall;
    assign add_B4_x_i_stall_succ = bb_add_B6_out_stall_in_0;
    assign add_B4_x_i_valid_loop = bb_add_B4_out_valid_in_0;
    assign add_B4_x_i_valid_pred = bb_add_B4_out_valid_in_1;
    assign add_B4_x_i_valid_succ = bb_add_B6_out_valid_out_0;
    assign add_B4_x_i_capture_bitsignaltemp = add_B4_x_i_capture[0];
    assign add_B4_x_i_clear_bitsignaltemp = add_B4_x_i_clear[0];
    assign add_B4_x_i_enable_bitsignaltemp = add_B4_x_i_enable[0];
    assign add_B4_x_i_shift_bitsignaltemp = add_B4_x_i_shift[0];
    assign add_B4_x_i_stall_pred_bitsignaltemp = add_B4_x_i_stall_pred[0];
    assign add_B4_x_i_stall_succ_bitsignaltemp = add_B4_x_i_stall_succ[0];
    assign add_B4_x_i_valid_loop_bitsignaltemp = add_B4_x_i_valid_loop[0];
    assign add_B4_x_i_valid_pred_bitsignaltemp = add_B4_x_i_valid_pred[0];
    assign add_B4_x_i_valid_succ_bitsignaltemp = add_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("add.B4")
    ) theadd_B4_x (
        .i_capture(add_B4_x_i_capture_bitsignaltemp),
        .i_clear(add_B4_x_i_clear_bitsignaltemp),
        .i_enable(add_B4_x_i_enable_bitsignaltemp),
        .i_shift(add_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(add_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(add_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(add_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(add_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(add_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // add_B5_x(EXTIFACE,20)
    assign add_B5_x_i_capture = GND_q;
    assign add_B5_x_i_clear = GND_q;
    assign add_B5_x_i_enable = VCC_q;
    assign add_B5_x_i_shift = GND_q;
    assign add_B5_x_i_stall_pred = loop_limiter_add3_out_o_stall;
    assign add_B5_x_i_stall_succ = bb_add_B5_out_stall_in_0;
    assign add_B5_x_i_valid_loop = bb_add_B5_out_valid_in_0;
    assign add_B5_x_i_valid_pred = bb_add_B5_out_valid_in_1;
    assign add_B5_x_i_valid_succ = bb_add_B5_out_valid_out_0;
    assign add_B5_x_i_capture_bitsignaltemp = add_B5_x_i_capture[0];
    assign add_B5_x_i_clear_bitsignaltemp = add_B5_x_i_clear[0];
    assign add_B5_x_i_enable_bitsignaltemp = add_B5_x_i_enable[0];
    assign add_B5_x_i_shift_bitsignaltemp = add_B5_x_i_shift[0];
    assign add_B5_x_i_stall_pred_bitsignaltemp = add_B5_x_i_stall_pred[0];
    assign add_B5_x_i_stall_succ_bitsignaltemp = add_B5_x_i_stall_succ[0];
    assign add_B5_x_i_valid_loop_bitsignaltemp = add_B5_x_i_valid_loop[0];
    assign add_B5_x_i_valid_pred_bitsignaltemp = add_B5_x_i_valid_pred[0];
    assign add_B5_x_i_valid_succ_bitsignaltemp = add_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("add.B5")
    ) theadd_B5_x (
        .i_capture(add_B5_x_i_capture_bitsignaltemp),
        .i_clear(add_B5_x_i_clear_bitsignaltemp),
        .i_enable(add_B5_x_i_enable_bitsignaltemp),
        .i_shift(add_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(add_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(add_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(add_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(add_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(add_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // add_B7_x(EXTIFACE,21)
    assign add_B7_x_i_capture = GND_q;
    assign add_B7_x_i_clear = GND_q;
    assign add_B7_x_i_enable = VCC_q;
    assign add_B7_x_i_shift = GND_q;
    assign add_B7_x_i_stall_pred = loop_limiter_add0_out_o_stall;
    assign add_B7_x_i_stall_succ = bb_add_B9_out_stall_in_0;
    assign add_B7_x_i_valid_loop = bb_add_B7_out_valid_in_0;
    assign add_B7_x_i_valid_pred = bb_add_B7_out_valid_in_1;
    assign add_B7_x_i_valid_succ = bb_add_B9_out_valid_out_0;
    assign add_B7_x_i_capture_bitsignaltemp = add_B7_x_i_capture[0];
    assign add_B7_x_i_clear_bitsignaltemp = add_B7_x_i_clear[0];
    assign add_B7_x_i_enable_bitsignaltemp = add_B7_x_i_enable[0];
    assign add_B7_x_i_shift_bitsignaltemp = add_B7_x_i_shift[0];
    assign add_B7_x_i_stall_pred_bitsignaltemp = add_B7_x_i_stall_pred[0];
    assign add_B7_x_i_stall_succ_bitsignaltemp = add_B7_x_i_stall_succ[0];
    assign add_B7_x_i_valid_loop_bitsignaltemp = add_B7_x_i_valid_loop[0];
    assign add_B7_x_i_valid_pred_bitsignaltemp = add_B7_x_i_valid_pred[0];
    assign add_B7_x_i_valid_succ_bitsignaltemp = add_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("add.B7")
    ) theadd_B7_x (
        .i_capture(add_B7_x_i_capture_bitsignaltemp),
        .i_clear(add_B7_x_i_clear_bitsignaltemp),
        .i_enable(add_B7_x_i_enable_bitsignaltemp),
        .i_shift(add_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(add_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(add_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(add_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(add_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(add_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // add_B8_x(EXTIFACE,22)
    assign add_B8_x_i_capture = GND_q;
    assign add_B8_x_i_clear = GND_q;
    assign add_B8_x_i_enable = VCC_q;
    assign add_B8_x_i_shift = GND_q;
    assign add_B8_x_i_stall_pred = loop_limiter_add2_out_o_stall;
    assign add_B8_x_i_stall_succ = bb_add_B8_out_stall_in_0;
    assign add_B8_x_i_valid_loop = bb_add_B8_out_valid_in_0;
    assign add_B8_x_i_valid_pred = bb_add_B8_out_valid_in_1;
    assign add_B8_x_i_valid_succ = bb_add_B8_out_valid_out_0;
    assign add_B8_x_i_capture_bitsignaltemp = add_B8_x_i_capture[0];
    assign add_B8_x_i_clear_bitsignaltemp = add_B8_x_i_clear[0];
    assign add_B8_x_i_enable_bitsignaltemp = add_B8_x_i_enable[0];
    assign add_B8_x_i_shift_bitsignaltemp = add_B8_x_i_shift[0];
    assign add_B8_x_i_stall_pred_bitsignaltemp = add_B8_x_i_stall_pred[0];
    assign add_B8_x_i_stall_succ_bitsignaltemp = add_B8_x_i_stall_succ[0];
    assign add_B8_x_i_valid_loop_bitsignaltemp = add_B8_x_i_valid_loop[0];
    assign add_B8_x_i_valid_pred_bitsignaltemp = add_B8_x_i_valid_pred[0];
    assign add_B8_x_i_valid_succ_bitsignaltemp = add_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("add.B8")
    ) theadd_B8_x (
        .i_capture(add_B8_x_i_capture_bitsignaltemp),
        .i_clear(add_B8_x_i_clear_bitsignaltemp),
        .i_enable(add_B8_x_i_enable_bitsignaltemp),
        .i_shift(add_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(add_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(add_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(add_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(add_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(add_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_add_o_fifoalmost_full(GPOUT,172)
    assign out_iord_bl_call_add_o_fifoalmost_full = bb_add_B1_start_out_iord_bl_call_add_o_fifoalmost_full;

    // out_iord_bl_call_add_o_fifoready(GPOUT,173)
    assign out_iord_bl_call_add_o_fifoready = bb_add_B1_start_out_iord_bl_call_add_o_fifoready;

    // out_iowr_bl_return_add_o_fifodata(GPOUT,174)
    assign out_iowr_bl_return_add_o_fifodata = bb_add_B12_out_iowr_bl_return_add_o_fifodata;

    // out_iowr_bl_return_add_o_fifovalid(GPOUT,175)
    assign out_iowr_bl_return_add_o_fifovalid = bb_add_B12_out_iowr_bl_return_add_o_fifovalid;

    // out_lm1076_add_avm_address(GPOUT,176)
    assign out_lm1076_add_avm_address = bb_add_B5_out_lm1076_add_avm_address;

    // out_lm1076_add_avm_burstcount(GPOUT,177)
    assign out_lm1076_add_avm_burstcount = bb_add_B5_out_lm1076_add_avm_burstcount;

    // out_lm1076_add_avm_byteenable(GPOUT,178)
    assign out_lm1076_add_avm_byteenable = bb_add_B5_out_lm1076_add_avm_byteenable;

    // out_lm1076_add_avm_enable(GPOUT,179)
    assign out_lm1076_add_avm_enable = bb_add_B5_out_lm1076_add_avm_enable;

    // out_lm1076_add_avm_read(GPOUT,180)
    assign out_lm1076_add_avm_read = bb_add_B5_out_lm1076_add_avm_read;

    // out_lm1076_add_avm_write(GPOUT,181)
    assign out_lm1076_add_avm_write = bb_add_B5_out_lm1076_add_avm_write;

    // out_lm1076_add_avm_writedata(GPOUT,182)
    assign out_lm1076_add_avm_writedata = bb_add_B5_out_lm1076_add_avm_writedata;

    // out_lm1097_add_avm_address(GPOUT,183)
    assign out_lm1097_add_avm_address = bb_add_B5_out_lm1097_add_avm_address;

    // out_lm1097_add_avm_burstcount(GPOUT,184)
    assign out_lm1097_add_avm_burstcount = bb_add_B5_out_lm1097_add_avm_burstcount;

    // out_lm1097_add_avm_byteenable(GPOUT,185)
    assign out_lm1097_add_avm_byteenable = bb_add_B5_out_lm1097_add_avm_byteenable;

    // out_lm1097_add_avm_enable(GPOUT,186)
    assign out_lm1097_add_avm_enable = bb_add_B5_out_lm1097_add_avm_enable;

    // out_lm1097_add_avm_read(GPOUT,187)
    assign out_lm1097_add_avm_read = bb_add_B5_out_lm1097_add_avm_read;

    // out_lm1097_add_avm_write(GPOUT,188)
    assign out_lm1097_add_avm_write = bb_add_B5_out_lm1097_add_avm_write;

    // out_lm1097_add_avm_writedata(GPOUT,189)
    assign out_lm1097_add_avm_writedata = bb_add_B5_out_lm1097_add_avm_writedata;

    // out_lm1269_add_avm_address(GPOUT,190)
    assign out_lm1269_add_avm_address = bb_add_B8_out_lm1269_add_avm_address;

    // out_lm1269_add_avm_burstcount(GPOUT,191)
    assign out_lm1269_add_avm_burstcount = bb_add_B8_out_lm1269_add_avm_burstcount;

    // out_lm1269_add_avm_byteenable(GPOUT,192)
    assign out_lm1269_add_avm_byteenable = bb_add_B8_out_lm1269_add_avm_byteenable;

    // out_lm1269_add_avm_enable(GPOUT,193)
    assign out_lm1269_add_avm_enable = bb_add_B8_out_lm1269_add_avm_enable;

    // out_lm1269_add_avm_read(GPOUT,194)
    assign out_lm1269_add_avm_read = bb_add_B8_out_lm1269_add_avm_read;

    // out_lm1269_add_avm_write(GPOUT,195)
    assign out_lm1269_add_avm_write = bb_add_B8_out_lm1269_add_avm_write;

    // out_lm1269_add_avm_writedata(GPOUT,196)
    assign out_lm1269_add_avm_writedata = bb_add_B8_out_lm1269_add_avm_writedata;

    // out_lm12810_add_avm_address(GPOUT,197)
    assign out_lm12810_add_avm_address = bb_add_B8_out_lm12810_add_avm_address;

    // out_lm12810_add_avm_burstcount(GPOUT,198)
    assign out_lm12810_add_avm_burstcount = bb_add_B8_out_lm12810_add_avm_burstcount;

    // out_lm12810_add_avm_byteenable(GPOUT,199)
    assign out_lm12810_add_avm_byteenable = bb_add_B8_out_lm12810_add_avm_byteenable;

    // out_lm12810_add_avm_enable(GPOUT,200)
    assign out_lm12810_add_avm_enable = bb_add_B8_out_lm12810_add_avm_enable;

    // out_lm12810_add_avm_read(GPOUT,201)
    assign out_lm12810_add_avm_read = bb_add_B8_out_lm12810_add_avm_read;

    // out_lm12810_add_avm_write(GPOUT,202)
    assign out_lm12810_add_avm_write = bb_add_B8_out_lm12810_add_avm_write;

    // out_lm12810_add_avm_writedata(GPOUT,203)
    assign out_lm12810_add_avm_writedata = bb_add_B8_out_lm12810_add_avm_writedata;

    // out_lm13212_add_avm_address(GPOUT,204)
    assign out_lm13212_add_avm_address = bb_add_B8_out_lm13212_add_avm_address;

    // out_lm13212_add_avm_burstcount(GPOUT,205)
    assign out_lm13212_add_avm_burstcount = bb_add_B8_out_lm13212_add_avm_burstcount;

    // out_lm13212_add_avm_byteenable(GPOUT,206)
    assign out_lm13212_add_avm_byteenable = bb_add_B8_out_lm13212_add_avm_byteenable;

    // out_lm13212_add_avm_enable(GPOUT,207)
    assign out_lm13212_add_avm_enable = bb_add_B8_out_lm13212_add_avm_enable;

    // out_lm13212_add_avm_read(GPOUT,208)
    assign out_lm13212_add_avm_read = bb_add_B8_out_lm13212_add_avm_read;

    // out_lm13212_add_avm_write(GPOUT,209)
    assign out_lm13212_add_avm_write = bb_add_B8_out_lm13212_add_avm_write;

    // out_lm13212_add_avm_writedata(GPOUT,210)
    assign out_lm13212_add_avm_writedata = bb_add_B8_out_lm13212_add_avm_writedata;

    // out_lm13413_add_avm_address(GPOUT,211)
    assign out_lm13413_add_avm_address = bb_add_B8_out_lm13413_add_avm_address;

    // out_lm13413_add_avm_burstcount(GPOUT,212)
    assign out_lm13413_add_avm_burstcount = bb_add_B8_out_lm13413_add_avm_burstcount;

    // out_lm13413_add_avm_byteenable(GPOUT,213)
    assign out_lm13413_add_avm_byteenable = bb_add_B8_out_lm13413_add_avm_byteenable;

    // out_lm13413_add_avm_enable(GPOUT,214)
    assign out_lm13413_add_avm_enable = bb_add_B8_out_lm13413_add_avm_enable;

    // out_lm13413_add_avm_read(GPOUT,215)
    assign out_lm13413_add_avm_read = bb_add_B8_out_lm13413_add_avm_read;

    // out_lm13413_add_avm_write(GPOUT,216)
    assign out_lm13413_add_avm_write = bb_add_B8_out_lm13413_add_avm_write;

    // out_lm13413_add_avm_writedata(GPOUT,217)
    assign out_lm13413_add_avm_writedata = bb_add_B8_out_lm13413_add_avm_writedata;

    // out_lm1_add_avm_address(GPOUT,218)
    assign out_lm1_add_avm_address = bb_add_B1_start_out_lm1_add_avm_address;

    // out_lm1_add_avm_burstcount(GPOUT,219)
    assign out_lm1_add_avm_burstcount = bb_add_B1_start_out_lm1_add_avm_burstcount;

    // out_lm1_add_avm_byteenable(GPOUT,220)
    assign out_lm1_add_avm_byteenable = bb_add_B1_start_out_lm1_add_avm_byteenable;

    // out_lm1_add_avm_enable(GPOUT,221)
    assign out_lm1_add_avm_enable = bb_add_B1_start_out_lm1_add_avm_enable;

    // out_lm1_add_avm_read(GPOUT,222)
    assign out_lm1_add_avm_read = bb_add_B1_start_out_lm1_add_avm_read;

    // out_lm1_add_avm_write(GPOUT,223)
    assign out_lm1_add_avm_write = bb_add_B1_start_out_lm1_add_avm_write;

    // out_lm1_add_avm_writedata(GPOUT,224)
    assign out_lm1_add_avm_writedata = bb_add_B1_start_out_lm1_add_avm_writedata;

    // out_lm722_add_avm_address(GPOUT,225)
    assign out_lm722_add_avm_address = bb_add_B1_start_out_lm722_add_avm_address;

    // out_lm722_add_avm_burstcount(GPOUT,226)
    assign out_lm722_add_avm_burstcount = bb_add_B1_start_out_lm722_add_avm_burstcount;

    // out_lm722_add_avm_byteenable(GPOUT,227)
    assign out_lm722_add_avm_byteenable = bb_add_B1_start_out_lm722_add_avm_byteenable;

    // out_lm722_add_avm_enable(GPOUT,228)
    assign out_lm722_add_avm_enable = bb_add_B1_start_out_lm722_add_avm_enable;

    // out_lm722_add_avm_read(GPOUT,229)
    assign out_lm722_add_avm_read = bb_add_B1_start_out_lm722_add_avm_read;

    // out_lm722_add_avm_write(GPOUT,230)
    assign out_lm722_add_avm_write = bb_add_B1_start_out_lm722_add_avm_write;

    // out_lm722_add_avm_writedata(GPOUT,231)
    assign out_lm722_add_avm_writedata = bb_add_B1_start_out_lm722_add_avm_writedata;

    // out_lm743_add_avm_address(GPOUT,232)
    assign out_lm743_add_avm_address = bb_add_B1_start_out_lm743_add_avm_address;

    // out_lm743_add_avm_burstcount(GPOUT,233)
    assign out_lm743_add_avm_burstcount = bb_add_B1_start_out_lm743_add_avm_burstcount;

    // out_lm743_add_avm_byteenable(GPOUT,234)
    assign out_lm743_add_avm_byteenable = bb_add_B1_start_out_lm743_add_avm_byteenable;

    // out_lm743_add_avm_enable(GPOUT,235)
    assign out_lm743_add_avm_enable = bb_add_B1_start_out_lm743_add_avm_enable;

    // out_lm743_add_avm_read(GPOUT,236)
    assign out_lm743_add_avm_read = bb_add_B1_start_out_lm743_add_avm_read;

    // out_lm743_add_avm_write(GPOUT,237)
    assign out_lm743_add_avm_write = bb_add_B1_start_out_lm743_add_avm_write;

    // out_lm743_add_avm_writedata(GPOUT,238)
    assign out_lm743_add_avm_writedata = bb_add_B1_start_out_lm743_add_avm_writedata;

    // out_memdep_16_add_avm_address(GPOUT,239)
    assign out_memdep_16_add_avm_address = bb_add_B8_out_memdep_16_add_avm_address;

    // out_memdep_16_add_avm_burstcount(GPOUT,240)
    assign out_memdep_16_add_avm_burstcount = bb_add_B8_out_memdep_16_add_avm_burstcount;

    // out_memdep_16_add_avm_byteenable(GPOUT,241)
    assign out_memdep_16_add_avm_byteenable = bb_add_B8_out_memdep_16_add_avm_byteenable;

    // out_memdep_16_add_avm_enable(GPOUT,242)
    assign out_memdep_16_add_avm_enable = bb_add_B8_out_memdep_16_add_avm_enable;

    // out_memdep_16_add_avm_read(GPOUT,243)
    assign out_memdep_16_add_avm_read = bb_add_B8_out_memdep_16_add_avm_read;

    // out_memdep_16_add_avm_write(GPOUT,244)
    assign out_memdep_16_add_avm_write = bb_add_B8_out_memdep_16_add_avm_write;

    // out_memdep_16_add_avm_writedata(GPOUT,245)
    assign out_memdep_16_add_avm_writedata = bb_add_B8_out_memdep_16_add_avm_writedata;

    // out_memdep_add_avm_address(GPOUT,246)
    assign out_memdep_add_avm_address = bb_add_B5_out_memdep_add_avm_address;

    // out_memdep_add_avm_burstcount(GPOUT,247)
    assign out_memdep_add_avm_burstcount = bb_add_B5_out_memdep_add_avm_burstcount;

    // out_memdep_add_avm_byteenable(GPOUT,248)
    assign out_memdep_add_avm_byteenable = bb_add_B5_out_memdep_add_avm_byteenable;

    // out_memdep_add_avm_enable(GPOUT,249)
    assign out_memdep_add_avm_enable = bb_add_B5_out_memdep_add_avm_enable;

    // out_memdep_add_avm_read(GPOUT,250)
    assign out_memdep_add_avm_read = bb_add_B5_out_memdep_add_avm_read;

    // out_memdep_add_avm_write(GPOUT,251)
    assign out_memdep_add_avm_write = bb_add_B5_out_memdep_add_avm_write;

    // out_memdep_add_avm_writedata(GPOUT,252)
    assign out_memdep_add_avm_writedata = bb_add_B5_out_memdep_add_avm_writedata;

    // out_ml3211_add_avm_address(GPOUT,253)
    assign out_ml3211_add_avm_address = bb_add_B8_out_ml3211_add_avm_address;

    // out_ml3211_add_avm_burstcount(GPOUT,254)
    assign out_ml3211_add_avm_burstcount = bb_add_B8_out_ml3211_add_avm_burstcount;

    // out_ml3211_add_avm_byteenable(GPOUT,255)
    assign out_ml3211_add_avm_byteenable = bb_add_B8_out_ml3211_add_avm_byteenable;

    // out_ml3211_add_avm_enable(GPOUT,256)
    assign out_ml3211_add_avm_enable = bb_add_B8_out_ml3211_add_avm_enable;

    // out_ml3211_add_avm_read(GPOUT,257)
    assign out_ml3211_add_avm_read = bb_add_B8_out_ml3211_add_avm_read;

    // out_ml3211_add_avm_write(GPOUT,258)
    assign out_ml3211_add_avm_write = bb_add_B8_out_ml3211_add_avm_write;

    // out_ml3211_add_avm_writedata(GPOUT,259)
    assign out_ml3211_add_avm_writedata = bb_add_B8_out_ml3211_add_avm_writedata;

    // out_ml358_add_avm_address(GPOUT,260)
    assign out_ml358_add_avm_address = bb_add_B8_out_ml358_add_avm_address;

    // out_ml358_add_avm_burstcount(GPOUT,261)
    assign out_ml358_add_avm_burstcount = bb_add_B8_out_ml358_add_avm_burstcount;

    // out_ml358_add_avm_byteenable(GPOUT,262)
    assign out_ml358_add_avm_byteenable = bb_add_B8_out_ml358_add_avm_byteenable;

    // out_ml358_add_avm_enable(GPOUT,263)
    assign out_ml358_add_avm_enable = bb_add_B8_out_ml358_add_avm_enable;

    // out_ml358_add_avm_read(GPOUT,264)
    assign out_ml358_add_avm_read = bb_add_B8_out_ml358_add_avm_read;

    // out_ml358_add_avm_write(GPOUT,265)
    assign out_ml358_add_avm_write = bb_add_B8_out_ml358_add_avm_write;

    // out_ml358_add_avm_writedata(GPOUT,266)
    assign out_ml358_add_avm_writedata = bb_add_B8_out_ml358_add_avm_writedata;

    // out_ml535_add_avm_address(GPOUT,267)
    assign out_ml535_add_avm_address = bb_add_B5_out_ml535_add_avm_address;

    // out_ml535_add_avm_burstcount(GPOUT,268)
    assign out_ml535_add_avm_burstcount = bb_add_B5_out_ml535_add_avm_burstcount;

    // out_ml535_add_avm_byteenable(GPOUT,269)
    assign out_ml535_add_avm_byteenable = bb_add_B5_out_ml535_add_avm_byteenable;

    // out_ml535_add_avm_enable(GPOUT,270)
    assign out_ml535_add_avm_enable = bb_add_B5_out_ml535_add_avm_enable;

    // out_ml535_add_avm_read(GPOUT,271)
    assign out_ml535_add_avm_read = bb_add_B5_out_ml535_add_avm_read;

    // out_ml535_add_avm_write(GPOUT,272)
    assign out_ml535_add_avm_write = bb_add_B5_out_ml535_add_avm_write;

    // out_ml535_add_avm_writedata(GPOUT,273)
    assign out_ml535_add_avm_writedata = bb_add_B5_out_ml535_add_avm_writedata;

    // out_o_active_memdep(GPOUT,274)
    assign out_o_active_memdep = bb_add_B5_out_lsu_memdep_o_active;

    // out_o_active_memdep_16(GPOUT,275)
    assign out_o_active_memdep_16 = bb_add_B8_out_lsu_memdep_16_o_active;

    // out_stall_out(GPOUT,276)
    assign out_stall_out = bb_add_B0_runOnce_out_stall_out_0;

    // out_unmaskedload_lm4_add_avm_address(GPOUT,277)
    assign out_unmaskedload_lm4_add_avm_address = bb_add_B1_start_out_unmaskedload_lm4_add_avm_address;

    // out_unmaskedload_lm4_add_avm_burstcount(GPOUT,278)
    assign out_unmaskedload_lm4_add_avm_burstcount = bb_add_B1_start_out_unmaskedload_lm4_add_avm_burstcount;

    // out_unmaskedload_lm4_add_avm_byteenable(GPOUT,279)
    assign out_unmaskedload_lm4_add_avm_byteenable = bb_add_B1_start_out_unmaskedload_lm4_add_avm_byteenable;

    // out_unmaskedload_lm4_add_avm_enable(GPOUT,280)
    assign out_unmaskedload_lm4_add_avm_enable = bb_add_B1_start_out_unmaskedload_lm4_add_avm_enable;

    // out_unmaskedload_lm4_add_avm_read(GPOUT,281)
    assign out_unmaskedload_lm4_add_avm_read = bb_add_B1_start_out_unmaskedload_lm4_add_avm_read;

    // out_unmaskedload_lm4_add_avm_write(GPOUT,282)
    assign out_unmaskedload_lm4_add_avm_write = bb_add_B1_start_out_unmaskedload_lm4_add_avm_write;

    // out_unmaskedload_lm4_add_avm_writedata(GPOUT,283)
    assign out_unmaskedload_lm4_add_avm_writedata = bb_add_B1_start_out_unmaskedload_lm4_add_avm_writedata;

    // out_unnamed_add2_add_avm_address(GPOUT,284)
    assign out_unnamed_add2_add_avm_address = bb_add_B1_start_out_unnamed_add2_add_avm_address;

    // out_unnamed_add2_add_avm_burstcount(GPOUT,285)
    assign out_unnamed_add2_add_avm_burstcount = bb_add_B1_start_out_unnamed_add2_add_avm_burstcount;

    // out_unnamed_add2_add_avm_byteenable(GPOUT,286)
    assign out_unnamed_add2_add_avm_byteenable = bb_add_B1_start_out_unnamed_add2_add_avm_byteenable;

    // out_unnamed_add2_add_avm_enable(GPOUT,287)
    assign out_unnamed_add2_add_avm_enable = bb_add_B1_start_out_unnamed_add2_add_avm_enable;

    // out_unnamed_add2_add_avm_read(GPOUT,288)
    assign out_unnamed_add2_add_avm_read = bb_add_B1_start_out_unnamed_add2_add_avm_read;

    // out_unnamed_add2_add_avm_write(GPOUT,289)
    assign out_unnamed_add2_add_avm_write = bb_add_B1_start_out_unnamed_add2_add_avm_write;

    // out_unnamed_add2_add_avm_writedata(GPOUT,290)
    assign out_unnamed_add2_add_avm_writedata = bb_add_B1_start_out_unnamed_add2_add_avm_writedata;

    // out_unnamed_add3_add_avm_address(GPOUT,291)
    assign out_unnamed_add3_add_avm_address = bb_add_B1_start_out_unnamed_add3_add_avm_address;

    // out_unnamed_add3_add_avm_burstcount(GPOUT,292)
    assign out_unnamed_add3_add_avm_burstcount = bb_add_B1_start_out_unnamed_add3_add_avm_burstcount;

    // out_unnamed_add3_add_avm_byteenable(GPOUT,293)
    assign out_unnamed_add3_add_avm_byteenable = bb_add_B1_start_out_unnamed_add3_add_avm_byteenable;

    // out_unnamed_add3_add_avm_enable(GPOUT,294)
    assign out_unnamed_add3_add_avm_enable = bb_add_B1_start_out_unnamed_add3_add_avm_enable;

    // out_unnamed_add3_add_avm_read(GPOUT,295)
    assign out_unnamed_add3_add_avm_read = bb_add_B1_start_out_unnamed_add3_add_avm_read;

    // out_unnamed_add3_add_avm_write(GPOUT,296)
    assign out_unnamed_add3_add_avm_write = bb_add_B1_start_out_unnamed_add3_add_avm_write;

    // out_unnamed_add3_add_avm_writedata(GPOUT,297)
    assign out_unnamed_add3_add_avm_writedata = bb_add_B1_start_out_unnamed_add3_add_avm_writedata;

    // out_unnamed_add4_add_avm_address(GPOUT,298)
    assign out_unnamed_add4_add_avm_address = bb_add_B1_start_out_unnamed_add4_add_avm_address;

    // out_unnamed_add4_add_avm_burstcount(GPOUT,299)
    assign out_unnamed_add4_add_avm_burstcount = bb_add_B1_start_out_unnamed_add4_add_avm_burstcount;

    // out_unnamed_add4_add_avm_byteenable(GPOUT,300)
    assign out_unnamed_add4_add_avm_byteenable = bb_add_B1_start_out_unnamed_add4_add_avm_byteenable;

    // out_unnamed_add4_add_avm_enable(GPOUT,301)
    assign out_unnamed_add4_add_avm_enable = bb_add_B1_start_out_unnamed_add4_add_avm_enable;

    // out_unnamed_add4_add_avm_read(GPOUT,302)
    assign out_unnamed_add4_add_avm_read = bb_add_B1_start_out_unnamed_add4_add_avm_read;

    // out_unnamed_add4_add_avm_write(GPOUT,303)
    assign out_unnamed_add4_add_avm_write = bb_add_B1_start_out_unnamed_add4_add_avm_write;

    // out_unnamed_add4_add_avm_writedata(GPOUT,304)
    assign out_unnamed_add4_add_avm_writedata = bb_add_B1_start_out_unnamed_add4_add_avm_writedata;

    // out_unnamed_add5_add_avm_address(GPOUT,305)
    assign out_unnamed_add5_add_avm_address = bb_add_B1_start_out_unnamed_add5_add_avm_address;

    // out_unnamed_add5_add_avm_burstcount(GPOUT,306)
    assign out_unnamed_add5_add_avm_burstcount = bb_add_B1_start_out_unnamed_add5_add_avm_burstcount;

    // out_unnamed_add5_add_avm_byteenable(GPOUT,307)
    assign out_unnamed_add5_add_avm_byteenable = bb_add_B1_start_out_unnamed_add5_add_avm_byteenable;

    // out_unnamed_add5_add_avm_enable(GPOUT,308)
    assign out_unnamed_add5_add_avm_enable = bb_add_B1_start_out_unnamed_add5_add_avm_enable;

    // out_unnamed_add5_add_avm_read(GPOUT,309)
    assign out_unnamed_add5_add_avm_read = bb_add_B1_start_out_unnamed_add5_add_avm_read;

    // out_unnamed_add5_add_avm_write(GPOUT,310)
    assign out_unnamed_add5_add_avm_write = bb_add_B1_start_out_unnamed_add5_add_avm_write;

    // out_unnamed_add5_add_avm_writedata(GPOUT,311)
    assign out_unnamed_add5_add_avm_writedata = bb_add_B1_start_out_unnamed_add5_add_avm_writedata;

    // out_unnamed_add6_add_avm_address(GPOUT,312)
    assign out_unnamed_add6_add_avm_address = bb_add_B1_start_out_unnamed_add6_add_avm_address;

    // out_unnamed_add6_add_avm_burstcount(GPOUT,313)
    assign out_unnamed_add6_add_avm_burstcount = bb_add_B1_start_out_unnamed_add6_add_avm_burstcount;

    // out_unnamed_add6_add_avm_byteenable(GPOUT,314)
    assign out_unnamed_add6_add_avm_byteenable = bb_add_B1_start_out_unnamed_add6_add_avm_byteenable;

    // out_unnamed_add6_add_avm_enable(GPOUT,315)
    assign out_unnamed_add6_add_avm_enable = bb_add_B1_start_out_unnamed_add6_add_avm_enable;

    // out_unnamed_add6_add_avm_read(GPOUT,316)
    assign out_unnamed_add6_add_avm_read = bb_add_B1_start_out_unnamed_add6_add_avm_read;

    // out_unnamed_add6_add_avm_write(GPOUT,317)
    assign out_unnamed_add6_add_avm_write = bb_add_B1_start_out_unnamed_add6_add_avm_write;

    // out_unnamed_add6_add_avm_writedata(GPOUT,318)
    assign out_unnamed_add6_add_avm_writedata = bb_add_B1_start_out_unnamed_add6_add_avm_writedata;

    // out_unnamed_add7_add_avm_address(GPOUT,319)
    assign out_unnamed_add7_add_avm_address = bb_add_B1_start_out_unnamed_add7_add_avm_address;

    // out_unnamed_add7_add_avm_burstcount(GPOUT,320)
    assign out_unnamed_add7_add_avm_burstcount = bb_add_B1_start_out_unnamed_add7_add_avm_burstcount;

    // out_unnamed_add7_add_avm_byteenable(GPOUT,321)
    assign out_unnamed_add7_add_avm_byteenable = bb_add_B1_start_out_unnamed_add7_add_avm_byteenable;

    // out_unnamed_add7_add_avm_enable(GPOUT,322)
    assign out_unnamed_add7_add_avm_enable = bb_add_B1_start_out_unnamed_add7_add_avm_enable;

    // out_unnamed_add7_add_avm_read(GPOUT,323)
    assign out_unnamed_add7_add_avm_read = bb_add_B1_start_out_unnamed_add7_add_avm_read;

    // out_unnamed_add7_add_avm_write(GPOUT,324)
    assign out_unnamed_add7_add_avm_write = bb_add_B1_start_out_unnamed_add7_add_avm_write;

    // out_unnamed_add7_add_avm_writedata(GPOUT,325)
    assign out_unnamed_add7_add_avm_writedata = bb_add_B1_start_out_unnamed_add7_add_avm_writedata;

    // out_valid_out(GPOUT,326)
    assign out_valid_out = GND_q;

endmodule
