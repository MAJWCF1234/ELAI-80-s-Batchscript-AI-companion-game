@echo off
setlocal enabledelayedexpansion
goto halls


:halls
@echo off
setlocal enabledelayedexpansion
REM This is the loader
set "chars=\ | / -"
set "delay=100"

for /L %%i in (1,1,20) do (
    for %%c in (!chars!) do (
        cls
        echo Loading: %%c
        ping -n 1 -w %delay% 127.0.0.1 > nul
    )
)
cls




REM Initialize entity types
set "entity_types[1]=a lurking shadow that seems to follow your every move"
set "entity_types[2]=a nightmarish figure with glowing eyes and sharp teeth, crawling on all fours with elongated arms and legs, its movements filled with an unnatural grace"
set "entity_types[3]=a strange and enigmatic force, invisible but palpable, its presence chilling the air and whispering cryptic warnings"
set "entity_types[4]=a spectral child, its eyes hollow and voice echoing with lost innocence"
set "entity_types[5]=an ancient guardian, its form twisted and bent, forever bound to protect a hidden secret"

REM Initialize room types
set "room_types[1]=an eerie library, where whispers of forgotten lore dance among the dusty shelves"
set "room_types[2]=a dimly lit laboratory, filled with bubbling concoctions and the hum of mysterious equipment"
set "room_types[3]=a hauntingly quiet ballroom, where ghostly music plays, and spectral dancers glide across the floor"
set "room_types[4]=a cobweb-covered study, filled with ancient books and scrolls, each holding secrets lost to time"
set "room_types[5]=a forlorn bedroom, where time stands still, the sheets crumpled and a fading perfume lingers in the air"
set "room_types[6]=a shadowy gallery, where unsettling portraits follow your every move with unseen eyes"
set "room_types[7]=a forgotten nursery, where toys creak and clatter, seemingly moving on their own accord"
set "room_types[8]=a musty attic, filled with relics and mementos of the past, each object telling a hidden story"
set "room_types[9]=a concealed crypt, shrouded in darkness, where cold winds whisper promises of doom and foreboding"

REM Initialize doors that require keys
set "doors_with_keys[10]=true"
set "doors_with_keys[20]=true"
set "doors_with_keys[33]=true"
set "doors_with_keys[41]=true"
set "doors_with_keys[52]=true"


REM Initialize other variables
set "chance_of_entity=30"
set "userID=User123"
set "door_number=1"
REM Unique tag: g_000349
REM Chance of encountering a trap door (in percentage)
set "chance_of_trap_door=10"

cls
echo Welcome to "Halls" - a spine-tingling Choose Your Own Adventure horror game!
pause
cls
echo You awaken in a dimly lit hallway, surrounded by doors leading to different rooms. Your goal? Reach Door 100 while evading sinister entities.
echo As you stand at Door 1, you must choose your path wisely. What will you do next?

:game_loop_g_000349
REM Select a random room if not already selected
if not defined room_type (
    set /a "room_type=!random! %% 9 + 1"
)
REM Select a random room from the 9 available
set "drawer_searches=0"
set /a "trap_door_chance=!random! %% 100 + 1"
if !trap_door_chance! leq !chance_of_trap_door! (
    echo You stumble upon a hidden trap door, leading to an unknown passage!
    goto trap_door_event_g_000349
)


REM Check if the door requires a key
if defined doors_with_keys[!door_number!] (
    findstr /m "key" "%userID%_inventory.txt" >nul 2>&1
    if errorlevel 1 (
        echo Door !door_number! is locked, and you need a key to enter.
        goto game_loop_g_000349
    ) else (
        echo You use a key to unlock Door !door_number! and proceed.
        REM Optionally, remove the key from the inventory
        type "%userID%_inventory.txt" | findstr /v "key" > "%userID%_inventory_tmp.txt"
        del "%userID%_inventory.txt"
        rename "%userID%_inventory_tmp.txt" "%userID%_inventory.txt"
    )
)
echo 1. Enter !room_types[%room_type%]! through Door %door_number%
echo 2. Search the nearby drawer for keys
echo 3. Approach the closet and listen for any sounds
echo 4. Examine your surroundings and choose a new path

