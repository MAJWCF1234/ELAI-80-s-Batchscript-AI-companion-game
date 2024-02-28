
@echo off
setlocal enabledelayedexpansion

echo Welcome to the Complex Adventure Game!
echo --------------------------------------
echo You are trapped in a mysterious world, trying to find a way home.
echo The choices you make will affect the outcome of the story.
echo Good luck, adventurer!
echo --------------------------------------

:Start_g_000873
echo You find yourself at a fork in the road. Which way will you go?
echo 1 - Left
echo 2 - Right
set /p choice=
if "!choice!"=="1" goto LeftPath_g_000873
if "!choice!"=="2" goto RightPath_g_000873
goto Start_g_000873

:LeftPath_g_000873
echo You chose the left path and arrive at a lake with a boat. What will you do?
echo 1 - Take the boat across the lake.
echo 2 - Walk around the lake.
set /p choice=
if "!choice!"=="1" goto Boat_g_000873
if "!choice!"=="2" goto WalkAroundLake_g_000873
goto LeftPath_g_000873

:RightPath_g_000873
echo You chose the right path and find a hidden treasure chest. What will you do?
echo 1 - Open the chest.
echo 2 - Ignore it and move on.
set /p choice=
if "!choice!"=="1" goto OpenChest_g_000873
if "!choice!"=="2" goto IgnoreChest_g_000873
goto RightPath_g_000873

:Boat_g_000873
echo You take the boat and safely cross the lake.
echo Congratulations, you have found your way home!
exit /b

:WalkAroundLake_g_000873
echo You decide to walk and fall into a hidden trap.
echo Game Over!
exit /b

:OpenChest_g_000873
echo You open the chest and find a magic ring.
echo Congratulations, you are teleported home!
exit /b

:IgnoreChest_g_000873
echo You ignore the chest and continue on your journey.
echo Unfortunately, you get lost and never find your way home.
echo Game Over!
exit /b
