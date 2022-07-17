*lwin::send, {ctrl down}{alt down}
*lwin up::send, {ctrl up}{alt up}

!^;::
StartProgram("cmd.exe","C:\Windows\System32\cmd.exe",false)
return

!^x::
StartProgram("Explorer.exe","C:\Windows\explorer.exe",false)
return

#UseHook on
#!h::SendInput #{Left}
#!j::SendInput #{Down}
#!k::SendInput #{Up}
#!l::SendInput #{Right}
#UseHook off
