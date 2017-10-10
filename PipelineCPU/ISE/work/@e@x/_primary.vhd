library verilog;
use verilog.vl_types.all;
entity EX is
    port(
        RegDst_ex       : in     vl_logic;
        ALUCode_ex      : in     vl_logic_vector(4 downto 0);
        ALUSrcA_ex      : in     vl_logic;
        ALUSrcB_ex      : in     vl_logic;
        Imm_ex          : in     vl_logic_vector(31 downto 0);
        Sa_ex           : in     vl_logic_vector(31 downto 0);
        RsAddr_ex       : in     vl_logic_vector(4 downto 0);
        RtAddr_ex       : in     vl_logic_vector(4 downto 0);
        RdAddr_ex       : in     vl_logic_vector(4 downto 0);
        RsData_ex       : in     vl_logic_vector(31 downto 0);
        RtData_ex       : in     vl_logic_vector(31 downto 0);
        RegWriteData_wb : in     vl_logic_vector(31 downto 0);
        ALUResult_mem   : in     vl_logic_vector(31 downto 0);
        RegWriteAddr_wb : in     vl_logic_vector(4 downto 0);
        RegWriteAddr_mem: in     vl_logic_vector(4 downto 0);
        RegWrite_wb     : in     vl_logic;
        RegWrite_mem    : in     vl_logic;
        RegWriteAddr_ex : out    vl_logic_vector(4 downto 0);
        ALUResult_ex    : out    vl_logic_vector(31 downto 0);
        MemWriteData_ex : out    vl_logic_vector(31 downto 0);
        ALU_A           : out    vl_logic_vector(31 downto 0);
        ALU_B           : out    vl_logic_vector(31 downto 0)
    );
end EX;
