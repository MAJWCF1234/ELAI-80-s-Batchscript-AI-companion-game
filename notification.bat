@echo off
setlocal

set "message=%~1"
set "title=%~2"
set "time=%~3"

start /B powershell -Command "Start-Sleep -s %time%; Add-Type -AssemblyName 'System.Windows.Forms'; [System.Windows.Forms.MessageBox]::Show('%message%', '%title%')"

endlocal

