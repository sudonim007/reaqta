echo off
REM VJ & AH 
REM 2/2/22
REM Iniitiliaze var
set subkey=""
set keyvalue=""
set regkey=HKLM\SOFTWARE\Microsoft\Cryptography

REM Create random string of 5 char

set /a subkey=%random%+10000

echo "Random key is: " %subkey%

REM query reg key
FOR /F "tokens=3" %%A in ('reg query %regkey% /v MachineGuid') DO (SET keyvalue=%%A)

echo "The old key is: " %keyvalue%
REM cut last 5 chars
set keyvalue=%keyvalue:~0,-5%

REM create new keyvalue
set keyvalue=%keyvalue%%subkey%

echo "The new key is: " %keyvalue%
REM write the new key value back to reg

REG ADD %regkey% /v MachineGuid /t REG_SZ /d %keyvalue% /f
echo %keyvalue% " is written to " %regkey%
echo "Please reboot the machine" 
SET /P var=

