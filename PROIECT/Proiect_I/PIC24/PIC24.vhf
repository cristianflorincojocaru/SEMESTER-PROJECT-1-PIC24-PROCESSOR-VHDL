--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : PIC24.vhf
-- /___/   /\     Timestamp : 01/06/2026 00:48:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family aspartan3 -flat -suppress -w C:/Users/student_dcti/Desktop/PROIECT/Proiect_I/PIC24/PIC24.sch PIC24.vhf
--Design Name: PIC24
--Device: aspartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity PIC24 is
   port ( Clk     : in    std_logic; 
          INW0    : in    std_logic_vector (15 downto 0); 
          INW1    : in    std_logic_vector (15 downto 0); 
          C_Flag  : out   std_logic; 
          N_Flag  : out   std_logic; 
          OUTW0   : out   std_logic_vector (15 downto 0); 
          OV_Flag : out   std_logic; 
          Z_Flag  : out   std_logic);
end PIC24;

architecture BEHAVIORAL of PIC24 is
   signal ALUOP         : std_logic_vector (2 downto 0);
   signal ALU_Out       : std_logic_vector (15 downto 0);
   signal Branch        : std_logic;
   signal CE_CF         : std_logic;
   signal CE_NF         : std_logic;
   signal CE_OVF        : std_logic;
   signal CE_ZF         : std_logic;
   signal Instr         : std_logic_vector (23 downto 0);
   signal MemOut        : std_logic_vector (15 downto 0);
   signal MemWr         : std_logic;
   signal Mem2Reg       : std_logic;
   signal New_PC        : std_logic_vector (5 downto 0);
   signal PC            : std_logic_vector (5 downto 0);
   signal RdData1       : std_logic_vector (15 downto 0);
   signal RdData2       : std_logic_vector (15 downto 0);
   signal RegDest       : std_logic;
   signal RegWr         : std_logic;
   signal WRData        : std_logic_vector (15 downto 0);
   signal WrReg         : std_logic_vector (3 downto 0);
   signal C_Flag_DUMMY  : std_logic;
   signal OV_Flag_DUMMY : std_logic;
   signal Z_Flag_DUMMY  : std_logic;
   signal N_Flag_DUMMY  : std_logic;
   component MUX2V16
      port ( I0  : in    std_logic_vector (15 downto 0); 
             I1  : in    std_logic_vector (15 downto 0); 
             Y   : out   std_logic_vector (15 downto 0); 
             Sel : in    std_logic);
   end component;
   
   component MUX2V5
      port ( I0  : in    std_logic_vector (3 downto 0); 
             I1  : in    std_logic_vector (3 downto 0); 
             Y   : out   std_logic_vector (3 downto 0); 
             Sel : in    std_logic);
   end component;
   
   component ALU
      port ( RdData1 : in    std_logic_vector (15 downto 0); 
             RdData2 : in    std_logic_vector (15 downto 0); 
             Y       : out   std_logic_vector (15 downto 0); 
             ALUOP   : in    std_logic_vector (2 downto 0); 
             LIT5    : in    std_logic_vector (4 downto 0); 
             BIT_4   : in    std_logic_vector (3 downto 0); 
             CE_N    : in    std_logic; 
             Clk     : in    std_logic; 
             CE_C    : in    std_logic; 
             CE_OV   : in    std_logic; 
             CE_Z    : in    std_logic; 
             Zflag   : out   std_logic; 
             Cflag   : out   std_logic; 
             Nflag   : out   std_logic; 
             OVflag  : out   std_logic);
   end component;
   
   component ctrl
      port ( OP             : in    std_logic_vector (4 downto 0); 
             ALUOP          : out   std_logic_vector (2 downto 0); 
             Mem2Reg        : out   std_logic; 
             RegWr          : out   std_logic; 
             RegDest        : out   std_logic; 
             CE_CF          : out   std_logic; 
             CE_ZF          : out   std_logic; 
             Selection_Bits : in    std_logic_vector (1 downto 0); 
             Branch         : out   std_logic; 
             CE_NF          : out   std_logic; 
             CE_OVF         : out   std_logic; 
             MemWr          : out   std_logic);
   end component;
   
   component DataMem
      port ( Clk     : in    std_logic; 
             INW0    : in    std_logic_vector (15 downto 0); 
             INW1    : in    std_logic_vector (15 downto 0); 
             Addr    : in    std_logic_vector (4 downto 0); 
             DataIn  : in    std_logic_vector (15 downto 0); 
             DataOut : out   std_logic_vector (15 downto 0); 
             OUTW0   : out   std_logic_vector (15 downto 0); 
             Wr      : in    std_logic);
   end component;
   
   component PC_Update
      port ( New_PC     : out   std_logic_vector (5 downto 0); 
             Branch     : in    std_logic; 
             Offset     : in    std_logic_vector (4 downto 0); 
             PC         : in    std_logic_vector (5 downto 0); 
             N          : in    std_logic; 
             OVF        : in    std_logic; 
             Z          : in    std_logic; 
             C          : in    std_logic; 
             BranchType : in    std_logic_vector (2 downto 0));
   end component;
   
   component ProgCnt
      port ( Clk    : in    std_logic; 
             New_PC : in    std_logic_vector (5 downto 0); 
             PC     : out   std_logic_vector (5 downto 0));
   end component;
   
   component File_Regs
      port ( Clk     : in    std_logic; 
             WrEn    : in    std_logic; 
             RdReg1  : in    std_logic_vector (3 downto 0); 
             RdReg2  : in    std_logic_vector (3 downto 0); 
             WrReg   : in    std_logic_vector (3 downto 0); 
             WRData  : in    std_logic_vector (15 downto 0); 
             RdData1 : out   std_logic_vector (15 downto 0); 
             RdData2 : out   std_logic_vector (15 downto 0));
   end component;
   
   component ROM32x24
      port ( Addr : in    std_logic_vector (4 downto 0); 
             Data : out   std_logic_vector (23 downto 0));
   end component;
   
