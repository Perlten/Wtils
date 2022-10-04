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

#9::
  print("test2c")
return
