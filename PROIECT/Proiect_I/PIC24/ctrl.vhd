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

entity ctrl is
    Port ( OP : in  STD_LOGIC_VECTOR (4 downto 0);
			  Selection_Bits : in STD_LOGIC_VECTOR (1 downto 0);
           ALUOP : out  STD_LOGIC_VECTOR (2 downto 0);
           MemWr : out  STD_LOGIC;
           Mem2Reg : out  STD_LOGIC;
           RegWr : out  STD_LOGIC;
           RegDest : out  STD_LOGIC;
			  CE_NF: out STD_LOGIC;
			  CE_OVF: out STD_LOGIC;
			  CE_ZF: out STD_LOGIC;
			  CE_CF: out STD_LOGIC;
			  Branch : out STD_LOGIC);
end ctrl;

architecture Behavioral of ctrl is

begin

	 -- Asignare pentru fiecare semnal de control
    RegDest  <= '0' when OP = "10000" else '1';  -- Instructiuni MOV f,Wnd are Dest pe bitii 3-0
    RegWr    <= '0' when OP = "00110" or OP = "10001" else '1';  -- Nu se scrie în registru cand avem MOV Wns,f si BRA
    MemWr    <= '1' when OP = "10001" else '0';  -- Doar MOV Wns,f scrie în memorie
    Mem2Reg  <= '0' when OP = "10000" else '1';  -- Doar MOV f,Wnd preia date din memorie
    
	 Branch	 <= '1' when OP = "00110" else '0';
	 --MemWr    <= '0' when OP = "000100";
    --RegWr    <= '0' when OP = "0001000";
	 
	 -- Selectarea operatiei ALU
	 ALUOP <= "000" when OP = "01000" else --ADD Wb, Ws, Wd
				 "001" when OP = "01010" else --SUB Wb, Ws, Wd
				 "010" when OP = "01100" else --AND Wb, Ws, Wd
				 "011" when OP = "01110" and Selection_Bits = "00" else --IOR Wb, Ws, Wd
				 "100" when OP = "11001" else --FF1R Ws,Wnd
				 "101" when OP = "01110" and Selection_Bits = "11" else --IOR Wb,#lit5,Wd
				 "110" when OP = "10100" else --BTST.C Ws,#bit4
				 "111" when OP = "11111" else --ZE Ws,Wnd
				 "000"; -- Nu ar tr sa fie cazul

	-- Selectarea flag-urilor
	CE_NF <= '1' when  OP = "01000" or --ADD Wb, Ws, Wd
							 OP = "01010" or --SUB Wb, Ws, Wd
							 OP = "01100" or --AND Wb, Ws, Wd
							 (OP = "01110" and Selection_Bits = "00") or --IOR Wb, Ws, Wd

							 (OP = "01110" and Selection_Bits = "11") or --IOR Wb,#lit5,Wd
							 OP = "11111"  --ZE Ws,Wnd
							 else '0';
	 
	 CE_OVF<= '1' when OP= "01000" or --ADD Wb, Ws, Wd
							 OP = "01010" --SUB Wb, Ws, Wd
							 else '0';
	
	 CE_ZF<= '1' when OP = "01000" or --ADD Wb, Ws, Wd
							OP = "01010" or --SUB Wb, Ws, Wd
							OP = "01100" or --AND Wb, Ws, Wd
							(OP = "01110" and Selection_Bits = "00") or --IOR Wb, Ws, Wd

							(OP = "01110" and Selection_Bits = "11") or --IOR Wb,#lit5,Wd
							OP = "11111" --ZE Ws,Wnd
							else '0';
	
	 CE_CF<= '1' when OP = "01000" or --ADD Wb, Ws, Wd
							OP = "01010" or --SUB Wb, Ws, Wd
							OP = "11001"or --FF1R Ws,Wnd
							OP = "10100" or --BTST.C Ws,#bit4
							OP = "11111"   --ZE Ws,Wnd
							else '0';
	
end Behavioral;

