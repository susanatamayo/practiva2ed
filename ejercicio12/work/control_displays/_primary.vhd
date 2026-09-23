library verilog;
use verilog.vl_types.all;
entity control_displays is
    port(
        seg             : in     vl_logic_vector(6 downto 0);
        en              : in     vl_logic_vector(4 downto 0);
        err             : in     vl_logic;
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0)
    );
end control_displays;
