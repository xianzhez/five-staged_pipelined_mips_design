library verilog;
use verilog.vl_types.all;
entity dff is
    generic(
        WIDTH           : integer := 1
    );
    port(
        d               : in     vl_logic_vector;
        clk             : in     vl_logic;
        q               : out    vl_logic_vector
    );
end dff;
