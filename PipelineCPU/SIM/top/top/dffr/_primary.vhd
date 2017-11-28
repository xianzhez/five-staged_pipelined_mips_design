library verilog;
use verilog.vl_types.all;
entity dffr is
    generic(
        WIDTH           : integer := 1
    );
    port(
        d               : in     vl_logic_vector;
        r               : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic_vector
    );
end dffr;
