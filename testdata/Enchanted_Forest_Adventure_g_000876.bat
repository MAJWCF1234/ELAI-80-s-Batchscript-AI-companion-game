
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
echo Welcome to the Enchanted Forest Adventure!
echo What would you like to do?
echo 1. Start the game
echo 2. Check inventory
echo 3. Exit
set /p choice=
if "%choice%"=="1" goto forestStart_g_000876
if "%choice%"=="2" goto checkInventory_g_000876
if "%choice%"=="3" goto end_g_000876
goto start_g_000876

:forestStart_g_000876
cls
echo You find yourself in an enchanted forest. You see a path diverging into two.
echo Do you take the path covered in rose petals or the path that's dark and gloomy?
echo 1. Path covered in rose petals
echo 2. Dark and gloomy path
set /p pathChoice=
if "%pathChoice%"=="1" goto rosePath_g_000876
if "%pathChoice%"=="2" goto darkPath_g_000876
goto forestStart_g_000876

:rosePath_g_000876
cls
echo You walk down the path covered in rose petals and find a mysterious potion. Do you drink it?
echo 1. Yes
echo 2. No
set /p potionChoice=
if "%potionChoice%"=="1" (
    echo potion >> "%inventoryFile%"
    echo You drank the mysterious potion and gained the ability to talk to animals!
)
goto forestStart_g_000876

:darkPath_g_000876
cls
echo You walk down the dark path and find a sword. Do you pick it up?
echo 1. Yes
echo 2. No
set /p swordChoice=
if "%swordChoice%"=="1" (
    echo sword >> "%inventoryFile%"
    echo You picked up the sword! You feel braver already.
)
goto forestStart_g_000876

:checkInventory_g_000876
cls
echo Your Inventory:
type "%inventoryFile%"
pause
goto start_g_000876

:end_g_000876
exit