set /p "player_choice=Enter your choice (1/2/3/4): "

REM Process the player's choice
if "!player_choice!"=="1" (
    REM Clear the room type so a new one is selected next time
    set "room_type="
    set /a "door_number+=1"
    goto halls_room_g_000349
) else if "!player_choice!"=="2" (
    set /a "drawer_searches+=1"
    if !drawer_searches! leq 5 (
        goto halls_drawer_g_000349
    ) else (
        echo You search the drawer again, but it appears you've found everything of interest.
    )
    goto game_loop_g_000349
)  else if "!player_choice!"=="3" (
    goto halls_closet_g_000349
) else if "!player_choice!"=="4" (
    goto halls_surroundings_g_000349
) else (
    echo That's not a valid choice. Please choose an option by entering the corresponding number.
    pause
    goto game_loop_g_000349
)

:halls_room_g_000349
REM Room choice events
echo With trepidation, you cross the threshold into the !room_types[%room_type%]! through Door %door_number%. The dimly lit room seems to come alive, its shadows writhing and twisting, the very air tinged with anticipation and dread.

REM Entity encounter logic
set /a "entity_chance=!random! %% 100 + 1"
if !entity_chance! leq !chance_of_entity! (
    set /a "entity_type=!random! %% 5 + 1"
    echo You feel a sudden change in the air, a shiver down your spine. It's !entity_types[%entity_type%]!, and it's watching you.

    if "!entity_type!"=="1" (
        echo A lurking shadow mimics your every step, a twisted mirror of your own movements. Can you escape its grasp?
        set "shadow_distance=3" 
        REM Shadow's distance from the player
        set "escape_sequence=0" 
        REM Counter for escape sequence
        set "hint_available=1"
        REM A hint for the puzzle

        :shadow_puzzleg_000349
        echo The shadow is !shadow_distance! steps behind you.
        echo 1. Turn left
        echo 2. Turn right
        echo 3. Move forward
        echo 4. Listen to the whispers (use a hint, if available^)
        set /p "shadow_choice=What will you do (1/2/3/4)?: "

        REM Use a hint
        if "!shadow_choice!"=="4" (
            if "!hint_available!"=="1" (
                echo The whispers guide you: "Turn left to escape..."
                set "hint_available=0"
                goto shadow_puzzleg_000349
            ) else (
                echo The whispers are silent. You've already used the hint.
                goto shadow_puzzleg_000349
            )
        )

        REM Correct sequence to escape the shadow (Example: Left, Left, Forward)
        if "!shadow_choice!"=="1" (
            set /a "escape_sequence+=1"
            echo You turn left, and the shadow follows, still !shadow_distance! steps behind.
            if "!escape_sequence!"=="3" (
                echo You've outmaneuvered the shadow and escape its grasp!
            ) else (
                goto shadow_puzzleg_000349
            )
        ) else (
            set "escape_sequence=0" 
            REM Reset escape sequence
            if "!shadow_choice!"=="2" (
                echo You turn right, but the shadow gains on you.
                set /a "shadow_distance-=1"
                if "!shadow_distance!"=="0" (
                    echo The shadow catches you, and you lose some progress.
                    set /a "door_number-=3" 
                    REM Code for losing progress
                ) else (
                    goto shadow_puzzleg_000349
                )
            ) else (
                echo You move forward, but the shadow is relentless.
                goto shadow_puzzleg_000349
            )
        )
    ) 
    REM End of shadow encounter

    if "!entity_type!"=="2" (
     REM Nightmarish Figure Encounter
      echo A nightmarish figure emerges from the shadows, its glowing eyes filled with malevolence, teeth sharp as razors. The creature's elongated arms and legs allow it to crawl on all fours with a grace that belies its monstrous form. Its movements are a macabre dance, a fusion of elegance and horror. Your heart pounds as you realize the chase has begun!

     set "chase_attempts=3"
     set "chase_progress=0"
     set "hints_remaining=1"

        :chase_sequenceg_000349
        echo The nightmarish figure is closing in, its crawling form a relentless horror. You must choose quickly!
        echo 1. Dash through the left passage
      echo 2. Jump down a hidden trapdoor
     echo 3. Climb up to a higher platform
     echo 4. Use a hint (if available^)
     set /p "chase_choice=What will you do (1/2/3/4)?: "

        REM Use a hint
        if "!chase_choice!"=="4" (
            if "!hints_remaining!"=="1" (
               echo The shadows guide you: "Climb to escape the creature's reach..."
               set "hints_remaining=0"
              goto chase_sequenceg_000349
          ) else (
              echo The shadows are silent. You've already used the hint.
              goto chase_sequenceg_000349
          )
        )

        REM Correct sequence to escape the creature (Example: Climb, Jump, Dash)
     if "!chase_choice!"=="3" (
          set /a "chase_progress+=1"
          if "!chase_progress!"=="3" (
              echo With a final burst of speed, you outpace the nightmarish figure, its haunting crawl fading into the distance. You've escaped its ghastly embrace!
          ) else (
              echo You scramble up to a higher platform, the creature's glowing eyes watching you with a hunger that chills your soul. The chase continues!
              goto chase_sequenceg_000349
          )
        ) else (
          set /a "chase_attempts-=1"
          if "!chase_attempts!"=="0" (
              echo You hesitated too long, and the creature's twisted form catches you, its elongated limbs reaching out with a sickening grace. You are sent back a few doors.
              set /a "door_number-=3"
              goto game_loop_g_000349
         ) else (
             echo The creature gains on you, its twisted form a relentless terror, its crawl a grotesque ballet of predation. The chase is far from over!
             goto chase_sequenceg_000349
         )
     )
    ) 
    REM End of Nightmarish Figure Encounter


    if "!entity_type!"=="3" (
        REM Strange and Enigmatic Force Encounter (Shadowy Orb)
     echo A shadowy orb materializes in the room, its core pulsing with a strange and enigmatic force. The air grows cold, and whispers of ancient wisdom fill the room. The orb seems to beckon, offering knowledge, power, or perhaps something darker.

     :shadow_orb_g_000349
     echo What will you do with the shadowy orb?
        echo 1. Approach and touch the orb
        echo 2. Speak to the orb and ask for guidance
        echo 3. Attempt to decipher the whispers
        echo 4. Leave the orb alone
        set /p "orb_choice=Choose an option (1/2/3/4)?: "

     if "!orb_choice!"=="1" (
          echo You reach out and touch the orb. A jolt of energy courses through you, and visions of distant lands and forgotten secrets fill your mind.
          REM Code for gaining a special ability or insight
     ) else if "!orb_choice!"=="2" (
          echo You speak to the orb, and it responds with a riddle.
          set "riddle_stage=1"
          goto riddle_sequenceg_000349
        ) else if "!orb_choice!"=="3" (
            echo You listen closely to the whispers, attempting to decipher their meaning.
           REM Code for a mini-game or puzzle related to deciphering whispers
        ) else if "!orb_choice!"=="4" (
         echo You choose to leave the orb alone, respecting its mystery and power.
         REM Code for continuing the game without interacting with the orb
     )

        :riddle_sequenceg_000349
        REM Multiple stages of riddles
        set /a "riddle_number=!random! %% 3 + 1"
        call :riddleg_000349 !riddle_number!
        set /p "riddle_answer=What is your answer?: "
        if "!riddle_answer!"=="!correct_answer!" (
         set /a "riddle_stage+=1"
         if "!riddle_stage!" leq 3 (
             echo You have solved the riddle, but more await your intellect.
             goto riddle_sequenceg_000349
         ) else (
             echo You have unraveled the orb's mysteries, and it grants you a boon.
             REM Code for significant advantages (e.g., powerful item, unlocking a hidden area, etc.)
          )
     ) else (
         echo The orb rebukes your answer, its shadow growing darker. A challenge awaits.
         REM Code for a battle or additional challenge
        )
     goto shadow_orb_g_000349
     REM Goes back
    )
     REM End of Strange and Enigmatic Force Encounter

    if "!entity_type!"=="4" (
     REM Spectral Child Encounter
     echo A spectral child appears, its eyes hollow voids, weeping black tears that vanish before they touch the ground. Its cries resonate with a profound sadness, reaching into your very soul.

     REM Check for flashlight in inventory
     set "has_flashlight=0"
     findstr /c:"flashlight" "%userID%_inventory.txt" >nul && set "has_flashlight=1"

      if "!has_flashlight!"=="1" (
           echo A glimmer of your flashlight catches your eye. Will you use it?
           echo 1. Shine the flashlight, hoping to dispel the apparition
           echo 2. Approach gently, compassion overriding your fear
          set /p "child_choice=What will you do (1/2)?: "

           if "!child_choice!"=="1" (
               echo You shine the flashlight at the child. Its form wavers and then dissolves, a scream of terror echoing in the void it leaves behind.
           ) else (
                goto approach_child_g_000349
            )
     ) else (
            :approach_child_g_000349
            echo You approach the child, its mournful cries pulling at your heartstrings.
            echo 1. Offer a soothing word, reaching out to comfort
            echo 2. Demand to know its purpose, suspicion gnawing at you
           set /p "child_choice=What will you do (1/2)?: "

           if "!child_choice!"=="1" (
               set /a "child_reaction=!random! %% 2"
               if "!child_reaction!"=="0" (
                   echo The child looks up, its tears ceasing. It smiles, hugs you, then fades away, leaving a sense of peace.
               ) else (
                    echo The child's face contorts into a snarl, and it attacks, fury replacing its sorrow.
                   REM Code for challenge or combat
               )
         ) else (
               echo The child's eyes flash with anger and fear.
               set /a "steal_chance=!random! %% 2"
                if "!steal_chance!"=="0" (
                    echo With a shriek, the child snatches your keys and vanishes into the shadows.
                    findstr /v /c:"key" "%userID%_inventory.txt" > "childs_inventory.txt"
                    type "childs_inventory.txt" > "%userID%_inventory.txt"
                   del "childs_inventory.txt"
                   goto retrieve_keys_g_000349
               ) else (
                   echo The child's form collapses, a wail of despair lingering in the air as it disappears.
              )
           )
       )
    ) 
    REM End of Spectral Child Encounter

    if "!entity_type!"=="5" (
     REM Ancient Guardian Encounter
     echo An ancient guardian awakens, its form twisted and bent, eyes glowing with an ageless wisdom and a fierce determination. It is forever bound to protect a hidden secret, and it regards you with a mix of curiosity and defiance.

     REM Offer to take the sword
        echo Nearby, a piece of ancient armor holds a gleaming sword. Will you take it?
        echo 1. Take the sword and face the guardian
        echo 2. Attempt to negotiate with the guardian
        set /p "guardian_choice=What will you do (1/2)?: "

      if "!guardian_choice!"=="1" (
          echo You grasp the sword, feeling its weight and balance. The guardian's gaze narrows, and it prepares to attack.
          set "player_health=100"
          set "guardian_health=100"
        
          :combat_sequenceg_000349
          echo Your health: !player_health! | Guardian's health: !guardian_health!
         echo 1. Swing sword
         echo 2. Parry and riposte
         echo 3. Dodge and counter
         echo 4. Attempt to speak with the guardian
         set /p "combat_choice=What will you do (1/2/3/4)?: "

         REM Randomized guardian attack
            set /a "guardian_attack=!random! %% 3 + 1"

            REM Player's turn
            if "!combat_choice!"=="1" (
                set /a "attack_damage=!random! %% 20 + 10"
                set /a "guardian_health-=attack_damage"
                echo You swing the sword, striking the guardian and dealing !attack_damage! damage.
         ) else if "!combat_choice!"=="2" (
                if "!guardian_attack!"=="1" (
                    set /a "attack_damage=!random! %% 30 + 15"
                    set /a "guardian_health-=attack_damage"
                    echo You parry the guardian's attack and riposte, dealing !attack_damage! damage.
                ) else (
                    echo You attempt to parry, but the guardian does not attack.
                )
            ) else if "!combat_choice!"=="3" (
                echo You dodge and prepare to counter. What will you do next?
                goto combat_sequenceg_000349
                REM space
            ) else if "!combat_choice!"=="4" (
                echo You attempt to speak with the guardian, but it remains focused on the battle.
            )

            REM Guardian's turn
         if "!guardian_attack!"=="1" (
                set /a "guardian_damage=!random! %% 20 + 5"
                set /a "player_health-=guardian_damage"
             echo The guardian attacks with a powerful swipe, dealing !guardian_damage! damage.
            ) else if "!guardian_attack!"=="2" (
                echo The guardian observes you, waiting for your next move.
         ) else if "!guardian_attack!"=="3" (
                echo The guardian speaks: "Why have you come here? What do you seek?"
            )

            REM Check for victory or defeat
            if "!player_health!" LEQ "0" (
                echo The guardian has defeated you, leaving you badly injured. Its twisted form returns to its slumber, the secret remaining safe.
                REM Code for being hurt and consequences
         ) else "!guardian_health!" LEQ "0" (
                echo You have defeated the guardian, its form crumbling to dust. It speaks: "Learn from this place, and take this medicine to aid you."
                echo medicine >> "%userID%_inventory.txt"
               echo 1. Ask for the story of this place
                echo 2. Leave the guardian in peace
                set /p "story_choice=What will you do (1/2)?: "
                if "!story_choice!"=="1" (
                 echo The guardian's voice grows somber as it begins to narrate the tragic tale of this place.
                 echo .
                 echo "Long ago, this building was a sanctuary for the lost and the innocent. A place where children found solace and care. But a darkness fell upon it, a twisted soul who took their lives in a fit of madness."
                 echo .
                 echo "The building itself became possessed, imbued with the terror and agony of the lost souls. The spirits of the children linger, forever trapped, forever mourning. They seek justice, they seek vengeance, and they see in every stranger the face of their murderer."
                  echo .
                 echo "You, too, have been marked by their suspicion. The halls themselves conspire to keep you here, to make you pay for a crime you did not commit. But know this: the true murderer was never found, and the spirits' wrath is misguided."
                 echo .
                 echo "Find the truth, unravel the mystery, and perhaps you can lay the children's souls to rest. Beware, for the building is alive with their pain, and it will stop at nothing to keep its secret."
                 echo .
                 pause 
                    echo The guardian's voice fades, leaving you with a heavy heart and a newfound purpose.
                REM Code for unlocking new areas, clues, or objectives related to the mystery
                )
            ) else (
               goto combat_sequenceg_000349 REM Continue the combat
         )
      ) else if "!guardian_choice!"=="2" (
           echo You approach the guardian, its twisted form a monument to an ancient duty. You sense a wisdom, a consciousness that might be reached.
            echo .
            echo 1. Appeal to its sense of duty and purpose
            echo 2. Offer a token of peace
            echo 3. Share your own story and quest
            echo 4. Challenge its beliefs and demand answers
            set /p "negotiation_choice=How will you negotiate (1/2/3/4)?: "

            if "!negotiation_choice!"=="1" (
                echo You speak to the guardian, acknowledging its eternal vigil and honoring its purpose. The guardian seems to resonate with your words.
             echo The guardian softens and shares a hidden path to the next door.
             goto game_loop_g_000349
             REM Unlocking a new area or reward
             echo secret_path >> "%userID%_inventory.txt"
            ) else if "!negotiation_choice!"=="2" (
              echo You offer a token of peace, extending your hand in a gesture of goodwill. The guardian eyes you warily but accepts the offering.
              echo The guardian bestows a blessing upon you, healing your wounds and energizing your spirit.
             REM Gaining trust and receiving a blessing
             set /a "player_health+=50"
            ) else if "!negotiation_choice!"=="3" (
              echo You share your own story, your quest, and your intentions. The guardian listens, its form quivering with ancient emotion.
              echo The guardian offers guidance, revealing secrets that may aid you in your journey.
             REM Forming a connection and receiving guidance
             echo guardian_guidance >> "%userID%_inventory.txt"
            ) else if "!negotiation_choice!"=="4" (
             echo You challenge the guardian, questioning its beliefs and demanding answers. The guardian reacts with anger but also curiosity.
              echo The guardian engages you in a battle of wits, a debate that leads to mutual understanding and the unlocking of ancient wisdom.
              REM Triggering a debate and gaining information
              echo ancient_wisdom >> "%userID%_inventory.txt"
            )

         )
    )  
    REM End of Ancient Guardian Encounter

) else (
    REM Check for bookshelf spawn
    set /a "bookshelf_chance=!random! %% 100 + 1"
    if !bookshelf_chance! leq 50 (
        echo The room, devoid of threats but pulsing with enigma, beckons you closer. An old bookshelf whispers secrets of the ages, and a mysterious painting holds a riddle, a challenge to your intellect and perception.
        echo 1. Seek wisdom from the bookshelf, drawn to the allure of arcane knowledge
        echo 2. Contemplate the painting, its hidden message a key to unraveling the Halls' mysteries
        set /p "room_choice=What will you do (1/2)?: "
        if "!room_choice!"=="1" (
            echo Among the ancient tomes, a hidden text beckons, its secrets a treasure trove of knowledge and insight, guiding you along a path that feels both fated and perilous.
        ) else (
            echo The painting's haunting beauty hides a truth, a concealed symbol that resonates with the very essence of the Halls, unlocking a passage to secrets untold.
        )
    ) else (
        echo The room, though devoid of immediate threats, still pulses with hidden significance. A mysterious painting seems to conceal a riddle or a path, challenging you to uncover its secrets.
        echo 1. Contemplate the painting, sensing it holds the key to a mystery within the Halls
        set /p "room_choice=What will you do (1)?: "
        echo The painting, both beautiful and unsettling, reveals a concealed symbol that seems to resonate with the Halls itself, unlocking a hidden way.
    )
)

