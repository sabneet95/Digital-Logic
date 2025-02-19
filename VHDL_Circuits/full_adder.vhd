library ieee;
use ieee.std_logic_1164.all;

-- Entity for a 1-bit Full Adder
entity full_adder is
    port (
        a    : in  std_logic;
        b    : in  std_logic;
        cin  : in  std_logic;
        sum  : out std_logic;
        cout : out std_logic
    );
end full_adder;

-- Behavioral architecture implementing the full adder logic
architecture behavioral of full_adder is
begin
    -- Sum is the XOR of all three inputs
    sum <= a xor b xor cin;
    -- Carry-out is generated if any two or more inputs are high
    cout <= (a and b) or (b and cin) or (a and cin);
end behavioral;
