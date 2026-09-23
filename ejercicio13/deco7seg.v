// Decodificador hexadecimal a 7 segmentos (activo en bajo, DE0-CV)
// SEG[0]=a, SEG[1]=b, ... SEG[6]=g
module deco7seg (
    input  [3:0] D,
    output [6:0] SEG
);
    assign SEG = (D == 4'h0) ? 7'b1000000 :
                 (D == 4'h1) ? 7'b1111001 :
                 (D == 4'h2) ? 7'b0100100 :
                 (D == 4'h3) ? 7'b0110000 :
                 (D == 4'h4) ? 7'b0011001 :
                 (D == 4'h5) ? 7'b0010010 :
                 (D == 4'h6) ? 7'b0000010 :
                 (D == 4'h7) ? 7'b1111000 :
                 (D == 4'h8) ? 7'b0000000 :
                 (D == 4'h9) ? 7'b0010000 :
                 (D == 4'hA) ? 7'b0001000 :
                 (D == 4'hB) ? 7'b0000011 :
                 (D == 4'hC) ? 7'b1000110 :
                 (D == 4'hD) ? 7'b0100001 :
                 (D == 4'hE) ? 7'b0000110 :
                               7'b0001110;  // F
endmodule