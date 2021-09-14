module mm_slave_add_avmm_0_rw #(
		parameter AV_ADDRESS_W               = 64,
		parameter AV_SYMBOL_W                = 8,
		parameter AV_NUMSYMBOLS              = 8,
		parameter AV_BURSTCOUNT_W            = 3,
		parameter AV_READRESPONSE_W          = 8,
		parameter AV_WRITERESPONSE_W         = 8,
		parameter USE_READ                   = 1,
		parameter USE_WRITE                  = 1,
		parameter USE_ADDRESS                = 1,
		parameter USE_BYTE_ENABLE            = 1,
		parameter USE_BURSTCOUNT             = 0,
		parameter USE_READ_DATA              = 1,
		parameter USE_READ_DATA_VALID        = 0,
		parameter USE_WRITE_DATA             = 1,
		parameter USE_BEGIN_TRANSFER         = 0,
		parameter USE_BEGIN_BURST_TRANSFER   = 0,
		parameter USE_WAIT_REQUEST           = 0,
		parameter USE_CLKEN                  = 0,
		parameter AV_BURST_LINEWRAP          = 1,
		parameter AV_BURST_BNDR_ONLY         = 1,
		parameter AV_MAX_PENDING_READS       = 0,
		parameter AV_MAX_PENDING_WRITES      = 0,
		parameter AV_FIX_READ_LATENCY        = 1,
		parameter AV_READ_WAIT_TIME          = 0,
		parameter AV_WRITE_WAIT_TIME         = 0,
		parameter REGISTER_WAITREQUEST       = 0,
		parameter AV_REGISTERINCOMINGSIGNALS = 0,
		parameter COMPONENT_NAME             = "add",
		parameter INTERFACE_ID               = 0
	) (
		input  wire        do_bind,        //   dpi_control_bind.conduit
		input  wire        enable,         // dpi_control_enable.conduit
		input  wire        clock,          //              clock.clk
		input  wire        reset_n,        //              reset.reset_n
		input  wire [63:0] avs_writedata,  //                 s0.writedata
		output wire [63:0] avs_readdata,   //                   .readdata
		input  wire [63:0] avs_address,    //                   .address
		input  wire        avs_write,      //                   .write
		input  wire        avs_read,       //                   .read
		input  wire [7:0]  avs_byteenable  //                   .byteenable
	);
endmodule

