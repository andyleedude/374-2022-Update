library ieee;
use ieee.std_logic_1164.all;

entity mux32to1 is port(
BusMuxinR0: in std_logic_vector (31 downto 0);
BusMuxinR1: in std_logic_vector (31 downto 0);
BusMuxinR2: in std_logic_vector (31 downto 0);
BusMuxinR3: in std_logic_vector (31 downto 0);
BusMuxinR4: in std_logic_vector (31 downto 0);
BusMuxinR5: in std_logic_vector (31 downto 0);
BusMuxinR6: in std_logic_vector (31 downto 0);
BusMuxinR7: in std_logic_vector (31 downto 0);
BusMuxinR8: in std_logic_vector (31 downto 0);
BusMuxinR9: in std_logic_vector (31 downto 0);
BusMuxinR10: in std_logic_vector (31 downto 0);
BusMuxinR11: in std_logic_vector (31 downto 0);
BusMuxinR12: in std_logic_vector (31 downto 0);
BusMuxinR13: in std_logic_vector (31 downto 0);
BusMuxinR14: in std_logic_vector (31 downto 0);
BusMuxinR15: in std_logic_vector (31 downto 0);
BusMuxinHI: in std_logic_vector (31 downto 0);
BusMuxinLO: in std_logic_vector (31 downto 0);
BusMuxinZhigh: in std_logic_vector (31 downto 0);
BusMuxinZlow: in std_logic_vector (31 downto 0);
BusMuxinPC: in std_logic_vector (31 downto 0);
BusMuxinMDR: in std_logic_vector (31 downto 0);
BusMuxinInport: in std_logic_vector (31 downto 0);
C_sign_extended: in std_logic_vector (31 downto 0);
BusMuxin24: in std_logic_vector(31 downto 0);
BusMuxin25: in std_logic_vector(31 downto 0);
BusMuxin26: in std_logic_vector(31 downto 0);
BusMuxin27: in std_logic_vector(31 downto 0);
BusMuxin28: in std_logic_vector(31 downto 0);
BusMuxin29: in std_logic_vector(31 downto 0);
BusMuxin30: in std_logic_vector(31 downto 0);
BusMuxin31: in std_logic_vector(31 downto 0);
Sin : in std_logic_vector (4 downto 0);
BusMuxOut: out std_logic_vector (31 downto 0)
);
end entity mux32to1;

architecture behav of mux32to1 is 
begin 
	process(Sin,BusMuxinR0,BusMuxinR1,BusMuxinR2,BusMuxinR3,BusMuxinR4,
	BusMuxinR5,BusMuxinR6,BusMuxinR7,BusMuxinR8,BusMuxinR9,BusMuxinR10,
	BusMuxinR11,BusMuxinR12,BusMuxinR13,BusMuxinR14,BusMuxinR15,BusMuxinHI,
	BusMuxinLO,BusMuxinZhigh,BusMuxinZlow,BusMuxinPC,BusMuxinMDR, BusMuxinInport, 
	C_sign_extended, BusMuxin24, BusMuxin25,
	BusMuxin26,BusMuxin27,BusMuxin28,BusMuxin29,BusMuxin30,BusMuxin31) is 
	
	begin 
	BusMuxOut <= BusMuxinR0 when (Sin = "00000") 
					else BusMuxinR1 when (Sin = "00001") 
					else BusMuxinR2 when (Sin = "00010") 
					else BusMuxinR3 when (Sin = "00011")
					else BusMuxinR4 when (Sin = "00100") 
					else BusMuxinR5 when (Sin = "00101") 
					else BusMuxinR6 when (Sin = "00110") 
					else BusMuxinR7 when (Sin = "00111") 
					else BusMuxinR8 when (Sin = "01000")
					else BusMuxinR9 when (Sin = "01001") 
					else BusMuxinR10 when(Sin = "01010") 
					else BusMuxinR11 when(Sin = "01011") 
					else BusMuxinR12 when(Sin = "01100") 
					else BusMuxinR13 when(Sin = "01101") 
					else BusMuxinR14 when(Sin = "01110") 
					else BusMuxinR15 when(Sin = "01111") 
					else BusMuxinHI when (Sin = "10000") 
					else BusMuxinLO when (Sin = "10001") 
					else BusMuxinZhighwhen(Sin = "10010") 
					else BusMuxinZlow	when(Sin = "10011") 
					else BusMuxinPC	when(Sin = "10100") 
					else BusMuxinMDR	when(Sin = "10101") 
					else BusMuxinInport	when(Sin = "10110") 
					else C_sign_extended when(Sin = "10111") 
					else BusMuxin24 when (Sin = "11000") 
					else BusMuxin25 when (Sin = "11001") 
					else BusMuxin26 when (Sin = "11010") 
					else BusMuxin27 when (Sin = "11011") 
					else BusMuxin28 when (Sin = "11100") 
					else BusMuxin29 when (Sin = "11101") 
					else BusMuxin30 when (Sin = "11110") 
					else BusMuxin31;
	end process;
end architecture behav;
		