#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

RunWait "C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe"
/in ".\main.ahk"
/out ".\windows-utils.exe"
/base "C:\Program Files\AutoHotkey\Compiler\AutoHotkeySC.bin"
/compress 0

