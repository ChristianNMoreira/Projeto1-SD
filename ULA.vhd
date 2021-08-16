library ieee;
use ieee.std_logic_1164.all;

entity ULA is
		generic(
		n: integer:= 4
		);

		port (
		-- A1, B1, C1, D1, A2, B2, C2, D2, Cin: in std_logic;
		Cin: in std_logic;
		A1, A2: in std_logic_vector(n-1 downto 0);
		K1, K2, K3: in std_logic;
		-- E1, F1, G1, H1, Cout: out std_logic
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

-- signal aux1_carry, aux2_carry, aux3_carry: std_logic;
signal aux: std_logic_vector(n downto 0);
begin
		aux(0) <= Cin;
		Cout <= aux(n);
		-- FA1: full_adder port map (A => D1, B => D2, Cin => Cin, S => H1, Cout => aux1_carry);
		-- FA2: full_adder port map (A => C1, B => C2, Cin => aux1_carry, S => G1, Cout => aux2_carry);
		-- FA3: full_adder port map (A => B1, B => B2, Cin => aux2_carry, S => F1, Cout => aux3_carry);
		-- FA4: full_adder port map (A => A1, B => A2, Cin => aux3_carry, S => E1, Cout => Cout);
		FA: for i in 0 to (n-1) generate
			 FA_i: full_adder port map (A => A1(i), B => A2(i), Cin => aux(i), S => E1(i), Cout => aux(i+1));
		end generate;
		
end teste;