// Submodulo 1: detector de error
// err = 1 cuando la entrada NO es un digito BCD valido (N > 9 -> 1010..1111)
module detector_error (
    input  [3:0] N,
    output       err
);
    assign err = N[3] & (N[2] | N[1]);
endmodule