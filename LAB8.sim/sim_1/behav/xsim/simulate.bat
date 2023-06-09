@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sun Dec 18 02:06:53 +0100 2022
REM SW Build 3367213 on Tue Oct 19 02:48:09 MDT 2021
REM
REM IP Build 3369179 on Thu Oct 21 08:25:16 MDT 2021
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim CPU_TB_behav -key {Behavioral:sim_1:Functional:CPU_TB} -tclbatch CPU_TB.tcl -view C:/Users/Ron Ismaili/Desktop/University/Loyola/Courses/Computer Architecture/Lab work/Work in progress/LAB8/LAB8/Testing.wcfg -log simulate.log"
call xsim  CPU_TB_behav -key {Behavioral:sim_1:Functional:CPU_TB} -tclbatch CPU_TB.tcl -view C:/Users/Ron Ismaili/Desktop/University/Loyola/Courses/Computer Architecture/Lab work/Work in progress/LAB8/LAB8/Testing.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