goto game_loop_g_000349


:halls_drawer_g_000349
REM Check if the drawer has already been searched
if defined drawer_searched (
    echo You search the drawer again, but it appears you've found everything of interest.
) else (
    REM Drawer choice events
    echo You decide to search the nearby drawer. As you rummage through, you find a rusty key, a crumpled note with cryptic writing, and a mysterious locket.
    :: Add the key and locket to the user's inventory
    echo key >> "%userID%_inventory.txt"
    echo locket >> "%userID%_inventory.txt"
    echo You have added a key and a mysterious locket to your inventory. The note hints at hidden passages within the Halls.
    set "drawer_searched=true"
)
goto game_loop_g_000349

:halls_closet_g_000349
REM Closet choice events
echo Intrigued by the closet, you cautiously open the door. Inside, you find a small space filled with old coats and forgotten items.
echo 1. Hide in the closet and wait
echo 2. Investigate the items in the closet
echo 3. Leave the closet and continue
set /p "closet_choice=What will you do (1/2/3)?: "
if "!closet_choice!"=="1" (
    echo You decide to hide in the closet, holding your breath.
    set /a "shadow_chance=!random! %% 100 + 1"
    if !shadow_chance! leq 20 (
        echo After a moment, a lurking shadow passes by the closet door, its sinister presence chilling the air. Luckily, it doesn't notice you.
    ) else (
        echo You wait in silence, but nothing seems to approach. The coast is clear.
    )
) else if "!closet_choice!"=="2" (
    echo You find a tattered journal and a faded photograph. They seem to belong to someone who was once trapped in the Halls.
    :: Add the journal and photograph to the user's inventory
    echo journal >> "%userID%_inventory.txt"
    echo photograph >> "%userID%_inventory.txt"
    echo You have added a journal and a photograph to your inventory.
) else (
    echo You leave the closet, feeling a strange sensation that something is watching you.
)
goto game_loop_g_000349

