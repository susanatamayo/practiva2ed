// Top-level Ejercicio 13 - ALU basica de 5 bits en la DE0-CV
module ejercicio13 (
    input  [9:0] SW,    // SW4-SW0 = A, SW9-SW5 = B
    input  [3:0] KEY,   // selector S3-S0 (botones, activos en bajo)
    output [9:0] LEDR,  // LEDR4-0 = F, LEDR5 = Cout, LEDR9-6 = S
    output [6:0] HEX0,  // nibble bajo del resultado
    output [6:0] HEX1   // nibble alto del resultado
);
    wire [4:0] A = SW[4:0];
    wire [4:0] B = SW[9:5];
    wire [3:0] S = ~KEY;   // se invierte: boton presionado = 1
    wire [4:0] F;
    wire       Cout;

    // Submodulo 1: ALU
    alu5 U1 (.A(A), .B(B), .S(S), .F(F), .Cout(Cout));

    // Salida en LEDs
    assign LEDR[4:0] = F;
    assign LEDR[5]   = Cout;
    assign LEDR[9:6] = S;  // para ver que operacion esta seleccionada

    // Submodulos 2 y 3: displays (resultado de 6 bits en hexadecimal)
    deco7seg U2 (.D(F[3:0]),              .SEG(HEX0));
    deco7seg U3 (.D({2'b00, Cout, F[4]}), .SEG(HEX1));
endmodule
