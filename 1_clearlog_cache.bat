@echo off
cls

REM  "Kill Process chrome"
taskkill /F /IM "chrome.exe" /T
REM  "Kill Process iexplore"
taskkill /F /IM "iexplore.exe" /T

REM "Clear Cache TMP"
erase "%TEMP%\*.*" /f /s /q
for /D %%i in ("%TEMP%\*") do RD /S /Q "%%i"

REM "Clear Cache Profile"
erase "%ALLUSERSPROFILE%\TEMP\*.*" /f /s /q
for /D %%i in ("%ALLUSERSPROFILE%\TEMP\*") do RD /S /Q "%%i"

REM "Clear Cache SystemRoot"
erase "%SystemRoot%\TEMP\*.*" /f /s /q
for /D %%i in ("%SystemRoot%\TEMP\*") do RD /S /Q "%%i"
erase "%SystemRoot%\TEMP\*.*" /f /s /q
for /D %%i in ("%SystemRoot%\TEMP\*") do RD /S /Q "%%i"

REM "Clear IE cache -  (Deletes Temporary Internet Files Only)"
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
erase "%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*") do RD /S /Q "%%i"

REM "Clear Google Chrome cache"
erase "%LOCALAPPDATA%\Google\Chrome\User Data\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Google\Chrome\User Data\*") do RD /S /Q "%%i"

REM "Limpar o Cache do Mozilla Firefox"
erase "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*") do RD /S /Q "%%i"

REM "Clear Cache DNS"
ipconfig/flushDNS

REM "start Chrome HTTP"
REM start chrome https://login.hilab.com.br/

cscript api.vbs "Logs do Windows, Google Chrome e Firefox."
