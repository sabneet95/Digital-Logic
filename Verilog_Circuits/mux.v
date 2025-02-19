`timescale 1ns / 1ps
// 4:1 Multiplexer Module
// Selects one of four data inputs (D0, D1, D2, D3) based on the select lines (S1, S0)
// Output Y reflects the selected input.
module mux (
    input wire S1,  // Select line 1
    input wire S0,  // Select line 0
    input wire D0,  // Data input 0
    input wire D1,  // Data input 1
    input wire D2,  // Data input 2
    input wire D3,  // Data input 3
    output wire Y   // Multiplexer output
);

    // Multiplexer logic: select the appropriate data input based on S1 and S0
    assign Y = (~S0 & ~S1 & D0) |
               ( S0 & ~S1 & D1) |
               (~S0 &  S1 & D2) |
               ( S0 &  S1 & D3);

endmodule
