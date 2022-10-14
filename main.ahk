#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#Persistent
; ------ Mouse ------
; Vars
is_left_pressed := false
is_mouse_key_pressed := false
mouse_key_pressed_time := ""

; Event loop
SetTimer, CheckForKeyMouse, 7

return

print(string){
    ToolTip `n%string%
}

#Include mouse.ahk
#Include remaps.ahk