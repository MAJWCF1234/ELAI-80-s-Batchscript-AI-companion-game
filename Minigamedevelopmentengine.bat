@echo off
setlocal enabledelayedexpansion

:canimakeagame
echo Welcome to the Text Adventure Game Maker!
echo Please type the title of your game.
set /P TITLE=

:: Create game file
echo @echo off > "%TITLE%.bat"
echo setlocal enabledelayedexpansion >> "%TITLE%.bat"
echo title %TITLE% >> "%TITLE%.bat"
echo. >> "%TITLE%.bat"

:: Start game
echo :begin >> "%TITLE%.bat"

set "scenarioCounter=1"
call :createScenario

:: End game
echo :end >> "%TITLE%.bat"
echo echo Game Over. Thank you for playing! >> "%TITLE%.bat"
echo pause >> "%TITLE%.bat"

:: Completion message
echo All done!
goto end

:createScenario
echo Type the scenario description:
set /P SCENARIO=
echo echo %SCENARIO% >> "%TITLE%.bat"
echo. >> "%TITLE%.bat"

echo How many choices are there for this scenario? (Enter a number between 1 and 9)
set /P NUM_CHOICES=

:: Display choices
for /L %%i in (1,1,%NUM_CHOICES%) do (
    echo Enter choice %%i:
    set /P CHOICE= 
    echo echo %%i. !CHOICE! >> "%TITLE%.bat"
    echo. >> "%TITLE%.bat"
)

echo set /p choice=Enter your choice: >> "%TITLE%.bat"

:: Process user input
for /L %%i in (1,1,%NUM_CHOICES%) do (
    echo if %%choice%% EQU %%i goto choice_%scenarioCounter%_%%i >> "%TITLE%.bat"
)

echo echo Invalid choice. Please try again. >> "%TITLE%.bat"
echo goto begin >> "%TITLE%.bat"

:: Create scenarios for each choice
for /L %%i in (1,1,%NUM_CHOICES%) do (
    echo :choice_%scenarioCounter%_%%i >> "%TITLE%.bat"
    echo Would you like to create a new scenario for choice %%i? ^(Y/N^)
    set /P CONTINUE=

    if /I "!CONTINUE:~0,1!"=="Y" (
        echo goto scenario_%scenarioCounter%_%%i >> "%TITLE%.bat"
        echo :scenario_%scenarioCounter%_%%i >> "%TITLE%.bat"
        set /a "scenarioCounter+=1"
        call :createScenario
    ) else (
        echo This choice leads to an ending. Please write the ending description:
        set /P ENDING= 
        echo echo !ENDING! >> "%TITLE%.bat"
        echo goto end >> "%TITLE%.bat"
    )
)
exit /B

:end
goto hey




