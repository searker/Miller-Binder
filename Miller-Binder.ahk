#IfWinActive, GTA:SA:MP
#SingleInstance, Force
#UseHook, On
#NoEnv

IfNotExist, %A_AppData%\logan_miller\miller-binder\
	FileCreateDir, %A_AppData%\logan_miller\miller-binder ; Creates own Directory for all Keybinder-related-Stuff
SetWorkingDir, %A_AppData%\logan_miller\miller-binder\ ; Switches the working-dir to previously created Dir
FileAppend, , settings.ini ; Inits the main .ini File - Not absolutely necessary

#Include samp.ahk
#Include overlay.ahk
	SetParam("use_window", "1") ; Set parameters for the Overlay-API
	SetParam("window", "GTA:SA:MP") ; Ditto
#Include INI.ahk
#Include TIMER.ahk
#Include FUNKTIONEN.ahk
#Include GUI.ahk
#Include LABEL.ahk
#Include HOTSTRINGS.ahk
#Include HOTKEYS.ahk