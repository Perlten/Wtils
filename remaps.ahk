#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

!+k:: Send, {{} return
!+l:: Send, {}} return
!+d:: Send, {(} return
!+f:: Send, {)} return
!+e:: Send, {=} return
!+q:: Send, {!} return
!+c:: Send, {[} return
!+v:: Send, {]} return
!+x:: Send, {_} return
!+s:: Send, {:} return

!^l:: Send, { End } return
!^h:: Send, { Home } return