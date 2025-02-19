`timescale 1ns / 1ps
// Testbench for half_adder module

module half_adder_tb;
    // Inputs to the DUT
    reg i_bit1;
    reg i_bit2;
    // Outputs from the DUT
    wire o_sum;
    wire o_carry;

    // Instantiate the half_adder
    half_adder uut (
        .i_bit1(i_bit1),
        .i_bit2(i_bit2),
        .o_sum(o_sum),
        .o_carry(o_carry)
    );

    // Test sequence
    initial begin
        $display("Time | i_bit1 i_bit2 | o_sum o_carry");
        $monitor("%t |   %b      %b  |   %b     %b", $time, i_bit1, i_bit2, o_sum, o_carry);

        // Test all combinations of inputs
        i_bit1 = 0; i_bit2 = 0; #10;
        i_bit1 = 0; i_bit2 = 1; #10;
        i_bit1 = 1; i_bit2 = 0; #10;
        i_bit1 = 1; i_bit2 = 1; #10;

        $finish;
    end
endmodule
