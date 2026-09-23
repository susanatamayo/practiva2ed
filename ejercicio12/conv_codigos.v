// Submodulo 2: conversor de codigos (salida a los LEDs)
// 1-2: Gray | 3-4: BCD 84-2-1 | 5-6: Aiken | 7-8: Exceso 3 | 9-0: BCD 5211
module conv_codigos (
    input  [3:0] N,
    input        err,
    output [3:0] cod
);
    wire A = N[3], B = N[2], C = N[1], D = N[0];

    wire L3 = A | (B & D) | (B & C);
    wire L2 = (B & ~D) | (A & D) | (~B & C & D);
    wire L1 = A | (B & D) | (~B & C & ~D);
    wire L0 = A | (~C & D) | (~B & C);

    assign cod = {L3, L2, L1, L0} & {4{~err}};
endmodule