@echo off
setlocal enabledelayedexpansion

:begin
cls
echo Welcome to the module tester!
echo ------------------------------
echo Hello, I'm ELAI, your AI companion. What's your name?
set /p "name="

:testmodule
echo Testing Module...
echo ------------------------------
call :modulecode
echo ------------------------------
echo Module testing complete.
echo ------------------------------
echo Debug Options:
echo 1. Test another module
echo 2. Modify the current module
echo 3. View module code
echo 4. Clear module code
echo 5. Exit

set /p "choice="
goto processchoice

:processchoice
if "%choice%"=="1" (
    goto testmodule
) else if "%choice%"=="2" (
    goto modifymodule
) else if "%choice%"=="3" (
    goto viewcode
) else if "%choice%"=="4" (
    goto clearcode
) else if "%choice%"=="5" (
    goto end
) else (
    echo Invalid choice. Please select a valid option.
    pause
    goto testmodule
)

:modulecode
echo ------------------------------
echo Current module code:
echo ------------------------------
set "file=module.txt"
if not exist "%file%" (
    echo Module code not found. Creating module.txt...
    echo.> "%file%"
)
if exist "%file%" (
    for /F "usebackq delims=" %%F in ("%file%") do (
        if %%~zF equ 0 (
            echo Module code is empty.
        ) else (
            type "%file%"
        )
    )
) else (
    echo Module code not found.
)
echo.
echo To modify the module code, choose option 2.
echo To test another module, choose option 1.
echo To view the current module code, choose option 3.
echo To clear the module code, choose option 4.
echo To exit the testing session, choose option 5.
echo.
pause
goto :eof

:modifymodule
echo ------------------------------
echo Modifying current module...
echo ------------------------------
echo Enter the additional text to be added to the module code:
set /p "additional_text="
if "%additional_text%"=="" (
    echo No additional text provided. Module code not modified.
) else (
    echo %additional_text% >> "%file%"
    echo Module modified successfully.
)
echo.
pause
goto testmodule

:viewcode
echo ------------------------------
echo Current module code:
echo ------------------------------
if not exist "%file%" (
    echo Module code not found.
) else (
    for /F "usebackq delims=" %%F in ("%file%") do (
        if %%~zF equ 0 (
            echo Module code is empty.
        ) else (
            type "%file%"
        )
    )
)
echo.
echo To modify the module code, choose option 2.
echo To test another module, choose option 1.
echo To view the current module code, choose option 3.
echo To clear the module code, choose option 4.
echo To exit the testing session, choose option 5.
echo.
pause
goto testmodule

:clearcode
echo ------------------------------
echo Clearing module code...
echo ------------------------------
if exist "%file%" (
    del "%file%" > nul
    echo Module code cleared successfully.
) else (
    echo Module code not found.
)
echo.
echo To modify the module code, choose option 2.
echo To test another module, choose option 1.
echo To view the current module code, chooseoption 3.
echo To clear the module code, choose option 4.
echo To exit the testing session, choose option 5.
echo.
pause
goto testmodule

:end
echo Testing session ended. Goodbye, %name%!
echo.
pause
exit /B 0
