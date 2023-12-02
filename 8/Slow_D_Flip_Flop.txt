LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Slow_Flip_Flop is

PORT(
clock : in std_logic;
D: in std_logic;
Q: out std_logic;
Qnot: out std_logic
);

end Slow_Flip_Flop;

architecture behaviour of Slow_Flip_Flop is
signal clock_tmp: std_logic;

component slow_clock is
	PORT(
	clock_in: in std_logic;
	clock_out: out std_logic
	);
end component;

component D_Flip_Flop is
	PORT(
	clock: in std_logic;
	D: in std_logic;
	Q: out std_logic;
	Qnot: out std_logic
	);
end component;

begin

inst1: slow_clock port map(clock,clock_tmp);
inst2: D_Flip_Flop port map(clock_tmp,D,Q,Qnot);

end behaviour;	