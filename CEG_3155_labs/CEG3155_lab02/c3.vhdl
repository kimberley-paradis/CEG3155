library ieee;
use ieee.std_logic_1164.all;

entity C3 is
	port(
	   A, B, C: in std_logic;
	   F: out std_logic;
	);
end C4;

architecture c3_estr of C4 is
begin
	F <= (C or B) and (NOT A);
end c3_estr
