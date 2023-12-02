LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity slow_clock is

PORT(
clock_in : in std_logic;
clock_out: out std_logic
);

end slow_clock;

architecture behaviour of slow_clock is
signal clock_tmp: std_logic;
begin

process(clock_in)
variable x: integer := 0;
begin
if(clock_in'event and clock_in='1') then

	x:=x+1;
	if x = 50000000 then
		x:= 0;
		clock_tmp <= not clock_tmp;
		clock_out <= clock_tmp;

	end if;
end if;

end process;
end behaviour;	