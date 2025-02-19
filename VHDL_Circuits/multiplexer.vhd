library ieee;
use ieee.std_logic_1164.all;

-- Entity for a 4:1 Multiplexer
entity mux is
    port (
        S1 : in  std_logic;  -- Select line 1
        S0 : in  std_logic;  -- Select line 0
        D0 : in  std_logic;  -- Data input 0
        D1 : in  std_logic;  -- Data input 1
        D2 : in  std_logic;  -- Data input 2
        D3 : in  std_logic;  -- Data input 3
        Y  : out std_logic   -- Output
    );
end mux;

-- Behavioral architecture for the multiplexer
architecture behavioral of mux is
begin
    Y <= (not S0 and not S1 and D0) or 
         (S0 and not S1 and D1) or 
         (not S0 and S1 and D2) or
         (S0 and S1 and D3);
end behavioral;
