*lwin::send, {ctrl down}{alt down}
*lwin up::send, {ctrl up}{alt up}

!^;::
StartProgram("cmd.exe","C:\Windows\System32\cmd.exe",false)
return

!^x::
StartProgram("Explorer.exe","C:\Windows\explorer.exe",false)
return