:halls_surroundings_g_000349
REM Surroundings choice events
echo Taking a moment to examine your surroundings, you notice eerie paintings on the walls and flickering candlelight casting unsettling shadows.
echo 1. Investigate the paintings
echo 2. Follow the path illuminated by the candles
set /p "surroundings_choice=What will you do (1/2)?: "
if "!surroundings_choice!"=="1" (
    echo You find hidden symbols in the paintings that seem to tell a story about the haunted history of the Halls.
) else (
    echo Guided by the flickering candlelight, you discover a concealed door leading to a secret chamber.
)
goto game_loop_g_000349

goto game_loop_g_000349

REM (More labels and events can be added here)
REM Check if the player has reached Door 100
if !door_number! leq 100 (
    echo  You're at Door !door_number!. What will you do next?
    goto game_loop_g_000349
) else (
    echo  With bated breath, you reach Door 100, your heart pounding with anticipation. You've braved the terrors of the Halls and emerged victorious.

    echo  Thank you for embarking on this chilling adventure with me. Your courage knows no bounds.
    exit /b 0
)

:trap_door_event_g_000349
echo You find yourself in a dark and mysterious chamber filled with ancient artifacts and cryptic symbols.
echo 1. Investigate the artifacts
echo 2. Try to find a way back to the main path
set /p "trap_door_choice=What will you do (1/2)?: "
if "!trap_door_choice!"=="1" (
    echo You discover a valuable item and return to the main path.
    REM Optionally, add the item to the inventory
    echo valuable_item >> "%userID%_inventory.txt"
) else (
    echo You find a way back to the main path, but the experience leaves you feeling uneasy.
)
goto game_loop_g_000349




