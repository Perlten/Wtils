#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

CheckForKeyMouse:
    if (GetKeyState("-", "P")) {
        ; Mouse speed
        speed := 25
        if GetKeyState(",", "P"){
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
            is_left_pressed := False
            MouseClick , Left, 0, 0, 1, 0, U, Relative
        }
        if (GetKeyState(".", "P")) {
            MouseClick, Right
            Sleep, 150
        }

    }
return

-::return

- & a::return
- & d::return
- & w::return
- & s::return

- & space::return
- & ,::return
- & .::return