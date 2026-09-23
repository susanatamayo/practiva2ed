library verilog;
use verilog.vl_types.all;
entity detector_error is
    port(
        N               : in     vl_logic_vector(3 downto 0);
        err             : out    vl_logic
    );
end detector_error;
