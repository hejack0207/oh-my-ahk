#SingleInstance force

RunAsAdmin(Fullpath){
    ;~ RunAs, Administrator, 123qwe!@#
    ;~ Run, %Fullpath%
    ;~ RunAs  ; Reset to normal behavior.
    Run,*RunAs %Fullpath%
}

StartProgram(ProgramName,ProgramFullPath, AsAdmin){
    if WinExist("ahk_exe " . ProgramName){
        WinActivate, ahk_exe %ProgramName%
    }else{
        if (AsAdmin) {
            RunAsAdmin(ProgramFullPath)
        } else {
            Run, %ProgramFullPath%
        }
    }
    return
}

StartWindow(WinClass, ProgramFullPath, AsAdmin){
    if WinExist("ahk_class " . WinClass){
        WinActivate, ahk_class %WinClass%
    }else{
        if (AsAdmin) {
            RunAsAdmin(ProgramFullPath)
        } else {
            Run, %ProgramFullPath%
        }
    }
    return
}

; autohotkey
!^r::Reload ; Assign Ctrl-Alt-R as a hotkey to restart the script.

Dir_Program_Files := "C:\Program Files"

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