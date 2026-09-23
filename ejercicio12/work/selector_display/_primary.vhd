library verilog;
use verilog.vl_types.all;
entity selector_display is
    port(
        N               : in     vl_logic_vector(3 downto 0);
        err             : in     vl_logic;
        en              : out    vl_logic_vector(4 downto 0)
    );
end selector_display;
