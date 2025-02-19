library ieee;
use ieee.std_logic_1164.all;

-- Testbench entity has no ports
entity mux_tb is
end mux_tb;

architecture tb of mux_tb is
    signal S1, S0, D0, D1, D2, D3, Y : std_logic;
begin
    -- Instantiate the multiplexer
    uut: entity work.mux
        port map (
            S1 => S1,
            S0 => S0,
            D0 => D0,
            D1 => D1,
            D2 => D2,
            D3 => D3,
            Y  => Y
        );

    -- Stimulus process to apply test vectors
    stim_proc: process
    begin
        -- Test Case 1: Select D0
        -- Set D0 = '1', others = '0', select lines = "00"
        D0 <= '1'; D1 <= '0'; D2 <= '0'; D3 <= '0';
        S1 <= '0'; S0 <= '0';
        wait for 10 ns;
        
        -- Test Case 2: Select D1
        -- Set D1 = '1', others = '0', select lines = "01"
        D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '0';
        S1 <= '0'; S0 <= '1';
        wait for 10 ns;
        
        -- Test Case 3: Select D2
        -- Set D2 = '1', others = '0', select lines = "10"
        D0 <= '0'; D1 <= '0'; D2 <= '1'; D3 <= '0';
        S1 <= '1'; S0 <= '0';
        wait for 10 ns;
        
        -- Test Case 4: Select D3
        -- Set D3 = '1', others = '0', select lines = "11"
        D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '1';
        S1 <= '1'; S0 <= '1';
        wait for 10 ns;
        
        -- Test Case 5: All data inputs are '1'
        -- This helps verify that the selected output is '1' regardless of the data pattern.
        D0 <= '1'; D1 <= '1'; D2 <= '1'; D3 <= '1';
        S1 <= '0'; S0 <= '0';
        wait for 10 ns;
        S1 <= '0'; S0 <= '1';
        wait for 10 ns;
        S1 <= '1'; S0 <= '0';
        wait for 10 ns;
        S1 <= '1'; S0 <= '1';
        wait for 10 ns;
        
        -- End simulation
        wait;
    end process;
end tb;
