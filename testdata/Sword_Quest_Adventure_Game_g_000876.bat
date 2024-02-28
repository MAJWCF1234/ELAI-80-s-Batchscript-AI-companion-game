
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
echo Welcome to the Adventure Game: Sword Quest!
echo What would you like to do?
echo 1. Start the game
echo 2. Check inventory
echo 3. Exit
set /p choice=
if "%choice%"=="1" goto gameStart_g_000876
if "%choice%"=="2" goto checkInventory_g_000876
if "%choice%"=="3" goto end_g_000876
goto start_g_000876

:gameStart_g_000876
cls
echo You find yourself in a medieval castle.
echo Two paths lie ahead. Do you go left into the armory or right into the throne room?
echo 1. Armory
echo 2. Throne Room
set /p pathChoice=
if "%pathChoice%"=="1" goto armory_g_000876
if "%pathChoice%"=="2" goto throneRoom_g_000876
goto gameStart_g_000876

:armory_g_000876
cls
echo You enter the armory and see various weapons.
echo Do you pick up a bow or leave?
echo 1. Pick up a bow
echo 2. Leave
set /p weaponChoice=
if "%weaponChoice%"=="1" (
    echo bow >> "%inventoryFile%"
    echo You picked up a bow!
)
goto gameStart_g_000876

:throneRoom_g_000876
cls
echo You enter the throne room and see a sword on the throne.
echo Do you want to take it?
echo 1. Yes
echo 2. No
set /p swordChoice=
if "%swordChoice%"=="1" (
    findstr /m "sword" "%inventoryFile%"
    if !errorlevel!==0 (
        echo You already have the sword from the last game. You're ready for the battle!
    ) else (
        echo You need the sword from the last game to proceed.
    )
)
goto gameStart_g_000876

:checkInventory_g_000876
cls
echo Your Inventory:
type "%inventoryFile%"
pause
goto start_g_000876

:end_g_000876
exit /b 0

:secretRoom_g_000876
cls
echo You discover a secret room behind a bookshelf in the armory.
echo There is a mysterious potion on a table.
echo Do you drink the potion?
echo 1. Yes
echo 2. No
set /p potionChoice=
if "%potionChoice%"=="1" (
    echo potion >> "%inventoryFile%"
    echo You drink the potion and feel invincible!
)
goto gameStart_g_000876

:guard_g_000876
cls
echo You encounter a guard blocking your way to the treasure room.
echo Do you try to fight or bribe the guard?
echo 1. Fight
echo 2. Bribe
set /p guardChoice=
if "%guardChoice%"=="1" (
    findstr /m "sword" "%inventoryFile%"
    if !errorlevel!==0 (
        echo You successfully defeat the guard with your sword!
        goto treasureRoom_g_000876
    ) else (
        echo The guard is too strong. You should come back with a sword.
    )
)
if "%guardChoice%"=="2" (
    findstr /m "gold" "%inventoryFile%"
    if !errorlevel!==0 (
        echo You successfully bribe the guard and enter the treasure room!
        goto treasureRoom_g_000876
    ) else (
        echo You don't have enough gold to bribe the guard.
    )
)
goto gameStart_g_000876

:treasureRoom_g_000876
cls
echo You enter the treasure room and see a mountain of gold and jewels.
echo Do you take some?
echo 1. Yes
echo 2. No
set /p treasureChoice=
if "%treasureChoice%"=="1" (
    echo treasure >> "%inventoryFile%"
    echo You collect some treasure!
)
goto gameStart_g_000876
