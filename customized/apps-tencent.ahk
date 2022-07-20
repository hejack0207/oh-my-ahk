; Dir_Program_Files := "C:\Program Files"

; communication
!^w::
StartProgram("WXWork.exe", Dir_Program32_Files . "\WXWork\WXWork.exe", "", false)
return

!^v::
StartProgram("WeChat.exe", Dir_Program32_Files . "\Tencent\WeChat\WeChat.exe", "", false)
return

; vpn
!^q::
StartProgram("iOA.exe", Dir_Program_Files . "\iOA\iOA.exe", "-userstart", false)
return

!^t::
StartProgram("weterm.exe", Dir_Program_Files . "\Tencent\WeTERM.exe", "", false)
return

!^m::
StartProgram("wemeetapp.exe", Dir_Program_Files . "\Tencent\WeMeet\wemeetapp.exe", "", false)
return

!^s::
StartProgram("WXDrive.exe", Dir_Program_Files . "\WXDrive\WXDrive.exe", "", false)
return
