library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Cnt is
	port(
		Clk,resetn,en: in std_logic;
		q: buffer std_logic_vector(7 downto 0));
end Cnt;

architecture solve of Cnt is
	begin
	process(resetn,clk)
		begin
			if resetn='0' then
				q<=(others => '0');
			elsif clk'event and clk='1' then
				if en='1' then q<=q+1;
				end if;
			end if;
	end process;
end solve;