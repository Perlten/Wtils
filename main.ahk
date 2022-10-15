#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#Persistent
; ------ Mouse ------
; Vars
is_left_pressed := false

; Event loop
SetTimer, CheckForKeyMouse, 7

return

print(string){
    ToolTip `n%string%
}

#Include mouse.ahk
#Include remaps.ahk