library ieee;
use ieee.std_logic_1164.all;
entity top is
	port(
		SW: in std_logic_vector(17 downto 0);
		LEDR: out std_logic_vector(17 downto 0)
	);
end top;
architecture top_map of top is
	signal F1,F2,F3: std_logic;
	component C1 is
		port(
			A, B, C: in std_logic;
			F: out std_logic
		);
	end component;
	component C2 is
		port(
			A, B: in std_logic;
			F: out std_logic
		);
	end component;
	component C3 is
		port(
			A, B, C: in std_logic;
			F: out std_logic
		);
	end component;
component C4 is
	port(
		w, x, y, z: in std_logic;
		s: in std_logic_vector(1 downto 0);
		m: out std_logic
	);
end component;
begin
	L0: C1 port map(SW(0), SW(1), SW(2), F1);
	L1: C2 port map(SW(1), SW(0), F2);
	L2: C3 port map(SW(0), SW(1), SW(2), F3);
	L3: C4 port map(F1,F2,F3, '0', SW(17 downto 16), LEDR(0));
end top_map;

