// Submodulo 3: el numero valido siempre va al Display 2 (HEX1)
module selector_display (
    input  [3:0] N,
    input        err,
    output [4:0] en
);
    assign en = {3'b000, ~err, 1'b0};
endmodule