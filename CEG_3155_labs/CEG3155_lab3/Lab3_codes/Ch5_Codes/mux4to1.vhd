library ieee;
use ieee.std_logic_1164.all;

entity mux4to1 is
	port(
		w, x, y, z: in std_logic_vector(7 downto 0);
		s: in std_logic_vector(1 downto 0);
		m: out std_logic_vector(7 downto 0)
	);
end mux4to1;

architecture circuit of mux4to1 is
begin
	m <= w when s = "00" else
		 x when s = "01" else
		 y when s = "10" else
		 z;
end circuit;

