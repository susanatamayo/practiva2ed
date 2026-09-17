//Descripción de flujo de datos del multiplexor 2 a 1 utilizando el operador condicional
module mux2to1_df_oc(iA, iB, iSelect, oSalida);
    input iA,iB,iSelect;
    output oSalida;
    assign oSalida = iSelect ? iA : iB;
endmodule
// Video de sustentación: https://youtu.be/QOorxcog5-c?feature=shared