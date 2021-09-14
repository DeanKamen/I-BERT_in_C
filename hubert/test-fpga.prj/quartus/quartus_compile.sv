module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] add_start
	, output logic [0:0] add_busy
	, output logic [0:0] add_done
	, input logic [0:0] add_stall
	, input logic [63:0] add_A
	, input logic [63:0] add_B
	, input logic [63:0] add_C
	, output logic [63:0] add_avmm_0_rw_address
	, output logic [7:0] add_avmm_0_rw_byteenable
	, output logic [0:0] add_avmm_0_rw_read
	, input logic [63:0] add_avmm_0_rw_readdata
	, output logic [0:0] add_avmm_0_rw_write
	, output logic [63:0] add_avmm_0_rw_writedata
	);

	logic [0:0] add_start_reg;
	logic [0:0] add_busy_reg;
	logic [0:0] add_done_reg;
	logic [0:0] add_stall_reg;
	logic [63:0] add_A_reg;
	logic [63:0] add_B_reg;
	logic [63:0] add_C_reg;
	logic [63:0] add_avmm_0_rw_address_reg;
	logic [7:0] add_avmm_0_rw_byteenable_reg;
	logic [0:0] add_avmm_0_rw_read_reg;
	logic [63:0] add_avmm_0_rw_readdata_reg;
	logic [0:0] add_avmm_0_rw_write_reg;
	logic [63:0] add_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		add_start_reg <= add_start;
		add_busy <= add_busy_reg;
		add_done <= add_done_reg;
		add_stall_reg <= add_stall;
		add_A_reg <= add_A;
		add_B_reg <= add_B;
		add_C_reg <= add_C;
		add_avmm_0_rw_address <= add_avmm_0_rw_address_reg;
		add_avmm_0_rw_byteenable <= add_avmm_0_rw_byteenable_reg;
		add_avmm_0_rw_read <= add_avmm_0_rw_read_reg;
		add_avmm_0_rw_readdata_reg <= add_avmm_0_rw_readdata;
		add_avmm_0_rw_write <= add_avmm_0_rw_write_reg;
		add_avmm_0_rw_writedata <= add_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	add add_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(add_start_reg)
		, .busy(add_busy_reg)
		, .done(add_done_reg)
		, .stall(add_stall_reg)
		, .A(add_A_reg)
		, .B(add_B_reg)
		, .C(add_C_reg)
		, .avmm_0_rw_address(add_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(add_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(add_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(add_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(add_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(add_avmm_0_rw_writedata_reg)
	);



endmodule
