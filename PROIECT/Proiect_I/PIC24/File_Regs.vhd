-----------------------------------------------------------------------------------
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

entity File_Regs is
    Port ( Clk : in  STD_LOGIC;
           WrEn : in  STD_LOGIC;
           RdReg1 : in  STD_LOGIC_VECTOR (3 downto 0);
           RdReg2 : in  STD_LOGIC_VECTOR (3 downto 0);
           WrReg : in  STD_LOGIC_VECTOR (3 downto 0);
           WRData : in  STD_LOGIC_VECTOR (15 downto 0);
           RdData1 : out  STD_LOGIC_VECTOR (15 downto 0);
           RdData2 : out  STD_LOGIC_VECTOR (15 downto 0));
end File_Regs;

architecture Behavioral of File_Regs is

    -- Definim tipul de date pentru blocul de registre
    type tRegs is array (0 to 15) of std_logic_vector(15 downto 0);

    -- Declaram semnalul pentru cele 16 de registre de 16 de biti
    --signal s32Regs32 : tRegs;
	 signal s32Regs32 : tRegs := (others => (others => '0'));

begin

    -- Scrierea în registru (sincrona)
    process(Clk)
    begin
        if rising_edge(Clk) then
            if WrEn = '1'  then
                s32Regs32(conv_integer(WrReg)) <= WrData;
            end if;
        end if;
    end process;

    -- Citirea registrelor (combinational)
	 RdData1 <= s32Regs32(conv_integer(RdReg1));
	 RdData2 <= s32Regs32(conv_integer(RdReg2));
    
	 
end Behavioral;

