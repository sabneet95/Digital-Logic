`timescale 1ns/1ps
// Testbench for the SystemVerilog Half Adder
module half_adder_tb;
    // Testbench signals
    logic i_bit1, i_bit2;
    logic o_sum, o_carry;

    // Instantiate the half adder
    half_adder uut (
        .i_bit1(i_bit1),
        .i_bit2(i_bit2),
        .o_sum(o_sum),
        .o_carry(o_carry)
    );

    // Stimulus process
    initial begin
        $display("Time  i_bit1 i_bit2 | o_sum o_carry");
        $monitor("%0t     %b      %b  |  %b      %b", $time, i_bit1, i_bit2, o_sum, o_carry);
        
        // Test all input combinations
        i_bit1 = 0; i_bit2 = 0; #10;
        i_bit1 = 0; i_bit2 = 1; #10;
        i_bit1 = 1; i_bit2 = 0; #10;
        i_bit1 = 1; i_bit2 = 1; #10;
        
        $finish;
    end

endmodule
