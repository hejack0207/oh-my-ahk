*lwin::send, {ctrl down}{alt down}
*lwin up::send, {ctrl up}{alt up}

!^;::
StartProgram("cmd.exe","C:\Windows\system32\cmd.exe", "", false)
return

!^/::
StartProgram("powershell.exe","C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe", "", false)
return

!^x::
StartProgram("Explorer.EXE","C:\Windows\explorer.exe", "", false)
return

#UseHook on
#!h::SendInput #{Left}
#!j::SendInput #{Down}
#!k::SendInput #{Up}
#!l::SendInput #{Right}
#UseHook off
