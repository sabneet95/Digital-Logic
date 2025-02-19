`timescale 1ns/1ps
// 4:1 Multiplexer Module in SystemVerilog
// Selects one of four data inputs (D0, D1, D2, D3) based on two select signals (S1, S0)
module mux(
    input  logic S1,  // Select line 1
    input  logic S0,  // Select line 0
    input  logic D0,  // Data input 0
    input  logic D1,  // Data input 1
    input  logic D2,  // Data input 2
    input  logic D3,  // Data input 3
    output logic Y    // Multiplexer output
);

    // Multiplexer logic: selects one data input based on S1 and S0
    assign Y = (~S0 & ~S1 & D0) |
               ( S0 & ~S1 & D1) |
               (~S0 &  S1 & D2) |
               ( S0 &  S1 & D3);

endmodule
