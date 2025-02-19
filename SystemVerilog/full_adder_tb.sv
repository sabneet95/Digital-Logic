`timescale 1ns/1ps
// Testbench for the SystemVerilog Full Adder
module full_adder_tb;
    // Testbench signals
    logic x, y, cin;
    logic sum, cout;

    // Instantiate the full adder
    full_adder uut (
        .x(x),
        .y(y),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Stimulus process
    initial begin
        $display("Time  x y cin | sum cout");
        $monitor("%0t    %b %b %b |  %b   %b", $time, x, y, cin, sum, cout);
        
        // Apply all possible input combinations
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
