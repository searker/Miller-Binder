#IfWinActive, GTA:SA:MP
#SingleInstance, Force
#UseHook, On
#NoEnv

IfNotExist, %A_AppData%\logan_miller\miller-binder\
	FileCreateDir, %A_AppData%\logan_miller\miller-binder
SetWorkingDir, %A_AppData%\logan_miller\miller-binder\
FileAppend, , settings.ini

#Include SAMP_API.ahk
#Include INI.ahk
#Include TIMER.ahk
#Include FUNKTIONEN.ahk
#Include GUI.ahk
#Include LABEL.ahk
#Include HOTSTRINGS.ahk
#Include HOTKEYS.ahk