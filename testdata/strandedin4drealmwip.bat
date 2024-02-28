@echo off
setlocal enabledelayedexpansion

:letsplaystrandedin4drealm
goto :main_menu_gm_00000024
 
:main_menu_gm_00000024
cls
echo Welcome to Stranded in a 4-D Realm
echo.
echo 1. Start game
echo 2. Exit
echo.
set /p choice=Make your choice (1-2): 
if "%choice%"=="1" goto enter_character_name_gm_00000024
if "%choice%"=="2" goto exit_game_gm_00000024
echo Invalid choice
pause
goto main_menu_gm_00000024
 
:enter_character_name_gm_00000024
cls
 echo -----------------------------------------------------------
echo Enter your character's name:
 echo -----------------------------------------------------------
set /p character_name=
echo Character name set as: %character_name%
pause
goto start_game_gm_00000024



 :start_game_gm_00000024
cls
echo ------------------------------------------------------------------------------------------------------
echo Chapter 1: The Anomaly
echo ------------------------------------------------------------------------------------------------------
echo In a distant future, where humanity's thirst for exploration knew no bounds, a brilliant
echo scientist and astronaut named %character_name% stood at the forefront of scientific
echo advancement. With unrivaled expertise and an insatiable curiosity, %character_name%
echo had dedicated their life to unraveling the mysteries of the cosmos.
 echo ------------------------------------------------------------------------------------------------------

pause
 cls
@Echo off & Setlocal EnableExtensions EnableDelayedExpansion
CHCP 65001 > nul
cls

REM change the below variable value to assign the path of the file to be displayed below.
Set "imagepath=%~dp0Sprites\eventide.txt"

