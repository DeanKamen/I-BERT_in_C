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

// SystemVerilog created from add_B5_merge
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_B5_merge (
    input wire [0:0] in_forked73_0,
    input wire [0:0] in_forked73_1,
    input wire [31:0] in_inc7_i147_0,
    input wire [31:0] in_inc7_i147_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked73,
    output wire [31:0] out_inc7_i147,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked73_mux_s;
    reg [0:0] forked73_mux_q;
    wire [0:0] inc7_i147_mux_s;
    reg [31:0] inc7_i147_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked73_mux(MUX,2)
    assign forked73_mux_s = in_valid_in_0;
    always @(forked73_mux_s or in_forked73_1 or in_forked73_0)
    begin
        unique case (forked73_mux_s)
            1'b0 : forked73_mux_q = in_forked73_1;
            1'b1 : forked73_mux_q = in_forked73_0;
            default : forked73_mux_q = 1'b0;
        endcase
    end

    // out_forked73(GPOUT,11)
    assign out_forked73 = forked73_mux_q;

    // inc7_i147_mux(MUX,3)
    assign inc7_i147_mux_s = in_valid_in_0;
    always @(inc7_i147_mux_s or in_inc7_i147_1 or in_inc7_i147_0)
    begin
        unique case (inc7_i147_mux_s)
            1'b0 : inc7_i147_mux_q = in_inc7_i147_1;
            1'b1 : inc7_i147_mux_q = in_inc7_i147_0;
            default : inc7_i147_mux_q = 32'b0;
        endcase
    end

    // out_inc7_i147(GPOUT,12)
    assign out_inc7_i147 = inc7_i147_mux_q;

    // valid_or(LOGICAL,18)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,16)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,13)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,17)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,14)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,15)
    assign out_valid_out = valid_or_q;

endmodule
