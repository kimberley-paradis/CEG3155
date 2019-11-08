library ieee;
use ieee.std_logic_1164.all;

entity top is
	port(
		SW: in std_logic_vector(17 downto 0);
		HEX0, HEX1: out std_logic_vector(6 downto 0);
		LEDR: out std_logic_vector(17 downto 0)
	);
end top;

architecture top_map of top is
	signal F, F1, F2, F3, F4: std_logic_vector(7 downto 0);

	component C1 is
		port(
			A, B: in std_logic_vector(7 downto 0);
			F: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component C2 is
		port(
			A, B: in std_logic_vector(7 downto 0);
			F: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component C3 is
		port(
			A, B: in std_logic_vector(7 downto 0);
			F: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component C4 is
		port(
			A, B: in std_logic_vector(7 downto 0);
			F: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component mux4to1 is
		port(
			w, x, y, z: in std_logic_vector(7 downto 0);
			s: in std_logic_vector(1 downto 0);
			m: out std_logic_vector(7 downto 0)
		);
	end component;
	
	-----------------------------------
	-- Add Decode7Seg component here --
	-----------------------------------
	
begin
	L1: C1 port map(SW(7 downto 0), SW(15 downto 8), F1);
	L2: C2 port map(SW(7 downto 0), SW(15 downto 8), F2);
	L3: C3 port map(SW(7 downto 0), SW(15 downto 8), F3);
	L4: C4 port map(SW(7 downto 0), F4);
	-- Add port mapping of HEX0 --
	-- Add port mapping of HEX1 --
	
	LEDR(7 downto 0) <= F;
end top_map;


