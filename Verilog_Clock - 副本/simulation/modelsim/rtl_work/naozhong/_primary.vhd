library verilog;
use verilog.vl_types.all;
entity naozhong is
    port(
        mk              : in     vl_logic_vector(1 downto 0);
        key1            : in     vl_logic;
        key2            : in     vl_logic;
        clk             : in     vl_logic;
        c               : in     vl_logic_vector(3 downto 0);
        d               : in     vl_logic_vector(3 downto 0);
        e               : in     vl_logic_vector(3 downto 0);
        f               : in     vl_logic_vector(3 downto 0);
        cc              : out    vl_logic_vector(3 downto 0);
        dd              : out    vl_logic_vector(3 downto 0);
        ee              : out    vl_logic_vector(3 downto 0);
        ff              : out    vl_logic_vector(3 downto 0);
        k1              : out    vl_logic_vector(1 downto 0);
        linerow         : out    vl_logic
    );
end naozhong;
