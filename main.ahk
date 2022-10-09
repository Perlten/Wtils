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

; ------ windowSwitch ------
Gui, +LastFound
hWnd := WinExist()
DllCall( "RegisterShellHookWindow", UInt,Hwnd )
OnMessage(DllCall("RegisterWindowMessage", Str,"SHELLHOOK"), "windowAlteration")

return

#Include mouse.ahk
#Include windowSwitch.ahk
#Include remaps.ahk