@echo off
setlocal enabledelayedexpansion

:canimakeagame
rem Display a welcome message and prompt the user for the game title
echo Welcome to the Text Adventure Game Maker!
echo Please type the title of your game.
set /P TITLE=

rem Add 'setlocal enabledelayedexpansion' to the generated game file
echo @echo off > "%TITLE%.bat"
echo setlocal enabledelayedexpansion >> "%TITLE%.bat"

rem Show a cool header for the color selection
echo ^+---------------------------------------^+
echo ^|            Color Selection            ^|
echo ^+---------------------------------------^+

rem Display the background color options
echo.
echo Choose a background color:
echo  --------------------------------------
echo ^| 0 = Black   ^| 4 = Red     ^| 8 = Gray    ^| C = Light Red   ^|
echo ^| 1 = Blue    ^| 5 = Purple  ^| 9 = Lt Blue ^| D = Lt Purple   ^|
echo ^| 2 = Green   ^| 6 = Yellow  ^| A = Lt Green^| E = Lt Yellow   ^|
echo ^| 3 = Aqua    ^| 7 = White   ^| B = Lt Aqua ^| F = Bright White^|
echo  --------------------------------------
set /P bgColor=Enter your choice for background color (0-F): 

rem Display the text color options
echo.
echo Choose a text color:
echo  --------------------------------------
echo ^| 0 = Black   ^| 4 = Red     ^| 8 = Gray    ^| C = Light Red   ^|
echo ^| 1 = Blue    ^| 5 = Purple  ^| 9 = Lt Blue ^| D = Lt Purple   ^|
echo ^| 2 = Green   ^| 6 = Yellow  ^| A = Lt Green^| E = Lt Yellow   ^|
echo ^| 3 = Aqua    ^| 7 = White   ^| B = Lt Aqua ^| F = Bright White^|
echo  --------------------------------------
set /P textColor=Enter your choice for text color (0-F): 

rem Combine the color choices and set it
set "fullColor=%bgColor%%textColor%"

rem Include the color command in the generated game file
echo color %fullColor% >> "%TITLE%.bat"


        
rem Initialize inventoryAdded flag to "no"
set "inventoryAdded=no"

rem Prompt the user to decide if they want to include an inventory system in their game
set /P addInventory=Would you like to add an inventory system? (yes/no)
rem Check if the user chose 'yes' to adding an inventory system
if "%addInventory%"=="yes" (
    setlocal enabledelayedexpansion
    rem Initialize user ID and create a text file to store the inventory items
    echo rem Initialize user ID and inventory file >> "%TITLE%.bat"
    echo set userID=User123 >> "%TITLE%.bat"
    echo set "inventoryFile=%%userID%%_inventory.txt" >> "%TITLE%.bat"
    rem Check if the inventory file exists; if not, create one and initialize it as empty
    echo if not exist "%%inventoryFile%%" ( >> "%TITLE%.bat"
    echo     echo Your inventory is empty. ^> "%%inventoryFile%%" >> "%TITLE%.bat"
    echo ^) >> "%TITLE%.bat"

    rem Create the inventory file in the current script
    set userID=User123
    set "inventoryFile=!userID!_inventory.txt"
    if not exist "!inventoryFile!" (
        echo Your inventory is empty. > "!inventoryFile!"
    )
    endlocal

    rem Set a flag to indicate that the inventory system has been added
    set "inventoryAdded=yes"
) else (
    rem User chose not to add an inventory system, so continue without adding those features
    echo  No inventory system will be added.
)

rem Initialize character stats like health and stamina
echo set "health=100" >> "%TITLE%.bat"
echo set "stamina=100" >> "%TITLE%.bat"
rem Add a placeholder comment for sections where stats may be modified based on choices or events
echo rem Modify stats based on events or choices >> "%TITLE%.bat"

rem Start the game by defining a 'begin' label where the execution will start
echo :begin >> "%TITLE%.bat"

rem Display the Main Menu to the user
echo     echo ---------------------------------------- >> "%TITLE%.bat"
echo     echo             %TITLE% >> "%TITLE%.bat"
echo     echo ---------------------------------------- >> "%TITLE%.bat"
echo     echo 1) Start >> "%TITLE%.bat"
echo     echo 2) Exit >> "%TITLE%.bat"

rem Take user input to navigate through the Main Menu
echo     set /P mainMenuChoice= >> "%TITLE%.bat"

rem Evaluate user input for navigation: If 1, start the game; if 2, exit
echo     if "!mainMenuChoice!"=="1" ( >> "%TITLE%.bat"
echo         goto begin >> "%TITLE%.bat"  rem Loop back to the beginning to actually start the game
echo     ^) else if "!mainMenuChoice!"=="2" ( >> "%TITLE%.bat"
echo         exit >> "%TITLE%.bat"  rem Close the batch file, effectively exiting the game
echo     ^) >> "%TITLE%.bat"


set "scenarioCounter=1"

call :createScenario


rem End game
echo pause >> "%TITLE%.bat"
echo :end >> "%TITLE%.bat"
echo echo Game Over. Thank you for playing! >> "%TITLE%.bat"
echo pause >> "%TITLE%.bat"

rem Completion message
echo All done!
goto end

