library verilog;
use verilog.vl_types.all;
entity paobiao is
    port(
        f100Hz          : in     vl_logic;
        fs              : in     vl_logic;
        mk              : in     vl_logic_vector(1 downto 0);
        key1            : in     vl_logic;
        key2            : in     vl_logic;
        a               : out    vl_logic_vector(3 downto 0);
        b               : out    vl_logic_vector(3 downto 0);
        c               : out    vl_logic_vector(3 downto 0);
        d               : out    vl_logic_vector(3 downto 0);
        e               : out    vl_logic_vector(3 downto 0);
        f               : out    vl_logic_vector(3 downto 0)
    );
end paobiao;
