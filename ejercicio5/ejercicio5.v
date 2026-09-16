//Descripción de flujo de datos de un decodificador de 2 a 4
module decoder_2to4(iA,iB,iE,oD);
    input iA,iB,iE;
    output [0:3] oD;
    assign oD[0] = ~((~iA) & (~iB) & (~iE)),
           oD[1] = ~((~iA) & (iB) & (~iE)),
           oD[2] = ~((iA) & (~iB) & (~iE)),
           oD[3] = ~((iA) & (iB) & (~iE));
endmodule

// Video de sustentación: https://youtu.be/Uj-nfCt_050?feature=shared