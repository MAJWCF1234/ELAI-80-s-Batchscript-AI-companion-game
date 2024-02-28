
@echo off
setlocal enabledelayedexpansion

:: Initialize inventory file
set "userID=player"
set "inventoryFile=%userID%_inventory.txt"
if not exist "%inventoryFile%" (
    echo. > "%inventoryFile%"
)

:letsplayexoplanet_gm_9823416
cls
echo Welcome to Exoplanet, a text-based simulation game.
echo In this game, you will explore an unknown planet, collect resources, and make choices that affect your survival.
echo.
echo Main Menu
echo 1. Start Game
echo 2. Load Game
echo 3. Exit
set /p choice=Enter your choice: 

if "!choice!"=="1" goto startgame_gm_9823416
if "!choice!"=="2" goto loadgame_gm_9823416
if "!choice!"=="3" goto hey
goto letsplayexoplanet_gm_9823416

:startgame_gm_9823416
:: Game starts here
echo You have landed on an unknown planet. Your mission is to explore and survive.
echo.
echo You currently have nothing in your inventory.
goto mainmenu_gm_9823416

:loadgame_gm_9823416
:: Load game state from a file (this can be implemented later)
echo Game loading is not implemented yet.
goto letsplayexoplanet_gm_9823416

:mainmenu_gm_9823416
echo.
echo What would you like to do?
echo 1. Explore
echo 2. Build
echo 3. Check Inventory
echo 4. Save Game
echo 5. Quit to Main Menu
set /p action=Choose an action: 

if "!action!"=="1" goto explore_gm_9823416
if "!action!"=="2" goto build_gm_9823416
if "!action!"=="3" goto checkinventory_gm_9823416
if "!action!"=="4" goto savegame_gm_9823416
if "!action!"=="5" goto letsplayexoplanet_gm_9823416

:explore_gm_9823416
echo You venture forth into the unknown landscape.
:: Here you can add different landscapes, resources, and choices
echo You find a cave full of iron ore.
echo Do you want to collect it? (Y/N)
set /p collect=
if /i "!collect!"=="Y" (
    echo ironore >> "%inventoryFile%"
    echo You collected iron ore.
)
goto mainmenu_gm_9823416

:build_gm_9823416
:: Here you can add building options based on available resources
echo Building options will be implemented later.
goto mainmenu_gm_9823416

:checkinventory_gm_9823416
:: Display inventory
echo Your inventory:
type "%inventoryFile%"
goto mainmenu_gm_9823416

:savegame_gm_9823416
:: Save game state to a file (this can be implemented later)
echo Game saving is not implemented yet.
goto mainmenu_gm_9823416

:hey
:: Exit point
echo Thanks for playing Exoplanet.
exit /b 0
