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
!+a::Send, {`;}

!^c::Send, { End }
!^x::Send, { Home }

!^k::Send, { Up }
!^j::Send, { Down }
!^l::Send, { Right }
!^h::Send, { Left }

!^w::Send, { Enter }
!^s::Send, { BackSpace }
!^q::Send, { Esc }

!^d::Send, {AltDown}{Right}{AltUp}
!^a::Send, {AltDown}{Left}{AltUp}

#+q::SendInput, {AltDown}{F4}{AltUp}