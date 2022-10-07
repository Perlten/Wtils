Gui, +LastFound
hWnd := WinExist()
DllCall( "RegisterShellHookWindow", UInt,Hwnd )
OnMessage(DllCall("RegisterWindowMessage", Str,"SHELLHOOK"), "windowAlteration")

Print(string){
  ToolTip `n%string%
}

centerMouseOnActiveWindow(){
  CoordMode,Mouse,Screen
  WinGetPos, winTopL_x, winTopL_y, width, height, A
  winCenter_x := winTopL_x + width/2
  winCenter_y := winTopL_y + height/2
  DllCall("SetCursorPos", int, winCenter_x, int, winCenter_y)
  return
}

windowAlteration(wParam, lParam){
  WinGetTitle, title, ahk_id %lParam%
  if (title != ""){
    if (wParam == 4 || wParam == 32772) { ; On active window change
      centerMouseOnActiveWindow()
    }
  }
}

#1::
  SendInput, {LWinDown}{1}{LWinUp}
return

!1::
  SendInput, {LWinDown}{2}{LWinUp}
return

#2::
  SendInput, {LWinDown}{3}{LWinUp}
return

!2::
  SendInput, {LWinDown}{4}{LWinUp}
return

#3::
  SendInput, {LWinDown}{5}{LWinUp}
return

!3::
  SendInput, {LWinDown}{6}{LWinUp}
return

#4::
  SendInput, {LWinDown}{7}{LWinUp}
return

!4::
  SendInput, {LWinDown}{8}{LWinUp}
return

#5::
  SendInput, {LWinDown}{9}{LWinUp}
return

#+q::
  SendInput, {AltDown}{F4}{AltUp}
return