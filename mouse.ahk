#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

CheckForKeyMouse:
    if (GetKeyState("æ", "P")) {
        ; Mouse speed
        speed := 25
        if GetKeyState("j", "P"){
            speed := 4
        }
        if GetKeyState("shift", "P"){
            speed := 40
        }

        ; Scroll
        if (GetKeyState("alt", "P")) {
            if (GetKeyState("w", "P")) {
                MouseClick, WheelUp
            }

            if (GetKeyState("s", "P")) {
                click WheelDown
            }
            return
        }

        ; Move mouse
        if (GetKeyState("a", "P")) {
            MouseMove, -speed, 0, 0, R
        }
        if (GetKeyState("d", "P")) {
            MouseMove, speed, 0, 0, R
        }
        if (GetKeyState("w", "P")) {
            MouseMove, 0, -speed, 0, R
        }
        if (GetKeyState("s", "P")) {
            MouseMove, 0, speed, 0, R
        }

        ; Mouse click
        if (!is_left_pressed && GetKeyState("space", "P")) {
            MouseClick , Left, 0, 0, 1, 0, D, Relative
            is_left_pressed := true
        }else if(is_left_pressed && !GetKeyState("space", "P")) {
            is_left_pressed := false
            MouseClick , Left, 0, 0, 1, 0, U, Relative
        }

        if (GetKeyState("k", "P")) {
            MouseClick, Right
            Sleep, 150
        }

        if (!is_middle_pressed && GetKeyState("i", "P")) {
            MouseClick , Middle, 0, 0, 1, 0, D, Relative
            is_middle_pressed := true
        }else if(is_middle_pressed && !GetKeyState("i", "P")) {
            is_middle_pressed := false
            MouseClick , Middle, 0, 0, 1, 0, U, Relative
        }

    }
return

æ::return

æ & a::return
æ & d::return
æ & w::return
æ & s::return
æ & i::return

æ & space::return
æ & j::return
æ & k::return