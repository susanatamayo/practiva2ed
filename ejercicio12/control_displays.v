// Submodulo 5: control de displays
// Envia el digito solo al display habilitado y la 'E' al Display 6 (HEX5).
// Los displays de la DE0-CV son activos en BAJO -> se niega al final.
module control_displays (
    input  [6:0] seg,
    input  [4:0] en,
    input        err,
    output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);
    assign HEX0 = ~(seg & {7{en[0]}});
    assign HEX1 = ~(seg & {7{en[1]}});
    assign HEX2 = ~(seg & {7{en[2]}});
    assign HEX3 = ~(seg & {7{en[3]}});
    assign HEX4 = ~(seg & {7{en[4]}});
    // 'E' = segmentos a, d, e, f, g  ->  g f e d c b a = 1 1 1 1 0 0 1
    assign HEX5 = ~(7'b1111001 & {7{err}});
endmodule