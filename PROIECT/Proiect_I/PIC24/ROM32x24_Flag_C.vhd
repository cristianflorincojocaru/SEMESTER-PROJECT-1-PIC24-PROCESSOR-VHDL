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

entity ROM32x24 is
    Port ( Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Data : out  STD_LOGIC_VECTOR (23 downto 0));
end ROM32x24;

architecture Behavioral of ROM32x24 is
-- The following code must appear before the "begin" keyword in the architecture
-- body.
    type tROM is array (0 to 31) of std_logic_vector (23 downto 0);
	 
    constant ROM : tROM :=(   -- 24-bit hex valori 
					  x"808101",  -- MOV 0x1020, W1
					  x"808112",  -- MOV 0x1022, W2
					  x"408182",  -- ADD W1, W2, W3
					  x"608282",  -- AND W1, W2, W5
					  x"418182",  -- ADD W3, W2, W3
					  x"518202",  -- SUB W3, W2, W4
					  x"708302",  -- IOR W1, W2, W6
					  x"520202",  -- SUB W4, W2, W4
					  x"888121",  -- MOV W1, 0x1024
					  x"888122",  -- MOV W2, 0x1024
					  x"888123",  -- MOV W3, 0x1024
					  x"888124",  -- MOV W4, 0x1024
					  x"888125",  -- MOV W5, 0x1024
					  x"888126",  -- MOV W6, 0x1024
					  x"37FFF1",  -- BRA 0x2B8
					  x"000000",
					  x"000000",
					  x"000000",
					  x"000000",
					  x"000000",
					  x"000000",
					  x"004000",
					  x"004000",
					  x"008000",
					  x"010000",
					  x"020000",
					  x"040000",
					  x"080000",
					  x"100000",
					  x"200000",
					  x"400000",
					  x"800000");  
begin
	
	Data <= ROM(conv_integer(Addr));

end Behavioral;

