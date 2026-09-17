//Descripción de flujo de datos de un comparador de 4 bits
module magcomp(iA, iB, oAmenorB, oAmayorB, oAigualB);
    input [3:0] iA, iB;
    output oAmenorB, oAmayorB, oAigualB;
    assign oAmenorB = (iA < iB),
           oAmayorB = (iA > iB),
           oAigualB = (iA == iB);
endmodule
// Video de sustentación: https://youtu.be/v26qfiiWat4?feature=shared