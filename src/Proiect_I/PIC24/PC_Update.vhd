----------------------------------------------------------------------------------
-- Company: 
-- Engineer: COJOCARU FLORIN - CRISTIAN
-- 
-- Create Date:    19:13:51 03/20/2025 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: PROIECT SEMESTRUL 1 AN 3
-- Target Devices: 
-- Tool versions: 
-- Description: 
--   
-- Dependencies: 
--   IEEE.STD_LOGIC_1164
--   IEEE.STD_LOGIC_ARITH
--   IEEE.STD_LOGIC_UNSIGNED
--   IEEE.NUMERIC_STD
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC_Update is
    Port ( N : in STD_LOGIC;
			  OVF: in STD_LOGIC;
			  Z: in STD_LOGIC;
           C: in STD_LOGIC;
			  Offset : in STD_LOGIC_VECTOR (4 downto 0); --ofset pe 5 biti
			  Branch : in STD_LOGIC;
			  BranchType : in STD_LOGIC_VECTOR (2 downto 0);
			  PC : in  STD_LOGIC_VECTOR (5 downto 0); --PC pe 6 biti
           New_PC : out  STD_LOGIC_VECTOR (5 downto 0));
end PC_Update;

architecture Behavioral of PC_Update is
	signal PC_p2 : std_logic_vector(5 downto 0);
	signal depl   : std_logic_vector(5 downto 0);	
begin

	PC_p2 <= PC + 2;
	
	New_PC <= PC_p2 + depl when (Branch = '1' and BranchType = "111") or 
				                   (Branch = '1' and BranchType = "000" and OVF = '1') or
										 (Branch = '1' and BranchType = "001" and C='1') or
										 (Branch = '1' and BranchType = "011" and N='1') or
										 (Branch = '1' and BranchType = "010" and Z='1')
	else PC_p2;
				 
	depl(0)     		  <= '0';                -- shift stânga cu 1 bit
	depl(5 downto 1)    <= Offset;              -- bitii efectivi ai offsetului
	--depl(31 downto 18)   <= (others => Offset(15)); -- extinderea semnului
	
-- deplasamentul: folosim direct offsetul, nu shift?m
-- pentru ca instructiunea ocupa 1 adresa
 --depl <= Offset;

 -- selectie branch
 --New_PC <= PC_p1 + depl when (Branch = '1' and Zero = '1') else PC_p1;
	 
end Behavioral;

