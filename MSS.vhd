library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity MSS is
	port(
		clk,start,resetn: in std_logic;
		comp2,comp3,comp4,comp5,comp6,comp7: in std_logic;
		done,reg1,reg2,reg3,reg4,enc2: out std_logic);
end MSS;

architecture solve of MSS is
   type estado is (a,c,d,e,f,g,h);
	signal y_presente,y_siguiente: estado;
	
	begin
	process(resetn,clk)
		begin
			if resetn='0' then y_presente <=a;
			elsif (clk 'event and clk='1') then y_presente <= y_siguiente;
			end if;	
	end process;
	
	process(y_presente,start,comp2)
	   begin
		case y_presente is
		when a =>
		   if start='1' then y_siguiente <= c;else y_siguiente <= a;end if;
		when c =>
		   if comp2='0' then y_siguiente <= d;else y_siguiente <= a;end if;
		when d =>
		   y_siguiente <= e;
		when e => 
		   y_siguiente <= f;
		when f => 
		   y_siguiente <= g;
		when g => 
		   y_siguiente <= h;
		when h => 
			y_siguiente <= c;
		end case;
	end process;
	
	process(y_presente,comp2,comp3,comp4,comp5,comp6,comp7)
	   begin 
		done<='0';reg1<='0';reg2<='0';reg3<='0';reg4<='0';enc2<='0';
		if (comp2='1' and y_presente=c) then done<='1';end if;
		if (comp7='1' and y_presente=d) then reg2<='1';reg4<='1';enc2<='1';end if;
		if (comp7='0' and y_presente=d) then enc2<='1';end if;
		if (comp3='1' and y_presente=e) then reg1<='1';end if;
		if (comp5='1' and y_presente=f) then reg3<='1';end if;
		if (comp4='1' and y_presente=g) then reg2<='1';end if;
		if (comp6='1' and y_presente=h) then reg4<='1';end if;
	end process;
end solve;