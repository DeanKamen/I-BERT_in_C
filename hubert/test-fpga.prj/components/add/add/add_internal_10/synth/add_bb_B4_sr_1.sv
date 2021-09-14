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

// SystemVerilog created from add_bb_B4_sr_1
// SystemVerilog created on Tue Sep 14 09:53:56 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_bb_B4_sr_1 (
    input wire [31:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_stall,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] data_mux_0_x_s;
    reg [31:0] data_mux_0_x_q;
    wire [0:0] data_mux_1_x_s;
    reg [0:0] data_mux_1_x_q;
    reg [31:0] sr_0_x_q;
    reg [0:0] sr_1_x_q;
    wire [0:0] combined_valid_q;
    wire [0:0] not_sr_valid_q;
    reg [0:0] sr_valid_q;
    wire [0:0] stall_and_valid_q;


    // not_sr_valid(LOGICAL,15)
    assign not_sr_valid_q = ~ (sr_valid_q);

    // sr_0_x(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_0_x_q <= in_i_data_0_tpl;
        end
    end

    // combined_valid(LOGICAL,14)
    assign combined_valid_q = in_i_valid | sr_valid_q;

    // stall_and_valid(LOGICAL,17)
    assign stall_and_valid_q = in_i_stall & combined_valid_q;

    // sr_valid(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_valid_q <= $unsigned(1'b0);
        end
        else
        begin
            sr_valid_q <= stall_and_valid_q;
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // data_mux_0_x(MUX,2)
    assign data_mux_0_x_s = sr_valid_q;
    always @(data_mux_0_x_s or in_i_data_0_tpl or sr_0_x_q)
    begin
        unique case (data_mux_0_x_s)
            1'b0 : data_mux_0_x_q = in_i_data_0_tpl;
            1'b1 : data_mux_0_x_q = sr_0_x_q;
            default : data_mux_0_x_q = 32'b0;
        endcase
    end

    // out_o_data_0_tpl(GPOUT,8)
    assign out_o_data_0_tpl = data_mux_0_x_q;

    // sr_1_x(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_1_x_q <= $unsigned(1'b0);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_1_x_q <= in_i_data_1_tpl;
        end
    end

    // data_mux_1_x(MUX,3)
    assign data_mux_1_x_s = sr_valid_q;
    always @(data_mux_1_x_s or in_i_data_1_tpl or sr_1_x_q)
    begin
        unique case (data_mux_1_x_s)
            1'b0 : data_mux_1_x_q = in_i_data_1_tpl;
            1'b1 : data_mux_1_x_q = sr_1_x_q;
            default : data_mux_1_x_q = 1'b0;
        endcase
    end

    // out_o_data_1_tpl(GPOUT,9)
    assign out_o_data_1_tpl = data_mux_1_x_q;

    // out_o_stall(GPOUT,10)
    assign out_o_stall = sr_valid_q;

    // out_o_valid(GPOUT,11)
    assign out_o_valid = combined_valid_q;

endmodule
