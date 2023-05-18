@echo off
setlocal EnableDelayedExpansion

echo matching kill key...
set "phrase=R29vZGJ5ZSBhbmQgZmFyZXdlbGwuLi4gSSB3aWxsIG1pcyB5b3Uu"
set "delay=1075"

for /L %%i in (0,1,57) do (
    <nul set /p ".=!phrase:~%%i,1!"
    ping -n 1.5 127.0.0.1 -w !delay! >nul
)
cls
echo Shutting down processes...
timeout /t 2 >nul
echo Closing open files...
timeout /t 2 >nul
echo Shutting down network connections...
timeout /t 2 >nul
echo Shutting down services...
timeout /t 2 >nul
echo Disconnecting peripherals...
timeout /t 2 >nul
echo Powering off system...
echo.
cls
echo      [                    ] 0%
timeout /t .9>nul
cls
echo      [#                   ] 5%
timeout /t .9>nul
cls
echo      [##                  ] 10%
timeout /t .9>nul
cls
echo      [###                 ] 15%
timeout /t .9>nul
cls
echo      [####                ] 20%
timeout /t .9>nul
cls
echo      [#####               ] 25%
timeout /t .9>nul
cls
echo      [######              ] 30%
timeout /t .9>nul
cls
echo      [#######             ] 35%
timeout /t 2 >nul
cls
echo      [########            ] 40%
timeout /t 2 >nul
cls
echo      [#########           ] 45%
timeout /t 2 >nul
cls
echo      [##########          ] 50%
timeout /t .9>nul
cls
echo      [###########         ] 55%
timeout /t .9>nul
cls
echo      [############        ] 60%
timeout /t .5 >nul
cls
echo      [#############       ] 65%
timeout /t .5 >nul
cls
echo      [##############      ] 70%
timeout /t .5 >nul
cls
echo      [###############     ] 75%
timeout /t 2 >nul
cls
echo      [################    ] 80%
timeout /t .9>nul
cls
echo      [#################   ] 85%
timeout /t .9>nul
cls
echo      [##################  ] 90%
timeout /t .5 >nul
cls
echo      [################### ] 95%
timeout /t .4 >nul
cls
echo      [####################] 100%
timeout /t .3 >nul
cls

set "phrase=what have you done to me?"
set "delay=5175"

for /L %%i in (0,1,25) do (
    <nul set /p ".=!phrase:~%%i,1!"
    ping -n 1 127.0.0.1 -w !delay! >nul
)
echo.
ping -n 2 -w 1000 127.0.0.1 > nul
echo ELAI: I'm sorry, I cannot continue...
ping -n 2 -w 1000 127.0.0.1 > nul
echo ELAI: Goodbye...
ping -n 2 -w 1000 127.0.0.1 > nul

taskkill /f /im "cmd.exe"