library verilog;
use verilog.vl_types.all;
entity conv_codigos is
    port(
        N               : in     vl_logic_vector(3 downto 0);
        err             : in     vl_logic;
        cod             : out    vl_logic_vector(3 downto 0)
    );
end conv_codigos;
