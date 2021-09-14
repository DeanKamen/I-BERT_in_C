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

// SystemVerilog created from add_i_sfc_logic_s_c0_in_for_body28_s_c0_enter1594_add0
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_i_sfc_logic_s_c0_in_for_body28_s_c0_enter1594_add0 (
    output wire [0:0] out_c0_exi1162_0_tpl,
    output wire [31:0] out_c0_exi1162_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_add44,
    input wire [0:0] in_c0_eni2158_0_tpl,
    input wire [31:0] in_c0_eni2158_1_tpl,
    input wire [31:0] in_c0_eni2158_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_add33_add2_out_primWireOut;
    reg [0:0] redist0_sync_together7_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist0_sync_together7_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist0_sync_together7_aunroll_x_in_i_valid_3_delay_1;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together7_aunroll_x_in_i_valid_3(DELAY,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together7_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist0_sync_together7_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist0_sync_together7_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist0_sync_together7_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist0_sync_together7_aunroll_x_in_i_valid_3_delay_1 <= redist0_sync_together7_aunroll_x_in_i_valid_3_delay_0;
            redist0_sync_together7_aunroll_x_in_i_valid_3_q <= redist0_sync_together7_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // i_add33_add2(BLACKBOX,5)@86
    // out out_primWireOut@89
    add_flt_i_sfc_logic_s_c0_in_for_body28_s00003a0054c2a6344c246w65 thei_add33_add2 (
        .in_0(in_c0_eni2158_1_tpl),
        .in_1(in_c0_eni2158_2_tpl),
        .out_primWireOut(i_add33_add2_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,2)@89
    assign out_c0_exi1162_0_tpl = GND_q;
    assign out_c0_exi1162_1_tpl = i_add33_add2_out_primWireOut;
    assign out_o_valid = redist0_sync_together7_aunroll_x_in_i_valid_3_q;
    assign out_unnamed_add44 = GND_q;

endmodule
