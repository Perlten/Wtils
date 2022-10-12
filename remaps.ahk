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
!+m::Send, {@}
!+g::Send, {$}
!+r::Send, {/}
!+w::Send, {-}

!^l::Send, { End }
!^h::Send, { Home }
!^k::Send, { Up }
!^j::Send, { Down }
!^w::Send, { Enter }
!^s::Send, { BackSpace }
!^q::Send, { Esc }

!^d::Send, {AltDown}{Right}{AltUp}
!^a::Send, {AltDown}{Left}{AltUp}

#+q::SendInput, {AltDown}{F4}{AltUp}