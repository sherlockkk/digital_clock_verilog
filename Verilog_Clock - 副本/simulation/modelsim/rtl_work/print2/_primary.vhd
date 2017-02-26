library verilog;
use verilog.vl_types.all;
entity print2 is
    port(
        fs              : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        c               : in     vl_logic_vector(3 downto 0);
        d               : in     vl_logic_vector(3 downto 0);
        e               : in     vl_logic_vector(3 downto 0);
        f               : in     vl_logic_vector(3 downto 0);
        led_dig         : out    vl_logic_vector(7 downto 0);
        display         : out    vl_logic_vector(7 downto 0)
    );
end print2;
