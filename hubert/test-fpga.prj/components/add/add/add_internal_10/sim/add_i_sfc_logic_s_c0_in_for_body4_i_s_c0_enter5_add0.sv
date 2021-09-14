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

// SystemVerilog created from add_i_sfc_logic_s_c0_in_for_body4_i_s_c0_enter5_add0
// SystemVerilog created on Tue Sep 14 09:53:57 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module add_i_sfc_logic_s_c0_in_for_body4_i_s_c0_enter5_add0 (
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [0:0] out_c0_exi5_1_tpl,
    output wire [0:0] out_c0_exi5_2_tpl,
    output wire [16:0] out_c0_exi5_3_tpl,
    output wire [31:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_add44,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [16:0] in_c0_eni4_1_tpl,
    input wire [0:0] in_c0_eni4_2_tpl,
    input wire [31:0] in_c0_eni4_3_tpl,
    input wire [0:0] in_c0_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_first_cleanup_add2_sel_x_b;
    wire [31:0] c_float_0_000000e_0013_q;
    wire [0:0] i_acl_39_add5_s;
    reg [31:0] i_acl_39_add5_q;
    wire [31:0] i_add_i_add7_out_primWireOut;
    wire [16:0] i_cleanups_shl_add4_vt_join_q;
    wire [15:0] i_cleanups_shl_add4_vt_select_16_b;
    wire [0:0] i_first_cleanup_xor_add3_q;
    wire [0:0] i_first_cleanup_xor_or118_add8_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_acl_70_add6_out_dest_data_out_19_0;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    wire [15:0] leftShiftStage0Idx1Rng1_uid32_i_cleanups_shl_add0_shift_x_in;
    wire [15:0] leftShiftStage0Idx1Rng1_uid32_i_cleanups_shl_add0_shift_x_b;
    wire [16:0] leftShiftStage0Idx1_uid33_i_cleanups_shl_add0_shift_x_q;
    wire [0:0] leftShiftStage0_uid35_i_cleanups_shl_add0_shift_x_s;
    reg [16:0] leftShiftStage0_uid35_i_cleanups_shl_add0_shift_x_q;
    reg [0:0] redist0_valid_fanout_reg0_q_3_q;
    reg [0:0] redist0_valid_fanout_reg0_q_3_delay_0;
    reg [0:0] redist0_valid_fanout_reg0_q_3_delay_1;
    reg [0:0] redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_q;
    reg [0:0] redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_delay_0;
    reg [0:0] redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_delay_1;
    reg [0:0] redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_delay_2;
    reg [16:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_outputreg0_q;
    wire redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_reset0;
    wire [16:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_ia;
    wire [0:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_aa;
    wire [0:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_ab;
    wire [16:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_iq;
    wire [16:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_q;
    wire [0:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_rdcnt_i;
    reg [0:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_cmpReg_q;
    wire [0:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_notEnable_q;
    wire [0:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_sticky_ena_q;
    wire [0:0] redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,24)@38 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist0_valid_fanout_reg0_q_3(DELAY,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_3_delay_0 <= '0;
            redist0_valid_fanout_reg0_q_3_delay_1 <= '0;
            redist0_valid_fanout_reg0_q_3_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_3_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist0_valid_fanout_reg0_q_3_delay_1 <= redist0_valid_fanout_reg0_q_3_delay_0;
            redist0_valid_fanout_reg0_q_3_q <= redist0_valid_fanout_reg0_q_3_delay_1;
        end
    end

    // redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4(DELAY,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_delay_0 <= '0;
            redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_delay_1 <= '0;
            redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_delay_2 <= '0;
            redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_q <= '0;
        end
        else
        begin
            redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_delay_0 <= $unsigned(in_c0_eni4_4_tpl);
            redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_delay_1 <= redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_delay_0;
            redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_delay_2 <= redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_delay_1;
            redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_q <= redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_delay_2;
        end
    end

    // i_first_cleanup_xor_or118_add8(LOGICAL,20)@42
    assign i_first_cleanup_xor_or118_add8_q = redist2_sync_together17_aunroll_x_in_c0_eni4_4_tpl_4_q | i_first_cleanup_xor_add3_q;

    // c_float_0_000000e_0013(FLOATCONSTANT,9)
    assign c_float_0_000000e_0013_q = $unsigned(32'b00000000000000000000000000000000);

    // i_acl_39_add5(MUX,13)@38 + 1
    assign i_acl_39_add5_s = in_c0_eni4_2_tpl;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_39_add5_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_39_add5_s)
                1'b0 : i_acl_39_add5_q <= c_float_0_000000e_0013_q;
                1'b1 : i_acl_39_add5_q <= in_c0_eni4_3_tpl;
                default : i_acl_39_add5_q <= 32'b0;
            endcase
        end
    end

    // valid_fanout_reg1(REG,25)@38 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_acl_70_add6(BLACKBOX,21)@39
    add_i_llvm_fpga_ffwd_dest_f32_acl_70_0 thei_llvm_fpga_ffwd_dest_f32_acl_70_add6 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_f32_acl_70_add6_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_i_add7(BLACKBOX,14)@39
    // out out_primWireOut@42
    add_flt_i_sfc_logic_s_c0_in_for_body4_i_0000123642i229744c22675x thei_add_i_add7 (
        .in_0(i_llvm_fpga_ffwd_dest_f32_acl_70_add6_out_dest_data_out_19_0),
        .in_1(i_acl_39_add5_q),
        .out_primWireOut(i_add_i_add7_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0Idx1Rng1_uid32_i_cleanups_shl_add0_shift_x(BITSELECT,31)@42
    assign leftShiftStage0Idx1Rng1_uid32_i_cleanups_shl_add0_shift_x_in = redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_outputreg0_q[15:0];
    assign leftShiftStage0Idx1Rng1_uid32_i_cleanups_shl_add0_shift_x_b = leftShiftStage0Idx1Rng1_uid32_i_cleanups_shl_add0_shift_x_in[15:0];

    // leftShiftStage0Idx1_uid33_i_cleanups_shl_add0_shift_x(BITJOIN,32)@42
    assign leftShiftStage0Idx1_uid33_i_cleanups_shl_add0_shift_x_q = {leftShiftStage0Idx1Rng1_uid32_i_cleanups_shl_add0_shift_x_b, GND_q};

    // redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_notEnable(LOGICAL,44)
    assign redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_nor(LOGICAL,45)
    assign redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_nor_q = ~ (redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_notEnable_q | redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_sticky_ena_q);

    // redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_cmpReg(REG,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_sticky_ena(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_nor_q == 1'b1)
        begin
            redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_sticky_ena_q <= $unsigned(redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_cmpReg_q);
        end
    end

    // redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_enaAnd(LOGICAL,47)
    assign redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_enaAnd_q = redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_sticky_ena_q & VCC_q;

    // redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_rdcnt(COUNTER,41)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_rdcnt_i <= $unsigned(redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_rdcnt_q = redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_rdcnt_i[0:0];

    // redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_wraddr(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_wraddr_q <= $unsigned(redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_rdcnt_q);
        end
    end

    // redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem(DUALMEM,40)
    assign redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_ia = $unsigned(in_c0_eni4_1_tpl);
    assign redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_aa = redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_wraddr_q;
    assign redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_ab = redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_rdcnt_q;
    assign redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(17),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(17),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone 10 GX")
    ) redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_dmem (
        .clocken1(redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_aa),
        .data_a(redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_ab),
        .q_b(redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_q = redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_iq[16:0];

    // redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_outputreg0(DELAY,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_outputreg0_q <= $unsigned(redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_mem_q);
        end
    end

    // leftShiftStage0_uid35_i_cleanups_shl_add0_shift_x(MUX,34)@42
    assign leftShiftStage0_uid35_i_cleanups_shl_add0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid35_i_cleanups_shl_add0_shift_x_s or redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_outputreg0_q or leftShiftStage0Idx1_uid33_i_cleanups_shl_add0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid35_i_cleanups_shl_add0_shift_x_s)
            1'b0 : leftShiftStage0_uid35_i_cleanups_shl_add0_shift_x_q = redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_outputreg0_q;
            1'b1 : leftShiftStage0_uid35_i_cleanups_shl_add0_shift_x_q = leftShiftStage0Idx1_uid33_i_cleanups_shl_add0_shift_x_q;
            default : leftShiftStage0_uid35_i_cleanups_shl_add0_shift_x_q = 17'b0;
        endcase
    end

    // i_cleanups_shl_add4_vt_select_16(BITSELECT,17)@42
    assign i_cleanups_shl_add4_vt_select_16_b = leftShiftStage0_uid35_i_cleanups_shl_add0_shift_x_q[16:1];

    // i_cleanups_shl_add4_vt_join(BITJOIN,16)@42
    assign i_cleanups_shl_add4_vt_join_q = {i_cleanups_shl_add4_vt_select_16_b, GND_q};

    // i_first_cleanup_xor_add3(LOGICAL,19)@42
    assign i_first_cleanup_xor_add3_q = i_first_cleanup_add2_sel_x_b ^ VCC_q;

    // i_first_cleanup_add2_sel_x(BITSELECT,6)@42
    assign i_first_cleanup_add2_sel_x_b = redist1_sync_together17_aunroll_x_in_c0_eni4_1_tpl_4_outputreg0_q[0:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,7)@42
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = i_first_cleanup_add2_sel_x_b;
    assign out_c0_exi5_2_tpl = i_first_cleanup_xor_add3_q;
    assign out_c0_exi5_3_tpl = i_cleanups_shl_add4_vt_join_q;
    assign out_c0_exi5_4_tpl = i_add_i_add7_out_primWireOut;
    assign out_c0_exi5_5_tpl = i_first_cleanup_xor_or118_add8_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_3_q;
    assign out_unnamed_add44 = GND_q;

endmodule
