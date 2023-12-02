LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY alu IS
	PORT
	(
		clk: in std_logic;
		aluOP: in std_logic_vector (2 downto 0);
		A: in std_logic_vector (3 downto 0);
		B: in std_logic_vector (3 downto 0);
		output: out std_logic_vector (4 downto 0)
		);
		
END alu;

ARCHITECTURE rtl of alu is
BEGIN

PROCESS(clk, aluOP)
BEGIN

	if(aluOP = "000") then
			output <= ('0' & A) + ('0' & B);
	elsif(aluOP = "001") then
			output <= ('0' & A) - ('0' & B);
	elsif(aluOP = "010") then
			output <= ('0' & A) and ('0' & B);
	elsif(aluOP = "011") then
			output <= ('0' & A) or ('0' & B);
	elsif(aluOP = "100") then
			output <= ('0' & B);
	elsif(aluOP = "101") then
			output <= ('0' & A);
	END if;
END PROCESS;
END ARCHITECTURE;
