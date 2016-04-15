LockCheck:
{
	if(v_lockcheck == 1)
	{
		if(IsPlayerDriver()==1)
			SetTimer, LockCheck, 500
		else
			SetTimer, LockCheck, 1500
		if(GetVehicleLockState()==0 && GetVehicleEngineState()==1 && IsPlayerDriver()==1)
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