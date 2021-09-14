	component mm_slave_add_avmm_0_rw is
		generic (
			AV_ADDRESS_W               : integer := 64;
			AV_SYMBOL_W                : integer := 8;
			AV_NUMSYMBOLS              : integer := 8;
			AV_BURSTCOUNT_W            : integer := 3;
			AV_READRESPONSE_W          : integer := 8;
			AV_WRITERESPONSE_W         : integer := 8;
			USE_READ                   : integer := 1;
			USE_WRITE                  : integer := 1;
			USE_ADDRESS                : integer := 1;
			USE_BYTE_ENABLE            : integer := 1;
			USE_BURSTCOUNT             : integer := 0;
			USE_READ_DATA              : integer := 1;
			USE_READ_DATA_VALID        : integer := 0;
			USE_WRITE_DATA             : integer := 1;
			USE_BEGIN_TRANSFER         : integer := 0;
			USE_BEGIN_BURST_TRANSFER   : integer := 0;
			USE_WAIT_REQUEST           : integer := 0;
			USE_CLKEN                  : integer := 0;
			AV_BURST_LINEWRAP          : integer := 1;
			AV_BURST_BNDR_ONLY         : integer := 1;
			AV_MAX_PENDING_READS       : integer := 0;
			AV_MAX_PENDING_WRITES      : integer := 0;
			AV_FIX_READ_LATENCY        : integer := 1;
			AV_READ_WAIT_TIME          : integer := 0;
			AV_WRITE_WAIT_TIME         : integer := 0;
			REGISTER_WAITREQUEST       : integer := 0;
			AV_REGISTERINCOMINGSIGNALS : integer := 0;
			COMPONENT_NAME             : string  := "add";
			INTERFACE_ID               : integer := 0
		);
		port (
			do_bind        : in  std_logic                     := 'X';             -- conduit
			enable         : in  std_logic                     := 'X';             -- conduit
			clock          : in  std_logic                     := 'X';             -- clk
			reset_n        : in  std_logic                     := 'X';             -- reset_n
			avs_writedata  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- writedata
			avs_readdata   : out std_logic_vector(63 downto 0);                    -- readdata
			avs_address    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- address
			avs_write      : in  std_logic                     := 'X';             -- write
			avs_read       : in  std_logic                     := 'X';             -- read
			avs_byteenable : in  std_logic_vector(7 downto 0)  := (others => 'X')  -- byteenable
		);
	end component mm_slave_add_avmm_0_rw;

	u0 : component mm_slave_add_avmm_0_rw
		generic map (
			AV_ADDRESS_W               => INTEGER_VALUE_FOR_AV_ADDRESS_W,
			AV_SYMBOL_W                => INTEGER_VALUE_FOR_AV_SYMBOL_W,
			AV_NUMSYMBOLS              => INTEGER_VALUE_FOR_AV_NUMSYMBOLS,
			AV_BURSTCOUNT_W            => INTEGER_VALUE_FOR_AV_BURSTCOUNT_W,
			AV_READRESPONSE_W          => INTEGER_VALUE_FOR_AV_READRESPONSE_W,
			AV_WRITERESPONSE_W         => INTEGER_VALUE_FOR_AV_WRITERESPONSE_W,
			USE_READ                   => INTEGER_VALUE_FOR_USE_READ,
			USE_WRITE                  => INTEGER_VALUE_FOR_USE_WRITE,
			USE_ADDRESS                => INTEGER_VALUE_FOR_USE_ADDRESS,
			USE_BYTE_ENABLE            => INTEGER_VALUE_FOR_USE_BYTE_ENABLE,
			USE_BURSTCOUNT             => INTEGER_VALUE_FOR_USE_BURSTCOUNT,
			USE_READ_DATA              => INTEGER_VALUE_FOR_USE_READ_DATA,
			USE_READ_DATA_VALID        => INTEGER_VALUE_FOR_USE_READ_DATA_VALID,
			USE_WRITE_DATA             => INTEGER_VALUE_FOR_USE_WRITE_DATA,
			USE_BEGIN_TRANSFER         => INTEGER_VALUE_FOR_USE_BEGIN_TRANSFER,
			USE_BEGIN_BURST_TRANSFER   => INTEGER_VALUE_FOR_USE_BEGIN_BURST_TRANSFER,
			USE_WAIT_REQUEST           => INTEGER_VALUE_FOR_USE_WAIT_REQUEST,
			USE_CLKEN                  => INTEGER_VALUE_FOR_USE_CLKEN,
			AV_BURST_LINEWRAP          => INTEGER_VALUE_FOR_AV_BURST_LINEWRAP,
			AV_BURST_BNDR_ONLY         => INTEGER_VALUE_FOR_AV_BURST_BNDR_ONLY,
			AV_MAX_PENDING_READS       => INTEGER_VALUE_FOR_AV_MAX_PENDING_READS,
			AV_MAX_PENDING_WRITES      => INTEGER_VALUE_FOR_AV_MAX_PENDING_WRITES,
			AV_FIX_READ_LATENCY        => INTEGER_VALUE_FOR_AV_FIX_READ_LATENCY,
			AV_READ_WAIT_TIME          => INTEGER_VALUE_FOR_AV_READ_WAIT_TIME,
			AV_WRITE_WAIT_TIME         => INTEGER_VALUE_FOR_AV_WRITE_WAIT_TIME,
			REGISTER_WAITREQUEST       => INTEGER_VALUE_FOR_REGISTER_WAITREQUEST,
			AV_REGISTERINCOMINGSIGNALS => INTEGER_VALUE_FOR_AV_REGISTERINCOMINGSIGNALS,
			COMPONENT_NAME             => STRING_VALUE_FOR_COMPONENT_NAME,
			INTERFACE_ID               => INTEGER_VALUE_FOR_INTERFACE_ID
		)
		port map (
			do_bind        => CONNECTED_TO_do_bind,        --   dpi_control_bind.conduit
			enable         => CONNECTED_TO_enable,         -- dpi_control_enable.conduit
			clock          => CONNECTED_TO_clock,          --              clock.clk
			reset_n        => CONNECTED_TO_reset_n,        --              reset.reset_n
			avs_writedata  => CONNECTED_TO_avs_writedata,  --                 s0.writedata
			avs_readdata   => CONNECTED_TO_avs_readdata,   --                   .readdata
			avs_address    => CONNECTED_TO_avs_address,    --                   .address
			avs_write      => CONNECTED_TO_avs_write,      --                   .write
			avs_read       => CONNECTED_TO_avs_read,       --                   .read
			avs_byteenable => CONNECTED_TO_avs_byteenable  --                   .byteenable
		);

