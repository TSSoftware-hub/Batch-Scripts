@echo off
echo Author Sergey Trukhanov

echo This the first part of script which fixes the BSOD issue on PC caused by TrendMicro. 
echo It will restart your machine. 
echo Don't forget to run the second part of the script after restart.

echo Press any key to continue.


timeout 99

cd C:\Windows\System32\Drivers

if exist tmactmon.sys.bak (
	md tmactmon.sys
) else (
	ren tmactmon.sys tmactmon.sys.bak
	md tmactmon.sys
)

if exist tmcomm.sys.bak ( 
	md tmcomm.sys
) else (
	ren tmcomm.sys tmcomm.sys.bak
	md tmcomm.sys
)

if exist tmevtmgr.sys.bak (
	md tmevtmgr.sys
) else (
	ren tmevtmgr.sys tmevtmgr.sys.bak
	md tmevtmgr.sys
)

echo Files were renamed, folders were created, now it's going to restart your machine.


echo Press any key to continue.


timeout 99 

shutdown /r /t 0