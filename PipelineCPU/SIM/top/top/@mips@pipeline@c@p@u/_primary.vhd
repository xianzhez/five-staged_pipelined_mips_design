library verilog;
use verilog.vl_types.all;
entity MipsPipelineCPU is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        JumpFlag        : out    vl_logic_vector(2 downto 0);
        Instruction_id  : out    vl_logic_vector(31 downto 0);
        ALU_A           : out    vl_logic_vector(31 downto 0);
        ALU_B           : out    vl_logic_vector(31 downto 0);
        ALUResult       : out    vl_logic_vector(31 downto 0);
        PC              : out    vl_logic_vector(31 downto 0);
        MemDout_wb      : out    vl_logic_vector(31 downto 0);
        Stall           : out    vl_logic
    );
end MipsPipelineCPU;
