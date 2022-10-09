#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

CheckForKeyMouse:
    if (is_mouse_key_pressed && !GetKeyState("n", "P")) {
        current_time := A_TickCount
        if ((current_time - mouse_key_pressed_time) < 200 ) {
            if (GetKeyState("shift", "P")){
                Send N
            }else {
                Send n
            }
        }
        mouse_key_pressed_time := ""
        is_mouse_key_pressed := false
    }

    if (GetKeyState("n", "P")) {
        if (!mouse_key_pressed_time) {
            is_mouse_key_pressed := true
            mouse_key_pressed_time := A_TickCount
        }

        ; Mouse speed
        speed := 25
        if GetKeyState("k", "P"){
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
        if (GetKeyState("l", "P")) {
            MouseClick, Right
            Sleep, 150
        }

    }
return

n::return

n & a::return
n & d::return
n & w::return
n & s::return

n & space::return
n & k::return