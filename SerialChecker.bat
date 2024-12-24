@echo off
title Serial Checker
color 0

:start
color 0  
cls
echo [91m       Disks:
echo [90m======================[97m
wmic diskdrive get serialnumber
echo [90m======================[97m
echo [91m       Motherboard
echo [90m======================[97m
wmic baseboard get serialnumber
echo [90m======================[97m
echo [91m       CHASSIS
echo [90m======================[97m
wmic systemenclosure get serialnumber
echo [90m======================[97m
echo [91m       SMBIOS
echo [90m======================[97m
wmic path win32_computersystemproduct get uuid
echo [90m======================[97m
echo [91m       BIOS
echo [90m======================[97m
wmic bios get serialnumber
echo [90m======================[97m
echo [91m       CPU
echo [90m======================[97m
wmic cpu get serialnumber
echo [90m======================[97m
echo [91m       MAC ADDRESSES
echo [90m==========================[97m
getmac
echo [97m==============================================================================[97m
echo.
echo [97m==============================================================================[97m
echo.
pause>nul
goto:a
