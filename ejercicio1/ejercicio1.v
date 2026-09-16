// Ejercicio 1 - Desarrollo de circuitos combinacionales
// Modelado en nivel de compuertas
// Entrada[2] = A, Entrada[1] = B, Entrada[0] = C

module ejercicio1(Entrada, Y);

    input  [2:0] Entrada;
    output Y;

    wire A, B, C;
    wire notA, notB;
    wire X;

    assign A = Entrada[2];
    assign B = Entrada[1];
    assign C = Entrada[0];

    // Compuertas NOT sobre A y B
    not (notA, A);
    not (notB, B);

    // AND entre las señales invertidas
    and (X, notA, notB);

    // NOR final entre X y C
    nor (Y, X, C);

endmodule
// Video de sustentación: https://youtu.be/jTsNOFiu-6g?feature=shared