library verilog;
use verilog.vl_types.all;
entity dec_bcd_7seg is
    port(
        N               : in     vl_logic_vector(3 downto 0);
        seg             : out    vl_logic_vector(6 downto 0)
    );
end dec_bcd_7seg;