:createScenario
echo Type the scenario description:
set /P SCENARIO=
echo echo %SCENARIO% >> "%TITLE%.bat"
echo. >> "%TITLE%.bat"
rem Would you like to add stat changes to this scenario? (yes/no)
set /P addStatChange=Would you like to add stat changes to this scenario? (yes/no)
if "%addStatChange%"=="yes" (
    rem Which stat would you like to modify? (health/stamina)
    set /P "statToChange=Which stat would you like to modify? (health/stamina)"
    rem Is it a positive or negative change? (positive/negative)
    set /P "statChangeType=Is it a positive or negative change? (positive/negative)"
    rem Enter the change amount (e.g., 10)
    set /P "statChangeAmount=Enter the change amount (e.g., 10)"
    if "%statChangeType%"=="positive" (
        echo set /A "%statToChange%=%statToChange% + %statChangeAmount%" >> "%TITLE%.bat"
    ) else if "%statChangeType%"=="negative" (
        echo set /A "%statToChange%=%statToChange% - %statChangeAmount%" >> "%TITLE%.bat"
    )
    echo echo Your %statToChange% is now %%statToChange%% >> "%TITLE%.bat"
) 

call :extra_features
echo How many choices are there for this scenario? (Enter a number between 1 and 9)
set /P NUM_CHOICES=

rem Display choices
for /L %%i in (1,1,%NUM_CHOICES%) do (
    echo Enter choice %%i:
    set /P CHOICE= 
    echo echo %%i. !CHOICE! >> "%TITLE%.bat"
    echo. >> "%TITLE%.bat"
)

echo set /p choice=Enter your choice: >> "%TITLE%.bat"

rem Process user input
for /L %%i in (1,1,%NUM_CHOICES%) do (
    echo if %%choice%% EQU %%i goto choice_%scenarioCounter%_%%i >> "%TITLE%.bat"
)

echo echo Invalid choice. Please try again. >> "%TITLE%.bat"
echo goto begin >> "%TITLE%.bat"

rem Create scenarios for each choice
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


rem Spare parts section

:extra_features
rem Check if the user opted to add an inventory system based on the 'inventoryAdded' variable
if "!inventoryAdded!"=="yes" (
    rem Do you want to add keys for locked doors? (yes/no)
    set /P addKeys=Do you want to add keys for locked doors? 
    if "!addKeys!"=="yes" (
        echo echo Do you pick up the key? (yes/no) >> "%TITLE%.bat"
        echo set /P pickKey= >> "%TITLE%.bat"
        echo if "%%pickKey%%"=="yes" ( >> "%TITLE%.bat"
        echo     echo key ^>^> "%%inventoryFile%%" >> "%TITLE%.bat"
        echo     echo You picked up a key! >> "%TITLE%.bat"
        echo ^) else ( >> "%TITLE%.bat"
        echo     echo You decided not to pick up the key. >> "%TITLE%.bat"
        echo ^) >> "%TITLE%.bat"
    ) else (
        echo rem The user chose not to add keys for locked doors. 
    )
)


rem Check if the user opted to add an inventory system based on the 'inventoryAdded' variable
if "!inventoryAdded!"=="yes" (
    rem Would you like to add a locked door to this choice? (yes/no)
    set /P addLockedDoor=Would you like to add a locked door to this choice? 
    if "!addLockedDoor!"=="yes" (
        rem Which choice number should have a locked door? (e.g., 1)
        set /P lockedDoorChoice=Which choice number should have a locked door? 
        rem Writing logic to check for a key in the inventory file
        echo if "!choice!"=="!lockedDoorChoice!" ( >> "%TITLE%.bat"
        echo     findstr /m "key" "!inventoryFile!" >> "%TITLE%.bat"
        echo     if errorlevel 1 ( >> "%TITLE%.bat"
        echo         echo The door is locked. You need a key. >> "%TITLE%.bat"
        echo         goto :begin >> "%TITLE%.bat"
        echo     ^) else ( >> "%TITLE%.bat"
        echo         echo The door is unlocked. You proceed. >> "%TITLE%.bat"
        echo         rem Add logic to move to the next section >> "%TITLE%.bat"
        echo     ^) >> "%TITLE%.bat"
        echo ^) >> "%TITLE%.bat"
    )
)

rem Check if the user opted to add an inventory system based on the 'inventoryAdded' variable
if "!inventoryAdded!"=="yes" (
    rem Do you want to add loot boxes? (yes/no)
    set /P addLootBox=Do you want to add loot boxes? 
    if "!addLootBox!"=="yes" (
        rem How many items do you want in the loot box?
        set /P numItems= How many items do you want in the loot box? 
        echo rem Initialize loot box items >> "%TITLE%.bat"
        rem Loop to get each item name and write them into the game
        for /L %%i in (0, 1, !numItems!) do (
            echo rem Type the name of item %%i
            set /P itemName=
            echo set item[%%i]=!itemName! >> "%TITLE%.bat"
        )
        echo echo You found a loot box! >> "%TITLE%.bat"
        echo set /A idx=%%random%% %% !numItems! >> "%TITLE%.bat"
        echo set "loot=!item[%%idx%%]!" >> "%TITLE%.bat"
        echo echo !loot! ^>^> "!inventoryFile!" >> "%TITLE%.bat"
        echo echo You received !loot! from the loot box. >> "%TITLE%.bat"
    )
)


rem Ask the user if they want to incorporate dice rolls for random events in this scenario.
set /P addDiceRoll=Do you want to add dice rolls for random events? (yes/no)
rem If the user chooses 'yes', then add the necessary code to the generated game script.
if "!addDiceRoll!"=="yes" (
    echo set /A "diceRoll=%%random%% %% 6 + 1" >> "%TITLE%.bat"
    
    rem Loop through each dice face (1 to 6) and ask the user what event should happen for that roll.
    for /L %%i in (1, 1, 6) do (
        echo What should happen if the dice roll is %%i?
        set /P eventDescription=
        echo if "!diceRoll!"=="%%i" ( >> "%TITLE%.bat"
        echo     echo !eventDescription! >> "%TITLE%.bat"
        echo ^) >> "%TITLE%.bat"
    )
)

