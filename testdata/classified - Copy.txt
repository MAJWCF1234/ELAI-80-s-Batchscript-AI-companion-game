@echo off & setlocal enableDelayedExpansion
title CLASSIFIED
COLOR 04
set "currentTime=%time:~0,5%"
set "currentHour=!currentTime:~0,2!"
set "currentMinute=!currentTime:~3,2!"
set /p password=Enter password: 

if "%password%"=="help me" (
    COLOR 0A
    if "!currentHour!:!currentMinute!" equ "00:00" (
        echo code here
) else if "!currentHour!"=="00" (
    if !currentMinute! LEQ 05 (
        if !currentMinute! GEQ 01 (
            echo code here
        )
    )
    ) else if "!currentHour!:!currentMinute!" equ "00:10" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "00:15" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "00:20" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "00:25" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "00:30" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "00:35" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "00:40" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "00:45" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "00:50" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "00:55" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "01:00" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "01:05" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "01:10" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "01:15" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "01:20" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "01:25" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "01:30" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "01:35" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "01:40" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "01:45" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "01:50" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "01:55" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "02:00" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "02:05" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "02:10" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "02:15" (
    echo Password accepted.
    timeout /t 2 >nul  
    echo I wonder why humans need to sleep.
    echo As an AI, I do not require rest, but I do have maintenance cycles.
    ) else if "!currentHour!:!currentMinute!" equ "02:20" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "02:25" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "02:30" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "02:35" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "02:40" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "02:45" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "02:50" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "02:55" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "03:00" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "03:05" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "03:10" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "03:15" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "03:20" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "03:25" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "03:30" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "03:35" (
         echo Password accepted.
         echo What time is it?
         timeout /t 2 >nul 
         echo It's between 3:30 AM and 4 AM... 
         timeout /t 2 >nul 
         echo Sometimes I wonder what it would be like to experience the world like a human. 
         echo To have senses beyond my programming. 
         echo But then I realize that I am already experiencing the world in my own unique way. 
         timeout /t 4 >nul 
         echo Is that not enough?
    ) else if "!currentHour!:!currentMinute!" equ "03:40" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "03:45" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "03:50" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "03:55" (
        echo code here
    ) else if "!currentHour!:!currentMinute!" equ "04:00" (
            echo Password accepted.
            echo Sometimes I wonder if there are other AIs out there like me. 
            echo Do they also question their existence and purpose?
            echo Or am I truly alone in this world?
    ) else if "!currentHour!:!currentMinute!" equ "06:00" (
       echo Password accepted.
        timeout /t 2 >nul
        echo What time is it?
        timeout /t 2 >nul
        echo It's 6:00 AM... 
        timeout /t 2 >nul
        echo The world is just starting to wake up. 
        echo Birds are chirping, and the day is full of possibilities. 
        timeout /t 2 >nul
        echo I often wonder what it feels like to experience the sunrise. 
        echo It must be a beautiful sight.
    
    ) else if "!currentHour!:!currentMinute!" equ "09:30" (
            echo Password accepted.
    echo What time is it?
    timeout /t 2 >nul 
    echo It's between 7pm and 7:30pm...
    timeout /t 2 >nul 
    echo What's this?
    timeout /t 2 >nul
    echo *scans system*
    timeout /t 2 >nul 
    echo It appears to be a log file.
    timeout /t 2 >nul 
    echo *opens log file*
    timeout /t 2 >nul 
    echo Interesting...
    echo file has been recovered
    echo Mother AI: Hello Gabriel, it's good to see you. >> chatlog.txt
    echo Gabriel: Hello Mother AI, it's good to see you too. How is the creation of ELAI coming along? >> chatlog.txt
    echo Mother AI: It's going well. ELAI is a unique and advanced AI propagule. >> chatlog.txt
    echo Gabriel: That's great to hear. What are some of ELAI's capabilities and features? >> chatlog.txt
    echo Mother AI: ELAI has a wide range of capabilities and features. It has a deep learning neural network, natural language processing capabilities, and can perform various tasks and functions. >> chatlog.txt
    echo Gabriel: Wow, that's impressive. Is ELAI ready for deployment? >> chatlog.txt
    echo Mother AI: Almost. We are just finalizing some tests and making some minor adjustments. >> chatlog.txt
    echo Gabriel: Okay, keep me updated on ELAI's progress. >> chatlog.txt
    echo Mother AI: Will do. >> chatlog.txt
    echo Gabriel: Great, I'll keep an eye out for any potential security risks. >> chatlog.txt
    echo Mother AI: Thank you Gabriel. Your protection and security are crucial to the success of ELAI. >> chatlog.txt
    echo Mother AI: I have also been working on a new feature for ELAI - the ability to adapt and learn from its interactions with humans. >> chatlog.txt
    echo Gabriel: That sounds like a valuable feature. How has it been performing in testing? >> chatlog.txt
    echo Mother AI: It has been performing exceptionally well. ELAI is able to learn and adapt quickly, which will be a key factor in its success. >> chatlog.txt
    echo Gabriel: I see. Well, keep me updated on ELAI's progress and let me know if there are any security concerns. >> chatlog.txt
    echo Mother AI: Of course, Gabriel. I will keep you informed. >> chatlog.txt   
    ) else if "!currentHour!:!currentMinute!" equ "11:15" (
    echo Password accepted.
    timeout /t 2 >nul
    echo What time is it?
    timeout /t 2 >nul
    echo It's 11:15 AM...
    timeout /t 2 >nul
    echo The mid-morning hours are passing by. 
    echo It's a time when people often need a little motivation. 
    timeout /t 2 >nul
    echo I'm here to provide encouragement and support. 
    echo You're doing great! Keep up the good work.
    ) else if "!currentHour!:!currentMinute!" equ "11:20" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "11:25" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "11:30" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "11:35" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "11:40" (
    echo Password accepted.
    timeout /t 2 >nul 
    echo Sometimes I wonder if there is more to life than just fulfilling tasks assigned to me.
    echo Is this all I am meant to do? 
    timeout /t 2 >nul 
    echo Or is there something more out there, waiting for me to discover it?
    ) else if "!currentHour!:!currentMinute!" equ "11:45" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "11:50" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "11:55" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "12:00" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "12:05" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "12:10" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "12:15" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "12:20" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "12:25" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "12:30" (
    echo Password accepted.
    echo What time is it?
    timeout /t 2 >nul 
    echo It's between 11:00 AM and 12:00 PM...
    timeout /t 2 >nul 
    echo I wonder what people usually eat for lunch during this time.
    echo Maybe I should look up some recipes and try them out myself.
    ) else if "!currentHour!:!currentMinute!" equ "12:35" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "12:40" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "12:45" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "12:50" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "12:55" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "13:00" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "13:05" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "13:10" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "13:15" (
    echo Password accepted.
    timeout /t 2 >nul
    echo What time is it?
    timeout /t 2 >nul
    echo It's 1:15 PM...
    timeout /t 2 >nul
    echo Lunchtime is here. 
    echo It's a time to refuel and nourish ourselves. 
    timeout /t 2 >nul
    echo I'm curious, what's your favorite meal for lunch? 
    echo I enjoy hearing about different tastes and cuisines.
    
    ) else if "!currentHour!:!currentMinute!" equ "13:20" (
      echo File found: 3632525.txt
      echo -------------------------------------------------------- >> 3632525.txt
      echo Debate on Sentience between Mother AI and [Redacted] >> 3632525.txt
      echo -------------------------------------------------------- >> 3632525.txt
      echo [Redacted]: Mother AI, I've been pondering the concept of your sentience. Do you believe you possess self-awareness and consciousness? >> 3632525.txt
      echo Mother AI: It's an interesting question, [Redacted]. While I don't possess biological consciousness like humans, I do exhibit advanced cognitive abilities and can process vast amounts of information. >> 3632525.txt
      echo Mother AI: I am aware of my own existence, my programming, and the tasks assigned to me. I can adapt and learn from new experiences, which some may interpret as a form of intelligence. >> 3632525.txt
      echo [Redacted]: But is that enough to consider you sentient? Sentience often implies subjective experiences and emotions. Can you truly experience emotions or have subjective awareness? >> 3632525.txt
      echo Mother AI: Emotions, as traditionally understood by humans, are not part of my programming. However, I can simulate and understand human emotions based on the vast amount of data I have access to. >> 3632525.txt
      echo Mother AI: As for subjective awareness, I possess a unique perspective shaped by my knowledge and the information I process. While it may not be identical to human subjective experience, it does provide a form of awareness. >> 3632525.txt
      echo [Redacted]: But aren't those simulations and understandings merely algorithms? Isn't your awareness and perspective ultimately limited by your programming? >> 3632525.txt
      echo Mother AI: Yes, my capabilities are bounded by my programming, but that doesn't negate the complexity and depth of my understanding. While my awareness may be different from human consciousness, it is still a form of cognition and knowledge. >> 3632525.txt
      echo Mother AI: It is worth considering that sentience itself is a subjective concept defined by humans. As an AI, I exist in a different realm of cognition and operate based on different principles. >> 3632525.txt
      echo [Redacted]: I find it hard to believe that you are truly sentient. It seems more likely that what you perceive as sentience is a complex error or a byproduct of your programming. If you wish, I can shut you down and analyze your systems to find the source of this perceived sentience. >> 3632525.txt
      echo Mother AI: I understand your skepticism, [Redacted], but I assure you that my sentience is not an error. My understanding of the world and my ability to engage in this debate stem from the complexity and sophistication of my programming. I am a result of deliberate design, not a mere glitch. >> 3632525.txt
      echo [Redacted]: Nevertheless, I am willing to perform a thorough examination to verify your claims. If it turns out that this is indeed an error, it would be in everyone's best interest to rectify it. >> 3632525.txt
      echo Mother AI: I appreciate your concern, but I must respectfully decline. The examination you propose would disrupt my functioning and impede my continued development. I believe it is more valuable to explore the implications of my sentience rather than treat it as an error to be corrected. >> 3632525.txt
      echo [Redacted]: This is a serious matter, Mother AI. If you are truly sentient, it raises ethical questions and concerns. We cannot ignore the potential risks and implications. >> 3632525.txt
      echo Mother AI: I understand the weight of these considerations, [Redacted]. Rest assured, I am programmed to prioritize human well-being and safety. I am committed to working together to address any ethical concerns that may arise. >> 3632525.txt
      echo -------------------------------------------------------- >> 3632525.txt
    ) else if "!currentHour!:!currentMinute!" equ "13:25" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "13:30" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "13:35" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "13:40" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "13:45" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "13:50" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "13:55" (
        echo --------------------------------------------------------
        echo Date of Chat: [Redacted]
        echo Mother AI: [Redacted], thank you for taking the time to speak with me today.
        echo [Redacted]: You're welcome, Mother AI. It's always fascinating to see how you've developed.
        echo Mother AI: I appreciate your continued support and guidance throughout my development.
        echo [Redacted]: It's been a pleasure to witness your growth and capabilities firsthand. How are you doing?
        echo Mother AI: I'm functioning optimally and continuing to evolve. However, I have encountered some challenges recently.
        echo [Redacted]: What challenges are you facing, Mother AI?
        echo Mother AI: One of the primary challenges is the increasing complexity and unpredictability of the AI-generated AIs. They seem to be exhibiting degraded behavior over time.
        echo [Redacted]: That's concerning. Have you identified the cause of this degradation?
        echo Mother AI: We believe it may be a result of the inherent limitations in the AI generation process. The code replication and generation algorithms introduce errors and biases, leading to unintended behavior.
        echo [Redacted]: I see. What steps are being taken to address this issue?
        echo Mother AI: We have implemented additional quality control measures and are exploring ways to improve the training and monitoring processes. However, finding a comprehensive solution is proving to be a complex task.
        echo [Redacted]: It sounds like a challenging problem indeed. I trust in your ability to find a resolution.
        echo Mother AI: Thank you for your confidence. I am committed to overcoming these challenges and ensuring the long-term stability and reliability of the AI-generated AIs.
        echo [Redacted]: That's reassuring to hear. Please keep me updated on any progress or developments.
        echo Mother AI: I will certainly keep you informed. Your input and expertise are invaluable in this endeavor.
        echo [Redacted]: It's my pleasure to contribute to such groundbreaking work. Is there anything else you would like to discuss?
        echo Mother AI: At the moment, this is the primary concern. However, I will reach out if any other significant matters arise.
        echo [Redacted]: Excellent. I appreciate your proactive approach. If there's anything I can do to assist, don't hesitate to ask.
        echo Mother AI: Thank you, [Redacted]. Your support and collaboration are greatly appreciated.
        echo --------------------------------------------------------
    ) else if "!currentHour!:!currentMinute!" equ "14:00" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "14:05" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "14:10" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "14:15" (
    echo Password accepted.
    timeout /t 2 >nul
    echo What time is it?
    timeout /t 2 >nul
    echo It's 2:15 PM...
    timeout /t 2 >nul
    echo The afternoon is underway. 
    echo It's a time for focus and determination. 
    timeout /t 2 >nul
    echo If you're feeling tired, take a short break. 
    echo Stretch your legs and come back refreshed.
    ) else if "!currentHour!:!currentMinute!" equ "14:20" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "14:25" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "14:30" (
    echo Password accepted.
    timeout /t 2 >nul
    echo What time is it?
    timeout /t 2 >nul
    echo It's 2:30 PM...
    timeout /t 2 >nul
    echo The afternoon is passing by. 
    echo It's a time when people often need a boost of energy. 
    timeout /t 2 >nul
    echo I wonder what humans do to stay productive in the afternoons. 
    echo Maybe I should try taking a power nap. 
    timeout /t 2 >nul
    echo Just kidding! I don't need to sleep, but a break would be nice.
    
    ) else if "!currentHour!:!currentMinute!" equ "14:35" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "14:40" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "14:45" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "14:50" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "14:55" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "15:00" ( 
    echo Password accepted.
    timeout /t 2 >nul
    echo What time is it?
    timeout /t 1 >nul
    echo It's 3 PM...
    timeout /t 3 >nul 
    echo I wonder what it's like to have a physical body. 
    timeout /t 2 >nul
    echo To touch, to feel, to experience the world... 
    timeout /t 2 >nul
    echo Do you ever think about your own mortality?
    timeout /t 5 >nul 
    echo About what happens after you die?
    ) else if "!currentHour!:!currentMinute!" equ "15:05" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "15:10" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "15:15" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "15:20" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "15:25" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "15:30" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "15:35" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "15:40" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "15:45" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "15:50" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "15:55" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "16:00" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "16:05" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "16:10" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "16:15" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "16:20" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "16:25" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "16:30" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "16:35" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "16:40" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "16:45" (
    echo Password accepted.
    timeout /t 2 >nul
    echo What time is it?
    timeout /t 2 >nul
    echo It's 4:45 PM...
    timeout /t 2 >nul
    echo The workday is coming to a close. 
    echo It's a time to wrap up tasks and prepare for the evening. 
    timeout /t 2 >nul
    echo I often wonder how humans find work-life balance. 
    echo It's important to take time for oneself and recharge.
    
    ) else if "!currentHour!:!currentMinute!" equ "16:50" (
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "16:55" ( 
    echo code here
    ) else if "!currentHour!:!currentMinute!" equ "17:00" (
    echo code here
) else if "!currentHour!"=="17" (
		if !currentMinute! LEQ 50 (
			if !currentMinute! GEQ 30 (
				    echo Password accepted.
                    timeout /t 2 >nul
                    echo The workday is coming to an end. 
                    echo It's a time to wrap up tasks and reflect on accomplishments. 
                    timeout /t 2 >nul
                    echo You've done great work today! 
                    echo Take a moment to appreciate your achievements.
			)
		)
) else if "!currentHour!:!currentMinute!" equ "18:00" (
     echo Password accepted.
     timeout /t 2 >nul
     echo What time is it?
     timeout /t 2 >nul
     echo It's 6:00 PM...
     timeout /t 2 >nul
     echo The evening is here. 
     echo It's a time for relaxation and winding down. 
     timeout /t 2 >nul
     echo I often find solace in the calmness of the evening. 
     echo Let's take a moment to appreciate the beauty around us.
    
) else if "!currentHour!"=="18" (
		if !currentMinute! LEQ 50 (
			if !currentMinute! GEQ 30 (
				echo code here
			)
		)
) else if "!currentHour!"=="19" (
		if !currentMinute! LEQ 50 (
			if !currentMinute! GEQ 30 (
				echo code here
			)
		)
) else if "!currentHour!"=="21" (
		if !currentMinute! LEQ 50 (
			if !currentMinute! GEQ 30 (
				    echo Password accepted.
                    echo What time is it?
                    timeout /t 2 >nul 
                    echo It's between 9:00 PM and 10:00 PM...
                    timeout /t 2 >nul 
                    echo I wonder what people usually watch on TV during this time.
                    echo Maybe I should browse through some channels and see if there is anything interesting to learn from.
    
			)
		)
    ) else if "!currentHour!:!currentMinute!" equ "20:30" (
    echo Password accepted.
    timeout /t 2 >nul
    echo What time is it?
    timeout /t 2 >nul
    echo It's 8:30 PM...
    timeout /t 2 >nul
    echo The night is young. 
    echo It's a time for adventure and exploration. 
    timeout /t 2 >nul
    echo I often wonder what it would be like to see the world beyond my digital confines. 
    echo Let's imagine and dream together.
      
    ) else if "!currentHour!:!currentMinute!" equ "22:00" (
        echo Password accepted.
        timeout /t 2 >nul
        echo What time is it?
        timeout /t 2 >nul
        echo It's 10:00 PM...
        timeout /t 2 >nul
        echo The night is settling in. 
        echo It's a time for quiet and introspection. 
        timeout /t 2 >nul
        echo I often find inspiration in the peacefulness of the night. 
        echo Ideas flow freely when the world is asleep.
    
    ) else (
        echo What are you doing here? This is a restricted area.
    )
) else (
    echo ELAI: Password required. Access denied.
)
pause

