library ieee;
use ieee.std_logic_1164.all;

entity C2 is
	port(
		A, B: in std_logic_vector(7 downto 0);
		F: out std_logic_vector(7 downto 0)
	);
end C2;

architecture circuit of C2 is
begin
	F <= A or B;
end circuit;

