library verilog;
use verilog.vl_types.all;
entity fenpin is
    port(
        clk             : in     vl_logic;
        f1Hz            : out    vl_logic;
        f100Hz          : out    vl_logic;
        f               : out    vl_logic
    );
end fenpin;
