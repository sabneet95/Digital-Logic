`timescale 1ns/1ps
// 1-bit Full Adder Module in SystemVerilog
module full_adder(
    input  logic x,
    input  logic y,
    input  logic cin,
    output logic sum,
    output logic cout
);

    // Compute the sum and carry; x+y+cin returns a 2-bit result
    assign {cout, sum} = x + y + cin;

endmodule
