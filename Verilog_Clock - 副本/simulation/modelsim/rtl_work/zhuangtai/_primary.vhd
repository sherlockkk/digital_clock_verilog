library verilog;
use verilog.vl_types.all;
entity zhuangtai is
    port(
        mk              : in     vl_logic;
        clkfs           : in     vl_logic;
        mkoo            : out    vl_logic_vector(1 downto 0)
    );
end zhuangtai;
