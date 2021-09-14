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

// SystemVerilog created from add_function_wrapper
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_function_wrapper (
    input wire [63:0] A,
    input wire [63:0] B,
    input wire [63:0] C,
    input wire [63:0] avm_lm1076_add_readdata,
    input wire [0:0] avm_lm1076_add_readdatavalid,
    input wire [0:0] avm_lm1076_add_waitrequest,
    input wire [0:0] avm_lm1076_add_writeack,
    input wire [63:0] avm_lm1097_add_readdata,
    input wire [0:0] avm_lm1097_add_readdatavalid,
    input wire [0:0] avm_lm1097_add_waitrequest,
    input wire [0:0] avm_lm1097_add_writeack,
    input wire [63:0] avm_lm1269_add_readdata,
    input wire [0:0] avm_lm1269_add_readdatavalid,
    input wire [0:0] avm_lm1269_add_waitrequest,
    input wire [0:0] avm_lm1269_add_writeack,
    input wire [63:0] avm_lm12810_add_readdata,
    input wire [0:0] avm_lm12810_add_readdatavalid,
    input wire [0:0] avm_lm12810_add_waitrequest,
    input wire [0:0] avm_lm12810_add_writeack,
    input wire [63:0] avm_lm13212_add_readdata,
    input wire [0:0] avm_lm13212_add_readdatavalid,
    input wire [0:0] avm_lm13212_add_waitrequest,
    input wire [0:0] avm_lm13212_add_writeack,
    input wire [63:0] avm_lm13413_add_readdata,
    input wire [0:0] avm_lm13413_add_readdatavalid,
    input wire [0:0] avm_lm13413_add_waitrequest,
    input wire [0:0] avm_lm13413_add_writeack,
    input wire [63:0] avm_lm1_add_readdata,
    input wire [0:0] avm_lm1_add_readdatavalid,
    input wire [0:0] avm_lm1_add_waitrequest,
    input wire [0:0] avm_lm1_add_writeack,
    input wire [63:0] avm_lm722_add_readdata,
    input wire [0:0] avm_lm722_add_readdatavalid,
    input wire [0:0] avm_lm722_add_waitrequest,
    input wire [0:0] avm_lm722_add_writeack,
    input wire [63:0] avm_lm743_add_readdata,
    input wire [0:0] avm_lm743_add_readdatavalid,
    input wire [0:0] avm_lm743_add_waitrequest,
    input wire [0:0] avm_lm743_add_writeack,
    input wire [63:0] avm_memdep_16_add_readdata,
    input wire [0:0] avm_memdep_16_add_readdatavalid,
    input wire [0:0] avm_memdep_16_add_waitrequest,
    input wire [0:0] avm_memdep_16_add_writeack,
    input wire [63:0] avm_memdep_add_readdata,
    input wire [0:0] avm_memdep_add_readdatavalid,
    input wire [0:0] avm_memdep_add_waitrequest,
    input wire [0:0] avm_memdep_add_writeack,
    input wire [63:0] avm_ml3211_add_readdata,
    input wire [0:0] avm_ml3211_add_readdatavalid,
    input wire [0:0] avm_ml3211_add_waitrequest,
    input wire [0:0] avm_ml3211_add_writeack,
    input wire [63:0] avm_ml358_add_readdata,
    input wire [0:0] avm_ml358_add_readdatavalid,
    input wire [0:0] avm_ml358_add_waitrequest,
    input wire [0:0] avm_ml358_add_writeack,
    input wire [63:0] avm_ml535_add_readdata,
    input wire [0:0] avm_ml535_add_readdatavalid,
    input wire [0:0] avm_ml535_add_waitrequest,
    input wire [0:0] avm_ml535_add_writeack,
    input wire [63:0] avm_unmaskedload_lm4_add_readdata,
    input wire [0:0] avm_unmaskedload_lm4_add_readdatavalid,
    input wire [0:0] avm_unmaskedload_lm4_add_waitrequest,
    input wire [0:0] avm_unmaskedload_lm4_add_writeack,
    input wire [63:0] avm_unnamed_add2_add_readdata,
    input wire [0:0] avm_unnamed_add2_add_readdatavalid,
    input wire [0:0] avm_unnamed_add2_add_waitrequest,
    input wire [0:0] avm_unnamed_add2_add_writeack,
    input wire [63:0] avm_unnamed_add3_add_readdata,
    input wire [0:0] avm_unnamed_add3_add_readdatavalid,
    input wire [0:0] avm_unnamed_add3_add_waitrequest,
    input wire [0:0] avm_unnamed_add3_add_writeack,
    input wire [63:0] avm_unnamed_add4_add_readdata,
    input wire [0:0] avm_unnamed_add4_add_readdatavalid,
    input wire [0:0] avm_unnamed_add4_add_waitrequest,
    input wire [0:0] avm_unnamed_add4_add_writeack,
    input wire [63:0] avm_unnamed_add5_add_readdata,
    input wire [0:0] avm_unnamed_add5_add_readdatavalid,
    input wire [0:0] avm_unnamed_add5_add_waitrequest,
    input wire [0:0] avm_unnamed_add5_add_writeack,
    input wire [63:0] avm_unnamed_add6_add_readdata,
    input wire [0:0] avm_unnamed_add6_add_readdatavalid,
    input wire [0:0] avm_unnamed_add6_add_waitrequest,
    input wire [0:0] avm_unnamed_add6_add_writeack,
    input wire [63:0] avm_unnamed_add7_add_readdata,
    input wire [0:0] avm_unnamed_add7_add_readdatavalid,
    input wire [0:0] avm_unnamed_add7_add_waitrequest,
    input wire [0:0] avm_unnamed_add7_add_writeack,
    input wire [191:0] avst_iord_bl_call_add_data,
    input wire [0:0] avst_iord_bl_call_add_valid,
    input wire [0:0] avst_iowr_bl_return_add_almostfull,
    input wire [0:0] avst_iowr_bl_return_add_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm1076_add_address,
    output wire [0:0] avm_lm1076_add_burstcount,
    output wire [7:0] avm_lm1076_add_byteenable,
    output wire [0:0] avm_lm1076_add_enable,
    output wire [0:0] avm_lm1076_add_read,
    output wire [0:0] avm_lm1076_add_write,
    output wire [63:0] avm_lm1076_add_writedata,
    output wire [63:0] avm_lm1097_add_address,
    output wire [0:0] avm_lm1097_add_burstcount,
    output wire [7:0] avm_lm1097_add_byteenable,
    output wire [0:0] avm_lm1097_add_enable,
    output wire [0:0] avm_lm1097_add_read,
    output wire [0:0] avm_lm1097_add_write,
    output wire [63:0] avm_lm1097_add_writedata,
    output wire [63:0] avm_lm1269_add_address,
    output wire [0:0] avm_lm1269_add_burstcount,
    output wire [7:0] avm_lm1269_add_byteenable,
    output wire [0:0] avm_lm1269_add_enable,
    output wire [0:0] avm_lm1269_add_read,
    output wire [0:0] avm_lm1269_add_write,
    output wire [63:0] avm_lm1269_add_writedata,
    output wire [63:0] avm_lm12810_add_address,
    output wire [0:0] avm_lm12810_add_burstcount,
    output wire [7:0] avm_lm12810_add_byteenable,
    output wire [0:0] avm_lm12810_add_enable,
    output wire [0:0] avm_lm12810_add_read,
    output wire [0:0] avm_lm12810_add_write,
    output wire [63:0] avm_lm12810_add_writedata,
    output wire [63:0] avm_lm13212_add_address,
    output wire [0:0] avm_lm13212_add_burstcount,
    output wire [7:0] avm_lm13212_add_byteenable,
    output wire [0:0] avm_lm13212_add_enable,
    output wire [0:0] avm_lm13212_add_read,
    output wire [0:0] avm_lm13212_add_write,
    output wire [63:0] avm_lm13212_add_writedata,
    output wire [63:0] avm_lm13413_add_address,
    output wire [0:0] avm_lm13413_add_burstcount,
    output wire [7:0] avm_lm13413_add_byteenable,
    output wire [0:0] avm_lm13413_add_enable,
    output wire [0:0] avm_lm13413_add_read,
    output wire [0:0] avm_lm13413_add_write,
    output wire [63:0] avm_lm13413_add_writedata,
    output wire [63:0] avm_lm1_add_address,
    output wire [0:0] avm_lm1_add_burstcount,
    output wire [7:0] avm_lm1_add_byteenable,
    output wire [0:0] avm_lm1_add_enable,
    output wire [0:0] avm_lm1_add_read,
    output wire [0:0] avm_lm1_add_write,
    output wire [63:0] avm_lm1_add_writedata,
    output wire [63:0] avm_lm722_add_address,
    output wire [0:0] avm_lm722_add_burstcount,
    output wire [7:0] avm_lm722_add_byteenable,
    output wire [0:0] avm_lm722_add_enable,
    output wire [0:0] avm_lm722_add_read,
    output wire [0:0] avm_lm722_add_write,
    output wire [63:0] avm_lm722_add_writedata,
    output wire [63:0] avm_lm743_add_address,
    output wire [0:0] avm_lm743_add_burstcount,
    output wire [7:0] avm_lm743_add_byteenable,
    output wire [0:0] avm_lm743_add_enable,
    output wire [0:0] avm_lm743_add_read,
    output wire [0:0] avm_lm743_add_write,
    output wire [63:0] avm_lm743_add_writedata,
    output wire [63:0] avm_memdep_16_add_address,
    output wire [0:0] avm_memdep_16_add_burstcount,
    output wire [7:0] avm_memdep_16_add_byteenable,
    output wire [0:0] avm_memdep_16_add_enable,
    output wire [0:0] avm_memdep_16_add_read,
    output wire [0:0] avm_memdep_16_add_write,
    output wire [63:0] avm_memdep_16_add_writedata,
    output wire [63:0] avm_memdep_add_address,
    output wire [0:0] avm_memdep_add_burstcount,
    output wire [7:0] avm_memdep_add_byteenable,
    output wire [0:0] avm_memdep_add_enable,
    output wire [0:0] avm_memdep_add_read,
    output wire [0:0] avm_memdep_add_write,
    output wire [63:0] avm_memdep_add_writedata,
    output wire [63:0] avm_ml3211_add_address,
    output wire [0:0] avm_ml3211_add_burstcount,
    output wire [7:0] avm_ml3211_add_byteenable,
    output wire [0:0] avm_ml3211_add_enable,
    output wire [0:0] avm_ml3211_add_read,
    output wire [0:0] avm_ml3211_add_write,
    output wire [63:0] avm_ml3211_add_writedata,
    output wire [63:0] avm_ml358_add_address,
    output wire [0:0] avm_ml358_add_burstcount,
    output wire [7:0] avm_ml358_add_byteenable,
    output wire [0:0] avm_ml358_add_enable,
    output wire [0:0] avm_ml358_add_read,
    output wire [0:0] avm_ml358_add_write,
    output wire [63:0] avm_ml358_add_writedata,
    output wire [63:0] avm_ml535_add_address,
    output wire [0:0] avm_ml535_add_burstcount,
    output wire [7:0] avm_ml535_add_byteenable,
    output wire [0:0] avm_ml535_add_enable,
    output wire [0:0] avm_ml535_add_read,
    output wire [0:0] avm_ml535_add_write,
    output wire [63:0] avm_ml535_add_writedata,
    output wire [63:0] avm_unmaskedload_lm4_add_address,
    output wire [0:0] avm_unmaskedload_lm4_add_burstcount,
    output wire [7:0] avm_unmaskedload_lm4_add_byteenable,
    output wire [0:0] avm_unmaskedload_lm4_add_enable,
    output wire [0:0] avm_unmaskedload_lm4_add_read,
    output wire [0:0] avm_unmaskedload_lm4_add_write,
    output wire [63:0] avm_unmaskedload_lm4_add_writedata,
    output wire [63:0] avm_unnamed_add2_add_address,
    output wire [0:0] avm_unnamed_add2_add_burstcount,
    output wire [7:0] avm_unnamed_add2_add_byteenable,
    output wire [0:0] avm_unnamed_add2_add_enable,
    output wire [0:0] avm_unnamed_add2_add_read,
    output wire [0:0] avm_unnamed_add2_add_write,
    output wire [63:0] avm_unnamed_add2_add_writedata,
    output wire [63:0] avm_unnamed_add3_add_address,
    output wire [0:0] avm_unnamed_add3_add_burstcount,
    output wire [7:0] avm_unnamed_add3_add_byteenable,
    output wire [0:0] avm_unnamed_add3_add_enable,
    output wire [0:0] avm_unnamed_add3_add_read,
    output wire [0:0] avm_unnamed_add3_add_write,
    output wire [63:0] avm_unnamed_add3_add_writedata,
    output wire [63:0] avm_unnamed_add4_add_address,
    output wire [0:0] avm_unnamed_add4_add_burstcount,
    output wire [7:0] avm_unnamed_add4_add_byteenable,
    output wire [0:0] avm_unnamed_add4_add_enable,
    output wire [0:0] avm_unnamed_add4_add_read,
    output wire [0:0] avm_unnamed_add4_add_write,
    output wire [63:0] avm_unnamed_add4_add_writedata,
    output wire [63:0] avm_unnamed_add5_add_address,
    output wire [0:0] avm_unnamed_add5_add_burstcount,
    output wire [7:0] avm_unnamed_add5_add_byteenable,
    output wire [0:0] avm_unnamed_add5_add_enable,
    output wire [0:0] avm_unnamed_add5_add_read,
    output wire [0:0] avm_unnamed_add5_add_write,
    output wire [63:0] avm_unnamed_add5_add_writedata,
    output wire [63:0] avm_unnamed_add6_add_address,
    output wire [0:0] avm_unnamed_add6_add_burstcount,
    output wire [7:0] avm_unnamed_add6_add_byteenable,
    output wire [0:0] avm_unnamed_add6_add_enable,
    output wire [0:0] avm_unnamed_add6_add_read,
    output wire [0:0] avm_unnamed_add6_add_write,
    output wire [63:0] avm_unnamed_add6_add_writedata,
    output wire [63:0] avm_unnamed_add7_add_address,
    output wire [0:0] avm_unnamed_add7_add_burstcount,
    output wire [7:0] avm_unnamed_add7_add_byteenable,
    output wire [0:0] avm_unnamed_add7_add_enable,
    output wire [0:0] avm_unnamed_add7_add_read,
    output wire [0:0] avm_unnamed_add7_add_write,
    output wire [63:0] avm_unnamed_add7_add_writedata,
    output wire [0:0] avst_iord_bl_call_add_almost_full,
    output wire [0:0] avst_iord_bl_call_add_ready,
    output wire [0:0] avst_iowr_bl_return_add_data,
    output wire [0:0] avst_iowr_bl_return_add_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] A_const_q;
    wire [0:0] add_function_out_iord_bl_call_add_o_fifoalmost_full;
    wire [0:0] add_function_out_iord_bl_call_add_o_fifoready;
    wire [0:0] add_function_out_iowr_bl_return_add_o_fifodata;
    wire [0:0] add_function_out_iowr_bl_return_add_o_fifovalid;
    wire [63:0] add_function_out_lm1076_add_avm_address;
    wire [0:0] add_function_out_lm1076_add_avm_burstcount;
    wire [7:0] add_function_out_lm1076_add_avm_byteenable;
    wire [0:0] add_function_out_lm1076_add_avm_enable;
    wire [0:0] add_function_out_lm1076_add_avm_read;
    wire [0:0] add_function_out_lm1076_add_avm_write;
    wire [63:0] add_function_out_lm1076_add_avm_writedata;
    wire [63:0] add_function_out_lm1097_add_avm_address;
    wire [0:0] add_function_out_lm1097_add_avm_burstcount;
    wire [7:0] add_function_out_lm1097_add_avm_byteenable;
    wire [0:0] add_function_out_lm1097_add_avm_enable;
    wire [0:0] add_function_out_lm1097_add_avm_read;
    wire [0:0] add_function_out_lm1097_add_avm_write;
    wire [63:0] add_function_out_lm1097_add_avm_writedata;
    wire [63:0] add_function_out_lm1269_add_avm_address;
    wire [0:0] add_function_out_lm1269_add_avm_burstcount;
    wire [7:0] add_function_out_lm1269_add_avm_byteenable;
    wire [0:0] add_function_out_lm1269_add_avm_enable;
    wire [0:0] add_function_out_lm1269_add_avm_read;
    wire [0:0] add_function_out_lm1269_add_avm_write;
    wire [63:0] add_function_out_lm1269_add_avm_writedata;
    wire [63:0] add_function_out_lm12810_add_avm_address;
    wire [0:0] add_function_out_lm12810_add_avm_burstcount;
    wire [7:0] add_function_out_lm12810_add_avm_byteenable;
    wire [0:0] add_function_out_lm12810_add_avm_enable;
    wire [0:0] add_function_out_lm12810_add_avm_read;
    wire [0:0] add_function_out_lm12810_add_avm_write;
    wire [63:0] add_function_out_lm12810_add_avm_writedata;
    wire [63:0] add_function_out_lm13212_add_avm_address;
    wire [0:0] add_function_out_lm13212_add_avm_burstcount;
    wire [7:0] add_function_out_lm13212_add_avm_byteenable;
    wire [0:0] add_function_out_lm13212_add_avm_enable;
    wire [0:0] add_function_out_lm13212_add_avm_read;
    wire [0:0] add_function_out_lm13212_add_avm_write;
    wire [63:0] add_function_out_lm13212_add_avm_writedata;
    wire [63:0] add_function_out_lm13413_add_avm_address;
    wire [0:0] add_function_out_lm13413_add_avm_burstcount;
    wire [7:0] add_function_out_lm13413_add_avm_byteenable;
    wire [0:0] add_function_out_lm13413_add_avm_enable;
    wire [0:0] add_function_out_lm13413_add_avm_read;
    wire [0:0] add_function_out_lm13413_add_avm_write;
    wire [63:0] add_function_out_lm13413_add_avm_writedata;
    wire [63:0] add_function_out_lm1_add_avm_address;
    wire [0:0] add_function_out_lm1_add_avm_burstcount;
    wire [7:0] add_function_out_lm1_add_avm_byteenable;
    wire [0:0] add_function_out_lm1_add_avm_enable;
    wire [0:0] add_function_out_lm1_add_avm_read;
    wire [0:0] add_function_out_lm1_add_avm_write;
    wire [63:0] add_function_out_lm1_add_avm_writedata;
    wire [63:0] add_function_out_lm722_add_avm_address;
    wire [0:0] add_function_out_lm722_add_avm_burstcount;
    wire [7:0] add_function_out_lm722_add_avm_byteenable;
    wire [0:0] add_function_out_lm722_add_avm_enable;
    wire [0:0] add_function_out_lm722_add_avm_read;
    wire [0:0] add_function_out_lm722_add_avm_write;
    wire [63:0] add_function_out_lm722_add_avm_writedata;
    wire [63:0] add_function_out_lm743_add_avm_address;
    wire [0:0] add_function_out_lm743_add_avm_burstcount;
    wire [7:0] add_function_out_lm743_add_avm_byteenable;
    wire [0:0] add_function_out_lm743_add_avm_enable;
    wire [0:0] add_function_out_lm743_add_avm_read;
    wire [0:0] add_function_out_lm743_add_avm_write;
    wire [63:0] add_function_out_lm743_add_avm_writedata;
    wire [63:0] add_function_out_memdep_16_add_avm_address;
    wire [0:0] add_function_out_memdep_16_add_avm_burstcount;
    wire [7:0] add_function_out_memdep_16_add_avm_byteenable;
    wire [0:0] add_function_out_memdep_16_add_avm_enable;
    wire [0:0] add_function_out_memdep_16_add_avm_read;
    wire [0:0] add_function_out_memdep_16_add_avm_write;
    wire [63:0] add_function_out_memdep_16_add_avm_writedata;
    wire [63:0] add_function_out_memdep_add_avm_address;
    wire [0:0] add_function_out_memdep_add_avm_burstcount;
    wire [7:0] add_function_out_memdep_add_avm_byteenable;
    wire [0:0] add_function_out_memdep_add_avm_enable;
    wire [0:0] add_function_out_memdep_add_avm_read;
    wire [0:0] add_function_out_memdep_add_avm_write;
    wire [63:0] add_function_out_memdep_add_avm_writedata;
    wire [63:0] add_function_out_ml3211_add_avm_address;
    wire [0:0] add_function_out_ml3211_add_avm_burstcount;
    wire [7:0] add_function_out_ml3211_add_avm_byteenable;
    wire [0:0] add_function_out_ml3211_add_avm_enable;
    wire [0:0] add_function_out_ml3211_add_avm_read;
    wire [0:0] add_function_out_ml3211_add_avm_write;
    wire [63:0] add_function_out_ml3211_add_avm_writedata;
    wire [63:0] add_function_out_ml358_add_avm_address;
    wire [0:0] add_function_out_ml358_add_avm_burstcount;
    wire [7:0] add_function_out_ml358_add_avm_byteenable;
    wire [0:0] add_function_out_ml358_add_avm_enable;
    wire [0:0] add_function_out_ml358_add_avm_read;
    wire [0:0] add_function_out_ml358_add_avm_write;
    wire [63:0] add_function_out_ml358_add_avm_writedata;
    wire [63:0] add_function_out_ml535_add_avm_address;
    wire [0:0] add_function_out_ml535_add_avm_burstcount;
    wire [7:0] add_function_out_ml535_add_avm_byteenable;
    wire [0:0] add_function_out_ml535_add_avm_enable;
    wire [0:0] add_function_out_ml535_add_avm_read;
    wire [0:0] add_function_out_ml535_add_avm_write;
    wire [63:0] add_function_out_ml535_add_avm_writedata;
    wire [63:0] add_function_out_unmaskedload_lm4_add_avm_address;
    wire [0:0] add_function_out_unmaskedload_lm4_add_avm_burstcount;
    wire [7:0] add_function_out_unmaskedload_lm4_add_avm_byteenable;
    wire [0:0] add_function_out_unmaskedload_lm4_add_avm_enable;
    wire [0:0] add_function_out_unmaskedload_lm4_add_avm_read;
    wire [0:0] add_function_out_unmaskedload_lm4_add_avm_write;
    wire [63:0] add_function_out_unmaskedload_lm4_add_avm_writedata;
    wire [63:0] add_function_out_unnamed_add2_add_avm_address;
    wire [0:0] add_function_out_unnamed_add2_add_avm_burstcount;
    wire [7:0] add_function_out_unnamed_add2_add_avm_byteenable;
    wire [0:0] add_function_out_unnamed_add2_add_avm_enable;
    wire [0:0] add_function_out_unnamed_add2_add_avm_read;
    wire [0:0] add_function_out_unnamed_add2_add_avm_write;
    wire [63:0] add_function_out_unnamed_add2_add_avm_writedata;
    wire [63:0] add_function_out_unnamed_add3_add_avm_address;
    wire [0:0] add_function_out_unnamed_add3_add_avm_burstcount;
    wire [7:0] add_function_out_unnamed_add3_add_avm_byteenable;
    wire [0:0] add_function_out_unnamed_add3_add_avm_enable;
    wire [0:0] add_function_out_unnamed_add3_add_avm_read;
    wire [0:0] add_function_out_unnamed_add3_add_avm_write;
    wire [63:0] add_function_out_unnamed_add3_add_avm_writedata;
    wire [63:0] add_function_out_unnamed_add4_add_avm_address;
    wire [0:0] add_function_out_unnamed_add4_add_avm_burstcount;
    wire [7:0] add_function_out_unnamed_add4_add_avm_byteenable;
    wire [0:0] add_function_out_unnamed_add4_add_avm_enable;
    wire [0:0] add_function_out_unnamed_add4_add_avm_read;
    wire [0:0] add_function_out_unnamed_add4_add_avm_write;
    wire [63:0] add_function_out_unnamed_add4_add_avm_writedata;
    wire [63:0] add_function_out_unnamed_add5_add_avm_address;
    wire [0:0] add_function_out_unnamed_add5_add_avm_burstcount;
    wire [7:0] add_function_out_unnamed_add5_add_avm_byteenable;
    wire [0:0] add_function_out_unnamed_add5_add_avm_enable;
    wire [0:0] add_function_out_unnamed_add5_add_avm_read;
    wire [0:0] add_function_out_unnamed_add5_add_avm_write;
    wire [63:0] add_function_out_unnamed_add5_add_avm_writedata;
    wire [63:0] add_function_out_unnamed_add6_add_avm_address;
    wire [0:0] add_function_out_unnamed_add6_add_avm_burstcount;
    wire [7:0] add_function_out_unnamed_add6_add_avm_byteenable;
    wire [0:0] add_function_out_unnamed_add6_add_avm_enable;
    wire [0:0] add_function_out_unnamed_add6_add_avm_read;
    wire [0:0] add_function_out_unnamed_add6_add_avm_write;
    wire [63:0] add_function_out_unnamed_add6_add_avm_writedata;
    wire [63:0] add_function_out_unnamed_add7_add_avm_address;
    wire [0:0] add_function_out_unnamed_add7_add_avm_burstcount;
    wire [7:0] add_function_out_unnamed_add7_add_avm_byteenable;
    wire [0:0] add_function_out_unnamed_add7_add_avm_enable;
    wire [0:0] add_function_out_unnamed_add7_add_avm_read;
    wire [0:0] add_function_out_unnamed_add7_add_avm_write;
    wire [63:0] add_function_out_unnamed_add7_add_avm_writedata;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [191:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,108)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,11)
    assign implicit_input_q = {C, B, A};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // add_function(BLACKBOX,5)
    add_function theadd_function (
        .in_arg_A(A_const_q),
        .in_arg_B(A_const_q),
        .in_arg_C(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_return(A_const_q),
        .in_iord_bl_call_add_i_fifodata(implicit_input_q),
        .in_iord_bl_call_add_i_fifovalid(start),
        .in_iowr_bl_return_add_i_fifoready(not_stall_q),
        .in_lm1076_add_avm_readdata(avm_lm1076_add_readdata),
        .in_lm1076_add_avm_readdatavalid(avm_lm1076_add_readdatavalid),
        .in_lm1076_add_avm_waitrequest(avm_lm1076_add_waitrequest),
        .in_lm1076_add_avm_writeack(avm_lm1076_add_writeack),
        .in_lm1097_add_avm_readdata(avm_lm1097_add_readdata),
        .in_lm1097_add_avm_readdatavalid(avm_lm1097_add_readdatavalid),
        .in_lm1097_add_avm_waitrequest(avm_lm1097_add_waitrequest),
        .in_lm1097_add_avm_writeack(avm_lm1097_add_writeack),
        .in_lm1269_add_avm_readdata(avm_lm1269_add_readdata),
        .in_lm1269_add_avm_readdatavalid(avm_lm1269_add_readdatavalid),
        .in_lm1269_add_avm_waitrequest(avm_lm1269_add_waitrequest),
        .in_lm1269_add_avm_writeack(avm_lm1269_add_writeack),
        .in_lm12810_add_avm_readdata(avm_lm12810_add_readdata),
        .in_lm12810_add_avm_readdatavalid(avm_lm12810_add_readdatavalid),
        .in_lm12810_add_avm_waitrequest(avm_lm12810_add_waitrequest),
        .in_lm12810_add_avm_writeack(avm_lm12810_add_writeack),
        .in_lm13212_add_avm_readdata(avm_lm13212_add_readdata),
        .in_lm13212_add_avm_readdatavalid(avm_lm13212_add_readdatavalid),
        .in_lm13212_add_avm_waitrequest(avm_lm13212_add_waitrequest),
        .in_lm13212_add_avm_writeack(avm_lm13212_add_writeack),
        .in_lm13413_add_avm_readdata(avm_lm13413_add_readdata),
        .in_lm13413_add_avm_readdatavalid(avm_lm13413_add_readdatavalid),
        .in_lm13413_add_avm_waitrequest(avm_lm13413_add_waitrequest),
        .in_lm13413_add_avm_writeack(avm_lm13413_add_writeack),
        .in_lm1_add_avm_readdata(avm_lm1_add_readdata),
        .in_lm1_add_avm_readdatavalid(avm_lm1_add_readdatavalid),
        .in_lm1_add_avm_waitrequest(avm_lm1_add_waitrequest),
        .in_lm1_add_avm_writeack(avm_lm1_add_writeack),
        .in_lm722_add_avm_readdata(avm_lm722_add_readdata),
        .in_lm722_add_avm_readdatavalid(avm_lm722_add_readdatavalid),
        .in_lm722_add_avm_waitrequest(avm_lm722_add_waitrequest),
        .in_lm722_add_avm_writeack(avm_lm722_add_writeack),
        .in_lm743_add_avm_readdata(avm_lm743_add_readdata),
        .in_lm743_add_avm_readdatavalid(avm_lm743_add_readdatavalid),
        .in_lm743_add_avm_waitrequest(avm_lm743_add_waitrequest),
        .in_lm743_add_avm_writeack(avm_lm743_add_writeack),
        .in_memdep_16_add_avm_readdata(avm_memdep_16_add_readdata),
        .in_memdep_16_add_avm_readdatavalid(avm_memdep_16_add_readdatavalid),
        .in_memdep_16_add_avm_waitrequest(avm_memdep_16_add_waitrequest),
        .in_memdep_16_add_avm_writeack(avm_memdep_16_add_writeack),
        .in_memdep_add_avm_readdata(avm_memdep_add_readdata),
        .in_memdep_add_avm_readdatavalid(avm_memdep_add_readdatavalid),
        .in_memdep_add_avm_waitrequest(avm_memdep_add_waitrequest),
        .in_memdep_add_avm_writeack(avm_memdep_add_writeack),
        .in_ml3211_add_avm_readdata(avm_ml3211_add_readdata),
        .in_ml3211_add_avm_readdatavalid(avm_ml3211_add_readdatavalid),
        .in_ml3211_add_avm_waitrequest(avm_ml3211_add_waitrequest),
        .in_ml3211_add_avm_writeack(avm_ml3211_add_writeack),
        .in_ml358_add_avm_readdata(avm_ml358_add_readdata),
        .in_ml358_add_avm_readdatavalid(avm_ml358_add_readdatavalid),
        .in_ml358_add_avm_waitrequest(avm_ml358_add_waitrequest),
        .in_ml358_add_avm_writeack(avm_ml358_add_writeack),
        .in_ml535_add_avm_readdata(avm_ml535_add_readdata),
        .in_ml535_add_avm_readdatavalid(avm_ml535_add_readdatavalid),
        .in_ml535_add_avm_waitrequest(avm_ml535_add_waitrequest),
        .in_ml535_add_avm_writeack(avm_ml535_add_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unmaskedload_lm4_add_avm_readdata(avm_unmaskedload_lm4_add_readdata),
        .in_unmaskedload_lm4_add_avm_readdatavalid(avm_unmaskedload_lm4_add_readdatavalid),
        .in_unmaskedload_lm4_add_avm_waitrequest(avm_unmaskedload_lm4_add_waitrequest),
        .in_unmaskedload_lm4_add_avm_writeack(avm_unmaskedload_lm4_add_writeack),
        .in_unnamed_add2_add_avm_readdata(avm_unnamed_add2_add_readdata),
        .in_unnamed_add2_add_avm_readdatavalid(avm_unnamed_add2_add_readdatavalid),
        .in_unnamed_add2_add_avm_waitrequest(avm_unnamed_add2_add_waitrequest),
        .in_unnamed_add2_add_avm_writeack(avm_unnamed_add2_add_writeack),
        .in_unnamed_add3_add_avm_readdata(avm_unnamed_add3_add_readdata),
        .in_unnamed_add3_add_avm_readdatavalid(avm_unnamed_add3_add_readdatavalid),
        .in_unnamed_add3_add_avm_waitrequest(avm_unnamed_add3_add_waitrequest),
        .in_unnamed_add3_add_avm_writeack(avm_unnamed_add3_add_writeack),
        .in_unnamed_add4_add_avm_readdata(avm_unnamed_add4_add_readdata),
        .in_unnamed_add4_add_avm_readdatavalid(avm_unnamed_add4_add_readdatavalid),
        .in_unnamed_add4_add_avm_waitrequest(avm_unnamed_add4_add_waitrequest),
        .in_unnamed_add4_add_avm_writeack(avm_unnamed_add4_add_writeack),
        .in_unnamed_add5_add_avm_readdata(avm_unnamed_add5_add_readdata),
        .in_unnamed_add5_add_avm_readdatavalid(avm_unnamed_add5_add_readdatavalid),
        .in_unnamed_add5_add_avm_waitrequest(avm_unnamed_add5_add_waitrequest),
        .in_unnamed_add5_add_avm_writeack(avm_unnamed_add5_add_writeack),
        .in_unnamed_add6_add_avm_readdata(avm_unnamed_add6_add_readdata),
        .in_unnamed_add6_add_avm_readdatavalid(avm_unnamed_add6_add_readdatavalid),
        .in_unnamed_add6_add_avm_waitrequest(avm_unnamed_add6_add_waitrequest),
        .in_unnamed_add6_add_avm_writeack(avm_unnamed_add6_add_writeack),
        .in_unnamed_add7_add_avm_readdata(avm_unnamed_add7_add_readdata),
        .in_unnamed_add7_add_avm_readdatavalid(avm_unnamed_add7_add_readdatavalid),
        .in_unnamed_add7_add_avm_waitrequest(avm_unnamed_add7_add_waitrequest),
        .in_unnamed_add7_add_avm_writeack(avm_unnamed_add7_add_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_add_o_fifoalmost_full(add_function_out_iord_bl_call_add_o_fifoalmost_full),
        .out_iord_bl_call_add_o_fifoready(add_function_out_iord_bl_call_add_o_fifoready),
        .out_iowr_bl_return_add_o_fifodata(add_function_out_iowr_bl_return_add_o_fifodata),
        .out_iowr_bl_return_add_o_fifovalid(add_function_out_iowr_bl_return_add_o_fifovalid),
        .out_lm1076_add_avm_address(add_function_out_lm1076_add_avm_address),
        .out_lm1076_add_avm_burstcount(add_function_out_lm1076_add_avm_burstcount),
        .out_lm1076_add_avm_byteenable(add_function_out_lm1076_add_avm_byteenable),
        .out_lm1076_add_avm_enable(add_function_out_lm1076_add_avm_enable),
        .out_lm1076_add_avm_read(add_function_out_lm1076_add_avm_read),
        .out_lm1076_add_avm_write(add_function_out_lm1076_add_avm_write),
        .out_lm1076_add_avm_writedata(add_function_out_lm1076_add_avm_writedata),
        .out_lm1097_add_avm_address(add_function_out_lm1097_add_avm_address),
        .out_lm1097_add_avm_burstcount(add_function_out_lm1097_add_avm_burstcount),
        .out_lm1097_add_avm_byteenable(add_function_out_lm1097_add_avm_byteenable),
        .out_lm1097_add_avm_enable(add_function_out_lm1097_add_avm_enable),
        .out_lm1097_add_avm_read(add_function_out_lm1097_add_avm_read),
        .out_lm1097_add_avm_write(add_function_out_lm1097_add_avm_write),
        .out_lm1097_add_avm_writedata(add_function_out_lm1097_add_avm_writedata),
        .out_lm1269_add_avm_address(add_function_out_lm1269_add_avm_address),
        .out_lm1269_add_avm_burstcount(add_function_out_lm1269_add_avm_burstcount),
        .out_lm1269_add_avm_byteenable(add_function_out_lm1269_add_avm_byteenable),
        .out_lm1269_add_avm_enable(add_function_out_lm1269_add_avm_enable),
        .out_lm1269_add_avm_read(add_function_out_lm1269_add_avm_read),
        .out_lm1269_add_avm_write(add_function_out_lm1269_add_avm_write),
        .out_lm1269_add_avm_writedata(add_function_out_lm1269_add_avm_writedata),
        .out_lm12810_add_avm_address(add_function_out_lm12810_add_avm_address),
        .out_lm12810_add_avm_burstcount(add_function_out_lm12810_add_avm_burstcount),
        .out_lm12810_add_avm_byteenable(add_function_out_lm12810_add_avm_byteenable),
        .out_lm12810_add_avm_enable(add_function_out_lm12810_add_avm_enable),
        .out_lm12810_add_avm_read(add_function_out_lm12810_add_avm_read),
        .out_lm12810_add_avm_write(add_function_out_lm12810_add_avm_write),
        .out_lm12810_add_avm_writedata(add_function_out_lm12810_add_avm_writedata),
        .out_lm13212_add_avm_address(add_function_out_lm13212_add_avm_address),
        .out_lm13212_add_avm_burstcount(add_function_out_lm13212_add_avm_burstcount),
        .out_lm13212_add_avm_byteenable(add_function_out_lm13212_add_avm_byteenable),
        .out_lm13212_add_avm_enable(add_function_out_lm13212_add_avm_enable),
        .out_lm13212_add_avm_read(add_function_out_lm13212_add_avm_read),
        .out_lm13212_add_avm_write(add_function_out_lm13212_add_avm_write),
        .out_lm13212_add_avm_writedata(add_function_out_lm13212_add_avm_writedata),
        .out_lm13413_add_avm_address(add_function_out_lm13413_add_avm_address),
        .out_lm13413_add_avm_burstcount(add_function_out_lm13413_add_avm_burstcount),
        .out_lm13413_add_avm_byteenable(add_function_out_lm13413_add_avm_byteenable),
        .out_lm13413_add_avm_enable(add_function_out_lm13413_add_avm_enable),
        .out_lm13413_add_avm_read(add_function_out_lm13413_add_avm_read),
        .out_lm13413_add_avm_write(add_function_out_lm13413_add_avm_write),
        .out_lm13413_add_avm_writedata(add_function_out_lm13413_add_avm_writedata),
        .out_lm1_add_avm_address(add_function_out_lm1_add_avm_address),
        .out_lm1_add_avm_burstcount(add_function_out_lm1_add_avm_burstcount),
        .out_lm1_add_avm_byteenable(add_function_out_lm1_add_avm_byteenable),
        .out_lm1_add_avm_enable(add_function_out_lm1_add_avm_enable),
        .out_lm1_add_avm_read(add_function_out_lm1_add_avm_read),
        .out_lm1_add_avm_write(add_function_out_lm1_add_avm_write),
        .out_lm1_add_avm_writedata(add_function_out_lm1_add_avm_writedata),
        .out_lm722_add_avm_address(add_function_out_lm722_add_avm_address),
        .out_lm722_add_avm_burstcount(add_function_out_lm722_add_avm_burstcount),
        .out_lm722_add_avm_byteenable(add_function_out_lm722_add_avm_byteenable),
        .out_lm722_add_avm_enable(add_function_out_lm722_add_avm_enable),
        .out_lm722_add_avm_read(add_function_out_lm722_add_avm_read),
        .out_lm722_add_avm_write(add_function_out_lm722_add_avm_write),
        .out_lm722_add_avm_writedata(add_function_out_lm722_add_avm_writedata),
        .out_lm743_add_avm_address(add_function_out_lm743_add_avm_address),
        .out_lm743_add_avm_burstcount(add_function_out_lm743_add_avm_burstcount),
        .out_lm743_add_avm_byteenable(add_function_out_lm743_add_avm_byteenable),
        .out_lm743_add_avm_enable(add_function_out_lm743_add_avm_enable),
        .out_lm743_add_avm_read(add_function_out_lm743_add_avm_read),
        .out_lm743_add_avm_write(add_function_out_lm743_add_avm_write),
        .out_lm743_add_avm_writedata(add_function_out_lm743_add_avm_writedata),
        .out_memdep_16_add_avm_address(add_function_out_memdep_16_add_avm_address),
        .out_memdep_16_add_avm_burstcount(add_function_out_memdep_16_add_avm_burstcount),
        .out_memdep_16_add_avm_byteenable(add_function_out_memdep_16_add_avm_byteenable),
        .out_memdep_16_add_avm_enable(add_function_out_memdep_16_add_avm_enable),
        .out_memdep_16_add_avm_read(add_function_out_memdep_16_add_avm_read),
        .out_memdep_16_add_avm_write(add_function_out_memdep_16_add_avm_write),
        .out_memdep_16_add_avm_writedata(add_function_out_memdep_16_add_avm_writedata),
        .out_memdep_add_avm_address(add_function_out_memdep_add_avm_address),
        .out_memdep_add_avm_burstcount(add_function_out_memdep_add_avm_burstcount),
        .out_memdep_add_avm_byteenable(add_function_out_memdep_add_avm_byteenable),
        .out_memdep_add_avm_enable(add_function_out_memdep_add_avm_enable),
        .out_memdep_add_avm_read(add_function_out_memdep_add_avm_read),
        .out_memdep_add_avm_write(add_function_out_memdep_add_avm_write),
        .out_memdep_add_avm_writedata(add_function_out_memdep_add_avm_writedata),
        .out_ml3211_add_avm_address(add_function_out_ml3211_add_avm_address),
        .out_ml3211_add_avm_burstcount(add_function_out_ml3211_add_avm_burstcount),
        .out_ml3211_add_avm_byteenable(add_function_out_ml3211_add_avm_byteenable),
        .out_ml3211_add_avm_enable(add_function_out_ml3211_add_avm_enable),
        .out_ml3211_add_avm_read(add_function_out_ml3211_add_avm_read),
        .out_ml3211_add_avm_write(add_function_out_ml3211_add_avm_write),
        .out_ml3211_add_avm_writedata(add_function_out_ml3211_add_avm_writedata),
        .out_ml358_add_avm_address(add_function_out_ml358_add_avm_address),
        .out_ml358_add_avm_burstcount(add_function_out_ml358_add_avm_burstcount),
        .out_ml358_add_avm_byteenable(add_function_out_ml358_add_avm_byteenable),
        .out_ml358_add_avm_enable(add_function_out_ml358_add_avm_enable),
        .out_ml358_add_avm_read(add_function_out_ml358_add_avm_read),
        .out_ml358_add_avm_write(add_function_out_ml358_add_avm_write),
        .out_ml358_add_avm_writedata(add_function_out_ml358_add_avm_writedata),
        .out_ml535_add_avm_address(add_function_out_ml535_add_avm_address),
        .out_ml535_add_avm_burstcount(add_function_out_ml535_add_avm_burstcount),
        .out_ml535_add_avm_byteenable(add_function_out_ml535_add_avm_byteenable),
        .out_ml535_add_avm_enable(add_function_out_ml535_add_avm_enable),
        .out_ml535_add_avm_read(add_function_out_ml535_add_avm_read),
        .out_ml535_add_avm_write(add_function_out_ml535_add_avm_write),
        .out_ml535_add_avm_writedata(add_function_out_ml535_add_avm_writedata),
        .out_o_active_memdep(),
        .out_o_active_memdep_16(),
        .out_stall_out(),
        .out_unmaskedload_lm4_add_avm_address(add_function_out_unmaskedload_lm4_add_avm_address),
        .out_unmaskedload_lm4_add_avm_burstcount(add_function_out_unmaskedload_lm4_add_avm_burstcount),
        .out_unmaskedload_lm4_add_avm_byteenable(add_function_out_unmaskedload_lm4_add_avm_byteenable),
        .out_unmaskedload_lm4_add_avm_enable(add_function_out_unmaskedload_lm4_add_avm_enable),
        .out_unmaskedload_lm4_add_avm_read(add_function_out_unmaskedload_lm4_add_avm_read),
        .out_unmaskedload_lm4_add_avm_write(add_function_out_unmaskedload_lm4_add_avm_write),
        .out_unmaskedload_lm4_add_avm_writedata(add_function_out_unmaskedload_lm4_add_avm_writedata),
        .out_unnamed_add2_add_avm_address(add_function_out_unnamed_add2_add_avm_address),
        .out_unnamed_add2_add_avm_burstcount(add_function_out_unnamed_add2_add_avm_burstcount),
        .out_unnamed_add2_add_avm_byteenable(add_function_out_unnamed_add2_add_avm_byteenable),
        .out_unnamed_add2_add_avm_enable(add_function_out_unnamed_add2_add_avm_enable),
        .out_unnamed_add2_add_avm_read(add_function_out_unnamed_add2_add_avm_read),
        .out_unnamed_add2_add_avm_write(add_function_out_unnamed_add2_add_avm_write),
        .out_unnamed_add2_add_avm_writedata(add_function_out_unnamed_add2_add_avm_writedata),
        .out_unnamed_add3_add_avm_address(add_function_out_unnamed_add3_add_avm_address),
        .out_unnamed_add3_add_avm_burstcount(add_function_out_unnamed_add3_add_avm_burstcount),
        .out_unnamed_add3_add_avm_byteenable(add_function_out_unnamed_add3_add_avm_byteenable),
        .out_unnamed_add3_add_avm_enable(add_function_out_unnamed_add3_add_avm_enable),
        .out_unnamed_add3_add_avm_read(add_function_out_unnamed_add3_add_avm_read),
        .out_unnamed_add3_add_avm_write(add_function_out_unnamed_add3_add_avm_write),
        .out_unnamed_add3_add_avm_writedata(add_function_out_unnamed_add3_add_avm_writedata),
        .out_unnamed_add4_add_avm_address(add_function_out_unnamed_add4_add_avm_address),
        .out_unnamed_add4_add_avm_burstcount(add_function_out_unnamed_add4_add_avm_burstcount),
        .out_unnamed_add4_add_avm_byteenable(add_function_out_unnamed_add4_add_avm_byteenable),
        .out_unnamed_add4_add_avm_enable(add_function_out_unnamed_add4_add_avm_enable),
        .out_unnamed_add4_add_avm_read(add_function_out_unnamed_add4_add_avm_read),
        .out_unnamed_add4_add_avm_write(add_function_out_unnamed_add4_add_avm_write),
        .out_unnamed_add4_add_avm_writedata(add_function_out_unnamed_add4_add_avm_writedata),
        .out_unnamed_add5_add_avm_address(add_function_out_unnamed_add5_add_avm_address),
        .out_unnamed_add5_add_avm_burstcount(add_function_out_unnamed_add5_add_avm_burstcount),
        .out_unnamed_add5_add_avm_byteenable(add_function_out_unnamed_add5_add_avm_byteenable),
        .out_unnamed_add5_add_avm_enable(add_function_out_unnamed_add5_add_avm_enable),
        .out_unnamed_add5_add_avm_read(add_function_out_unnamed_add5_add_avm_read),
        .out_unnamed_add5_add_avm_write(add_function_out_unnamed_add5_add_avm_write),
        .out_unnamed_add5_add_avm_writedata(add_function_out_unnamed_add5_add_avm_writedata),
        .out_unnamed_add6_add_avm_address(add_function_out_unnamed_add6_add_avm_address),
        .out_unnamed_add6_add_avm_burstcount(add_function_out_unnamed_add6_add_avm_burstcount),
        .out_unnamed_add6_add_avm_byteenable(add_function_out_unnamed_add6_add_avm_byteenable),
        .out_unnamed_add6_add_avm_enable(add_function_out_unnamed_add6_add_avm_enable),
        .out_unnamed_add6_add_avm_read(add_function_out_unnamed_add6_add_avm_read),
        .out_unnamed_add6_add_avm_write(add_function_out_unnamed_add6_add_avm_write),
        .out_unnamed_add6_add_avm_writedata(add_function_out_unnamed_add6_add_avm_writedata),
        .out_unnamed_add7_add_avm_address(add_function_out_unnamed_add7_add_avm_address),
        .out_unnamed_add7_add_avm_burstcount(add_function_out_unnamed_add7_add_avm_burstcount),
        .out_unnamed_add7_add_avm_byteenable(add_function_out_unnamed_add7_add_avm_byteenable),
        .out_unnamed_add7_add_avm_enable(add_function_out_unnamed_add7_add_avm_enable),
        .out_unnamed_add7_add_avm_read(add_function_out_unnamed_add7_add_avm_read),
        .out_unnamed_add7_add_avm_write(add_function_out_unnamed_add7_add_avm_write),
        .out_unnamed_add7_add_avm_writedata(add_function_out_unnamed_add7_add_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1076_add_address(GPOUT,109)
    assign avm_lm1076_add_address = add_function_out_lm1076_add_avm_address;

    // avm_lm1076_add_burstcount(GPOUT,110)
    assign avm_lm1076_add_burstcount = add_function_out_lm1076_add_avm_burstcount;

    // avm_lm1076_add_byteenable(GPOUT,111)
    assign avm_lm1076_add_byteenable = add_function_out_lm1076_add_avm_byteenable;

    // avm_lm1076_add_enable(GPOUT,112)
    assign avm_lm1076_add_enable = add_function_out_lm1076_add_avm_enable;

    // avm_lm1076_add_read(GPOUT,113)
    assign avm_lm1076_add_read = add_function_out_lm1076_add_avm_read;

    // avm_lm1076_add_write(GPOUT,114)
    assign avm_lm1076_add_write = add_function_out_lm1076_add_avm_write;

    // avm_lm1076_add_writedata(GPOUT,115)
    assign avm_lm1076_add_writedata = add_function_out_lm1076_add_avm_writedata;

    // avm_lm1097_add_address(GPOUT,116)
    assign avm_lm1097_add_address = add_function_out_lm1097_add_avm_address;

    // avm_lm1097_add_burstcount(GPOUT,117)
    assign avm_lm1097_add_burstcount = add_function_out_lm1097_add_avm_burstcount;

    // avm_lm1097_add_byteenable(GPOUT,118)
    assign avm_lm1097_add_byteenable = add_function_out_lm1097_add_avm_byteenable;

    // avm_lm1097_add_enable(GPOUT,119)
    assign avm_lm1097_add_enable = add_function_out_lm1097_add_avm_enable;

    // avm_lm1097_add_read(GPOUT,120)
    assign avm_lm1097_add_read = add_function_out_lm1097_add_avm_read;

    // avm_lm1097_add_write(GPOUT,121)
    assign avm_lm1097_add_write = add_function_out_lm1097_add_avm_write;

    // avm_lm1097_add_writedata(GPOUT,122)
    assign avm_lm1097_add_writedata = add_function_out_lm1097_add_avm_writedata;

    // avm_lm1269_add_address(GPOUT,123)
    assign avm_lm1269_add_address = add_function_out_lm1269_add_avm_address;

    // avm_lm1269_add_burstcount(GPOUT,124)
    assign avm_lm1269_add_burstcount = add_function_out_lm1269_add_avm_burstcount;

    // avm_lm1269_add_byteenable(GPOUT,125)
    assign avm_lm1269_add_byteenable = add_function_out_lm1269_add_avm_byteenable;

    // avm_lm1269_add_enable(GPOUT,126)
    assign avm_lm1269_add_enable = add_function_out_lm1269_add_avm_enable;

    // avm_lm1269_add_read(GPOUT,127)
    assign avm_lm1269_add_read = add_function_out_lm1269_add_avm_read;

    // avm_lm1269_add_write(GPOUT,128)
    assign avm_lm1269_add_write = add_function_out_lm1269_add_avm_write;

    // avm_lm1269_add_writedata(GPOUT,129)
    assign avm_lm1269_add_writedata = add_function_out_lm1269_add_avm_writedata;

    // avm_lm12810_add_address(GPOUT,130)
    assign avm_lm12810_add_address = add_function_out_lm12810_add_avm_address;

    // avm_lm12810_add_burstcount(GPOUT,131)
    assign avm_lm12810_add_burstcount = add_function_out_lm12810_add_avm_burstcount;

    // avm_lm12810_add_byteenable(GPOUT,132)
    assign avm_lm12810_add_byteenable = add_function_out_lm12810_add_avm_byteenable;

    // avm_lm12810_add_enable(GPOUT,133)
    assign avm_lm12810_add_enable = add_function_out_lm12810_add_avm_enable;

    // avm_lm12810_add_read(GPOUT,134)
    assign avm_lm12810_add_read = add_function_out_lm12810_add_avm_read;

    // avm_lm12810_add_write(GPOUT,135)
    assign avm_lm12810_add_write = add_function_out_lm12810_add_avm_write;

    // avm_lm12810_add_writedata(GPOUT,136)
    assign avm_lm12810_add_writedata = add_function_out_lm12810_add_avm_writedata;

    // avm_lm13212_add_address(GPOUT,137)
    assign avm_lm13212_add_address = add_function_out_lm13212_add_avm_address;

    // avm_lm13212_add_burstcount(GPOUT,138)
    assign avm_lm13212_add_burstcount = add_function_out_lm13212_add_avm_burstcount;

    // avm_lm13212_add_byteenable(GPOUT,139)
    assign avm_lm13212_add_byteenable = add_function_out_lm13212_add_avm_byteenable;

    // avm_lm13212_add_enable(GPOUT,140)
    assign avm_lm13212_add_enable = add_function_out_lm13212_add_avm_enable;

    // avm_lm13212_add_read(GPOUT,141)
    assign avm_lm13212_add_read = add_function_out_lm13212_add_avm_read;

    // avm_lm13212_add_write(GPOUT,142)
    assign avm_lm13212_add_write = add_function_out_lm13212_add_avm_write;

    // avm_lm13212_add_writedata(GPOUT,143)
    assign avm_lm13212_add_writedata = add_function_out_lm13212_add_avm_writedata;

    // avm_lm13413_add_address(GPOUT,144)
    assign avm_lm13413_add_address = add_function_out_lm13413_add_avm_address;

    // avm_lm13413_add_burstcount(GPOUT,145)
    assign avm_lm13413_add_burstcount = add_function_out_lm13413_add_avm_burstcount;

    // avm_lm13413_add_byteenable(GPOUT,146)
    assign avm_lm13413_add_byteenable = add_function_out_lm13413_add_avm_byteenable;

    // avm_lm13413_add_enable(GPOUT,147)
    assign avm_lm13413_add_enable = add_function_out_lm13413_add_avm_enable;

    // avm_lm13413_add_read(GPOUT,148)
    assign avm_lm13413_add_read = add_function_out_lm13413_add_avm_read;

    // avm_lm13413_add_write(GPOUT,149)
    assign avm_lm13413_add_write = add_function_out_lm13413_add_avm_write;

    // avm_lm13413_add_writedata(GPOUT,150)
    assign avm_lm13413_add_writedata = add_function_out_lm13413_add_avm_writedata;

    // avm_lm1_add_address(GPOUT,151)
    assign avm_lm1_add_address = add_function_out_lm1_add_avm_address;

    // avm_lm1_add_burstcount(GPOUT,152)
    assign avm_lm1_add_burstcount = add_function_out_lm1_add_avm_burstcount;

    // avm_lm1_add_byteenable(GPOUT,153)
    assign avm_lm1_add_byteenable = add_function_out_lm1_add_avm_byteenable;

    // avm_lm1_add_enable(GPOUT,154)
    assign avm_lm1_add_enable = add_function_out_lm1_add_avm_enable;

    // avm_lm1_add_read(GPOUT,155)
    assign avm_lm1_add_read = add_function_out_lm1_add_avm_read;

    // avm_lm1_add_write(GPOUT,156)
    assign avm_lm1_add_write = add_function_out_lm1_add_avm_write;

    // avm_lm1_add_writedata(GPOUT,157)
    assign avm_lm1_add_writedata = add_function_out_lm1_add_avm_writedata;

    // avm_lm722_add_address(GPOUT,158)
    assign avm_lm722_add_address = add_function_out_lm722_add_avm_address;

    // avm_lm722_add_burstcount(GPOUT,159)
    assign avm_lm722_add_burstcount = add_function_out_lm722_add_avm_burstcount;

    // avm_lm722_add_byteenable(GPOUT,160)
    assign avm_lm722_add_byteenable = add_function_out_lm722_add_avm_byteenable;

    // avm_lm722_add_enable(GPOUT,161)
    assign avm_lm722_add_enable = add_function_out_lm722_add_avm_enable;

    // avm_lm722_add_read(GPOUT,162)
    assign avm_lm722_add_read = add_function_out_lm722_add_avm_read;

    // avm_lm722_add_write(GPOUT,163)
    assign avm_lm722_add_write = add_function_out_lm722_add_avm_write;

    // avm_lm722_add_writedata(GPOUT,164)
    assign avm_lm722_add_writedata = add_function_out_lm722_add_avm_writedata;

    // avm_lm743_add_address(GPOUT,165)
    assign avm_lm743_add_address = add_function_out_lm743_add_avm_address;

    // avm_lm743_add_burstcount(GPOUT,166)
    assign avm_lm743_add_burstcount = add_function_out_lm743_add_avm_burstcount;

    // avm_lm743_add_byteenable(GPOUT,167)
    assign avm_lm743_add_byteenable = add_function_out_lm743_add_avm_byteenable;

    // avm_lm743_add_enable(GPOUT,168)
    assign avm_lm743_add_enable = add_function_out_lm743_add_avm_enable;

    // avm_lm743_add_read(GPOUT,169)
    assign avm_lm743_add_read = add_function_out_lm743_add_avm_read;

    // avm_lm743_add_write(GPOUT,170)
    assign avm_lm743_add_write = add_function_out_lm743_add_avm_write;

    // avm_lm743_add_writedata(GPOUT,171)
    assign avm_lm743_add_writedata = add_function_out_lm743_add_avm_writedata;

    // avm_memdep_16_add_address(GPOUT,172)
    assign avm_memdep_16_add_address = add_function_out_memdep_16_add_avm_address;

    // avm_memdep_16_add_burstcount(GPOUT,173)
    assign avm_memdep_16_add_burstcount = add_function_out_memdep_16_add_avm_burstcount;

    // avm_memdep_16_add_byteenable(GPOUT,174)
    assign avm_memdep_16_add_byteenable = add_function_out_memdep_16_add_avm_byteenable;

    // avm_memdep_16_add_enable(GPOUT,175)
    assign avm_memdep_16_add_enable = add_function_out_memdep_16_add_avm_enable;

    // avm_memdep_16_add_read(GPOUT,176)
    assign avm_memdep_16_add_read = add_function_out_memdep_16_add_avm_read;

    // avm_memdep_16_add_write(GPOUT,177)
    assign avm_memdep_16_add_write = add_function_out_memdep_16_add_avm_write;

    // avm_memdep_16_add_writedata(GPOUT,178)
    assign avm_memdep_16_add_writedata = add_function_out_memdep_16_add_avm_writedata;

    // avm_memdep_add_address(GPOUT,179)
    assign avm_memdep_add_address = add_function_out_memdep_add_avm_address;

    // avm_memdep_add_burstcount(GPOUT,180)
    assign avm_memdep_add_burstcount = add_function_out_memdep_add_avm_burstcount;

    // avm_memdep_add_byteenable(GPOUT,181)
    assign avm_memdep_add_byteenable = add_function_out_memdep_add_avm_byteenable;

    // avm_memdep_add_enable(GPOUT,182)
    assign avm_memdep_add_enable = add_function_out_memdep_add_avm_enable;

    // avm_memdep_add_read(GPOUT,183)
    assign avm_memdep_add_read = add_function_out_memdep_add_avm_read;

    // avm_memdep_add_write(GPOUT,184)
    assign avm_memdep_add_write = add_function_out_memdep_add_avm_write;

    // avm_memdep_add_writedata(GPOUT,185)
    assign avm_memdep_add_writedata = add_function_out_memdep_add_avm_writedata;

    // avm_ml3211_add_address(GPOUT,186)
    assign avm_ml3211_add_address = add_function_out_ml3211_add_avm_address;

    // avm_ml3211_add_burstcount(GPOUT,187)
    assign avm_ml3211_add_burstcount = add_function_out_ml3211_add_avm_burstcount;

    // avm_ml3211_add_byteenable(GPOUT,188)
    assign avm_ml3211_add_byteenable = add_function_out_ml3211_add_avm_byteenable;

    // avm_ml3211_add_enable(GPOUT,189)
    assign avm_ml3211_add_enable = add_function_out_ml3211_add_avm_enable;

    // avm_ml3211_add_read(GPOUT,190)
    assign avm_ml3211_add_read = add_function_out_ml3211_add_avm_read;

    // avm_ml3211_add_write(GPOUT,191)
    assign avm_ml3211_add_write = add_function_out_ml3211_add_avm_write;

    // avm_ml3211_add_writedata(GPOUT,192)
    assign avm_ml3211_add_writedata = add_function_out_ml3211_add_avm_writedata;

    // avm_ml358_add_address(GPOUT,193)
    assign avm_ml358_add_address = add_function_out_ml358_add_avm_address;

    // avm_ml358_add_burstcount(GPOUT,194)
    assign avm_ml358_add_burstcount = add_function_out_ml358_add_avm_burstcount;

    // avm_ml358_add_byteenable(GPOUT,195)
    assign avm_ml358_add_byteenable = add_function_out_ml358_add_avm_byteenable;

    // avm_ml358_add_enable(GPOUT,196)
    assign avm_ml358_add_enable = add_function_out_ml358_add_avm_enable;

    // avm_ml358_add_read(GPOUT,197)
    assign avm_ml358_add_read = add_function_out_ml358_add_avm_read;

    // avm_ml358_add_write(GPOUT,198)
    assign avm_ml358_add_write = add_function_out_ml358_add_avm_write;

    // avm_ml358_add_writedata(GPOUT,199)
    assign avm_ml358_add_writedata = add_function_out_ml358_add_avm_writedata;

    // avm_ml535_add_address(GPOUT,200)
    assign avm_ml535_add_address = add_function_out_ml535_add_avm_address;

    // avm_ml535_add_burstcount(GPOUT,201)
    assign avm_ml535_add_burstcount = add_function_out_ml535_add_avm_burstcount;

    // avm_ml535_add_byteenable(GPOUT,202)
    assign avm_ml535_add_byteenable = add_function_out_ml535_add_avm_byteenable;

    // avm_ml535_add_enable(GPOUT,203)
    assign avm_ml535_add_enable = add_function_out_ml535_add_avm_enable;

    // avm_ml535_add_read(GPOUT,204)
    assign avm_ml535_add_read = add_function_out_ml535_add_avm_read;

    // avm_ml535_add_write(GPOUT,205)
    assign avm_ml535_add_write = add_function_out_ml535_add_avm_write;

    // avm_ml535_add_writedata(GPOUT,206)
    assign avm_ml535_add_writedata = add_function_out_ml535_add_avm_writedata;

    // avm_unmaskedload_lm4_add_address(GPOUT,207)
    assign avm_unmaskedload_lm4_add_address = add_function_out_unmaskedload_lm4_add_avm_address;

    // avm_unmaskedload_lm4_add_burstcount(GPOUT,208)
    assign avm_unmaskedload_lm4_add_burstcount = add_function_out_unmaskedload_lm4_add_avm_burstcount;

    // avm_unmaskedload_lm4_add_byteenable(GPOUT,209)
    assign avm_unmaskedload_lm4_add_byteenable = add_function_out_unmaskedload_lm4_add_avm_byteenable;

    // avm_unmaskedload_lm4_add_enable(GPOUT,210)
    assign avm_unmaskedload_lm4_add_enable = add_function_out_unmaskedload_lm4_add_avm_enable;

    // avm_unmaskedload_lm4_add_read(GPOUT,211)
    assign avm_unmaskedload_lm4_add_read = add_function_out_unmaskedload_lm4_add_avm_read;

    // avm_unmaskedload_lm4_add_write(GPOUT,212)
    assign avm_unmaskedload_lm4_add_write = add_function_out_unmaskedload_lm4_add_avm_write;

    // avm_unmaskedload_lm4_add_writedata(GPOUT,213)
    assign avm_unmaskedload_lm4_add_writedata = add_function_out_unmaskedload_lm4_add_avm_writedata;

    // avm_unnamed_add2_add_address(GPOUT,214)
    assign avm_unnamed_add2_add_address = add_function_out_unnamed_add2_add_avm_address;

    // avm_unnamed_add2_add_burstcount(GPOUT,215)
    assign avm_unnamed_add2_add_burstcount = add_function_out_unnamed_add2_add_avm_burstcount;

    // avm_unnamed_add2_add_byteenable(GPOUT,216)
    assign avm_unnamed_add2_add_byteenable = add_function_out_unnamed_add2_add_avm_byteenable;

    // avm_unnamed_add2_add_enable(GPOUT,217)
    assign avm_unnamed_add2_add_enable = add_function_out_unnamed_add2_add_avm_enable;

    // avm_unnamed_add2_add_read(GPOUT,218)
    assign avm_unnamed_add2_add_read = add_function_out_unnamed_add2_add_avm_read;

    // avm_unnamed_add2_add_write(GPOUT,219)
    assign avm_unnamed_add2_add_write = add_function_out_unnamed_add2_add_avm_write;

    // avm_unnamed_add2_add_writedata(GPOUT,220)
    assign avm_unnamed_add2_add_writedata = add_function_out_unnamed_add2_add_avm_writedata;

    // avm_unnamed_add3_add_address(GPOUT,221)
    assign avm_unnamed_add3_add_address = add_function_out_unnamed_add3_add_avm_address;

    // avm_unnamed_add3_add_burstcount(GPOUT,222)
    assign avm_unnamed_add3_add_burstcount = add_function_out_unnamed_add3_add_avm_burstcount;

    // avm_unnamed_add3_add_byteenable(GPOUT,223)
    assign avm_unnamed_add3_add_byteenable = add_function_out_unnamed_add3_add_avm_byteenable;

    // avm_unnamed_add3_add_enable(GPOUT,224)
    assign avm_unnamed_add3_add_enable = add_function_out_unnamed_add3_add_avm_enable;

    // avm_unnamed_add3_add_read(GPOUT,225)
    assign avm_unnamed_add3_add_read = add_function_out_unnamed_add3_add_avm_read;

    // avm_unnamed_add3_add_write(GPOUT,226)
    assign avm_unnamed_add3_add_write = add_function_out_unnamed_add3_add_avm_write;

    // avm_unnamed_add3_add_writedata(GPOUT,227)
    assign avm_unnamed_add3_add_writedata = add_function_out_unnamed_add3_add_avm_writedata;

    // avm_unnamed_add4_add_address(GPOUT,228)
    assign avm_unnamed_add4_add_address = add_function_out_unnamed_add4_add_avm_address;

    // avm_unnamed_add4_add_burstcount(GPOUT,229)
    assign avm_unnamed_add4_add_burstcount = add_function_out_unnamed_add4_add_avm_burstcount;

    // avm_unnamed_add4_add_byteenable(GPOUT,230)
    assign avm_unnamed_add4_add_byteenable = add_function_out_unnamed_add4_add_avm_byteenable;

    // avm_unnamed_add4_add_enable(GPOUT,231)
    assign avm_unnamed_add4_add_enable = add_function_out_unnamed_add4_add_avm_enable;

    // avm_unnamed_add4_add_read(GPOUT,232)
    assign avm_unnamed_add4_add_read = add_function_out_unnamed_add4_add_avm_read;

    // avm_unnamed_add4_add_write(GPOUT,233)
    assign avm_unnamed_add4_add_write = add_function_out_unnamed_add4_add_avm_write;

    // avm_unnamed_add4_add_writedata(GPOUT,234)
    assign avm_unnamed_add4_add_writedata = add_function_out_unnamed_add4_add_avm_writedata;

    // avm_unnamed_add5_add_address(GPOUT,235)
    assign avm_unnamed_add5_add_address = add_function_out_unnamed_add5_add_avm_address;

    // avm_unnamed_add5_add_burstcount(GPOUT,236)
    assign avm_unnamed_add5_add_burstcount = add_function_out_unnamed_add5_add_avm_burstcount;

    // avm_unnamed_add5_add_byteenable(GPOUT,237)
    assign avm_unnamed_add5_add_byteenable = add_function_out_unnamed_add5_add_avm_byteenable;

    // avm_unnamed_add5_add_enable(GPOUT,238)
    assign avm_unnamed_add5_add_enable = add_function_out_unnamed_add5_add_avm_enable;

    // avm_unnamed_add5_add_read(GPOUT,239)
    assign avm_unnamed_add5_add_read = add_function_out_unnamed_add5_add_avm_read;

    // avm_unnamed_add5_add_write(GPOUT,240)
    assign avm_unnamed_add5_add_write = add_function_out_unnamed_add5_add_avm_write;

    // avm_unnamed_add5_add_writedata(GPOUT,241)
    assign avm_unnamed_add5_add_writedata = add_function_out_unnamed_add5_add_avm_writedata;

    // avm_unnamed_add6_add_address(GPOUT,242)
    assign avm_unnamed_add6_add_address = add_function_out_unnamed_add6_add_avm_address;

    // avm_unnamed_add6_add_burstcount(GPOUT,243)
    assign avm_unnamed_add6_add_burstcount = add_function_out_unnamed_add6_add_avm_burstcount;

    // avm_unnamed_add6_add_byteenable(GPOUT,244)
    assign avm_unnamed_add6_add_byteenable = add_function_out_unnamed_add6_add_avm_byteenable;

    // avm_unnamed_add6_add_enable(GPOUT,245)
    assign avm_unnamed_add6_add_enable = add_function_out_unnamed_add6_add_avm_enable;

    // avm_unnamed_add6_add_read(GPOUT,246)
    assign avm_unnamed_add6_add_read = add_function_out_unnamed_add6_add_avm_read;

    // avm_unnamed_add6_add_write(GPOUT,247)
    assign avm_unnamed_add6_add_write = add_function_out_unnamed_add6_add_avm_write;

    // avm_unnamed_add6_add_writedata(GPOUT,248)
    assign avm_unnamed_add6_add_writedata = add_function_out_unnamed_add6_add_avm_writedata;

    // avm_unnamed_add7_add_address(GPOUT,249)
    assign avm_unnamed_add7_add_address = add_function_out_unnamed_add7_add_avm_address;

    // avm_unnamed_add7_add_burstcount(GPOUT,250)
    assign avm_unnamed_add7_add_burstcount = add_function_out_unnamed_add7_add_avm_burstcount;

    // avm_unnamed_add7_add_byteenable(GPOUT,251)
    assign avm_unnamed_add7_add_byteenable = add_function_out_unnamed_add7_add_avm_byteenable;

    // avm_unnamed_add7_add_enable(GPOUT,252)
    assign avm_unnamed_add7_add_enable = add_function_out_unnamed_add7_add_avm_enable;

    // avm_unnamed_add7_add_read(GPOUT,253)
    assign avm_unnamed_add7_add_read = add_function_out_unnamed_add7_add_avm_read;

    // avm_unnamed_add7_add_write(GPOUT,254)
    assign avm_unnamed_add7_add_write = add_function_out_unnamed_add7_add_avm_write;

    // avm_unnamed_add7_add_writedata(GPOUT,255)
    assign avm_unnamed_add7_add_writedata = add_function_out_unnamed_add7_add_avm_writedata;

    // avst_iord_bl_call_add_almost_full(GPOUT,256)
    assign avst_iord_bl_call_add_almost_full = add_function_out_iord_bl_call_add_o_fifoalmost_full;

    // avst_iord_bl_call_add_ready(GPOUT,257)
    assign avst_iord_bl_call_add_ready = add_function_out_iord_bl_call_add_o_fifoready;

    // avst_iowr_bl_return_add_data(GPOUT,258)
    assign avst_iowr_bl_return_add_data = add_function_out_iowr_bl_return_add_o_fifodata;

    // avst_iowr_bl_return_add_valid(GPOUT,259)
    assign avst_iowr_bl_return_add_valid = add_function_out_iowr_bl_return_add_o_fifovalid;

    // not_ready(LOGICAL,107)
    assign not_ready_q = ~ (add_function_out_iord_bl_call_add_o_fifoready);

    // busy_and(LOGICAL,6)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,263)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,262)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,7)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,260)
    assign busy = busy_or_q;

    // done(GPOUT,261)
    assign done = add_function_out_iowr_bl_return_add_o_fifovalid;

endmodule
