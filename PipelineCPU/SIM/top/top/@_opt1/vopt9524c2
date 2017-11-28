library verilog;
use verilog.vl_types.all;
entity BLKMEMSP_V6_2 is
    generic(
        c_addr_width    : integer := 9;
        c_default_data  : string  := "0";
        c_depth         : integer := 512;
        c_enable_rlocs  : integer := 0;
        c_has_default_data: integer := 1;
        c_has_din       : integer := 1;
        c_has_en        : integer := 1;
        c_has_limit_data_pitch: integer := 0;
        c_has_nd        : integer := 0;
        c_has_rdy       : integer := 0;
        c_has_rfd       : integer := 0;
        c_has_sinit     : integer := 1;
        c_has_we        : integer := 1;
        c_limit_data_pitch: integer := 18;
        c_mem_init_file : string  := "null.mif";
        c_pipe_stages   : integer := 1;
        c_reg_inputs    : integer := 0;
        c_sinit_value   : string  := "0000";
        c_width         : integer := 32;
        c_write_mode    : integer := 2;
        c_ybottom_addr  : string  := "1024";
        c_yclk_is_rising: integer := 1;
        c_yen_is_high   : integer := 1;
        c_yhierarchy    : string  := "hierarchy1";
        c_ymake_bmm     : integer := 1;
        c_yprimitive_type: string  := "4kx4";
        c_ysinit_is_high: integer := 1;
        c_ytop_addr     : string  := "0";
        c_yuse_single_primitive: integer := 0;
        c_ywe_is_high   : integer := 1;
        c_yydisable_warnings: integer := 0
    );
    port(
        DOUT            : out    vl_logic_vector;
        ADDR            : in     vl_logic_vector;
        DIN             : in     vl_logic_vector;
        EN              : in     vl_logic;
        CLK             : in     vl_logic;
        WE              : in     vl_logic;
        SINIT           : in     vl_logic;
        ND              : in     vl_logic;
        RFD             : out    vl_logic;
        RDY             : out    vl_logic
    );
end BLKMEMSP_V6_2;
