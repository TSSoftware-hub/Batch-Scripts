@echo off

echo Author Sergey Trukhanov

echo This the first part of script which fixes the BSOD issue on PC caused by TrendMicro. 
echo Please, be sure that you started the first part of the script.


echo Press any key to continue.


timeout 99

REG ADD HKLM\SOFTWARE\TrendMicro\AEGIS /v PowerMonitorTime /t REG_DWORD /d 16

echo The fix was applied. See if there any errors in logs.

timeout 99