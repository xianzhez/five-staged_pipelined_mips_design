library verilog;
use verilog.vl_types.all;
entity Hazard_detector is
    port(
        MemRead_ex      : in     vl_logic;
        RegWriteAddr_ex : in     vl_logic_vector(4 downto 0);
        RsAddr_id       : in     vl_logic_vector(4 downto 0);
        RtAddr_id       : in     vl_logic_vector(4 downto 0);
        stall           : out    vl_logic;
        PC_IFWrite      : out    vl_logic
    );
end Hazard_detector;
