
@echo off
setlocal enabledelayedexpansion

:: Initialize user ID and inventory file
set userID=User123
set "inventoryFile=%userID%_inventory_g_000875.txt"
if not exist "%inventoryFile%" (
    echo Your inventory is empty. > "%inventoryFile%"
)

:start_g_000875
cls
echo Welcome to the Ultimate Adventure Game!
echo What would you like to do?
echo 1. Start the game
echo 2. Check inventory
echo 3. Exit
set /p choice=
if "%choice%"=="1" goto gameStart_g_000875
if "%choice%"=="2" goto checkInventory_g_000875
if "%choice%"=="3" goto end_g_000875
goto start_g_000875

:gameStart_g_000875
cls
echo You wake up in a mysterious forest. You see three paths ahead of you.
echo Which path will you choose?
echo 1. The sunny path
echo 2. The dark path
echo 3. The rocky path
set /p pathChoice=
if "%pathChoice%"=="1" goto sunnyPath_g_000875
if "%pathChoice%"=="2" goto darkPath_g_000875
if "%pathChoice%"=="3" goto rockyPath_g_000875
goto gameStart_g_000875

:sunnyPath_g_000875
cls
echo You are walking down a sunny path and find a health potion. Do you pick it up?
echo 1. Yes
echo 2. No
set /p healthPotionChoice=
if "%healthPotionChoice%"=="1" (
    echo health_potion >> "%inventoryFile%"
    echo You picked up a health potion!
)
goto gameStart_g_000875

:darkPath_g_000875
cls
echo You enter a dark, creepy path and encounter a monster!
echo Do you want to fight it?
echo 1. Yes
echo 2. Run away
set /p fightChoice=
if "%fightChoice%"=="1" (
    findstr /m "health_potion" "%inventoryFile%"
    if !errorlevel!==0 (
        echo You used the health potion and defeated the monster!
        echo monster_head >> "%inventoryFile%"
    ) else (
        echo You need a health potion to fight the monster. You are defeated and sent back to the start.
    )
)
goto gameStart_g_000875

:rockyPath_g_000875
cls
echo You find yourself climbing up a rocky path.
echo You find a shiny gem. Do you pick it up?
echo 1. Yes
echo 2. No
set /p gemChoice=
if "%gemChoice%"=="1" (
    echo gem >> "%inventoryFile%"
    echo You picked up a shiny gem!
)
goto gameStart_g_000875

:checkInventory_g_000875
cls
echo Your Inventory:
type "%inventoryFile%"
pause
goto start_g_000875

:end_g_000875
exit /b 0

