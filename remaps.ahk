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
!+j::Send, {"}
!+n::Send, {@}
!+g::Send, {$}
!+r::Send, {/}

!^l::Send, { End }
!^h::Send, { Home }
!^k::Send, { Up }
!^j::Send, { Down }
!^w::Send, { Enter }
!^s::Send, { BackSpace }
!^q::Send, { Esc }