module Ejercicio1(iSelect,oDisplay1,oDisplay2,oDisplay3,
 oDisplay4,oDisplay5,oDisplay6);
input [2:0] iSelect;
output [6:0] oDisplay1,oDisplay2,oDisplay3,oDisplay4,oDisplay5,oDisplay6;
wire [3:0] dato1, dato2, dato3, dato4, dato5, dato6;
wire [5:0] display_n;
wire [3:0] iA = 4'h8;
mydeco3to6 IC01(display_n,iSelect);
mymux4to4 IC02(dato1,iA,display_n[0]);
mymux4to4 IC03(dato2,iA,display_n[1]);
mymux4to4 IC04(dato3,iA,display_n[2]);
mymux4to4 IC05(dato4,iA,display_n[3]);
mymux4to4 IC06(dato5,iA,display_n[4]);
mymux4to4 IC07(dato6,iA,display_n[5]);
mydeco_display7 IC08(oDisplay1,dato1);
mydeco_display7 IC09(oDisplay2,dato2);
mydeco_display7 IC10(oDisplay3,dato3);
mydeco_display7 IC11(oDisplay4,dato4);
mydeco_display7 IC12(oDisplay5,dato5);
mydeco_display7 IC13(oDisplay6,dato6);
endmodule