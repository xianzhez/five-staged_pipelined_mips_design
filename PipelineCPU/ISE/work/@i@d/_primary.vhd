library verilog;
use verilog.vl_types.all;
entity ID is
    generic(
        alu_beq         : integer := 10;
        alu_bne         : integer := 11;
        alu_bgez        : integer := 12;
        alu_bgtz        : integer := 13;
        alu_blez        : integer := 14;
        alu_bltz        : integer := 15
    );
    port(
        clk             : in     vl_logic;
        Instruction_id  : in     vl_logic_vector(31 downto 0);
        NextPC_id       : in     vl_logic_vector(31 downto 0);
        RegWrite_wb     : in     vl_logic;
        RegWriteAddr_wb : in     vl_logic_vector(4 downto 0);
        RegWriteData_wb : in     vl_logic_vector(31 downto 0);
        MemRead_ex      : in     vl_logic;
        RegWriteAddr_ex : in     vl_logic_vector(4 downto 0);
        MemtoReg_id     : out    vl_logic;
        RegWrite_id     : out    vl_logic;
        MemWrite_id     : out    vl_logic;
        MemRead_id      : out    vl_logic;
        ALUCode_id      : out    vl_logic_vector(4 downto 0);
        ALUSrcA_id      : out    vl_logic;
        ALUSrcB_id      : out    vl_logic;
        RegDst_id       : out    vl_logic;
        Stall           : out    vl_logic;
        Z               : out    vl_logic;
        J               : out    vl_logic;
        JR              : out    vl_logic;
        PC_IFWrite      : out    vl_logic;
        BranchAddr      : out    vl_logic_vector(31 downto 0);
        JumpAddr        : out    vl_logic_vector(31 downto 0);
        JrAddr          : out    vl_logic_vector(31 downto 0);
        Imm_id          : out    vl_logic_vector(31 downto 0);
        Sa_id           : out    vl_logic_vector(31 downto 0);
        RsData_id       : out    vl_logic_vector(31 downto 0);
        RtData_id       : out    vl_logic_vector(31 downto 0);
        RsAddr_id       : out    vl_logic_vector(4 downto 0);
        RtAddr_id       : out    vl_logic_vector(4 downto 0);
        RdAddr_id       : out    vl_logic_vector(4 downto 0)
    );
end ID;
