library ieee;
use ieee.std_logic_1164.all;

entity ULA is
		generic(
		n: integer:= 4
		);

		port (
		Cin: in std_logic;
		A1, A2: in std_logic_vector(n-1 downto 0);
		K1, K2, K3: in std_logic;
		Cout: out std_logic;
		E1: out std_logic_vector(n-1 downto 0)
		);
		
end ULA;
		 
architecture teste of ULA is
component full_adder port (
		A, B, Cin: in std_logic;
		S, Cout: out std_logic
		);
		
end component;

signal aux: std_logic_vector(n downto 0);
begin
		aux(0) <= Cin;
		Cout <= aux(n);
		FA: for i in 0 to (n-1) generate
			 FA_i: full_adder port map (A => A1(i), B => A2(i), Cin => aux(i), S => E1(i), Cout => aux(i+1));
		end generate;
		
end teste;