begin
   C_Flag <= C_Flag_DUMMY;
   N_Flag <= N_Flag_DUMMY;
   OV_Flag <= OV_Flag_DUMMY;
   Z_Flag <= Z_Flag_DUMMY;
   MUX_ALU : MUX2V16
      port map (I0(15 downto 0)=>MemOut(15 downto 0),
                I1(15 downto 0)=>ALU_Out(15 downto 0),
                Sel=>Mem2Reg,
                Y(15 downto 0)=>WRData(15 downto 0));
   
   MUX_RegDest : MUX2V5
      port map (I0(3 downto 0)=>Instr(3 downto 0),
                I1(3 downto 0)=>Instr(10 downto 7),
                Sel=>RegDest,
                Y(3 downto 0)=>WrReg(3 downto 0));
   
   U_ALU : ALU
      port map (ALUOP(2 downto 0)=>ALUOP(2 downto 0),
                BIT_4(3 downto 0)=>Instr(15 downto 12),
                CE_C=>CE_CF,
                CE_N=>CE_NF,
                CE_OV=>CE_OVF,
                CE_Z=>CE_ZF,
                Clk=>Clk,
                LIT5(4 downto 0)=>Instr(4 downto 0),
                RdData1(15 downto 0)=>RdData1(15 downto 0),
                RdData2(15 downto 0)=>RdData2(15 downto 0),
                Cflag=>C_Flag_DUMMY,
                Nflag=>N_Flag_DUMMY,
                OVflag=>OV_Flag_DUMMY,
                Y(15 downto 0)=>ALU_Out(15 downto 0),
                Zflag=>Z_Flag_DUMMY);
   
   U_Ctrl : ctrl
      port map (OP(4 downto 0)=>Instr(23 downto 19),
                Selection_Bits(1 downto 0)=>Instr(6 downto 5),
                ALUOP(2 downto 0)=>ALUOP(2 downto 0),
                Branch=>Branch,
                CE_CF=>CE_CF,
                CE_NF=>CE_NF,
                CE_OVF=>CE_OVF,
                CE_ZF=>CE_ZF,
                MemWr=>MemWr,
                Mem2Reg=>Mem2Reg,
                RegDest=>RegDest,
                RegWr=>RegWr);
   
   U_DataMem : DataMem
      port map (Addr(4 downto 0)=>Instr(8 downto 4),
                Clk=>Clk,
                DataIn(15 downto 0)=>RdData2(15 downto 0),
                INW0(15 downto 0)=>INW0(15 downto 0),
                INW1(15 downto 0)=>INW1(15 downto 0),
                Wr=>MemWr,
                DataOut(15 downto 0)=>MemOut(15 downto 0),
                OUTW0(15 downto 0)=>OUTW0(15 downto 0));
   
   U_New_PC : PC_Update
      port map (Branch=>Branch,
                BranchType(2 downto 0)=>Instr(18 downto 16),
                C=>C_Flag_DUMMY,
                N=>N_Flag_DUMMY,
                Offset(4 downto 0)=>Instr(4 downto 0),
                OVF=>OV_Flag_DUMMY,
                PC(5 downto 0)=>PC(5 downto 0),
                Z=>Z_Flag_DUMMY,
                New_PC(5 downto 0)=>New_PC(5 downto 0));
   
   U_PC : ProgCnt
      port map (Clk=>Clk,
                New_PC(5 downto 0)=>New_PC(5 downto 0),
                PC(5 downto 0)=>PC(5 downto 0));
   
   U_Regs : File_Regs
      port map (Clk=>Clk,
                RdReg1(3 downto 0)=>Instr(18 downto 15),
                RdReg2(3 downto 0)=>Instr(3 downto 0),
                WRData(15 downto 0)=>WRData(15 downto 0),
                WrEn=>RegWr,
                WrReg(3 downto 0)=>WrReg(3 downto 0),
                RdData1(15 downto 0)=>RdData1(15 downto 0),
                RdData2(15 downto 0)=>RdData2(15 downto 0));
   
   U_ROM : ROM32x24
      port map (Addr(4 downto 0)=>PC(5 downto 1),
                Data(23 downto 0)=>Instr(23 downto 0));
   
end BEHAVIORAL;


