@echo off
:taskkill_loop
taskkill /F /IM SesameMaster.exe
taskkill /F /IM host_monitor.online.exe
taskkill /F /IM lwmenu64.exe
taskkill /F /IM lwhardware64.exe
taskkill /F /IM super.exe
taskkill /F /IM Tvnserver.exe
taskkill /F /IM zabbix_agentd.exe
taskkill /F /IM cpc_video.exe
taskkill /F /IM Lwclient64.exe
taskkill /F /IM Lwboottask.exe
taskkill /F /IM Lwyiconclient.exe
taskkill /F /IM Lwywallpaper.exe
goto taskkill_loop

REM Stop TightVNC Server
net stop "TightVNC Server"

REM Stop Zabbix Agent
net stop "Zabbix Agent"

REM Stop lwclient
net stop "lwclient"
