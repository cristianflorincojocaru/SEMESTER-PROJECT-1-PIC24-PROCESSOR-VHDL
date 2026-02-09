--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : TBW_BRA_N.vhw
-- /___/   /\     Timestamp : Mon Jan 05 01:00:26 2026
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TBW_BRA_N
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY TBW_BRA_N IS
END TBW_BRA_N;

ARCHITECTURE testbench_arch OF TBW_BRA_N IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT PIC24
        PORT (
            Clk : In std_logic;
            INW0 : In std_logic_vector (15 DownTo 0);
            INW1 : In std_logic_vector (15 DownTo 0);
            C_Flag : Out std_logic;
            N_Flag : Out std_logic;
            OUTW0 : Out std_logic_vector (15 DownTo 0);
            OV_Flag : Out std_logic;
            Z_Flag : Out std_logic
        );
    END COMPONENT;

    SIGNAL Clk : std_logic := '0';
    SIGNAL INW0 : std_logic_vector (15 DownTo 0) := "0000000000000000";
    SIGNAL INW1 : std_logic_vector (15 DownTo 0) := "0000000000000000";
    SIGNAL C_Flag : std_logic := '0';
    SIGNAL N_Flag : std_logic := '0';
    SIGNAL OUTW0 : std_logic_vector (15 DownTo 0) := "0000000000000000";
    SIGNAL OV_Flag : std_logic := '0';
    SIGNAL Z_Flag : std_logic := '0';

    constant PERIOD : time := 20 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : PIC24
        PORT MAP (
            Clk => Clk,
            INW0 => INW0,
            INW1 => INW1,
            C_Flag => C_Flag,
            N_Flag => N_Flag,
            OUTW0 => OUTW0,
            OV_Flag => OV_Flag,
            Z_Flag => Z_Flag
        );

        PROCESS    -- clock process for Clk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                Clk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                Clk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                INW0 <= "0000000001100111";
                INW1 <= "0000000000010000";
                -- -------------------------------------
                WAIT FOR 920 ns;

            END PROCESS;

    END testbench_arch;

