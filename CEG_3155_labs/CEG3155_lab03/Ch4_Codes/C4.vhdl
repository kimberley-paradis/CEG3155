library ieee;
use ieee.std_logic_1164.all;

entity C4 is
	port(
		w, x, y, z: in std_logic;
		s: in std_logic_vector(1 downto 0);
		m: out std_logic
	);
end C4;

architecture c4_estr of C4 is
begin
with s select
  m <= w when "00",
       x when "01",
       y when "10",
       z when others;
end c4_estr;

