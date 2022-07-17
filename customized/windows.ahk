*lwin::send, {ctrl down}{alt down}
*lwin up::send, {ctrl up}{alt up}

!^;::
StartProgram("cmd.exe","C:\Windows\system32\cmd.exe",false)
return

!^x::
StartProgram("Explorer.EXE","C:\Windows\explorer.exe",false)
return

