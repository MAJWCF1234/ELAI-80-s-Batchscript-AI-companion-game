@echo off
setlocal enabledelayedexpansion

echo Welcome to Elai's Memory Game!
echo.

set /a "level = 1"

:StartLevel
if %level% gtr 10 (
    echo Congrats, you've completed all the levels!
    goto hey
)

echo Now playing level %level%
echo ------------------------

set "sequence="

for /l %%i in (1, 1, %level%) do (
    set /a "num=!random! %% 10"
    set "sequence=!sequence!!num!"
)

echo Remember this sequence: %sequence%
timeout /t 3 > nul
cls
echo Now, enter the sequence you remember:
set /p "userSequence="

if "%userSequence%"=="%sequence%" (
    echo Well done!
    set /a "level += 1"
    goto :StartLevel
) else (
    echo Wrong! The correct sequence was %sequence%
    echo Game Over!
    goto hey
)
