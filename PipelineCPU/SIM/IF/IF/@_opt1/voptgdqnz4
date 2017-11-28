library verilog;
use verilog.vl_types.all;
entity \IF\ is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        Z               : in     vl_logic;
        J               : in     vl_logic;
        JR              : in     vl_logic;
        PC_IFWrite      : in     vl_logic;
        JumpAddr        : in     vl_logic_vector(31 downto 0);
        JrAddr          : in     vl_logic_vector(31 downto 0);
        BranchAddr      : in     vl_logic_vector(31 downto 0);
        Instruction_if  : out    vl_logic_vector(31 downto 0);
        PC              : out    vl_logic_vector(31 downto 0);
        NextPC_if       : out    vl_logic_vector(31 downto 0)
    );
end \IF\;
