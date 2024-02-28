@Echo off & Setlocal EnableExtensions EnableDelayedExpansion
CHCP 65001 > nul
cls

REM change the below variable value to assign the path of the file to be displayed below.
Set "imagepath=%~dp0Sprites\medal.txt"

for /F %%a in ('Echo(prompt $E^| cmd')Do Set CSI=%%a[

> Con (
    For /f "UsebackQ Delims=" %%G in ("%imagepath%")Do (
        Set "Line=%%G"
        Echo(!Line:e[=%CSI%!
)    )
pause