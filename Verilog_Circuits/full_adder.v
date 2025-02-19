`timescale 1ns / 1ps
// Full Adder Module
// This module implements a 1-bit full adder.
// Inputs:
//   x   - First input bit
//   y   - Second input bit
//   cin - Carry-in bit
// Outputs:
//   sum - Sum output bit
//   cout- Carry-out bit

module full_adder (
    input  wire x,
    input  wire y,
    input  wire cin,
    output wire sum,
    output wire cout
);

    // Compute sum and carry using continuous assignment.
    // The addition of three 1-bit inputs yields a 2-bit result,
    // where the MSB is the carry-out and the LSB is the sum.
    assign {cout, sum} = x + y + cin;

endmodule
