; vim: sts=-1 sw=4 fdm=marker

#SingleInstance force

RunAsAdmin(FullPath, Params, AsAdmin){
    if ( StrLen(Params) > 0 ) {
	Cmd := FullPath . " " . Params
    }else{
	Cmd := FullPath
    }
    ; ListVars
    ; Pause

    if FileExist(FullPath) {
	if (AsAdmin) {
		Run,*RunAs %Cmd%
	} else {
		Run, %Cmd%
	}
    }else{
	MsgBox, "Not exists file:" %FullPath%
    }
}


StartProgram(ProgramName,ProgramFullPath, Params, AsAdmin){
    if WinExist("ahk_exe " . ProgramName){
	    WinActivate, ahk_exe %ProgramName%
    }else{
	    RunAsAdmin(ProgramFullPath, Params, AsAdmin)
    }
    return
}

StartWindow(WinClass, ProgramFullPath, Params, AsAdmin){
    if WinExist("ahk_class " . WinClass){
	    WinActivate, ahk_class %WinClass%
    }else{
	    RunAsAdmin(ProgramFullPath, Params, AsAdmin)
    }
    return
}

; autohotkey
!^r::Reload ; Assign Ctrl-Alt-R as a hotkey to restart the script.

!^h::
global Dir_Program_Files
StartProgram("hh.exe", Dir_Program_Files . "\AutoHotkey\AutoHotkey.exe", "", false)
return
