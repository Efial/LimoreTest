@echo off
:loop
taskkill /F /IM SesameMaster.exe >nul 2>&1
taskkill /F /IM host_monitor.online.exe >nul 2>&1
taskkill /F /IM lwmenu64.exe >nul 2>&1
taskkill /F /IM lwhardware64.exe >nul 2>&1
taskkill /F /IM super.exe >nul 2>&1
timeout /t 2 /nobreak >nul
goto loop

echo Setting system time backward by one day...
set /A "day=1"
for /f "tokens=1-3 delims=/" %%a in ('date /t') do (
    set /A "dd=%%a-%day%", "mm=%%b", "yy=%%c"
)
if %dd% lss 10 set dd=0%dd%
if %mm% lss 10 set mm=0%mm%
date %mm%-%dd%-%yy%
echo System time set backward by one day.