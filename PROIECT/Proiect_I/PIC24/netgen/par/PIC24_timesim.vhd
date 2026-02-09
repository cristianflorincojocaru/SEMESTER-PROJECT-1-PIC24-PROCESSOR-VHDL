--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: PIC24_timesim.vhd
-- /___/   /\     Timestamp: Tue Jan 06 02:59:33 2026
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf PIC24.pcf -rpw 100 -tpw 0 -ar Structure -tm PIC24 -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim PIC24.ncd PIC24_timesim.vhd 
-- Device	: xa3s50vqg100-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: PIC24.ncd
-- Output file	: C:\Users\student_dcti\Desktop\PROIECT\Proiect_I\PIC24\netgen\par\PIC24_timesim.vhd
-- # of Entities	: 1
-- Design Name	: PIC24
-- Xilinx	: C:\Xilinx92i
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity PIC24 is
  port (
    Clk : in STD_LOGIC := 'X'; 
    OV_Flag : out STD_LOGIC; 
    Z_Flag : out STD_LOGIC; 
    C_Flag : out STD_LOGIC; 
    N_Flag : out STD_LOGIC; 
    OUTW0 : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    INW0 : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    INW1 : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end PIC24;

architecture Structure of PIC24 is
  signal ALUOP_0_Q : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal ALUOP_2_0 : STD_LOGIC; 
  signal MUX_ALU_Y_14_map11_0 : STD_LOGIC; 
  signal N1417_0 : STD_LOGIC; 
  signal RdData2_15_0 : STD_LOGIC; 
  signal MUX_ALU_Y_15_map11_0 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_5_f54 : STD_LOGIC; 
  signal RdData1_15_0 : STD_LOGIC; 
  signal CE_NF : STD_LOGIC; 
  signal Clk_BUFGP : STD_LOGIC; 
  signal U_ALU_ALUOP_2_6_f5 : STD_LOGIC; 
  signal U_ALU_Cflag_2 : STD_LOGIC; 
  signal U_ALU_N38_0 : STD_LOGIC; 
  signal RdData2_5_0 : STD_LOGIC; 
  signal Instr_8_0 : STD_LOGIC; 
  signal U_DataMem_MemData_5_0 : STD_LOGIC; 
  signal MUX_ALU_Y_5_map7_0 : STD_LOGIC; 
  signal U_ALU_N40 : STD_LOGIC; 
  signal RdData2_6_0 : STD_LOGIC; 
  signal U_DataMem_MemData_6_0 : STD_LOGIC; 
  signal MUX_ALU_Y_6_map7_0 : STD_LOGIC; 
  signal U_ALU_N42 : STD_LOGIC; 
  signal RdData2_7_0 : STD_LOGIC; 
  signal U_DataMem_MemData_7_0 : STD_LOGIC; 
  signal MUX_ALU_Y_7_map7_0 : STD_LOGIC; 
  signal N1433 : STD_LOGIC; 
  signal U_DataMem_MemData_8_0 : STD_LOGIC; 
  signal MUX_ALU_Y_8_map7_0 : STD_LOGIC; 
  signal N1431 : STD_LOGIC; 
  signal U_DataMem_MemData_9_0 : STD_LOGIC; 
  signal MUX_ALU_Y_9_map7_0 : STD_LOGIC; 
  signal RdData2_13_0 : STD_LOGIC; 
  signal RdData2_12_0 : STD_LOGIC; 
  signal RdData2_11_0 : STD_LOGIC; 
  signal RdData2_14_0 : STD_LOGIC; 
  signal N1460 : STD_LOGIC; 
  signal N23_0 : STD_LOGIC; 
  signal U_ROM_Mmux_Data612_O : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal U_Ctrl_RegWr_cmp_eq000011_O : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal N1_0 : STD_LOGIC; 
  signal Instr_5_0 : STD_LOGIC; 
  signal MUX_RegDest_Y_0_76_O : STD_LOGIC; 
  signal U_ROM_Mmux_Data21_map27_0 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal U_ROM_Mmux_Data2127_O : STD_LOGIC; 
  signal MUX_RegDest_Y_0_map11_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal Instr_7_0 : STD_LOGIC; 
  signal N1489 : STD_LOGIC; 
  signal Instr_10_0 : STD_LOGIC; 
  signal N1403_0 : STD_LOGIC; 
  signal U_ALU_N192 : STD_LOGIC; 
  signal U_ALU_N92_0 : STD_LOGIC; 
  signal RdData2_10_0 : STD_LOGIC; 
  signal RdData2_8_0 : STD_LOGIC; 
  signal RdData2_9_0 : STD_LOGIC; 
  signal U_ALU_FF1R_4_0 : STD_LOGIC; 
  signal N305 : STD_LOGIC; 
  signal Instr_4_0 : STD_LOGIC; 
  signal N1413_0 : STD_LOGIC; 
  signal U_PC_PC_2_1_3 : STD_LOGIC; 
  signal U_PC_PC_1_2_4 : STD_LOGIC; 
  signal U_PC_PC_5_2_5 : STD_LOGIC; 
  signal N1394_0 : STD_LOGIC; 
  signal Instr_15_0 : STD_LOGIC; 
  signal U_DataMem_MemData_12_0 : STD_LOGIC; 
  signal MUX_ALU_Y_12_18_O : STD_LOGIC; 
  signal INW1_12_IBUF_6 : STD_LOGIC; 
  signal INW0_12_IBUF_7 : STD_LOGIC; 
  signal MUX_ALU_Y_12_map11_0 : STD_LOGIC; 
  signal U_DataMem_MemData_13_0 : STD_LOGIC; 
  signal MUX_ALU_Y_13_18_O : STD_LOGIC; 
  signal INW1_13_IBUF_8 : STD_LOGIC; 
  signal INW0_13_IBUF_9 : STD_LOGIC; 
  signal MUX_ALU_Y_13_map11_0 : STD_LOGIC; 
  signal U_ALU_ZFLAG1_cmp_eq000076_SW0_SW0_SW0_SW1_O : STD_LOGIC; 
  signal ALU_Out_0_Q : STD_LOGIC; 
  signal N1444 : STD_LOGIC; 
  signal N14111_0 : STD_LOGIC; 
  signal U_DataMem_MemData_14_0 : STD_LOGIC; 
  signal MUX_ALU_Y_14_18_O : STD_LOGIC; 
  signal INW1_14_IBUF_10 : STD_LOGIC; 
  signal INW0_14_IBUF_11 : STD_LOGIC; 
  signal U_DataMem_MemData_15_0 : STD_LOGIC; 
  signal MUX_ALU_Y_15_18_O : STD_LOGIC; 
  signal INW1_15_IBUF_12 : STD_LOGIC; 
  signal INW0_15_IBUF_13 : STD_LOGIC; 
  signal Instr_0_Q : STD_LOGIC; 
  signal U_ALU_FF1R_0_145_SW1_F_O : STD_LOGIC; 
  signal RdData1_0_0 : STD_LOGIC; 
  signal RdData2_1_0 : STD_LOGIC; 
  signal RdData2_0_0 : STD_LOGIC; 
  signal N1436_0 : STD_LOGIC; 
  signal RdData2_2_0 : STD_LOGIC; 
  signal U_ALU_FF1R_2_map2 : STD_LOGIC; 
  signal RdData2_3_0 : STD_LOGIC; 
  signal RdData2_4_0 : STD_LOGIC; 
  signal MUX_ALU_Y_0_33_O : STD_LOGIC; 
  signal U_DataMem_MemData_0_0 : STD_LOGIC; 
  signal MUX_ALU_Y_0_map7_0 : STD_LOGIC; 
  signal WRData_0_0 : STD_LOGIC; 
  signal MUX_ALU_Y_1_33_O : STD_LOGIC; 
  signal ALU_Out_1_Q : STD_LOGIC; 
  signal U_DataMem_MemData_1_0 : STD_LOGIC; 
  signal MUX_ALU_Y_1_map7_0 : STD_LOGIC; 
  signal WRData_1_0 : STD_LOGIC; 
  signal ALU_Out_8_0 : STD_LOGIC; 
  signal ALU_Out_9_0 : STD_LOGIC; 
  signal U_ALU_FF1R_0_51_O : STD_LOGIC; 
  signal N1400_0 : STD_LOGIC; 
  signal U_ALU_FF1R_0_map2_0 : STD_LOGIC; 
  signal N1401 : STD_LOGIC; 
  signal U_ALU_FF1R_0_map16_0 : STD_LOGIC; 
  signal MUX_ALU_Y_2_33_O : STD_LOGIC; 
  signal ALU_Out_2_Q : STD_LOGIC; 
  signal U_DataMem_MemData_2_0 : STD_LOGIC; 
  signal MUX_ALU_Y_2_map7_0 : STD_LOGIC; 
  signal WRData_2_0 : STD_LOGIC; 
  signal U_ALU_FF1R_2_30_O : STD_LOGIC; 
  signal U_ALU_FF1R_2_map5_0 : STD_LOGIC; 
  signal U_ALU_FF1R_2_0 : STD_LOGIC; 
  signal U_ALU_FF1R_1_map0_0 : STD_LOGIC; 
  signal U_ALU_FF1R_1_map16_0 : STD_LOGIC; 
  signal U_ALU_FF1R_1_33_O : STD_LOGIC; 
  signal U_ALU_FF1R_1_map11_0 : STD_LOGIC; 
  signal U_ALU_FF1R_1_map2_0 : STD_LOGIC; 
  signal U_ALU_FF1R_1_map1_0 : STD_LOGIC; 
  signal U_ALU_FF1R_1_map7_0 : STD_LOGIC; 
  signal U_ALU_FF1R_1_0_14 : STD_LOGIC; 
  signal MUX_ALU_Y_3_33_O : STD_LOGIC; 
  signal ALU_Out_3_Q : STD_LOGIC; 
  signal U_DataMem_MemData_3_0 : STD_LOGIC; 
  signal MUX_ALU_Y_3_map7_0 : STD_LOGIC; 
  signal WRData_3_0 : STD_LOGIC; 
  signal U_ALU_FF1R_3_9_O : STD_LOGIC; 
  signal U_ALU_FF1R_3_map2_0 : STD_LOGIC; 
  signal U_ALU_FF1R_3_0 : STD_LOGIC; 
  signal MUX_ALU_Y_4_33_O : STD_LOGIC; 
  signal ALU_Out_4_Q : STD_LOGIC; 
  signal U_DataMem_MemData_4_0 : STD_LOGIC; 
  signal MUX_ALU_Y_4_map7_0 : STD_LOGIC; 
  signal WRData_4_0 : STD_LOGIC; 
  signal ALU_Out_15_0 : STD_LOGIC; 
  signal N1421_0 : STD_LOGIC; 
  signal U_ALU_ZFLAG1_cmp_eq000029_O : STD_LOGIC; 
  signal ALU_Out_10_0 : STD_LOGIC; 
  signal ALU_Out_11_0 : STD_LOGIC; 
  signal U_ALU_ZFLAG1_cmp_eq0000_map6_0 : STD_LOGIC; 
  signal U_ALU_Zflag_15 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_7_O : STD_LOGIC; 
  signal ALU_Out_6_0 : STD_LOGIC; 
  signal ALU_Out_7_0 : STD_LOGIC; 
  signal U_ROM_Mmux_Data8111_O : STD_LOGIC; 
  signal N1427 : STD_LOGIC; 
  signal N1429 : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000 : STD_LOGIC; 
  signal U_New_PC_PC_p2_1_0 : STD_LOGIC; 
  signal New_PC_1_0 : STD_LOGIC; 
  signal U_PC_PC_1_1_16 : STD_LOGIC; 
  signal U_New_PC_PC_p2_3_0 : STD_LOGIC; 
  signal New_PC_3_0 : STD_LOGIC; 
  signal U_PC_PC_3_1_17 : STD_LOGIC; 
  signal U_New_PC_PC_p2_4_0 : STD_LOGIC; 
  signal New_PC_4_0 : STD_LOGIC; 
  signal U_PC_PC_4_1_18 : STD_LOGIC; 
  signal U_New_PC_PC_p2_5_0 : STD_LOGIC; 
  signal New_PC_5_0 : STD_LOGIC; 
  signal U_PC_PC_5_1_19 : STD_LOGIC; 
  signal N558_0 : STD_LOGIC; 
  signal U_ALU_Nflag_20 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N75_0 : STD_LOGIC; 
  signal U_DataMem_and0000_0 : STD_LOGIC; 
  signal RegWr : STD_LOGIC; 
  signal Instr_1_Q : STD_LOGIC; 
  signal Instr_2_Q : STD_LOGIC; 
  signal Instr_3_Q : STD_LOGIC; 
  signal New_PC_2_0 : STD_LOGIC; 
  signal U_PC_PC_2_2_21 : STD_LOGIC; 
  signal U_PC_PC_3_2_22 : STD_LOGIC; 
  signal U_PC_PC_4_2_23 : STD_LOGIC; 
  signal N1272_0 : STD_LOGIC; 
  signal Instr_16_Q : STD_LOGIC; 
  signal Instr_17_Q : STD_LOGIC; 
  signal Instr_18_Q : STD_LOGIC; 
  signal RdData1_4_0 : STD_LOGIC; 
  signal RdData1_5_0 : STD_LOGIC; 
  signal RdData1_14_0 : STD_LOGIC; 
  signal RdData1_6_0 : STD_LOGIC; 
  signal RdData1_7_0 : STD_LOGIC; 
  signal RdData1_8_0 : STD_LOGIC; 
  signal RdData1_9_0 : STD_LOGIC; 
  signal RdData1_1_0 : STD_LOGIC; 
  signal RdData1_10_0 : STD_LOGIC; 
  signal RdData1_2_0 : STD_LOGIC; 
  signal RdData1_11_0 : STD_LOGIC; 
  signal RdData1_3_0 : STD_LOGIC; 
  signal RdData1_12_0 : STD_LOGIC; 
  signal RdData1_13_0 : STD_LOGIC; 
  signal N1425_0 : STD_LOGIC; 
  signal N1423_0 : STD_LOGIC; 
  signal U_DataMem_MemData_11_0 : STD_LOGIC; 
  signal U_DataMem_MemData_10_0 : STD_LOGIC; 
  signal MemWr : STD_LOGIC; 
  signal U_DataMem_OUTW0_and0000_0 : STD_LOGIC; 
  signal N1442_0 : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000_map21 : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000_map22_0 : STD_LOGIC; 
  signal N1441_0 : STD_LOGIC; 
  signal U_New_PC_PC_p2_2_0 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000_map2 : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000_map10 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N1271_0 : STD_LOGIC; 
  signal INW1_0_IBUF_24 : STD_LOGIC; 
  signal INW0_0_IBUF_25 : STD_LOGIC; 
  signal INW1_10_IBUF_26 : STD_LOGIC; 
  signal INW0_10_IBUF_27 : STD_LOGIC; 
  signal MUX_ALU_Y_10_map7_0 : STD_LOGIC; 
  signal INW1_9_IBUF_28 : STD_LOGIC; 
  signal INW0_9_IBUF_29 : STD_LOGIC; 
  signal INW1_11_IBUF_30 : STD_LOGIC; 
  signal INW0_11_IBUF_31 : STD_LOGIC; 
  signal MUX_ALU_Y_11_map7_0 : STD_LOGIC; 
  signal N1435_0 : STD_LOGIC; 
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal INW1_8_IBUF_32 : STD_LOGIC; 
  signal INW0_8_IBUF_33 : STD_LOGIC; 
  signal INW1_1_IBUF_34 : STD_LOGIC; 
  signal INW0_1_IBUF_35 : STD_LOGIC; 
  signal INW1_7_IBUF_36 : STD_LOGIC; 
  signal INW0_7_IBUF_37 : STD_LOGIC; 
  signal INW1_2_IBUF_38 : STD_LOGIC; 
  signal INW0_2_IBUF_39 : STD_LOGIC; 
  signal INW1_6_IBUF_40 : STD_LOGIC; 
  signal INW0_6_IBUF_41 : STD_LOGIC; 
  signal INW1_3_IBUF_42 : STD_LOGIC; 
  signal INW0_3_IBUF_43 : STD_LOGIC; 
  signal INW1_5_IBUF_44 : STD_LOGIC; 
  signal INW0_5_IBUF_45 : STD_LOGIC; 
  signal INW1_4_IBUF_46 : STD_LOGIC; 
  signal INW0_4_IBUF_47 : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_3_f5 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_4_f5 : STD_LOGIC; 
  signal U_ALU_Mmux_Ys_3_f5 : STD_LOGIC; 
  signal U_ALU_Mmux_Ys_4_f5 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_3_f51 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_4_f51 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_3_f52 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_4_f52 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_3_f53 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_4_f53 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_12_f5 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_13_f5 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_11_f6 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_13_f51 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_14_f5 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_12_f6 : STD_LOGIC; 
  signal MUX_ALU_Y_3_33_O_pack_1 : STD_LOGIC; 
  signal U_ALU_FF1R_3_9_O_pack_1 : STD_LOGIC; 
  signal MUX_ALU_Y_4_33_O_pack_1 : STD_LOGIC; 
  signal U_ALU_Zflag_DXMUX_48 : STD_LOGIC; 
  signal U_ALU_ZFLAG1 : STD_LOGIC; 
  signal U_ALU_ZFLAG1_cmp_eq000029_O_pack_1 : STD_LOGIC; 
  signal U_ALU_Zflag_CLKINV_49 : STD_LOGIC; 
  signal U_ALU_Zflag_CEINV_50 : STD_LOGIC; 
  signal N1421 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_7_O_pack_1 : STD_LOGIC; 
  signal ALUOP_2_Q : STD_LOGIC; 
  signal U_ROM_Mmux_Data8111_O_pack_1 : STD_LOGIC; 
  signal ALU_Out_11_Q : STD_LOGIC; 
  signal N1427_pack_1 : STD_LOGIC; 
  signal ALU_Out_6_Q : STD_LOGIC; 
  signal U_ALU_N40_pack_1 : STD_LOGIC; 
  signal ALU_Out_7_Q : STD_LOGIC; 
  signal U_ALU_N42_pack_1 : STD_LOGIC; 
  signal ALU_Out_10_Q : STD_LOGIC; 
  signal N1429_pack_1 : STD_LOGIC; 
  signal U_PC_PC_1_1_DYMUX_51 : STD_LOGIC; 
  signal U_PC_PC_1_1_GYMUX_52 : STD_LOGIC; 
  signal U_PC_PC_1_1_CLKINV_53 : STD_LOGIC; 
  signal U_PC_PC_3_1_DYMUX_54 : STD_LOGIC; 
  signal U_PC_PC_3_1_GYMUX_55 : STD_LOGIC; 
  signal U_PC_PC_3_1_CLKINV_56 : STD_LOGIC; 
  signal U_PC_PC_4_1_DYMUX_57 : STD_LOGIC; 
  signal U_PC_PC_4_1_GYMUX_58 : STD_LOGIC; 
  signal U_PC_PC_4_1_CLKINV_59 : STD_LOGIC; 
  signal U_PC_PC_5_1_DYMUX_60 : STD_LOGIC; 
  signal U_PC_PC_5_1_GYMUX_61 : STD_LOGIC; 
  signal U_PC_PC_5_1_CLKINV_62 : STD_LOGIC; 
  signal N558 : STD_LOGIC; 
  signal U_ALU_Nflag_DYMUX_63 : STD_LOGIC; 
  signal U_ALU_Nflag_GYMUX_64 : STD_LOGIC; 
  signal ALU_Out_15_Q : STD_LOGIC; 
  signal U_ALU_Nflag_CLKINV_65 : STD_LOGIC; 
  signal U_ALU_Nflag_CEINV_66 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N18_pack_1 : STD_LOGIC; 
  signal U_DataMem_MemData_1_DIF_MUX_67 : STD_LOGIC; 
  signal U_DataMem_MemData_1_DIG_MUX_68 : STD_LOGIC; 
  signal U_DataMem_MemData_1_CLKINV_69 : STD_LOGIC; 
  signal U_DataMem_MemData_1_SRINV_70 : STD_LOGIC; 
  signal RdData2_1_DIF_MUX_71 : STD_LOGIC; 
  signal RdData2_1_DIG_MUX_72 : STD_LOGIC; 
  signal RdData2_1_CLKINV_73 : STD_LOGIC; 
  signal RdData2_1_SRINV_74 : STD_LOGIC; 
  signal RdData2_2_DIF_MUX_75 : STD_LOGIC; 
  signal RdData2_2_DIG_MUX_76 : STD_LOGIC; 
  signal RdData2_2_CLKINV_77 : STD_LOGIC; 
  signal RdData2_2_SRINV_78 : STD_LOGIC; 
  signal RdData2_3_DIF_MUX_79 : STD_LOGIC; 
  signal RdData2_3_DIG_MUX_80 : STD_LOGIC; 
  signal RdData2_3_CLKINV_81 : STD_LOGIC; 
  signal RdData2_3_SRINV_82 : STD_LOGIC; 
  signal U_ROM_Mmux_Data21_map27 : STD_LOGIC; 
  signal MUX_RegDest_Y_0_76_O_pack_1 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N17_pack_1 : STD_LOGIC; 
  signal Instr_7_Q : STD_LOGIC; 
  signal U_ROM_Mmux_Data2127_O_pack_1 : STD_LOGIC; 
  signal Instr_10_Q : STD_LOGIC; 
  signal N1489_pack_1 : STD_LOGIC; 
  signal U_ALU_N192_pack_1 : STD_LOGIC; 
  signal Instr_4_Q : STD_LOGIC; 
  signal N305_pack_1 : STD_LOGIC; 
  signal Instr_15_Q : STD_LOGIC; 
  signal N16_pack_1 : STD_LOGIC; 
  signal MUX_ALU_Y_12_map11 : STD_LOGIC; 
  signal MUX_ALU_Y_12_18_O_pack_1 : STD_LOGIC; 
  signal MUX_ALU_Y_13_map11 : STD_LOGIC; 
  signal MUX_ALU_Y_13_18_O_pack_1 : STD_LOGIC; 
  signal N14111 : STD_LOGIC; 
  signal U_ALU_ZFLAG1_cmp_eq000076_SW0_SW0_SW0_SW1_O_pack_1 : STD_LOGIC; 
  signal MUX_ALU_Y_14_map11 : STD_LOGIC; 
  signal MUX_ALU_Y_14_18_O_pack_1 : STD_LOGIC; 
  signal MUX_ALU_Y_15_map11 : STD_LOGIC; 
  signal MUX_ALU_Y_15_18_O_pack_1 : STD_LOGIC; 
  signal N1436 : STD_LOGIC; 
  signal U_ALU_FF1R_0_145_SW1_F_O_pack_1 : STD_LOGIC; 
  signal U_ALU_N92 : STD_LOGIC; 
  signal U_ALU_FF1R_2_map2_pack_1 : STD_LOGIC; 
  signal MUX_ALU_Y_0_33_O_pack_1 : STD_LOGIC; 
  signal MUX_ALU_Y_1_33_O_pack_1 : STD_LOGIC; 
  signal ALU_Out_8_Q : STD_LOGIC; 
  signal N1433_pack_1 : STD_LOGIC; 
  signal ALU_Out_9_Q : STD_LOGIC; 
  signal N1431_pack_1 : STD_LOGIC; 
  signal U_ALU_FF1R_0_map16 : STD_LOGIC; 
  signal U_ALU_FF1R_0_51_O_pack_1 : STD_LOGIC; 
  signal MUX_ALU_Y_2_33_O_pack_1 : STD_LOGIC; 
  signal U_ALU_FF1R_2_30_O_pack_1 : STD_LOGIC; 
  signal U_ALU_FF1R_1_33_O_pack_1 : STD_LOGIC; 
  signal WRData_14_F5MUX_83 : STD_LOGIC; 
  signal N1469 : STD_LOGIC; 
  signal WRData_14_BXINV_84 : STD_LOGIC; 
  signal N1468 : STD_LOGIC; 
  signal WRData_15_F5MUX_85 : STD_LOGIC; 
  signal N1475 : STD_LOGIC; 
  signal WRData_15_BXINV_86 : STD_LOGIC; 
  signal N1474 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_5_f54_F5MUX_87 : STD_LOGIC; 
  signal U_ALU_N131 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_5_f54_BXINV_88 : STD_LOGIC; 
  signal U_ALU_N141 : STD_LOGIC; 
  signal U_ALU_Cflag_DXMUX_89 : STD_LOGIC; 
  signal U_ALU_Cflag_F5MUX_90 : STD_LOGIC; 
  signal N1541 : STD_LOGIC; 
  signal U_ALU_Cflag_BXINV_91 : STD_LOGIC; 
  signal N1542 : STD_LOGIC; 
  signal U_ALU_Cflag_CLKINV_92 : STD_LOGIC; 
  signal U_ALU_Cflag_CEINV_93 : STD_LOGIC; 
  signal WRData_5_F5MUX_94 : STD_LOGIC; 
  signal N1503 : STD_LOGIC; 
  signal WRData_5_BXINV_95 : STD_LOGIC; 
  signal N1502 : STD_LOGIC; 
  signal WRData_6_F5MUX_96 : STD_LOGIC; 
  signal N1501 : STD_LOGIC; 
  signal WRData_6_BXINV_97 : STD_LOGIC; 
  signal N1500 : STD_LOGIC; 
  signal N0_F5MUX_98 : STD_LOGIC; 
  signal N1495 : STD_LOGIC; 
  signal N0_BXINV_99 : STD_LOGIC; 
  signal N1494 : STD_LOGIC; 
  signal WRData_7_F5MUX_100 : STD_LOGIC; 
  signal N1499 : STD_LOGIC; 
  signal WRData_7_BXINV_101 : STD_LOGIC; 
  signal N1498 : STD_LOGIC; 
  signal WRData_8_F5MUX_102 : STD_LOGIC; 
  signal N1517 : STD_LOGIC; 
  signal WRData_8_BXINV_103 : STD_LOGIC; 
  signal N1516 : STD_LOGIC; 
  signal WRData_9_F5MUX_104 : STD_LOGIC; 
  signal N1515 : STD_LOGIC; 
  signal WRData_9_BXINV_105 : STD_LOGIC; 
  signal N1514 : STD_LOGIC; 
  signal CE_NF_F5MUX_106 : STD_LOGIC; 
  signal N1509 : STD_LOGIC; 
  signal CE_NF_BXINV_107 : STD_LOGIC; 
  signal N1508 : STD_LOGIC; 
  signal N1460_F5MUX_108 : STD_LOGIC; 
  signal N1460_F : STD_LOGIC; 
  signal N1460_BXINV_109 : STD_LOGIC; 
  signal N1543 : STD_LOGIC; 
  signal Instr_8_Q : STD_LOGIC; 
  signal U_ROM_Mmux_Data612_O_pack_1 : STD_LOGIC; 
  signal Instr_5_Q : STD_LOGIC; 
  signal U_Ctrl_RegWr_cmp_eq000011_O_pack_1 : STD_LOGIC; 
  signal RdData2_4_DIF_MUX_110 : STD_LOGIC; 
  signal RdData2_4_DIG_MUX_111 : STD_LOGIC; 
  signal RdData2_4_CLKINV_112 : STD_LOGIC; 
  signal RdData2_4_SRINV_113 : STD_LOGIC; 
  signal RdData2_5_DIF_MUX_114 : STD_LOGIC; 
  signal RdData2_5_DIG_MUX_115 : STD_LOGIC; 
  signal RdData2_5_CLKINV_116 : STD_LOGIC; 
  signal RdData2_5_SRINV_117 : STD_LOGIC; 
  signal RdData2_6_DIF_MUX_118 : STD_LOGIC; 
  signal RdData2_6_DIG_MUX_119 : STD_LOGIC; 
  signal RdData2_6_CLKINV_120 : STD_LOGIC; 
  signal RdData2_6_SRINV_121 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal RdData2_7_DIF_MUX_122 : STD_LOGIC; 
  signal RdData2_7_DIG_MUX_123 : STD_LOGIC; 
  signal RdData2_7_CLKINV_124 : STD_LOGIC; 
  signal RdData2_7_SRINV_125 : STD_LOGIC; 
  signal RdData2_8_DIF_MUX_126 : STD_LOGIC; 
  signal RdData2_8_DIG_MUX_127 : STD_LOGIC; 
  signal RdData2_8_CLKINV_128 : STD_LOGIC; 
  signal RdData2_8_SRINV_129 : STD_LOGIC; 
  signal RdData2_9_DIF_MUX_130 : STD_LOGIC; 
  signal RdData2_9_DIG_MUX_131 : STD_LOGIC; 
  signal RdData2_9_CLKINV_132 : STD_LOGIC; 
  signal RdData2_9_SRINV_133 : STD_LOGIC; 
  signal U_PC_PC_1_2_DYMUX_134 : STD_LOGIC; 
  signal U_PC_PC_1_2_CLKINV_135 : STD_LOGIC; 
  signal U_PC_PC_2_2_DYMUX_136 : STD_LOGIC; 
  signal U_PC_PC_2_2_CLKINV_137 : STD_LOGIC; 
  signal U_PC_PC_3_2_DYMUX_138 : STD_LOGIC; 
  signal U_PC_PC_3_2_CLKINV_139 : STD_LOGIC; 
  signal U_PC_PC_4_2_DYMUX_140 : STD_LOGIC; 
  signal U_PC_PC_4_2_CLKINV_141 : STD_LOGIC; 
  signal U_PC_PC_5_2_DYMUX_142 : STD_LOGIC; 
  signal U_PC_PC_5_2_CLKINV_143 : STD_LOGIC; 
  signal N1413 : STD_LOGIC; 
  signal N1272 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal RdData2_10_DIF_MUX_144 : STD_LOGIC; 
  signal RdData2_10_DIG_MUX_145 : STD_LOGIC; 
  signal RdData2_10_CLKINV_146 : STD_LOGIC; 
  signal RdData2_10_SRINV_147 : STD_LOGIC; 
  signal RdData2_11_DIF_MUX_148 : STD_LOGIC; 
  signal RdData2_11_DIG_MUX_149 : STD_LOGIC; 
  signal RdData2_11_CLKINV_150 : STD_LOGIC; 
  signal RdData2_11_SRINV_151 : STD_LOGIC; 
  signal U_DataMem_MemData_3_DIF_MUX_152 : STD_LOGIC; 
  signal U_DataMem_MemData_3_DIG_MUX_153 : STD_LOGIC; 
  signal U_DataMem_MemData_3_CLKINV_154 : STD_LOGIC; 
  signal U_DataMem_MemData_3_SRINV_155 : STD_LOGIC; 
  signal RdData1_0_DIF_MUX_156 : STD_LOGIC; 
  signal RdData1_0_DIG_MUX_157 : STD_LOGIC; 
  signal RdData1_0_CLKINV_158 : STD_LOGIC; 
  signal RdData1_0_SRINV_159 : STD_LOGIC; 
  signal RdData1_9_DIF_MUX_160 : STD_LOGIC; 
  signal RdData1_9_DIG_MUX_161 : STD_LOGIC; 
  signal RdData1_9_CLKINV_162 : STD_LOGIC; 
  signal RdData1_9_SRINV_163 : STD_LOGIC; 
  signal RdData1_1_DIF_MUX_164 : STD_LOGIC; 
  signal RdData1_1_DIG_MUX_165 : STD_LOGIC; 
  signal RdData1_1_CLKINV_166 : STD_LOGIC; 
  signal RdData1_1_SRINV_167 : STD_LOGIC; 
  signal U_DataMem_MemData_9_DIF_MUX_168 : STD_LOGIC; 
  signal U_DataMem_MemData_9_DIG_MUX_169 : STD_LOGIC; 
  signal U_DataMem_MemData_9_CLKINV_170 : STD_LOGIC; 
  signal U_DataMem_MemData_9_SRINV_171 : STD_LOGIC; 
  signal RdData1_10_DIF_MUX_172 : STD_LOGIC; 
  signal RdData1_10_DIG_MUX_173 : STD_LOGIC; 
  signal RdData1_10_CLKINV_174 : STD_LOGIC; 
  signal RdData1_10_SRINV_175 : STD_LOGIC; 
  signal RdData1_2_DIF_MUX_176 : STD_LOGIC; 
  signal RdData1_2_DIG_MUX_177 : STD_LOGIC; 
  signal RdData1_2_CLKINV_178 : STD_LOGIC; 
  signal RdData1_2_SRINV_179 : STD_LOGIC; 
  signal RdData1_11_DIF_MUX_180 : STD_LOGIC; 
  signal RdData1_11_DIG_MUX_181 : STD_LOGIC; 
  signal RdData1_11_CLKINV_182 : STD_LOGIC; 
  signal RdData1_11_SRINV_183 : STD_LOGIC; 
  signal RdData1_3_DIF_MUX_184 : STD_LOGIC; 
  signal RdData1_3_DIG_MUX_185 : STD_LOGIC; 
  signal RdData1_3_CLKINV_186 : STD_LOGIC; 
  signal RdData1_3_SRINV_187 : STD_LOGIC; 
  signal RdData1_12_DIF_MUX_188 : STD_LOGIC; 
  signal RdData1_12_DIG_MUX_189 : STD_LOGIC; 
  signal RdData1_12_CLKINV_190 : STD_LOGIC; 
  signal RdData1_12_SRINV_191 : STD_LOGIC; 
  signal RdData1_13_DIF_MUX_192 : STD_LOGIC; 
  signal RdData1_13_DIG_MUX_193 : STD_LOGIC; 
  signal RdData1_13_CLKINV_194 : STD_LOGIC; 
  signal RdData1_13_SRINV_195 : STD_LOGIC; 
  signal U_ALU_ZFLAG1_cmp_eq0000_map6 : STD_LOGIC; 
  signal N1425 : STD_LOGIC; 
  signal U_ALU_OVFLAG1 : STD_LOGIC; 
  signal U_ALU_FF1R_0_map2 : STD_LOGIC; 
  signal N1423 : STD_LOGIC; 
  signal U_DataMem_MemData_11_DIF_MUX_196 : STD_LOGIC; 
  signal U_DataMem_MemData_11_DIG_MUX_197 : STD_LOGIC; 
  signal U_DataMem_MemData_11_CLKINV_198 : STD_LOGIC; 
  signal U_DataMem_MemData_11_SRINV_199 : STD_LOGIC; 
  signal RdData1_4_DIF_MUX_200 : STD_LOGIC; 
  signal RdData1_4_DIG_MUX_201 : STD_LOGIC; 
  signal RdData1_4_CLKINV_202 : STD_LOGIC; 
  signal RdData1_4_SRINV_203 : STD_LOGIC; 
  signal RdData2_12_DIF_MUX_204 : STD_LOGIC; 
  signal RdData2_12_DIG_MUX_205 : STD_LOGIC; 
  signal RdData2_12_CLKINV_206 : STD_LOGIC; 
  signal RdData2_12_SRINV_207 : STD_LOGIC; 
  signal RdData1_5_DIF_MUX_208 : STD_LOGIC; 
  signal RdData1_5_DIG_MUX_209 : STD_LOGIC; 
  signal RdData1_5_CLKINV_210 : STD_LOGIC; 
  signal RdData1_5_SRINV_211 : STD_LOGIC; 
  signal RdData2_13_DIF_MUX_212 : STD_LOGIC; 
  signal RdData2_13_DIG_MUX_213 : STD_LOGIC; 
  signal RdData2_13_CLKINV_214 : STD_LOGIC; 
  signal RdData2_13_SRINV_215 : STD_LOGIC; 
  signal U_DataMem_MemData_5_DIF_MUX_216 : STD_LOGIC; 
  signal U_DataMem_MemData_5_DIG_MUX_217 : STD_LOGIC; 
  signal U_DataMem_MemData_5_CLKINV_218 : STD_LOGIC; 
  signal U_DataMem_MemData_5_SRINV_219 : STD_LOGIC; 
  signal RdData1_14_DIF_MUX_220 : STD_LOGIC; 
  signal RdData1_14_DIG_MUX_221 : STD_LOGIC; 
  signal RdData1_14_CLKINV_222 : STD_LOGIC; 
  signal RdData1_14_SRINV_223 : STD_LOGIC; 
  signal RdData1_6_DIF_MUX_224 : STD_LOGIC; 
  signal RdData1_6_DIG_MUX_225 : STD_LOGIC; 
  signal RdData1_6_CLKINV_226 : STD_LOGIC; 
  signal RdData1_6_SRINV_227 : STD_LOGIC; 
  signal RdData2_14_DIF_MUX_228 : STD_LOGIC; 
  signal RdData2_14_DIG_MUX_229 : STD_LOGIC; 
  signal RdData2_14_CLKINV_230 : STD_LOGIC; 
  signal RdData2_14_SRINV_231 : STD_LOGIC; 
  signal RdData1_15_DIF_MUX_232 : STD_LOGIC; 
  signal RdData1_15_DIG_MUX_233 : STD_LOGIC; 
  signal RdData1_15_CLKINV_234 : STD_LOGIC; 
  signal RdData1_15_SRINV_235 : STD_LOGIC; 
  signal RdData1_7_DIF_MUX_236 : STD_LOGIC; 
  signal RdData1_7_DIG_MUX_237 : STD_LOGIC; 
  signal RdData1_7_CLKINV_238 : STD_LOGIC; 
  signal RdData1_7_SRINV_239 : STD_LOGIC; 
  signal RdData2_15_DIF_MUX_240 : STD_LOGIC; 
  signal RdData2_15_DIG_MUX_241 : STD_LOGIC; 
  signal RdData2_15_CLKINV_242 : STD_LOGIC; 
  signal RdData2_15_SRINV_243 : STD_LOGIC; 
  signal U_DataMem_MemData_7_DIF_MUX_244 : STD_LOGIC; 
  signal U_DataMem_MemData_7_DIG_MUX_245 : STD_LOGIC; 
  signal U_DataMem_MemData_7_CLKINV_246 : STD_LOGIC; 
  signal U_DataMem_MemData_7_SRINV_247 : STD_LOGIC; 
  signal RdData1_8_DIF_MUX_248 : STD_LOGIC; 
  signal RdData1_8_DIG_MUX_249 : STD_LOGIC; 
  signal RdData1_8_CLKINV_250 : STD_LOGIC; 
  signal RdData1_8_SRINV_251 : STD_LOGIC; 
  signal U_DataMem_MemData_13_DIF_MUX_252 : STD_LOGIC; 
  signal U_DataMem_MemData_13_DIG_MUX_253 : STD_LOGIC; 
  signal U_DataMem_MemData_13_CLKINV_254 : STD_LOGIC; 
  signal U_DataMem_MemData_13_SRINV_255 : STD_LOGIC; 
  signal U_DataMem_MemData_15_DIF_MUX_256 : STD_LOGIC; 
  signal U_DataMem_MemData_15_DIG_MUX_257 : STD_LOGIC; 
  signal U_DataMem_MemData_15_CLKINV_258 : STD_LOGIC; 
  signal U_DataMem_MemData_15_SRINV_259 : STD_LOGIC; 
  signal U_ALU_FF1R_1_map7 : STD_LOGIC; 
  signal N1417 : STD_LOGIC; 
  signal U_DataMem_OUTW0_and0000 : STD_LOGIC; 
  signal U_DataMem_and0000 : STD_LOGIC; 
  signal N1442 : STD_LOGIC; 
  signal MUX_RegDest_Y_0_map11 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000_map22 : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000_map21_pack_1 : STD_LOGIC; 
  signal N1441 : STD_LOGIC; 
  signal U_PC_PC_2_1_DXMUX_260 : STD_LOGIC; 
  signal U_PC_PC_2_1_FXMUX_261 : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000_pack_1 : STD_LOGIC; 
  signal U_PC_PC_2_1_CLKINV_262 : STD_LOGIC; 
  signal CE_OVF : STD_LOGIC; 
  signal N74_pack_1 : STD_LOGIC; 
  signal N1271 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_5_XORF_263 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_5_CYINIT_264 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal RdData2_0_DIF_MUX_265 : STD_LOGIC; 
  signal RdData2_0_DIG_MUX_266 : STD_LOGIC; 
  signal RdData2_0_CLKINV_267 : STD_LOGIC; 
  signal RdData2_0_SRINV_268 : STD_LOGIC; 
  signal U_ALU_FF1R_1_map2 : STD_LOGIC; 
  signal N1400 : STD_LOGIC; 
  signal MUX_ALU_Y_0_map7 : STD_LOGIC; 
  signal MUX_ALU_Y_10_map7 : STD_LOGIC; 
  signal MUX_ALU_Y_9_map7 : STD_LOGIC; 
  signal MUX_ALU_Y_11_map7 : STD_LOGIC; 
  signal U_ALU_N38 : STD_LOGIC; 
  signal N1435 : STD_LOGIC; 
  signal U_PC_PC_2_DXMUX_269 : STD_LOGIC; 
  signal U_PC_PC_2_DYMUX_270 : STD_LOGIC; 
  signal U_PC_PC_2_CLKINV_271 : STD_LOGIC; 
  signal U_PC_PC_4_DXMUX_272 : STD_LOGIC; 
  signal U_PC_PC_4_DYMUX_273 : STD_LOGIC; 
  signal U_PC_PC_4_CLKINV_274 : STD_LOGIC; 
  signal U_ALU_ADD17_1_CYINIT_275 : STD_LOGIC; 
  signal U_ALU_ADD17_1_CY0F_276 : STD_LOGIC; 
  signal U_ALU_ADD17_1_CYSELF_277 : STD_LOGIC; 
  signal U_ALU_ADD17_1_XORG_278 : STD_LOGIC; 
  signal U_ALU_ADD17_1_CYMUXG_279 : STD_LOGIC; 
  signal U_ALU_ADD17_1_CY0G_280 : STD_LOGIC; 
  signal U_ALU_ADD17_1_CYSELG_281 : STD_LOGIC; 
  signal U_ALU_N5 : STD_LOGIC; 
  signal U_PC_PC_5_DYMUX_282 : STD_LOGIC; 
  signal U_PC_PC_5_CLKINV_283 : STD_LOGIC; 
  signal U_ALU_ADD17_2_XORF_284 : STD_LOGIC; 
  signal U_ALU_ADD17_2_CYINIT_285 : STD_LOGIC; 
  signal U_ALU_ADD17_2_CY0F_286 : STD_LOGIC; 
  signal U_ALU_N6 : STD_LOGIC; 
  signal U_ALU_ADD17_2_XORG_287 : STD_LOGIC; 
  signal U_ALU_ADD17_2_CYSELF_288 : STD_LOGIC; 
  signal U_ALU_ADD17_2_CYMUXFAST_289 : STD_LOGIC; 
  signal U_ALU_ADD17_2_CYAND_290 : STD_LOGIC; 
  signal U_ALU_ADD17_2_FASTCARRY_291 : STD_LOGIC; 
  signal U_ALU_ADD17_2_CYMUXG2_292 : STD_LOGIC; 
  signal U_ALU_ADD17_2_CYMUXF2_293 : STD_LOGIC; 
  signal U_ALU_ADD17_2_CY0G_294 : STD_LOGIC; 
  signal U_ALU_ADD17_2_CYSELG_295 : STD_LOGIC; 
  signal U_ALU_N7 : STD_LOGIC; 
  signal U_ALU_FF1R_2_map5 : STD_LOGIC; 
  signal N1403 : STD_LOGIC; 
  signal U_ALU_ADD17_4_XORF_296 : STD_LOGIC; 
  signal U_ALU_ADD17_4_CYINIT_297 : STD_LOGIC; 
  signal U_ALU_ADD17_4_CY0F_298 : STD_LOGIC; 
  signal U_ALU_N8 : STD_LOGIC; 
  signal U_ALU_ADD17_4_XORG_299 : STD_LOGIC; 
  signal U_ALU_ADD17_4_CYSELF_300 : STD_LOGIC; 
  signal U_ALU_ADD17_4_CYMUXFAST_301 : STD_LOGIC; 
  signal U_ALU_ADD17_4_CYAND_302 : STD_LOGIC; 
  signal U_ALU_ADD17_4_FASTCARRY_303 : STD_LOGIC; 
  signal U_ALU_ADD17_4_CYMUXG2_304 : STD_LOGIC; 
  signal U_ALU_ADD17_4_CYMUXF2_305 : STD_LOGIC; 
  signal U_ALU_ADD17_4_CY0G_306 : STD_LOGIC; 
  signal U_ALU_ADD17_4_CYSELG_307 : STD_LOGIC; 
  signal U_ALU_N9 : STD_LOGIC; 
  signal U_ALU_ADD17_6_XORF_308 : STD_LOGIC; 
  signal U_ALU_ADD17_6_CYINIT_309 : STD_LOGIC; 
  signal U_ALU_ADD17_6_CY0F_310 : STD_LOGIC; 
  signal U_ALU_N10 : STD_LOGIC; 
  signal U_ALU_ADD17_6_XORG_311 : STD_LOGIC; 
  signal U_ALU_ADD17_6_CYSELF_312 : STD_LOGIC; 
  signal U_ALU_ADD17_6_CYMUXFAST_313 : STD_LOGIC; 
  signal U_ALU_ADD17_6_CYAND_314 : STD_LOGIC; 
  signal U_ALU_ADD17_6_FASTCARRY_315 : STD_LOGIC; 
  signal U_ALU_ADD17_6_CYMUXG2_316 : STD_LOGIC; 
  signal U_ALU_ADD17_6_CYMUXF2_317 : STD_LOGIC; 
  signal U_ALU_ADD17_6_CY0G_318 : STD_LOGIC; 
  signal U_ALU_ADD17_6_CYSELG_319 : STD_LOGIC; 
  signal U_ALU_N11 : STD_LOGIC; 
  signal MUX_ALU_Y_8_map7 : STD_LOGIC; 
  signal MUX_ALU_Y_1_map7 : STD_LOGIC; 
  signal U_ALU_ADD17_8_XORF_320 : STD_LOGIC; 
  signal U_ALU_ADD17_8_CYINIT_321 : STD_LOGIC; 
  signal U_ALU_ADD17_8_CY0F_322 : STD_LOGIC; 
  signal U_ALU_N12 : STD_LOGIC; 
  signal U_ALU_ADD17_8_XORG_323 : STD_LOGIC; 
  signal U_ALU_ADD17_8_CYSELF_324 : STD_LOGIC; 
  signal U_ALU_ADD17_8_CYMUXFAST_325 : STD_LOGIC; 
  signal U_ALU_ADD17_8_CYAND_326 : STD_LOGIC; 
  signal U_ALU_ADD17_8_FASTCARRY_327 : STD_LOGIC; 
  signal U_ALU_ADD17_8_CYMUXG2_328 : STD_LOGIC; 
  signal U_ALU_ADD17_8_CYMUXF2_329 : STD_LOGIC; 
  signal U_ALU_ADD17_8_CY0G_330 : STD_LOGIC; 
  signal U_ALU_ADD17_8_CYSELG_331 : STD_LOGIC; 
  signal U_ALU_N13 : STD_LOGIC; 
  signal U_ALU_ADD17_10_XORF_332 : STD_LOGIC; 
  signal U_ALU_ADD17_10_CYINIT_333 : STD_LOGIC; 
  signal U_ALU_ADD17_10_CY0F_334 : STD_LOGIC; 
  signal U_ALU_N14 : STD_LOGIC; 
  signal U_ALU_ADD17_10_XORG_335 : STD_LOGIC; 
  signal U_ALU_ADD17_10_CYSELF_336 : STD_LOGIC; 
  signal U_ALU_ADD17_10_CYMUXFAST_337 : STD_LOGIC; 
  signal U_ALU_ADD17_10_CYAND_338 : STD_LOGIC; 
  signal U_ALU_ADD17_10_FASTCARRY_339 : STD_LOGIC; 
  signal U_ALU_ADD17_10_CYMUXG2_340 : STD_LOGIC; 
  signal U_ALU_ADD17_10_CYMUXF2_341 : STD_LOGIC; 
  signal U_ALU_ADD17_10_CY0G_342 : STD_LOGIC; 
  signal U_ALU_ADD17_10_CYSELG_343 : STD_LOGIC; 
  signal U_ALU_N15 : STD_LOGIC; 
  signal U_ALU_FF1R_1_map11 : STD_LOGIC; 
  signal U_ALU_ADD17_12_XORF_344 : STD_LOGIC; 
  signal U_ALU_ADD17_12_CYINIT_345 : STD_LOGIC; 
  signal U_ALU_ADD17_12_CY0F_346 : STD_LOGIC; 
  signal U_ALU_N16 : STD_LOGIC; 
  signal U_ALU_ADD17_12_XORG_347 : STD_LOGIC; 
  signal U_ALU_ADD17_12_CYSELF_348 : STD_LOGIC; 
  signal U_ALU_ADD17_12_CYMUXFAST_349 : STD_LOGIC; 
  signal U_ALU_ADD17_12_CYAND_350 : STD_LOGIC; 
  signal U_ALU_ADD17_12_FASTCARRY_351 : STD_LOGIC; 
  signal U_ALU_ADD17_12_CYMUXG2_352 : STD_LOGIC; 
  signal U_ALU_ADD17_12_CYMUXF2_353 : STD_LOGIC; 
  signal U_ALU_ADD17_12_CY0G_354 : STD_LOGIC; 
  signal U_ALU_ADD17_12_CYSELG_355 : STD_LOGIC; 
  signal U_ALU_N17 : STD_LOGIC; 
  signal MUX_ALU_Y_7_map7 : STD_LOGIC; 
  signal MUX_ALU_Y_2_map7 : STD_LOGIC; 
  signal U_ALU_ADD17_14_XORF_356 : STD_LOGIC; 
  signal U_ALU_ADD17_14_CYINIT_357 : STD_LOGIC; 
  signal U_ALU_ADD17_14_CY0F_358 : STD_LOGIC; 
  signal U_ALU_N18 : STD_LOGIC; 
  signal U_ALU_ADD17_14_XORG_359 : STD_LOGIC; 
  signal U_ALU_ADD17_14_CYSELF_360 : STD_LOGIC; 
  signal U_ALU_ADD17_14_CYMUXFAST_361 : STD_LOGIC; 
  signal U_ALU_ADD17_14_CYAND_362 : STD_LOGIC; 
  signal U_ALU_ADD17_14_FASTCARRY_363 : STD_LOGIC; 
  signal U_ALU_ADD17_14_CYMUXG2_364 : STD_LOGIC; 
  signal U_ALU_ADD17_14_CYMUXF2_365 : STD_LOGIC; 
  signal U_ALU_ADD17_14_CY0G_366 : STD_LOGIC; 
  signal U_ALU_ADD17_14_CYSELG_367 : STD_LOGIC; 
  signal U_ALU_N19 : STD_LOGIC; 
  signal U_ALU_FF1R_1_map1 : STD_LOGIC; 
  signal U_ALU_SUB17_14_XORF_368 : STD_LOGIC; 
  signal U_ALU_SUB17_14_CYINIT_369 : STD_LOGIC; 
  signal U_ALU_SUB17_14_CY0F_370 : STD_LOGIC; 
  signal U_ALU_N34 : STD_LOGIC; 
  signal U_ALU_SUB17_14_XORG_371 : STD_LOGIC; 
  signal U_ALU_SUB17_14_CYSELF_372 : STD_LOGIC; 
  signal U_ALU_SUB17_14_CYMUXFAST_373 : STD_LOGIC; 
  signal U_ALU_SUB17_14_CYAND_374 : STD_LOGIC; 
  signal U_ALU_SUB17_14_FASTCARRY_375 : STD_LOGIC; 
  signal U_ALU_SUB17_14_CYMUXG2_376 : STD_LOGIC; 
  signal U_ALU_SUB17_14_CYMUXF2_377 : STD_LOGIC; 
  signal U_ALU_SUB17_14_CY0G_378 : STD_LOGIC; 
  signal U_ALU_SUB17_14_CYSELG_379 : STD_LOGIC; 
  signal U_ALU_N35 : STD_LOGIC; 
  signal ALU_Out_1_F5MUX_380 : STD_LOGIC; 
  signal RdData2_1_rt_381 : STD_LOGIC; 
  signal ALU_Out_1_BXINV_382 : STD_LOGIC; 
  signal ALU_Out_1_F6MUX_383 : STD_LOGIC; 
  signal U_ALU_N251 : STD_LOGIC; 
  signal ALU_Out_1_BYINV_384 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_4_f5_F5MUX_385 : STD_LOGIC; 
  signal U_ALU_N261 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_4_f5_BXINV_386 : STD_LOGIC; 
  signal U_ALU_N271 : STD_LOGIC; 
  signal ALU_Out_0_F5MUX_387 : STD_LOGIC; 
  signal RdData2_0_rt_388 : STD_LOGIC; 
  signal ALU_Out_0_BXINV_389 : STD_LOGIC; 
  signal ALU_Out_0_F6MUX_390 : STD_LOGIC; 
  signal U_ALU_N0 : STD_LOGIC; 
  signal ALU_Out_0_BYINV_391 : STD_LOGIC; 
  signal U_ALU_Mmux_Ys_4_f5_F5MUX_392 : STD_LOGIC; 
  signal U_ALU_N111 : STD_LOGIC; 
  signal U_ALU_Mmux_Ys_4_f5_BXINV_393 : STD_LOGIC; 
  signal U_ALU_N210 : STD_LOGIC; 
  signal U_ALU_FF1R_3_map2 : STD_LOGIC; 
  signal ALU_Out_2_F5MUX_394 : STD_LOGIC; 
  signal RdData2_2_rt_395 : STD_LOGIC; 
  signal ALU_Out_2_BXINV_396 : STD_LOGIC; 
  signal ALU_Out_2_F6MUX_397 : STD_LOGIC; 
  signal U_ALU_N281 : STD_LOGIC; 
  signal ALU_Out_2_BYINV_398 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_4_f51_F5MUX_399 : STD_LOGIC; 
  signal U_ALU_N291 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_4_f51_BXINV_400 : STD_LOGIC; 
  signal U_ALU_N301 : STD_LOGIC; 
  signal ALU_Out_3_F5MUX_401 : STD_LOGIC; 
  signal RdData2_3_rt_402 : STD_LOGIC; 
  signal ALU_Out_3_BXINV_403 : STD_LOGIC; 
  signal ALU_Out_3_F6MUX_404 : STD_LOGIC; 
  signal U_ALU_N311 : STD_LOGIC; 
  signal ALU_Out_3_BYINV_405 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_4_f52_F5MUX_406 : STD_LOGIC; 
  signal U_ALU_N321 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_4_f52_BXINV_407 : STD_LOGIC; 
  signal U_ALU_N331 : STD_LOGIC; 
  signal ALU_Out_4_F5MUX_408 : STD_LOGIC; 
  signal RdData2_4_rt_409 : STD_LOGIC; 
  signal ALU_Out_4_BXINV_410 : STD_LOGIC; 
  signal ALU_Out_4_F6MUX_411 : STD_LOGIC; 
  signal U_ALU_N341 : STD_LOGIC; 
  signal ALU_Out_4_BYINV_412 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_4_f53_F5MUX_413 : STD_LOGIC; 
  signal U_ALU_N351 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_4_f53_BXINV_414 : STD_LOGIC; 
  signal U_ALU_N361 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_11_f6_F5MUX_415 : STD_LOGIC; 
  signal U_ALU_N151 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_11_f6_BXINV_416 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_11_f6_F6MUX_417 : STD_LOGIC; 
  signal U_ALU_N161 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_11_f6_BYINV_418 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_13_f5_F5MUX_419 : STD_LOGIC; 
  signal U_ALU_N171 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_13_f5_BXINV_420 : STD_LOGIC; 
  signal U_ALU_N181 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_12_f6_F5MUX_421 : STD_LOGIC; 
  signal U_ALU_N191 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_12_f6_BXINV_422 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_12_f6_F6MUX_423 : STD_LOGIC; 
  signal U_ALU_N201 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_12_f6_BYINV_424 : STD_LOGIC; 
  signal U_ALU_FF1R_1_map16 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_2_CYINIT_425 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_2_CY0F_426 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_2_CYSELF_427 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_2_XORG_428 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_2_CYMUXG_429 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_2_CY0G_430 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_2_CYSELG_431 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal MUX_ALU_Y_6_map7 : STD_LOGIC; 
  signal MUX_ALU_Y_3_map7 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_3_XORF_432 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_3_CYINIT_433 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_3_CY0F_434 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_3_XORG_435 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_3_CYSELF_436 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_3_CYMUXFAST_437 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_3_CYAND_438 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_3_FASTCARRY_439 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_3_CYMUXG2_440 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_3_CYMUXF2_441 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_3_CY0G_442 : STD_LOGIC; 
  signal U_New_PC_New_PC_addsub0000_3_CYSELG_443 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal MUX_ALU_Y_5_map7 : STD_LOGIC; 
  signal MUX_ALU_Y_4_map7 : STD_LOGIC; 
  signal U_ALU_SUB17_0_XORF_444 : STD_LOGIC; 
  signal U_ALU_SUB17_0_CYINIT_445 : STD_LOGIC; 
  signal U_ALU_SUB17_0_CY0F_446 : STD_LOGIC; 
  signal U_ALU_SUB17_0_CYSELF_447 : STD_LOGIC; 
  signal U_ALU_N20 : STD_LOGIC; 
  signal U_ALU_SUB17_0_XORG_448 : STD_LOGIC; 
  signal U_ALU_SUB17_0_CYMUXG_449 : STD_LOGIC; 
  signal U_ALU_SUB17_0_CY0G_450 : STD_LOGIC; 
  signal U_ALU_SUB17_0_CYSELG_451 : STD_LOGIC; 
  signal U_ALU_N21 : STD_LOGIC; 
  signal N1394 : STD_LOGIC; 
  signal U_ALU_SUB17_2_XORF_452 : STD_LOGIC; 
  signal U_ALU_SUB17_2_CYINIT_453 : STD_LOGIC; 
  signal U_ALU_SUB17_2_CY0F_454 : STD_LOGIC; 
  signal U_ALU_N22 : STD_LOGIC; 
  signal U_ALU_SUB17_2_XORG_455 : STD_LOGIC; 
  signal U_ALU_SUB17_2_CYSELF_456 : STD_LOGIC; 
  signal U_ALU_SUB17_2_CYMUXFAST_457 : STD_LOGIC; 
  signal U_ALU_SUB17_2_CYAND_458 : STD_LOGIC; 
  signal U_ALU_SUB17_2_FASTCARRY_459 : STD_LOGIC; 
  signal U_ALU_SUB17_2_CYMUXG2_460 : STD_LOGIC; 
  signal U_ALU_SUB17_2_CYMUXF2_461 : STD_LOGIC; 
  signal U_ALU_SUB17_2_CY0G_462 : STD_LOGIC; 
  signal U_ALU_SUB17_2_CYSELG_463 : STD_LOGIC; 
  signal U_ALU_N23 : STD_LOGIC; 
  signal U_ALU_SUB17_4_XORF_464 : STD_LOGIC; 
  signal U_ALU_SUB17_4_CYINIT_465 : STD_LOGIC; 
  signal U_ALU_SUB17_4_CY0F_466 : STD_LOGIC; 
  signal U_ALU_N24 : STD_LOGIC; 
  signal U_ALU_SUB17_4_XORG_467 : STD_LOGIC; 
  signal U_ALU_SUB17_4_CYSELF_468 : STD_LOGIC; 
  signal U_ALU_SUB17_4_CYMUXFAST_469 : STD_LOGIC; 
  signal U_ALU_SUB17_4_CYAND_470 : STD_LOGIC; 
  signal U_ALU_SUB17_4_FASTCARRY_471 : STD_LOGIC; 
  signal U_ALU_SUB17_4_CYMUXG2_472 : STD_LOGIC; 
  signal U_ALU_SUB17_4_CYMUXF2_473 : STD_LOGIC; 
  signal U_ALU_SUB17_4_CY0G_474 : STD_LOGIC; 
  signal U_ALU_SUB17_4_CYSELG_475 : STD_LOGIC; 
  signal U_ALU_N25 : STD_LOGIC; 
  signal U_ALU_SUB17_6_XORF_476 : STD_LOGIC; 
  signal U_ALU_SUB17_6_CYINIT_477 : STD_LOGIC; 
  signal U_ALU_SUB17_6_CY0F_478 : STD_LOGIC; 
  signal U_ALU_N26 : STD_LOGIC; 
  signal U_ALU_SUB17_6_XORG_479 : STD_LOGIC; 
  signal U_ALU_SUB17_6_CYSELF_480 : STD_LOGIC; 
  signal U_ALU_SUB17_6_CYMUXFAST_481 : STD_LOGIC; 
  signal U_ALU_SUB17_6_CYAND_482 : STD_LOGIC; 
  signal U_ALU_SUB17_6_FASTCARRY_483 : STD_LOGIC; 
  signal U_ALU_SUB17_6_CYMUXG2_484 : STD_LOGIC; 
  signal U_ALU_SUB17_6_CYMUXF2_485 : STD_LOGIC; 
  signal U_ALU_SUB17_6_CY0G_486 : STD_LOGIC; 
  signal U_ALU_SUB17_6_CYSELG_487 : STD_LOGIC; 
  signal U_ALU_N27 : STD_LOGIC; 
  signal U_ALU_SUB17_8_XORF_488 : STD_LOGIC; 
  signal U_ALU_SUB17_8_CYINIT_489 : STD_LOGIC; 
  signal U_ALU_SUB17_8_CY0F_490 : STD_LOGIC; 
  signal U_ALU_N28 : STD_LOGIC; 
  signal U_ALU_SUB17_8_XORG_491 : STD_LOGIC; 
  signal U_ALU_SUB17_8_CYSELF_492 : STD_LOGIC; 
  signal U_ALU_SUB17_8_CYMUXFAST_493 : STD_LOGIC; 
  signal U_ALU_SUB17_8_CYAND_494 : STD_LOGIC; 
  signal U_ALU_SUB17_8_FASTCARRY_495 : STD_LOGIC; 
  signal U_ALU_SUB17_8_CYMUXG2_496 : STD_LOGIC; 
  signal U_ALU_SUB17_8_CYMUXF2_497 : STD_LOGIC; 
  signal U_ALU_SUB17_8_CY0G_498 : STD_LOGIC; 
  signal U_ALU_SUB17_8_CYSELG_499 : STD_LOGIC; 
  signal U_ALU_N29 : STD_LOGIC; 
  signal U_ALU_FF1R_1_map0 : STD_LOGIC; 
  signal U_ALU_SUB17_10_XORF_500 : STD_LOGIC; 
  signal U_ALU_SUB17_10_CYINIT_501 : STD_LOGIC; 
  signal U_ALU_SUB17_10_CY0F_502 : STD_LOGIC; 
  signal U_ALU_N30 : STD_LOGIC; 
  signal U_ALU_SUB17_10_XORG_503 : STD_LOGIC; 
  signal U_ALU_SUB17_10_CYSELF_504 : STD_LOGIC; 
  signal U_ALU_SUB17_10_CYMUXFAST_505 : STD_LOGIC; 
  signal U_ALU_SUB17_10_CYAND_506 : STD_LOGIC; 
  signal U_ALU_SUB17_10_FASTCARRY_507 : STD_LOGIC; 
  signal U_ALU_SUB17_10_CYMUXG2_508 : STD_LOGIC; 
  signal U_ALU_SUB17_10_CYMUXF2_509 : STD_LOGIC; 
  signal U_ALU_SUB17_10_CY0G_510 : STD_LOGIC; 
  signal U_ALU_SUB17_10_CYSELG_511 : STD_LOGIC; 
  signal U_ALU_N31 : STD_LOGIC; 
  signal U_ALU_SUB17_12_XORF_512 : STD_LOGIC; 
  signal U_ALU_SUB17_12_CYINIT_513 : STD_LOGIC; 
  signal U_ALU_SUB17_12_CY0F_514 : STD_LOGIC; 
  signal U_ALU_N32 : STD_LOGIC; 
  signal U_ALU_SUB17_12_XORG_515 : STD_LOGIC; 
  signal U_ALU_SUB17_12_CYSELF_516 : STD_LOGIC; 
  signal U_ALU_SUB17_12_CYMUXFAST_517 : STD_LOGIC; 
  signal U_ALU_SUB17_12_CYAND_518 : STD_LOGIC; 
  signal U_ALU_SUB17_12_FASTCARRY_519 : STD_LOGIC; 
  signal U_ALU_SUB17_12_CYMUXG2_520 : STD_LOGIC; 
  signal U_ALU_SUB17_12_CYMUXF2_521 : STD_LOGIC; 
  signal U_ALU_SUB17_12_CY0G_522 : STD_LOGIC; 
  signal U_ALU_SUB17_12_CYSELG_523 : STD_LOGIC; 
  signal U_ALU_N33 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_14_f5_F5MUX_524 : STD_LOGIC; 
  signal U_ALU_N211 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_14_f5_BXINV_525 : STD_LOGIC; 
  signal U_ALU_N221 : STD_LOGIC; 
  signal OUTW0_0_O : STD_LOGIC; 
  signal OUTW0_0_OUTPUT_OTCLK1INV_526 : STD_LOGIC; 
  signal OUTW0_0_OUTPUT_OFF_OCEINV_527 : STD_LOGIC; 
  signal OUTW0_0_OUTPUT_OFF_O1INV_528 : STD_LOGIC; 
  signal OUTW0_1_O : STD_LOGIC; 
  signal OUTW0_1_OUTPUT_OTCLK1INV_529 : STD_LOGIC; 
  signal OUTW0_1_OUTPUT_OFF_OCEINV_530 : STD_LOGIC; 
  signal OUTW0_1_OUTPUT_OFF_O1INV_531 : STD_LOGIC; 
  signal OUTW0_2_O : STD_LOGIC; 
  signal OUTW0_2_OUTPUT_OTCLK1INV_532 : STD_LOGIC; 
  signal OUTW0_2_OUTPUT_OFF_OCEINV_533 : STD_LOGIC; 
  signal OUTW0_2_OUTPUT_OFF_O1INV_534 : STD_LOGIC; 
  signal OUTW0_3_O : STD_LOGIC; 
  signal OUTW0_3_OUTPUT_OTCLK1INV_535 : STD_LOGIC; 
  signal OUTW0_3_OUTPUT_OFF_OCEINV_536 : STD_LOGIC; 
  signal OUTW0_3_OUTPUT_OFF_O1INV_537 : STD_LOGIC; 
  signal OUTW0_4_O : STD_LOGIC; 
  signal OUTW0_4_OUTPUT_OTCLK1INV_538 : STD_LOGIC; 
  signal OUTW0_4_OUTPUT_OFF_OCEINV_539 : STD_LOGIC; 
  signal OUTW0_4_OUTPUT_OFF_O1INV_540 : STD_LOGIC; 
  signal OUTW0_5_O : STD_LOGIC; 
  signal OUTW0_5_OUTPUT_OTCLK1INV_541 : STD_LOGIC; 
  signal OUTW0_5_OUTPUT_OFF_OCEINV_542 : STD_LOGIC; 
  signal OUTW0_5_OUTPUT_OFF_O1INV_543 : STD_LOGIC; 
  signal OUTW0_6_O : STD_LOGIC; 
  signal OUTW0_6_OUTPUT_OTCLK1INV_544 : STD_LOGIC; 
  signal OUTW0_6_OUTPUT_OFF_OCEINV_545 : STD_LOGIC; 
  signal OUTW0_6_OUTPUT_OFF_O1INV_546 : STD_LOGIC; 
  signal OUTW0_7_O : STD_LOGIC; 
  signal OUTW0_7_OUTPUT_OTCLK1INV_547 : STD_LOGIC; 
  signal OUTW0_7_OUTPUT_OFF_OCEINV_548 : STD_LOGIC; 
  signal OUTW0_7_OUTPUT_OFF_O1INV_549 : STD_LOGIC; 
  signal OUTW0_8_O : STD_LOGIC; 
  signal OUTW0_8_OUTPUT_OTCLK1INV_550 : STD_LOGIC; 
  signal OUTW0_8_OUTPUT_OFF_OCEINV_551 : STD_LOGIC; 
  signal OUTW0_8_OUTPUT_OFF_O1INV_552 : STD_LOGIC; 
  signal OUTW0_9_O : STD_LOGIC; 
  signal OUTW0_9_OUTPUT_OTCLK1INV_553 : STD_LOGIC; 
  signal OUTW0_9_OUTPUT_OFF_OCEINV_554 : STD_LOGIC; 
  signal OUTW0_9_OUTPUT_OFF_O1INV_555 : STD_LOGIC; 
  signal N_Flag_O : STD_LOGIC; 
  signal INW0_0_INBUF : STD_LOGIC; 
  signal INW0_1_INBUF : STD_LOGIC; 
  signal INW0_2_INBUF : STD_LOGIC; 
  signal INW0_3_INBUF : STD_LOGIC; 
  signal INW1_0_INBUF : STD_LOGIC; 
  signal INW0_4_INBUF : STD_LOGIC; 
  signal INW1_1_INBUF : STD_LOGIC; 
  signal INW0_11_INBUF : STD_LOGIC; 
  signal INW0_12_INBUF : STD_LOGIC; 
  signal INW0_13_INBUF : STD_LOGIC; 
  signal INW0_14_INBUF : STD_LOGIC; 
  signal INW0_15_INBUF : STD_LOGIC; 
  signal INW1_10_INBUF : STD_LOGIC; 
  signal INW1_11_INBUF : STD_LOGIC; 
  signal INW1_12_INBUF : STD_LOGIC; 
  signal INW1_13_INBUF : STD_LOGIC; 
  signal INW1_14_INBUF : STD_LOGIC; 
  signal INW1_15_INBUF : STD_LOGIC; 
  signal Clk_INBUF : STD_LOGIC; 
  signal Z_Flag_O : STD_LOGIC; 
  signal C_Flag_O : STD_LOGIC; 
  signal Clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal Clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal Instr_3_F5MUX_556 : STD_LOGIC; 
  signal N1529 : STD_LOGIC; 
  signal Instr_3_BXINV_557 : STD_LOGIC; 
  signal N1528 : STD_LOGIC; 
  signal Instr_16_F5MUX_558 : STD_LOGIC; 
  signal N1525 : STD_LOGIC; 
  signal Instr_16_BXINV_559 : STD_LOGIC; 
  signal N1524 : STD_LOGIC; 
  signal RegWr_F5MUX_560 : STD_LOGIC; 
  signal N1519 : STD_LOGIC; 
  signal RegWr_BXINV_561 : STD_LOGIC; 
  signal N1518 : STD_LOGIC; 
  signal Instr_17_F5MUX_562 : STD_LOGIC; 
  signal N1537 : STD_LOGIC; 
  signal Instr_17_BXINV_563 : STD_LOGIC; 
  signal N1536 : STD_LOGIC; 
  signal WrReg_1_F5MUX_564 : STD_LOGIC; 
  signal N1507 : STD_LOGIC; 
  signal WrReg_1_BXINV_565 : STD_LOGIC; 
  signal N1506 : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000_map10_F5MUX_566 : STD_LOGIC; 
  signal N1544 : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000_map10_BXINV_567 : STD_LOGIC; 
  signal N1545 : STD_LOGIC; 
  signal INW0_5_INBUF : STD_LOGIC; 
  signal INW1_2_INBUF : STD_LOGIC; 
  signal INW0_6_INBUF : STD_LOGIC; 
  signal INW1_3_INBUF : STD_LOGIC; 
  signal INW0_7_INBUF : STD_LOGIC; 
  signal INW1_4_INBUF : STD_LOGIC; 
  signal INW0_8_INBUF : STD_LOGIC; 
  signal INW1_5_INBUF : STD_LOGIC; 
  signal INW0_9_INBUF : STD_LOGIC; 
  signal INW1_6_INBUF : STD_LOGIC; 
  signal INW1_7_INBUF : STD_LOGIC; 
  signal INW1_8_INBUF : STD_LOGIC; 
  signal INW1_9_INBUF : STD_LOGIC; 
  signal OUTW0_10_O : STD_LOGIC; 
  signal OUTW0_10_OUTPUT_OTCLK1INV_568 : STD_LOGIC; 
  signal OUTW0_10_OUTPUT_OFF_OCEINV_569 : STD_LOGIC; 
  signal OUTW0_10_OUTPUT_OFF_O1INV_570 : STD_LOGIC; 
  signal OUTW0_11_O : STD_LOGIC; 
  signal OUTW0_11_OUTPUT_OTCLK1INV_571 : STD_LOGIC; 
  signal OUTW0_11_OUTPUT_OFF_OCEINV_572 : STD_LOGIC; 
  signal OUTW0_11_OUTPUT_OFF_O1INV_573 : STD_LOGIC; 
  signal OUTW0_12_O : STD_LOGIC; 
  signal OUTW0_12_OUTPUT_OTCLK1INV_574 : STD_LOGIC; 
  signal OUTW0_12_OUTPUT_OFF_OCEINV_575 : STD_LOGIC; 
  signal OUTW0_12_OUTPUT_OFF_O1INV_576 : STD_LOGIC; 
  signal OUTW0_13_O : STD_LOGIC; 
  signal OUTW0_13_OUTPUT_OTCLK1INV_577 : STD_LOGIC; 
  signal OUTW0_13_OUTPUT_OFF_OCEINV_578 : STD_LOGIC; 
  signal OUTW0_13_OUTPUT_OFF_O1INV_579 : STD_LOGIC; 
  signal OUTW0_14_O : STD_LOGIC; 
  signal OUTW0_14_OUTPUT_OTCLK1INV_580 : STD_LOGIC; 
  signal OUTW0_14_OUTPUT_OFF_OCEINV_581 : STD_LOGIC; 
  signal OUTW0_14_OUTPUT_OFF_O1INV_582 : STD_LOGIC; 
  signal OUTW0_15_O : STD_LOGIC; 
  signal OUTW0_15_OUTPUT_OTCLK1INV_583 : STD_LOGIC; 
  signal OUTW0_15_OUTPUT_OFF_OCEINV_584 : STD_LOGIC; 
  signal OUTW0_15_OUTPUT_OFF_O1INV_585 : STD_LOGIC; 
  signal OV_Flag_O : STD_LOGIC; 
  signal OV_Flag_OUTPUT_OTCLK1INV_586 : STD_LOGIC; 
  signal U_ALU_OVflag_587 : STD_LOGIC; 
  signal OV_Flag_OUTPUT_OFF_OCEINV_588 : STD_LOGIC; 
  signal OV_Flag_OUTPUT_OFF_O1INV_589 : STD_LOGIC; 
  signal INW0_10_INBUF : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000_map2_F5MUX_590 : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000_map2_F : STD_LOGIC; 
  signal U_New_PC_New_PC_or0000_map2_BXINV_591 : STD_LOGIC; 
  signal N1538 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_6_f5_F5MUX_592 : STD_LOGIC; 
  signal U_ALU_N231 : STD_LOGIC; 
  signal U_ALU_ALUOP_2_6_f5_BXINV_593 : STD_LOGIC; 
  signal U_ALU_N241 : STD_LOGIC; 
  signal Instr_0_F5MUX_594 : STD_LOGIC; 
  signal N1463 : STD_LOGIC; 
  signal Instr_0_BXINV_595 : STD_LOGIC; 
  signal N1462 : STD_LOGIC; 
  signal MemWr_F5MUX_596 : STD_LOGIC; 
  signal N1521 : STD_LOGIC; 
  signal MemWr_BXINV_597 : STD_LOGIC; 
  signal N1520 : STD_LOGIC; 
  signal WrReg_0_F5MUX_598 : STD_LOGIC; 
  signal N1523 : STD_LOGIC; 
  signal WrReg_0_BXINV_599 : STD_LOGIC; 
  signal N1522 : STD_LOGIC; 
  signal N81_F5MUX_600 : STD_LOGIC; 
  signal N1505 : STD_LOGIC; 
  signal N81_BXINV_601 : STD_LOGIC; 
  signal N1504 : STD_LOGIC; 
  signal ALUOP_0_F5MUX_602 : STD_LOGIC; 
  signal N1535 : STD_LOGIC; 
  signal ALUOP_0_BXINV_603 : STD_LOGIC; 
  signal N1534 : STD_LOGIC; 
  signal Instr_1_F5MUX_604 : STD_LOGIC; 
  signal N1531 : STD_LOGIC; 
  signal Instr_1_BXINV_605 : STD_LOGIC; 
  signal N1530 : STD_LOGIC; 
  signal Instr_2_F5MUX_606 : STD_LOGIC; 
  signal N1533 : STD_LOGIC; 
  signal Instr_2_BXINV_607 : STD_LOGIC; 
  signal N1532 : STD_LOGIC; 
  signal N1444_F5MUX_608 : STD_LOGIC; 
  signal N1497 : STD_LOGIC; 
  signal N1444_BXINV_609 : STD_LOGIC; 
  signal N1496 : STD_LOGIC; 
  signal Instr_18_F5MUX_610 : STD_LOGIC; 
  signal N1527 : STD_LOGIC; 
  signal Instr_18_BXINV_611 : STD_LOGIC; 
  signal N1526 : STD_LOGIC; 
  signal N1401_F5MUX_612 : STD_LOGIC; 
  signal N1401_F : STD_LOGIC; 
  signal N1401_BXINV_613 : STD_LOGIC; 
  signal N1464 : STD_LOGIC; 
  signal WRData_10_F5MUX_614 : STD_LOGIC; 
  signal N1513 : STD_LOGIC; 
  signal WRData_10_BXINV_615 : STD_LOGIC; 
  signal N1512 : STD_LOGIC; 
  signal WRData_11_F5MUX_616 : STD_LOGIC; 
  signal N1511 : STD_LOGIC; 
  signal WRData_11_BXINV_617 : STD_LOGIC; 
  signal N1510 : STD_LOGIC; 
  signal WRData_12_F5MUX_618 : STD_LOGIC; 
  signal N1473 : STD_LOGIC; 
  signal WRData_12_BXINV_619 : STD_LOGIC; 
  signal N1472 : STD_LOGIC; 
  signal WRData_13_F5MUX_620 : STD_LOGIC; 
  signal N1471 : STD_LOGIC; 
  signal WRData_13_BXINV_621 : STD_LOGIC; 
  signal N1470 : STD_LOGIC; 
  signal RdData1_1_G_RAMOUT : STD_LOGIC; 
  signal RdData1_10_G_RAMOUT : STD_LOGIC; 
  signal RdData1_2_G_RAMOUT : STD_LOGIC; 
  signal RdData1_11_G_RAMOUT : STD_LOGIC; 
  signal RdData2_1_G_RAMOUT : STD_LOGIC; 
  signal RdData2_2_G_RAMOUT : STD_LOGIC; 
  signal RdData2_3_G_RAMOUT : STD_LOGIC; 
  signal RdData2_4_G_RAMOUT : STD_LOGIC; 
  signal RdData2_5_G_RAMOUT : STD_LOGIC; 
  signal RdData1_3_G_RAMOUT : STD_LOGIC; 
  signal RdData1_12_G_RAMOUT : STD_LOGIC; 
  signal RdData1_13_G_RAMOUT : STD_LOGIC; 
  signal RdData2_6_G_RAMOUT : STD_LOGIC; 
  signal RdData2_7_G_RAMOUT : STD_LOGIC; 
  signal RdData2_8_G_RAMOUT : STD_LOGIC; 
  signal RdData2_9_G_RAMOUT : STD_LOGIC; 
  signal RdData2_10_G_RAMOUT : STD_LOGIC; 
  signal RdData2_11_G_RAMOUT : STD_LOGIC; 
  signal RdData1_4_G_RAMOUT : STD_LOGIC; 
  signal RdData2_12_G_RAMOUT : STD_LOGIC; 
  signal RdData1_5_G_RAMOUT : STD_LOGIC; 
  signal RdData2_13_G_RAMOUT : STD_LOGIC; 
  signal RdData1_14_G_RAMOUT : STD_LOGIC; 
  signal RdData1_6_G_RAMOUT : STD_LOGIC; 
  signal RdData2_14_G_RAMOUT : STD_LOGIC; 
  signal RdData1_15_G_RAMOUT : STD_LOGIC; 
  signal RdData1_7_G_RAMOUT : STD_LOGIC; 
  signal RdData2_15_G_RAMOUT : STD_LOGIC; 
  signal RdData1_8_G_RAMOUT : STD_LOGIC; 
  signal RdData1_0_G_RAMOUT : STD_LOGIC; 
  signal RdData1_9_G_RAMOUT : STD_LOGIC; 
  signal RdData2_0_G_RAMOUT : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal U_ALU_SUB17 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal WRData : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_ALU_ADD17 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_ALU_Madd_ADD17_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_PC_PC : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal U_New_PC_New_PC_addsub0000 : STD_LOGIC_VECTOR ( 5 downto 2 ); 
  signal WrReg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U_New_PC_Madd_New_PC_addsub0000_cy : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal U_ALU_Msub_SUB17_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U_ALU_FF1R : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal U_New_PC_PC_p2 : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal New_PC : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal U_DataMem_MemData : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RdData2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RdData1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_DataMem_OUTW0 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  WRData_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(3),
      O => WRData_3_0
    );
  WRData_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_3_33_O_pack_1,
      O => MUX_ALU_Y_3_33_O
    );
  MUX_ALU_Y_3_33 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X7Y12"
    )
    port map (
      ADR0 => MUX_ALU_Y_3_map7_0,
      ADR1 => Instr_8_0,
      ADR2 => U_DataMem_MemData_3_0,
      ADR3 => VCC,
      O => MUX_ALU_Y_3_33_O_pack_1
    );
  U_ALU_FF1R_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R(3),
      O => U_ALU_FF1R_3_0
    );
  U_ALU_FF1R_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_3_9_O_pack_1,
      O => U_ALU_FF1R_3_9_O
    );
  U_ALU_FF1R_3_9 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X11Y20"
    )
    port map (
      ADR0 => RdData2_9_0,
      ADR1 => RdData2_7_0,
      ADR2 => RdData2_8_0,
      ADR3 => RdData2_14_0,
      O => U_ALU_FF1R_3_9_O_pack_1
    );
  WRData_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(4),
      O => WRData_4_0
    );
  WRData_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_4_33_O_pack_1,
      O => MUX_ALU_Y_4_33_O
    );
  MUX_ALU_Y_4_33 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X7Y8"
    )
    port map (
      ADR0 => U_DataMem_MemData_4_0,
      ADR1 => Instr_8_0,
      ADR2 => MUX_ALU_Y_4_map7_0,
      ADR3 => VCC,
      O => MUX_ALU_Y_4_33_O_pack_1
    );
  U_ALU_Zflag_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ZFLAG1,
      O => U_ALU_Zflag_DXMUX_48
    );
  U_ALU_Zflag_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ZFLAG1_cmp_eq000029_O_pack_1,
      O => U_ALU_ZFLAG1_cmp_eq000029_O
    );
  U_ALU_Zflag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_ALU_Zflag_CLKINV_49
    );
  U_ALU_Zflag_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => CE_NF,
      O => U_ALU_Zflag_CEINV_50
    );
  N1421_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1421,
      O => N1421_0
    );
  N1421_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_7_O_pack_1,
      O => U_ALU_ALUOP_2_7_O
    );
  U_ALU_ALUOP_2_7 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X7Y21"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => U_ALU_N38_0,
      ADR2 => VCC,
      ADR3 => RdData2_5_0,
      O => U_ALU_ALUOP_2_7_O_pack_1
    );
  ALUOP_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_Q,
      O => ALUOP_2_0
    );
  ALUOP_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ROM_Mmux_Data8111_O_pack_1,
      O => U_ROM_Mmux_Data8111_O
    );
  U_ROM_Mmux_Data8111 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X14Y12"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(2),
      ADR2 => U_PC_PC(5),
      ADR3 => U_PC_PC(1),
      O => U_ROM_Mmux_Data8111_O_pack_1
    );
  ALU_Out_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_11_Q,
      O => ALU_Out_11_0
    );
  ALU_Out_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1427_pack_1,
      O => N1427
    );
  U_ALU_ALUOP_2_7_SW0 : X_LUT4
    generic map(
      INIT => X"2277",
      LOC => "SLICE_X9Y25"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => RdData2_11_0,
      ADR2 => VCC,
      ADR3 => U_ALU_ADD17(11),
      O => N1427_pack_1
    );
  ALU_Out_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_6_Q,
      O => ALU_Out_6_0
    );
  ALU_Out_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N40_pack_1,
      O => U_ALU_N40
    );
  U_ALU_ALUOP_2_77 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X6Y17"
    )
    port map (
      ADR0 => ALUOP_0_Q,
      ADR1 => U_ALU_ADD17(6),
      ADR2 => U_ALU_SUB17(6),
      ADR3 => VCC,
      O => U_ALU_N40_pack_1
    );
  ALU_Out_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_7_Q,
      O => ALU_Out_7_0
    );
  ALU_Out_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N42_pack_1,
      O => U_ALU_N42
    );
  U_ALU_ALUOP_2_78 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X6Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U_ALU_SUB17(7),
      ADR2 => ALUOP_0_Q,
      ADR3 => U_ALU_ADD17(7),
      O => U_ALU_N42_pack_1
    );
  ALU_Out_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_10_Q,
      O => ALU_Out_10_0
    );
  ALU_Out_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1429_pack_1,
      O => N1429
    );
  U_ALU_Mmux_Ys_7_SW0 : X_LUT4
    generic map(
      INIT => X"3355",
      LOC => "SLICE_X11Y19"
    )
    port map (
      ADR0 => U_ALU_ADD17(10),
      ADR1 => RdData2_10_0,
      ADR2 => VCC,
      ADR3 => ALUOP_2_0,
      O => N1429_pack_1
    );
  U_PC_PC_1_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_PC_p2(1),
      O => U_New_PC_PC_p2_1_0
    );
  U_PC_PC_1_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_1_1_GYMUX_52,
      O => U_PC_PC_1_1_DYMUX_51
    );
  U_PC_PC_1_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_1_1_GYMUX_52,
      O => New_PC_1_0
    );
  U_PC_PC_1_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC(1),
      O => U_PC_PC_1_1_GYMUX_52
    );
  U_PC_PC_1_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_1_1_CLKINV_53
    );
  U_New_PC_New_PC_1_1 : X_LUT4
    generic map(
      INIT => X"9955",
      LOC => "SLICE_X15Y8"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => Instr_0_Q,
      ADR2 => VCC,
      ADR3 => U_New_PC_New_PC_or0000,
      O => New_PC(1)
    );
  U_PC_PC_3_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_3_1_GYMUX_55,
      O => U_PC_PC_3_1_DYMUX_54
    );
  U_PC_PC_3_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_3_1_GYMUX_55,
      O => New_PC_3_0
    );
  U_PC_PC_3_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC(3),
      O => U_PC_PC_3_1_GYMUX_55
    );
  U_PC_PC_3_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_3_1_CLKINV_56
    );
  U_PC_PC_4_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_4_1_GYMUX_58,
      O => U_PC_PC_4_1_DYMUX_57
    );
  U_PC_PC_4_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_4_1_GYMUX_58,
      O => New_PC_4_0
    );
  U_PC_PC_4_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC(4),
      O => U_PC_PC_4_1_GYMUX_58
    );
  U_PC_PC_4_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_4_1_CLKINV_59
    );
  U_PC_PC_5_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_5_1_GYMUX_61,
      O => U_PC_PC_5_1_DYMUX_60
    );
  U_PC_PC_5_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_5_1_GYMUX_61,
      O => New_PC_5_0
    );
  U_PC_PC_5_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC(5),
      O => U_PC_PC_5_1_GYMUX_61
    );
  U_PC_PC_5_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_5_1_CLKINV_62
    );
  U_ALU_Nflag_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => N558,
      O => N558_0
    );
  U_ALU_Nflag_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Nflag_GYMUX_64,
      O => U_ALU_Nflag_DYMUX_63
    );
  U_ALU_Nflag_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Nflag_GYMUX_64,
      O => ALU_Out_15_0
    );
  U_ALU_Nflag_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_15_Q,
      O => U_ALU_Nflag_GYMUX_64
    );
  U_ALU_Nflag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_ALU_Nflag_CLKINV_65
    );
  U_ALU_Nflag_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => CE_NF,
      O => U_ALU_Nflag_CEINV_66
    );
  N75_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => N75,
      O => N75_0
    );
  N75_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => N18_pack_1,
      O => N18
    );
  U_Ctrl_RegWr21 : X_LUT4
    generic map(
      INIT => X"000C",
      LOC => "SLICE_X21Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U_PC_PC(1),
      ADR2 => U_PC_PC(2),
      ADR3 => U_PC_PC(5),
      O => N18_pack_1
    );
  U_DataMem_MemData_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(1),
      O => U_DataMem_MemData_1_0
    );
  U_DataMem_MemData_1_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_1_0,
      O => U_DataMem_MemData_1_DIF_MUX_67
    );
  U_DataMem_MemData_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(0),
      O => U_DataMem_MemData_0_0
    );
  U_DataMem_MemData_1_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_0_0,
      O => U_DataMem_MemData_1_DIG_MUX_68
    );
  U_DataMem_MemData_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_and0000_0,
      O => U_DataMem_MemData_1_SRINV_70
    );
  U_DataMem_MemData_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_DataMem_MemData_1_CLKINV_69
    );
  RdData2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(1),
      O => RdData2_1_0
    );
  RdData2_1_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_1_DIG_MUX_72,
      O => RdData2_1_DIF_MUX_71
    );
  RdData2_1_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_1_0,
      O => RdData2_1_DIG_MUX_72
    );
  RdData2_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_1_SRINV_74
    );
  RdData2_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_1_CLKINV_73
    );
  RdData2_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(2),
      O => RdData2_2_0
    );
  RdData2_2_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_2_DIG_MUX_76,
      O => RdData2_2_DIF_MUX_75
    );
  RdData2_2_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_2_0,
      O => RdData2_2_DIG_MUX_76
    );
  RdData2_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_2_SRINV_78
    );
  RdData2_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_2_CLKINV_77
    );
  RdData2_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(3),
      O => RdData2_3_0
    );
  RdData2_3_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_3_DIG_MUX_80,
      O => RdData2_3_DIF_MUX_79
    );
  RdData2_3_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_3_0,
      O => RdData2_3_DIG_MUX_80
    );
  RdData2_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_3_SRINV_82
    );
  RdData2_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_3_CLKINV_81
    );
  U_ROM_Mmux_Data21_map27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ROM_Mmux_Data21_map27,
      O => U_ROM_Mmux_Data21_map27_0
    );
  U_ROM_Mmux_Data21_map27_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_RegDest_Y_0_76_O_pack_1,
      O => MUX_RegDest_Y_0_76_O
    );
  MUX_RegDest_Y_0_76 : X_LUT4
    generic map(
      INIT => X"1111",
      LOC => "SLICE_X19Y6"
    )
    port map (
      ADR0 => U_PC_PC(5),
      ADR1 => U_PC_PC(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => MUX_RegDest_Y_0_76_O_pack_1
    );
  N14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  N14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => N17_pack_1,
      O => N17
    );
  U_New_PC_New_PC_or000031 : X_LUT4
    generic map(
      INIT => X"7F7F",
      LOC => "SLICE_X12Y11"
    )
    port map (
      ADR0 => U_PC_PC(2),
      ADR1 => U_PC_PC(3),
      ADR2 => U_PC_PC(1),
      ADR3 => VCC,
      O => N17_pack_1
    );
  Instr_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_7_Q,
      O => Instr_7_0
    );
  Instr_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ROM_Mmux_Data2127_O_pack_1,
      O => U_ROM_Mmux_Data2127_O
    );
  U_ROM_Mmux_Data2127 : X_LUT4
    generic map(
      INIT => X"0130",
      LOC => "SLICE_X16Y6"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => N4_0,
      ADR2 => U_PC_PC(5),
      ADR3 => U_PC_PC(2),
      O => U_ROM_Mmux_Data2127_O_pack_1
    );
  Instr_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_10_Q,
      O => Instr_10_0
    );
  Instr_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1489_pack_1,
      O => N1489
    );
  Instr_10_2_SW1 : X_LUT4
    generic map(
      INIT => X"BFFD",
      LOC => "SLICE_X13Y17"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(1),
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(2),
      O => N1489_pack_1
    );
  U_ALU_FF1R_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R(4),
      O => U_ALU_FF1R_4_0
    );
  U_ALU_FF1R_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N192_pack_1,
      O => U_ALU_N192
    );
  U_ALU_FF1R_16_121 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X7Y19"
    )
    port map (
      ADR0 => RdData2_7_0,
      ADR1 => RdData2_10_0,
      ADR2 => RdData2_8_0,
      ADR3 => RdData2_9_0,
      O => U_ALU_N192_pack_1
    );
  Instr_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_4_Q,
      O => Instr_4_0
    );
  Instr_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => N305_pack_1,
      O => N305
    );
  U_ROM_Mmux_Data18_SW0 : X_LUT4
    generic map(
      INIT => X"EBEB",
      LOC => "SLICE_X12Y10"
    )
    port map (
      ADR0 => U_PC_PC(2),
      ADR1 => U_PC_PC(3),
      ADR2 => U_PC_PC(1),
      ADR3 => VCC,
      O => N305_pack_1
    );
  Instr_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_15_Q,
      O => Instr_15_0
    );
  Instr_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => N16_pack_1,
      O => N16
    );
  U_ROM_Mmux_Data61125 : X_LUT4
    generic map(
      INIT => X"044B",
      LOC => "SLICE_X16Y8"
    )
    port map (
      ADR0 => U_PC_PC_1_2_4,
      ADR1 => N1394_0,
      ADR2 => U_PC_PC_5_2_5,
      ADR3 => U_PC_PC_2_1_3,
      O => N16_pack_1
    );
  MUX_ALU_Y_12_map11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_12_map11,
      O => MUX_ALU_Y_12_map11_0
    );
  MUX_ALU_Y_12_map11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_12_18_O_pack_1,
      O => MUX_ALU_Y_12_18_O
    );
  MUX_ALU_Y_12_18 : X_LUT4
    generic map(
      INIT => X"F0E2",
      LOC => "SLICE_X7Y22"
    )
    port map (
      ADR0 => INW0_12_IBUF_7,
      ADR1 => Instr_5_0,
      ADR2 => INW1_12_IBUF_6,
      ADR3 => Instr_4_0,
      O => MUX_ALU_Y_12_18_O_pack_1
    );
  MUX_ALU_Y_13_map11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_13_map11,
      O => MUX_ALU_Y_13_map11_0
    );
  MUX_ALU_Y_13_map11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_13_18_O_pack_1,
      O => MUX_ALU_Y_13_18_O
    );
  MUX_ALU_Y_13_18 : X_LUT4
    generic map(
      INIT => X"CCCA",
      LOC => "SLICE_X19Y14"
    )
    port map (
      ADR0 => INW0_13_IBUF_9,
      ADR1 => INW1_13_IBUF_8,
      ADR2 => Instr_5_0,
      ADR3 => Instr_4_0,
      O => MUX_ALU_Y_13_18_O_pack_1
    );
  N14111_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => N14111,
      O => N14111_0
    );
  N14111_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ZFLAG1_cmp_eq000076_SW0_SW0_SW0_SW1_O_pack_1,
      O => U_ALU_ZFLAG1_cmp_eq000076_SW0_SW0_SW0_SW1_O
    );
  U_ALU_ZFLAG1_cmp_eq000076_SW0_SW0_SW0_SW1 : X_LUT4
    generic map(
      INIT => X"FF01",
      LOC => "SLICE_X9Y23"
    )
    port map (
      ADR0 => U_ALU_SUB17(12),
      ADR1 => U_ALU_SUB17(14),
      ADR2 => U_ALU_SUB17(13),
      ADR3 => ALUOP_2_0,
      O => U_ALU_ZFLAG1_cmp_eq000076_SW0_SW0_SW0_SW1_O_pack_1
    );
  MUX_ALU_Y_14_map11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_14_map11,
      O => MUX_ALU_Y_14_map11_0
    );
  MUX_ALU_Y_14_map11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_14_18_O_pack_1,
      O => MUX_ALU_Y_14_18_O
    );
  MUX_ALU_Y_14_18 : X_LUT4
    generic map(
      INIT => X"CDC8",
      LOC => "SLICE_X18Y17"
    )
    port map (
      ADR0 => Instr_4_0,
      ADR1 => INW1_14_IBUF_10,
      ADR2 => Instr_5_0,
      ADR3 => INW0_14_IBUF_11,
      O => MUX_ALU_Y_14_18_O_pack_1
    );
  MUX_ALU_Y_15_map11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_15_map11,
      O => MUX_ALU_Y_15_map11_0
    );
  MUX_ALU_Y_15_map11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_15_18_O_pack_1,
      O => MUX_ALU_Y_15_18_O
    );
  MUX_ALU_Y_15_18 : X_LUT4
    generic map(
      INIT => X"F0E2",
      LOC => "SLICE_X13Y23"
    )
    port map (
      ADR0 => INW0_15_IBUF_13,
      ADR1 => Instr_5_0,
      ADR2 => INW1_15_IBUF_12,
      ADR3 => Instr_4_0,
      O => MUX_ALU_Y_15_18_O_pack_1
    );
  N1436_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1436,
      O => N1436_0
    );
  N1436_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_0_145_SW1_F_O_pack_1,
      O => U_ALU_FF1R_0_145_SW1_F_O
    );
  U_ALU_FF1R_0_145_SW1_F : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X9Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData2_1_0,
      ADR2 => VCC,
      ADR3 => RdData2_0_0,
      O => U_ALU_FF1R_0_145_SW1_F_O_pack_1
    );
  U_ALU_N92_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N92,
      O => U_ALU_N92_0
    );
  U_ALU_N92_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_2_map2_pack_1,
      O => U_ALU_FF1R_2_map2
    );
  U_ALU_FF1R_2_4 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X7Y17"
    )
    port map (
      ADR0 => RdData2_3_0,
      ADR1 => RdData2_6_0,
      ADR2 => RdData2_4_0,
      ADR3 => RdData2_5_0,
      O => U_ALU_FF1R_2_map2_pack_1
    );
  WRData_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(0),
      O => WRData_0_0
    );
  WRData_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_0_33_O_pack_1,
      O => MUX_ALU_Y_0_33_O
    );
  MUX_ALU_Y_0_33 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X11Y10"
    )
    port map (
      ADR0 => U_DataMem_MemData_0_0,
      ADR1 => MUX_ALU_Y_0_map7_0,
      ADR2 => Instr_8_0,
      ADR3 => VCC,
      O => MUX_ALU_Y_0_33_O_pack_1
    );
  WRData_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(1),
      O => WRData_1_0
    );
  WRData_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_1_33_O_pack_1,
      O => MUX_ALU_Y_1_33_O
    );
  MUX_ALU_Y_1_33 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X8Y9"
    )
    port map (
      ADR0 => U_DataMem_MemData_1_0,
      ADR1 => MUX_ALU_Y_1_map7_0,
      ADR2 => Instr_8_0,
      ADR3 => VCC,
      O => MUX_ALU_Y_1_33_O_pack_1
    );
  ALU_Out_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_8_Q,
      O => ALU_Out_8_0
    );
  ALU_Out_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1433_pack_1,
      O => N1433
    );
  U_ALU_ALUOP_2_79_SW0 : X_LUT4
    generic map(
      INIT => X"0C3F",
      LOC => "SLICE_X6Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALUOP_2_0,
      ADR2 => RdData2_8_0,
      ADR3 => U_ALU_ADD17(8),
      O => N1433_pack_1
    );
  ALU_Out_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_9_Q,
      O => ALU_Out_9_0
    );
  ALU_Out_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1431_pack_1,
      O => N1431
    );
  U_ALU_ALUOP_2_710_SW0 : X_LUT4
    generic map(
      INIT => X"1B1B",
      LOC => "SLICE_X9Y24"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => U_ALU_ADD17(9),
      ADR2 => RdData2_9_0,
      ADR3 => VCC,
      O => N1431_pack_1
    );
  U_ALU_FF1R_0_map16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_0_map16,
      O => U_ALU_FF1R_0_map16_0
    );
  U_ALU_FF1R_0_map16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_0_51_O_pack_1,
      O => U_ALU_FF1R_0_51_O
    );
  U_ALU_FF1R_0_51 : X_LUT4
    generic map(
      INIT => X"FDF8",
      LOC => "SLICE_X10Y16"
    )
    port map (
      ADR0 => U_ALU_FF1R_0_map2_0,
      ADR1 => N1401,
      ADR2 => RdData2_6_0,
      ADR3 => N1400_0,
      O => U_ALU_FF1R_0_51_O_pack_1
    );
  WRData_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(2),
      O => WRData_2_0
    );
  WRData_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_2_33_O_pack_1,
      O => MUX_ALU_Y_2_33_O
    );
  MUX_ALU_Y_2_33 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X6Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Instr_8_0,
      ADR2 => U_DataMem_MemData_2_0,
      ADR3 => MUX_ALU_Y_2_map7_0,
      O => MUX_ALU_Y_2_33_O_pack_1
    );
  U_ALU_FF1R_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R(2),
      O => U_ALU_FF1R_2_0
    );
  U_ALU_FF1R_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_2_30_O_pack_1,
      O => U_ALU_FF1R_2_30_O
    );
  U_ALU_FF1R_2_30 : X_LUT4
    generic map(
      INIT => X"0101",
      LOC => "SLICE_X7Y16"
    )
    port map (
      ADR0 => RdData2_2_0,
      ADR1 => RdData2_1_0,
      ADR2 => RdData2_0_0,
      ADR3 => VCC,
      O => U_ALU_FF1R_2_30_O_pack_1
    );
  U_ALU_FF1R_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R(1),
      O => U_ALU_FF1R_1_0_14
    );
  U_ALU_FF1R_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_1_33_O_pack_1,
      O => U_ALU_FF1R_1_33_O
    );
  U_ALU_FF1R_1_33 : X_LUT4
    generic map(
      INIT => X"FAF8",
      LOC => "SLICE_X7Y10"
    )
    port map (
      ADR0 => U_ALU_FF1R_1_map11_0,
      ADR1 => U_ALU_FF1R_1_map7_0,
      ADR2 => U_ALU_FF1R_1_map1_0,
      ADR3 => U_ALU_FF1R_1_map2_0,
      O => U_ALU_FF1R_1_33_O_pack_1
    );
  WRData_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_14_F5MUX_83,
      O => WRData(14)
    );
  WRData_14_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X11Y22"
    )
    port map (
      IA => N1468,
      IB => N1469,
      SEL => WRData_14_BXINV_84,
      O => WRData_14_F5MUX_83
    );
  WRData_14_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_0_Q,
      O => WRData_14_BXINV_84
    );
  WRData_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_15_F5MUX_85,
      O => WRData(15)
    );
  WRData_15_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y21"
    )
    port map (
      IA => N1474,
      IB => N1475,
      SEL => WRData_15_BXINV_86,
      O => WRData_15_F5MUX_85
    );
  WRData_15_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => WRData_15_BXINV_86
    );
  U_ALU_ALUOP_2_5_f54_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_5_f54_F5MUX_87,
      O => U_ALU_ALUOP_2_5_f54
    );
  U_ALU_ALUOP_2_5_f54_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X11Y21"
    )
    port map (
      IA => U_ALU_N141,
      IB => U_ALU_N131,
      SEL => U_ALU_ALUOP_2_5_f54_BXINV_88,
      O => U_ALU_ALUOP_2_5_f54_F5MUX_87
    );
  U_ALU_ALUOP_2_5_f54_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => U_ALU_ALUOP_2_5_f54_BXINV_88
    );
  U_ALU_Cflag_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Cflag_F5MUX_90,
      O => U_ALU_Cflag_DXMUX_89
    );
  U_ALU_Cflag_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y20"
    )
    port map (
      IA => N1542,
      IB => N1541,
      SEL => U_ALU_Cflag_BXINV_91,
      O => U_ALU_Cflag_F5MUX_90
    );
  U_ALU_Cflag_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_14_CYMUXFAST_373,
      O => U_ALU_Cflag_BXINV_91
    );
  U_ALU_Cflag_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_ALU_Cflag_CLKINV_92
    );
  U_ALU_Cflag_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => CE_NF,
      O => U_ALU_Cflag_CEINV_93
    );
  U_ALU_ALUOP_2_62 : X_LUT4
    generic map(
      INIT => X"8D88",
      LOC => "SLICE_X14Y20"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => U_ALU_ALUOP_2_6_f5,
      ADR2 => ALUOP_0_Q,
      ADR3 => U_ALU_Madd_ADD17_cy(15),
      O => N1542
    );
  WRData_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_5_F5MUX_94,
      O => WRData(5)
    );
  WRData_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X7Y11"
    )
    port map (
      IA => N1502,
      IB => N1503,
      SEL => WRData_5_BXINV_95,
      O => WRData_5_F5MUX_94
    );
  WRData_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => N0,
      O => WRData_5_BXINV_95
    );
  WRData_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_6_F5MUX_96,
      O => WRData(6)
    );
  WRData_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X7Y13"
    )
    port map (
      IA => N1500,
      IB => N1501,
      SEL => WRData_6_BXINV_97,
      O => WRData_6_F5MUX_96
    );
  WRData_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => N0,
      O => WRData_6_BXINV_97
    );
  N0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => N0_F5MUX_98,
      O => N0
    );
  N0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y14"
    )
    port map (
      IA => N1494,
      IB => N1495,
      SEL => N0_BXINV_99,
      O => N0_F5MUX_98
    );
  N0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(2),
      O => N0_BXINV_99
    );
  WRData_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_7_F5MUX_100,
      O => WRData(7)
    );
  WRData_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X7Y18"
    )
    port map (
      IA => N1498,
      IB => N1499,
      SEL => WRData_7_BXINV_101,
      O => WRData_7_F5MUX_100
    );
  WRData_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => N0,
      O => WRData_7_BXINV_101
    );
  WRData_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_8_F5MUX_102,
      O => WRData(8)
    );
  WRData_8_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X7Y20"
    )
    port map (
      IA => N1516,
      IB => N1517,
      SEL => WRData_8_BXINV_103,
      O => WRData_8_F5MUX_102
    );
  WRData_8_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => N0,
      O => WRData_8_BXINV_103
    );
  WRData_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_9_F5MUX_104,
      O => WRData(9)
    );
  WRData_9_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X8Y24"
    )
    port map (
      IA => N1514,
      IB => N1515,
      SEL => WRData_9_BXINV_105,
      O => WRData_9_F5MUX_104
    );
  WRData_9_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => N0,
      O => WRData_9_BXINV_105
    );
  CE_NF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => CE_NF_F5MUX_106,
      O => CE_NF
    );
  CE_NF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      IA => N1508,
      IB => N1509,
      SEL => CE_NF_BXINV_107,
      O => CE_NF_F5MUX_106
    );
  CE_NF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(2),
      O => CE_NF_BXINV_107
    );
  N1460_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1460_F5MUX_108,
      O => N1460
    );
  N1460_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y20"
    )
    port map (
      IA => N1543,
      IB => N1460_F,
      SEL => N1460_BXINV_109,
      O => N1460_F5MUX_108
    );
  N1460_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_15_0,
      O => N1460_BXINV_109
    );
  Instr_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_8_Q,
      O => Instr_8_0
    );
  Instr_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ROM_Mmux_Data612_O_pack_1,
      O => U_ROM_Mmux_Data612_O
    );
  U_ROM_Mmux_Data612 : X_LUT4
    generic map(
      INIT => X"CCCE",
      LOC => "SLICE_X13Y11"
    )
    port map (
      ADR0 => N23_0,
      ADR1 => N16,
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(4),
      O => U_ROM_Mmux_Data612_O_pack_1
    );
  U_Ctrl_RegWr_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0208",
      LOC => "SLICE_X12Y13"
    )
    port map (
      ADR0 => N1_0,
      ADR1 => U_PC_PC(3),
      ADR2 => U_PC_PC(4),
      ADR3 => U_PC_PC(1),
      O => U_Ctrl_RegWr_cmp_eq000011_O_pack_1
    );
  Instr_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_5_Q,
      O => Instr_5_0
    );
  Instr_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_Ctrl_RegWr_cmp_eq000011_O_pack_1,
      O => U_Ctrl_RegWr_cmp_eq000011_O
    );
  RdData2_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(4),
      O => RdData2_4_0
    );
  RdData2_4_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_4_DIG_MUX_111,
      O => RdData2_4_DIF_MUX_110
    );
  RdData2_4_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_4_0,
      O => RdData2_4_DIG_MUX_111
    );
  RdData2_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_4_SRINV_113
    );
  RdData2_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_4_CLKINV_112
    );
  RdData2_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(5),
      O => RdData2_5_0
    );
  RdData2_5_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_5_DIG_MUX_115,
      O => RdData2_5_DIF_MUX_114
    );
  RdData2_5_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(5),
      O => RdData2_5_DIG_MUX_115
    );
  RdData2_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_5_SRINV_117
    );
  RdData2_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_5_CLKINV_116
    );
  RdData2_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(6),
      O => RdData2_6_0
    );
  RdData2_6_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_6_DIG_MUX_119,
      O => RdData2_6_DIF_MUX_118
    );
  RdData2_6_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(6),
      O => RdData2_6_DIG_MUX_119
    );
  RdData2_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_6_SRINV_121
    );
  RdData2_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_6_CLKINV_120
    );
  N1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1,
      O => N1_0
    );
  N1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => N23,
      O => N23_0
    );
  U_ROM_Mmux_Data821 : X_LUT4
    generic map(
      INIT => X"3F3F",
      LOC => "SLICE_X12Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U_PC_PC(2),
      ADR2 => U_PC_PC(5),
      ADR3 => VCC,
      O => N23
    );
  RdData2_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(7),
      O => RdData2_7_0
    );
  RdData2_7_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_7_DIG_MUX_123,
      O => RdData2_7_DIF_MUX_122
    );
  RdData2_7_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(7),
      O => RdData2_7_DIG_MUX_123
    );
  RdData2_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_7_SRINV_125
    );
  RdData2_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_7_CLKINV_124
    );
  RdData2_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(8),
      O => RdData2_8_0
    );
  RdData2_8_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_8_DIG_MUX_127,
      O => RdData2_8_DIF_MUX_126
    );
  RdData2_8_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(8),
      O => RdData2_8_DIG_MUX_127
    );
  RdData2_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_8_SRINV_129
    );
  RdData2_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_8_CLKINV_128
    );
  RdData2_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(9),
      O => RdData2_9_0
    );
  RdData2_9_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_9_DIG_MUX_131,
      O => RdData2_9_DIF_MUX_130
    );
  RdData2_9_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(9),
      O => RdData2_9_DIG_MUX_131
    );
  RdData2_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_9_SRINV_133
    );
  RdData2_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_9_CLKINV_132
    );
  U_PC_PC_1_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC_1_0,
      O => U_PC_PC_1_2_DYMUX_134
    );
  U_PC_PC_1_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_1_2_CLKINV_135
    );
  U_PC_PC_2_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC_2_0,
      O => U_PC_PC_2_2_DYMUX_136
    );
  U_PC_PC_2_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_2_2_CLKINV_137
    );
  U_PC_PC_3_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC_3_0,
      O => U_PC_PC_3_2_DYMUX_138
    );
  U_PC_PC_3_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_3_2_CLKINV_139
    );
  U_PC_PC_4_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC_4_0,
      O => U_PC_PC_4_2_DYMUX_140
    );
  U_PC_PC_4_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_4_2_CLKINV_141
    );
  U_PC_PC_5_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC_5_0,
      O => U_PC_PC_5_2_DYMUX_142
    );
  U_PC_PC_5_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_5_2_CLKINV_143
    );
  N1413_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1413,
      O => N1413_0
    );
  U_ROM_Mmux_Data62_SW0 : X_LUT4
    generic map(
      INIT => X"7AF0",
      LOC => "SLICE_X17Y7"
    )
    port map (
      ADR0 => U_PC_PC_5_1_19,
      ADR1 => U_PC_PC_1_2_4,
      ADR2 => U_PC_PC_3_2_22,
      ADR3 => U_PC_PC_2_2_21,
      O => N1413
    );
  N1272_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1272,
      O => N1272_0
    );
  N1272_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  U_ROM_Mmux_Data1931 : X_LUT4
    generic map(
      INIT => X"0124",
      LOC => "SLICE_X17Y13"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(2),
      O => N11
    );
  RdData2_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(10),
      O => RdData2_10_0
    );
  RdData2_10_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_10_DIG_MUX_145,
      O => RdData2_10_DIF_MUX_144
    );
  RdData2_10_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(10),
      O => RdData2_10_DIG_MUX_145
    );
  RdData2_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_10_SRINV_147
    );
  RdData2_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_10_CLKINV_146
    );
  RdData2_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(11),
      O => RdData2_11_0
    );
  RdData2_11_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_11_DIG_MUX_149,
      O => RdData2_11_DIF_MUX_148
    );
  RdData2_11_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(11),
      O => RdData2_11_DIG_MUX_149
    );
  RdData2_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_11_SRINV_151
    );
  RdData2_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_11_CLKINV_150
    );
  U_DataMem_MemData_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(3),
      O => U_DataMem_MemData_3_0
    );
  U_DataMem_MemData_3_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_3_0,
      O => U_DataMem_MemData_3_DIF_MUX_152
    );
  U_DataMem_MemData_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(2),
      O => U_DataMem_MemData_2_0
    );
  U_DataMem_MemData_3_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_2_0,
      O => U_DataMem_MemData_3_DIG_MUX_153
    );
  U_DataMem_MemData_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_and0000_0,
      O => U_DataMem_MemData_3_SRINV_155
    );
  U_DataMem_MemData_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_DataMem_MemData_3_CLKINV_154
    );
  RdData1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(0),
      O => RdData1_0_0
    );
  RdData1_0_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_0_DIG_MUX_157,
      O => RdData1_0_DIF_MUX_156
    );
  RdData1_0_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_0_0,
      O => RdData1_0_DIG_MUX_157
    );
  RdData1_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_0_SRINV_159
    );
  RdData1_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_0_CLKINV_158
    );
  RdData1_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(9),
      O => RdData1_9_0
    );
  RdData1_9_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_9_DIG_MUX_161,
      O => RdData1_9_DIF_MUX_160
    );
  RdData1_9_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(9),
      O => RdData1_9_DIG_MUX_161
    );
  RdData1_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_9_SRINV_163
    );
  RdData1_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_9_CLKINV_162
    );
  RdData1_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(1),
      O => RdData1_1_0
    );
  RdData1_1_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_1_DIG_MUX_165,
      O => RdData1_1_DIF_MUX_164
    );
  RdData1_1_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_1_0,
      O => RdData1_1_DIG_MUX_165
    );
  RdData1_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_1_SRINV_167
    );
  RdData1_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_1_CLKINV_166
    );
  U_DataMem_MemData_9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(9),
      O => U_DataMem_MemData_9_0
    );
  U_DataMem_MemData_9_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_9_0,
      O => U_DataMem_MemData_9_DIF_MUX_168
    );
  U_DataMem_MemData_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(8),
      O => U_DataMem_MemData_8_0
    );
  U_DataMem_MemData_9_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_8_0,
      O => U_DataMem_MemData_9_DIG_MUX_169
    );
  U_DataMem_MemData_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_and0000_0,
      O => U_DataMem_MemData_9_SRINV_171
    );
  U_DataMem_MemData_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_DataMem_MemData_9_CLKINV_170
    );
  RdData1_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(10),
      O => RdData1_10_0
    );
  RdData1_10_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_10_DIG_MUX_173,
      O => RdData1_10_DIF_MUX_172
    );
  RdData1_10_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(10),
      O => RdData1_10_DIG_MUX_173
    );
  RdData1_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_10_SRINV_175
    );
  RdData1_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_10_CLKINV_174
    );
  RdData1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(2),
      O => RdData1_2_0
    );
  RdData1_2_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_2_DIG_MUX_177,
      O => RdData1_2_DIF_MUX_176
    );
  RdData1_2_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_2_0,
      O => RdData1_2_DIG_MUX_177
    );
  RdData1_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_2_SRINV_179
    );
  RdData1_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_2_CLKINV_178
    );
  RdData1_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(11),
      O => RdData1_11_0
    );
  RdData1_11_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_11_DIG_MUX_181,
      O => RdData1_11_DIF_MUX_180
    );
  RdData1_11_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(11),
      O => RdData1_11_DIG_MUX_181
    );
  RdData1_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_11_SRINV_183
    );
  RdData1_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_11_CLKINV_182
    );
  RdData1_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(3),
      O => RdData1_3_0
    );
  RdData1_3_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_3_DIG_MUX_185,
      O => RdData1_3_DIF_MUX_184
    );
  RdData1_3_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_3_0,
      O => RdData1_3_DIG_MUX_185
    );
  RdData1_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_3_SRINV_187
    );
  RdData1_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_3_CLKINV_186
    );
  RdData1_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(12),
      O => RdData1_12_0
    );
  RdData1_12_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_12_DIG_MUX_189,
      O => RdData1_12_DIF_MUX_188
    );
  RdData1_12_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(12),
      O => RdData1_12_DIG_MUX_189
    );
  RdData1_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_12_SRINV_191
    );
  RdData1_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_12_CLKINV_190
    );
  RdData1_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(13),
      O => RdData1_13_0
    );
  RdData1_13_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_13_DIG_MUX_193,
      O => RdData1_13_DIF_MUX_192
    );
  RdData1_13_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(13),
      O => RdData1_13_DIG_MUX_193
    );
  RdData1_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_13_SRINV_195
    );
  RdData1_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_13_CLKINV_194
    );
  U_ALU_ZFLAG1_cmp_eq0000_map6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ZFLAG1_cmp_eq0000_map6,
      O => U_ALU_ZFLAG1_cmp_eq0000_map6_0
    );
  U_ALU_ZFLAG1_cmp_eq000012 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X7Y14"
    )
    port map (
      ADR0 => ALU_Out_1_Q,
      ADR1 => ALU_Out_2_Q,
      ADR2 => ALU_Out_3_Q,
      ADR3 => ALU_Out_4_Q,
      O => U_ALU_ZFLAG1_cmp_eq0000_map6
    );
  N1425_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1425,
      O => N1425_0
    );
  U_ALU_OVFLAG1_or0000 : X_LUT4
    generic map(
      INIT => X"0081",
      LOC => "SLICE_X14Y17"
    )
    port map (
      ADR0 => U_ALU_ALUOP_2_5_f54,
      ADR1 => N558_0,
      ADR2 => RdData1_15_0,
      ADR3 => ALUOP_2_0,
      O => U_ALU_OVFLAG1
    );
  U_ALU_FF1R_0_map2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_0_map2,
      O => U_ALU_FF1R_0_map2_0
    );
  U_ALU_FF1R_0_map2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1423,
      O => N1423_0
    );
  U_ALU_ALUOP_2_72_SW0 : X_LUT4
    generic map(
      INIT => X"2277",
      LOC => "SLICE_X10Y21"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => RdData2_13_0,
      ADR2 => VCC,
      ADR3 => U_ALU_ADD17(13),
      O => N1423
    );
  U_DataMem_MemData_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y27",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(11),
      O => U_DataMem_MemData_11_0
    );
  U_DataMem_MemData_11_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y27",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_11_0,
      O => U_DataMem_MemData_11_DIF_MUX_196
    );
  U_DataMem_MemData_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y27",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(10),
      O => U_DataMem_MemData_10_0
    );
  U_DataMem_MemData_11_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y27",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_10_0,
      O => U_DataMem_MemData_11_DIG_MUX_197
    );
  U_DataMem_MemData_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y27",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_and0000_0,
      O => U_DataMem_MemData_11_SRINV_199
    );
  U_DataMem_MemData_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y27",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_DataMem_MemData_11_CLKINV_198
    );
  RdData1_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(4),
      O => RdData1_4_0
    );
  RdData1_4_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_4_DIG_MUX_201,
      O => RdData1_4_DIF_MUX_200
    );
  RdData1_4_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_4_0,
      O => RdData1_4_DIG_MUX_201
    );
  RdData1_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_4_SRINV_203
    );
  RdData1_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_4_CLKINV_202
    );
  RdData2_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(12),
      O => RdData2_12_0
    );
  RdData2_12_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_12_DIG_MUX_205,
      O => RdData2_12_DIF_MUX_204
    );
  RdData2_12_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(12),
      O => RdData2_12_DIG_MUX_205
    );
  RdData2_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_12_SRINV_207
    );
  RdData2_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_12_CLKINV_206
    );
  RdData1_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(5),
      O => RdData1_5_0
    );
  RdData1_5_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_5_DIG_MUX_209,
      O => RdData1_5_DIF_MUX_208
    );
  RdData1_5_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(5),
      O => RdData1_5_DIG_MUX_209
    );
  RdData1_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_5_SRINV_211
    );
  RdData1_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_5_CLKINV_210
    );
  RdData2_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(13),
      O => RdData2_13_0
    );
  RdData2_13_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_13_DIG_MUX_213,
      O => RdData2_13_DIF_MUX_212
    );
  RdData2_13_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(13),
      O => RdData2_13_DIG_MUX_213
    );
  RdData2_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_13_SRINV_215
    );
  RdData2_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_13_CLKINV_214
    );
  U_DataMem_MemData_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(5),
      O => U_DataMem_MemData_5_0
    );
  U_DataMem_MemData_5_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_5_0,
      O => U_DataMem_MemData_5_DIF_MUX_216
    );
  U_DataMem_MemData_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(4),
      O => U_DataMem_MemData_4_0
    );
  U_DataMem_MemData_5_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_4_0,
      O => U_DataMem_MemData_5_DIG_MUX_217
    );
  U_DataMem_MemData_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_and0000_0,
      O => U_DataMem_MemData_5_SRINV_219
    );
  U_DataMem_MemData_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_DataMem_MemData_5_CLKINV_218
    );
  RdData1_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(14),
      O => RdData1_14_0
    );
  RdData1_14_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_14_DIG_MUX_221,
      O => RdData1_14_DIF_MUX_220
    );
  RdData1_14_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(14),
      O => RdData1_14_DIG_MUX_221
    );
  RdData1_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_14_SRINV_223
    );
  RdData1_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_14_CLKINV_222
    );
  RdData1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(6),
      O => RdData1_6_0
    );
  RdData1_6_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_6_DIG_MUX_225,
      O => RdData1_6_DIF_MUX_224
    );
  RdData1_6_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(6),
      O => RdData1_6_DIG_MUX_225
    );
  RdData1_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_6_SRINV_227
    );
  RdData1_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_6_CLKINV_226
    );
  RdData2_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(14),
      O => RdData2_14_0
    );
  RdData2_14_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_14_DIG_MUX_229,
      O => RdData2_14_DIF_MUX_228
    );
  RdData2_14_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(14),
      O => RdData2_14_DIG_MUX_229
    );
  RdData2_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_14_SRINV_231
    );
  RdData2_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_14_CLKINV_230
    );
  RdData1_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(15),
      O => RdData1_15_0
    );
  RdData1_15_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_15_DIG_MUX_233,
      O => RdData1_15_DIF_MUX_232
    );
  RdData1_15_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(15),
      O => RdData1_15_DIG_MUX_233
    );
  RdData1_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_15_SRINV_235
    );
  RdData1_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_15_CLKINV_234
    );
  RdData1_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(7),
      O => RdData1_7_0
    );
  RdData1_7_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_7_DIG_MUX_237,
      O => RdData1_7_DIF_MUX_236
    );
  RdData1_7_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(7),
      O => RdData1_7_DIG_MUX_237
    );
  RdData1_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_7_SRINV_239
    );
  RdData1_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_7_CLKINV_238
    );
  RdData2_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(15),
      O => RdData2_15_0
    );
  RdData2_15_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_15_DIG_MUX_241,
      O => RdData2_15_DIF_MUX_240
    );
  RdData2_15_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(15),
      O => RdData2_15_DIG_MUX_241
    );
  RdData2_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_15_SRINV_243
    );
  RdData2_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_15_CLKINV_242
    );
  U_DataMem_MemData_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(7),
      O => U_DataMem_MemData_7_0
    );
  U_DataMem_MemData_7_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_7_0,
      O => U_DataMem_MemData_7_DIF_MUX_244
    );
  U_DataMem_MemData_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(6),
      O => U_DataMem_MemData_6_0
    );
  U_DataMem_MemData_7_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_6_0,
      O => U_DataMem_MemData_7_DIG_MUX_245
    );
  U_DataMem_MemData_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_and0000_0,
      O => U_DataMem_MemData_7_SRINV_247
    );
  U_DataMem_MemData_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_DataMem_MemData_7_CLKINV_246
    );
  RdData1_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1(8),
      O => RdData1_8_0
    );
  RdData1_8_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_8_DIG_MUX_249,
      O => RdData1_8_DIF_MUX_248
    );
  RdData1_8_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData(8),
      O => RdData1_8_DIG_MUX_249
    );
  RdData1_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData1_8_SRINV_251
    );
  RdData1_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData1_8_CLKINV_250
    );
  U_DataMem_MemData_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(13),
      O => U_DataMem_MemData_13_0
    );
  U_DataMem_MemData_13_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_13_0,
      O => U_DataMem_MemData_13_DIF_MUX_252
    );
  U_DataMem_MemData_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(12),
      O => U_DataMem_MemData_12_0
    );
  U_DataMem_MemData_13_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_12_0,
      O => U_DataMem_MemData_13_DIG_MUX_253
    );
  U_DataMem_MemData_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_and0000_0,
      O => U_DataMem_MemData_13_SRINV_255
    );
  U_DataMem_MemData_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_DataMem_MemData_13_CLKINV_254
    );
  U_DataMem_MemData_15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(15),
      O => U_DataMem_MemData_15_0
    );
  U_DataMem_MemData_15_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_15_0,
      O => U_DataMem_MemData_15_DIF_MUX_256
    );
  U_DataMem_MemData_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_MemData(14),
      O => U_DataMem_MemData_14_0
    );
  U_DataMem_MemData_15_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_14_0,
      O => U_DataMem_MemData_15_DIG_MUX_257
    );
  U_DataMem_MemData_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_and0000_0,
      O => U_DataMem_MemData_15_SRINV_259
    );
  U_DataMem_MemData_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_DataMem_MemData_15_CLKINV_258
    );
  U_ALU_FF1R_1_map7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_1_map7,
      O => U_ALU_FF1R_1_map7_0
    );
  U_ALU_FF1R_1_map7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1417,
      O => N1417_0
    );
  U_ALU_ALUOP_2_73_SW0 : X_LUT4
    generic map(
      INIT => X"0F55",
      LOC => "SLICE_X8Y22"
    )
    port map (
      ADR0 => U_ALU_ADD17(14),
      ADR1 => VCC,
      ADR2 => RdData2_14_0,
      ADR3 => ALUOP_2_0,
      O => N1417
    );
  U_DataMem_OUTW0_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000,
      O => U_DataMem_OUTW0_and0000_0
    );
  U_DataMem_OUTW0_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_and0000,
      O => U_DataMem_and0000_0
    );
  U_DataMem_and00001 : X_LUT4
    generic map(
      INIT => X"2222",
      LOC => "SLICE_X12Y9"
    )
    port map (
      ADR0 => MemWr,
      ADR1 => Instr_8_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_DataMem_and0000
    );
  N1442_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1442,
      O => N1442_0
    );
  N1442_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_RegDest_Y_0_map11,
      O => MUX_RegDest_Y_0_map11_0
    );
  MUX_RegDest_Y_0_27 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X16Y7"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(2),
      ADR2 => U_PC_PC(5),
      ADR3 => U_PC_PC(4),
      O => MUX_RegDest_Y_0_map11
    );
  U_New_PC_PC_p2_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_PC_p2(3),
      O => U_New_PC_PC_p2_3_0
    );
  U_New_PC_PC_p2_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  U_New_PC_New_PC_or000011 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X18Y6"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => VCC,
      ADR2 => U_PC_PC(3),
      ADR3 => VCC,
      O => N4
    );
  U_New_PC_New_PC_or0000_map22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_New_PC_or0000_map22,
      O => U_New_PC_New_PC_or0000_map22_0
    );
  U_New_PC_New_PC_or0000_map22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_New_PC_or0000_map21_pack_1,
      O => U_New_PC_New_PC_or0000_map21
    );
  U_New_PC_New_PC_or000061 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X17Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(3),
      ADR3 => U_ALU_Zflag_15,
      O => U_New_PC_New_PC_or0000_map21_pack_1
    );
  N1441_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1441,
      O => N1441_0
    );
  N1441_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_PC_p2(2),
      O => U_New_PC_PC_p2_2_0
    );
  U_New_PC_Madd_PC_p2_xor_2_11 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X19Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U_PC_PC(2),
      ADR2 => VCC,
      ADR3 => U_PC_PC(1),
      O => U_New_PC_PC_p2(2)
    );
  U_PC_PC_2_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_2_1_FXMUX_261,
      O => U_PC_PC_2_1_DXMUX_260
    );
  U_PC_PC_2_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_2_1_FXMUX_261,
      O => New_PC_2_0
    );
  U_PC_PC_2_1_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC(2),
      O => U_PC_PC_2_1_FXMUX_261
    );
  U_PC_PC_2_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_New_PC_or0000_pack_1,
      O => U_New_PC_New_PC_or0000
    );
  U_PC_PC_2_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_2_1_CLKINV_262
    );
  U_New_PC_New_PC_or000086 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X16Y10"
    )
    port map (
      ADR0 => N81,
      ADR1 => U_New_PC_New_PC_or0000_map2,
      ADR2 => U_New_PC_New_PC_or0000_map22_0,
      ADR3 => U_New_PC_New_PC_or0000_map10,
      O => U_New_PC_New_PC_or0000_pack_1
    );
  CE_OVF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => N74_pack_1,
      O => N74
    );
  U_Ctrl_CE_OVF_or0000_SW0 : X_LUT4
    generic map(
      INIT => X"F527",
      LOC => "SLICE_X20Y7"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => N18,
      ADR2 => U_PC_PC(1),
      ADR3 => U_PC_PC(3),
      O => N74_pack_1
    );
  N1271_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1271,
      O => N1271_0
    );
  N1271_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_PC_p2(4),
      O => U_New_PC_PC_p2_4_0
    );
  U_New_PC_Madd_PC_p2_xor_4_11 : X_LUT4
    generic map(
      INIT => X"6AAA",
      LOC => "SLICE_X18Y9"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(1),
      ADR2 => U_PC_PC(2),
      ADR3 => U_PC_PC(3),
      O => U_New_PC_PC_p2(4)
    );
  U_New_PC_Madd_PC_p2_xor_5_11 : X_LUT4
    generic map(
      INIT => X"C3F0",
      LOC => "SLICE_X17Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N17,
      ADR2 => U_PC_PC(5),
      ADR3 => U_PC_PC(4),
      O => U_New_PC_PC_p2(5)
    );
  U_New_PC_New_PC_addsub0000_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_New_PC_addsub0000_5_XORF_263,
      O => U_New_PC_New_PC_addsub0000(5)
    );
  U_New_PC_New_PC_addsub0000_5_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y10"
    )
    port map (
      I0 => U_New_PC_New_PC_addsub0000_5_CYINIT_264,
      I1 => N10,
      O => U_New_PC_New_PC_addsub0000_5_XORF_263
    );
  U_New_PC_New_PC_addsub0000_5_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_New_PC_addsub0000_3_CYMUXFAST_437,
      O => U_New_PC_New_PC_addsub0000_5_CYINIT_264
    );
  U_New_PC_New_PC_addsub0000_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_PC_p2(5),
      O => U_New_PC_PC_p2_5_0
    );
  RdData2_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2(0),
      O => RdData2_0_0
    );
  RdData2_0_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_0_DIG_MUX_266,
      O => RdData2_0_DIF_MUX_265
    );
  RdData2_0_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_0_0,
      O => RdData2_0_DIG_MUX_266
    );
  RdData2_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr,
      O => RdData2_0_SRINV_268
    );
  RdData2_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdData2_0_CLKINV_267
    );
  U_ALU_FF1R_1_map2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_1_map2,
      O => U_ALU_FF1R_1_map2_0
    );
  U_ALU_FF1R_1_map2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1400,
      O => N1400_0
    );
  U_ALU_FF1R_0_23_SW0 : X_LUT4
    generic map(
      INIT => X"00DC",
      LOC => "SLICE_X4Y16"
    )
    port map (
      ADR0 => RdData2_9_0,
      ADR1 => RdData2_8_0,
      ADR2 => RdData2_10_0,
      ADR3 => RdData2_7_0,
      O => N1400
    );
  MUX_ALU_Y_0_map7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_0_map7,
      O => MUX_ALU_Y_0_map7_0
    );
  MUX_ALU_Y_0_map7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_10_map7,
      O => MUX_ALU_Y_10_map7_0
    );
  MUX_ALU_Y_10_18 : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X11Y14"
    )
    port map (
      ADR0 => Instr_5_0,
      ADR1 => INW0_10_IBUF_27,
      ADR2 => INW1_10_IBUF_26,
      ADR3 => Instr_4_0,
      O => MUX_ALU_Y_10_map7
    );
  MUX_ALU_Y_9_map7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y30",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_9_map7,
      O => MUX_ALU_Y_9_map7_0
    );
  MUX_ALU_Y_9_map7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y30",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_11_map7,
      O => MUX_ALU_Y_11_map7_0
    );
  MUX_ALU_Y_11_18 : X_LUT4
    generic map(
      INIT => X"AAAC",
      LOC => "SLICE_X8Y30"
    )
    port map (
      ADR0 => INW1_11_IBUF_30,
      ADR1 => INW0_11_IBUF_31,
      ADR2 => Instr_5_0,
      ADR3 => Instr_4_0,
      O => MUX_ALU_Y_11_map7
    );
  U_ALU_N38_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N38,
      O => U_ALU_N38_0
    );
  U_ALU_N38_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1435,
      O => N1435_0
    );
  U_ALU_FF1R_0_145_SW0 : X_LUT4
    generic map(
      INIT => X"FAD8",
      LOC => "SLICE_X7Y15"
    )
    port map (
      ADR0 => ALUOP_0_Q,
      ADR1 => RdData1_0_0,
      ADR2 => RdData2_0_0,
      ADR3 => Instr_0_Q,
      O => N1435
    );
  U_PC_PC_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC_2_0,
      O => U_PC_PC_2_DXMUX_269
    );
  U_PC_PC_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC_1_0,
      O => U_PC_PC_2_DYMUX_270
    );
  U_PC_PC_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_2_CLKINV_271
    );
  U_PC_PC_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC_4_0,
      O => U_PC_PC_4_DXMUX_272
    );
  U_PC_PC_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC_3_0,
      O => U_PC_PC_4_DYMUX_273
    );
  U_PC_PC_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_4_CLKINV_274
    );
  U_ALU_ADD17_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X9Y14"
    )
    port map (
      IA => U_ALU_ADD17_1_CY0F_276,
      IB => U_ALU_ADD17_1_CYINIT_275,
      SEL => U_ALU_ADD17_1_CYSELF_277,
      O => U_ALU_Madd_ADD17_cy(0)
    );
  U_ALU_ADD17_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X9Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => U_ALU_ADD17_1_CYINIT_275
    );
  U_ALU_ADD17_1_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X9Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_0_0,
      O => U_ALU_ADD17_1_CY0F_276
    );
  U_ALU_ADD17_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X9Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17(0),
      O => U_ALU_ADD17_1_CYSELF_277
    );
  U_ALU_ADD17_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_1_XORG_278,
      O => U_ALU_ADD17(1)
    );
  U_ALU_ADD17_1_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X9Y14"
    )
    port map (
      I0 => U_ALU_Madd_ADD17_cy(0),
      I1 => U_ALU_N5,
      O => U_ALU_ADD17_1_XORG_278
    );
  U_ALU_ADD17_1_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_1_CYMUXG_279,
      O => U_ALU_Madd_ADD17_cy(1)
    );
  U_ALU_ADD17_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X9Y14"
    )
    port map (
      IA => U_ALU_ADD17_1_CY0G_280,
      IB => U_ALU_Madd_ADD17_cy(0),
      SEL => U_ALU_ADD17_1_CYSELG_281,
      O => U_ALU_ADD17_1_CYMUXG_279
    );
  U_ALU_ADD17_1_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X9Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_1_0,
      O => U_ALU_ADD17_1_CY0G_280
    );
  U_ALU_ADD17_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X9Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N5,
      O => U_ALU_ADD17_1_CYSELG_281
    );
  U_ALU_Madd_ADD17_lut_1_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X9Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData1_1_0,
      ADR2 => VCC,
      ADR3 => RdData2_1_0,
      O => U_ALU_N5
    );
  U_PC_PC_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => New_PC_5_0,
      O => U_PC_PC_5_DYMUX_282
    );
  U_PC_PC_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => U_PC_PC_5_CLKINV_283
    );
  U_ALU_ADD17_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_2_XORF_284,
      O => U_ALU_ADD17(2)
    );
  U_ALU_ADD17_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X9Y15"
    )
    port map (
      I0 => U_ALU_ADD17_2_CYINIT_285,
      I1 => U_ALU_N6,
      O => U_ALU_ADD17_2_XORF_284
    );
  U_ALU_ADD17_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X9Y15"
    )
    port map (
      IA => U_ALU_ADD17_2_CY0F_286,
      IB => U_ALU_ADD17_2_CYINIT_285,
      SEL => U_ALU_ADD17_2_CYSELF_288,
      O => U_ALU_Madd_ADD17_cy(2)
    );
  U_ALU_ADD17_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y15"
    )
    port map (
      IA => U_ALU_ADD17_2_CY0F_286,
      IB => U_ALU_ADD17_2_CY0F_286,
      SEL => U_ALU_ADD17_2_CYSELF_288,
      O => U_ALU_ADD17_2_CYMUXF2_293
    );
  U_ALU_ADD17_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X9Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(1),
      O => U_ALU_ADD17_2_CYINIT_285
    );
  U_ALU_ADD17_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X9Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_2_0,
      O => U_ALU_ADD17_2_CY0F_286
    );
  U_ALU_ADD17_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X9Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N6,
      O => U_ALU_ADD17_2_CYSELF_288
    );
  U_ALU_ADD17_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_2_XORG_287,
      O => U_ALU_ADD17(3)
    );
  U_ALU_ADD17_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X9Y15"
    )
    port map (
      I0 => U_ALU_Madd_ADD17_cy(2),
      I1 => U_ALU_N7,
      O => U_ALU_ADD17_2_XORG_287
    );
  U_ALU_ADD17_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_2_CYMUXFAST_289,
      O => U_ALU_Madd_ADD17_cy(3)
    );
  U_ALU_ADD17_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X9Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(1),
      O => U_ALU_ADD17_2_FASTCARRY_291
    );
  U_ALU_ADD17_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X9Y15"
    )
    port map (
      I0 => U_ALU_ADD17_2_CYSELG_295,
      I1 => U_ALU_ADD17_2_CYSELF_288,
      O => U_ALU_ADD17_2_CYAND_290
    );
  U_ALU_ADD17_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X9Y15"
    )
    port map (
      IA => U_ALU_ADD17_2_CYMUXG2_292,
      IB => U_ALU_ADD17_2_FASTCARRY_291,
      SEL => U_ALU_ADD17_2_CYAND_290,
      O => U_ALU_ADD17_2_CYMUXFAST_289
    );
  U_ALU_ADD17_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y15"
    )
    port map (
      IA => U_ALU_ADD17_2_CY0G_294,
      IB => U_ALU_ADD17_2_CYMUXF2_293,
      SEL => U_ALU_ADD17_2_CYSELG_295,
      O => U_ALU_ADD17_2_CYMUXG2_292
    );
  U_ALU_ADD17_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X9Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_3_0,
      O => U_ALU_ADD17_2_CY0G_294
    );
  U_ALU_ADD17_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X9Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N7,
      O => U_ALU_ADD17_2_CYSELG_295
    );
  U_ALU_Madd_ADD17_lut_3_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X9Y15"
    )
    port map (
      ADR0 => RdData1_3_0,
      ADR1 => RdData2_3_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N7
    );
  U_ALU_FF1R_2_map5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_2_map5,
      O => U_ALU_FF1R_2_map5_0
    );
  U_ALU_FF1R_2_map5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1403,
      O => N1403_0
    );
  U_ALU_FF1R_4_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFEF",
      LOC => "SLICE_X6Y20"
    )
    port map (
      ADR0 => RdData2_12_0,
      ADR1 => RdData2_13_0,
      ADR2 => RdData2_15_0,
      ADR3 => RdData2_11_0,
      O => N1403
    );
  U_ALU_ADD17_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_4_XORF_296,
      O => U_ALU_ADD17(4)
    );
  U_ALU_ADD17_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X9Y16"
    )
    port map (
      I0 => U_ALU_ADD17_4_CYINIT_297,
      I1 => U_ALU_N8,
      O => U_ALU_ADD17_4_XORF_296
    );
  U_ALU_ADD17_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X9Y16"
    )
    port map (
      IA => U_ALU_ADD17_4_CY0F_298,
      IB => U_ALU_ADD17_4_CYINIT_297,
      SEL => U_ALU_ADD17_4_CYSELF_300,
      O => U_ALU_Madd_ADD17_cy(4)
    );
  U_ALU_ADD17_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y16"
    )
    port map (
      IA => U_ALU_ADD17_4_CY0F_298,
      IB => U_ALU_ADD17_4_CY0F_298,
      SEL => U_ALU_ADD17_4_CYSELF_300,
      O => U_ALU_ADD17_4_CYMUXF2_305
    );
  U_ALU_ADD17_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X9Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(3),
      O => U_ALU_ADD17_4_CYINIT_297
    );
  U_ALU_ADD17_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X9Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_4_0,
      O => U_ALU_ADD17_4_CY0F_298
    );
  U_ALU_ADD17_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X9Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N8,
      O => U_ALU_ADD17_4_CYSELF_300
    );
  U_ALU_ADD17_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_4_XORG_299,
      O => U_ALU_ADD17(5)
    );
  U_ALU_ADD17_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X9Y16"
    )
    port map (
      I0 => U_ALU_Madd_ADD17_cy(4),
      I1 => U_ALU_N9,
      O => U_ALU_ADD17_4_XORG_299
    );
  U_ALU_ADD17_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_4_CYMUXFAST_301,
      O => U_ALU_Madd_ADD17_cy(5)
    );
  U_ALU_ADD17_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X9Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(3),
      O => U_ALU_ADD17_4_FASTCARRY_303
    );
  U_ALU_ADD17_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X9Y16"
    )
    port map (
      I0 => U_ALU_ADD17_4_CYSELG_307,
      I1 => U_ALU_ADD17_4_CYSELF_300,
      O => U_ALU_ADD17_4_CYAND_302
    );
  U_ALU_ADD17_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X9Y16"
    )
    port map (
      IA => U_ALU_ADD17_4_CYMUXG2_304,
      IB => U_ALU_ADD17_4_FASTCARRY_303,
      SEL => U_ALU_ADD17_4_CYAND_302,
      O => U_ALU_ADD17_4_CYMUXFAST_301
    );
  U_ALU_ADD17_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y16"
    )
    port map (
      IA => U_ALU_ADD17_4_CY0G_306,
      IB => U_ALU_ADD17_4_CYMUXF2_305,
      SEL => U_ALU_ADD17_4_CYSELG_307,
      O => U_ALU_ADD17_4_CYMUXG2_304
    );
  U_ALU_ADD17_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X9Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_5_0,
      O => U_ALU_ADD17_4_CY0G_306
    );
  U_ALU_ADD17_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X9Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N9,
      O => U_ALU_ADD17_4_CYSELG_307
    );
  U_ALU_Madd_ADD17_lut_5_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X9Y16"
    )
    port map (
      ADR0 => RdData1_5_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => RdData2_5_0,
      O => U_ALU_N9
    );
  U_ALU_ADD17_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_6_XORF_308,
      O => U_ALU_ADD17(6)
    );
  U_ALU_ADD17_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X9Y17"
    )
    port map (
      I0 => U_ALU_ADD17_6_CYINIT_309,
      I1 => U_ALU_N10,
      O => U_ALU_ADD17_6_XORF_308
    );
  U_ALU_ADD17_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X9Y17"
    )
    port map (
      IA => U_ALU_ADD17_6_CY0F_310,
      IB => U_ALU_ADD17_6_CYINIT_309,
      SEL => U_ALU_ADD17_6_CYSELF_312,
      O => U_ALU_Madd_ADD17_cy(6)
    );
  U_ALU_ADD17_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y17"
    )
    port map (
      IA => U_ALU_ADD17_6_CY0F_310,
      IB => U_ALU_ADD17_6_CY0F_310,
      SEL => U_ALU_ADD17_6_CYSELF_312,
      O => U_ALU_ADD17_6_CYMUXF2_317
    );
  U_ALU_ADD17_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X9Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(5),
      O => U_ALU_ADD17_6_CYINIT_309
    );
  U_ALU_ADD17_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X9Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_6_0,
      O => U_ALU_ADD17_6_CY0F_310
    );
  U_ALU_ADD17_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X9Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N10,
      O => U_ALU_ADD17_6_CYSELF_312
    );
  U_ALU_ADD17_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_6_XORG_311,
      O => U_ALU_ADD17(7)
    );
  U_ALU_ADD17_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X9Y17"
    )
    port map (
      I0 => U_ALU_Madd_ADD17_cy(6),
      I1 => U_ALU_N11,
      O => U_ALU_ADD17_6_XORG_311
    );
  U_ALU_ADD17_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_6_CYMUXFAST_313,
      O => U_ALU_Madd_ADD17_cy(7)
    );
  U_ALU_ADD17_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X9Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(5),
      O => U_ALU_ADD17_6_FASTCARRY_315
    );
  U_ALU_ADD17_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X9Y17"
    )
    port map (
      I0 => U_ALU_ADD17_6_CYSELG_319,
      I1 => U_ALU_ADD17_6_CYSELF_312,
      O => U_ALU_ADD17_6_CYAND_314
    );
  U_ALU_ADD17_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X9Y17"
    )
    port map (
      IA => U_ALU_ADD17_6_CYMUXG2_316,
      IB => U_ALU_ADD17_6_FASTCARRY_315,
      SEL => U_ALU_ADD17_6_CYAND_314,
      O => U_ALU_ADD17_6_CYMUXFAST_313
    );
  U_ALU_ADD17_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y17"
    )
    port map (
      IA => U_ALU_ADD17_6_CY0G_318,
      IB => U_ALU_ADD17_6_CYMUXF2_317,
      SEL => U_ALU_ADD17_6_CYSELG_319,
      O => U_ALU_ADD17_6_CYMUXG2_316
    );
  U_ALU_ADD17_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X9Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_7_0,
      O => U_ALU_ADD17_6_CY0G_318
    );
  U_ALU_ADD17_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X9Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N11,
      O => U_ALU_ADD17_6_CYSELG_319
    );
  U_ALU_Madd_ADD17_lut_7_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X9Y17"
    )
    port map (
      ADR0 => RdData1_7_0,
      ADR1 => RdData2_7_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N11
    );
  MUX_ALU_Y_8_map7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_8_map7,
      O => MUX_ALU_Y_8_map7_0
    );
  MUX_ALU_Y_8_map7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_1_map7,
      O => MUX_ALU_Y_1_map7_0
    );
  MUX_ALU_Y_1_18 : X_LUT4
    generic map(
      INIT => X"AAAC",
      LOC => "SLICE_X0Y17"
    )
    port map (
      ADR0 => INW1_1_IBUF_34,
      ADR1 => INW0_1_IBUF_35,
      ADR2 => Instr_5_0,
      ADR3 => Instr_4_0,
      O => MUX_ALU_Y_1_map7
    );
  U_ALU_ADD17_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_8_XORF_320,
      O => U_ALU_ADD17(8)
    );
  U_ALU_ADD17_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X9Y18"
    )
    port map (
      I0 => U_ALU_ADD17_8_CYINIT_321,
      I1 => U_ALU_N12,
      O => U_ALU_ADD17_8_XORF_320
    );
  U_ALU_ADD17_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X9Y18"
    )
    port map (
      IA => U_ALU_ADD17_8_CY0F_322,
      IB => U_ALU_ADD17_8_CYINIT_321,
      SEL => U_ALU_ADD17_8_CYSELF_324,
      O => U_ALU_Madd_ADD17_cy(8)
    );
  U_ALU_ADD17_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y18"
    )
    port map (
      IA => U_ALU_ADD17_8_CY0F_322,
      IB => U_ALU_ADD17_8_CY0F_322,
      SEL => U_ALU_ADD17_8_CYSELF_324,
      O => U_ALU_ADD17_8_CYMUXF2_329
    );
  U_ALU_ADD17_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X9Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(7),
      O => U_ALU_ADD17_8_CYINIT_321
    );
  U_ALU_ADD17_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X9Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_8_0,
      O => U_ALU_ADD17_8_CY0F_322
    );
  U_ALU_ADD17_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X9Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N12,
      O => U_ALU_ADD17_8_CYSELF_324
    );
  U_ALU_ADD17_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_8_XORG_323,
      O => U_ALU_ADD17(9)
    );
  U_ALU_ADD17_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X9Y18"
    )
    port map (
      I0 => U_ALU_Madd_ADD17_cy(8),
      I1 => U_ALU_N13,
      O => U_ALU_ADD17_8_XORG_323
    );
  U_ALU_ADD17_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_8_CYMUXFAST_325,
      O => U_ALU_Madd_ADD17_cy(9)
    );
  U_ALU_ADD17_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X9Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(7),
      O => U_ALU_ADD17_8_FASTCARRY_327
    );
  U_ALU_ADD17_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X9Y18"
    )
    port map (
      I0 => U_ALU_ADD17_8_CYSELG_331,
      I1 => U_ALU_ADD17_8_CYSELF_324,
      O => U_ALU_ADD17_8_CYAND_326
    );
  U_ALU_ADD17_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X9Y18"
    )
    port map (
      IA => U_ALU_ADD17_8_CYMUXG2_328,
      IB => U_ALU_ADD17_8_FASTCARRY_327,
      SEL => U_ALU_ADD17_8_CYAND_326,
      O => U_ALU_ADD17_8_CYMUXFAST_325
    );
  U_ALU_ADD17_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y18"
    )
    port map (
      IA => U_ALU_ADD17_8_CY0G_330,
      IB => U_ALU_ADD17_8_CYMUXF2_329,
      SEL => U_ALU_ADD17_8_CYSELG_331,
      O => U_ALU_ADD17_8_CYMUXG2_328
    );
  U_ALU_ADD17_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X9Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_9_0,
      O => U_ALU_ADD17_8_CY0G_330
    );
  U_ALU_ADD17_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X9Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N13,
      O => U_ALU_ADD17_8_CYSELG_331
    );
  U_ALU_Madd_ADD17_lut_9_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X9Y18"
    )
    port map (
      ADR0 => RdData1_9_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => RdData2_9_0,
      O => U_ALU_N13
    );
  U_ALU_ADD17_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_10_XORF_332,
      O => U_ALU_ADD17(10)
    );
  U_ALU_ADD17_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X9Y19"
    )
    port map (
      I0 => U_ALU_ADD17_10_CYINIT_333,
      I1 => U_ALU_N14,
      O => U_ALU_ADD17_10_XORF_332
    );
  U_ALU_ADD17_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X9Y19"
    )
    port map (
      IA => U_ALU_ADD17_10_CY0F_334,
      IB => U_ALU_ADD17_10_CYINIT_333,
      SEL => U_ALU_ADD17_10_CYSELF_336,
      O => U_ALU_Madd_ADD17_cy(10)
    );
  U_ALU_ADD17_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y19"
    )
    port map (
      IA => U_ALU_ADD17_10_CY0F_334,
      IB => U_ALU_ADD17_10_CY0F_334,
      SEL => U_ALU_ADD17_10_CYSELF_336,
      O => U_ALU_ADD17_10_CYMUXF2_341
    );
  U_ALU_ADD17_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X9Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(9),
      O => U_ALU_ADD17_10_CYINIT_333
    );
  U_ALU_ADD17_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X9Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_10_0,
      O => U_ALU_ADD17_10_CY0F_334
    );
  U_ALU_ADD17_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X9Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N14,
      O => U_ALU_ADD17_10_CYSELF_336
    );
  U_ALU_ADD17_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_10_XORG_335,
      O => U_ALU_ADD17(11)
    );
  U_ALU_ADD17_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X9Y19"
    )
    port map (
      I0 => U_ALU_Madd_ADD17_cy(10),
      I1 => U_ALU_N15,
      O => U_ALU_ADD17_10_XORG_335
    );
  U_ALU_ADD17_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_10_CYMUXFAST_337,
      O => U_ALU_Madd_ADD17_cy(11)
    );
  U_ALU_ADD17_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X9Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(9),
      O => U_ALU_ADD17_10_FASTCARRY_339
    );
  U_ALU_ADD17_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X9Y19"
    )
    port map (
      I0 => U_ALU_ADD17_10_CYSELG_343,
      I1 => U_ALU_ADD17_10_CYSELF_336,
      O => U_ALU_ADD17_10_CYAND_338
    );
  U_ALU_ADD17_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X9Y19"
    )
    port map (
      IA => U_ALU_ADD17_10_CYMUXG2_340,
      IB => U_ALU_ADD17_10_FASTCARRY_339,
      SEL => U_ALU_ADD17_10_CYAND_338,
      O => U_ALU_ADD17_10_CYMUXFAST_337
    );
  U_ALU_ADD17_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y19"
    )
    port map (
      IA => U_ALU_ADD17_10_CY0G_342,
      IB => U_ALU_ADD17_10_CYMUXF2_341,
      SEL => U_ALU_ADD17_10_CYSELG_343,
      O => U_ALU_ADD17_10_CYMUXG2_340
    );
  U_ALU_ADD17_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X9Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_11_0,
      O => U_ALU_ADD17_10_CY0G_342
    );
  U_ALU_ADD17_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X9Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N15,
      O => U_ALU_ADD17_10_CYSELG_343
    );
  U_ALU_Madd_ADD17_lut_11_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X9Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData1_11_0,
      ADR2 => RdData2_11_0,
      ADR3 => VCC,
      O => U_ALU_N15
    );
  U_ALU_FF1R_1_map11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_1_map11,
      O => U_ALU_FF1R_1_map11_0
    );
  U_ALU_FF1R_1_21 : X_LUT4
    generic map(
      INIT => X"1111",
      LOC => "SLICE_X9Y10"
    )
    port map (
      ADR0 => RdData2_8_0,
      ADR1 => RdData2_7_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_FF1R_1_map11
    );
  U_ALU_ADD17_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_12_XORF_344,
      O => U_ALU_ADD17(12)
    );
  U_ALU_ADD17_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X9Y20"
    )
    port map (
      I0 => U_ALU_ADD17_12_CYINIT_345,
      I1 => U_ALU_N16,
      O => U_ALU_ADD17_12_XORF_344
    );
  U_ALU_ADD17_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X9Y20"
    )
    port map (
      IA => U_ALU_ADD17_12_CY0F_346,
      IB => U_ALU_ADD17_12_CYINIT_345,
      SEL => U_ALU_ADD17_12_CYSELF_348,
      O => U_ALU_Madd_ADD17_cy(12)
    );
  U_ALU_ADD17_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y20"
    )
    port map (
      IA => U_ALU_ADD17_12_CY0F_346,
      IB => U_ALU_ADD17_12_CY0F_346,
      SEL => U_ALU_ADD17_12_CYSELF_348,
      O => U_ALU_ADD17_12_CYMUXF2_353
    );
  U_ALU_ADD17_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X9Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(11),
      O => U_ALU_ADD17_12_CYINIT_345
    );
  U_ALU_ADD17_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X9Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_12_0,
      O => U_ALU_ADD17_12_CY0F_346
    );
  U_ALU_ADD17_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X9Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N16,
      O => U_ALU_ADD17_12_CYSELF_348
    );
  U_ALU_ADD17_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_12_XORG_347,
      O => U_ALU_ADD17(13)
    );
  U_ALU_ADD17_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X9Y20"
    )
    port map (
      I0 => U_ALU_Madd_ADD17_cy(12),
      I1 => U_ALU_N17,
      O => U_ALU_ADD17_12_XORG_347
    );
  U_ALU_ADD17_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_12_CYMUXFAST_349,
      O => U_ALU_Madd_ADD17_cy(13)
    );
  U_ALU_ADD17_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X9Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(11),
      O => U_ALU_ADD17_12_FASTCARRY_351
    );
  U_ALU_ADD17_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X9Y20"
    )
    port map (
      I0 => U_ALU_ADD17_12_CYSELG_355,
      I1 => U_ALU_ADD17_12_CYSELF_348,
      O => U_ALU_ADD17_12_CYAND_350
    );
  U_ALU_ADD17_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X9Y20"
    )
    port map (
      IA => U_ALU_ADD17_12_CYMUXG2_352,
      IB => U_ALU_ADD17_12_FASTCARRY_351,
      SEL => U_ALU_ADD17_12_CYAND_350,
      O => U_ALU_ADD17_12_CYMUXFAST_349
    );
  U_ALU_ADD17_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y20"
    )
    port map (
      IA => U_ALU_ADD17_12_CY0G_354,
      IB => U_ALU_ADD17_12_CYMUXF2_353,
      SEL => U_ALU_ADD17_12_CYSELG_355,
      O => U_ALU_ADD17_12_CYMUXG2_352
    );
  U_ALU_ADD17_12_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X9Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_13_0,
      O => U_ALU_ADD17_12_CY0G_354
    );
  U_ALU_ADD17_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X9Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N17,
      O => U_ALU_ADD17_12_CYSELG_355
    );
  U_ALU_Madd_ADD17_lut_13_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X9Y20"
    )
    port map (
      ADR0 => RdData1_13_0,
      ADR1 => RdData2_13_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N17
    );
  MUX_ALU_Y_7_map7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_7_map7,
      O => MUX_ALU_Y_7_map7_0
    );
  MUX_ALU_Y_7_map7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_2_map7,
      O => MUX_ALU_Y_2_map7_0
    );
  MUX_ALU_Y_2_18 : X_LUT4
    generic map(
      INIT => X"CCCA",
      LOC => "SLICE_X4Y18"
    )
    port map (
      ADR0 => INW0_2_IBUF_39,
      ADR1 => INW1_2_IBUF_38,
      ADR2 => Instr_5_0,
      ADR3 => Instr_4_0,
      O => MUX_ALU_Y_2_map7
    );
  U_ALU_ADD17_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_14_XORF_356,
      O => U_ALU_ADD17(14)
    );
  U_ALU_ADD17_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X9Y21"
    )
    port map (
      I0 => U_ALU_ADD17_14_CYINIT_357,
      I1 => U_ALU_N18,
      O => U_ALU_ADD17_14_XORF_356
    );
  U_ALU_ADD17_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X9Y21"
    )
    port map (
      IA => U_ALU_ADD17_14_CY0F_358,
      IB => U_ALU_ADD17_14_CYINIT_357,
      SEL => U_ALU_ADD17_14_CYSELF_360,
      O => U_ALU_Madd_ADD17_cy(14)
    );
  U_ALU_ADD17_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y21"
    )
    port map (
      IA => U_ALU_ADD17_14_CY0F_358,
      IB => U_ALU_ADD17_14_CY0F_358,
      SEL => U_ALU_ADD17_14_CYSELF_360,
      O => U_ALU_ADD17_14_CYMUXF2_365
    );
  U_ALU_ADD17_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X9Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(13),
      O => U_ALU_ADD17_14_CYINIT_357
    );
  U_ALU_ADD17_14_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X9Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_14_0,
      O => U_ALU_ADD17_14_CY0F_358
    );
  U_ALU_ADD17_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X9Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N18,
      O => U_ALU_ADD17_14_CYSELF_360
    );
  U_ALU_ADD17_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_14_XORG_359,
      O => U_ALU_ADD17(15)
    );
  U_ALU_ADD17_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X9Y21"
    )
    port map (
      I0 => U_ALU_Madd_ADD17_cy(14),
      I1 => U_ALU_N19,
      O => U_ALU_ADD17_14_XORG_359
    );
  U_ALU_ADD17_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ADD17_14_CYMUXFAST_361,
      O => U_ALU_Madd_ADD17_cy(15)
    );
  U_ALU_ADD17_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X9Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Madd_ADD17_cy(13),
      O => U_ALU_ADD17_14_FASTCARRY_363
    );
  U_ALU_ADD17_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X9Y21"
    )
    port map (
      I0 => U_ALU_ADD17_14_CYSELG_367,
      I1 => U_ALU_ADD17_14_CYSELF_360,
      O => U_ALU_ADD17_14_CYAND_362
    );
  U_ALU_ADD17_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X9Y21"
    )
    port map (
      IA => U_ALU_ADD17_14_CYMUXG2_364,
      IB => U_ALU_ADD17_14_FASTCARRY_363,
      SEL => U_ALU_ADD17_14_CYAND_362,
      O => U_ALU_ADD17_14_CYMUXFAST_361
    );
  U_ALU_ADD17_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X9Y21"
    )
    port map (
      IA => U_ALU_ADD17_14_CY0G_366,
      IB => U_ALU_ADD17_14_CYMUXF2_365,
      SEL => U_ALU_ADD17_14_CYSELG_367,
      O => U_ALU_ADD17_14_CYMUXG2_364
    );
  U_ALU_ADD17_14_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X9Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_15_0,
      O => U_ALU_ADD17_14_CY0G_366
    );
  U_ALU_ADD17_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X9Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N19,
      O => U_ALU_ADD17_14_CYSELG_367
    );
  U_ALU_Madd_ADD17_lut_15_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X9Y21"
    )
    port map (
      ADR0 => RdData1_15_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => RdData2_15_0,
      O => U_ALU_N19
    );
  U_ALU_FF1R_1_map1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y7",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_1_map1,
      O => U_ALU_FF1R_1_map1_0
    );
  U_ALU_FF1R_1_1 : X_LUT4
    generic map(
      INIT => X"FFAA",
      LOC => "SLICE_X6Y7"
    )
    port map (
      ADR0 => RdData2_5_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => RdData2_6_0,
      O => U_ALU_FF1R_1_map1
    );
  U_ALU_SUB17_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_14_XORF_368,
      O => U_ALU_SUB17(14)
    );
  U_ALU_SUB17_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X8Y21"
    )
    port map (
      I0 => U_ALU_SUB17_14_CYINIT_369,
      I1 => U_ALU_N34,
      O => U_ALU_SUB17_14_XORF_368
    );
  U_ALU_SUB17_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X8Y21"
    )
    port map (
      IA => U_ALU_SUB17_14_CY0F_370,
      IB => U_ALU_SUB17_14_CYINIT_369,
      SEL => U_ALU_SUB17_14_CYSELF_372,
      O => U_ALU_Msub_SUB17_cy(14)
    );
  U_ALU_SUB17_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y21"
    )
    port map (
      IA => U_ALU_SUB17_14_CY0F_370,
      IB => U_ALU_SUB17_14_CY0F_370,
      SEL => U_ALU_SUB17_14_CYSELF_372,
      O => U_ALU_SUB17_14_CYMUXF2_377
    );
  U_ALU_SUB17_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X8Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(13),
      O => U_ALU_SUB17_14_CYINIT_369
    );
  U_ALU_SUB17_14_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X8Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_14_0,
      O => U_ALU_SUB17_14_CY0F_370
    );
  U_ALU_SUB17_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X8Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N34,
      O => U_ALU_SUB17_14_CYSELF_372
    );
  U_ALU_SUB17_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_14_XORG_371,
      O => U_ALU_SUB17(15)
    );
  U_ALU_SUB17_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X8Y21"
    )
    port map (
      I0 => U_ALU_Msub_SUB17_cy(14),
      I1 => U_ALU_N35,
      O => U_ALU_SUB17_14_XORG_371
    );
  U_ALU_SUB17_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X8Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(13),
      O => U_ALU_SUB17_14_FASTCARRY_375
    );
  U_ALU_SUB17_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X8Y21"
    )
    port map (
      I0 => U_ALU_SUB17_14_CYSELG_379,
      I1 => U_ALU_SUB17_14_CYSELF_372,
      O => U_ALU_SUB17_14_CYAND_374
    );
  U_ALU_SUB17_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X8Y21"
    )
    port map (
      IA => U_ALU_SUB17_14_CYMUXG2_376,
      IB => U_ALU_SUB17_14_FASTCARRY_375,
      SEL => U_ALU_SUB17_14_CYAND_374,
      O => U_ALU_SUB17_14_CYMUXFAST_373
    );
  U_ALU_SUB17_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y21"
    )
    port map (
      IA => U_ALU_SUB17_14_CY0G_378,
      IB => U_ALU_SUB17_14_CYMUXF2_377,
      SEL => U_ALU_SUB17_14_CYSELG_379,
      O => U_ALU_SUB17_14_CYMUXG2_376
    );
  U_ALU_SUB17_14_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X8Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_15_0,
      O => U_ALU_SUB17_14_CY0G_378
    );
  U_ALU_SUB17_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X8Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N35,
      O => U_ALU_SUB17_14_CYSELG_379
    );
  U_ALU_Msub_SUB17_lut_15_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X8Y21"
    )
    port map (
      ADR0 => RdData2_15_0,
      ADR1 => RdData1_15_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N35
    );
  ALU_Out_1_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X6Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_1_F5MUX_380,
      O => U_ALU_ALUOP_2_3_f5
    );
  ALU_Out_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X6Y10"
    )
    port map (
      IA => U_ALU_N251,
      IB => RdData2_1_rt_381,
      SEL => ALU_Out_1_BXINV_382,
      O => ALU_Out_1_F5MUX_380
    );
  ALU_Out_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => ALU_Out_1_BXINV_382
    );
  ALU_Out_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_1_F6MUX_383,
      O => ALU_Out_1_Q
    );
  ALU_Out_1_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X6Y10"
    )
    port map (
      IA => U_ALU_ALUOP_2_4_f5,
      IB => U_ALU_ALUOP_2_3_f5,
      SEL => ALU_Out_1_BYINV_384,
      O => ALU_Out_1_F6MUX_383
    );
  ALU_Out_1_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => ALU_Out_1_BYINV_384
    );
  U_ALU_ALUOP_2_5 : X_LUT4
    generic map(
      INIT => X"EEF0",
      LOC => "SLICE_X6Y10"
    )
    port map (
      ADR0 => RdData1_1_0,
      ADR1 => Instr_1_Q,
      ADR2 => U_ALU_FF1R_1_0_14,
      ADR3 => ALUOP_0_Q,
      O => U_ALU_N251
    );
  U_ALU_ALUOP_2_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X6Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_4_f5_F5MUX_385,
      O => U_ALU_ALUOP_2_4_f5
    );
  U_ALU_ALUOP_2_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X6Y11"
    )
    port map (
      IA => U_ALU_N271,
      IB => U_ALU_N261,
      SEL => U_ALU_ALUOP_2_4_f5_BXINV_386,
      O => U_ALU_ALUOP_2_4_f5_F5MUX_385
    );
  U_ALU_ALUOP_2_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => U_ALU_ALUOP_2_4_f5_BXINV_386
    );
  ALU_Out_0_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X9Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_0_F5MUX_387,
      O => U_ALU_Mmux_Ys_3_f5
    );
  ALU_Out_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X9Y12"
    )
    port map (
      IA => U_ALU_N0,
      IB => RdData2_0_rt_388,
      SEL => ALU_Out_0_BXINV_389,
      O => ALU_Out_0_F5MUX_387
    );
  ALU_Out_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => ALU_Out_0_BXINV_389
    );
  ALU_Out_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_0_F6MUX_390,
      O => ALU_Out_0_Q
    );
  ALU_Out_0_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X9Y12"
    )
    port map (
      IA => U_ALU_Mmux_Ys_4_f5,
      IB => U_ALU_Mmux_Ys_3_f5,
      SEL => ALU_Out_0_BYINV_391,
      O => ALU_Out_0_F6MUX_390
    );
  ALU_Out_0_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => ALU_Out_0_BYINV_391
    );
  U_ALU_Mmux_Ys_5 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X9Y12"
    )
    port map (
      ADR0 => N1436_0,
      ADR1 => U_ALU_FF1R_0_map16_0,
      ADR2 => RdData2_2_0,
      ADR3 => N1435_0,
      O => U_ALU_N0
    );
  U_ALU_Mmux_Ys_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X9Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Mmux_Ys_4_f5_F5MUX_392,
      O => U_ALU_Mmux_Ys_4_f5
    );
  U_ALU_Mmux_Ys_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X9Y13"
    )
    port map (
      IA => U_ALU_N210,
      IB => U_ALU_N111,
      SEL => U_ALU_Mmux_Ys_4_f5_BXINV_393,
      O => U_ALU_Mmux_Ys_4_f5_F5MUX_392
    );
  U_ALU_Mmux_Ys_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => U_ALU_Mmux_Ys_4_f5_BXINV_393
    );
  U_ALU_FF1R_3_map2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y23",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_3_map2,
      O => U_ALU_FF1R_3_map2_0
    );
  U_ALU_FF1R_3_4 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X11Y23"
    )
    port map (
      ADR0 => RdData2_10_0,
      ADR1 => RdData2_13_0,
      ADR2 => RdData2_11_0,
      ADR3 => RdData2_12_0,
      O => U_ALU_FF1R_3_map2
    );
  ALU_Out_2_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X10Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_2_F5MUX_394,
      O => U_ALU_ALUOP_2_3_f51
    );
  ALU_Out_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X10Y14"
    )
    port map (
      IA => U_ALU_N281,
      IB => RdData2_2_rt_395,
      SEL => ALU_Out_2_BXINV_396,
      O => ALU_Out_2_F5MUX_394
    );
  ALU_Out_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => ALU_Out_2_BXINV_396
    );
  ALU_Out_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_2_F6MUX_397,
      O => ALU_Out_2_Q
    );
  ALU_Out_2_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X10Y14"
    )
    port map (
      IA => U_ALU_ALUOP_2_4_f51,
      IB => U_ALU_ALUOP_2_3_f51,
      SEL => ALU_Out_2_BYINV_398,
      O => ALU_Out_2_F6MUX_397
    );
  ALU_Out_2_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => ALU_Out_2_BYINV_398
    );
  U_ALU_ALUOP_2_52 : X_LUT4
    generic map(
      INIT => X"EEE2",
      LOC => "SLICE_X10Y14"
    )
    port map (
      ADR0 => U_ALU_FF1R_2_0,
      ADR1 => ALUOP_0_Q,
      ADR2 => Instr_2_Q,
      ADR3 => RdData1_2_0,
      O => U_ALU_N281
    );
  U_ALU_ALUOP_2_4_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X10Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_4_f51_F5MUX_399,
      O => U_ALU_ALUOP_2_4_f51
    );
  U_ALU_ALUOP_2_4_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X10Y15"
    )
    port map (
      IA => U_ALU_N301,
      IB => U_ALU_N291,
      SEL => U_ALU_ALUOP_2_4_f51_BXINV_400,
      O => U_ALU_ALUOP_2_4_f51_F5MUX_399
    );
  U_ALU_ALUOP_2_4_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => U_ALU_ALUOP_2_4_f51_BXINV_400
    );
  ALU_Out_3_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X8Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_3_F5MUX_401,
      O => U_ALU_ALUOP_2_3_f52
    );
  ALU_Out_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X8Y12"
    )
    port map (
      IA => U_ALU_N311,
      IB => RdData2_3_rt_402,
      SEL => ALU_Out_3_BXINV_403,
      O => ALU_Out_3_F5MUX_401
    );
  ALU_Out_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => ALU_Out_3_BXINV_403
    );
  ALU_Out_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_3_F6MUX_404,
      O => ALU_Out_3_Q
    );
  ALU_Out_3_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X8Y12"
    )
    port map (
      IA => U_ALU_ALUOP_2_4_f52,
      IB => U_ALU_ALUOP_2_3_f52,
      SEL => ALU_Out_3_BYINV_405,
      O => ALU_Out_3_F6MUX_404
    );
  ALU_Out_3_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => ALU_Out_3_BYINV_405
    );
  U_ALU_ALUOP_2_4_f52_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X8Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_4_f52_F5MUX_406,
      O => U_ALU_ALUOP_2_4_f52
    );
  U_ALU_ALUOP_2_4_f52_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X8Y13"
    )
    port map (
      IA => U_ALU_N331,
      IB => U_ALU_N321,
      SEL => U_ALU_ALUOP_2_4_f52_BXINV_407,
      O => U_ALU_ALUOP_2_4_f52_F5MUX_406
    );
  U_ALU_ALUOP_2_4_f52_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => U_ALU_ALUOP_2_4_f52_BXINV_407
    );
  ALU_Out_4_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X11Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_4_F5MUX_408,
      O => U_ALU_ALUOP_2_3_f53
    );
  ALU_Out_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X11Y16"
    )
    port map (
      IA => U_ALU_N341,
      IB => RdData2_4_rt_409,
      SEL => ALU_Out_4_BXINV_410,
      O => ALU_Out_4_F5MUX_408
    );
  ALU_Out_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => ALU_Out_4_BXINV_410
    );
  ALU_Out_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALU_Out_4_F6MUX_411,
      O => ALU_Out_4_Q
    );
  ALU_Out_4_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X11Y16"
    )
    port map (
      IA => U_ALU_ALUOP_2_4_f53,
      IB => U_ALU_ALUOP_2_3_f53,
      SEL => ALU_Out_4_BYINV_412,
      O => ALU_Out_4_F6MUX_411
    );
  ALU_Out_4_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => ALU_Out_4_BYINV_412
    );
  U_ALU_ALUOP_2_56 : X_LUT4
    generic map(
      INIT => X"FACA",
      LOC => "SLICE_X11Y16"
    )
    port map (
      ADR0 => U_ALU_FF1R_4_0,
      ADR1 => RdData1_4_0,
      ADR2 => ALUOP_0_Q,
      ADR3 => Instr_4_0,
      O => U_ALU_N341
    );
  U_ALU_ALUOP_2_4_f53_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X11Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_4_f53_F5MUX_413,
      O => U_ALU_ALUOP_2_4_f53
    );
  U_ALU_ALUOP_2_4_f53_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X11Y17"
    )
    port map (
      IA => U_ALU_N361,
      IB => U_ALU_N351,
      SEL => U_ALU_ALUOP_2_4_f53_BXINV_414,
      O => U_ALU_ALUOP_2_4_f53_F5MUX_413
    );
  U_ALU_ALUOP_2_4_f53_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => U_ALU_ALUOP_2_4_f53_BXINV_414
    );
  U_ALU_ALUOP_2_11_f6_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_11_f6_F5MUX_415,
      O => U_ALU_ALUOP_2_12_f5
    );
  U_ALU_ALUOP_2_11_f6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y16"
    )
    port map (
      IA => U_ALU_N161,
      IB => U_ALU_N151,
      SEL => U_ALU_ALUOP_2_11_f6_BXINV_416,
      O => U_ALU_ALUOP_2_11_f6_F5MUX_415
    );
  U_ALU_ALUOP_2_11_f6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_10_0,
      O => U_ALU_ALUOP_2_11_f6_BXINV_416
    );
  U_ALU_ALUOP_2_11_f6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_11_f6_F6MUX_417,
      O => U_ALU_ALUOP_2_11_f6
    );
  U_ALU_ALUOP_2_11_f6_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y16"
    )
    port map (
      IA => U_ALU_ALUOP_2_13_f5,
      IB => U_ALU_ALUOP_2_12_f5,
      SEL => U_ALU_ALUOP_2_11_f6_BYINV_418,
      O => U_ALU_ALUOP_2_11_f6_F6MUX_417
    );
  U_ALU_ALUOP_2_11_f6_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_10_0,
      O => U_ALU_ALUOP_2_11_f6_BYINV_418
    );
  U_ALU_ALUOP_2_14 : X_LUT4
    generic map(
      INIT => X"CCE4",
      LOC => "SLICE_X12Y16"
    )
    port map (
      ADR0 => U_PC_PC(5),
      ADR1 => RdData2_4_0,
      ADR2 => RdData2_5_0,
      ADR3 => N1489,
      O => U_ALU_N161
    );
  U_ALU_ALUOP_2_13_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X12Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_13_f5_F5MUX_419,
      O => U_ALU_ALUOP_2_13_f5
    );
  U_ALU_ALUOP_2_13_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y17"
    )
    port map (
      IA => U_ALU_N181,
      IB => U_ALU_N171,
      SEL => U_ALU_ALUOP_2_13_f5_BXINV_420,
      O => U_ALU_ALUOP_2_13_f5_F5MUX_419
    );
  U_ALU_ALUOP_2_13_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_10_0,
      O => U_ALU_ALUOP_2_13_f5_BXINV_420
    );
  U_ALU_ALUOP_2_12_f6_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_12_f6_F5MUX_421,
      O => U_ALU_ALUOP_2_13_f51
    );
  U_ALU_ALUOP_2_12_f6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y18"
    )
    port map (
      IA => U_ALU_N201,
      IB => U_ALU_N191,
      SEL => U_ALU_ALUOP_2_12_f6_BXINV_422,
      O => U_ALU_ALUOP_2_12_f6_F5MUX_421
    );
  U_ALU_ALUOP_2_12_f6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_10_0,
      O => U_ALU_ALUOP_2_12_f6_BXINV_422
    );
  U_ALU_ALUOP_2_12_f6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_12_f6_F6MUX_423,
      O => U_ALU_ALUOP_2_12_f6
    );
  U_ALU_ALUOP_2_12_f6_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y18"
    )
    port map (
      IA => U_ALU_ALUOP_2_14_f5,
      IB => U_ALU_ALUOP_2_13_f51,
      SEL => U_ALU_ALUOP_2_12_f6_BYINV_424,
      O => U_ALU_ALUOP_2_12_f6_F6MUX_423
    );
  U_ALU_ALUOP_2_12_f6_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_10_0,
      O => U_ALU_ALUOP_2_12_f6_BYINV_424
    );
  U_ALU_ALUOP_2_151 : X_LUT4
    generic map(
      INIT => X"CEC4",
      LOC => "SLICE_X13Y18"
    )
    port map (
      ADR0 => U_PC_PC(5),
      ADR1 => RdData2_12_0,
      ADR2 => N1489,
      ADR3 => RdData2_13_0,
      O => U_ALU_N201
    );
  U_ALU_FF1R_1_map16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_1_map16,
      O => U_ALU_FF1R_1_map16_0
    );
  U_ALU_FF1R_1_45 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X6Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData2_4_0,
      ADR2 => VCC,
      ADR3 => RdData2_3_0,
      O => U_ALU_FF1R_1_map16
    );
  U_New_PC_New_PC_addsub0000_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y8"
    )
    port map (
      IA => U_New_PC_New_PC_addsub0000_2_CY0F_426,
      IB => U_New_PC_New_PC_addsub0000_2_CYINIT_425,
      SEL => U_New_PC_New_PC_addsub0000_2_CYSELF_427,
      O => U_New_PC_Madd_New_PC_addsub0000_cy(1)
    );
  U_New_PC_New_PC_addsub0000_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => GLOBAL_LOGIC0,
      O => U_New_PC_New_PC_addsub0000_2_CYINIT_425
    );
  U_New_PC_New_PC_addsub0000_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X17Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_PC_p2_1_0,
      O => U_New_PC_New_PC_addsub0000_2_CY0F_426
    );
  U_New_PC_New_PC_addsub0000_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => N6,
      O => U_New_PC_New_PC_addsub0000_2_CYSELF_427
    );
  U_New_PC_New_PC_addsub0000_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_New_PC_addsub0000_2_XORG_428,
      O => U_New_PC_New_PC_addsub0000(2)
    );
  U_New_PC_New_PC_addsub0000_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y8"
    )
    port map (
      I0 => U_New_PC_Madd_New_PC_addsub0000_cy(1),
      I1 => N7,
      O => U_New_PC_New_PC_addsub0000_2_XORG_428
    );
  U_New_PC_New_PC_addsub0000_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_New_PC_addsub0000_2_CYMUXG_429,
      O => U_New_PC_Madd_New_PC_addsub0000_cy(2)
    );
  U_New_PC_New_PC_addsub0000_2_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X17Y8"
    )
    port map (
      IA => U_New_PC_New_PC_addsub0000_2_CY0G_430,
      IB => U_New_PC_Madd_New_PC_addsub0000_cy(1),
      SEL => U_New_PC_New_PC_addsub0000_2_CYSELG_431,
      O => U_New_PC_New_PC_addsub0000_2_CYMUXG_429
    );
  U_New_PC_New_PC_addsub0000_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X17Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_PC_p2_2_0,
      O => U_New_PC_New_PC_addsub0000_2_CY0G_430
    );
  U_New_PC_New_PC_addsub0000_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => N7,
      O => U_New_PC_New_PC_addsub0000_2_CYSELG_431
    );
  U_New_PC_Madd_New_PC_addsub0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"C693",
      LOC => "SLICE_X17Y8"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_New_PC_PC_p2_2_0,
      ADR2 => N1272_0,
      ADR3 => N1271_0,
      O => N7
    );
  MUX_ALU_Y_6_map7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_6_map7,
      O => MUX_ALU_Y_6_map7_0
    );
  MUX_ALU_Y_6_map7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_3_map7,
      O => MUX_ALU_Y_3_map7_0
    );
  MUX_ALU_Y_3_18 : X_LUT4
    generic map(
      INIT => X"F1E0",
      LOC => "SLICE_X0Y12"
    )
    port map (
      ADR0 => Instr_4_0,
      ADR1 => Instr_5_0,
      ADR2 => INW1_3_IBUF_42,
      ADR3 => INW0_3_IBUF_43,
      O => MUX_ALU_Y_3_map7
    );
  U_New_PC_New_PC_addsub0000_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_New_PC_addsub0000_3_XORF_432,
      O => U_New_PC_New_PC_addsub0000(3)
    );
  U_New_PC_New_PC_addsub0000_3_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X17Y9"
    )
    port map (
      I0 => U_New_PC_New_PC_addsub0000_3_CYINIT_433,
      I1 => N8,
      O => U_New_PC_New_PC_addsub0000_3_XORF_432
    );
  U_New_PC_New_PC_addsub0000_3_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X17Y9"
    )
    port map (
      IA => U_New_PC_New_PC_addsub0000_3_CY0F_434,
      IB => U_New_PC_New_PC_addsub0000_3_CYINIT_433,
      SEL => U_New_PC_New_PC_addsub0000_3_CYSELF_436,
      O => U_New_PC_Madd_New_PC_addsub0000_cy(3)
    );
  U_New_PC_New_PC_addsub0000_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y9"
    )
    port map (
      IA => U_New_PC_New_PC_addsub0000_3_CY0F_434,
      IB => U_New_PC_New_PC_addsub0000_3_CY0F_434,
      SEL => U_New_PC_New_PC_addsub0000_3_CYSELF_436,
      O => U_New_PC_New_PC_addsub0000_3_CYMUXF2_441
    );
  U_New_PC_New_PC_addsub0000_3_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X17Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_Madd_New_PC_addsub0000_cy(2),
      O => U_New_PC_New_PC_addsub0000_3_CYINIT_433
    );
  U_New_PC_New_PC_addsub0000_3_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X17Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_PC_p2_3_0,
      O => U_New_PC_New_PC_addsub0000_3_CY0F_434
    );
  U_New_PC_New_PC_addsub0000_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X17Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => N8,
      O => U_New_PC_New_PC_addsub0000_3_CYSELF_436
    );
  U_New_PC_New_PC_addsub0000_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_New_PC_addsub0000_3_XORG_435,
      O => U_New_PC_New_PC_addsub0000(4)
    );
  U_New_PC_New_PC_addsub0000_3_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X17Y9"
    )
    port map (
      I0 => U_New_PC_Madd_New_PC_addsub0000_cy(3),
      I1 => N9,
      O => U_New_PC_New_PC_addsub0000_3_XORG_435
    );
  U_New_PC_New_PC_addsub0000_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X17Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_Madd_New_PC_addsub0000_cy(2),
      O => U_New_PC_New_PC_addsub0000_3_FASTCARRY_439
    );
  U_New_PC_New_PC_addsub0000_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X17Y9"
    )
    port map (
      I0 => U_New_PC_New_PC_addsub0000_3_CYSELG_443,
      I1 => U_New_PC_New_PC_addsub0000_3_CYSELF_436,
      O => U_New_PC_New_PC_addsub0000_3_CYAND_438
    );
  U_New_PC_New_PC_addsub0000_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X17Y9"
    )
    port map (
      IA => U_New_PC_New_PC_addsub0000_3_CYMUXG2_440,
      IB => U_New_PC_New_PC_addsub0000_3_FASTCARRY_439,
      SEL => U_New_PC_New_PC_addsub0000_3_CYAND_438,
      O => U_New_PC_New_PC_addsub0000_3_CYMUXFAST_437
    );
  U_New_PC_New_PC_addsub0000_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y9"
    )
    port map (
      IA => U_New_PC_New_PC_addsub0000_3_CY0G_442,
      IB => U_New_PC_New_PC_addsub0000_3_CYMUXF2_441,
      SEL => U_New_PC_New_PC_addsub0000_3_CYSELG_443,
      O => U_New_PC_New_PC_addsub0000_3_CYMUXG2_440
    );
  U_New_PC_New_PC_addsub0000_3_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X17Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_PC_p2_4_0,
      O => U_New_PC_New_PC_addsub0000_3_CY0G_442
    );
  U_New_PC_New_PC_addsub0000_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X17Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => N9,
      O => U_New_PC_New_PC_addsub0000_3_CYSELG_443
    );
  U_New_PC_Madd_New_PC_addsub0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X17Y9"
    )
    port map (
      ADR0 => U_New_PC_PC_p2_4_0,
      ADR1 => Instr_3_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N9
    );
  MUX_ALU_Y_5_map7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_5_map7,
      O => MUX_ALU_Y_5_map7_0
    );
  MUX_ALU_Y_5_map7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 757 ps
    )
    port map (
      I => MUX_ALU_Y_4_map7,
      O => MUX_ALU_Y_4_map7_0
    );
  MUX_ALU_Y_4_18 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X0Y0"
    )
    port map (
      ADR0 => INW1_4_IBUF_46,
      ADR1 => Instr_4_0,
      ADR2 => Instr_5_0,
      ADR3 => INW0_4_IBUF_47,
      O => MUX_ALU_Y_4_map7
    );
  U_ALU_SUB17_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_0_XORF_444,
      O => U_ALU_SUB17(0)
    );
  U_ALU_SUB17_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X8Y14"
    )
    port map (
      I0 => U_ALU_SUB17_0_CYINIT_445,
      I1 => U_ALU_N20,
      O => U_ALU_SUB17_0_XORF_444
    );
  U_ALU_SUB17_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X8Y14"
    )
    port map (
      IA => U_ALU_SUB17_0_CY0F_446,
      IB => U_ALU_SUB17_0_CYINIT_445,
      SEL => U_ALU_SUB17_0_CYSELF_447,
      O => U_ALU_Msub_SUB17_cy(0)
    );
  U_ALU_SUB17_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X8Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => U_ALU_SUB17_0_CYINIT_445
    );
  U_ALU_SUB17_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X8Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_0_0,
      O => U_ALU_SUB17_0_CY0F_446
    );
  U_ALU_SUB17_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X8Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N20,
      O => U_ALU_SUB17_0_CYSELF_447
    );
  U_ALU_SUB17_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_0_XORG_448,
      O => U_ALU_SUB17(1)
    );
  U_ALU_SUB17_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X8Y14"
    )
    port map (
      I0 => U_ALU_Msub_SUB17_cy(0),
      I1 => U_ALU_N21,
      O => U_ALU_SUB17_0_XORG_448
    );
  U_ALU_SUB17_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_0_CYMUXG_449,
      O => U_ALU_Msub_SUB17_cy(1)
    );
  U_ALU_SUB17_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X8Y14"
    )
    port map (
      IA => U_ALU_SUB17_0_CY0G_450,
      IB => U_ALU_Msub_SUB17_cy(0),
      SEL => U_ALU_SUB17_0_CYSELG_451,
      O => U_ALU_SUB17_0_CYMUXG_449
    );
  U_ALU_SUB17_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X8Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_1_0,
      O => U_ALU_SUB17_0_CY0G_450
    );
  U_ALU_SUB17_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X8Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N21,
      O => U_ALU_SUB17_0_CYSELG_451
    );
  U_ALU_Msub_SUB17_lut_1_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X8Y14"
    )
    port map (
      ADR0 => RdData1_1_0,
      ADR1 => VCC,
      ADR2 => RdData2_1_0,
      ADR3 => VCC,
      O => U_ALU_N21
    );
  N1394_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1394,
      O => N1394_0
    );
  U_ROM_Mmux_Data61125_SW0 : X_LUT4
    generic map(
      INIT => X"7777",
      LOC => "SLICE_X17Y11"
    )
    port map (
      ADR0 => U_PC_PC_3_1_17,
      ADR1 => U_PC_PC_4_1_18,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N1394
    );
  U_ALU_SUB17_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_2_XORF_452,
      O => U_ALU_SUB17(2)
    );
  U_ALU_SUB17_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X8Y15"
    )
    port map (
      I0 => U_ALU_SUB17_2_CYINIT_453,
      I1 => U_ALU_N22,
      O => U_ALU_SUB17_2_XORF_452
    );
  U_ALU_SUB17_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X8Y15"
    )
    port map (
      IA => U_ALU_SUB17_2_CY0F_454,
      IB => U_ALU_SUB17_2_CYINIT_453,
      SEL => U_ALU_SUB17_2_CYSELF_456,
      O => U_ALU_Msub_SUB17_cy(2)
    );
  U_ALU_SUB17_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y15"
    )
    port map (
      IA => U_ALU_SUB17_2_CY0F_454,
      IB => U_ALU_SUB17_2_CY0F_454,
      SEL => U_ALU_SUB17_2_CYSELF_456,
      O => U_ALU_SUB17_2_CYMUXF2_461
    );
  U_ALU_SUB17_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(1),
      O => U_ALU_SUB17_2_CYINIT_453
    );
  U_ALU_SUB17_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_2_0,
      O => U_ALU_SUB17_2_CY0F_454
    );
  U_ALU_SUB17_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N22,
      O => U_ALU_SUB17_2_CYSELF_456
    );
  U_ALU_SUB17_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_2_XORG_455,
      O => U_ALU_SUB17(3)
    );
  U_ALU_SUB17_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X8Y15"
    )
    port map (
      I0 => U_ALU_Msub_SUB17_cy(2),
      I1 => U_ALU_N23,
      O => U_ALU_SUB17_2_XORG_455
    );
  U_ALU_SUB17_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_2_CYMUXFAST_457,
      O => U_ALU_Msub_SUB17_cy(3)
    );
  U_ALU_SUB17_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(1),
      O => U_ALU_SUB17_2_FASTCARRY_459
    );
  U_ALU_SUB17_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X8Y15"
    )
    port map (
      I0 => U_ALU_SUB17_2_CYSELG_463,
      I1 => U_ALU_SUB17_2_CYSELF_456,
      O => U_ALU_SUB17_2_CYAND_458
    );
  U_ALU_SUB17_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X8Y15"
    )
    port map (
      IA => U_ALU_SUB17_2_CYMUXG2_460,
      IB => U_ALU_SUB17_2_FASTCARRY_459,
      SEL => U_ALU_SUB17_2_CYAND_458,
      O => U_ALU_SUB17_2_CYMUXFAST_457
    );
  U_ALU_SUB17_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y15"
    )
    port map (
      IA => U_ALU_SUB17_2_CY0G_462,
      IB => U_ALU_SUB17_2_CYMUXF2_461,
      SEL => U_ALU_SUB17_2_CYSELG_463,
      O => U_ALU_SUB17_2_CYMUXG2_460
    );
  U_ALU_SUB17_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_3_0,
      O => U_ALU_SUB17_2_CY0G_462
    );
  U_ALU_SUB17_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N23,
      O => U_ALU_SUB17_2_CYSELG_463
    );
  U_ALU_Msub_SUB17_lut_3_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X8Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData1_3_0,
      ADR2 => VCC,
      ADR3 => RdData2_3_0,
      O => U_ALU_N23
    );
  U_ALU_SUB17_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_4_XORF_464,
      O => U_ALU_SUB17(4)
    );
  U_ALU_SUB17_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X8Y16"
    )
    port map (
      I0 => U_ALU_SUB17_4_CYINIT_465,
      I1 => U_ALU_N24,
      O => U_ALU_SUB17_4_XORF_464
    );
  U_ALU_SUB17_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X8Y16"
    )
    port map (
      IA => U_ALU_SUB17_4_CY0F_466,
      IB => U_ALU_SUB17_4_CYINIT_465,
      SEL => U_ALU_SUB17_4_CYSELF_468,
      O => U_ALU_Msub_SUB17_cy(4)
    );
  U_ALU_SUB17_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y16"
    )
    port map (
      IA => U_ALU_SUB17_4_CY0F_466,
      IB => U_ALU_SUB17_4_CY0F_466,
      SEL => U_ALU_SUB17_4_CYSELF_468,
      O => U_ALU_SUB17_4_CYMUXF2_473
    );
  U_ALU_SUB17_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(3),
      O => U_ALU_SUB17_4_CYINIT_465
    );
  U_ALU_SUB17_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_4_0,
      O => U_ALU_SUB17_4_CY0F_466
    );
  U_ALU_SUB17_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N24,
      O => U_ALU_SUB17_4_CYSELF_468
    );
  U_ALU_SUB17_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_4_XORG_467,
      O => U_ALU_SUB17(5)
    );
  U_ALU_SUB17_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X8Y16"
    )
    port map (
      I0 => U_ALU_Msub_SUB17_cy(4),
      I1 => U_ALU_N25,
      O => U_ALU_SUB17_4_XORG_467
    );
  U_ALU_SUB17_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_4_CYMUXFAST_469,
      O => U_ALU_Msub_SUB17_cy(5)
    );
  U_ALU_SUB17_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(3),
      O => U_ALU_SUB17_4_FASTCARRY_471
    );
  U_ALU_SUB17_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X8Y16"
    )
    port map (
      I0 => U_ALU_SUB17_4_CYSELG_475,
      I1 => U_ALU_SUB17_4_CYSELF_468,
      O => U_ALU_SUB17_4_CYAND_470
    );
  U_ALU_SUB17_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X8Y16"
    )
    port map (
      IA => U_ALU_SUB17_4_CYMUXG2_472,
      IB => U_ALU_SUB17_4_FASTCARRY_471,
      SEL => U_ALU_SUB17_4_CYAND_470,
      O => U_ALU_SUB17_4_CYMUXFAST_469
    );
  U_ALU_SUB17_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y16"
    )
    port map (
      IA => U_ALU_SUB17_4_CY0G_474,
      IB => U_ALU_SUB17_4_CYMUXF2_473,
      SEL => U_ALU_SUB17_4_CYSELG_475,
      O => U_ALU_SUB17_4_CYMUXG2_472
    );
  U_ALU_SUB17_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_5_0,
      O => U_ALU_SUB17_4_CY0G_474
    );
  U_ALU_SUB17_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N25,
      O => U_ALU_SUB17_4_CYSELG_475
    );
  U_ALU_Msub_SUB17_lut_5_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X8Y16"
    )
    port map (
      ADR0 => RdData2_5_0,
      ADR1 => RdData1_5_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N25
    );
  U_ALU_SUB17_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_6_XORF_476,
      O => U_ALU_SUB17(6)
    );
  U_ALU_SUB17_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X8Y17"
    )
    port map (
      I0 => U_ALU_SUB17_6_CYINIT_477,
      I1 => U_ALU_N26,
      O => U_ALU_SUB17_6_XORF_476
    );
  U_ALU_SUB17_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X8Y17"
    )
    port map (
      IA => U_ALU_SUB17_6_CY0F_478,
      IB => U_ALU_SUB17_6_CYINIT_477,
      SEL => U_ALU_SUB17_6_CYSELF_480,
      O => U_ALU_Msub_SUB17_cy(6)
    );
  U_ALU_SUB17_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y17"
    )
    port map (
      IA => U_ALU_SUB17_6_CY0F_478,
      IB => U_ALU_SUB17_6_CY0F_478,
      SEL => U_ALU_SUB17_6_CYSELF_480,
      O => U_ALU_SUB17_6_CYMUXF2_485
    );
  U_ALU_SUB17_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X8Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(5),
      O => U_ALU_SUB17_6_CYINIT_477
    );
  U_ALU_SUB17_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X8Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_6_0,
      O => U_ALU_SUB17_6_CY0F_478
    );
  U_ALU_SUB17_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X8Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N26,
      O => U_ALU_SUB17_6_CYSELF_480
    );
  U_ALU_SUB17_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_6_XORG_479,
      O => U_ALU_SUB17(7)
    );
  U_ALU_SUB17_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X8Y17"
    )
    port map (
      I0 => U_ALU_Msub_SUB17_cy(6),
      I1 => U_ALU_N27,
      O => U_ALU_SUB17_6_XORG_479
    );
  U_ALU_SUB17_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_6_CYMUXFAST_481,
      O => U_ALU_Msub_SUB17_cy(7)
    );
  U_ALU_SUB17_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X8Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(5),
      O => U_ALU_SUB17_6_FASTCARRY_483
    );
  U_ALU_SUB17_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X8Y17"
    )
    port map (
      I0 => U_ALU_SUB17_6_CYSELG_487,
      I1 => U_ALU_SUB17_6_CYSELF_480,
      O => U_ALU_SUB17_6_CYAND_482
    );
  U_ALU_SUB17_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X8Y17"
    )
    port map (
      IA => U_ALU_SUB17_6_CYMUXG2_484,
      IB => U_ALU_SUB17_6_FASTCARRY_483,
      SEL => U_ALU_SUB17_6_CYAND_482,
      O => U_ALU_SUB17_6_CYMUXFAST_481
    );
  U_ALU_SUB17_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y17"
    )
    port map (
      IA => U_ALU_SUB17_6_CY0G_486,
      IB => U_ALU_SUB17_6_CYMUXF2_485,
      SEL => U_ALU_SUB17_6_CYSELG_487,
      O => U_ALU_SUB17_6_CYMUXG2_484
    );
  U_ALU_SUB17_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X8Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_7_0,
      O => U_ALU_SUB17_6_CY0G_486
    );
  U_ALU_SUB17_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X8Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N27,
      O => U_ALU_SUB17_6_CYSELG_487
    );
  U_ALU_Msub_SUB17_lut_7_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X8Y17"
    )
    port map (
      ADR0 => RdData1_7_0,
      ADR1 => VCC,
      ADR2 => RdData2_7_0,
      ADR3 => VCC,
      O => U_ALU_N27
    );
  U_ALU_SUB17_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_8_XORF_488,
      O => U_ALU_SUB17(8)
    );
  U_ALU_SUB17_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X8Y18"
    )
    port map (
      I0 => U_ALU_SUB17_8_CYINIT_489,
      I1 => U_ALU_N28,
      O => U_ALU_SUB17_8_XORF_488
    );
  U_ALU_SUB17_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X8Y18"
    )
    port map (
      IA => U_ALU_SUB17_8_CY0F_490,
      IB => U_ALU_SUB17_8_CYINIT_489,
      SEL => U_ALU_SUB17_8_CYSELF_492,
      O => U_ALU_Msub_SUB17_cy(8)
    );
  U_ALU_SUB17_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y18"
    )
    port map (
      IA => U_ALU_SUB17_8_CY0F_490,
      IB => U_ALU_SUB17_8_CY0F_490,
      SEL => U_ALU_SUB17_8_CYSELF_492,
      O => U_ALU_SUB17_8_CYMUXF2_497
    );
  U_ALU_SUB17_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X8Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(7),
      O => U_ALU_SUB17_8_CYINIT_489
    );
  U_ALU_SUB17_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X8Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_8_0,
      O => U_ALU_SUB17_8_CY0F_490
    );
  U_ALU_SUB17_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X8Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N28,
      O => U_ALU_SUB17_8_CYSELF_492
    );
  U_ALU_SUB17_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_8_XORG_491,
      O => U_ALU_SUB17(9)
    );
  U_ALU_SUB17_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X8Y18"
    )
    port map (
      I0 => U_ALU_Msub_SUB17_cy(8),
      I1 => U_ALU_N29,
      O => U_ALU_SUB17_8_XORG_491
    );
  U_ALU_SUB17_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_8_CYMUXFAST_493,
      O => U_ALU_Msub_SUB17_cy(9)
    );
  U_ALU_SUB17_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X8Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(7),
      O => U_ALU_SUB17_8_FASTCARRY_495
    );
  U_ALU_SUB17_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X8Y18"
    )
    port map (
      I0 => U_ALU_SUB17_8_CYSELG_499,
      I1 => U_ALU_SUB17_8_CYSELF_492,
      O => U_ALU_SUB17_8_CYAND_494
    );
  U_ALU_SUB17_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X8Y18"
    )
    port map (
      IA => U_ALU_SUB17_8_CYMUXG2_496,
      IB => U_ALU_SUB17_8_FASTCARRY_495,
      SEL => U_ALU_SUB17_8_CYAND_494,
      O => U_ALU_SUB17_8_CYMUXFAST_493
    );
  U_ALU_SUB17_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y18"
    )
    port map (
      IA => U_ALU_SUB17_8_CY0G_498,
      IB => U_ALU_SUB17_8_CYMUXF2_497,
      SEL => U_ALU_SUB17_8_CYSELG_499,
      O => U_ALU_SUB17_8_CYMUXG2_496
    );
  U_ALU_SUB17_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X8Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_9_0,
      O => U_ALU_SUB17_8_CY0G_498
    );
  U_ALU_SUB17_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X8Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N29,
      O => U_ALU_SUB17_8_CYSELG_499
    );
  U_ALU_Msub_SUB17_lut_9_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X8Y18"
    )
    port map (
      ADR0 => RdData2_9_0,
      ADR1 => RdData1_9_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N29
    );
  U_ALU_FF1R_1_map0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y9",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_FF1R_1_map0,
      O => U_ALU_FF1R_1_map0_0
    );
  U_ALU_FF1R_1_0 : X_LUT4
    generic map(
      INIT => X"EEEE",
      LOC => "SLICE_X7Y9"
    )
    port map (
      ADR0 => RdData2_1_0,
      ADR1 => RdData2_2_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_FF1R_1_map0
    );
  U_ALU_SUB17_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_10_XORF_500,
      O => U_ALU_SUB17(10)
    );
  U_ALU_SUB17_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X8Y19"
    )
    port map (
      I0 => U_ALU_SUB17_10_CYINIT_501,
      I1 => U_ALU_N30,
      O => U_ALU_SUB17_10_XORF_500
    );
  U_ALU_SUB17_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X8Y19"
    )
    port map (
      IA => U_ALU_SUB17_10_CY0F_502,
      IB => U_ALU_SUB17_10_CYINIT_501,
      SEL => U_ALU_SUB17_10_CYSELF_504,
      O => U_ALU_Msub_SUB17_cy(10)
    );
  U_ALU_SUB17_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y19"
    )
    port map (
      IA => U_ALU_SUB17_10_CY0F_502,
      IB => U_ALU_SUB17_10_CY0F_502,
      SEL => U_ALU_SUB17_10_CYSELF_504,
      O => U_ALU_SUB17_10_CYMUXF2_509
    );
  U_ALU_SUB17_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X8Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(9),
      O => U_ALU_SUB17_10_CYINIT_501
    );
  U_ALU_SUB17_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X8Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_10_0,
      O => U_ALU_SUB17_10_CY0F_502
    );
  U_ALU_SUB17_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X8Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N30,
      O => U_ALU_SUB17_10_CYSELF_504
    );
  U_ALU_SUB17_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_10_XORG_503,
      O => U_ALU_SUB17(11)
    );
  U_ALU_SUB17_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X8Y19"
    )
    port map (
      I0 => U_ALU_Msub_SUB17_cy(10),
      I1 => U_ALU_N31,
      O => U_ALU_SUB17_10_XORG_503
    );
  U_ALU_SUB17_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_10_CYMUXFAST_505,
      O => U_ALU_Msub_SUB17_cy(11)
    );
  U_ALU_SUB17_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X8Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(9),
      O => U_ALU_SUB17_10_FASTCARRY_507
    );
  U_ALU_SUB17_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X8Y19"
    )
    port map (
      I0 => U_ALU_SUB17_10_CYSELG_511,
      I1 => U_ALU_SUB17_10_CYSELF_504,
      O => U_ALU_SUB17_10_CYAND_506
    );
  U_ALU_SUB17_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X8Y19"
    )
    port map (
      IA => U_ALU_SUB17_10_CYMUXG2_508,
      IB => U_ALU_SUB17_10_FASTCARRY_507,
      SEL => U_ALU_SUB17_10_CYAND_506,
      O => U_ALU_SUB17_10_CYMUXFAST_505
    );
  U_ALU_SUB17_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y19"
    )
    port map (
      IA => U_ALU_SUB17_10_CY0G_510,
      IB => U_ALU_SUB17_10_CYMUXF2_509,
      SEL => U_ALU_SUB17_10_CYSELG_511,
      O => U_ALU_SUB17_10_CYMUXG2_508
    );
  U_ALU_SUB17_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X8Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_11_0,
      O => U_ALU_SUB17_10_CY0G_510
    );
  U_ALU_SUB17_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X8Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N31,
      O => U_ALU_SUB17_10_CYSELG_511
    );
  U_ALU_Msub_SUB17_lut_11_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X8Y19"
    )
    port map (
      ADR0 => RdData1_11_0,
      ADR1 => RdData2_11_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N31
    );
  U_ALU_SUB17_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_12_XORF_512,
      O => U_ALU_SUB17(12)
    );
  U_ALU_SUB17_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X8Y20"
    )
    port map (
      I0 => U_ALU_SUB17_12_CYINIT_513,
      I1 => U_ALU_N32,
      O => U_ALU_SUB17_12_XORF_512
    );
  U_ALU_SUB17_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X8Y20"
    )
    port map (
      IA => U_ALU_SUB17_12_CY0F_514,
      IB => U_ALU_SUB17_12_CYINIT_513,
      SEL => U_ALU_SUB17_12_CYSELF_516,
      O => U_ALU_Msub_SUB17_cy(12)
    );
  U_ALU_SUB17_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y20"
    )
    port map (
      IA => U_ALU_SUB17_12_CY0F_514,
      IB => U_ALU_SUB17_12_CY0F_514,
      SEL => U_ALU_SUB17_12_CYSELF_516,
      O => U_ALU_SUB17_12_CYMUXF2_521
    );
  U_ALU_SUB17_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X8Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(11),
      O => U_ALU_SUB17_12_CYINIT_513
    );
  U_ALU_SUB17_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X8Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_12_0,
      O => U_ALU_SUB17_12_CY0F_514
    );
  U_ALU_SUB17_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X8Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N32,
      O => U_ALU_SUB17_12_CYSELF_516
    );
  U_ALU_SUB17_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_12_XORG_515,
      O => U_ALU_SUB17(13)
    );
  U_ALU_SUB17_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X8Y20"
    )
    port map (
      I0 => U_ALU_Msub_SUB17_cy(12),
      I1 => U_ALU_N33,
      O => U_ALU_SUB17_12_XORG_515
    );
  U_ALU_SUB17_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_SUB17_12_CYMUXFAST_517,
      O => U_ALU_Msub_SUB17_cy(13)
    );
  U_ALU_SUB17_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X8Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Msub_SUB17_cy(11),
      O => U_ALU_SUB17_12_FASTCARRY_519
    );
  U_ALU_SUB17_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X8Y20"
    )
    port map (
      I0 => U_ALU_SUB17_12_CYSELG_523,
      I1 => U_ALU_SUB17_12_CYSELF_516,
      O => U_ALU_SUB17_12_CYAND_518
    );
  U_ALU_SUB17_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X8Y20"
    )
    port map (
      IA => U_ALU_SUB17_12_CYMUXG2_520,
      IB => U_ALU_SUB17_12_FASTCARRY_519,
      SEL => U_ALU_SUB17_12_CYAND_518,
      O => U_ALU_SUB17_12_CYMUXFAST_517
    );
  U_ALU_SUB17_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y20"
    )
    port map (
      IA => U_ALU_SUB17_12_CY0G_522,
      IB => U_ALU_SUB17_12_CYMUXF2_521,
      SEL => U_ALU_SUB17_12_CYSELG_523,
      O => U_ALU_SUB17_12_CYMUXG2_520
    );
  U_ALU_SUB17_12_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X8Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData1_13_0,
      O => U_ALU_SUB17_12_CY0G_522
    );
  U_ALU_SUB17_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X8Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_N33,
      O => U_ALU_SUB17_12_CYSELG_523
    );
  U_ALU_Msub_SUB17_lut_13_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X8Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData1_13_0,
      ADR2 => VCC,
      ADR3 => RdData2_13_0,
      O => U_ALU_N33
    );
  U_ALU_ALUOP_2_14_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_14_f5_F5MUX_524,
      O => U_ALU_ALUOP_2_14_f5
    );
  U_ALU_ALUOP_2_14_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y19"
    )
    port map (
      IA => U_ALU_N221,
      IB => U_ALU_N211,
      SEL => U_ALU_ALUOP_2_14_f5_BXINV_525,
      O => U_ALU_ALUOP_2_14_f5_F5MUX_524
    );
  U_ALU_ALUOP_2_14_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_10_0,
      O => U_ALU_ALUOP_2_14_f5_BXINV_525
    );
  OUTW0_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => OUTW0_0_O,
      O => OUTW0(0)
    );
  OUTW0_0_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_0_OUTPUT_OTCLK1INV_526
    );
  OUTW0_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(0),
      O => OUTW0_0_O
    );
  OUTW0_0_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_0_OUTPUT_OFF_OCEINV_527
    );
  OUTW0_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_0_0,
      O => OUTW0_0_OUTPUT_OFF_O1INV_528
    );
  OUTW0_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => OUTW0_1_O,
      O => OUTW0(1)
    );
  OUTW0_1_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_1_OUTPUT_OTCLK1INV_529
    );
  OUTW0_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(1),
      O => OUTW0_1_O
    );
  OUTW0_1_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_1_OUTPUT_OFF_OCEINV_530
    );
  OUTW0_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_1_0,
      O => OUTW0_1_OUTPUT_OFF_O1INV_531
    );
  OUTW0_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => OUTW0_2_O,
      O => OUTW0(2)
    );
  OUTW0_2_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_2_OUTPUT_OTCLK1INV_532
    );
  OUTW0_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(2),
      O => OUTW0_2_O
    );
  OUTW0_2_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_2_OUTPUT_OFF_OCEINV_533
    );
  OUTW0_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_2_0,
      O => OUTW0_2_OUTPUT_OFF_O1INV_534
    );
  OUTW0_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD76"
    )
    port map (
      I => OUTW0_3_O,
      O => OUTW0(3)
    );
  OUTW0_3_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_3_OUTPUT_OTCLK1INV_535
    );
  OUTW0_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(3),
      O => OUTW0_3_O
    );
  OUTW0_3_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_3_OUTPUT_OFF_OCEINV_536
    );
  OUTW0_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_3_0,
      O => OUTW0_3_OUTPUT_OFF_O1INV_537
    );
  OUTW0_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => OUTW0_4_O,
      O => OUTW0(4)
    );
  OUTW0_4_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_4_OUTPUT_OTCLK1INV_538
    );
  OUTW0_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(4),
      O => OUTW0_4_O
    );
  OUTW0_4_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_4_OUTPUT_OFF_OCEINV_539
    );
  OUTW0_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_4_0,
      O => OUTW0_4_OUTPUT_OFF_O1INV_540
    );
  OUTW0_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD74"
    )
    port map (
      I => OUTW0_5_O,
      O => OUTW0(5)
    );
  OUTW0_5_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_5_OUTPUT_OTCLK1INV_541
    );
  OUTW0_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(5),
      O => OUTW0_5_O
    );
  OUTW0_5_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_5_OUTPUT_OFF_OCEINV_542
    );
  OUTW0_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_5_0,
      O => OUTW0_5_OUTPUT_OFF_O1INV_543
    );
  OUTW0_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD75"
    )
    port map (
      I => OUTW0_6_O,
      O => OUTW0(6)
    );
  OUTW0_6_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_6_OUTPUT_OTCLK1INV_544
    );
  OUTW0_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(6),
      O => OUTW0_6_O
    );
  OUTW0_6_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_6_OUTPUT_OFF_OCEINV_545
    );
  OUTW0_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_6_0,
      O => OUTW0_6_OUTPUT_OFF_O1INV_546
    );
  OUTW0_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => OUTW0_7_O,
      O => OUTW0(7)
    );
  OUTW0_7_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_7_OUTPUT_OTCLK1INV_547
    );
  OUTW0_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(7),
      O => OUTW0_7_O
    );
  OUTW0_7_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_7_OUTPUT_OFF_OCEINV_548
    );
  OUTW0_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_7_0,
      O => OUTW0_7_OUTPUT_OFF_O1INV_549
    );
  OUTW0_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => OUTW0_8_O,
      O => OUTW0(8)
    );
  OUTW0_8_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_8_OUTPUT_OTCLK1INV_550
    );
  OUTW0_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(8),
      O => OUTW0_8_O
    );
  OUTW0_8_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_8_OUTPUT_OFF_OCEINV_551
    );
  OUTW0_8_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_8_0,
      O => OUTW0_8_OUTPUT_OFF_O1INV_552
    );
  OUTW0_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => OUTW0_9_O,
      O => OUTW0(9)
    );
  OUTW0_9_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_9_OUTPUT_OTCLK1INV_553
    );
  OUTW0_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(9),
      O => OUTW0_9_O
    );
  OUTW0_9_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_9_OUTPUT_OFF_OCEINV_554
    );
  OUTW0_9_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_9_0,
      O => OUTW0_9_OUTPUT_OFF_O1INV_555
    );
  N_Flag_OBUF : X_OBUF
    generic map(
      LOC => "PAD72"
    )
    port map (
      I => N_Flag_O,
      O => N_Flag
    );
  INW0_0_IBUF : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(0),
      O => INW0_0_INBUF
    );
  INW0_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_0_INBUF,
      O => INW0_0_IBUF_25
    );
  INW0_1_IBUF : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(1),
      O => INW0_1_INBUF
    );
  INW0_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_1_INBUF,
      O => INW0_1_IBUF_35
    );
  INW0_2_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(2),
      O => INW0_2_INBUF
    );
  INW0_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_2_INBUF,
      O => INW0_2_IBUF_39
    );
  INW0_3_IBUF : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(3),
      O => INW0_3_INBUF
    );
  INW0_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_3_INBUF,
      O => INW0_3_IBUF_43
    );
  INW1_0_IBUF : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(0),
      O => INW1_0_INBUF
    );
  INW1_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_0_INBUF,
      O => INW1_0_IBUF_24
    );
  INW0_4_IBUF : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(4),
      O => INW0_4_INBUF
    );
  INW0_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_4_INBUF,
      O => INW0_4_IBUF_47
    );
  INW1_1_IBUF : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(1),
      O => INW1_1_INBUF
    );
  INW1_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_1_INBUF,
      O => INW1_1_IBUF_34
    );
  INW0_11_IBUF : X_BUF
    generic map(
      LOC => "PAD20",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(11),
      O => INW0_11_INBUF
    );
  INW0_11_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD20",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_11_INBUF,
      O => INW0_11_IBUF_31
    );
  INW0_12_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(12),
      O => INW0_12_INBUF
    );
  INW0_12_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_12_INBUF,
      O => INW0_12_IBUF_7
    );
  INW0_13_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(13),
      O => INW0_13_INBUF
    );
  INW0_13_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_13_INBUF,
      O => INW0_13_IBUF_9
    );
  INW0_14_IBUF : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(14),
      O => INW0_14_INBUF
    );
  INW0_14_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_14_INBUF,
      O => INW0_14_IBUF_11
    );
  INW0_15_IBUF : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(15),
      O => INW0_15_INBUF
    );
  INW0_15_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_15_INBUF,
      O => INW0_15_IBUF_13
    );
  INW1_10_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(10),
      O => INW1_10_INBUF
    );
  INW1_10_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_10_INBUF,
      O => INW1_10_IBUF_26
    );
  INW1_11_IBUF : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(11),
      O => INW1_11_INBUF
    );
  INW1_11_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_11_INBUF,
      O => INW1_11_IBUF_30
    );
  INW1_12_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(12),
      O => INW1_12_INBUF
    );
  INW1_12_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_12_INBUF,
      O => INW1_12_IBUF_6
    );
  INW1_13_IBUF : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(13),
      O => INW1_13_INBUF
    );
  INW1_13_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_13_INBUF,
      O => INW1_13_IBUF_8
    );
  INW1_14_IBUF : X_BUF
    generic map(
      LOC => "PAD46",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(14),
      O => INW1_14_INBUF
    );
  INW1_14_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD46",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_14_INBUF,
      O => INW1_14_IBUF_10
    );
  INW1_15_IBUF : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(15),
      O => INW1_15_INBUF
    );
  INW1_15_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_15_INBUF,
      O => INW1_15_IBUF_12
    );
  Clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk,
      O => Clk_INBUF
    );
  Z_Flag_OBUF : X_OBUF
    generic map(
      LOC => "PAD19"
    )
    port map (
      I => Z_Flag_O,
      O => Z_Flag
    );
  C_Flag_OBUF : X_OBUF
    generic map(
      LOC => "PAD50"
    )
    port map (
      I => C_Flag_O,
      O => C_Flag
    );
  Clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX3"
    )
    port map (
      I0 => Clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => Clk_BUFGP_BUFG_S_INVNOT,
      O => Clk_BUFGP
    );
  Clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX3",
      PATHPULSE => 757 ps
    )
    port map (
      I => GLOBAL_LOGIC1,
      O => Clk_BUFGP_BUFG_S_INVNOT
    );
  Clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX3",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_INBUF,
      O => Clk_BUFGP_BUFG_I0_INV
    );
  Instr_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_3_F5MUX_556,
      O => Instr_3_Q
    );
  Instr_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y10"
    )
    port map (
      IA => N1528,
      IB => N1529,
      SEL => Instr_3_BXINV_557,
      O => Instr_3_F5MUX_556
    );
  Instr_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_1_1_16,
      O => Instr_3_BXINV_557
    );
  Instr_16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_16_F5MUX_558,
      O => Instr_16_Q
    );
  Instr_16_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y15"
    )
    port map (
      IA => N1524,
      IB => N1525,
      SEL => Instr_16_BXINV_559,
      O => Instr_16_F5MUX_558
    );
  Instr_16_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(2),
      O => Instr_16_BXINV_559
    );
  RegWr_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => RegWr_F5MUX_560,
      O => RegWr
    );
  RegWr_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y15"
    )
    port map (
      IA => N1518,
      IB => N1519,
      SEL => RegWr_BXINV_561,
      O => RegWr_F5MUX_560
    );
  RegWr_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(2),
      O => RegWr_BXINV_561
    );
  Instr_17_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_17_F5MUX_562,
      O => Instr_17_Q
    );
  Instr_17_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X11Y13"
    )
    port map (
      IA => N1536,
      IB => N1537,
      SEL => Instr_17_BXINV_563,
      O => Instr_17_F5MUX_562
    );
  Instr_17_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(1),
      O => Instr_17_BXINV_563
    );
  WrReg_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => WrReg_1_F5MUX_564,
      O => WrReg(1)
    );
  WrReg_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y10"
    )
    port map (
      IA => N1506,
      IB => N1507,
      SEL => WrReg_1_BXINV_565,
      O => WrReg_1_F5MUX_564
    );
  WrReg_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(1),
      O => WrReg_1_BXINV_565
    );
  U_New_PC_New_PC_or0000_map10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_New_PC_or0000_map10_F5MUX_566,
      O => U_New_PC_New_PC_or0000_map10
    );
  U_New_PC_New_PC_or0000_map10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X16Y13"
    )
    port map (
      IA => N1545,
      IB => N1544,
      SEL => U_New_PC_New_PC_or0000_map10_BXINV_567,
      O => U_New_PC_New_PC_or0000_map10_F5MUX_566
    );
  U_New_PC_New_PC_or0000_map10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(1),
      O => U_New_PC_New_PC_or0000_map10_BXINV_567
    );
  INW0_5_IBUF : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(5),
      O => INW0_5_INBUF
    );
  INW0_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_5_INBUF,
      O => INW0_5_IBUF_45
    );
  INW1_2_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(2),
      O => INW1_2_INBUF
    );
  INW1_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_2_INBUF,
      O => INW1_2_IBUF_38
    );
  INW0_6_IBUF : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(6),
      O => INW0_6_INBUF
    );
  INW0_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_6_INBUF,
      O => INW0_6_IBUF_41
    );
  INW1_3_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(3),
      O => INW1_3_INBUF
    );
  INW1_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_3_INBUF,
      O => INW1_3_IBUF_42
    );
  INW0_7_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(7),
      O => INW0_7_INBUF
    );
  INW0_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_7_INBUF,
      O => INW0_7_IBUF_37
    );
  INW1_4_IBUF : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(4),
      O => INW1_4_INBUF
    );
  INW1_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_4_INBUF,
      O => INW1_4_IBUF_46
    );
  INW0_8_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(8),
      O => INW0_8_INBUF
    );
  INW0_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_8_INBUF,
      O => INW0_8_IBUF_33
    );
  INW1_5_IBUF : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(5),
      O => INW1_5_INBUF
    );
  INW1_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_5_INBUF,
      O => INW1_5_IBUF_44
    );
  INW0_9_IBUF : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(9),
      O => INW0_9_INBUF
    );
  INW0_9_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_9_INBUF,
      O => INW0_9_IBUF_29
    );
  INW1_6_IBUF : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(6),
      O => INW1_6_INBUF
    );
  INW1_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_6_INBUF,
      O => INW1_6_IBUF_40
    );
  INW1_7_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(7),
      O => INW1_7_INBUF
    );
  INW1_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_7_INBUF,
      O => INW1_7_IBUF_36
    );
  INW1_8_IBUF : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(8),
      O => INW1_8_INBUF
    );
  INW1_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_8_INBUF,
      O => INW1_8_IBUF_32
    );
  INW1_9_IBUF : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1(9),
      O => INW1_9_INBUF
    );
  INW1_9_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW1_9_INBUF,
      O => INW1_9_IBUF_28
    );
  OUTW0_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD81"
    )
    port map (
      I => OUTW0_10_O,
      O => OUTW0(10)
    );
  OUTW0_10_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_10_OUTPUT_OTCLK1INV_568
    );
  OUTW0_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(10),
      O => OUTW0_10_O
    );
  OUTW0_10_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_10_OUTPUT_OFF_OCEINV_569
    );
  OUTW0_10_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_10_0,
      O => OUTW0_10_OUTPUT_OFF_O1INV_570
    );
  OUTW0_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD65"
    )
    port map (
      I => OUTW0_11_O,
      O => OUTW0(11)
    );
  OUTW0_11_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_11_OUTPUT_OTCLK1INV_571
    );
  OUTW0_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(11),
      O => OUTW0_11_O
    );
  OUTW0_11_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_11_OUTPUT_OFF_OCEINV_572
    );
  OUTW0_11_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_11_0,
      O => OUTW0_11_OUTPUT_OFF_O1INV_573
    );
  OUTW0_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => OUTW0_12_O,
      O => OUTW0(12)
    );
  OUTW0_12_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_12_OUTPUT_OTCLK1INV_574
    );
  OUTW0_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(12),
      O => OUTW0_12_O
    );
  OUTW0_12_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_12_OUTPUT_OFF_OCEINV_575
    );
  OUTW0_12_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_12_0,
      O => OUTW0_12_OUTPUT_OFF_O1INV_576
    );
  OUTW0_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => OUTW0_13_O,
      O => OUTW0(13)
    );
  OUTW0_13_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_13_OUTPUT_OTCLK1INV_577
    );
  OUTW0_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(13),
      O => OUTW0_13_O
    );
  OUTW0_13_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_13_OUTPUT_OFF_OCEINV_578
    );
  OUTW0_13_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_13_0,
      O => OUTW0_13_OUTPUT_OFF_O1INV_579
    );
  OUTW0_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD64"
    )
    port map (
      I => OUTW0_14_O,
      O => OUTW0(14)
    );
  OUTW0_14_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_14_OUTPUT_OTCLK1INV_580
    );
  OUTW0_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(14),
      O => OUTW0_14_O
    );
  OUTW0_14_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_14_OUTPUT_OFF_OCEINV_581
    );
  OUTW0_14_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_14_0,
      O => OUTW0_14_OUTPUT_OFF_O1INV_582
    );
  OUTW0_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD57"
    )
    port map (
      I => OUTW0_15_O,
      O => OUTW0(15)
    );
  OUTW0_15_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OUTW0_15_OUTPUT_OTCLK1INV_583
    );
  OUTW0_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0(15),
      O => OUTW0_15_O
    );
  OUTW0_15_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_DataMem_OUTW0_and0000_0,
      O => OUTW0_15_OUTPUT_OFF_OCEINV_584
    );
  OUTW0_15_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_15_0,
      O => OUTW0_15_OUTPUT_OFF_O1INV_585
    );
  OV_Flag_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => OV_Flag_O,
      O => OV_Flag
    );
  OV_Flag_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 757 ps
    )
    port map (
      I => Clk_BUFGP,
      O => OV_Flag_OUTPUT_OTCLK1INV_586
    );
  OV_Flag_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_OVflag_587,
      O => OV_Flag_O
    );
  OV_Flag_OUTPUT_OFF_OCEINV : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 757 ps
    )
    port map (
      I => CE_OVF,
      O => OV_Flag_OUTPUT_OFF_OCEINV_588
    );
  OV_Flag_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_OVFLAG1,
      O => OV_Flag_OUTPUT_OFF_O1INV_589
    );
  INW0_10_IBUF : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0(10),
      O => INW0_10_INBUF
    );
  INW0_10_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 757 ps
    )
    port map (
      I => INW0_10_INBUF,
      O => INW0_10_IBUF_27
    );
  U_New_PC_New_PC_or0000_map2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_New_PC_New_PC_or0000_map2_F5MUX_590,
      O => U_New_PC_New_PC_or0000_map2
    );
  U_New_PC_New_PC_or0000_map2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X16Y12"
    )
    port map (
      IA => N1538,
      IB => U_New_PC_New_PC_or0000_map2_F,
      SEL => U_New_PC_New_PC_or0000_map2_BXINV_591,
      O => U_New_PC_New_PC_or0000_map2_F5MUX_590
    );
  U_New_PC_New_PC_or0000_map2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(5),
      O => U_New_PC_New_PC_or0000_map2_BXINV_591
    );
  U_ALU_ALUOP_2_6_f5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_ALUOP_2_6_f5_F5MUX_592,
      O => U_ALU_ALUOP_2_6_f5
    );
  U_ALU_ALUOP_2_6_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y21"
    )
    port map (
      IA => U_ALU_N241,
      IB => U_ALU_N231,
      SEL => U_ALU_ALUOP_2_6_f5_BXINV_593,
      O => U_ALU_ALUOP_2_6_f5_F5MUX_592
    );
  U_ALU_ALUOP_2_6_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => U_ALU_ALUOP_2_6_f5_BXINV_593
    );
  Instr_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_0_F5MUX_594,
      O => Instr_0_Q
    );
  Instr_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y10"
    )
    port map (
      IA => N1462,
      IB => N1463,
      SEL => Instr_0_BXINV_595,
      O => Instr_0_F5MUX_594
    );
  Instr_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_5_1_19,
      O => Instr_0_BXINV_595
    );
  MemWr_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => MemWr_F5MUX_596,
      O => MemWr
    );
  MemWr_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y8"
    )
    port map (
      IA => N1520,
      IB => N1521,
      SEL => MemWr_BXINV_597,
      O => MemWr_F5MUX_596
    );
  MemWr_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(4),
      O => MemWr_BXINV_597
    );
  U_Ctrl_RegWr_cmp_eq0000_G : X_LUT4
    generic map(
      INIT => X"0402",
      LOC => "SLICE_X12Y8"
    )
    port map (
      ADR0 => U_PC_PC(2),
      ADR1 => U_PC_PC(3),
      ADR2 => U_PC_PC(5),
      ADR3 => U_PC_PC(1),
      O => N1521
    );
  WrReg_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => WrReg_0_F5MUX_598,
      O => WrReg(0)
    );
  WrReg_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X10Y6"
    )
    port map (
      IA => N1522,
      IB => N1523,
      SEL => WrReg_0_BXINV_599,
      O => WrReg_0_F5MUX_598
    );
  WrReg_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(3),
      O => WrReg_0_BXINV_599
    );
  N81_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => N81_F5MUX_600,
      O => N81
    );
  N81_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X18Y10"
    )
    port map (
      IA => N1504,
      IB => N1505,
      SEL => N81_BXINV_601,
      O => N81_F5MUX_600
    );
  N81_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(5),
      O => N81_BXINV_601
    );
  ALUOP_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_0_F5MUX_602,
      O => ALUOP_0_Q
    );
  ALUOP_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y12"
    )
    port map (
      IA => N1534,
      IB => N1535,
      SEL => ALUOP_0_BXINV_603,
      O => ALUOP_0_F5MUX_602
    );
  ALUOP_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y12",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(4),
      O => ALUOP_0_BXINV_603
    );
  Instr_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_1_F5MUX_604,
      O => Instr_1_Q
    );
  Instr_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y11"
    )
    port map (
      IA => N1530,
      IB => N1531,
      SEL => Instr_1_BXINV_605,
      O => Instr_1_F5MUX_604
    );
  Instr_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_1_1_16,
      O => Instr_1_BXINV_605
    );
  Instr_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_2_F5MUX_606,
      O => Instr_2_Q
    );
  Instr_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y11"
    )
    port map (
      IA => N1532,
      IB => N1533,
      SEL => Instr_2_BXINV_607,
      O => Instr_2_F5MUX_606
    );
  Instr_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y11",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC_3_2_22,
      O => Instr_2_BXINV_607
    );
  N1444_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1444_F5MUX_608,
      O => N1444
    );
  N1444_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X9Y22"
    )
    port map (
      IA => N1496,
      IB => N1497,
      SEL => N1444_BXINV_609,
      O => N1444_F5MUX_608
    );
  N1444_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_2_0,
      O => N1444_BXINV_609
    );
  Instr_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => Instr_18_F5MUX_610,
      O => Instr_18_Q
    );
  Instr_18_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y16"
    )
    port map (
      IA => N1526,
      IB => N1527,
      SEL => Instr_18_BXINV_611,
      O => Instr_18_F5MUX_610
    );
  Instr_18_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y16",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_PC_PC(5),
      O => Instr_18_BXINV_611
    );
  N1401_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => N1401_F5MUX_612,
      O => N1401
    );
  N1401_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X10Y17"
    )
    port map (
      IA => N1464,
      IB => N1401_F,
      SEL => N1401_BXINV_613,
      O => N1401_F5MUX_612
    );
  N1401_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y17",
      PATHPULSE => 757 ps
    )
    port map (
      I => RdData2_7_0,
      O => N1401_BXINV_613
    );
  WRData_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_10_F5MUX_614,
      O => WRData(10)
    );
  WRData_10_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X11Y18"
    )
    port map (
      IA => N1512,
      IB => N1513,
      SEL => WRData_10_BXINV_615,
      O => WRData_10_F5MUX_614
    );
  WRData_10_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y18",
      PATHPULSE => 757 ps
    )
    port map (
      I => N0,
      O => WRData_10_BXINV_615
    );
  WRData_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_11_F5MUX_616,
      O => WRData(11)
    );
  WRData_11_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X11Y25"
    )
    port map (
      IA => N1510,
      IB => N1511,
      SEL => WRData_11_BXINV_617,
      O => WRData_11_F5MUX_616
    );
  WRData_11_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y25",
      PATHPULSE => 757 ps
    )
    port map (
      I => N0,
      O => WRData_11_BXINV_617
    );
  WRData_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_12_F5MUX_618,
      O => WRData(12)
    );
  WRData_12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y22"
    )
    port map (
      IA => N1472,
      IB => N1473,
      SEL => WRData_12_BXINV_619,
      O => WRData_12_F5MUX_618
    );
  WRData_12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_0_Q,
      O => WRData_12_BXINV_619
    );
  WRData_13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => WRData_13_F5MUX_620,
      O => WRData(13)
    );
  WRData_13_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y20"
    )
    port map (
      IA => N1470,
      IB => N1471,
      SEL => WRData_13_BXINV_621,
      O => WRData_13_F5MUX_620
    );
  WRData_13_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y20",
      PATHPULSE => 757 ps
    )
    port map (
      I => ALUOP_0_Q,
      O => WRData_13_BXINV_621
    );
  MUX_ALU_Y_14_58_F : X_LUT4
    generic map(
      INIT => X"7744",
      LOC => "SLICE_X11Y22"
    )
    port map (
      ADR0 => N1417_0,
      ADR1 => N0,
      ADR2 => VCC,
      ADR3 => MUX_ALU_Y_14_map11_0,
      O => N1468
    );
  MUX_ALU_Y_15_58_F : X_LUT4
    generic map(
      INIT => X"0CFC",
      LOC => "SLICE_X12Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => MUX_ALU_Y_15_map11_0,
      ADR2 => N0,
      ADR3 => U_ALU_ALUOP_2_5_f54,
      O => N1474
    );
  U_ALU_ALUOP_2_74 : X_LUT4
    generic map(
      INIT => X"03F3",
      LOC => "SLICE_X11Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U_ALU_ADD17(15),
      ADR2 => ALUOP_0_Q,
      ADR3 => U_ALU_SUB17(15),
      O => U_ALU_N141
    );
  MUX_ALU_Y_5_58_F : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X7Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Instr_8_0,
      ADR2 => U_DataMem_MemData_5_0,
      ADR3 => MUX_ALU_Y_5_map7_0,
      O => N1502
    );
  MUX_ALU_Y_6_58_F : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X7Y13"
    )
    port map (
      ADR0 => Instr_8_0,
      ADR1 => MUX_ALU_Y_6_map7_0,
      ADR2 => U_DataMem_MemData_6_0,
      ADR3 => VCC,
      O => N1500
    );
  MUX_ALU_Y_0_1_F : X_LUT4
    generic map(
      INIT => X"FEFE",
      LOC => "SLICE_X13Y14"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(3),
      ADR3 => VCC,
      O => N1494
    );
  MUX_ALU_Y_7_58_F : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X7Y18"
    )
    port map (
      ADR0 => U_DataMem_MemData_7_0,
      ADR1 => MUX_ALU_Y_7_map7_0,
      ADR2 => Instr_8_0,
      ADR3 => VCC,
      O => N1498
    );
  MUX_ALU_Y_8_58_F : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X7Y20"
    )
    port map (
      ADR0 => U_DataMem_MemData_8_0,
      ADR1 => Instr_8_0,
      ADR2 => VCC,
      ADR3 => MUX_ALU_Y_8_map7_0,
      O => N1516
    );
  MUX_ALU_Y_9_58_F : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X8Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Instr_8_0,
      ADR2 => MUX_ALU_Y_9_map7_0,
      ADR3 => U_DataMem_MemData_9_0,
      O => N1514
    );
  U_Ctrl_CE_NF_or0000_F : X_LUT4
    generic map(
      INIT => X"1224",
      LOC => "SLICE_X14Y16"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(1),
      ADR3 => U_PC_PC(3),
      O => N1508
    );
  U_ALU_FF1R_16_SW11 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X15Y20"
    )
    port map (
      ADR0 => RdData2_11_0,
      ADR1 => RdData2_14_0,
      ADR2 => RdData2_13_0,
      ADR3 => RdData2_12_0,
      O => N1543
    );
  U_ROM_Mmux_Data91_F : X_LUT4
    generic map(
      INIT => X"8002",
      LOC => "SLICE_X13Y16"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(1),
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(2),
      O => N1526
    );
  U_ALU_FF1R_0_23_SW1_F : X_LUT4
    generic map(
      INIT => X"DCDD",
      LOC => "SLICE_X10Y17"
    )
    port map (
      ADR0 => RdData2_9_0,
      ADR1 => RdData2_8_0,
      ADR2 => RdData2_10_0,
      ADR3 => RdData2_11_0,
      O => N1464
    );
  MUX_ALU_Y_10_58_F : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X11Y18"
    )
    port map (
      ADR0 => MUX_ALU_Y_10_map7_0,
      ADR1 => U_DataMem_MemData_10_0,
      ADR2 => Instr_8_0,
      ADR3 => VCC,
      O => N1512
    );
  MUX_ALU_Y_11_58_F : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X11Y25"
    )
    port map (
      ADR0 => U_DataMem_MemData_11_0,
      ADR1 => VCC,
      ADR2 => Instr_8_0,
      ADR3 => MUX_ALU_Y_11_map7_0,
      O => N1510
    );
  MUX_ALU_Y_12_58_F : X_LUT4
    generic map(
      INIT => X"7474",
      LOC => "SLICE_X13Y22"
    )
    port map (
      ADR0 => N1425_0,
      ADR1 => N0,
      ADR2 => MUX_ALU_Y_12_map11_0,
      ADR3 => VCC,
      O => N1472
    );
  MUX_ALU_Y_13_58_F : X_LUT4
    generic map(
      INIT => X"22EE",
      LOC => "SLICE_X13Y20"
    )
    port map (
      ADR0 => MUX_ALU_Y_13_map11_0,
      ADR1 => N0,
      ADR2 => VCC,
      ADR3 => N1423_0,
      O => N1470
    );
  MUX_ALU_Y_14_58_G : X_LUT4
    generic map(
      INIT => X"7340",
      LOC => "SLICE_X11Y22"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => N0,
      ADR2 => U_ALU_SUB17(14),
      ADR3 => MUX_ALU_Y_14_map11_0,
      O => N1469
    );
  MUX_ALU_Y_15_58_G : X_LUT4
    generic map(
      INIT => X"5C0C",
      LOC => "SLICE_X12Y21"
    )
    port map (
      ADR0 => ALUOP_0_Q,
      ADR1 => MUX_ALU_Y_15_map11_0,
      ADR2 => N0,
      ADR3 => RdData2_15_0,
      O => N1475
    );
  U_ALU_ALUOP_2_64 : X_LUT4
    generic map(
      INIT => X"033F",
      LOC => "SLICE_X11Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData1_15_0,
      ADR2 => ALUOP_0_Q,
      ADR3 => RdData2_15_0,
      O => U_ALU_N131
    );
  U_ALU_ALUOP_2_61 : X_LUT4
    generic map(
      INIT => X"DDD8",
      LOC => "SLICE_X14Y20"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => U_ALU_ALUOP_2_6_f5,
      ADR2 => ALUOP_0_Q,
      ADR3 => U_ALU_Madd_ADD17_cy(15),
      O => N1541
    );
  MUX_ALU_Y_5_58_G : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X7Y11"
    )
    port map (
      ADR0 => U_ALU_N38_0,
      ADR1 => RdData2_5_0,
      ADR2 => VCC,
      ADR3 => ALUOP_2_0,
      O => N1503
    );
  MUX_ALU_Y_6_58_G : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X7Y13"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => VCC,
      ADR2 => RdData2_6_0,
      ADR3 => U_ALU_N40,
      O => N1501
    );
  MUX_ALU_Y_0_1_G : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X13Y14"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(1),
      O => N1495
    );
  MUX_ALU_Y_7_58_G : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X7Y18"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => U_ALU_N42,
      ADR2 => VCC,
      ADR3 => RdData2_7_0,
      O => N1499
    );
  MUX_ALU_Y_8_58_G : X_LUT4
    generic map(
      INIT => X"5033",
      LOC => "SLICE_X7Y20"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => N1433,
      ADR2 => U_ALU_SUB17(8),
      ADR3 => ALUOP_0_Q,
      O => N1517
    );
  MUX_ALU_Y_9_58_G : X_LUT4
    generic map(
      INIT => X"0A33",
      LOC => "SLICE_X8Y24"
    )
    port map (
      ADR0 => U_ALU_SUB17(9),
      ADR1 => N1431,
      ADR2 => ALUOP_2_0,
      ADR3 => ALUOP_0_Q,
      O => N1515
    );
  U_Ctrl_CE_NF_or0000_G : X_LUT4
    generic map(
      INIT => X"0841",
      LOC => "SLICE_X14Y16"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(1),
      ADR3 => U_PC_PC(3),
      O => N1509
    );
  U_ALU_ALUOP_2_65 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X6Y11"
    )
    port map (
      ADR0 => ALUOP_0_Q,
      ADR1 => U_ALU_ADD17(1),
      ADR2 => VCC,
      ADR3 => U_ALU_SUB17(1),
      O => U_ALU_N271
    );
  U_ALU_Mmux_Ys_6 : X_LUT4
    generic map(
      INIT => X"AA3C",
      LOC => "SLICE_X9Y13"
    )
    port map (
      ADR0 => U_ALU_SUB17(0),
      ADR1 => RdData1_0_0,
      ADR2 => RdData2_0_0,
      ADR3 => ALUOP_0_Q,
      O => U_ALU_N210
    );
  U_ALU_ALUOP_2_66 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X10Y15"
    )
    port map (
      ADR0 => ALUOP_0_Q,
      ADR1 => U_ALU_ADD17(2),
      ADR2 => VCC,
      ADR3 => U_ALU_SUB17(2),
      O => U_ALU_N301
    );
  U_ALU_ALUOP_2_67 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X8Y13"
    )
    port map (
      ADR0 => U_ALU_ADD17(3),
      ADR1 => U_ALU_SUB17(3),
      ADR2 => ALUOP_0_Q,
      ADR3 => VCC,
      O => U_ALU_N331
    );
  U_ALU_ALUOP_2_68 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X11Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U_ALU_SUB17(4),
      ADR2 => ALUOP_0_Q,
      ADR3 => U_ALU_ADD17(4),
      O => U_ALU_N361
    );
  U_ALU_ALUOP_2_15 : X_LUT4
    generic map(
      INIT => X"CCAC",
      LOC => "SLICE_X12Y17"
    )
    port map (
      ADR0 => RdData2_1_0,
      ADR1 => RdData2_0_0,
      ADR2 => U_PC_PC(5),
      ADR3 => N1489,
      O => U_ALU_N181
    );
  U_ALU_ALUOP_2_16 : X_LUT4
    generic map(
      INIT => X"AEA2",
      LOC => "SLICE_X13Y19"
    )
    port map (
      ADR0 => RdData2_8_0,
      ADR1 => U_PC_PC(5),
      ADR2 => N1489,
      ADR3 => RdData2_9_0,
      O => U_ALU_N221
    );
  U_ROM_Mmux_Data171_F : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X15Y10"
    )
    port map (
      ADR0 => U_PC_PC_4_1_18,
      ADR1 => U_PC_PC_2_1_3,
      ADR2 => U_PC_PC_3_2_22,
      ADR3 => U_PC_PC_5_1_19,
      O => N1528
    );
  U_ROM_Mmux_Data752_F : X_LUT4
    generic map(
      INIT => X"502E",
      LOC => "SLICE_X13Y15"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(1),
      O => N1524
    );
  U_Ctrl_RegWr79_F : X_LUT4
    generic map(
      INIT => X"E61B",
      LOC => "SLICE_X12Y15"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(3),
      ADR2 => U_PC_PC(5),
      ADR3 => U_PC_PC(4),
      O => N1518
    );
  U_ROM_Mmux_Data893_F : X_LUT4
    generic map(
      INIT => X"0D76",
      LOC => "SLICE_X11Y13"
    )
    port map (
      ADR0 => U_PC_PC(3),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(4),
      ADR3 => U_PC_PC(2),
      O => N1536
    );
  MUX_RegDest_Y_1_F : X_LUT4
    generic map(
      INIT => X"136C",
      LOC => "SLICE_X13Y10"
    )
    port map (
      ADR0 => U_PC_PC_4_1_18,
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC_3_1_17,
      ADR3 => U_PC_PC(2),
      O => N1506
    );
  U_New_PC_New_PC_or0000202 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X16Y13"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_ALU_Nflag_20,
      ADR2 => U_PC_PC(2),
      ADR3 => U_PC_PC(5),
      O => N1545
    );
  U_New_PC_New_PC_or0000511 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X16Y12"
    )
    port map (
      ADR0 => U_PC_PC(2),
      ADR1 => N4_0,
      ADR2 => U_ALU_Cflag_2,
      ADR3 => U_PC_PC(4),
      O => N1538
    );
  U_ALU_ALUOP_2_8 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X13Y21"
    )
    port map (
      ADR0 => U_ALU_N92_0,
      ADR1 => U_ALU_N192,
      ADR2 => ALUOP_0_Q,
      ADR3 => N1460,
      O => U_ALU_N241
    );
  U_ROM_Mmux_Data1_F : X_LUT4
    generic map(
      INIT => X"FCF1",
      LOC => "SLICE_X14Y10"
    )
    port map (
      ADR0 => U_PC_PC_1_1_16,
      ADR1 => U_PC_PC_4_1_18,
      ADR2 => U_PC_PC_2_1_3,
      ADR3 => U_PC_PC_3_1_17,
      O => N1462
    );
  U_Ctrl_RegWr_cmp_eq0000_F : X_LUT4
    generic map(
      INIT => X"1248",
      LOC => "SLICE_X12Y8"
    )
    port map (
      ADR0 => U_PC_PC(2),
      ADR1 => U_PC_PC(3),
      ADR2 => U_PC_PC(5),
      ADR3 => U_PC_PC(1),
      O => N1520
    );
  MUX_RegDest_Y_0_92_F : X_LUT4
    generic map(
      INIT => X"0695",
      LOC => "SLICE_X10Y6"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(2),
      ADR3 => U_PC_PC(4),
      O => N1522
    );
  U_New_PC_New_PC_or000022_F : X_LUT4
    generic map(
      INIT => X"8010",
      LOC => "SLICE_X18Y10"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(2),
      ADR2 => U_PC_PC(4),
      ADR3 => U_PC_PC(3),
      O => N1504
    );
  U_Ctrl_ALUOP_0_F : X_LUT4
    generic map(
      INIT => X"CDCC",
      LOC => "SLICE_X13Y12"
    )
    port map (
      ADR0 => N23_0,
      ADR1 => N11_0,
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(1),
      O => N1534
    );
  U_ROM_Mmux_Data11_F : X_LUT4
    generic map(
      INIT => X"0666",
      LOC => "SLICE_X15Y11"
    )
    port map (
      ADR0 => U_PC_PC_3_1_17,
      ADR1 => U_PC_PC_4_2_23,
      ADR2 => U_PC_PC_2_1_3,
      ADR3 => U_PC_PC_5_1_19,
      O => N1530
    );
  U_ROM_Mmux_Data16_F : X_LUT4
    generic map(
      INIT => X"1404",
      LOC => "SLICE_X14Y11"
    )
    port map (
      ADR0 => U_PC_PC_1_1_16,
      ADR1 => U_PC_PC_4_1_18,
      ADR2 => U_PC_PC_2_1_3,
      ADR3 => U_PC_PC_5_1_19,
      O => N1532
    );
  U_ALU_ZFLAG1_cmp_eq000076_SW0_SW0_SW0_SW0_F : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X9Y22"
    )
    port map (
      ADR0 => U_ALU_ADD17(13),
      ADR1 => U_ALU_ADD17(12),
      ADR2 => VCC,
      ADR3 => U_ALU_ADD17(14),
      O => N1496
    );
  U_ALU_ALUOP_2_55 : X_LUT4
    generic map(
      INIT => X"E8E8",
      LOC => "SLICE_X8Y13"
    )
    port map (
      ADR0 => RdData2_3_0,
      ADR1 => ALUOP_0_Q,
      ADR2 => RdData1_3_0,
      ADR3 => VCC,
      O => U_ALU_N321
    );
  U_ALU_ALUOP_2_57 : X_LUT4
    generic map(
      INIT => X"FCC0",
      LOC => "SLICE_X11Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData1_4_0,
      ADR2 => RdData2_4_0,
      ADR3 => ALUOP_0_Q,
      O => U_ALU_N351
    );
  U_ALU_ALUOP_2_141 : X_LUT4
    generic map(
      INIT => X"DC8C",
      LOC => "SLICE_X12Y17"
    )
    port map (
      ADR0 => N1489,
      ADR1 => RdData2_2_0,
      ADR2 => U_PC_PC(5),
      ADR3 => RdData2_3_0,
      O => U_ALU_N171
    );
  U_ALU_ALUOP_2_152 : X_LUT4
    generic map(
      INIT => X"CCE4",
      LOC => "SLICE_X13Y19"
    )
    port map (
      ADR0 => U_PC_PC(5),
      ADR1 => RdData2_10_0,
      ADR2 => RdData2_11_0,
      ADR3 => N1489,
      O => U_ALU_N211
    );
  U_DataMem_OUTW0_0 : X_FF
    generic map(
      LOC => "PAD62",
      INIT => '0'
    )
    port map (
      I => OUTW0_0_OUTPUT_OFF_O1INV_528,
      CE => OUTW0_0_OUTPUT_OFF_OCEINV_527,
      CLK => OUTW0_0_OUTPUT_OTCLK1INV_526,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(0)
    );
  U_DataMem_OUTW0_1 : X_FF
    generic map(
      LOC => "PAD77",
      INIT => '0'
    )
    port map (
      I => OUTW0_1_OUTPUT_OFF_O1INV_531,
      CE => OUTW0_1_OUTPUT_OFF_OCEINV_530,
      CLK => OUTW0_1_OUTPUT_OTCLK1INV_529,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(1)
    );
  U_DataMem_OUTW0_2 : X_FF
    generic map(
      LOC => "PAD82",
      INIT => '0'
    )
    port map (
      I => OUTW0_2_OUTPUT_OFF_O1INV_534,
      CE => OUTW0_2_OUTPUT_OFF_OCEINV_533,
      CLK => OUTW0_2_OUTPUT_OTCLK1INV_532,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(2)
    );
  U_DataMem_OUTW0_3 : X_FF
    generic map(
      LOC => "PAD76",
      INIT => '0'
    )
    port map (
      I => OUTW0_3_OUTPUT_OFF_O1INV_537,
      CE => OUTW0_3_OUTPUT_OFF_OCEINV_536,
      CLK => OUTW0_3_OUTPUT_OTCLK1INV_535,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(3)
    );
  U_DataMem_OUTW0_4 : X_FF
    generic map(
      LOC => "PAD84",
      INIT => '0'
    )
    port map (
      I => OUTW0_4_OUTPUT_OFF_O1INV_540,
      CE => OUTW0_4_OUTPUT_OFF_OCEINV_539,
      CLK => OUTW0_4_OUTPUT_OTCLK1INV_538,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(4)
    );
  U_DataMem_OUTW0_5 : X_FF
    generic map(
      LOC => "PAD74",
      INIT => '0'
    )
    port map (
      I => OUTW0_5_OUTPUT_OFF_O1INV_543,
      CE => OUTW0_5_OUTPUT_OFF_OCEINV_542,
      CLK => OUTW0_5_OUTPUT_OTCLK1INV_541,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(5)
    );
  U_DataMem_OUTW0_6 : X_FF
    generic map(
      LOC => "PAD75",
      INIT => '0'
    )
    port map (
      I => OUTW0_6_OUTPUT_OFF_O1INV_546,
      CE => OUTW0_6_OUTPUT_OFF_OCEINV_545,
      CLK => OUTW0_6_OUTPUT_OTCLK1INV_544,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(6)
    );
  U_DataMem_OUTW0_7 : X_FF
    generic map(
      LOC => "PAD98",
      INIT => '0'
    )
    port map (
      I => OUTW0_7_OUTPUT_OFF_O1INV_549,
      CE => OUTW0_7_OUTPUT_OFF_OCEINV_548,
      CLK => OUTW0_7_OUTPUT_OTCLK1INV_547,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(7)
    );
  U_DataMem_OUTW0_8 : X_FF
    generic map(
      LOC => "PAD71",
      INIT => '0'
    )
    port map (
      I => OUTW0_8_OUTPUT_OFF_O1INV_552,
      CE => OUTW0_8_OUTPUT_OFF_OCEINV_551,
      CLK => OUTW0_8_OUTPUT_OTCLK1INV_550,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(8)
    );
  U_DataMem_OUTW0_9 : X_FF
    generic map(
      LOC => "PAD85",
      INIT => '0'
    )
    port map (
      I => OUTW0_9_OUTPUT_OFF_O1INV_555,
      CE => OUTW0_9_OUTPUT_OFF_OCEINV_554,
      CLK => OUTW0_9_OUTPUT_OTCLK1INV_553,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(9)
    );
  U_ALU_ALUOP_2_51 : X_LUT4
    generic map(
      INIT => X"EE88",
      LOC => "SLICE_X6Y11"
    )
    port map (
      ADR0 => ALUOP_0_Q,
      ADR1 => RdData1_1_0,
      ADR2 => VCC,
      ADR3 => RdData2_1_0,
      O => U_ALU_N261
    );
  U_ALU_Mmux_Ys_51 : X_LUT4
    generic map(
      INIT => X"FAA0",
      LOC => "SLICE_X9Y13"
    )
    port map (
      ADR0 => RdData1_0_0,
      ADR1 => VCC,
      ADR2 => RdData2_0_0,
      ADR3 => ALUOP_0_Q,
      O => U_ALU_N111
    );
  U_ALU_ALUOP_2_53 : X_LUT4
    generic map(
      INIT => X"EE88",
      LOC => "SLICE_X10Y15"
    )
    port map (
      ADR0 => RdData2_2_0,
      ADR1 => ALUOP_0_Q,
      ADR2 => VCC,
      ADR3 => RdData1_2_0,
      O => U_ALU_N291
    );
  U_ALU_ALUOP_2_54 : X_LUT4
    generic map(
      INIT => X"EEE4",
      LOC => "SLICE_X8Y12"
    )
    port map (
      ADR0 => ALUOP_0_Q,
      ADR1 => U_ALU_FF1R_3_0,
      ADR2 => Instr_3_Q,
      ADR3 => RdData1_3_0,
      O => U_ALU_N311
    );
  U_New_PC_Madd_New_PC_addsub0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"998D",
      LOC => "SLICE_X17Y10"
    )
    port map (
      ADR0 => U_PC_PC(5),
      ADR1 => N17,
      ADR2 => N305,
      ADR3 => U_PC_PC(4),
      O => N10
    );
  U_ALU_ZFLAG1_cmp_eq000029 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X8Y23"
    )
    port map (
      ADR0 => ALU_Out_10_0,
      ADR1 => ALU_Out_9_0,
      ADR2 => U_ALU_ZFLAG1_cmp_eq0000_map6_0,
      ADR3 => ALU_Out_11_0,
      O => U_ALU_ZFLAG1_cmp_eq000029_O_pack_1
    );
  U_New_PC_New_PC_3_1 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X15Y9"
    )
    port map (
      ADR0 => U_New_PC_New_PC_addsub0000(3),
      ADR1 => U_New_PC_PC_p2_3_0,
      ADR2 => VCC,
      ADR3 => U_New_PC_New_PC_or0000,
      O => New_PC(3)
    );
  U_New_PC_New_PC_4_1 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X16Y9"
    )
    port map (
      ADR0 => U_New_PC_New_PC_or0000,
      ADR1 => U_New_PC_PC_p2_4_0,
      ADR2 => U_New_PC_New_PC_addsub0000(4),
      ADR3 => VCC,
      O => New_PC(4)
    );
  U_New_PC_New_PC_5_1 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X16Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U_New_PC_PC_p2_5_0,
      ADR2 => U_New_PC_New_PC_addsub0000(5),
      ADR3 => U_New_PC_New_PC_or0000,
      O => New_PC(5)
    );
  U_ALU_ALUOP_2_5_0 : X_LUT4
    generic map(
      INIT => X"202F",
      LOC => "SLICE_X15Y16"
    )
    port map (
      ADR0 => RdData2_15_0,
      ADR1 => ALUOP_0_Q,
      ADR2 => ALUOP_2_0,
      ADR3 => U_ALU_ALUOP_2_5_f54,
      O => ALU_Out_15_Q
    );
  MUX_RegDest_Y_0_92_G : X_LUT4
    generic map(
      INIT => X"0182",
      LOC => "SLICE_X10Y6"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(2),
      ADR3 => U_PC_PC(4),
      O => N1523
    );
  U_New_PC_New_PC_or000022_G : X_LUT4
    generic map(
      INIT => X"0C10",
      LOC => "SLICE_X18Y10"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(2),
      ADR2 => U_PC_PC(4),
      ADR3 => U_PC_PC(3),
      O => N1505
    );
  U_Ctrl_ALUOP_0_G : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X13Y12"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(2),
      O => N1535
    );
  U_ROM_Mmux_Data11_G : X_LUT4
    generic map(
      INIT => X"23DF",
      LOC => "SLICE_X15Y11"
    )
    port map (
      ADR0 => U_PC_PC_3_1_17,
      ADR1 => U_PC_PC_4_2_23,
      ADR2 => U_PC_PC_2_1_3,
      ADR3 => U_PC_PC_5_1_19,
      O => N1531
    );
  U_ROM_Mmux_Data16_G : X_LUT4
    generic map(
      INIT => X"4080",
      LOC => "SLICE_X14Y11"
    )
    port map (
      ADR0 => U_PC_PC_5_1_19,
      ADR1 => U_PC_PC_1_1_16,
      ADR2 => U_PC_PC_2_1_3,
      ADR3 => U_PC_PC_4_2_23,
      O => N1533
    );
  U_ALU_ZFLAG1_cmp_eq000076_SW0_SW0_SW0_SW0_G : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X9Y22"
    )
    port map (
      ADR0 => RdData2_13_0,
      ADR1 => RdData2_14_0,
      ADR2 => VCC,
      ADR3 => RdData2_12_0,
      O => N1497
    );
  U_ROM_Mmux_Data91_G : X_LUT4
    generic map(
      INIT => X"5202",
      LOC => "SLICE_X13Y16"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(1),
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(2),
      O => N1527
    );
  MUX_ALU_Y_10_58_G : X_LUT4
    generic map(
      INIT => X"4073",
      LOC => "SLICE_X11Y18"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => ALUOP_0_Q,
      ADR2 => U_ALU_SUB17(10),
      ADR3 => N1429,
      O => N1513
    );
  MUX_ALU_Y_11_58_G : X_LUT4
    generic map(
      INIT => X"5033",
      LOC => "SLICE_X11Y25"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => N1427,
      ADR2 => U_ALU_SUB17(11),
      ADR3 => ALUOP_0_Q,
      O => N1511
    );
  MUX_ALU_Y_12_58_G : X_LUT4
    generic map(
      INIT => X"30B8",
      LOC => "SLICE_X13Y22"
    )
    port map (
      ADR0 => U_ALU_SUB17(12),
      ADR1 => N0,
      ADR2 => MUX_ALU_Y_12_map11_0,
      ADR3 => ALUOP_2_0,
      O => N1473
    );
  MUX_ALU_Y_13_58_G : X_LUT4
    generic map(
      INIT => X"22E2",
      LOC => "SLICE_X13Y20"
    )
    port map (
      ADR0 => MUX_ALU_Y_13_map11_0,
      ADR1 => N0,
      ADR2 => U_ALU_SUB17(13),
      ADR3 => ALUOP_2_0,
      O => N1471
    );
  U_ALU_Cflag : X_FF
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => '0'
    )
    port map (
      I => U_ALU_Cflag_DXMUX_89,
      CE => U_ALU_Cflag_CEINV_93,
      CLK => U_ALU_Cflag_CLKINV_92,
      SET => GND,
      RST => GND,
      O => U_ALU_Cflag_2
    );
  U_DataMem_OUTW0_10 : X_FF
    generic map(
      LOC => "PAD81",
      INIT => '0'
    )
    port map (
      I => OUTW0_10_OUTPUT_OFF_O1INV_570,
      CE => OUTW0_10_OUTPUT_OFF_OCEINV_569,
      CLK => OUTW0_10_OUTPUT_OTCLK1INV_568,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(10)
    );
  U_DataMem_OUTW0_11 : X_FF
    generic map(
      LOC => "PAD65",
      INIT => '0'
    )
    port map (
      I => OUTW0_11_OUTPUT_OFF_O1INV_573,
      CE => OUTW0_11_OUTPUT_OFF_OCEINV_572,
      CLK => OUTW0_11_OUTPUT_OTCLK1INV_571,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(11)
    );
  U_DataMem_OUTW0_12 : X_FF
    generic map(
      LOC => "PAD70",
      INIT => '0'
    )
    port map (
      I => OUTW0_12_OUTPUT_OFF_O1INV_576,
      CE => OUTW0_12_OUTPUT_OFF_OCEINV_575,
      CLK => OUTW0_12_OUTPUT_OTCLK1INV_574,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(12)
    );
  U_DataMem_OUTW0_13 : X_FF
    generic map(
      LOC => "PAD69",
      INIT => '0'
    )
    port map (
      I => OUTW0_13_OUTPUT_OFF_O1INV_579,
      CE => OUTW0_13_OUTPUT_OFF_OCEINV_578,
      CLK => OUTW0_13_OUTPUT_OTCLK1INV_577,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(13)
    );
  U_DataMem_OUTW0_14 : X_FF
    generic map(
      LOC => "PAD64",
      INIT => '0'
    )
    port map (
      I => OUTW0_14_OUTPUT_OFF_O1INV_582,
      CE => OUTW0_14_OUTPUT_OFF_OCEINV_581,
      CLK => OUTW0_14_OUTPUT_OTCLK1INV_580,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(14)
    );
  U_DataMem_OUTW0_15 : X_FF
    generic map(
      LOC => "PAD57",
      INIT => '0'
    )
    port map (
      I => OUTW0_15_OUTPUT_OFF_O1INV_585,
      CE => OUTW0_15_OUTPUT_OFF_OCEINV_584,
      CLK => OUTW0_15_OUTPUT_OTCLK1INV_583,
      SET => GND,
      RST => GND,
      O => U_DataMem_OUTW0(15)
    );
  U_ALU_OVflag : X_FF
    generic map(
      LOC => "PAD51",
      INIT => '0'
    )
    port map (
      I => OV_Flag_OUTPUT_OFF_O1INV_589,
      CE => OV_Flag_OUTPUT_OFF_OCEINV_588,
      CLK => OV_Flag_OUTPUT_OTCLK1INV_586,
      SET => GND,
      RST => GND,
      O => U_ALU_OVflag_587
    );
  U_ROM_Mmux_Data171_G : X_LUT4
    generic map(
      INIT => X"4008",
      LOC => "SLICE_X15Y10"
    )
    port map (
      ADR0 => U_PC_PC_4_1_18,
      ADR1 => U_PC_PC_2_1_3,
      ADR2 => U_PC_PC_3_2_22,
      ADR3 => U_PC_PC_5_1_19,
      O => N1529
    );
  U_ROM_Mmux_Data752_G : X_LUT4
    generic map(
      INIT => X"6665",
      LOC => "SLICE_X13Y15"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(1),
      O => N1525
    );
  U_Ctrl_RegWr79_G : X_LUT4
    generic map(
      INIT => X"F021",
      LOC => "SLICE_X12Y15"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(3),
      ADR2 => U_PC_PC(5),
      ADR3 => U_PC_PC(4),
      O => N1519
    );
  U_ROM_Mmux_Data893_G : X_LUT4
    generic map(
      INIT => X"2A4A",
      LOC => "SLICE_X11Y13"
    )
    port map (
      ADR0 => U_PC_PC(3),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(4),
      ADR3 => U_PC_PC(2),
      O => N1537
    );
  MUX_RegDest_Y_1_G : X_LUT4
    generic map(
      INIT => X"119F",
      LOC => "SLICE_X13Y10"
    )
    port map (
      ADR0 => U_PC_PC(2),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(4),
      O => N1507
    );
  U_New_PC_New_PC_or0000201 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X16Y13"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(3),
      ADR2 => U_ALU_Nflag_20,
      ADR3 => U_PC_PC(5),
      O => N1544
    );
  U_ALU_ALUOP_2_75 : X_LUT4
    generic map(
      INIT => X"FEDC",
      LOC => "SLICE_X13Y21"
    )
    port map (
      ADR0 => Instr_15_0,
      ADR1 => ALUOP_0_Q,
      ADR2 => U_ALU_ALUOP_2_11_f6,
      ADR3 => U_ALU_ALUOP_2_12_f6,
      O => U_ALU_N231
    );
  U_ROM_Mmux_Data1_G : X_LUT4
    generic map(
      INIT => X"2127",
      LOC => "SLICE_X14Y10"
    )
    port map (
      ADR0 => U_PC_PC_1_1_16,
      ADR1 => U_PC_PC_4_1_18,
      ADR2 => U_PC_PC_2_1_3,
      ADR3 => U_PC_PC_3_1_17,
      O => N1463
    );
  U_ROM_Mmux_Data221 : X_LUT4
    generic map(
      INIT => X"AAAE",
      LOC => "SLICE_X13Y11"
    )
    port map (
      ADR0 => U_ROM_Mmux_Data612_O,
      ADR1 => U_PC_PC(1),
      ADR2 => N23_0,
      ADR3 => U_PC_PC(4),
      O => Instr_8_Q
    );
  U_ROM_Mmux_Data192 : X_LUT4
    generic map(
      INIT => X"FEFC",
      LOC => "SLICE_X12Y13"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => N14_0,
      ADR2 => U_Ctrl_RegWr_cmp_eq000011_O,
      ADR3 => N11_0,
      O => Instr_5_Q
    );
  U_ROM_Mmux_Data2197 : X_LUT4
    generic map(
      INIT => X"6080",
      LOC => "SLICE_X19Y6"
    )
    port map (
      ADR0 => U_PC_PC(3),
      ADR1 => U_PC_PC(1),
      ADR2 => MUX_RegDest_Y_0_76_O,
      ADR3 => U_PC_PC(4),
      O => U_ROM_Mmux_Data21_map27
    );
  U_ROM_Mmux_Data1941 : X_LUT4
    generic map(
      INIT => X"0050",
      LOC => "SLICE_X12Y11"
    )
    port map (
      ADR0 => N17,
      ADR1 => VCC,
      ADR2 => U_PC_PC(5),
      ADR3 => U_PC_PC(4),
      O => N14
    );
  U_PC_PC_3_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_3_1_DYMUX_54,
      CE => VCC,
      CLK => U_PC_PC_3_1_CLKINV_56,
      SET => GND,
      RST => GND,
      O => U_PC_PC_3_1_17
    );
  U_PC_PC_4_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y9",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_4_1_DYMUX_57,
      CE => VCC,
      CLK => U_PC_PC_4_1_CLKINV_59,
      SET => GND,
      RST => GND,
      O => U_PC_PC_4_1_18
    );
  U_PC_PC_5_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_5_1_DYMUX_60,
      CE => VCC,
      CLK => U_PC_PC_5_1_CLKINV_62,
      SET => GND,
      RST => GND,
      O => U_PC_PC_5_1_19
    );
  U_ALU_Nflag : X_FF
    generic map(
      LOC => "SLICE_X15Y16",
      INIT => '0'
    )
    port map (
      I => U_ALU_Nflag_DYMUX_63,
      CE => U_ALU_Nflag_CEINV_66,
      CLK => U_ALU_Nflag_CLKINV_65,
      SET => GND,
      RST => GND,
      O => U_ALU_Nflag_20
    );
  U_ALU_OVFLAG1_or0000_SW0 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X15Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALUOP_0_Q,
      ADR2 => VCC,
      ADR3 => RdData2_15_0,
      O => N558
    );
  U_Ctrl_CE_OVF_or0000_SW1 : X_LUT4
    generic map(
      INIT => X"AFFF",
      LOC => "SLICE_X21Y6"
    )
    port map (
      ADR0 => U_PC_PC(3),
      ADR1 => VCC,
      ADR2 => N18,
      ADR3 => U_PC_PC(4),
      O => N75
    );
  U_DataMem_inst_Mram_mem : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y8"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_1_DIG_MUX_68,
      CLK => U_DataMem_MemData_1_CLKINV_69,
      WE => U_DataMem_MemData_1_SRINV_70,
      O => U_DataMem_MemData(0)
    );
  U_DataMem_inst_Mram_mem1 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y8"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_1_DIF_MUX_67,
      CLK => U_DataMem_MemData_1_CLKINV_69,
      WE => U_DataMem_MemData_1_SRINV_70,
      O => U_DataMem_MemData(1)
    );
  U_ROM_Mmux_Data21101 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X16Y6"
    )
    port map (
      ADR0 => U_ROM_Mmux_Data21_map27_0,
      ADR1 => VCC,
      ADR2 => MUX_RegDest_Y_0_map11_0,
      ADR3 => U_ROM_Mmux_Data2127_O,
      O => Instr_7_Q
    );
  Instr_10_2 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X13Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U_PC_PC(5),
      ADR2 => VCC,
      ADR3 => N1489,
      O => Instr_10_Q
    );
  U_ALU_FF1R_4_Q : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X7Y19"
    )
    port map (
      ADR0 => RdData2_14_0,
      ADR1 => U_ALU_N92_0,
      ADR2 => N1403_0,
      ADR3 => U_ALU_N192,
      O => U_ALU_FF1R(4)
    );
  U_ROM_Mmux_Data18 : X_LUT4
    generic map(
      INIT => X"0053",
      LOC => "SLICE_X12Y10"
    )
    port map (
      ADR0 => N17,
      ADR1 => N305,
      ADR2 => U_PC_PC(5),
      ADR3 => U_PC_PC(4),
      O => Instr_4_Q
    );
  U_ROM_Mmux_Data62 : X_LUT4
    generic map(
      INIT => X"FF05",
      LOC => "SLICE_X16Y8"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => VCC,
      ADR2 => N1413_0,
      ADR3 => N16,
      O => Instr_15_Q
    );
  MUX_ALU_Y_12_33 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X7Y22"
    )
    port map (
      ADR0 => MUX_ALU_Y_12_18_O,
      ADR1 => U_DataMem_MemData_12_0,
      ADR2 => Instr_8_0,
      ADR3 => VCC,
      O => MUX_ALU_Y_12_map11
    );
  MUX_ALU_Y_13_33 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X19Y14"
    )
    port map (
      ADR0 => MUX_ALU_Y_13_18_O,
      ADR1 => VCC,
      ADR2 => Instr_8_0,
      ADR3 => U_DataMem_MemData_13_0,
      O => MUX_ALU_Y_13_map11
    );
  U_ALU_ZFLAG1_cmp_eq000076_SW0_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"F1FB",
      LOC => "SLICE_X9Y23"
    )
    port map (
      ADR0 => ALUOP_0_Q,
      ADR1 => N1444,
      ADR2 => ALU_Out_0_Q,
      ADR3 => U_ALU_ZFLAG1_cmp_eq000076_SW0_SW0_SW0_SW1_O,
      O => N14111
    );
  MUX_ALU_Y_14_33 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X18Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U_DataMem_MemData_14_0,
      ADR2 => Instr_8_0,
      ADR3 => MUX_ALU_Y_14_18_O,
      O => MUX_ALU_Y_14_map11
    );
  MUX_ALU_Y_15_33 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X13Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U_DataMem_MemData_15_0,
      ADR2 => Instr_8_0,
      ADR3 => MUX_ALU_Y_15_18_O,
      O => MUX_ALU_Y_15_map11
    );
  U_ALU_FF1R_0_145_SW1 : X_LUT4
    generic map(
      INIT => X"EEE2",
      LOC => "SLICE_X9Y11"
    )
    port map (
      ADR0 => U_ALU_FF1R_0_145_SW1_F_O,
      ADR1 => ALUOP_0_Q,
      ADR2 => RdData1_0_0,
      ADR3 => Instr_0_Q,
      O => N1436
    );
  U_ALU_FF1R_16_11 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X7Y17"
    )
    port map (
      ADR0 => RdData2_2_0,
      ADR1 => RdData2_1_0,
      ADR2 => RdData2_0_0,
      ADR3 => U_ALU_FF1R_2_map2,
      O => U_ALU_N92
    );
  MUX_ALU_Y_0_58 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X11Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_Out_0_Q,
      ADR2 => MUX_ALU_Y_0_33_O,
      ADR3 => N0,
      O => WRData(0)
    );
  MUX_ALU_Y_1_58 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X8Y9"
    )
    port map (
      ADR0 => N0,
      ADR1 => VCC,
      ADR2 => ALU_Out_1_Q,
      ADR3 => MUX_ALU_Y_1_33_O,
      O => WRData(1)
    );
  U_ALU_ALUOP_2_10 : X_LUT4
    generic map(
      INIT => X"058D",
      LOC => "SLICE_X6Y21"
    )
    port map (
      ADR0 => ALUOP_0_Q,
      ADR1 => U_ALU_SUB17(8),
      ADR2 => N1433,
      ADR3 => ALUOP_2_0,
      O => ALU_Out_8_Q
    );
  U_ALU_ALUOP_2_11 : X_LUT4
    generic map(
      INIT => X"4703",
      LOC => "SLICE_X9Y24"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => ALUOP_0_Q,
      ADR2 => N1431,
      ADR3 => U_ALU_SUB17(9),
      O => ALU_Out_9_Q
    );
  U_ALU_FF1R_0_94 : X_LUT4
    generic map(
      INIT => X"4544",
      LOC => "SLICE_X10Y16"
    )
    port map (
      ADR0 => RdData2_3_0,
      ADR1 => RdData2_4_0,
      ADR2 => RdData2_5_0,
      ADR3 => U_ALU_FF1R_0_51_O,
      O => U_ALU_FF1R_0_map16
    );
  MUX_ALU_Y_2_58 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X6Y14"
    )
    port map (
      ADR0 => N0,
      ADR1 => ALU_Out_2_Q,
      ADR2 => VCC,
      ADR3 => MUX_ALU_Y_2_33_O,
      O => WRData(2)
    );
  U_ALU_FF1R_2_33 : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X7Y16"
    )
    port map (
      ADR0 => U_ALU_N192,
      ADR1 => U_ALU_FF1R_2_map2,
      ADR2 => U_ALU_FF1R_2_30_O,
      ADR3 => U_ALU_FF1R_2_map5_0,
      O => U_ALU_FF1R(2)
    );
  U_ALU_FF1R_1_76 : X_LUT4
    generic map(
      INIT => X"00EC",
      LOC => "SLICE_X7Y10"
    )
    port map (
      ADR0 => U_ALU_FF1R_1_map16_0,
      ADR1 => U_ALU_FF1R_1_map0_0,
      ADR2 => U_ALU_FF1R_1_33_O,
      ADR3 => RdData2_0_0,
      O => U_ALU_FF1R(1)
    );
  MUX_ALU_Y_3_58 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X7Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_Out_3_Q,
      ADR2 => MUX_ALU_Y_3_33_O,
      ADR3 => N0,
      O => WRData(3)
    );
  U_ALU_FF1R_3_18 : X_LUT4
    generic map(
      INIT => X"A8A8",
      LOC => "SLICE_X11Y20"
    )
    port map (
      ADR0 => U_ALU_N92_0,
      ADR1 => U_ALU_FF1R_3_9_O,
      ADR2 => U_ALU_FF1R_3_map2_0,
      ADR3 => VCC,
      O => U_ALU_FF1R(3)
    );
  MUX_ALU_Y_4_58 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X7Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_Out_4_Q,
      ADR2 => MUX_ALU_Y_4_33_O,
      ADR3 => N0,
      O => WRData(4)
    );
  U_ALU_ZFLAG1_cmp_eq0000101 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X8Y23"
    )
    port map (
      ADR0 => ALU_Out_15_0,
      ADR1 => N14111_0,
      ADR2 => U_ALU_ZFLAG1_cmp_eq000029_O,
      ADR3 => N1421_0,
      O => U_ALU_ZFLAG1
    );
  U_ALU_Zflag : X_FF
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => '0'
    )
    port map (
      I => U_ALU_Zflag_DXMUX_48,
      CE => U_ALU_Zflag_CEINV_50,
      CLK => U_ALU_Zflag_CLKINV_49,
      SET => GND,
      RST => GND,
      O => U_ALU_Zflag_15
    );
  U_ALU_ZFLAG1_cmp_eq0000101_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X7Y21"
    )
    port map (
      ADR0 => ALU_Out_6_0,
      ADR1 => ALU_Out_7_0,
      ADR2 => ALU_Out_8_0,
      ADR3 => U_ALU_ALUOP_2_7_O,
      O => N1421
    );
  U_Ctrl_ALUOP_2_1 : X_LUT4
    generic map(
      INIT => X"DC50",
      LOC => "SLICE_X14Y12"
    )
    port map (
      ADR0 => U_PC_PC(4),
      ADR1 => U_PC_PC(3),
      ADR2 => N11_0,
      ADR3 => U_ROM_Mmux_Data8111_O,
      O => ALUOP_2_Q
    );
  U_ALU_ALUOP_2_1 : X_LUT4
    generic map(
      INIT => X"404F",
      LOC => "SLICE_X9Y25"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => U_ALU_SUB17(11),
      ADR2 => ALUOP_0_Q,
      ADR3 => N1427,
      O => ALU_Out_11_Q
    );
  U_ALU_ALUOP_2_8_1 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X6Y17"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => VCC,
      ADR2 => U_ALU_N40,
      ADR3 => RdData2_6_0,
      O => ALU_Out_6_Q
    );
  U_ALU_ALUOP_2_9 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X6Y19"
    )
    port map (
      ADR0 => RdData2_7_0,
      ADR1 => VCC,
      ADR2 => U_ALU_N42,
      ADR3 => ALUOP_2_0,
      O => ALU_Out_7_Q
    );
  U_ALU_ALUOP_2_Q : X_LUT4
    generic map(
      INIT => X"4073",
      LOC => "SLICE_X11Y19"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => ALUOP_0_Q,
      ADR2 => U_ALU_SUB17(10),
      ADR3 => N1429,
      O => ALU_Out_10_Q
    );
  U_PC_PC_1_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y8",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_1_1_DYMUX_51,
      CE => VCC,
      CLK => U_PC_PC_1_1_CLKINV_53,
      SET => GND,
      RST => GND,
      O => U_PC_PC_1_1_16
    );
  U_New_PC_Madd_PC_p2_xor_1_11_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X15Y8"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_New_PC_PC_p2(1)
    );
  inst_Mram_mem17_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y10"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_1_DIG_MUX_165,
      CLK => RdData1_1_CLKINV_166,
      WE => RdData1_1_SRINV_167,
      O => RdData1_1_G_RAMOUT
    );
  inst_Mram_mem17_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y10"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_1_DIF_MUX_164,
      CLK => RdData1_1_CLKINV_166,
      WE => RdData1_1_SRINV_167,
      O => RdData1(1)
    );
  U_DataMem_inst_Mram_mem8 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y22"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_9_DIG_MUX_169,
      CLK => U_DataMem_MemData_9_CLKINV_170,
      WE => U_DataMem_MemData_9_SRINV_171,
      O => U_DataMem_MemData(8)
    );
  U_DataMem_inst_Mram_mem9 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y22"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_9_DIF_MUX_168,
      CLK => U_DataMem_MemData_9_CLKINV_170,
      WE => U_DataMem_MemData_9_SRINV_171,
      O => U_DataMem_MemData(9)
    );
  inst_Mram_mem26_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y18"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_10_DIG_MUX_173,
      CLK => RdData1_10_CLKINV_174,
      WE => RdData1_10_SRINV_175,
      O => RdData1_10_G_RAMOUT
    );
  inst_Mram_mem26_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y18"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_10_DIF_MUX_172,
      CLK => RdData1_10_CLKINV_174,
      WE => RdData1_10_SRINV_175,
      O => RdData1(10)
    );
  inst_Mram_mem18_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y13"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_2_DIG_MUX_177,
      CLK => RdData1_2_CLKINV_178,
      WE => RdData1_2_SRINV_179,
      O => RdData1_2_G_RAMOUT
    );
  inst_Mram_mem18_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y13"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_2_DIF_MUX_176,
      CLK => RdData1_2_CLKINV_178,
      WE => RdData1_2_SRINV_179,
      O => RdData1(2)
    );
  inst_Mram_mem27_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y24"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_11_DIG_MUX_181,
      CLK => RdData1_11_CLKINV_182,
      WE => RdData1_11_SRINV_183,
      O => RdData1_11_G_RAMOUT
    );
  inst_Mram_mem27_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y24"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_11_DIF_MUX_180,
      CLK => RdData1_11_CLKINV_182,
      WE => RdData1_11_SRINV_183,
      O => RdData1(11)
    );
  inst_Mram_mem1_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y7"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_1_DIG_MUX_72,
      CLK => RdData2_1_CLKINV_73,
      WE => RdData2_1_SRINV_74,
      O => RdData2_1_G_RAMOUT
    );
  inst_Mram_mem1_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y7"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_1_DIF_MUX_71,
      CLK => RdData2_1_CLKINV_73,
      WE => RdData2_1_SRINV_74,
      O => RdData2(1)
    );
  inst_Mram_mem2_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y12"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_2_DIG_MUX_76,
      CLK => RdData2_2_CLKINV_77,
      WE => RdData2_2_SRINV_78,
      O => RdData2_2_G_RAMOUT
    );
  inst_Mram_mem2_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y12"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_2_DIF_MUX_75,
      CLK => RdData2_2_CLKINV_77,
      WE => RdData2_2_SRINV_78,
      O => RdData2(2)
    );
  inst_Mram_mem3_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y6"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_3_DIG_MUX_80,
      CLK => RdData2_3_CLKINV_81,
      WE => RdData2_3_SRINV_82,
      O => RdData2_3_G_RAMOUT
    );
  inst_Mram_mem3_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y6"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_3_DIF_MUX_79,
      CLK => RdData2_3_CLKINV_81,
      WE => RdData2_3_SRINV_82,
      O => RdData2(3)
    );
  inst_Mram_mem4_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y7"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_4_DIG_MUX_111,
      CLK => RdData2_4_CLKINV_112,
      WE => RdData2_4_SRINV_113,
      O => RdData2_4_G_RAMOUT
    );
  inst_Mram_mem4_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y7"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_4_DIF_MUX_110,
      CLK => RdData2_4_CLKINV_112,
      WE => RdData2_4_SRINV_113,
      O => RdData2(4)
    );
  inst_Mram_mem5_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y8"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_5_DIG_MUX_115,
      CLK => RdData2_5_CLKINV_116,
      WE => RdData2_5_SRINV_117,
      O => RdData2_5_G_RAMOUT
    );
  inst_Mram_mem5_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y8"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_5_DIF_MUX_114,
      CLK => RdData2_5_CLKINV_116,
      WE => RdData2_5_SRINV_117,
      O => RdData2(5)
    );
  inst_Mram_mem19_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y12"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_3_DIG_MUX_185,
      CLK => RdData1_3_CLKINV_186,
      WE => RdData1_3_SRINV_187,
      O => RdData1_3_G_RAMOUT
    );
  inst_Mram_mem19_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y12"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_3_DIF_MUX_184,
      CLK => RdData1_3_CLKINV_186,
      WE => RdData1_3_SRINV_187,
      O => RdData1(3)
    );
  inst_Mram_mem28_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y25"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_12_DIG_MUX_189,
      CLK => RdData1_12_CLKINV_190,
      WE => RdData1_12_SRINV_191,
      O => RdData1_12_G_RAMOUT
    );
  inst_Mram_mem28_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y25"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_12_DIF_MUX_188,
      CLK => RdData1_12_CLKINV_190,
      WE => RdData1_12_SRINV_191,
      O => RdData1(12)
    );
  inst_Mram_mem29_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y19"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_13_DIG_MUX_193,
      CLK => RdData1_13_CLKINV_194,
      WE => RdData1_13_SRINV_195,
      O => RdData1_13_G_RAMOUT
    );
  inst_Mram_mem29_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y19"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_13_DIF_MUX_192,
      CLK => RdData1_13_CLKINV_194,
      WE => RdData1_13_SRINV_195,
      O => RdData1(13)
    );
  U_ALU_ALUOP_2_71_SW0 : X_LUT4
    generic map(
      INIT => X"05AF",
      LOC => "SLICE_X14Y17"
    )
    port map (
      ADR0 => ALUOP_2_0,
      ADR1 => VCC,
      ADR2 => U_ALU_ADD17(12),
      ADR3 => RdData2_12_0,
      O => N1425
    );
  U_ALU_FF1R_0_5 : X_LUT4
    generic map(
      INIT => X"F0FA",
      LOC => "SLICE_X10Y21"
    )
    port map (
      ADR0 => RdData2_14_0,
      ADR1 => VCC,
      ADR2 => RdData2_12_0,
      ADR3 => RdData2_13_0,
      O => U_ALU_FF1R_0_map2
    );
  U_DataMem_inst_Mram_mem10 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y27"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_11_DIG_MUX_197,
      CLK => U_DataMem_MemData_11_CLKINV_198,
      WE => U_DataMem_MemData_11_SRINV_199,
      O => U_DataMem_MemData(10)
    );
  inst_Mram_mem6_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y13"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_6_DIG_MUX_119,
      CLK => RdData2_6_CLKINV_120,
      WE => RdData2_6_SRINV_121,
      O => RdData2_6_G_RAMOUT
    );
  inst_Mram_mem6_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y13"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_6_DIF_MUX_118,
      CLK => RdData2_6_CLKINV_120,
      WE => RdData2_6_SRINV_121,
      O => RdData2(6)
    );
  U_ROM_Mmux_Data1911 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X12Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U_PC_PC(2),
      ADR2 => U_PC_PC(5),
      ADR3 => VCC,
      O => N1
    );
  inst_Mram_mem7_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y18"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_7_DIG_MUX_123,
      CLK => RdData2_7_CLKINV_124,
      WE => RdData2_7_SRINV_125,
      O => RdData2_7_G_RAMOUT
    );
  inst_Mram_mem7_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y18"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_7_DIF_MUX_122,
      CLK => RdData2_7_CLKINV_124,
      WE => RdData2_7_SRINV_125,
      O => RdData2(7)
    );
  inst_Mram_mem8_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y23"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_8_DIG_MUX_127,
      CLK => RdData2_8_CLKINV_128,
      WE => RdData2_8_SRINV_129,
      O => RdData2_8_G_RAMOUT
    );
  inst_Mram_mem8_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y23"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_8_DIF_MUX_126,
      CLK => RdData2_8_CLKINV_128,
      WE => RdData2_8_SRINV_129,
      O => RdData2(8)
    );
  inst_Mram_mem9_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y25"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_9_DIG_MUX_131,
      CLK => RdData2_9_CLKINV_132,
      WE => RdData2_9_SRINV_133,
      O => RdData2_9_G_RAMOUT
    );
  inst_Mram_mem9_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y25"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_9_DIF_MUX_130,
      CLK => RdData2_9_CLKINV_132,
      WE => RdData2_9_SRINV_133,
      O => RdData2(9)
    );
  U_PC_PC_1_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_1_2_DYMUX_134,
      CE => VCC,
      CLK => U_PC_PC_1_2_CLKINV_135,
      SET => GND,
      RST => GND,
      O => U_PC_PC_1_2_4
    );
  U_PC_PC_2_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y6",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_2_2_DYMUX_136,
      CE => VCC,
      CLK => U_PC_PC_2_2_CLKINV_137,
      SET => GND,
      RST => GND,
      O => U_PC_PC_2_2_21
    );
  U_PC_PC_3_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_3_2_DYMUX_138,
      CE => VCC,
      CLK => U_PC_PC_3_2_CLKINV_139,
      SET => GND,
      RST => GND,
      O => U_PC_PC_3_2_22
    );
  U_PC_PC_4_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_4_2_DYMUX_140,
      CE => VCC,
      CLK => U_PC_PC_4_2_CLKINV_141,
      SET => GND,
      RST => GND,
      O => U_PC_PC_4_2_23
    );
  U_PC_PC_5_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y8",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_5_2_DYMUX_142,
      CE => VCC,
      CLK => U_PC_PC_5_2_CLKINV_143,
      SET => GND,
      RST => GND,
      O => U_PC_PC_5_2_5
    );
  U_ROM_Mmux_Data11_SW1 : X_LUT4
    generic map(
      INIT => X"DCD8",
      LOC => "SLICE_X17Y13"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(2),
      O => N1272
    );
  inst_Mram_mem10_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y24"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_10_DIG_MUX_145,
      CLK => RdData2_10_CLKINV_146,
      WE => RdData2_10_SRINV_147,
      O => RdData2_10_G_RAMOUT
    );
  inst_Mram_mem10_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y24"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_10_DIF_MUX_144,
      CLK => RdData2_10_CLKINV_146,
      WE => RdData2_10_SRINV_147,
      O => RdData2(10)
    );
  inst_Mram_mem11_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y25"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_11_DIG_MUX_149,
      CLK => RdData2_11_CLKINV_150,
      WE => RdData2_11_SRINV_151,
      O => RdData2_11_G_RAMOUT
    );
  inst_Mram_mem11_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y25"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_11_DIF_MUX_148,
      CLK => RdData2_11_CLKINV_150,
      WE => RdData2_11_SRINV_151,
      O => RdData2(11)
    );
  U_DataMem_inst_Mram_mem2 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y15"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_3_DIG_MUX_153,
      CLK => U_DataMem_MemData_3_CLKINV_154,
      WE => U_DataMem_MemData_3_SRINV_155,
      O => U_DataMem_MemData(2)
    );
  U_DataMem_inst_Mram_mem3 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y15"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_3_DIF_MUX_152,
      CLK => U_DataMem_MemData_3_CLKINV_154,
      WE => U_DataMem_MemData_3_SRINV_155,
      O => U_DataMem_MemData(3)
    );
  inst_Mram_mem20_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y9"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_4_DIG_MUX_201,
      CLK => RdData1_4_CLKINV_202,
      WE => RdData1_4_SRINV_203,
      O => RdData1_4_G_RAMOUT
    );
  inst_Mram_mem20_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y9"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_4_DIF_MUX_200,
      CLK => RdData1_4_CLKINV_202,
      WE => RdData1_4_SRINV_203,
      O => RdData1(4)
    );
  inst_Mram_mem12_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y24"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_12_DIG_MUX_205,
      CLK => RdData2_12_CLKINV_206,
      WE => RdData2_12_SRINV_207,
      O => RdData2_12_G_RAMOUT
    );
  inst_Mram_mem12_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y24"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_12_DIF_MUX_204,
      CLK => RdData2_12_CLKINV_206,
      WE => RdData2_12_SRINV_207,
      O => RdData2(12)
    );
  inst_Mram_mem21_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y10"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_5_DIG_MUX_209,
      CLK => RdData1_5_CLKINV_210,
      WE => RdData1_5_SRINV_211,
      O => RdData1_5_G_RAMOUT
    );
  inst_Mram_mem21_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y10"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_5_DIF_MUX_208,
      CLK => RdData1_5_CLKINV_210,
      WE => RdData1_5_SRINV_211,
      O => RdData1(5)
    );
  inst_Mram_mem13_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y18"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_13_DIG_MUX_213,
      CLK => RdData2_13_CLKINV_214,
      WE => RdData2_13_SRINV_215,
      O => RdData2_13_G_RAMOUT
    );
  inst_Mram_mem13_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y18"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_13_DIF_MUX_212,
      CLK => RdData2_13_CLKINV_214,
      WE => RdData2_13_SRINV_215,
      O => RdData2(13)
    );
  U_DataMem_inst_Mram_mem4 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y9"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_5_DIG_MUX_217,
      CLK => U_DataMem_MemData_5_CLKINV_218,
      WE => U_DataMem_MemData_5_SRINV_219,
      O => U_DataMem_MemData(4)
    );
  U_DataMem_inst_Mram_mem5 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y9"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_5_DIF_MUX_216,
      CLK => U_DataMem_MemData_5_CLKINV_218,
      WE => U_DataMem_MemData_5_SRINV_219,
      O => U_DataMem_MemData(5)
    );
  inst_Mram_mem30_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y23"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_14_DIG_MUX_221,
      CLK => RdData1_14_CLKINV_222,
      WE => RdData1_14_SRINV_223,
      O => RdData1_14_G_RAMOUT
    );
  inst_Mram_mem30_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y23"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_14_DIF_MUX_220,
      CLK => RdData1_14_CLKINV_222,
      WE => RdData1_14_SRINV_223,
      O => RdData1(14)
    );
  inst_Mram_mem22_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y16"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_6_DIG_MUX_225,
      CLK => RdData1_6_CLKINV_226,
      WE => RdData1_6_SRINV_227,
      O => RdData1_6_G_RAMOUT
    );
  inst_Mram_mem22_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y16"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_6_DIF_MUX_224,
      CLK => RdData1_6_CLKINV_226,
      WE => RdData1_6_SRINV_227,
      O => RdData1(6)
    );
  inst_Mram_mem14_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y22"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_14_DIG_MUX_229,
      CLK => RdData2_14_CLKINV_230,
      WE => RdData2_14_SRINV_231,
      O => RdData2_14_G_RAMOUT
    );
  inst_Mram_mem14_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y22"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_14_DIF_MUX_228,
      CLK => RdData2_14_CLKINV_230,
      WE => RdData2_14_SRINV_231,
      O => RdData2(14)
    );
  inst_Mram_mem31_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y20"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_15_DIG_MUX_233,
      CLK => RdData1_15_CLKINV_234,
      WE => RdData1_15_SRINV_235,
      O => RdData1_15_G_RAMOUT
    );
  inst_Mram_mem31_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y20"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_15_DIF_MUX_232,
      CLK => RdData1_15_CLKINV_234,
      WE => RdData1_15_SRINV_235,
      O => RdData1(15)
    );
  inst_Mram_mem23_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y19"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_7_DIG_MUX_237,
      CLK => RdData1_7_CLKINV_238,
      WE => RdData1_7_SRINV_239,
      O => RdData1_7_G_RAMOUT
    );
  inst_Mram_mem23_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y19"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_7_DIF_MUX_236,
      CLK => RdData1_7_CLKINV_238,
      WE => RdData1_7_SRINV_239,
      O => RdData1(7)
    );
  inst_Mram_mem15_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y22"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_15_DIG_MUX_241,
      CLK => RdData2_15_CLKINV_242,
      WE => RdData2_15_SRINV_243,
      O => RdData2_15_G_RAMOUT
    );
  inst_Mram_mem15_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y22"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_15_DIF_MUX_240,
      CLK => RdData2_15_CLKINV_242,
      WE => RdData2_15_SRINV_243,
      O => RdData2(15)
    );
  U_DataMem_inst_Mram_mem6 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y8"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_7_DIG_MUX_245,
      CLK => U_DataMem_MemData_7_CLKINV_246,
      WE => U_DataMem_MemData_7_SRINV_247,
      O => U_DataMem_MemData(6)
    );
  U_DataMem_inst_Mram_mem7 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y8"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_7_DIF_MUX_244,
      CLK => U_DataMem_MemData_7_CLKINV_246,
      WE => U_DataMem_MemData_7_SRINV_247,
      O => U_DataMem_MemData(7)
    );
  inst_Mram_mem24_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y20"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_8_DIG_MUX_249,
      CLK => RdData1_8_CLKINV_250,
      WE => RdData1_8_SRINV_251,
      O => RdData1_8_G_RAMOUT
    );
  inst_Mram_mem24_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y20"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_8_DIF_MUX_248,
      CLK => RdData1_8_CLKINV_250,
      WE => RdData1_8_SRINV_251,
      O => RdData1(8)
    );
  inst_Mram_mem16_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y11"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_0_DIG_MUX_157,
      CLK => RdData1_0_CLKINV_158,
      WE => RdData1_0_SRINV_159,
      O => RdData1_0_G_RAMOUT
    );
  inst_Mram_mem16_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y11"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_0_DIF_MUX_156,
      CLK => RdData1_0_CLKINV_158,
      WE => RdData1_0_SRINV_159,
      O => RdData1(0)
    );
  inst_Mram_mem25_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y25"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_9_DIG_MUX_161,
      CLK => RdData1_9_CLKINV_162,
      WE => RdData1_9_SRINV_163,
      O => RdData1_9_G_RAMOUT
    );
  inst_Mram_mem25_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y25"
    )
    port map (
      RADR0 => Instr_15_0,
      RADR1 => Instr_16_Q,
      RADR2 => Instr_17_Q,
      RADR3 => Instr_18_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData1_9_DIF_MUX_160,
      CLK => RdData1_9_CLKINV_162,
      WE => RdData1_9_SRINV_163,
      O => RdData1(9)
    );
  U_DataMem_inst_Mram_mem11 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y27"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_11_DIF_MUX_196,
      CLK => U_DataMem_MemData_11_CLKINV_198,
      WE => U_DataMem_MemData_11_SRINV_199,
      O => U_DataMem_MemData(11)
    );
  U_DataMem_inst_Mram_mem12 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y14"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_13_DIG_MUX_253,
      CLK => U_DataMem_MemData_13_CLKINV_254,
      WE => U_DataMem_MemData_13_SRINV_255,
      O => U_DataMem_MemData(12)
    );
  U_DataMem_inst_Mram_mem13 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y14"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_13_DIF_MUX_252,
      CLK => U_DataMem_MemData_13_CLKINV_254,
      WE => U_DataMem_MemData_13_SRINV_255,
      O => U_DataMem_MemData(13)
    );
  U_DataMem_inst_Mram_mem14 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y23"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_15_DIG_MUX_257,
      CLK => U_DataMem_MemData_15_CLKINV_258,
      WE => U_DataMem_MemData_15_SRINV_259,
      O => U_DataMem_MemData(14)
    );
  U_DataMem_inst_Mram_mem15 : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X12Y23"
    )
    port map (
      RADR0 => Instr_4_0,
      RADR1 => Instr_5_0,
      RADR2 => Instr_10_0,
      RADR3 => Instr_7_0,
      WADR0 => Instr_4_0,
      WADR1 => Instr_5_0,
      WADR2 => Instr_10_0,
      WADR3 => Instr_7_0,
      I => U_DataMem_MemData_15_DIF_MUX_256,
      CLK => U_DataMem_MemData_15_CLKINV_258,
      WE => U_DataMem_MemData_15_SRINV_259,
      O => U_DataMem_MemData(15)
    );
  U_ALU_FF1R_1_11 : X_LUT4
    generic map(
      INIT => X"1110",
      LOC => "SLICE_X8Y22"
    )
    port map (
      ADR0 => RdData2_12_0,
      ADR1 => RdData2_11_0,
      ADR2 => RdData2_14_0,
      ADR3 => RdData2_13_0,
      O => U_ALU_FF1R_1_map7
    );
  U_DataMem_OUTW0_and00001 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X12Y9"
    )
    port map (
      ADR0 => MemWr,
      ADR1 => Instr_8_0,
      ADR2 => Instr_5_0,
      ADR3 => VCC,
      O => U_DataMem_OUTW0_and0000
    );
  U_ROM_Mmux_Data16_SW2 : X_LUT4
    generic map(
      INIT => X"FE6F",
      LOC => "SLICE_X16Y7"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(3),
      ADR2 => U_PC_PC(2),
      ADR3 => U_PC_PC(4),
      O => N1442
    );
  U_New_PC_Madd_PC_p2_xor_3_11 : X_LUT4
    generic map(
      INIT => X"5AF0",
      LOC => "SLICE_X18Y6"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => VCC,
      ADR2 => U_PC_PC(3),
      ADR3 => U_PC_PC(2),
      O => U_New_PC_PC_p2(3)
    );
  U_New_PC_New_PC_or000062 : X_LUT4
    generic map(
      INIT => X"8090",
      LOC => "SLICE_X17Y12"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(2),
      ADR2 => U_New_PC_New_PC_or0000_map21,
      ADR3 => U_PC_PC(4),
      O => U_New_PC_New_PC_or0000_map22
    );
  U_ROM_Mmux_Data16_SW1 : X_LUT4
    generic map(
      INIT => X"7EFF",
      LOC => "SLICE_X19Y8"
    )
    port map (
      ADR0 => U_PC_PC(3),
      ADR1 => U_PC_PC(2),
      ADR2 => U_PC_PC(1),
      ADR3 => U_PC_PC(4),
      O => N1441
    );
  U_New_PC_New_PC_2_1 : X_LUT4
    generic map(
      INIT => X"CC5A",
      LOC => "SLICE_X16Y10"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_New_PC_New_PC_addsub0000(2),
      ADR2 => U_PC_PC(2),
      ADR3 => U_New_PC_New_PC_or0000,
      O => New_PC(2)
    );
  U_PC_PC_2_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y10",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_2_1_DXMUX_260,
      CE => VCC,
      CLK => U_PC_PC_2_1_CLKINV_262,
      SET => GND,
      RST => GND,
      O => U_PC_PC_2_1_3
    );
  U_Ctrl_CE_OVF_or0000 : X_LUT4
    generic map(
      INIT => X"207F",
      LOC => "SLICE_X20Y7"
    )
    port map (
      ADR0 => U_PC_PC(5),
      ADR1 => N74,
      ADR2 => U_PC_PC(2),
      ADR3 => N75_0,
      O => CE_OVF
    );
  U_ROM_Mmux_Data11_SW0 : X_LUT4
    generic map(
      INIT => X"60D5",
      LOC => "SLICE_X18Y9"
    )
    port map (
      ADR0 => U_PC_PC(1),
      ADR1 => U_PC_PC(5),
      ADR2 => U_PC_PC(2),
      ADR3 => U_PC_PC(3),
      O => N1271
    );
  inst_Mram_mem_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y11"
    )
    port map (
      RADR0 => WrReg(0),
      RADR1 => WrReg(1),
      RADR2 => Instr_10_0,
      RADR3 => Instr_10_0,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_0_DIG_MUX_266,
      CLK => RdData2_0_CLKINV_267,
      WE => RdData2_0_SRINV_268,
      O => RdData2_0_G_RAMOUT
    );
  inst_Mram_mem_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y11"
    )
    port map (
      RADR0 => Instr_0_Q,
      RADR1 => Instr_1_Q,
      RADR2 => Instr_2_Q,
      RADR3 => Instr_3_Q,
      WADR0 => WrReg(0),
      WADR1 => WrReg(1),
      WADR2 => Instr_10_0,
      WADR3 => Instr_10_0,
      I => RdData2_0_DIF_MUX_265,
      CLK => RdData2_0_CLKINV_267,
      WE => RdData2_0_SRINV_268,
      O => RdData2(0)
    );
  U_ALU_Msub_SUB17_lut_14_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X8Y21"
    )
    port map (
      ADR0 => RdData2_14_0,
      ADR1 => RdData1_14_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N34
    );
  RdData2_1_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X6Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => RdData2_1_0,
      O => RdData2_1_rt_381
    );
  RdData2_0_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X9Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => RdData2_0_0,
      ADR3 => VCC,
      O => RdData2_0_rt_388
    );
  RdData2_2_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X10Y14"
    )
    port map (
      ADR0 => RdData2_2_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => RdData2_2_rt_395
    );
  U_PC_PC_5 : X_FF
    generic map(
      LOC => "SLICE_X18Y11",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_5_DYMUX_282,
      CE => VCC,
      CLK => U_PC_PC_5_CLKINV_283,
      SET => GND,
      RST => GND,
      O => U_PC_PC(5)
    );
  U_ALU_Madd_ADD17_lut_2_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X9Y15"
    )
    port map (
      ADR0 => RdData1_2_0,
      ADR1 => VCC,
      ADR2 => RdData2_2_0,
      ADR3 => VCC,
      O => U_ALU_N6
    );
  U_ALU_FF1R_2_9 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X6Y20"
    )
    port map (
      ADR0 => RdData2_12_0,
      ADR1 => RdData2_13_0,
      ADR2 => RdData2_11_0,
      ADR3 => RdData2_14_0,
      O => U_ALU_FF1R_2_map5
    );
  U_ALU_Madd_ADD17_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X9Y16"
    )
    port map (
      ADR0 => RdData2_4_0,
      ADR1 => RdData1_4_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N8
    );
  U_ALU_FF1R_1_2 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X4Y16"
    )
    port map (
      ADR0 => RdData2_9_0,
      ADR1 => VCC,
      ADR2 => RdData2_10_0,
      ADR3 => VCC,
      O => U_ALU_FF1R_1_map2
    );
  MUX_ALU_Y_0_18 : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X11Y14"
    )
    port map (
      ADR0 => Instr_5_0,
      ADR1 => INW0_0_IBUF_25,
      ADR2 => INW1_0_IBUF_24,
      ADR3 => Instr_4_0,
      O => MUX_ALU_Y_0_map7
    );
  MUX_ALU_Y_9_18 : X_LUT4
    generic map(
      INIT => X"CCCA",
      LOC => "SLICE_X8Y30"
    )
    port map (
      ADR0 => INW0_9_IBUF_29,
      ADR1 => INW1_9_IBUF_28,
      ADR2 => Instr_5_0,
      ADR3 => Instr_4_0,
      O => MUX_ALU_Y_9_map7
    );
  U_ALU_ALUOP_2_76 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X7Y15"
    )
    port map (
      ADR0 => ALUOP_0_Q,
      ADR1 => U_ALU_ADD17(5),
      ADR2 => VCC,
      ADR3 => U_ALU_SUB17(5),
      O => U_ALU_N38
    );
  U_PC_PC_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_2_DYMUX_270,
      CE => VCC,
      CLK => U_PC_PC_2_CLKINV_271,
      SET => GND,
      RST => GND,
      O => U_PC_PC(1)
    );
  U_PC_PC_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_2_DXMUX_269,
      CE => VCC,
      CLK => U_PC_PC_2_CLKINV_271,
      SET => GND,
      RST => GND,
      O => U_PC_PC(2)
    );
  U_PC_PC_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_4_DYMUX_273,
      CE => VCC,
      CLK => U_PC_PC_4_CLKINV_274,
      SET => GND,
      RST => GND,
      O => U_PC_PC(3)
    );
  U_PC_PC_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      I => U_PC_PC_4_DXMUX_272,
      CE => VCC,
      CLK => U_PC_PC_4_CLKINV_274,
      SET => GND,
      RST => GND,
      O => U_PC_PC(4)
    );
  U_ALU_Madd_ADD17_lut_0_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X9Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData1_0_0,
      ADR2 => RdData2_0_0,
      ADR3 => VCC,
      O => U_ALU_ADD17(0)
    );
  U_ALU_Madd_ADD17_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X9Y17"
    )
    port map (
      ADR0 => RdData2_6_0,
      ADR1 => RdData1_6_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N10
    );
  MUX_ALU_Y_8_18 : X_LUT4
    generic map(
      INIT => X"AAAC",
      LOC => "SLICE_X0Y17"
    )
    port map (
      ADR0 => INW1_8_IBUF_32,
      ADR1 => INW0_8_IBUF_33,
      ADR2 => Instr_5_0,
      ADR3 => Instr_4_0,
      O => MUX_ALU_Y_8_map7
    );
  U_ALU_Madd_ADD17_lut_8_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X9Y18"
    )
    port map (
      ADR0 => RdData2_8_0,
      ADR1 => RdData1_8_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N12
    );
  U_ALU_Madd_ADD17_lut_10_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X9Y19"
    )
    port map (
      ADR0 => RdData1_10_0,
      ADR1 => RdData2_10_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N14
    );
  MUX_ALU_Y_6_18 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X0Y12"
    )
    port map (
      ADR0 => Instr_4_0,
      ADR1 => Instr_5_0,
      ADR2 => INW0_6_IBUF_41,
      ADR3 => INW1_6_IBUF_40,
      O => MUX_ALU_Y_6_map7
    );
  U_New_PC_Madd_New_PC_addsub0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"A695",
      LOC => "SLICE_X17Y9"
    )
    port map (
      ADR0 => U_New_PC_PC_p2_3_0,
      ADR1 => U_PC_PC(5),
      ADR2 => N1442_0,
      ADR3 => N1441_0,
      O => N8
    );
  MUX_ALU_Y_5_18 : X_LUT4
    generic map(
      INIT => X"FE02",
      LOC => "SLICE_X0Y0"
    )
    port map (
      ADR0 => INW0_5_IBUF_45,
      ADR1 => Instr_4_0,
      ADR2 => Instr_5_0,
      ADR3 => INW1_5_IBUF_44,
      O => MUX_ALU_Y_5_map7
    );
  U_ALU_Msub_SUB17_lut_0_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X8Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData1_0_0,
      ADR2 => VCC,
      ADR3 => RdData2_0_0,
      O => U_ALU_N20
    );
  U_ALU_Madd_ADD17_lut_12_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X9Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData1_12_0,
      ADR2 => VCC,
      ADR3 => RdData2_12_0,
      O => U_ALU_N16
    );
  MUX_ALU_Y_7_18 : X_LUT4
    generic map(
      INIT => X"AAAC",
      LOC => "SLICE_X4Y18"
    )
    port map (
      ADR0 => INW1_7_IBUF_36,
      ADR1 => INW0_7_IBUF_37,
      ADR2 => Instr_5_0,
      ADR3 => Instr_4_0,
      O => MUX_ALU_Y_7_map7
    );
  U_ALU_Madd_ADD17_lut_14_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X9Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData1_14_0,
      ADR2 => VCC,
      ADR3 => RdData2_14_0,
      O => U_ALU_N18
    );
  U_New_PC_Madd_New_PC_addsub0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X17Y8"
    )
    port map (
      ADR0 => U_New_PC_PC_p2_1_0,
      ADR1 => Instr_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N6
    );
  U_ALU_Msub_SUB17_lut_8_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X8Y18"
    )
    port map (
      ADR0 => RdData1_8_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => RdData2_8_0,
      O => U_ALU_N28
    );
  U_ALU_Msub_SUB17_lut_10_Q : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X8Y19"
    )
    port map (
      ADR0 => RdData1_10_0,
      ADR1 => VCC,
      ADR2 => RdData2_10_0,
      ADR3 => VCC,
      O => U_ALU_N30
    );
  U_ALU_Msub_SUB17_lut_12_Q : X_LUT4
    generic map(
      INIT => X"C3C3",
      LOC => "SLICE_X8Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData1_12_0,
      ADR2 => RdData2_12_0,
      ADR3 => VCC,
      O => U_ALU_N32
    );
  U_ALU_Msub_SUB17_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9999",
      LOC => "SLICE_X8Y15"
    )
    port map (
      ADR0 => RdData1_2_0,
      ADR1 => RdData2_2_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_ALU_N22
    );
  U_ALU_Msub_SUB17_lut_4_Q : X_LUT4
    generic map(
      INIT => X"AA55",
      LOC => "SLICE_X8Y16"
    )
    port map (
      ADR0 => RdData1_4_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => RdData2_4_0,
      O => U_ALU_N24
    );
  U_ALU_Msub_SUB17_lut_6_Q : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X8Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData1_6_0,
      ADR2 => VCC,
      ADR3 => RdData2_6_0,
      O => U_ALU_N26
    );
  RdData2_3_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X8Y12"
    )
    port map (
      ADR0 => RdData2_3_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => RdData2_3_rt_402
    );
  RdData2_4_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X11Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdData2_4_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => RdData2_4_rt_409
    );
  U_ALU_ALUOP_2_13 : X_LUT4
    generic map(
      INIT => X"DC8C",
      LOC => "SLICE_X12Y16"
    )
    port map (
      ADR0 => N1489,
      ADR1 => RdData2_6_0,
      ADR2 => U_PC_PC(5),
      ADR3 => RdData2_7_0,
      O => U_ALU_N151
    );
  U_ALU_ALUOP_2_142 : X_LUT4
    generic map(
      INIT => X"F0B8",
      LOC => "SLICE_X13Y18"
    )
    port map (
      ADR0 => RdData2_15_0,
      ADR1 => U_PC_PC(5),
      ADR2 => RdData2_14_0,
      ADR3 => N1489,
      O => U_ALU_N191
    );
  GLOBAL_LOGIC0_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  N1460_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X15Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N1460_F
    );
  N_Flag_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Nflag_20,
      O => N_Flag_O
    );
  Z_Flag_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD19",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Zflag_15,
      O => Z_Flag_O
    );
  C_Flag_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 757 ps
    )
    port map (
      I => U_ALU_Cflag_2,
      O => C_Flag_O
    );
  U_New_PC_New_PC_or0000_map2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X16Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U_New_PC_New_PC_or0000_map2_F
    );
  N1401_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N1401_F
    );
  NlwBlock_PIC24_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_PIC24_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

