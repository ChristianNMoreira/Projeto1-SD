library ieee;
use ieee.std_logic_1164.all;

entity ULA is
	generic(
		n: integer:= 4
	);

	port (
		Cin: in std_logic;
		A, B: in std_logic_vector(n-1 downto 0);
		K: in std_logic_vector (2 downto 0);
		Cout: out std_logic;
		OV: out std_logic; --Overflow
		Y: out std_logic_vector(n-1 downto 0)
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
component decoder port (
	K: in std_logic_vector(2 downto 0);
	D: out std_logic_vector(7 downto 0)
	);
end component;

signal D: std_logic_vector (7 downto 0);

signal aux: std_logic_vector(n downto 0);
signal As: std_logic_vector(n-1 downto 0);
signal Bs: std_logic_vector(n-1 downto 0);
signal Cins: std_logic_vector(n downto 0);
signal Ss: std_logic_vector(n-1 downto 0);

signal not_a1: std_logic_vector(n-1 downto 0);
signal not_a2: std_logic_vector(n-1 downto 0);

constant zeros : std_logic_vector(n-1 downto 0) := ( others => '0');
begin

	Dcd: decoder port map (K => K, D => D);

	-- 1 0 0 0 0 0 0 0  =>  soma
	-- 0 1 0 0 0 0 0 0  =>  incremento +1
	-- 0 0 1 0 0 0 0 0  =>  subtração
	-- 0 0 0 1 0 0 0 0  =>  complemento de 2
	-- 0 0 0 0 1 0 0 0  =>
	-- 0 0 0 0 0 1 0 0  =>
	-- 0 0 0 0 0 0 1 0  =>
	-- 0 0 0 0 0 0 0 1  =>

	Cins(0) <= Cin or D(6) or D(5) or D(4);

	FA3: for i in 0 to (n-1) generate
		not_a1(i) <= not A(i);
		not_a2(i) <= not B(i);
		As(i) <= ( A(i) and (not D(4)) ) or ( (not A(i)) and (not D(7)) and (not D(6)) and (not D(5)) );
		Bs(i) <= ( B(i) and (not D(6)) and (not D(4)) and (not D(5)) ) or
					( (not B(i)) and (not D(7)) and (not D(6)) and (not D(4)));
		FA3_i: full_adder port map (A => As(i), B => Bs(i), Cin => Cins(i), S => Ss(i), Cout => Cins(i+1));
	end generate;

	Y <= Ss;
	Cout <= Cins(n);

	
	--OVERF: overflow_detector port map (A => A1(n-1), B => A2(n-1), Z => sub(n-1), O => OV);

	
end teste;