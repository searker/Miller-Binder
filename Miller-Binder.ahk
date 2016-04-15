#IfWinActive, GTA:SA:MP
#SingleInstance, Force
#UseHook, On
#NoEnv

IfNotExist, %A_AppData%\logan_miller\multi-keybinder\
	FileCreateDir, %A_AppData%\logan_miller\multi-keybinder
SetWorkingDir, %A_AppData%\logan_miller\multi-keybinder\
FileAppend, , settings.ini

#Include samp.ahk
;~ #Include overlay.ahk
#Include INI.ahk
#Include TIMER.ahk
#Include FUNKTIONEN.ahk
#Include GUI.ahk
#Include LABEL.ahk
#Include HOTSTRINGS.ahk
#Include HOTKEYS.ahk