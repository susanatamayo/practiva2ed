module mydeco3to6(Y,D);
input [2:0] D;
output [5:0] Y;
wire A, B, C;
wire Anot, Bnot, Cnot;
buf (A,D[0]);
buf (B,D[1]);
buf (C,D[2]);
not (Anot,D[0]);
not (Bnot,D[1]);
not (Cnot,D[2]);
and g1(Y[0],Cnot,Bnot,A);
and g2(Y[1],Cnot,B,Anot);
and g3(Y[2],Cnot,B,A);
and g4(Y[3],C,Bnot,Anot);
and g5(Y[4],C,Bnot,A);
and g6(Y[5],C,B,Anot);
endmodule