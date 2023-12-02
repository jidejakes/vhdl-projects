library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is

generic(width:integer:=8;
		depth:integer:=32;
		addr:integer:=5);
Port(

	clk : in std_logic;
	read_addr: in std_logic_vector((addr-1) downto 0);
	data_out: out std_logic_vector((width-1) downto 0));
	end memory;
	
	architecture behavior of memory is
	type ram_type is array(0 to (depth-1)) of std_logic_vector((width-1) downto 0);

	signal Z: ram_type:=("10101110","10110100","10001010","10101010","10101001","00000000","10100101","01010101","10101110","10110100","10001010","10101010","10101001","00000000","10100101","01010101","10101110","10110100","10001010","10101010","10101001","00000000","10100101","01010101","10101110","10110100","10001010","10101010","10101001","00000000","10100101","01010101");
	Begin
	Process(clk,read_addr) 
	Begin
	if(clk'event and clk='1') then
	Data_out<=Z(conv_integer(read_addr));
	end if;
	end process;
	end;
