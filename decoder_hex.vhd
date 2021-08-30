library ieee;
use ieee.std_logic_1164.all;

entity decoder_hex is
	generic(
		n: integer:= 4
	);
	
	port (
		X: in std_logic_vector(n-1 downto 0);
		H: out std_logic_vector(6 downto 0)
	);

end decoder_hex;

architecture hardware of decoder_hex is
begin
	H <= "0000001" when (X="0000") else
		  "1001111" when (X="0001") else
		  "0010010" when (X="0010") else
		  "0000110" when (X="0011") else
		  "1001100" when (X="0100") else
		  "0100100" when (X="0101") else
		  "0100000" when (X="0110") else
		  "0001101" when (X="0111") else
		  "0000000" when (X="1000") else
		  "0000100" when (X="1001") else
		  "0000010" when (X="1010") else
		  "1100000" when (X="1011") else
		  "0110001" when (X="1100") else
		  "1000010" when (X="1101") else
		  "0110000" when (X="1110") else
		  "0111000";
end hardware;