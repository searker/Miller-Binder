IniRead, v_lockcheck, settings.ini, autosys, lockcheck, 1

IniRead, v_ov_hp, settings.ini, ov_allgemein, hp, 1
IniRead, v_ov_location, settings.ini, ov_allgemein, location, 1
IniRead, v_ov_fps, settings.ini, ov_allgemein, fps, 1

IniRead, v_ov_dl, settings.ini, ov_fahrzeug, dl, 1
IniRead, v_ov_vehstatus, settings.ini, ov_fahrzeug, vehstatus, 1
IniRead, v_ov_vehmodel, settings.ini, ov_fahrzeug, vehmodel, 1

ov_main := 0
Loop, Read, %A_MyDocuments%\GTA San Andreas User Files\samp\chatlog.txt
{
	chatline := A_Index ; Gets the current amount of lines in the Chatlog.txt
}
chatlog_size := 0 ; For Chatlog-Saving
spamprot := 1 ; For Spamkick-Protection
mechaduty := 0 ; For automatic Mechanic-System