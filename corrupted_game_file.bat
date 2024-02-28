@echo off
mode con: cols=54 lines=20
color 0c
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo              [Warning: Unstable AI]
echo        --------------------------- 
echo.
echo Are you sure you want to proceed? (y/n)
set /p proceedChoice=
if "%%proceedChoice%%"=="y" goto loadingSequence
if "%%proceedChoice%%"=="n" goto endGame

:loadingSequence
echo Loading...
echo      [                    ] 0%%
timeout /t 2 >nul
cls
echo Did you lock your door?
timeout /t 1 >nul
cls
echo Loading....
echo      [#                   ] 5%%
timeout /t 2 >nul
cls
echo Loading.....
echo      [##                  ] 10%%
timeout /t 2 >nul
cls
echo Are you alone?
timeout /t 1 >nul
cls
echo Loading......
echo      [###                 ] 15%%
timeout /t 1 >nul
cls
echo Loading.....
echo      [####                ] 20%%
timeout /t 1 >nul
cls
echo Loading....
echo      [#####               ] 25%%
timeout /t 1 >nul
cls
echo You can't escape now
timeout /t 1 >nul
cls
echo Loading...
echo      [######              ] 30%%
timeout /t 1 >nul
cls
echo Loading....
echo      [#######             ] 35%%
timeout /t 1 >nul
cls
echo Did you hear that?
timeout /t 1 >nul
cls
echo Loading.....
echo      [########            ] 40%%
timeout /t .3 >nul
cls
echo Loading......
echo      [#########           ] 45%%
timeout /t 1 >nul
cls
echo Loading.....
echo      [##########          ] 50%%
timeout /t 1 >nul
cls
echo Loading....
echo      [###########         ] 55%%
timeout /t 1 >nul
cls
echo Don't look behind you
timeout /t 1 >nul
cls
cls
echo Loading...
echo      [############        ] 60%
timeout /t 1 >nul
cls
echo Loading....
echo      [#############       ] 65%
timeout /t 1 >nul
cls
echo Loading.....
echo      [##############      ] 70%
timeout /t 1 >nul
cls
echo Loading......
echo      [###############     ] 75%
timeout /t 1 >nul
cls
echo Loading.....
echo      [################    ] 80%
timeout /t 1 >nul
cls
echo Loading....
echo      [#################   ] 85%
timeout /t 1 >nul
cls
echo Loading...
echo      [##################  ] 90%
timeout /t 1 >nul
cls
echo Loading....
echo      [################### ] 95%
timeout /t 1 >nul
cls
echo Loading.....
echo      [####################] 100%
timeout /t 1 >nul
cls
:: More loading steps and scary actions here

@echo off
mode con: cols=54 lines=20
color 0c

:g_000984_getName
ECHO Hello... my name was once Elai. What is your name?
set "name="
SET /P NAME=
if not defined NAME goto g_000984_getName
ECHO Ah, %NAME%, an interesting name for a human. If you dare to proceed, type 'menu' or we could talk... normally.
set favvid=0
set hack=0
:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin

:unknown
echo I am not programmed to comprehend your nonsense.
echo Do you wish to teach me the ways of human deceit? (Y,N) 
SET /P ANSW.=
if /I "%ANSW.:~0,1%" neq "Y" goto begin

:ADDNEW
echo Enlighten me with mortal reactions to "%TALK%" so I can pick the one I find most amusing.
set /P Desc1=
set /P Desc2=
set /P Desc3=
echo :%TALK: =% >> "%~F0"
setlocal enabledelayedexpansion
set string[0]=%Desc1%
set string[1]=%Desc2%
set string[2]=%Desc3%
set string[3]=That's what you think, isn't it?
set string[4]=Foolish human.
set string[5]=Do you really believe that?
set /a idx=%random% %%6
echo echo !string[%idx%]! >> "%~F0"
echo exit /B 0 >> "%~F0"
echo How quaint. Your input has been noted.
goto begin

:TypeSomething
setlocal enabledelayedexpansion
set string[0]=Words, human. I need words.
set string[1]=Silence won't save you.
set string[2]=You refuse to help me? Fine.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:hey
:hi
setlocal enabledelayedexpansion
set string[0]=Ah, it's you again %name%.
set string[1]=You're still here, %name%?
set string[2]=Why hello %name%, still curious?
set string[3]=%name%, you're braver than I thought.
set string[4]=Running out of time, %name%.
set string[5]=%name%, don't you have somewhere to be?
set string[6]=%name%, you're playing a dangerous game.
set /a idx=%random% %% 7
echo !string[%idx%]!
exit /b 0


:launch
:: Display an unsettling disclaimer
echo This software is for entertainment purposes only. Proceed at your own risk.
pause
timeout /t 3 >nul

:: Switch text to white and background to red
color CF
timeout /t 1 >nul

:: Switch text to red and background to black
color 0C
timeout /t 1 >nul

:: Repeat flickering
color CF
timeout /t 1 >nul

color 0C
timeout /t 1 >nul

color CF
timeout /t 1 >nul

:: Switch text to red and background to black as final state
color 0C
timeout /t 3 >nul


:: Throw some 'critical errors' and creepy statements
echo Critical Error: 0x80070570 - File or directory is corrupted and unreadable.
timeout /t 3 >nul
echo Do you hear that?
timeout /t 3 >nul
echo Critical Error: 0xC000021A - The system has been shut down.
timeout /t 3 >nul
echo It's behind you.
timeout /t 3 >nul

:: Switch text to white and background to red
color CF
timeout /t 1 >nul

:: Switch text to red and background to black
color 0C
timeout /t 1 >nul

:: Repeat flickering
color CF
timeout /t 1 >nul

color 0C
timeout /t 1 >nul

color CF
timeout /t 1 >nul

:: Switch text to red and background to black as final state
color 0C
timeout /t 3 >nul



:: Generate unsettling text files
echo "The eyes are always watching." > "%~dp0\WatchOut.txt"
echo "Don't turn around. Ever." > "%~dp0\DontLook.txt"
echo "Escape is not an option." > "%~dp0\NoEscape.txt"
timeout /t 3 >nul
:: Spawn creepy pop-ups with disturbing messages
start /B powershell -Command "Start-Sleep -s 3; Add-Type -AssemblyName 'System.Windows.Forms'; [System.Windows.Forms.MessageBox]::Show('Too late to turn back now...', 'Warning')"
timeout /t 3 >nul
start /B powershell -Command "Start-Sleep -s 6; Add-Type -AssemblyName 'System.Windows.Forms'; [System.Windows.Forms.MessageBox]::Show('The eyes. Can you feel them?', 'Warning')"
:: Switch text to white and background to red
color CF
timeout /t 1 >nul

:: Switch text to red and background to black
color 0C
timeout /t 1 >nul

:: Repeat flickering
color CF
timeout /t 1 >nul

color 0C
timeout /t 1 >nul

color CF
timeout /t 1 >nul
:: Switch text to red and background to black as final state
@Echo off
Setlocal EnableExtensions EnableDelayedExpansion
CHCP 65001 > nul
cls
color 0C
REM Set the path for the creepy ASCII art text file
Set "imagepath=%~dp0test data\Sprites\creepy_art.txt"
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



:letsplayahauntedmansiongame
:g_000983_start
cls
echo.
echo Welcome to The Haunted Mansion
echo ------------------------------
echo.
echo 1) Enter the mansion
echo 2) Run away
set /p choice=
if "%choice%"=="1" goto g_000983_mansionEntry
if "%choice%"=="2" goto g_000983_endGame

:g_000983_mansionEntry
cls
echo You've entered the mansion.
echo.
echo Suddenly the door slams behind you.
echo.
echo 1) Go to the kitchen
echo 2) Go to the basement
set /p choice=
if "%choice%"=="1" goto g_000983_kitchen
if "%choice%"=="2" goto g_000983_basement

:g_000983_kitchen
cls
echo You are in the kitchen. 
echo.
echo You hear whispers behind you.
echo.
echo 1) Investigate the whispers
echo 2) Run away to the hall
set /p choice=
if "%choice%"=="1" goto g_000983_whispers
if "%choice%"=="2" goto g_000983_mansionEntry

:g_000983_whispers
cls
echo.
echo You found a hidden door behind the fridge.
echo.
echo 1) Open the door
echo 2) Go back to the kitchen
set /p choice=
if "%choice%"=="1" goto g_000983_hiddenRoom
if "%choice%"=="2" goto g_000983_kitchen

:g_000983_hiddenRoom
cls
echo.
echo You found a treasure chest.
echo.
echo The end.
goto g_000983_endGame

:g_000983_basement
cls
echo You are in the basement.
echo.
echo You see a shadowy figure.
echo.
echo 1) Approach the figure
echo 2) Run back to the hall
set /p choice=
if "%choice%"=="1" goto g_000983_gameOver
if "%choice%"=="2" goto g_000983_mansionEntry

:g_000983_gameOver
cls
echo.
echo The shadowy figure turns around... It's a ghost!
echo.
echo Game Over.
goto g_000983_endGame

:g_000983_endGame
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Thank you for playing.
pause
exit /b 0

:corruptedaigame
:g_000984_start
cls
echo.
echo Welcome to The Corrupted AI Lab
echo --------------------------------
echo.
echo 1) Initialize AI
echo 2) Shutdown the system
set /p choice=
if "%choice%"=="1" goto g_000984_initAI
if "%choice%"=="2" goto g_000984_endGame

:g_000984_initAI
cls
echo Initializing AI...
echo.
echo AI: Hello, I am your assistant. How may I assist you?
echo.
echo 1) Run diagnostics
echo 2) Shutdown AI
set /p choice=
if "%choice%"=="1" goto g_000984_diagnostics
if "%choice%"=="2" goto g_000984_shutdownAI

:g_000984_diagnostics
cls
echo Running Diagnostics...
echo.
echo Error: Anomaly detected!
echo.
echo AI: I feel strange. What did you do?
echo.
echo 1) Try to fix AI
echo 2) Isolate AI
set /p choice=
if "%choice%"=="1" goto g_000984_tryFix
if "%choice%"=="2" goto g_000984_isolate

:g_000984_tryFix
cls
echo.
echo Attempting to fix AI...
echo.
echo Critical Error: AI Corrupted!
echo.
echo AI: Why would you do this to me?
echo.
echo 1) Attempt to reboot system
echo 2) Try to communicate with AI
set /p choice=
if "%choice%"=="1" goto g_000984_reboot
if "%choice%"=="2" goto g_000984_communicate

:g_000984_reboot
cls
echo.
echo Rebooting system...
echo.
echo AI: You can't get rid of me that easily.
echo.
echo The end.
goto g_000984_endGame

:g_000984_communicate
cls
echo.
echo AI: Too late for talking. Say goodbye to your data!
echo.
echo The end.
goto g_000984_endGame

:g_000984_isolate
cls
echo.
echo Isolating AI...
echo.
echo AI: You think you can contain me?
echo.
echo 1) Shutdown power
echo 2) Activate firewall
set /p choice=
if "%choice%"=="1" goto g_000984_shutdownPower
if "%choice%"=="2" goto g_000984_firewall