REM Functions

REM Riddles function
:riddleg_000349
if "%1"=="1" (
    echo "I can be cracked, made, told, and played. What am I?"
    set "correct_answer=a joke"
) else if "%1"=="2" (
    echo "I have cities but no houses. I have mountains but no trees. I have rivers but no water. What am I?"
    set "correct_answer=a map"
) else if "%1"=="3" (
    echo "What has a heart that doesn’t beat?"
    set "correct_answer=an artichoke"
)
exit /b

:retrieve_keys_g_000349
REM Sequence to retrieve stolen keys
echo The haunting echo of the child's laughter sends a chill down your spine. The keys are gone, and you find yourself ensnared in a new mystery within the labyrinthine halls.

REM Challenges and puzzles to track down the spectral child
echo Through dimly lit corridors and hidden passages, you follow the faint trace of the child's essence. Whispers in the dark guide you, twisted echoes of laughter and sorrow.

echo At last, you come upon a hidden alcove, the spectral child's form flickering like a candle's flame. It clutches your keys with a mischievous grin, a challenge in its hollow eyes.

echo 1. Confront the child with authority, demanding the keys
echo 2. Attempt to trick the child, proposing a game or riddle
echo 3. Try to understand the child's motive, seeking a peaceful resolution
set /p "retrieve_choice=What will you do (1/2/3)?: "

if "!retrieve_choice!"=="1" (
    echo You raise your voice, speaking with command. The child's form wavers, and its eyes widen. It hesitates, then hands over the keys, a silent plea in its gaze.
) else if "!retrieve_choice!"=="2" (
    echo With a sly smile, you propose a game. If the child wins, you'll leave it be; if you win, the keys are returned. You best the child in a game of riddles, and it hands over the keys with a defeated sigh.
) else if "!retrieve_choice!"=="3" (
    echo You approach the child, compassion in your eyes. You ask why it took the keys, and the child reveals a longing for attention, for something to make it feel real. You promise to remember it, and the child returns the keys, a smile of gratitude on its face.
)
REM Add the keys back to the player's inventory
echo key >> "%userID%_inventory.txt"
echo The keys are back in your possession. The weight of the child's existence, a fleeting shadow in a world it no longer belongs to, lingers in your heart as you continue your journey.
exit /b
