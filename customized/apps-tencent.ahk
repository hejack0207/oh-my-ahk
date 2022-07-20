; Dir_Program_Files := "C:\Program Files"
; Dir_Program32_Files := "C:\Program Files (x86)"

; communication
!^w::
EnvGet PF, ProgramFiles(x86)
StartProgram("WXWork.exe", PF . "\WXWork\WXWork.exe", "", false)
return

!^v::
EnvGet PF, ProgramFiles(x86)
StartProgram("WeChat.exe", PF . "\Tencent\WeChat\WeChat.exe", "", false)
return

; vpn
!^q::
StartProgram("iOA.exe", A_ProgramFiles . "\iOA\iOA.exe", "-userstart", false)
return

!^t::
StartProgram("weterm.exe", A_ProgramFiles . "\Tencent\WeTERM.exe", "", false)
return

!^m::
StartProgram("wemeetapp.exe", A_ProgramFiles . "\Tencent\WeMeet\wemeetapp.exe", "", false)
return

!^s::
StartProgram("WXDrive.exe", A_ProgramFiles . "\WXDrive\WXDrive.exe", "", false)
return
