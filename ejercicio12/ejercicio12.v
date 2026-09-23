// Ejercicio 12 - Aplicacion de los circuitos combinacionales (I)
// Macro modulo (top-level): solo interconecta los submodulos
module ejercicio12 (
    input  [3:0] SW,
    output [3:0] LEDR,
    output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);
    wire       err;
    wire [4:0] en;
    wire [6:0] seg;

    detector_error   U1 (.N(SW), .err(err));
    conv_codigos     U2 (.N(SW), .err(err), .cod(LEDR));
    selector_display U3 (.N(SW), .err(err), .en(en));
    dec_bcd_7seg     U4 (.N(SW), .seg(seg));
    control_displays U5 (.seg(seg), .en(en), .err(err),
                         .HEX0(HEX0), .HEX1(HEX1), .HEX2(HEX2),
                         .HEX3(HEX3), .HEX4(HEX4), .HEX5(HEX5));
endmodule