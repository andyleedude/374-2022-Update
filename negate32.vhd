library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity negate32 is
	port(
		input: in std_logic_vector(31 downto 0);
		output : out std_logic_vector(31 downto 0)	
	);
end entity negate32;

architecture logic of negate32 is
begin
output <= std_logic_vector(signed(not input) + 1);
end architecture logic;