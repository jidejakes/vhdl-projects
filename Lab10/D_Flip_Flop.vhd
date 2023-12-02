
LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity D_Flip_Flop is

PORT(
clock: in std_logic;
D : in std_logic;
Q : out std_logic;
Qnot : out std_logic
);

end D_Flip_Flop;

architecture behaviour of D_Flip_Flop is

begin

process(clock)
begin
if(clock'event and clock='1') then
	Q <= D;
	Qnot <= not D;
end if;

end process;
end behaviour;	