`timescale 1ns/1ps
// Testbench: recorre las 16 combinaciones de entrada
module tb_ejercicio12;
    reg  [3:0] SW;
    wire [3:0] LEDR;
    wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
    integer i;

    ejercicio12 DUT (.SW(SW), .LEDR(LEDR),
                     .HEX0(HEX0), .HEX1(HEX1), .HEX2(HEX2),
                     .HEX3(HEX3), .HEX4(HEX4), .HEX5(HEX5));

    initial begin
        $display(" SW  | LEDR | HEX5    HEX4    HEX3    HEX2    HEX1    HEX0");
        for (i = 0; i < 16; i = i + 1) begin
            SW = i; #10;
            $display("%2d   | %b | %b %b %b %b %b %b",
                     SW, LEDR, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0);
        end
        $stop;
    end
endmodule