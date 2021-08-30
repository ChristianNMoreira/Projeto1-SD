library ieee;
use ieee.std_logic_1164.all;

entity ULA_labsland is
	generic(
		n: integer:= 4
	);
	
	-- K: SW [2 / 0]
	-- A: SW [(2 + n) / 3]
	-- B: SW [(2 + 2n) / (3 + n)]
	-- n maximo: 7
	-- Cout: LEDG(0)
	-- OV: 

	port (
		-- Cin: in std_logic;
		-- A, B: in std_logic_vector(n-1 downto 0);
		-- K: in std_logic_vector (2 downto 0);
		-- Cout: out std_logic;
		-- OV: out std_logic; --Overflow
		-- Y: out std_logic_vector(n-1 downto 0)
		SW: in std_logic_vector(17 downto 0);
		--KEY: in std_logic_vector(2 downto 0);
		LEDG: out std_logic_vector(0 downto 0);
		HEX0: out std_logic_vector(6 downto 0);
		HEX1: out std_logic_vector(6 downto 0);
		HEX3: out std_logic_vector(6 downto 0)
	);

end ULA_labsland;

architecture teste of ULA_labsland is
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
component decoder_hex port (
    X: in std_logic_vector(n-1 downto 0);
	H: out std_logic_vector(6 downto 0)
    );
end component;

signal D: std_logic_vector (7 downto 0);

signal aux: std_logic_vector(n downto 0);
signal As: std_logic_vector(n-1 downto 0);
signal Bs: std_logic_vector(n-1 downto 0);
signal Cins: std_logic_vector(n downto 0);
signal Ss: std_logic_vector(n-1 downto 0);
signal K: std_logic_vector(2 downto 0);
signal Y: std_logic_vector(n-1 downto 0);
signal A: std_logic_vector(n-1 downto 0);
constant zeros : std_logic_vector(n-1 downto 0) := ( others => '0');

begin

    K(0) <= SW(0);
    K(1) <= SW(1);
    K(2) <= SW(2);
	Dcd: decoder port map (K => K, D => D);
	
	A <= SW((2+n) downto 3);
	
	H1: decoder_hex port map (X => A, H => HEX0);
	H2: decoder_hex port map (X => SW((2+2*n) downto (3+n)), H => HEX1);

	-- 1 0 0 0 0 0 0 0  =>  soma
	-- 0 1 0 0 0 0 0 0  =>  incremento +1
	-- 0 0 1 0 0 0 0 0  =>  subtração
	-- 0 0 0 1 0 0 0 0  =>  complemento de 2
	-- 0 0 0 0 1 0 0 0  =>
	-- 0 0 0 0 0 1 0 0  =>
	-- 0 0 0 0 0 0 1 0  =>
	-- 0 0 0 0 0 0 0 1  =>

	Cins(0) <= D(6) or D(5) or D(4);

	FA3: for i in 0 to (n-1) generate
		As(i) <= ( SW(3+i) and (not D(4)) ) or ( (not SW(3+i)) and (not D(7)) and (not D(6)) and (not D(5)) );
		Bs(i) <= ( SW(3+n+i) and (not D(6)) and (not D(4)) and (not D(5)) ) or
					( (not SW(3+n+i)) and (not D(7)) and (not D(6)) and (not D(4)));
		FA3_i: full_adder port map (A => As(i), B => Bs(i), Cin => Cins(i), S => Ss(i), Cout => Cins(i+1));
	end generate;

	Y <= Ss;
	H3: decoder_hex port map (X =>Y, H => HEX3);
	LEDG(0) <= Cins(n);

	
	--OVERF: overflow_detector port map (A => A1(n-1), B => A2(n-1), Z => sub(n-1), O => OV);

	
end teste;