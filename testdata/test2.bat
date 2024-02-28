@echo off
color 0C

echo.
echo Hello World!
echo.
pause

@Echo off
Setlocal EnableExtensions EnableDelayedExpansion
CHCP 65001 > nul
cls

color 0C

REM Set the path for the creepy ASCII art text file
Set "imagepath=%~dp0Sprites\creepy_art.txt"

for /F %%a in ('Echo(prompt $E^| cmd')Do Set CSI=%%a[

> Con (
    For /f "UsebackQ Delims=" %%G in ("%imagepath%")Do (
        Set "Line=%%G"
        Echo(!Line:e[=%CSI%!
    )
)

pause

:: Switch back to normal color
color 0
timeout /t 3 >nul
goto hey

