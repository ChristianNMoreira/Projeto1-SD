library ieee;
use ieee.std_logic_1164.all;

entity ULA is
		generic(
		n: integer:= 4
		);

		port (
		Cin: in std_logic;
		A1, A2: in std_logic_vector(n-1 downto 0);
		K: in std_logic_vector (2 downto 0);
		Cout: out std_logic;
		OV: out std_logic; --Overflow
		E1: out std_logic_vector(n-1 downto 0)
		);
		
end ULA;
		 
architecture teste of ULA is
component full_adder port (
		A, B, Cin: in std_logic;
		S, Cout: out std_logic
		);
end component;
component overflow_detector port ( 
		A, B, Z: in std_logic;
		O: out std_logic
		);
end component;

component complement2_4bit port ( 
		X: in std_logic_vector(3 downto 0);
		Z: out std_logic_vector(3 downto 0)
		);
end component;

signal sum: std_logic_vector(n-1 downto 0); -- sum 4 bits
signal aux_sum: std_logic_vector(n downto 0);
signal sum1: std_logic_vector(n-1 downto 0); -- 1 implement
signal aux_sum1: std_logic_vector(n downto 0);
signal sub: std_logic_vector(n-1 downto 0);
signal aux_sub: std_logic_vector(n downto 0);
signal comp2: std_logic_vector(3 downto 0);
signal cts: std_logic_vector(8 downto 0); -- carry outs
constant zeros : std_logic_vector(n-1 downto 0) := ( others => '0');
begin

		-- sum 4 bits

		aux_sum(0) <= Cin;
		cts(0) <= aux_sum(n);
		FA: for i in 0 to (n-1) generate
			 FA_i: full_adder port map (A => A1(i), B => A2(i), Cin => aux_sum(i), S => sum(i), Cout => aux_sum(i+1));
		end generate;
		
		-- 1 implement
		
		cts(1) <= aux_sum1(n);
		ONEA0: full_adder port map (A => A1(0), B => '1', Cin => Cin, S => sum1(0), Cout => aux_sum1(1));
		ONEA: for i in 1 to (n-1) generate
			 ONEA_i: full_adder port map (A => A1(i), B => '0', Cin => aux_sum1(i), S => sum1(i), Cout => aux_sum1(i+1));
		end generate;
		
		--sub
		
		aux_sub(0) <= '1';
		FA_sub: for i in 0 to (n-1) generate
			 FA_sub_i: full_adder port map (A => A1(i), B => (not A2(i)), Cin => aux_sub(i), S => sub(i), Cout => aux_sub(i+1));
		end generate;
		
		OVERF: overflow_detector port map (A => A1(n-1), B => A2(n-1), Z => sub(n-1), O => OV);
		
		-- Complemento de 2 (Troca de sinal)
		COMP_2: complement2_4bit port map(X => A1, Z => comp2);
		
		E1 <= sum when (K="000") else
			   sum1 when (K="001") else
				sub when (K="010") else
				comp2 when (K="011") else
			   zeros;
			  
		Cout <= cts(0) when (K="000") else
				  cts(1) when (K="001") else
				  '0';
			  
		
end teste;