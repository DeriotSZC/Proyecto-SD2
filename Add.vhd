library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Add is
	port(
		X,Y: in std_logic_vector(8 downto 0);
		S: out std_logic_vector(8 downto 0));
end Add;

architecture solve of Add is
	begin
		s<=x+y;
end solve;