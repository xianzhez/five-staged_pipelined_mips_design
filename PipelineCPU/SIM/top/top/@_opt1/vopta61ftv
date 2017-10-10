library verilog;
use verilog.vl_types.all;
entity Zero_test is
    generic(
        alu_beq         : integer := 10;
        alu_bne         : integer := 11;
        alu_bgez        : integer := 12;
        alu_bgtz        : integer := 13;
        alu_blez        : integer := 14;
        alu_bltz        : integer := 15
    );
    port(
        ALUCode         : in     vl_logic_vector(4 downto 0);
        RsData          : in     vl_logic_vector(31 downto 0);
        RtData          : in     vl_logic_vector(31 downto 0);
        Z               : out    vl_logic
    );
end Zero_test;
