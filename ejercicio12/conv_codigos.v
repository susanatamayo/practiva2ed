// Submodulo 2: conversor BCD a Exceso 3 (salida a los LEDs)
module conv_codigos (
    input  [3:0] N,
    input        err,
    output [3:0] cod
);
    wire A = N[3], B = N[2], C = N[1], D = N[0];

    wire E3 = A | (B & D) | (B & C);
    wire E2 = (~B & D) | (~B & C) | (B & ~C & ~D);
    wire E1 = (~C & ~D) | (C & D);
    wire E0 = ~D;

    assign cod = {E3, E2, E1, E0} & {4{~err}};
endmodule