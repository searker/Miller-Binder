IniRead, v_lockcheck, settings.ini, autosys, lockcheck, 1

ov_main := 0
Loop, Read, %A_MyDocuments%\GTA San Andreas User Files\samp\chatlog.txt
{
	chatline := A_Index
}
chatlog_size := 0
spamprot := 1