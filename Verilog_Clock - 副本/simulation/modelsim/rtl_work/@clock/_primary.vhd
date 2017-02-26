library verilog;
use verilog.vl_types.all;
entity Clock is
    port(
        clk             : in     vl_logic;
        modkey          : in     vl_logic;
        key1            : in     vl_logic;
        key2            : in     vl_logic;
        dis             : out    vl_logic_vector(7 downto 0);
        leg             : out    vl_logic_vector(7 downto 0);
        line            : out    vl_logic_vector(7 downto 0);
        row             : out    vl_logic_vector(7 downto 0)
    );
end Clock;
