module mymux4to4(Y,A,S);
input [3:0] A;
input S;
output [3:0] Y;
assign Y = S ? A : 4'b1111;
endmodule