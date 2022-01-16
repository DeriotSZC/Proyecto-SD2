library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity AddN is
	port(
		X,Y: in std_logic_vector(8 downto 0);
		S: out std_logic_vector(8 downto 0));
end AddN;

architecture solve of AddN is
   signal z: std_logic_vector(8 downto 0); 
	begin
	z<= not (x(8 downto 0));
		s<=z+y;
end solve;