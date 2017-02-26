library verilog;
use verilog.vl_types.all;
entity modchose is
    port(
        leg1            : in     vl_logic_vector(7 downto 0);
        dis1            : in     vl_logic_vector(7 downto 0);
        leg2            : in     vl_logic_vector(7 downto 0);
        dis2            : in     vl_logic_vector(7 downto 0);
        leg3            : in     vl_logic_vector(7 downto 0);
        dis3            : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        modkey          : in     vl_logic_vector(1 downto 0);
        lego            : out    vl_logic_vector(7 downto 0);
        diso            : out    vl_logic_vector(7 downto 0)
    );
end modchose;
