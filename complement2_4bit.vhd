library ieee;
use ieee.std_logic_1164.all;

entity complement2_4bit is port ( 
	X: in std_logic_vector(3 downto 0);
	Z: out std_logic_vector(3 downto 0)
	);
end complement2_4bit;

architecture hardware of complement2_4bit is
component full_adder port (
		A, B, Cin: in std_logic;
		S, Cout: out std_logic
		);
end component;
signal carry : std_logic_vector (2 downto 0);
begin
	-- Invertendo e somando 0001
	fa0: full_adder port map(not X(0), '1', '0', Z(0), carry(0));
	fa1: full_adder port map(not X(1), '0', carry(0), Z(1), carry(1));
   fa2: full_adder port map(not X(2), '0', carry(1), Z(2), carry(2));
   fa3: full_adder port map(not X(3), '0', carry(2), Z(3), open);
	
end hardware;