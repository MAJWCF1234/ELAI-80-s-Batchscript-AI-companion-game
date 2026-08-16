@echo off
setlocal EnableExtensions
mode con: cols=54 lines=20
color 0c
set "w=timeout /t"
set "F=####################"&set "Z=                    "
set "H0=Welcome to The Haunted Mansion|------------------------------||Enter the mansion|Run away|1|E"
set "H1=You've entered the mansion.|Suddenly the door slams behind you.||Go to the kitchen|Go to the basement|2|5"
set "H2=You are in the kitchen.|You hear whispers behind you.||Investigate the whispers|Run away to the hall|3|1"
set "H3=You found a hidden door behind the fridge.|||Open the door|Go back to the kitchen|4|2"
set "H4=You found a treasure chest.|The end.|||||"
set "H5=You are in the basement.|You see a shadowy figure.||Approach the figure|Run back to the hall|6|1"
set "H6=The shadowy figure turns around... It's a ghost!|Game Over.|||||"
set "A0=Welcome to The Corrupted AI Lab|--------------------------------||Initialize AI|Shutdown the system|1|E"
set "A1=Initializing AI...|AI: Hello, I am your assistant. How may I assist you?||Run diagnostics|Shutdown AI|2|7"
set "A2=Running Diagnostics...|Error: Anomaly detected!|AI: I feel strange. What did you do?|Try to fix AI|Isolate AI|3|5"
set "A3=Attempting to fix AI...|Critical Error: AI Corrupted!|AI: Why would you do this to me?|Attempt to reboot system|Try to communicate with AI|4|8"
set "A4=Rebooting system...|AI: You can't get rid of me that easily.|The end.||||"
set "A5=Isolating AI...|AI: You think you can contain me?||Shutdown power|Activate firewall|6|9"
set "A6=Shutting down power...|AI: Darkness, my old friend.|The end.||||"
set "A7=AI: Goodbye, for now.|The end.|||||"
set "A8=AI: Too late for talking. Say goodbye to your data!|The end.|||||"
set "A9=Activating Firewall...|AI: A firewall can't stop me.|The end.||||"
for /l %%# in (1,1,8) do echo.
echo              [Warning: Unstable AI]
echo        ---------------------------
echo.
echo Are you sure you want to proceed? (y/n)
set /p "p="
if /i "%p%"=="n" goto X
setlocal EnableDelayedExpansion
set "B="&set "P=                    "
for /l %%p in (0,5,100) do (
 set /a n=%%p/5,r=n%%6
 if !r! gtr 3 set /a r=6-r
 set /a d=3+r
 cls
 if %%p==5 echo Did you lock your door?&%w% 1 >nul&cls
 if %%p==15 echo Are you alone?&%w% 1 >nul&cls
 if %%p==30 echo You can't escape now&%w% 1 >nul&cls
 if %%p==40 echo Did you hear that?&%w% 1 >nul&cls
 if %%p==60 echo Don't look behind you&%w% 1 >nul&cls
 set "loading=Loading"
 for /l %%d in (1,1,!d!) do set "loading=!loading!."
 echo !loading!
 echo      [!B!!P!] %%p%%
 if %%p lss 15 (%w% 2 >nul) else if %%p==40 (%w% 1 >nul) else %w% 1 >nul
 set "B=!B!#"&set "P=!P:~1!"
)
endlocal
goto N

:N
echo Hello... my name was once Elai. What is your name?
set "name="&set /p "name="
if not defined name goto N
echo Ah, %name%, an interesting name for a human. If you dare to proceed, type 'menu' or we could talk... normally.
set favvid=0&set hack=0
:B
set "TALK=TypeSomething"&set /p "TALK="
set "TALK=%TALK:?=%"
call :%TALK: =% 2>nul
if %errorlevel% equ 0 goto B
echo I am not programmed to comprehend your nonsense.
echo Do you wish to teach me the ways of human deceit? (Y,N)
set /p "a="
if /i "%a:~0,1%" neq "Y" goto B
echo Enlighten me with mortal reactions to "%TALK%" so I can pick the one I find most amusing.
set /p "d1="&set /p "d2="&set /p "d3="
echo :%TALK: =%>>"%~f0"
set /a i=%random%%%6
if %i%==0 (echo echo %d1%>>"%~f0") else if %i%==1 (echo echo %d2%>>"%~f0") else if %i%==2 (echo echo %d3%>>"%~f0") else if %i%==3 (echo echo That's what you think, isn't it?^>>"%~f0") else if %i%==4 (echo echo Foolish human.^>>"%~f0") else echo echo Do you really believe that?^>>"%~f0"
echo exit /b 0>>"%~f0"
echo How quaint. Your input has been noted.
goto B

