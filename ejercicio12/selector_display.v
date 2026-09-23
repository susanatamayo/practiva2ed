// Submodulo 3: selector de display
// en[0]=HEX0 (Display 1) ... en[4]=HEX4 (Display 5)
module selector_display (
    input  [3:0] N,
    input        err,
    output [4:0] en
);
    wire A = N[3], B = N[2], C = N[1], D = N[0];

    wire s1 = (A & D) | (~A & ~B & ~C & ~D);      // 9, 0 -> Display 1
    wire s2 = (B & C & D) | (A & ~D);             // 7, 8 -> Display 2
    wire s3 = (B & C & ~D) | (B & ~C & D);        // 5, 6 -> Display 3
    wire s4 = (~B & C & D) | (B & ~C & ~D);       // 3, 4 -> Display 4
    wire s5 = (~A & ~B & ~C & D) | (~B & C & ~D); // 1, 2 -> Display 5

    assign en = {s5, s4, s3, s2, s1} & {5{~err}};
endmodule