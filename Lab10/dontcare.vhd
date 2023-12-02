LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity dontcare is

PORT(
clock : in std_logic;
X: in std_logic;
Y1: inout std_logic;
Y2: inout std_logic;
Z: out std_logic
);

end dontcare;

architecture behaviour of dontcare is
signal D: std_logic_vector (2 downto 1);

component Slow_Flip_Flop is
	PORT(
	clock : in std_logic;
	D: in std_logic;
	Q: out std_logic;
	Qnot: out std_logic
	);
end component;

begin

D(1) <= ((not Y2 and Y1) or (Y2 and Y1));
D(2) <= ((Y2 and Y1) or (not X and not Y1) or (not X and Y2));
Z <= 

inst1: Slow_Flip_Flop port map(clock,D(1));
inst2: Slow_Flip_Flop port map(D(2),X,Z);

end behaviour;	