library ieee;
use ieee.std_logic_1164.all;

-- Testbench entity has no ports
entity full_adder_tb is
end full_adder_tb;

architecture tb of full_adder_tb is

    -- Signal declarations to connect to the full adder
    signal a, b, cin : std_logic := '0';
    signal sum, cout : std_logic;

begin

    -- Instantiate the full adder
    uut: entity work.full_adder
        port map (
            a    => a,
            b    => b,
            cin  => cin,
            sum  => sum,
            cout => cout
        );

    -- Stimulus process to apply test vectors
    stim_proc: process
    begin
        -- Test Case 0: a=0, b=0, cin=0
        a <= '0'; b <= '0'; cin <= '0';
        wait for 10 ns;

        -- Test Case 1: a=0, b=0, cin=1
        a <= '0'; b <= '0'; cin <= '1';
        wait for 10 ns;

        -- Test Case 2: a=0, b=1, cin=0
        a <= '0'; b <= '1'; cin <= '0';
        wait for 10 ns;

        -- Test Case 3: a=0, b=1, cin=1
        a <= '0'; b <= '1'; cin <= '1';
        wait for 10 ns;

        -- Test Case 4: a=1, b=0, cin=0
        a <= '1'; b <= '0'; cin <= '0';
        wait for 10 ns;

        -- Test Case 5: a=1, b=0, cin=1
        a <= '1'; b <= '0'; cin <= '1';
        wait for 10 ns;

        -- Test Case 6: a=1, b=1, cin=0
        a <= '1'; b <= '1'; cin <= '0';
        wait for 10 ns;

        -- Test Case 7: a=1, b=1, cin=1
        a <= '1'; b <= '1'; cin <= '1';
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

end tb;
