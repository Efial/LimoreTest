@echo off
:loop
taskkill /F /IM SesameMaster.exe
taskkill /F /IM host_monitor.online.exe
taskkill /F /IM lwmenu64.exe
taskkill /F /IM lwhardware64.exe
taskkill /F /IM super.exe
taskkill /F /IM Tvnserver.exe
sc stop "tvnserver"
sc config "tvnserver" start=disabled
goto loop
