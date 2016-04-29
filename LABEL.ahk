LockCheck:
{
	if(v_lockcheck == 1)
	{
		if(IsPlayerDriver()==1)
			SetTimer, LockCheck, 500
		else
			SetTimer, LockCheck, 1500
		if(GetVehicleLockState()==0 && GetVehicleEngineState()==1 && IsPlayerDriver()==1 && WinActive("GTA:SA:MP"))
			SendChat("/lock")
	}
}
return

dr:
	Reload
return

dq:
	ExitApp
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
	
	TextSetString(ov_hp, GetPlayerHealth())
	TextSetString(ov_fps, GetFrameRate())
	
	If(drugtime != ""){
		TextSetShown(ov_drugtime, 1)
		TextSetString(ov_drugtime, drugtime)
	}
	else
		TextSetShown(ov_drugtime, 0)
	
	If(getPlayerInteriorID() == 0){
		coords := GetCoordinates()
		TextSetShown(ov_location, 1)
		TextSetString(ov_location, CalculateCity(coords[1], coords[2], coords[3]) . " | " . CalculateZone(coords[1], coords[2], coords[3]))
	}
	else
		TextSetShown(ov_location, 0)
	
	If(isPlayerInAnyVehicle() == 1){
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
		If Instr(A_LoopReadLine, "/accept heal")
			SendChat("/accept heal")
		Else If Instr(A_LoopReadLine, "/accept hotdog")
			SendChat("/accept hotdog")
		Else If Instr(A_LoopReadLine, "Samen eingepflanzt")
		{
			drugtime := A_Now
			drugtime += 15, Minutes
			FormatTime, drugtime, %drugtime%, HH:mm:ss
			AddMessageToChatWindow("Erntezeit gesetzt.")
		}
		Else If(spamprot == 1)
		{
			If Instr(A_LoopReadLine, "mindestens 1 Sekunde Abstand")
			{
				AddMessageToChatWindow("Keybinder für 1,5 Sekunden pausiert.")
				Suspend, On
				Sleep 1500
				Suspend, Off
				AddMessageToChatWindow("Keybinder wieder aktiviert.")
			}
			Else If Instr(A_LoopReadLine, "mindestens 5 Sekunden Abstand")
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