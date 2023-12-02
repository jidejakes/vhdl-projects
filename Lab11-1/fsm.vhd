LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fsm IS
	PORT
	(
		clk: in std_logic;
		reset: in std_logic;
		input: in std_logic;
		output: out std_logic;
		state_out : out std_logic_vector(1 downto 0)
	);
END fsm;

ARCHITECTURE rtl of fsm is
	TYPE state_type is (state0, state1, state2, state3);
	SIGNAL state: state_type;
	BEGIN

PROCESS(clk, reset)
BEGIN

	if reset = '1' then
	state <= state0;
	elsif clk'EVENT AND clk = '1' then
		CASE state is
			when state0 =>
				if(input = '0') then
				output <= '0';
				state <= state0;
				state_out <= "00";
				elsif(input = '1') then
				output <= '0';
				state <= state1;
				state_out <= "01";
				END if;
				
			when state1 =>
				if(input = '1') then
				output <= '0';
				state <= state2;
				state_out <= "10";
				elsif(input = '0') then
				output <= '0';
				state <= state0;
				state_out <= "00";
				
				END if;
				
			when state2 =>
				if(input = '1') then
				output <= '0';
				state <= state2;
				state_out <= "10";
				elsif(input = '0') then
				output <= '0';
				state <= state3;
				state_out <= "11";
				END if;
				
			when state3 =>
				if(input = '1') then
				output <= '1';
				state <= state1;
				state_out <= "01";
				elsif(input = '0') then
				output <= '0';
				state <= state0;
				state_out <= "00";
				END if;
				
		END CASE;
	END if;
END PROCESS;
END ARCHITECTURE;