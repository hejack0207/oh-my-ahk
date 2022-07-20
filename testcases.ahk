#include c:\oh-my-ahk\testcases\include.ahk
#include c:\oh-my-ahk\testcases\i.ahk

; MsgBox, %Dir_Program32_Files%\WXWork

X(Name, Path){
	T := StrSplit(Path, " ")[1]
	MsgBox, %T%
}
; X("name", """" . Dir_Program32_Files . """\WXWork")
; MsgBox, % A_ProgramFiles
EnvGet, Pf, ProgramFiles(x86)
MsgBox, % Pf
EnvGet, Pf, ProgramW6432
MsgBox, % Pf
; ListVars
; Pause
; OutputDebug ABC

X := [1,2,3]
Y := X[1]
Z := X[0]
p := "a b c"
Z := StrSplit(p, " ")[3]
; MsgBox, %Z% %Y%
