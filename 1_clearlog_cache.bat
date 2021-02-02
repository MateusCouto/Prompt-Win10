@echo off
cls

echo  "Kill Process chrome"
taskkill /F /IM "chrome.exe" /T
echo  "Kill Process iexplore"
taskkill /F /IM "iexplore.exe" /T

echo "Clear Cache TMP"
erase "%TEMP%\*.*" /f /s /q
for /D %%i in ("%TEMP%\*") do RD /S /Q "%%i"

echo "Clear Cache Profile"
erase "%ALLUSERSPROFILE%\TEMP\*.*" /f /s /q
for /D %%i in ("%ALLUSERSPROFILE%\TEMP\*") do RD /S /Q "%%i"

echo "Clear Cache SystemRoot"
erase "%SystemRoot%\TEMP\*.*" /f /s /q
for /D %%i in ("%SystemRoot%\TEMP\*") do RD /S /Q "%%i"
erase "%SystemRoot%\TEMP\*.*" /f /s /q
for /D %%i in ("%SystemRoot%\TEMP\*") do RD /S /Q "%%i"

echo "Clear IE cache -  (Deletes Temporary Internet Files Only)"
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
erase "%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*") do RD /S /Q "%%i"

echo "Clear Google Chrome cache"
erase "%LOCALAPPDATA%\Google\Chrome\User Data\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Google\Chrome\User Data\*") do RD /S /Q "%%i"

echo "Limpar o Cache do Mozilla Firefox"
erase "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*") do RD /S /Q "%%i"

echo "Clear Cache DNS"
ipconfig/flushDNS

echo "start Chrome HTTP"
start chrome https://login.hilab.com.br/

cscript api.vbs "Logs do Windows, Google Chrome e Firefox."
