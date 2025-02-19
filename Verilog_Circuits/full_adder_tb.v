`timescale 1ns / 1ps
// Testbench for full_adder module

module full_adder_tb;
    // Inputs
    reg x;
    reg y;
    reg cin;
    // Outputs
    wire sum;
    wire cout;

    // Instantiate the Unit Under Test (UUT)
    full_adder uut (
        .x(x),
        .y(y),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Test sequence
    initial begin
        $display("Time | x y cin | sum cout");
        $monitor("%t | %b %b %b | %b %b", $time, x, y, cin, sum, cout);
        
        // Apply test vectors
        x = 0; y = 0; cin = 0; #10;
        x = 0; y = 0; cin = 1; #10;
        x = 0; y = 1; cin = 0; #10;
        x = 0; y = 1; cin = 1; #10;
        x = 1; y = 0; cin = 0; #10;
        x = 1; y = 0; cin = 1; #10;
        x = 1; y = 1; cin = 0; #10;
        x = 1; y = 1; cin = 1; #10;
        
        $finish;
    end
endmodule
