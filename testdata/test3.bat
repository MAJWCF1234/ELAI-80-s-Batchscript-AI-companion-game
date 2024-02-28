@echo off
setlocal enabledelayedexpansion

:: Initialize star position with default values
set /a "starPos=10"
set /a "yPos=5"

:: Loop for user-controlled animation
:loop58
    call :drawScreen58

    :: Get user input for the next move
    echo.
    echo Type 'end' to end game.
    set "move="
    set /p "move=Next move (w=up, a=left, s=down, d=right): "

    :: Check if user wants to end the game
    if "!move!"=="end" (
        goto :endloop58
    )

    :: Update starPos and yPos based on user input
    if "!move!"=="w" set /a "yPos-=1"
    if "!move!"=="a" set /a "starPos-=1"
    if "!move!"=="s" set /a "yPos+=1"
    if "!move!"=="d" set /a "starPos+=1"

    :: Boundary checks
    if !yPos! lss 1 set /a "yPos=10"
    if !yPos! gtr 10 set /a "yPos=1"
    if !starPos! lss 0 set /a "starPos=19"
    if !starPos! gtr 19 set /a "starPos=0"

    :: Wait for a moment
    timeout /t 1 > nul

    goto loop58

:endloop58
:: Continue with the main code here.
echo Animation finished, continuing with main code...
exit /b

:drawScreen58
    cls
    for /l %%y in (1, 1, 10) do (
        set "line="
        for /l %%x in (0, 1, 19) do (
            if %%x equ !starPos! (
                if %%y equ !yPos! (
                    set "line=!line!*"
                ) else (
                    set "line=!line! "
                )
            ) else (
                set "line=!line! "
            )
        )
        echo(!line!
    )
exit /b