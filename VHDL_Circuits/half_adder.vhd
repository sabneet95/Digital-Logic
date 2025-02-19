library ieee;
use ieee.std_logic_1164.all;

-- Entity for a 1-bit Half Adder
entity half_adder is
    port (
        a      : in  std_logic;
        b      : in  std_logic;
        sum    : out std_logic;
        carry  : out std_logic
    );
end half_adder;

-- Behavioral architecture implementing the half adder logic
architecture behavioral of half_adder is
begin
    -- Sum is the XOR of the two inputs
    sum <= a xor b;
    -- Carry is the AND of the two inputs
    carry <= a and b;
end behavioral;
