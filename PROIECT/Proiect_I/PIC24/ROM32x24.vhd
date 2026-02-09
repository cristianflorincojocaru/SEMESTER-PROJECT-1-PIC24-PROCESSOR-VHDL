----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:54 03/19/2025 
-- Design Name: 
-- Module Name:    ROM32x24 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
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
    type tROM is array (0 to 23) of std_logic_vector (23 downto 0);
	 
    constant ROM : tROM :=(
					  x"000001",   -- 24-bit hex valori 
					  x"000002",
					  x"000004",
					  x"000008",
					  x"000010",
					  x"000020",
					  x"000040",
					  x"000080",
					  x"000100",
					  x"000200",
					  x"000400",
					  x"000800",
					  x"001000",
					  x"002000",
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

