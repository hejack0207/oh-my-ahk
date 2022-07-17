; vim: sts=-1 sw=4 fdm=marker

#SingleInstance force

RunAsAdmin(FullPath, AsAdmin){
    ExePath := StrSplit(FullPath," ")[1]
    if FileExist(ExePath) {
	if (AsAdmin) {
		Run,*RunAs %FullPath%
	} else {
		Run, %FullPath%
	}
    }else{
	MsgBox, "Not exists file:" %ExePath%
    }
}


StartProgram(ProgramName,ProgramFullPath, AsAdmin){
    if WinExist("ahk_exe " . ProgramName){
	    WinActivate, ahk_exe %ProgramName%
    }else{
	    RunAsAdmin(ProgramFullPath, AsAdmin)
    }
    return
}

StartWindow(WinClass, ProgramFullPath, AsAdmin){
    if WinExist("ahk_class " . WinClass){
	    WinActivate, ahk_class %WinClass%
    }else{
	    RunAsAdmin(ProgramFullPath, AsAdmin)
    }
    return
}

; autohotkey
!^r::Reload ; Assign Ctrl-Alt-R as a hotkey to restart the script.

Dir_Program_Files := "C:\Program Files"
Dir_Program32_Files := "C:\Program Files (x86)"

!^h::
StartProgram("hh.exe", Dir_Program_Files . "\AutoHotkey\AutoHotkey.exe",false)
return

; browsers
!^f::
StartProgram("firefox.exe", Dir_Program_Files . "\Mozilla Firefox\firefox.exe",false)
return

!^c::
StartProgram("chrome.exe", Dir_Program_Files . "\Google\Chrome\Application\chrome.exe",false)
return

#UseHook on
#!h::SendInput #{Left}
#!j::SendInput #{Down}
#!k::SendInput #{Up}
#!l::SendInput #{Right}
#UseHook off
