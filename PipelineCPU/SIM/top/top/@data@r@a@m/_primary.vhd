library verilog;
use verilog.vl_types.all;
entity DataRAM is
    port(
        addr            : in     vl_logic_vector(5 downto 0);
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(31 downto 0);
        dout            : out    vl_logic_vector(31 downto 0);
        we              : in     vl_logic
    );
end DataRAM;
