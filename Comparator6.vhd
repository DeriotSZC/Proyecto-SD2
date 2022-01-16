library ieee;
use ieee.std_logic_1164.all;

Entity Comparator6 is
	Port(
		A: in std_logic_vector(7 downto 0);
		B: in std_logic_vector(7 downto 0);
		AmenorB, AmayorB, AigualB: out std_logic);
end Comparator6;


Architecture solve of Comparator6 is
	Begin
		AmenorB<='1' when A<B else '0';
		AmayorB<='1' when A>B else '0';
		AigualB<='1' when A=B else '0';
end solve;