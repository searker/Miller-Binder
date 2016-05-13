LockCheck:
{
	if(v_lockcheck == 1)
	{
		if(IsPlayerDriver()==1)
			SetTimer, LockCheck, 500
		else
			SetTimer, LockCheck, 1500
		if(getVehicleModelId() == 509 || getVehicleModelId() == 481 || getVehicleModelId() == 510)
			return
		if(GetVehicleLockState()==0 && GetVehicleEngineState()==1 && IsPlayerDriver()==1 && WinActive("GTA:SA:MP"))
			SendChat("/lock")
	}
}
return

Overlay:
	IfWinNotActive, GTA:SA:MP
		return
	IfWinNotExist, GTA:SA:MP
	{
		SetTimer, Overlay, Off
		DestroyAllVisual()
		return
	}
	
	if(v_ov_hp == 1)
	{
		TextSetShown(ov_hp, 1)
		TextSetString(ov_hp, GetPlayerHealth())
	}
	else
		TextSetShown(ov_hp, 0)
	
	if(v_ov_fps == 1)
	{
		TextSetShown(ov_fps, 1)
		TextSetString(ov_fps, GetFrameRate())
	}
	else
		TextSetShown(ov_fps, 0)
	
	if(drugtime != "")
	{
		TextSetShown(ov_drugtime, 1)
		TextSetString(ov_drugtime, drugtime)
	}
	else
		TextSetShown(ov_drugtime, 0)
	
	if(getPlayerInteriorID() == 0 && v_ov_location == 1)
	{
		coords := GetCoordinates()
		TextSetShown(ov_location, 1)
		TextSetString(ov_location, CalculateCity(coords[1], coords[2], coords[3]) . " | " . CalculateZone(coords[1], coords[2], coords[3]))
	}
	else
		TextSetShown(ov_location, 0)
	
	if(isPlayerInAnyVehicle() == 1)
	{
		TextSetShown(ov_dl, 1)
		TextSetString(ov_dl, "DL: " . GetVehicleHealth())
	}
	else
		TextSetShown(ov_dl, 0)
return

Chatlog:
	FileGetSize, chatlog_size_now, %A_MyDocuments%\GTA San Andreas User Files\samp\chatlog.txt
	if(chatlog_size_now < chatlog_size)
	{
		Loop, Read, %A_MyDocuments%\GTA San Andreas User Files\samp\chatlog.txt
		{
			chatline := A_Index
		}
	}
	chatlog_size := chatlog_size_now
	
	Loop, Read, %A_MyDocuments%\GTA San Andreas User Files\samp\chatlog.txt
	{
		if(chatline >= A_Index)
			continue
		
		chatline := A_Index
		if Instr(A_LoopReadLine, "/accept heal")
			SendChat("/accept heal")
		else if Instr(A_LoopReadLine, "/accept hotdog")
			SendChat("/accept hotdog")
		else if Instr(A_LoopReadLine, "Samen eingepflanzt")
		{
			drugtime := A_Now
			drugtime += 15, Minutes
			FormatTime, drugtime, %drugtime%, HH:mm:ss
			AddMessageToChatWindow("Erntezeit gesetzt.")
		}
		else if Instr(A_LoopReadLine, "bietet dir eine Reparatur deines Wagens")
		{
			RegExMatch(A_LoopReadLine, "AU).*\$(.*)\s.*", var)
			var1 := RegExReplace(var1, "\.", "")
			if(var1 <= 2000)
				SendChat("/accept repair")
		}
		else if Instr(A_LoopReadLine, "bietet dir die Betankung deines Autos")
		{
			RegExMatch(A_LoopReadLine, "AU).*\$(.*)\s.*", var)
			var1 := RegExReplace(var1, "\.", "")
			if(var1 <= 10000)
				SendChat("/accept refill")
		}
		
		else if(spamprot == 1)
		{
			if Instr(A_LoopReadLine, "mindestens 1 Sekunde Abstand")
			{
				AddMessageToChatWindow("Keybinder für 1,5 Sekunden pausiert.")
				Suspend, On
				Sleep 1500
				Suspend, Off
				AddMessageToChatWindow("Keybinder wieder aktiviert.")
			}
			else if Instr(A_LoopReadLine, "mindestens 5 Sekunden Abstand")
			{
				AddMessageToChatWindow("Keybinder für 5,5 Sekunden pausiert.")
				Suspend, On
				Sleep 5500
				Suspend, Off	
				AddMessageToChatWindow("Keybinder wieder aktiviert.")
			}
		}
	}
return

ChatlogCheck:
	FileGetSize, chatlog_size_now, %A_MyDocuments%\GTA San Andreas User Files\samp\chatlog.txt
	if(chatlog_size_now < chatlog_size)
	{
		Loop, Read, %A_MyDocuments%\GTA San Andreas User Files\samp\chatlog.txt
			chatline := A_Index
	}
	chatlog_size := chatlog_size_now		
return

Save_Chatlog:
	if(WinExist("GTA:SA:MP"))
		gta_running := 1
	else if(!WinExist("GTA:SA:MP") && gta_running == 1)
	{
		gta_running := 0
		IfNotExist, %A_MyDocuments%\GTA San Andreas User Files\samp\chatlogs\
			FileCreateDir, %A_MyDocuments%\GTA San Andreas User Files\samp\chatlogs
		FileCopy, %A_MyDocuments%\GTA San Andreas User Files\samp\chatlog.txt, %A_MyDocuments%\GTA San Andreas User Files\samp\chatlogs\%A_DD%.%A_MM%.%A_YYYY%_%A_Hour%.%A_Min%_Chatlog.txt
		MsgBox, Chatlog gespeichert!
	}
return