`timescale 1ns/1ps
// 1-bit Half Adder Module in SystemVerilog
module half_adder(
    input  logic i_bit1,
    input  logic i_bit2,
    output logic o_sum,
    output logic o_carry
);

    // Compute the sum (XOR) and carry (AND) of the two bits
    assign o_sum   = i_bit1 ^ i_bit2;
    assign o_carry = i_bit1 & i_bit2;

endmodule
