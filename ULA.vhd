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
		OV: out std_logic; --flag Overflow
		Negative: out std_logic; -- flag Negativo
		--Z: out std_logic; -- flag Zero
		Y: out std_logic_vector(n-1 downto 0)
	);

end ULA;

architecture teste of ULA is
component full_adder port (
	A, B, Cin: in std_logic;
	S, Cout: out std_logic
	);
end component;
component decoder port (
	K: in std_logic_vector(2 downto 0);
	D: out std_logic_vector(7 downto 0)
	);
end component;
component overflow_detector port ( 
		A, B, Z: in std_logic;
		O: out std_logic
		);
end component;
signal D: std_logic_vector (7 downto 0);

signal aux: std_logic_vector(n downto 0);
signal As: std_logic_vector(n-1 downto 0);
signal Bs: std_logic_vector(n-1 downto 0);
signal Cins: std_logic_vector(n downto 0);
signal Ss: std_logic_vector(n-1 downto 0);
signal bit_or_bit: std_logic_vector(n-1 downto 0);
signal bit_and_bit: std_logic_vector(n-1 downto 0);
signal bit_xor_bit: std_logic_vector(n-1 downto 0);
signal bit_nand_bit: std_logic_vector(n-1 downto 0);
signal O: std_logic;
-- signal detect_zero: std_ulogic;

signal not_a1: std_logic_vector(n-1 downto 0);
signal not_a2: std_logic_vector(n-1 downto 0);

begin

	Dcd: decoder port map (K => K, D => D);

	-- 1 0 0 0 0 0 0 0  =>  soma
	-- 0 1 0 0 0 0 0 0  =>  incremento +1
	-- 0 0 1 0 0 0 0 0  =>  subtração
	-- 0 0 0 1 0 0 0 0  =>  complemento de 2
	-- 0 0 0 0 1 0 0 0  => OR BIT A BIT
	-- 0 0 0 0 0 1 0 0  => XOR BIT A BIT
	-- 0 0 0 0 0 0 1 0  => AND BIT A BIT
	-- 0 0 0 0 0 0 0 1  => NAND BIT A BIT

	Cins(0) <= Cin or D(6) or D(5) or D(4);

	FA3: for i in 0 to (n-1) generate
		not_a1(i) <= not A(i);
		not_a2(i) <= not B(i);
		bit_or_bit(i) <= A(i) or B(i);
		bit_and_bit(i) <= A(i) and B(i);
		bit_xor_bit(i) <= A(i) xor B(i);
		bit_nand_bit(i) <= A(i) nand B(i);
		As(i) <= ( A(i) and (not D(4)) ) or ( (not A(i)) and (not D(7)) and (not D(6)) and (not D(5)) );
		Bs(i) <= ( B(i) and (not D(6)) and (not D(4)) and (not D(5)) ) or
					( (not B(i)) and (not D(7)) and (not D(6)) and (not D(4)));
		FA3_i: full_adder port map (A => As(i), B => Bs(i), Cin => Cins(i), S => Ss(i), Cout => Cins(i+1));
	end generate;

	OVERF: overflow_detector port map (A => A(n-1), B => B(n-1), Z => Ss(n-1), O => O);
	
	--zero: for i in 1 to (n-1) generate
	--	detect_zero <= Ss(i) or Ss(i-1);
	--end generate;
	result: for i in 0 to (n-1) generate
		Y(i) <= (Ss(i) and (D(7) or D(6) or D(5) or D(4))) or (bit_or_bit(i) and D(3)) or (bit_xor_bit(i) and D(2)) or (bit_and_bit(i) and D(1)) or (bit_nand_bit(i) and D(0));
	end generate;
	Cout <= Cins(n);
	OV <= O and D(4);
	Negative <= Ss(n-1) and (D(4) or D(5));
	-- Z <= not detect_zero;
end teste;