:TypeSomething
set /a i=%random%%%3+1
for /f "tokens=%i% delims=|" %%r in ("Words, human. I need words.|Silence won't save you.|You refuse to help me? Fine.") do echo %%r
exit /b 0
:hi
:hey
set /a i=%random%%%7+1
for /f "tokens=%i% delims=|" %%r in ("Ah, it's you again %name%.|You're still here, %name%?|Why hello %name%, still curious?|%name%, you're braver than I thought.|Running out of time, %name%.|%name%, don't you have somewhere to be?|%name%, you're playing a dangerous game.") do echo %%r
exit /b 0

:launch
echo This software is for entertainment purposes only. Proceed at your own risk.
pause
%w% 3 >nul
call :F
echo Critical Error: 0x80070570 - File or directory is corrupted and unreadable.
%w% 3 >nul
echo Do you hear that?
%w% 3 >nul
echo Critical Error: 0xC000021A - The system has been shut down.
%w% 3 >nul
echo It's behind you.
%w% 3 >nul
call :F
>"%~dp0\WatchOut.txt" echo "The eyes are always watching."
>"%~dp0\DontLook.txt" echo "Don't turn around. Ever."
>"%~dp0\NoEscape.txt" echo "Escape is not an option."
%w% 3 >nul
call :P 3 "Too late to turn back now..."
%w% 3 >nul
call :P 6 "The eyes. Can you feel them?"
for %%c in (CF 0C CF 0C CF) do (color %%c&%w% 1 >nul)
chcp 65001 >nul
cls&color 0C
set "imagepath=%~dp0testdata\sprites\creepy_art.txt"
for /f %%a in ('echo prompt $E^|cmd') do set "CSI=%%a["
setlocal EnableDelayedExpansion
>con (for /f "usebackq delims=" %%g in ("%imagepath%") do (set "l=%%g"&echo(!l:e[=!CSI!!))
endlocal
pause
color 0&%w% 3 >nul
goto hey

:F
for %%c in (CF 0C CF 0C CF) do (color %%c&%w% 1 >nul)
color 0C&%w% 3 >nul
exit /b

:P
start "" /b powershell -Command "Start-Sleep -s %1; Add-Type -AssemblyName 'System.Windows.Forms'; [System.Windows.Forms.MessageBox]::Show('%~2', 'Warning')"
exit /b

:letsplayahauntedmansiongame
set "g=H"&set "s=0"&goto G
:corruptedaigame
set "g=A"&set "s=0"&goto G
:G
if "%s%"=="E" goto GE
cls
call set "D=%%%g%%s%%%"
set "o1="&set "o2="
for /f "tokens=1-7 delims=|" %%a in ("%D%") do (
 echo.&echo %%a&echo.
 if not "%%b"=="" echo %%b&echo.
 if not "%%c"=="" echo %%c&echo.
 if not "%%d"=="" echo 1^) %%d
 if not "%%e"=="" echo 2^) %%e
 set "o1=%%f"&set "o2=%%g"
)
if not defined o1 goto GE
set /p "c="
if "%c%"=="1" set "s=%o1%"
if "%c%"=="2" set "s=%o2%"
goto G
:GE
for /l %%# in (1,1,7) do echo.
if "%g%"=="H" (echo Thank you for playing.) else echo The game has ended. Thank you for playing.
pause
exit /b 0

:X
cls
echo Are you ready for this?
%w% 2 >nul
cls&echo Unleashing AI...
%w% 3 >nul
cls
call :P 3 "Too late to turn back now..."
echo.&echo Thank you for unleashing me...
pause
call :P 5 "Did you hear that?"
exit

:g_000984_launch
echo rtyu.
exit /b 0
