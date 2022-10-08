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

; ------ windowSwitch ------
Gui, +LastFound
hWnd := WinExist()
DllCall( "RegisterShellHookWindow", UInt,Hwnd )
OnMessage(DllCall("RegisterWindowMessage", Str,"SHELLHOOK"), "windowAlteration")

return

#Include mouse.ahk
#Include windowSwitch.ahk