for /F %%a in ('Echo(prompt $E^| cmd')Do Set CSI=%%a[

> Con (
    For /f "UsebackQ Delims=" %%G in ("%imagepath%")Do (
        Set "Line=%%G"
        Echo(!Line:e[=%CSI%!
)    )
echo ------------------------------------------------------------------------------------------------------
echo The day of the groundbreaking mission had arrived. %character_name% and the crew of the Eventide stood on the precipice of a 
echo grand adventure that would redefine humanity's understanding of the cosmos. Their hearts swelled with excitement as they 
echo prepared to embark on a journey that would push the boundaries of human understanding.
echo .
echo The Eventide, a testament to human ingenuity, gleamed in the sunlight. Its metallic exterior, adorned with state-of-the-art 
echo instruments and advanced technology, whispered of the discoveries it was destined to unveil. At its core, the revolutionary 
echo faster-than-light (FTL) engine, a product of %character_name%'s brilliant mind, held the promise of propelling them beyond the 
echo known reaches of space.
echo ------------------------------------------------------------------------------------------------------
pause 
cls
echo ------------------------------------------------------------------------------------------------------
echo As %character_name% surveyed their crew, a diverse group of experts chosen for their expertise and unwavering determination, 
echo they felt a deep sense of pride. Each crew member represented a vital piece of the puzzle, bringing their unique skills and 
echo knowledge to 
echo the table. Together, they formed a cohesive unit, ready to tackle the challenges that lay ahead.
echo .
echo The atmosphere crackled with anticipation as the final checks and preparations were completed. The launch facility buzzed with 
echo activity, a hive of engineers, technicians, and onlookers who understood the magnitude of this historic moment. The world held echo its breath, awaiting the launch of the Eventide and the beginning of a new chapter in humanity's quest for knowledge.
echo As %character_name% stood at the helm of the spacecraft, their heart swelled with a mixture of exhilaration and a keen 
echo awareness of the weight of responsibility. They had dedicated their life to this mission, pouring their intellect and passion echo into the design of the Eventide and its revolutionary propulsion system.
echo Outside the spacecraft, a crowd had gathered to witness this momentous occasion. The eyes of the world were upon %
echo character_name% and their crew, looking to them as pioneers and ambassadors of humanity's unquenchable thirst for exploration.
echo .
echo With the final countdown echoing in their ears, %character_name%'s mind raced with a flurry of thoughts and emotions. The 
echo dreams of countless nights and years of preparation had led to this moment. The decision they were about to make would shape 
echo the course of their own destiny and the trajectory of scientific progress.
echo .
echo ------------------------------------------------------------------------------------------------------
echo -----------------------------------
echo What would you like to do?
echo -----------------------------------
echo.
echo 1. Do you continue with the mission
echo 2. Do you turn back
echo ------------------------------------------------------------------------------------------------------
set /p choice=Make your choice (1-2): 
if "%choice%"=="1" goto continuewithlighttravel_gm_00000024
if "%choice%"=="2" goto turnbackfromjump_gm_00000024
echo
Invalid choice
pause
goto
Start_game_gm_00000024

:turnbackfromjump_gm_00000024
echo %character_name% hesitated, contemplating the risks involved in venturing into the unknown. They stood at the helm of the Eventide, their gaze fixed on the expanse of space before them. It was a moment of profound decision, where the allure of discovery clashed with the weight of responsibility.

echo Thoughts of the crew's safety and the potential dangers that lay ahead consumed %character_name%'s mind. They knew that turning back meant abandoning the opportunity to uncover new cosmic frontiers, to unravel the mysteries of uncharted territories. But it also meant prioritizing the lives entrusted to their care.

echo As %character_name% looked around at the dedicated crew members who had joined them on this ambitious mission, they felt a sense of duty wash over them. These were not just colleagues; they were a tightly-knit team that had trained and prepared for this moment together. Their well-being was paramount.

echo With a heavy heart, %character_name% made the difficult decision to turn back. The Eventide's course was recalibrated, and the spacecraft began its journey back towards Earth. Disappointment mingled with relief as the crew accepted the outcome, knowing that they had made the responsible choice.

pause
cls
@Echo off & Setlocal EnableExtensions EnableDelayedExpansion
CHCP 65001 > nul
cls

REM change the below variable value to assign the path of the file to be displayed below.
Set "imagepath=%~dp0Sprites\earth.txt"

for /F %%a in ('Echo(prompt $E^| cmd')Do Set CSI=%%a[

> Con (
    For /f "UsebackQ Delims=" %%G in ("%imagepath%")Do (
        Set "Line=%%G"
        Echo(!Line:e[=%CSI%!
)    )
echo -----------------------------------------------------------
echo Chapter 2: A Changed Path
echo -----------------------------------------------------------
echo The Eventide retraced its steps, returning to familiar celestial landmarks as it made its way back home. The journey that had once been filled with anticipation and wonder was now a bittersweet reflection of what could have been.

echo On the return trip, the crew members found solace in one another's company. They shared stories, laughter, and moments of contemplation. There was a collective understanding that the decision to turn back was not a defeat but a demonstration of their commitment to each other's well-being.

echo %character_name%, too, found solace in knowing that they had prioritized the safety of their crew. Although their thirst for exploration remained unquenched, they were determined to find new avenues to contribute to scientific understanding from within the boundaries of known space.

echo Back on Earth, the Eventide's arrival became a subject of intrigue and reflection. It was hailed as a testament to human ingenuity and the value of calculated risk. Scientists, philosophers, and explorers debated the implications of turning back, sparking discussions about the delicate balance between ambition and caution.

pause
cls
@Echo off & Setlocal EnableExtensions EnableDelayedExpansion
CHCP 65001 > nul
cls

REM change the below variable value to assign the path of the file to be displayed below.
Set "imagepath=%~dp0Sprites\medal.txt"

for /F %%a in ('Echo(prompt $E^| cmd')Do Set CSI=%%a[

> Con (
    For /f "UsebackQ Delims=" %%G in ("%imagepath%")Do (
        Set "Line=%%G"
        Echo(!Line:e[=%CSI%!
)    )
echo [ A lonely medal sits on a desk and everyday you think of what could have been.]
echo %character_name% became an advocate for responsible exploration, sharing their experience and the lessons learned. They spoke at conferences, wrote books, and inspired others with their unique perspective. The Eventide's journey, though shorter than anticipated, became a catalyst for a new era of collaborative research and comprehensive risk assessment.

echo And so, the Eventide returned to Earth, becoming a symbol of both scientific progress and the importance of measured decision-making. The journey may have ended sooner than anticipated, but the lessons learned would fuel future endeavors and inspire the next generation of explorers.

pause
cls

echo -----------------------------------------------------------
echo Thank you for playing!
echo -----------------------------------------------------------
echo This is the end of the game. We hope you enjoyed your adventure with %character_name% and the crew of the Eventide.

pause
exit /B 0





 : continuewithlighttravel_gm_00000024
echo ------------------------------------------------------------------------------------------------------
echo As the crew took their positions, excitement mingled with a hint of trepidation.
echo %character_name% gazed out into the vast expanse of space, feeling a surge of
echo anticipation and a deep sense of responsibility. The mission's objective was clear: to
echo explore uncharted regions of space and search for habitable exoplanets that could one
echo day become new homes for humanity.
echo ------------------------------------------------------------------------------------------------------
