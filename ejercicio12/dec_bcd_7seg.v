// Submodulo 4: decodificador BCD a 7 segmentos (activo en ALTO)
// seg[0]=a, seg[1]=b, ... seg[6]=g
module dec_bcd_7seg (
    input  [3:0] N,
    output [6:0] seg
);
    wire A = N[3], B = N[2], C = N[1], D = N[0];

    assign seg[0] = A | C | (B & D) | (~B & ~D);                        // a
    assign seg[1] = ~B | (~C & ~D) | (C & D);                           // b
    assign seg[2] = B | ~C | D;                                         // c
    assign seg[3] = A | (~B & ~D) | (~B & C) | (C & ~D) | (B & ~C & D); // d
    assign seg[4] = (~B & ~D) | (C & ~D);                               // e
    assign seg[5] = A | (~C & ~D) | (B & ~C) | (B & ~D);                // f
    assign seg[6] = A | (~B & C) | (B & ~C) | (C & ~D);                 // g
endmodule