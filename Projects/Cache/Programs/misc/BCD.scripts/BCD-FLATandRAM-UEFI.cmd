@echo off
setlocal
set BCDEDIT=%SYSTEMROOT%\system32\bcdedit.exe
set BCDSTORE=%~dp0BCD
IF EXIST %BCDSTORE% del %BCDSTORE% /F



set BCDEDIT=%SYSTEMROOT%\system32\bcdedit.exe
set BCDSTORE=%~dp0BCD

Echo Creating store...
%BCDEDIT% /createstore %BCDSTORE% 

Echo Creating bootmgr entry...
%BCDEDIT% /store %BCDSTORE% /create {bootmgr}
%BCDEDIT% /store %BCDSTORE% /set {bootmgr} description "Boot Manager"
%BCDEDIT% /store %BCDSTORE% /set {bootmgr} device boot
%BCDEDIT% /store %BCDSTORE% /set {bootmgr} timeout 20



ECHO Creating ramdisksdidevice entry...
for /f "tokens=2 delims={}" %%g in ('%BCDEDIT% /store %BCDSTORE% /create /device') do set ramdisk={%%g} 
%BCDEDIT% /store %BCDSTORE% /set %ramdisk% ramdisksdidevice boot
%BCDEDIT% /store %BCDSTORE% /set %ramdisk% ramdisksdipath \boot\boot.sdi 



Echo Adding RAM Boot WinPE entry...
for /f "tokens=2 delims={}" %%g in ('%BCDEDIT% /store %BCDSTORE% /create /application osloader') do set GUID={%%g}
%BCDEDIT% /store %BCDSTORE% /set %GUID% systemroot \Windows
%BCDEDIT% /store %BCDSTORE% /set %GUID% detecthal Yes
%BCDEDIT% /store %BCDSTORE% /set %GUID% winpe Yes
%BCDEDIT% /store %BCDSTORE% /set %GUID% osdevice ramdisk=[boot]\sources\boot.wim,%ramdisk%
%BCDEDIT% /store %BCDSTORE% /set %GUID% device ramdisk=[boot]\sources\boot.wim,%ramdisk%
%BCDEDIT% /store %BCDSTORE% /set %GUID% path \windows\system32\winload.efi
%BCDEDIT% /store %BCDSTORE% /set %GUID% description "Windows PE RAMBoot (UEFI)"
%BCDEDIT% /store %BCDSTORE% /displayorder %guid% /addlast


Echo Adding FlatBoot WinPE entry...
for /f "tokens=2 delims={}" %%g in ('%BCDEDIT% /store %BCDSTORE% /create /application osloader') do set guid={%%g}
%BCDEDIT% /store %BCDSTORE% /set %guid% path \windows\system32\winload.efi
%BCDEDIT% /store %BCDSTORE% /set %guid% device boot
%BCDEDIT% /store %BCDSTORE% /set %guid% osdevice boot
%BCDEDIT% /store %BCDSTORE% /set %guid% systemroot \Windows
%BCDEDIT% /store %BCDSTORE% /set %guid% description "Windows PE FlatBoot (UEFI)"
%BCDEDIT% /store %BCDSTORE% /set %guid% winpe yes
%BCDEDIT% /store %BCDSTORE% /set %guid% detecthal yes
%BCDEDIT% /store %BCDSTORE% /displayorder %guid% /addlast
echo.
pause



endlocal







