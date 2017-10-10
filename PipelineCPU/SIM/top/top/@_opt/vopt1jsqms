library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        alu_add         : integer := 0;
        alu_and         : integer := 1;
        alu_xor         : integer := 2;
        alu_or          : integer := 3;
        alu_nor         : integer := 4;
        alu_sub         : integer := 5;
        alu_andi        : integer := 6;
        alu_xori        : integer := 7;
        alu_ori         : integer := 8;
        alu_jr          : integer := 9;
        alu_beq         : integer := 10;
        alu_bne         : integer := 11;
        alu_bgez        : integer := 12;
        alu_bgtz        : integer := 13;
        alu_blez        : integer := 14;
        alu_bltz        : integer := 15;
        alu_sll         : integer := 16;
        alu_srl         : integer := 17;
        alu_sra         : integer := 18;
        alu_slt         : integer := 19;
        alu_sltu        : integer := 20
    );
    port(
        Result          : out    vl_logic_vector(31 downto 0);
        overflow        : out    vl_logic;
        ALUCode         : in     vl_logic_vector(4 downto 0);
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0)
    );
end ALU;
