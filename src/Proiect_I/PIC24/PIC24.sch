VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL New_PC(5:0)
        SIGNAL Clk
        SIGNAL PC(5:0)
        SIGNAL PC(5:1)
        SIGNAL Instr(23:0)
        SIGNAL RegDest
        SIGNAL WrReg(3:0)
        SIGNAL Instr(3:0)
        SIGNAL Instr(10:7)
        SIGNAL RdData1(15:0)
        SIGNAL RegWr
        SIGNAL ALU_Out(15:0)
        SIGNAL WRData(15:0)
        SIGNAL MemOut(15:0)
        SIGNAL Mem2Reg
        SIGNAL MemWr
        SIGNAL Instr(8:4)
        SIGNAL INW0(15:0)
        SIGNAL INW1(15:0)
        SIGNAL RdData2(15:0)
        SIGNAL Instr(6:5)
        SIGNAL Instr(23:19)
        SIGNAL Branch
        SIGNAL CE_NF
        SIGNAL CE_OVF
        SIGNAL CE_ZF
        SIGNAL CE_CF
        SIGNAL ALUOP(2:0)
        SIGNAL Instr(18:16)
        SIGNAL Instr(4:0)
        SIGNAL Instr(18:15)
        SIGNAL Instr(15:12)
        SIGNAL N_Flag
        SIGNAL Z_Flag
        SIGNAL C_Flag
        SIGNAL OV_Flag
        SIGNAL OUTW0(15:0)
        PORT Input Clk
        PORT Input INW0(15:0)
        PORT Input INW1(15:0)
        PORT Output N_Flag
        PORT Output Z_Flag
        PORT Output C_Flag
        PORT Output OV_Flag
        PORT Output OUTW0(15:0)
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2026 1 5 22 25 36
            RECTANGLE N 0 -124 64 -100 
            LINE N 64 -112 0 -112 
            RECTANGLE N 64 -144 320 296 
            LINE N 384 -64 320 -64 
            RECTANGLE N 320 -12 384 12 
            LINE N 320 0 384 0 
            RECTANGLE N 320 52 384 76 
            LINE N 320 64 384 64 
            LINE N 64 64 0 64 
            LINE N 64 112 0 112 
            LINE N 64 160 0 160 
            LINE N 64 208 0 208 
            RECTANGLE N 0 244 64 268 
            LINE N 64 256 0 256 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2026 1 5 22 25 36
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V5
            TIMESTAMP 2026 1 5 22 25 35
            RECTANGLE N 64 -192 320 48 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 16 0 16 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2026 1 5 22 25 35
            RECTANGLE N 0 -124 64 -100 
            LINE N 64 -112 0 -112 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            LINE N 64 -432 0 -432 
            RECTANGLE N 416 -444 480 -420 
            LINE N 416 -432 480 -432 
            RECTANGLE N 416 -380 480 -356 
            LINE N 416 -368 480 -368 
            RECTANGLE N 64 -472 416 228 
            LINE N 64 -320 0 -320 
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 148 64 172 
            LINE N 64 160 0 160 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2026 1 5 22 25 34
            RECTANGLE N 0 -412 64 -388 
            LINE N 64 -400 0 -400 
            RECTANGLE N 0 -348 64 -324 
            LINE N 64 -336 0 -336 
            RECTANGLE N 320 -188 384 -164 
            LINE N 320 -176 384 -176 
            RECTANGLE N 64 -432 320 332 
            RECTANGLE N 0 -284 64 -260 
            LINE N 64 -272 0 -272 
            RECTANGLE N 0 -220 64 -196 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            LINE N 64 256 0 256 
            LINE N 64 304 0 304 
            LINE N 64 160 0 160 
            LINE N 64 112 0 112 
            LINE N 64 208 0 208 
            LINE N 320 208 384 208 
            LINE N 320 160 384 160 
            LINE N 320 256 384 256 
            LINE N 320 112 384 112 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2026 1 5 22 25 35
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
            RECTANGLE N 384 132 448 156 
            LINE N 384 144 448 144 
            RECTANGLE N 64 -240 384 188 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
            RECTANGLE N 384 -124 448 -100 
            LINE N 384 -112 448 -112 
            LINE N 64 0 0 0 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2026 1 5 22 25 34
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 320 -364 384 -340 
            LINE N 320 -352 384 -352 
            RECTANGLE N 64 -384 320 284 
            LINE N 320 -208 384 -208 
            LINE N 320 -304 384 -304 
            LINE N 320 -256 384 -256 
            LINE N 320 -16 384 -16 
            LINE N 320 48 384 48 
            RECTANGLE N 0 148 64 172 
            LINE N 64 160 0 160 
            LINE N 320 256 384 256 
            LINE N 320 208 384 208 
            LINE N 320 112 384 112 
            LINE N 320 -128 384 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x24
            TIMESTAMP 2026 1 5 22 25 37
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V16
            TIMESTAMP 2026 1 5 22 25 35
            RECTANGLE N 64 -192 320 88 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 64 0 64 
        END BLOCKDEF
        BEGIN BLOCK U_New_PC PC_Update
            PIN New_PC(5:0) New_PC(5:0)
            PIN Branch Branch
            PIN Offset(4:0) Instr(4:0)
            PIN PC(5:0) PC(5:0)
            PIN N N_Flag
            PIN OVF OV_Flag
            PIN Z Z_Flag
            PIN C C_Flag
            PIN BranchType(2:0) Instr(18:16)
        END BLOCK
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(5:0) New_PC(5:0)
            PIN PC(5:0) PC(5:0)
        END BLOCK
        BEGIN BLOCK MUX_RegDest MUX2V5
            PIN I0(3:0) Instr(3:0)
            PIN I1(3:0) Instr(10:7)
            PIN Y(3:0) WrReg(3:0)
            PIN Sel RegDest
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN Clk Clk
            PIN WrEn RegWr
            PIN RdReg1(3:0) Instr(18:15)
            PIN RdReg2(3:0) Instr(3:0)
            PIN WrReg(3:0) WrReg(3:0)
            PIN WRData(15:0) WRData(15:0)
            PIN RdData1(15:0) RdData1(15:0)
            PIN RdData2(15:0) RdData2(15:0)
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN RdData1(15:0) RdData1(15:0)
            PIN RdData2(15:0) RdData2(15:0)
            PIN Y(15:0) ALU_Out(15:0)
            PIN ALUOP(2:0) ALUOP(2:0)
            PIN LIT5(4:0) Instr(4:0)
            PIN BIT_4(3:0) Instr(15:12)
            PIN CE_N CE_NF
            PIN Clk Clk
            PIN CE_C CE_CF
            PIN CE_OV CE_OVF
            PIN CE_Z CE_ZF
            PIN Zflag Z_Flag
            PIN Cflag C_Flag
            PIN Nflag N_Flag
            PIN OVflag OV_Flag
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Clk Clk
            PIN INW0(15:0) INW0(15:0)
            PIN INW1(15:0) INW1(15:0)
            PIN Addr(4:0) Instr(8:4)
            PIN DataIn(15:0) RdData2(15:0)
            PIN DataOut(15:0) MemOut(15:0)
            PIN OUTW0(15:0) OUTW0(15:0)
            PIN Wr MemWr
        END BLOCK
        BEGIN BLOCK U_Ctrl ctrl
            PIN OP(4:0) Instr(23:19)
            PIN ALUOP(2:0) ALUOP(2:0)
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN CE_CF CE_CF
            PIN CE_ZF CE_ZF
            PIN Selection_Bits(1:0) Instr(6:5)
            PIN Branch Branch
            PIN CE_NF CE_NF
            PIN CE_OVF CE_OVF
            PIN MemWr MemWr
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x24
            PIN Addr(4:0) PC(5:1)
            PIN Data(23:0) Instr(23:0)
        END BLOCK
        BEGIN BLOCK MUX_ALU MUX2V16
            PIN I0(15:0) MemOut(15:0)
            PIN I1(15:0) ALU_Out(15:0)
            PIN Y(15:0) WRData(15:0)
            PIN Sel Mem2Reg
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN BRANCH Clk
            WIRE 496 960 528 960
            WIRE 528 960 528 1008
            WIRE 528 1008 544 1008
        END BRANCH
        BEGIN BRANCH PC(5:0)
            WIRE 928 1008 1040 1008
            WIRE 992 496 1216 496
            WIRE 1216 496 1280 496
            WIRE 1280 496 1280 896
            WIRE 1280 896 1280 1072
            WIRE 1280 1072 1280 1360
            WIRE 1040 896 1040 1008
            WIRE 1040 896 1280 896
            BEGIN DISPLAY 1216 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1280 1072 1376 1072
        BEGIN BRANCH PC(5:1)
            WIRE 1376 1072 1392 1072
            WIRE 1392 1072 1392 1104
            WIRE 1392 1104 1456 1104
            BEGIN DISPLAY 1392 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(23:0)
            WIRE 1840 1104 1904 1104
            WIRE 1904 1072 1904 1104
            WIRE 1904 1072 1968 1072
            WIRE 1968 1072 1968 1168
            WIRE 1968 1168 1968 1296
            WIRE 1968 1296 1968 1424
            WIRE 1968 1424 1968 1744
            WIRE 1968 1744 1968 2128
            WIRE 1968 2128 1968 2528
            WIRE 1968 160 1968 352
            WIRE 1968 352 1968 1040
            WIRE 1968 1040 1968 1072
            BEGIN DISPLAY 1968 1296 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 1168 2064 1168
        BUSTAP 1968 1040 2064 1040
        BUSTAP 1968 1424 2064 1424
        BEGIN BRANCH RdData2(15:0)
            WIRE 3472 912 3584 912
            WIRE 3584 912 3856 912
            BEGIN DISPLAY 3584 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData1(15:0)
            WIRE 3472 848 3584 848
            WIRE 3584 848 3856 848
            BEGIN DISPLAY 3584 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2832 848 2928 848
            WIRE 2928 848 2992 848
            BEGIN DISPLAY 2928 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALU_Out(15:0)
            WIRE 4240 1072 4368 1072
            WIRE 4368 1072 4512 1072
            BEGIN DISPLAY 4368 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemOut(15:0)
            WIRE 4336 640 4336 1008
            WIRE 4336 1008 4512 1008
            WIRE 4336 640 6240 640
            WIRE 6240 640 6240 1200
            WIRE 5776 1200 6016 1200
            WIRE 6016 1200 6240 1200
            BEGIN DISPLAY 6016 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 5232 848 5312 848
            WIRE 5312 848 5328 848
            BEGIN DISPLAY 5312 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(15:0)
            WIRE 5264 912 5280 912
            WIRE 5280 912 5328 912
        END BRANCH
        IOMARKER 5264 912 INW0(15:0) R180 28
        IOMARKER 5264 976 INW1(15:0) R180 28
        BUSTAP 1968 1744 2064 1744
        BUSTAP 1968 2128 2064 2128
        BEGIN BRANCH ALUOP(2:0)
            WIRE 2560 1744 2688 1744
            WIRE 2688 1744 2880 1744
            BEGIN DISPLAY 2688 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(18:16)
            WIRE 400 688 512 688
            WIRE 512 688 608 688
            BEGIN DISPLAY 512 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 992 368 1024 368
            WIRE 1024 368 1104 368
            BEGIN DISPLAY 1024 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 352 1872 352
        BEGIN INSTANCE MUX_ALU 4512 1168 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(18:15)
            WIRE 2064 1040 2192 1040
            WIRE 2192 1040 2992 1040
            BEGIN DISPLAY 2192 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_PC 544 1104 R0
            BEGIN DISPLAY 0 -248 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        IOMARKER 496 960 Clk R180 28
        BEGIN BRANCH Instr(4:0)
            WIRE 992 432 1504 432
            WIRE 1504 352 1504 432
            WIRE 1504 352 1552 352
            WIRE 1552 352 1872 352
            BEGIN DISPLAY 1552 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH New_PC(5:0)
            WIRE 144 320 608 320
            WIRE 144 320 144 672
            WIRE 144 672 144 1072
            WIRE 144 1072 544 1072
            BEGIN DISPLAY 144 672 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_New_PC 608 432 R0
            BEGIN DISPLAY 0 -264 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_ROM 1456 1136 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(10:7)
            WIRE 2064 1424 2112 1424
            WIRE 2112 1424 2320 1424
            BEGIN DISPLAY 2112 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE MUX_RegDest 2320 1520 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RdData2(15:0)
            WIRE 5104 1200 5232 1200
            WIRE 5232 1200 5328 1200
            BEGIN DISPLAY 5232 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(8:4)
            WIRE 5104 1136 5200 1136
            WIRE 5200 1136 5328 1136
            BEGIN DISPLAY 5200 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW1(15:0)
            WIRE 5264 976 5280 976
            WIRE 5280 976 5328 976
        END BRANCH
        BEGIN INSTANCE U_DataMem 5328 1056 R0
            BEGIN DISPLAY 0 -348 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RegWr
            WIRE 2560 1792 2672 1792
            WIRE 2672 1792 2880 1792
            BEGIN DISPLAY 2672 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2560 1968 2672 1968
            WIRE 2672 1968 2880 1968
            BEGIN DISPLAY 2672 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2560 1888 2672 1888
            WIRE 2672 1888 2880 1888
            BEGIN DISPLAY 2672 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2560 1840 2656 1840
            WIRE 2656 1840 2880 1840
            BEGIN DISPLAY 2656 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_OVF
            WIRE 2560 2208 2672 2208
            WIRE 2672 2208 2880 2208
            BEGIN DISPLAY 2672 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_ZF
            WIRE 2560 2144 2672 2144
            WIRE 2672 2144 2880 2144
            BEGIN DISPLAY 2672 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_CF
            WIRE 2560 2080 2672 2080
            WIRE 2672 2080 2880 2080
            BEGIN DISPLAY 2672 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_NF
            WIRE 2560 2304 2672 2304
            WIRE 2672 2304 2880 2304
            BEGIN DISPLAY 2672 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 2560 2352 2672 2352
            WIRE 2672 2352 2880 2352
            BEGIN DISPLAY 2672 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ALU 3856 1248 R0
            BEGIN DISPLAY 0 -552 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH ALUOP(2:0)
            WIRE 3600 976 3696 976
            WIRE 3696 976 3856 976
            BEGIN DISPLAY 3696 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(15:12)
            WIRE 3600 1104 3696 1104
            WIRE 3696 1104 3856 1104
            BEGIN DISPLAY 3696 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(4:0)
            WIRE 3600 1040 3680 1040
            WIRE 3680 1040 3856 1040
            BEGIN DISPLAY 3680 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 3600 1552 3744 1552
            WIRE 3744 1552 3856 1552
            BEGIN DISPLAY 3744 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_NF
            WIRE 3600 1504 3744 1504
            WIRE 3744 1504 3856 1504
            BEGIN DISPLAY 3744 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_CF
            WIRE 3600 1408 3728 1408
            WIRE 3728 1408 3856 1408
            BEGIN DISPLAY 3728 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_OVF
            WIRE 3600 1360 3744 1360
            WIRE 3744 1360 3856 1360
            BEGIN DISPLAY 3744 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WRData(15:0)
            WIRE 2864 1440 2864 1696
            WIRE 2864 1696 4000 1696
            WIRE 4000 1696 5024 1696
            WIRE 2864 1440 2992 1440
            WIRE 4896 1008 5024 1008
            WIRE 5024 1008 5024 1696
            BEGIN DISPLAY 4000 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(3:0)
            WIRE 2704 1360 2848 1360
            WIRE 2848 1360 2992 1360
            BEGIN DISPLAY 2848 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(3:0)
            WIRE 2064 1168 2096 1168
            WIRE 2096 1168 2688 1168
            WIRE 2688 1168 2992 1168
            WIRE 2096 1168 2096 1360
            WIRE 2096 1360 2320 1360
            BEGIN DISPLAY 2688 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2832 960 2928 960
            WIRE 2928 960 2992 960
            BEGIN DISPLAY 2928 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 2992 1280 R0
            BEGIN DISPLAY 0 -604 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH CE_ZF
            WIRE 3600 1456 3744 1456
            WIRE 3744 1456 3856 1456
            BEGIN DISPLAY 3744 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N_Flag
            WIRE 4240 1504 4256 1504
            WIRE 4256 1504 4272 1504
        END BRANCH
        IOMARKER 4272 1504 N_Flag R0 28
        BEGIN BRANCH Z_Flag
            WIRE 4240 1456 4256 1456
            WIRE 4256 1456 4272 1456
        END BRANCH
        IOMARKER 4272 1456 Z_Flag R0 28
        BEGIN BRANCH C_Flag
            WIRE 4240 1408 4256 1408
            WIRE 4256 1408 4272 1408
        END BRANCH
        IOMARKER 4272 1408 C_Flag R0 28
        BEGIN BRANCH OV_Flag
            WIRE 4240 1360 4256 1360
            WIRE 4256 1360 4272 1360
        END BRANCH
        IOMARKER 4272 1360 OV_Flag R0 28
        BEGIN BRANCH MemWr
            WIRE 5232 1056 5312 1056
            WIRE 5312 1056 5328 1056
            BEGIN DISPLAY 5312 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OUTW0(15:0)
            WIRE 5776 944 5840 944
        END BRANCH
        IOMARKER 5840 944 OUTW0(15:0) R0 28
        BEGIN BRANCH RegDest
            WIRE 2048 1536 2176 1536
            WIRE 2176 1536 2320 1536
            BEGIN DISPLAY 2176 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4352 1232 4432 1232
            WIRE 4432 1232 4512 1232
            BEGIN DISPLAY 4432 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(6:5)
            WIRE 2064 2128 2080 2128
            WIRE 2080 2128 2080 2256
            WIRE 2080 2256 2144 2256
            WIRE 2144 2256 2176 2256
            BEGIN DISPLAY 2144 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(23:19)
            WIRE 2064 1744 2080 1744
            WIRE 2080 1744 2176 1744
            BEGIN DISPLAY 2080 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Ctrl 2176 2096 R0
            BEGIN DISPLAY 0 -504 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH N_Flag
            WIRE 544 496 592 496
            WIRE 592 496 608 496
            BEGIN DISPLAY 592 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OV_Flag
            WIRE 544 544 592 544
            WIRE 592 544 608 544
            BEGIN DISPLAY 592 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Z_Flag
            WIRE 544 592 576 592
            WIRE 576 592 592 592
            WIRE 592 592 608 592
            BEGIN DISPLAY 592 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C_Flag
            WIRE 544 640 592 640
            WIRE 592 640 608 640
            BEGIN DISPLAY 592 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
