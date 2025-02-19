`timescale 1ns / 1ps
// Testbench for 4:1 Multiplexer
module mux_tb;

    // Testbench signals
    reg S1, S0;
    reg D0, D1, D2, D3;
    wire Y;

    // Instantiate the mux
    mux uut (
        .S1(S1),
        .S0(S0),
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .Y(Y)
    );

    // Stimulus process
    initial begin
        $display("Time | S1 S0 | D0 D1 D2 D3 | Y");
        $monitor("%0t | %b  %b | %b  %b  %b  %b | %b", $time, S1, S0, D0, D1, D2, D3, Y);

        // Test Case 1: Select D0
        D0 = 1; D1 = 0; D2 = 0; D3 = 0;
        S1 = 0; S0 = 0;
        #10;
        
        // Test Case 2: Select D1
        D0 = 0; D1 = 1; D2 = 0; D3 = 0;
        S1 = 0; S0 = 1;
        #10;
        
        // Test Case 3: Select D2
        D0 = 0; D1 = 0; D2 = 1; D3 = 0;
        S1 = 1; S0 = 0;
        #10;
        
        // Test Case 4: Select D3
        D0 = 0; D1 = 0; D2 = 0; D3 = 1;
        S1 = 1; S0 = 1;
        #10;
        
        // Test Case 5: All data inputs set to '1'
        D0 = 1; D1 = 1; D2 = 1; D3 = 1;
        S1 = 0; S0 = 0;
        #10;
        S1 = 0; S0 = 1;
        #10;
        S1 = 1; S0 = 0;
        #10;
        S1 = 1; S0 = 1;
        #10;
        
        $finish;
    end

endmodule
