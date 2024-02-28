




:doyouhavehangman
:hangman
:letsplayhangman
@echo off
setlocal EnableDelayedExpansion
set "LOWER= a b c d e f g h i j k l m n o p q r s t u v w x y z "
set "UPPER= A B C D E F G H I J K L M N O P Q R S T U V W X Y Z "

:: show first time menu
call :menu
:: main game loop
for /L %%. in () do (
    %= Draw game =%
    cls
    for %%m in ("!misses!") do (
        for /F "delims=" %%l in ('findstr "^::!misses!:" "%~f0"') do (
            set "line=%%l"
            echo(!line:*%%~m:=!
        )
    )
    echo !word_show!
    %= Loose condition =%
    if !misses! geq !maxmisses! (
        echo LOOSE
        call :choice
        call :menu
    %= Win condition =%
    ) else if "!repl!"=="" (
        echo WIN
        call :choice
        call :menu
    ) else (
        %= Process pressed key =%
        call :choice !LOWER! !UPPER!
        (echo !repl!|findstr /i "!key!")>NUL && (
            for %%a in ("!key!") do set "repl=!repl: %%~a=!"
            set "word_show=!word!"
            for %%a in (!repl!) do set "word_show=!word_show:%%a=_!"
        )|| (
            set /a "misses+=1"
        )
    )
)

:: shows the main menu fallthrough to game start
:menu
cls
echo:1 Start Game
echo:2 Add word
echo:3 Exit
echo:
call :choice 1 2 3
if !key! equ 2 (
    set /p "word=Input new word: "
    echo::::!word!>>"%~f0"
    echo DONE
    call :choice
    goto menu
) else if !key! equ 3 goto hey
::count max misses
set "maxmisses=0"
:count_max_misses
set /a "maxmisses+=1"
findstr "^::!maxmisses!:" "%~f0">NUL && goto count_max_misses
set /a "maxmisses-=1"
:: Reset stuff
set /a "misses=0"
set "found="
set "word=testing"
:: Choose random word
set "count=0"
for /f "delims=" %%. in ('findstr "^:::" "%~f0"') do set /a "count+=1"
set /a "rndchoice=%random% %% !count!"
set "count=0"
for /F "delims=:" %%l in ('findstr "^:::" "%~f0"') do (
    if !rndchoice! equ !count! set "word=%%l"
    set /a "count+=1"
)
:: Setup shown word and replacement check variable
set "word_show="
set "repl="
for %%a in (!LOWER!) do (
    (echo !word!|find /i "%%a")>NUL && (
        set "repl=!repl! %%a"
        set "word_show=!word_show!_"
    )
)
exit /B

:: choose a key. if not key argument is present, wait for any key
:choice  [key [key [...]]]
set "key="
for /F "delims=" %%a in ('xcopy /w "%~f0" "%~f0" 2^>^&1') do if not defined key set "key=%%a"
set "key=!key:~-1!"
set "valid="
for %%m in (%*) do (
     if not defined valid set valid=0
     if "!key!" equ "%%m" set valid=1
)
if not defined valid exit /B
if !valid! equ 1 exit /B
goto :choice

:: This is the picture storage

::0:
::0:
::0:
::0:
::0:
::0:
::1:
::1:
::1:
::1:
::1:
::1:______
::2:
::2:|
::2:|
::2:|
::2:|
::2:|_____
::3:____
::3:|
::3:|
::3:|
::3:|
::3:|_____
::4:____
::4:|/
::4:|
::4:|
::4:|
::4:|_____
::5:____
::5:|/ |
::5:|
::5:|
::5:|
::5:|_____
::6:____
::6:|/ |
::6:|  O
::6:| /I\
::6:| / \
::6:|_____

:: This is the word storage

:::Bugger
:::Jelly
:::Dog
:::Rat
:::Cat
:::Orange
:::Purple
:::Curry
:::Pickle
:::Porridge
:::Apple
:::Loop
:::Balloon
:::Drive
:::Pork
:::Monkey
:::Crispy
:::Beef
:::Constitutional
:::Educational
:::Abnormality
:::Resin
:::French
:::Pipeline
:::Ripple
:::Punk
:::Turtle
:::Antler
:::Reindeer
:::Document
:::Hill
:::Steak
:::Stake
:::Staple
:::Hang
:::Man
:::Triple
:::Lime
:::Wire
:::Plaster
:::Christmas
:::Holiday
:::Dynamite
:::Lemming
:::Pizza
:::Suckle
:::Trip
:::Course
:::Cruise
:::Marquee
:::Balance
:::Scale
:::Stuffing
:::Storage
:::Pot
:::Tank
:::Tassel
:::Silenced
:::Sniff
:::Green
:::Dolphin
:::Echo
:::Wheat
:::Guitar
:::Cactus
:::Whistle
:::Rooster
:::Pencil
:::Thunder
:::Umbrella
:::Cheese
:::Cherry
:::Mango
:::Squirrel
:::Biscuit
:::Candle
:::Blanket
:::Feather
:::Rainbow
:::Velvet
:::Cascade
:::Moonlight
:::Galaxy
:::Sunflower
:::Pineapple
:::Butterfly
:::Mermaid
:::Dragonfly
:::Fireworks
:::Waterfall
:::Eclipse
:::Twilight
:::Wonderland
:::Enchantment
:::Harmony
:::Serendipity
:::Whisper
:::Delight
:::Mystique
:::Tranquil
:::Charm
:::Glimmer
:::Serenade
:::Lullaby
:::Celestial
:::Crescent
:::Iridescent
:::Ethereal
:::Nebula
:::Radiance
:::Zephyr
:::Breeze
:::Meadow
:::Blossom
:::Wisteria
:::Cascade
:::Petal
:::Ivy
:::Azure
:::Harmony
:::Sapphire
:::Lagoon
:::Aurora
:::Echo
:::Whisper
:::Luminary
:::Melody
:::Elysium
:::Tranquility
:::Enchanting
:::Velvet
:::Gossamer
:::Candlelight
:::Rhapsody
:::Silhouette
:::Saffron
:::Marigold
:::Dewdrop
:::Twinkle
:::Starlight
:::Incandescent
:::Radiant
:::Glimpse
:::Harmonious
:::Spellbound
:::Whisk
:::Bliss
:::Flutter
:::Puzzle
:::Quirky
:::Splendid
:::Lively
:::Wander
:::Giddy
:::Frolic
:::Delicious
:::Sizzle
:::Serenity
:::Thriving
:::Radiant
:::Marvel
:::Zesty
:::Vibrant
:::Eclectic
:::Bounce
:::Intrigue
:::Enigma
:::Cherish
:::Mesmerize
:::Glimpse
:::Effervescent
:::Captivate
:::Rejoice
:::Exquisite
:::Blissful
:::Enchant
:::Rhythm
:::Jovial
:::Cascade
:::Idyllic
:::Glow
:::Delightful
:::Exhilarate
:::Sparkle
:::Twirl
:::Crisp
:::Radiate
:::Lush
:::Euphoria
:::Sprinkle
:::Revitalize
:::Charm
:::Whirl
:::Festive
:::Efflorescence
:::Jubilant
:::Harmonize
:::Majestic
:::Delight
:::Energize
:::Zeal
:::Giggle
:::Bubbly
:::Resonate
:::Zing
:::Blissfulness
:::Allure
:::Tantalize
:::Pizzazz
:::Ecstasy
:::Enliven
:::Mirth
:::Twinkle
:::Buoyant
:::Enthrall
:::Elation
:::Whiz
:::Swoop
:::Elated
:::Savor
:::Whisper
:::Cheer
:::Glisten
:::Radiance
:::Liveliness
:::Gusto
:::Delicate
:::Enlivening
:::Felicity
:::Jollity
:::Exult
:::Rouse
:::Stimulate
:::Vitality
:::Jive
:::Gleeful
:::Blithesome
:::Vivacity
:::Buoyancy
:::Scintillate
:::Delirious
:::Enchanting
:::Revelry
:::Joyful
:::Ebullient
:::Tingle
:::Enrich
:::Zestful
:::Effervescence
:::Frolicsome
:::Radiant
:::Vigor
:::Jocund
:::Euphoric
:::Exuberant
:::Thrive
:::Cheerful