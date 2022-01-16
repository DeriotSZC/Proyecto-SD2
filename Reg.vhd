library ieee;
use ieee.std_logic_1164.all;

entity Reg is
	port(
		Clk,resetn,en: in std_logic;
		d: in std_logic_vector(8 downto 0);
		q: out std_logic_vector(8 downto 0));
end Reg;

architecture solve of Reg is
	begin
	process(resetn,clk)
		begin
			if resetn='0' then
				q<=(others => '0');
			elsif clk'event and clk='1' then
				if en='1' then
					q<=d;
				end if;
			end if;
	end process;
end solve;