library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity C1 is
	port(
		A, B: in std_logic_vector(7 downto 0);
		F: out std_logic_vector(7 downto 0)
	);
end C1;

architecture circuit of C1 is
begin
	F <= A + B;
end circuit;

