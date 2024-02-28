
@echo off
setlocal enabledelayedexpansion

:: Initialize user ID and inventory file
set userID=User123
set "inventoryFile=%userID%_inventory.txt"
if not exist "%inventoryFile%" (
    echo Your inventory is empty. > "%inventoryFile%"
)

:start_g_000874
cls
echo Welcome to the Complex Adventure Game!
echo What would you like to do?
echo 1. Start the game
echo 2. Check inventory
echo 3. Exit
set /p choice=
if "%choice%"=="1" goto gameStart_g_000874
if "%choice%"=="2" goto checkInventory_g_000874
if "%choice%"=="3" goto end_g_000874
goto start_g_000874

:gameStart_g_000874
cls
echo You find yourself in a dark room with two doors.
echo Do you take the left door or the right door?
echo 1. Left Door
echo 2. Right Door
set /p doorChoice=
if "%doorChoice%"=="1" goto leftDoor_g_000874
if "%doorChoice%"=="2" goto rightDoor_g_000874
goto gameStart_g_000874

:leftDoor_g_000874
cls
echo You find a key on the floor. Do you pick it up?
echo 1. Yes
echo 2. No
set /p keyChoice=
if "%keyChoice%"=="1" (
    echo key >> "%inventoryFile%"
    echo You picked up a key!
)
goto gameStart_g_000874

:rightDoor_g_000874
cls
echo You find a chest. Do you want to open it?
echo 1. Yes
echo 2. No
set /p chestChoice=
if "%chestChoice%"=="1" (
    findstr /m "key" "%inventoryFile%"
    if !errorlevel!==0 (
        echo You used the key to open the chest and found gold!
        echo gold >> "%inventoryFile%"
    ) else (
        echo You need a key to open the chest.
    )
)
goto gameStart_g_000874

:checkInventory_g_000874
cls
echo Your Inventory:
type "%inventoryFile%"
pause
goto start_g_000874

:end_g_000874
exit

:rightDoor_room2_g_000874
cls
echo You enter a room with strange markings on the wall. Do you want to investigate?
echo 1. Yes
echo 2. No
set /p markingsChoice=
if "!markingsChoice!"=="1" (
    echo You found a hidden compartment with a potion!
    echo potion >> "%inventoryFile%"
    echo You added a potion to your inventory.
)
goto gameStart_g_000874

:leftDoor_room2_g_000874
cls
echo You find yourself in front of a magical gate. Do you want to go through it?
echo 1. Yes
echo 2. No
set /p gateChoice=
if "!gateChoice!"=="1" (
    findstr /m "potion" "%inventoryFile%"
    if !errorlevel!==0 (
        echo You used the potion to unlock the gate and found a diamond!
        echo diamond >> "%inventoryFile%"
    ) else (
        echo You need a potion to unlock the gate.
    )
)
goto gameStart_g_000874

:gameStart_g_000874
cls
echo You find yourself in a dark room with three doors.
echo Do you take the left door, the middle door or the right door?
echo 1. Left Door
echo 2. Middle Door
echo 3. Right Door
set /p doorChoice=
if "!doorChoice!"=="1" goto leftDoor_room2_g_000874
if "!doorChoice!"=="2" goto leftDoor_g_000874
if "!doorChoice!"=="3" goto rightDoor_room2_g_000874


:left2Door_g_000874
cls
echo You find a knife on the table. Do you pick it up?
echo 1. Yes
echo 2. No
set /p knifeChoice=
if "!knifeChoice!"=="1" (
    echo knife >> "!inventoryFile!"
    echo You picked up a knife!
)
goto gameStart_g_000874

:right2Door_g_000874
cls
echo You find a locked safe. Do you want to open it?
echo 1. Yes
echo 2. No
set /p safeChoice=
if "!safeChoice!"=="1" (
    findstr /m "key" "!inventoryFile!"
    if !errorlevel!==0 (
        echo You used the key to open the safe and found a treasure map!
        echo treasure_map >> "!inventoryFile!"
    ) else (
        echo You need a key to open the safe.
    )
)
goto gameStart_g_000874

:fightDragon_g_000874
cls
echo You encounter a dragon! Do you want to fight it?
echo 1. Yes
echo 2. No
set /p dragonChoice=
if "!dragonChoice!"=="1" (
    findstr /m "knife" "!inventoryFile!"
    if !errorlevel!==0 (
        echo You used the knife to defeat the dragon and found a big diamond!
        echo big_diamond >> "!inventoryFile!"
    ) else (
        echo You need a knife to defeat the dragon.
    )
)
goto gameStart_g_000874

:checkMap_g_000874
cls
echo You have a treasure map. Do you want to follow it?
echo 1. Yes
echo 2. No
set /p mapChoice=
if "!mapChoice!"=="1" (
    findstr /m "treasure_map" "!inventoryFile!"
    if !errorlevel!==0 (
        echo You followed the map and found a hidden treasure chest!
        echo hidden_treasure >> "!inventoryFile!"
    ) else (
        echo You need the treasure map to find the hidden treasure.
    )
)
goto gameStart_g_000874

