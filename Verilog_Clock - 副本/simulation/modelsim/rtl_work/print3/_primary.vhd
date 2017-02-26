library verilog;
use verilog.vl_types.all;
entity print3 is
    port(
        mk              : in     vl_logic_vector(1 downto 0);
        k1              : in     vl_logic_vector(1 downto 0);
        fs              : in     vl_logic;
        c               : in     vl_logic_vector(3 downto 0);
        d               : in     vl_logic_vector(3 downto 0);
        e               : in     vl_logic_vector(3 downto 0);
        f               : in     vl_logic_vector(3 downto 0);
        led_dig         : out    vl_logic_vector(7 downto 0);
        display         : out    vl_logic_vector(7 downto 0)
    );
end print3;
