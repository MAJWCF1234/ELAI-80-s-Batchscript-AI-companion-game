
@echo off
setlocal enabledelayedexpansion

:: Initialize user ID and inventory file
set userID=User123
set "inventoryFile=%userID%_inventory.txt"
if not exist "%inventoryFile%" (
    echo Your inventory is empty. > "%inventoryFile%"
)

:start_g_000876
cls
echo Welcome to the Mysterious Island Adventure!
echo What would you like to do?
echo 1. Start the game
echo 2. Check inventory
echo 3. Exit
set /p choice=
if "%choice%"=="1" goto islandStart_g_000876
if "%choice%"=="2" goto checkInventory_g_000876
if "%choice%"=="3" goto end_g_000876
goto start_g_000876

:islandStart_g_000876
cls
echo You wake up on a mysterious island.
echo You see a forest, a cave, and a beach. Where do you go?
echo 1. Forest
echo 2. Cave
echo 3. Beach
set /p locationChoice=
if "%locationChoice%"=="1" goto forest_g_000876
if "%locationChoice%"=="2" goto cave_g_000876
if "%locationChoice%"=="3" goto beach_g_000876
goto islandStart_g_000876

:forest_g_000876
cls
echo You venture into the forest and find an axe. Do you pick it up?
echo 1. Yes
echo 2. No
set /p axeChoice=
if "%axeChoice%"=="1" (
    echo axe >> "%inventoryFile%"
    echo You picked up an axe!
)
goto islandStart_g_000876

:cave_g_000876
cls
echo You enter the cave and find a treasure chest. Do you want to open it?
echo 1. Yes
echo 2. No
set /p chestChoice=
if "%chestChoice%"=="1" (
    findstr /m "axe" "%inventoryFile%"
    if !errorlevel!==0 (
        echo You used the axe to open the chest and found a diamond!
        echo diamond >> "%inventoryFile%"
    ) else (
        echo You need an axe to open the chest.
    )
)
goto islandStart_g_000876

:beach_g_000876
cls
echo You walk to the beach and find a boat. Do you want to escape the island?
echo 1. Yes
echo 2. No
set /p boatChoice=
if "%boatChoice%"=="1" (
    findstr /m "diamond" "%inventoryFile%"
    if !errorlevel!==0 (
        echo You used the diamond as a lucky charm and safely escaped the island! You win!
        goto end_g_000876
    ) else (
        echo You need a diamond to activate the boat's magic and escape.
    )
)
goto islandStart_g_000876

:checkInventory_g_000876
cls
echo Your Inventory:
type "%inventoryFile%"
pause
goto start_g_000876

:end_g_000876
exit
