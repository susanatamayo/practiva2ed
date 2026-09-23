// ALU de 5 bits - Ejercicio 13 - ID terminado en 8
// Items asignados: 8, 2, 7, C, E
module alu5 (
    input  [4:0] A,
    input  [4:0] B,
    input  [3:0] S,
    output [4:0] F,
    output       Cout
);
    wire [5:0] suma  = A + B;   // item 2: A+B (6 bits para guardar el carry)
    wire [4:0] notA  = ~A;      // item 8: A'
    wire [4:0] andAB = A & B;   // item C: AB
    wire       menor = (A < B); // item E: (A<B)

    assign {Cout, F} = (S == 4'b1000) ? {1'b0, notA}           : // item 8
                       (S == 4'b0010) ? suma                   : // item 2
                       (S == 4'b0111) ? {1'b0, B}              : // item 7
                       (S == 4'b1100) ? {1'b0, andAB}          : // item C
                       (S == 4'b1110) ? {1'b0, 4'b0000, menor} : // item E
                                        6'b000000;               // no asignadas
endmodule