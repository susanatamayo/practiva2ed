//Descripción de flujo de datos del multiplexor 2 a 1 utilizando el operador if-else
module mux2to1_df_if(iA,iB,iSelect,oSalida);
    input iA,iB,iSelect;
    output oSalida;
    reg oSalida;
    always @ (iSelect or iA or iB)
        if (iSelect == 1)
            oSalida = iA;
        else
            oSalida = iB;
endmodule
// Video de sustentación: https://youtu.be/5IrFfZ-Du8Y?feature=shared
