#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

!+k::Send, {{}
!+l::Send, {}}
!+d::Send, {(}
!+f::Send, {)}
!+e::Send, {=}
!+q::Send, {!}
!+c::Send, {[}
!+v::Send, {]}
!+x::Send, {_}
!+s::Send, {:}

!^l::Send, { End }
!^h::Send, { Home }

