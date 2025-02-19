`timescale 1ns / 1ps
// Half Adder Module
// This module implements a 1-bit half adder.
// Inputs:
//   i_bit1 - First input bit
//   i_bit2 - Second input bit
// Outputs:
//   o_sum  - Sum output bit (XOR of inputs)
//   o_carry- Carry output bit (AND of inputs)

module half_adder (
    input  wire i_bit1,
    input  wire i_bit2,
    output wire o_sum,
    output wire o_carry
);

    // Compute sum as XOR of the inputs
    assign o_sum = i_bit1 ^ i_bit2;
    // Compute carry as AND of the inputs
    assign o_carry = i_bit1 & i_bit2;

endmodule
