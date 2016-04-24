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