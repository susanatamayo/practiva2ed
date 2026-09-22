module tb_Ejercicio1;
reg [2:0] iSelect;
wire [6:0] oDisplay1, oDisplay2, oDisplay3, oDisplay4, oDisplay5, oDisplay6;

Ejercicio1 UUT(iSelect, oDisplay1, oDisplay2, oDisplay3, oDisplay4, oDisplay5, oDisplay6);

initial begin
  iSelect = 3'b000; #20;
  iSelect = 3'b001; #20;
  iSelect = 3'b010; #20;
  iSelect = 3'b011; #20;
  iSelect = 3'b100; #20;
  iSelect = 3'b101; #20;
end
endmodule