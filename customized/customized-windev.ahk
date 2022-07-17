; Dir_Program_Files := "C:\Program Files"

; shell
!^,::
EnvSet, MSYSTEM, MSYS2
StartWindow("msys2","C:\msys64\usr\bin\mintty.exe --class msys2 -i ""C:\msys64\msys2.exe"" -o AppLaunchCmd=""C:\msys64\msys2.exe"" -o AppID=MSYS2.Shell.MSYS.9 -o AppName=""MSYS2 MSYS Shell"" -T MSYS2 --store-taskbar-properties -- /usr/bin/zsh -l", false)
return

!^.::
EnvSet, MSYSTEM, MINGW64
StartWindow("mingw64","C:\msys64\usr\bin\mintty.exe --class mingw64 --tabbar -i ""C:\msys64\mingw64.exe"" -o AppLaunchCmd=""C:\msys64\mingw64.exe"" -o AppID=MSYS2.Shell.MINGW64.9 -o AppName=""MSYS2 MINGW64 Shell"" -T MINGW64 --store-taskbar-properties -- /usr/bin/zsh -l",false)
return

; editor
!^g::
StartProgram("gvim.exe", Dir_Program_Files . "\Vim\vim82\gvim.exe" ,false)
return

; explorer
!^e::
StartProgram("Everything.exe","C:\Program Files\Everything\Everything.exe",false)
return

!^p::
StartProgram("eCloud.exe", Dir_Program_Files . "\ecloud\eCloud.exe",false)
return

; documents
!^d::
StartProgram("PDFXCview.exe","C:\Program Files\Tracker Software\PDF Viewer\PDFXCview.exe",false)
return

!^n::
StartProgram("VNote.exe","C:\Program Files\VNote_win_X64_portable_2.7.2\VNote\VNote.exe",false)
return
