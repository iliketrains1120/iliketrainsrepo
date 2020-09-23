@echo off
title Clock
@mode con cols=35 lines=7
color 0f
:main
cls
echo.
echo Time: %time%
echo.
echo Date: %date%
echo.
ping -n 2 0.0.0.0 >nul
goto main