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
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port (
        RdData1 : in  STD_LOGIC_VECTOR(15 downto 0);  -- baza
        RdData2 : in  STD_LOGIC_VECTOR(15 downto 0);  -- sursa
        ALUOP   : in  STD_LOGIC_VECTOR(2 downto 0);   -- cod operatie ALU
        LIT5    : in  STD_LOGIC_VECTOR(4 downto 0);   -- literal pe 5 biti
        BIT_4   : in  STD_LOGIC_VECTOR(3 downto 0);   -- index bit pentru instructiuni de test
		  
        Clk     : in  std_logic;                      -- semnal de ceas
        CE_N    : in  std_logic;                      --  flag N (Negative)
        CE_Z    : in  std_logic;                      --  flag Z (Zero)
        CE_C    : in  std_logic;                      --  flag C (Carry)
        CE_OV   : in  std_logic;                      --  flag OV (Overflow)

        Y       : out STD_LOGIC_VECTOR(15 downto 0);  -- rezultat ALU
        Nflag   : out STD_LOGIC;                      -- Flag Negative
        Zflag   : out STD_LOGIC;                      -- Flag Zero
        Cflag   : out STD_LOGIC;                      -- Flag Carry
        OVflag  : out STD_LOGIC                       -- Flag Overflow
    );
end ALU;

architecture Behavioral of ALU is
	 
    -- rezultate extinse pe 17 biti pentru detectarea carry-ului
    signal ADD17 : STD_LOGIC_VECTOR(16 downto 0);     -- rezultat adunare
    signal SUB17 : STD_LOGIC_VECTOR(16 downto 0);     -- rezultat scadere
    signal FF1R  : STD_LOGIC_VECTOR(16 downto 0);
	 
    -- semnale interne pentru flag-uri
    signal ZFLAG1, OVFLAG1, sN, C_FLAG : STD_LOGIC;
	 
    -- iesire pe 17 biti
    signal Ys : STD_LOGIC_VECTOR(16 downto 0);

    -- bit extras din RdData2 pentru instructiunea BTST
    signal TESTED_BIT : STD_LOGIC;

begin
	
    FF1R <= "00000000000000001" when RdData2(0) = '1' else  -- bit 0
            "00000000000000010" when RdData2(1) = '1' else  -- bit 1
            "00000000000000011" when RdData2(2) = '1' else  -- bit 2
            "00000000000000100" when RdData2(3) = '1' else  -- bit 3
            "00000000000000101" when RdData2(4) = '1' else  -- bit 4
            "00000000000000110" when RdData2(5) = '1' else  -- bit 5
            "00000000000000111" when RdData2(6) = '1' else  -- bit 6
            "00000000000001000" when RdData2(7) = '1' else  -- bit 7
            "00000000000001001" when RdData2(8) = '1' else  -- bit 8
            "00000000000001010" when RdData2(9) = '1' else  -- bit 9
            "00000000000001011" when RdData2(10) = '1' else -- bit 10
            "00000000000001100" when RdData2(11) = '1' else -- bit 11
            "00000000000001101" when RdData2(12) = '1' else -- bit 12
            "00000000000001110" when RdData2(13) = '1' else -- bit 13
            "00000000000001111" when RdData2(14) = '1' else -- bit 14
            "00000000000010000" when RdData2(15) = '1' else -- bit 15
            "10000000000000000"; -- No '1' found
				
    TESTED_BIT <= RdData2(conv_integer(BIT_4)); -- extragem bitul verificat din RdData2 folosind BIT_4

    -- operatii aritmetice pe 17 biti (pentru carry)
    ADD17 <= ('0' & RdData1) + ('0' & RdData2);  -- add
    SUB17 <= ('0' & RdData1) - ('1' & RdData2);  -- sub
    

    with ALUOP select
        Ys <= ADD17 when "000",  -- add
             SUB17 when "001",  -- sub
             ('0' & RdData1) and ('0' & RdData2) when "010", -- AND
             ('0' & RdData1) or ('0' & RdData2) when "011",  -- OR

             FF1R when "100",  --FF1R Ws,Wnd
	          ('0' & RdData1) or ("000000000000" & LIT5) when "101",  --IOR Wb,#lit5,Wd

	          TESTED_BIT & RdData2 when "110",  --BTST.C Ws,#bit4
	          ('1' & "00000000") & RdData2(7 downto 0) when "111", --ZE Ws,Wnd
             (others => '0') when others;
	

    -- iesirea finala ALU (fara bitul de carry)
    Y <= Ys(15 downto 0);


    -- Flag Carry = bitul cel mai semnificativ al rezultatului pe 17 biti
    C_FLAG <= Ys(16);


    -- Flag Zero: activ daca rezultatul este 0
    ZFLAG1 <= '1' when (Ys(15 downto 0) = x"0000") else '0';


    OVFLAG1 <= '1' when
                  (RdData1(15) = RdData2(15) and Ys(15) = not RdData2(15) and ALUOP = "000") or
                  (not RdData1(15) = RdData2(15) and Ys(15) = RdData2(15) and ALUOP = "001")
               else '0';


    -- actualizare sincrona a flag-urilor (cu enable individual)
    Zflag  <= ZFLAG1  when rising_edge(Clk) and CE_Z  = '1';
    OVflag <= OVFLAG1 when rising_edge(Clk) and CE_OV = '1';
    Cflag  <= C_FLAG  when rising_edge(Clk) and CE_C  = '1';
    Nflag  <= Ys(15)  when rising_edge(Clk) and CE_N  = '1';
		
end Behavioral;
