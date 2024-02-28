@echo off

:audio_menu
echo Available audio files:
echo 1. audiofile1.wav
echo 2. audiofile2.wav
echo 3. audiofile3.wav
echo 4. audiofile4.wav
echo 5. audiofile5.wav
echo.
set /p selection=Enter a selection [1-5]: 

if "%selection%"=="1" (
    call :playaudio "audiofile1.wav"
) else if "%selection%"=="2" (
    call :playaudio "audiofile2.wav"
) else if "%selection%"=="3" (
    call :playaudio "audiofile3.wav"
) else if "%selection%"=="4" (
    call :playaudio "audiofile4.wav"
) else if "%selection%"=="5" (
    call :playaudio "audiofile5.wav"
) else (
    echo Invalid selection. Please try again.
    goto audio_menu
)

pause
exit /b 0

:playaudio
if exist "%~dp0\%1" (
    echo Playing audio file "%1"...
    start /min /B "" "%~dp0\%1"
) else (
    echo Audio file "%1" not found.
)
exit /b 0
