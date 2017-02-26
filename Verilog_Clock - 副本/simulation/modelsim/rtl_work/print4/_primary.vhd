library verilog;
use verilog.vl_types.all;
entity print4 is
    port(
        fs              : in     vl_logic;
        linerow         : in     vl_logic;
        line            : out    vl_logic_vector(7 downto 0);
        row             : out    vl_logic_vector(7 downto 0)
    );
end print4;
