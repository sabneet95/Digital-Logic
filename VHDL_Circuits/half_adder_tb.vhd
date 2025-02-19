library ieee;
use ieee.std_logic_1164.all;

-- Testbench entity has no ports
entity half_adder_tb is
end half_adder_tb;

architecture tb of half_adder_tb is

    -- Signal declarations to connect to the half adder
    signal a, b    : std_logic := '0';
    signal sum, carry : std_logic;

begin

    -- Instantiate the half adder
    uut: entity work.half_adder
        port map (
            a     => a,
            b     => b,
            sum   => sum,
            carry => carry
        );

    -- Stimulus process to apply test vectors
    stim_proc: process
    begin
        -- Display header for simulation output
        report "Time, a, b, sum, carry";
        
        -- Test Case 0: a=0, b=0
        a <= '0'; b <= '0';
        wait for 10 ns;
        report "Test 0: " & "a=" & std_logic'image(a) & " b=" & std_logic'image(b) &
               " -> sum=" & std_logic'image(sum) & " carry=" & std_logic'image(carry);

        -- Test Case 1: a=0, b=1
        a <= '0'; b <= '1';
        wait for 10 ns;
        report "Test 1: " & "a=" & std_logic'image(a) & " b=" & std_logic'image(b) &
               " -> sum=" & std_logic'image(sum) & " carry=" & std_logic'image(carry);

        -- Test Case 2: a=1, b=0
        a <= '1'; b <= '0';
        wait for 10 ns;
        report "Test 2: " & "a=" & std_logic'image(a) & " b=" & std_logic'image(b) &
               " -> sum=" & std_logic'image(sum) & " carry=" & std_logic'image(carry);

        -- Test Case 3: a=1, b=1
        a <= '1'; b <= '1';
        wait for 10 ns;
        report "Test 3: " & "a=" & std_logic'image(a) & " b=" & std_logic'image(b) &
               " -> sum=" & std_logic'image(sum) & " carry=" & std_logic'image(carry);

        -- End simulation
        wait;
    end process;

end tb;
