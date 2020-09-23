@echo off
color 0b
title S.A.M.
goto hi

:hi
echo Hello, user. I am Sam
set /p name=What is your name?:
goto welcome

:welcome
cls
Hello, %name%. What can I do for you today?
echo.

echo 1. Time

echo 2. Locker

echo 3. Code Rain

echo 4. Exit

set /p input=Enter:
if "%input%" == "1" goto timer
if "%input%" == "2" goto locker
if "%input%" == "3" goto code
if "%input%" == "4" goto exit


:timer
color 0a
cls
echo Today is %date% and the time is %time% .%name%.
pause >nul
echo.
echo 1. Recheck
echo 2. Back to Menu
if "%input%" == "2" goto welcome
if "%input%" == "1" goto timer

:exit
exit

:locker
color 0b
title locker
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
:CONFIRM
echo Are you sure you want to lock this folder? (Y/N)
set/p "cho=>"
if %cho%==y goto LOCK
if %cho%==Y goto LOCK
if %cho%==N goto UNLOCK
if %cho%==n goto UNLOCK
echo Invalid choice.
goto CONFIRM
:LOCK
ren LockedFolder "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder Locked.
goto End
:UNLOCK
echo Enter password to unlock folder
set/p "pass=>"
if NOT %pass%== iliketrains1120 goto FAIL
attrib -h -s  "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" LockedFolder
echo Folder Unlocked.
goto End
:FAIL
echo Invalid Password
goto End
:MDLockedFolder
md LockedFolder
echo LockedFolder created.
goto End
:End

:code
mode 1000
color 0a
echo c0de ra1n
goto asd

:asd
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
goto asd