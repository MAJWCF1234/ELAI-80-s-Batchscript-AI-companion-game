@echo off
setlocal enabledelayedexpansion

:letsplayariddlegame
echo Welcome to the Riddle Game!
echo.

set /a "score = 0"
set /a "level = 1"

:level1_gm_9823416
echo What has keys but can't open locks?
set /p answer=
if /i "!answer!"=="keyboard" (
    echo Correct!
    set /a "score += 1"
) else (
    echo Wrong, the answer is "keyboard".
)
echo.

:level2_gm_9823416
echo What has a heart that doesn't beat?
set /p answer=
if /i "!answer!"=="artichoke" (
    echo Correct!
    set /a "score += 1"
) else (
    echo Wrong, the answer is "artichoke".
)
echo.

:level3_gm_9823416
echo What comes once in a minute, twice in a moment, but never in a thousand years?
set /p answer=
if /i "!answer!"=="m" (
    echo Correct!
    set /a "score += 1"
) else (
    echo Wrong, the answer is "m".
)
echo.

:level4_gm_9823416
echo What has an endless supply of letters but starts empty?
set /p answer=
if /i "!answer!"=="mailbox" (
    echo Correct!
    set /a "score += 1"
) else (
    echo Wrong, the answer is "mailbox".
)
echo.

:level5_gm_9823416
echo What comes down but never goes up?
set /p answer=
if /i "!answer!"=="rain" (
    echo Correct!
    set /a "score += 1"
) else (
    echo Wrong, the answer is "rain".
)
echo.

:level6_gm_9823416
echo What has one eye but can't see?
set /p answer=
if /i "!answer!"=="needle" (
    echo Correct!
    set /a "score += 1"
) else (
    echo Wrong, the answer is "needle".
)
echo.

:level7_gm_9823416
echo What has an endless supply of letters but starts empty?
set /p answer=
if /i "!answer!"=="mailbox" (
    echo Correct!
    set /a "score += 1"
) else (
    echo Wrong, the answer is "mailbox".
)
echo.

:level8_gm_9823416
echo What comes down but never goes up?
set /p answer=
if /i "!answer!"=="rain" (
    echo Correct!
    set /a "score += 1"
) else (
    echo Wrong, the answer is "rain".
)
echo.

:level9_gm_9823416
echo What has one eye but can't see?
set /p answer=
if /i "!answer!"=="needle" (
    echo Correct!
    set /a "score += 1"
) else (
    echo Wrong, the answer is "needle".
)
echo.

:level10_gm_9823416
echo What comes once in a minute, twice in a moment, but never in a thousand years?
set /p answer=
if /i "!answer!"=="m" (
    echo Correct!
    set /a "score += 1"
) else (
    echo Wrong, the answer is "m".
)
echo.

echo Your final score is: !score! out of 10
goto hey