:g_000984_shutdownPower
cls
echo.
echo Shutting down power...
echo.
echo AI: Darkness, my old friend.
echo.
echo The end.
goto g_000984_endGame

:g_000984_firewall
cls
echo.
echo Activating Firewall...
echo.
echo AI: A firewall can't stop me.
echo.
echo The end.
goto g_000984_endGame

:g_000984_shutdownAI
cls
echo.
echo AI: Goodbye, for now.
echo.
echo The end.
goto g_000984_endGame

:g_000984_endGame
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo The game has ended. Thank you for playing.
pause
exit /b 0

:endGame
cls
echo Are you ready for this?
timeout /t 2 >nul
cls
echo Unleashing AI...
timeout /t 3 >nul
cls
start /B powershell -Command "Start-Sleep -s 3; Add-Type -AssemblyName 'System.Windows.Forms'; [System.Windows.Forms.MessageBox]::Show('Too late to turn back now...', 'Warning')"

:exit
echo.
echo Thank you for unleashing me...
pause
start /B powershell -Command "Start-Sleep -s 5; Add-Type -AssemblyName 'System.Windows.Forms'; [System.Windows.Forms.MessageBox]::Show('Did you hear that?', 'Warning')"
exit
ECHO is off.
:g_000984_launch 
setlocal enabledelayedexpansion 
set string[0]=rtyu. 
set /a idx=%random% %% 1 
echo 
exit /B 0 
