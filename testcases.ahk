#include c:\oh-my-ahk\testcases\include.ahk
#include c:\oh-my-ahk\testcases\i.ahk

; MsgBox, %Dir_Program32_Files%\WXWork

X(Name, Path){
	T := StrSplit(Path, " ")[1]
	MsgBox, %T%
}
X("name", Dir_Program32_Files . "\WXWork")

X := [1,2,3]
Y := X[1]
Z := X[0]
p := "a b c"
Z := StrSplit(p, " ")[3]
MsgBox, %Z% %Y%
