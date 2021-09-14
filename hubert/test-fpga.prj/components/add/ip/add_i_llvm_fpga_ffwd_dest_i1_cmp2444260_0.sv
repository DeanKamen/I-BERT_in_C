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

// SystemVerilog created from add_i_llvm_fpga_ffwd_dest_i1_cmp2444260_0
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_i_llvm_fpga_ffwd_dest_i1_cmp2444260_0 (
    output wire [0:0] out_dest_data_out_13_0,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_13_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc4_sel_x_b;
    wire [6:0] c_i7_03_q;
    wire [7:0] element_extension2_q;
    wire [7:0] i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_data_in;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_stall_in;
    wire i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_valid_in;
    wire i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_valid_in_bitsignaltemp;
    wire [7:0] i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_data_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_stall_out;
    wire i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_valid_out;
    wire i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_valid_out_bitsignaltemp;


    // c_i7_03(CONSTANT,5)
    assign c_i7_03_q = $unsigned(7'b0000000);

    // element_extension2(BITJOIN,6)@20000000
    assign element_extension2_q = {c_i7_03_q, in_intel_reserved_ffwd_13_0};

    // i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1(EXTIFACE,7)@2
    assign i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_data_in = element_extension2_q;
    assign i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_stall_in = in_stall_in;
    assign i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_stall_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_stall_in[0];
    assign i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_valid_in[0];
    assign i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_stall_out[0] = i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_valid_out[0] = i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_valid_out_bitsignaltemp;
    acl_ffwddst #(
        .MAX_LATENCY(0),
        .MIN_CAPACITY(0),
        .STALL_FREE(1),
        .WIDTH(8)
    ) thei_llvm_fpga_ffwd_dest_i1_cmp2444260_add1 (
        .data_in(element_extension2_q),
        .stall_in(i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_data_out),
        .stall_out(i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // adapt_scalar_trunc4_sel_x(BITSELECT,2)@2
    assign adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_data_out[0:0];

    // dupName_0_sync_out_x(GPOUT,3)@2
    assign out_dest_data_out_13_0 = adapt_scalar_trunc4_sel_x_b;
    assign out_valid_out = i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_valid_out;

    // sync_out(GPOUT,10)@2
    assign out_stall_out = i_llvm_fpga_ffwd_dest_i1_cmp2444260_add1_stall_out;

endmodule
