
@echo off
setlocal enabledelayedexpansion

:: Get the current directory and set it as a variable
set "currentDir=%~dp0"

:: Remove the trailing backslash
set "currentDir=!currentDir:~0,-1!"

:: Create a temporary PowerShell script file
echo Add-Type -AssemblyName System.Windows.Forms > temp.ps1
echo Add-Type -AssemblyName System.Drawing >> temp.ps1
echo $asciiArt = Get-Content -Path '%currentDir%\ascii_art.txt' >> temp.ps1
echo $form = New-Object System.Windows.Forms.Form >> temp.ps1
echo $form.Text = 'Warning' >> temp.ps1
echo $form.Width = 700 >> temp.ps1
echo $form.Height = 400 >> temp.ps1
echo $form.BackColor = [System.Drawing.Color]::Red >> temp.ps1
echo $textBox = New-Object System.Windows.Forms.TextBox >> temp.ps1
echo $textBox.Multiline = $true >> temp.ps1
echo $textBox.Width = $form.Width - 40 >> temp.ps1
echo $textBox.Height = $form.Height - 40 >> temp.ps1
echo $textBox.BackColor = [System.Drawing.Color]::Red >> temp.ps1
echo $textBox.ForeColor = [System.Drawing.Color]::White >> temp.ps1
echo $textBox.Text = $asciiArt -join [char]13+[char]10 >> temp.ps1
echo $textBox.ReadOnly = $true >> temp.ps1
echo $form.Controls.Add($textBox) >> temp.ps1
echo $form.ShowDialog() >> temp.ps1

:: Run the PowerShell script
powershell -ExecutionPolicy Bypass -File temp.ps1

:: Delete the temporary PowerShell script
del temp.ps1

:: Back to normal batch processing...
pause
@echo off

:: Create the PowerShell script file
echo Add-Type -AssemblyName System.Windows.Forms > temp.ps1
echo [System.Windows.Forms.MessageBox]::Show('Hello, World!', 'Test') >> temp.ps1

:: Run the PowerShell script
powershell -ExecutionPolicy Bypass -File temp.ps1

:: Delete the temporary script
del temp.ps1



pause
