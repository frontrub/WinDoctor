@echo off
title WinDoctor 1.0.0-beta
echo WinDoctor 1.0.0-beta
echo Username: %username%
sfc /scannow
IF %ERRORLEVEL% EQU 0 ( 
  echo OK.
) ELSE ( 
  echo Error: Command failed. A restart will be required.
pause
shutdown -r -t 0
)
pause
exit
