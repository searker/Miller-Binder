~r:: ; Sends the last manual Chatline again
{
	ic()
	SendInput t
	SendInput {up}
	SendInput {enter}
}
return

~y:: ; Car-System
{
	ic()
	if(IsPlayerDriver())
	{
		if(GetVehicleLockState() == 0)
			SendChat("/lock")
		if(GetVehicleEngineState() == 0)
		{
			sleep 500
			SendChat("/engine")
			if((A_Hour >= 20 || A_Hour <= 07) && GetVehicleLightState() == 0)
			{
				sleep 500
				SendChat("/lights")
			}
		}
		if(GetVehicleEngineState() == 1)
		{
			SendChat("/engine")
			if(GetVehicleLightState() == 1)
			{
				sleep 500
				SendChat("/lights")
			}
		}
	}
}
return

~x:: ; /(car)lock - System
{
	ic()
	if(IsPlayerInAnyVehicle())
	{
		SendChat("/lock")
		SetTimer, LockCheck, 5000
	}
	else
		SendChat("/carlock")
}
return

~^o::
	ic()
	SendChat("/cargo")
return

~o::
	ic()
	SendChat("/opencargo")
return

~j:: ; Enters or leaves an interior
{
	ic()
	if(GetPlayerInteriorId() == 0)
		SendChat("/enter")
	else
		SendChat("/exit")
}
return

~n::
	ic()
	SendInput t/notafk{space}
return	

~Numpad1:: ; Drug-Dealer-specific
	ic()
	SendChat("/drugs buy 60")
return

~Numpad2:: ; Drug-Dealer-specific
	ic()
	SendChat("/drugprice")
return

~Numpad3:: ; Drug-Dealer-specific
	ic()
	SendChat("/gardenshop")
	Loop, 5
	{
		sleep 250
		SendInput {enter}
	}
	sleep 250
	SendInput {escape}
return

~Numpad4:: ; greets another player based on daytime
{
	ic()
	if(A_Hour >= 10 && A_Hour <20)
		SendChat("Guten Tag, wie kann ich Ihnen helfen?")
	if(A_Hour >= 20)
		SendChat("Guten Abend, wie kann ich Ihnen helfen?")
	if(A_Hour >= 00 && A_Hour <05)
		SendChat("Wie kann ich Ihnen helfen?")
	if(A_Hour >= 05 && A_Hour <10)
		SendChat("Guten Morgen, wie kann ich Ihnen helfen?")
}
return

~^Numpad4:: ; wishes farewell to another player based on daytime
{
	ic()
	if(A_Hour >= 10 && A_Hour <20)
		SendChat("Ich wünsche Ihnen noch einen schönen Tag.")
	if(A_Hour >= 20)
		SendChat("Ich wünsche Ihnen noch einen schönen Abend.")
	if(A_Hour >= 00 && A_Hour <05)
		SendChat("Auf Wiedersehen.")
	if(A_Hour >= 05 && A_Hour <10)
		SendChat("Ich wünsche Ihnen noch einen schönen Morgen.")
}
return

~Numpad5:: ; Fishing-specific
	ic()
	SendChat("/fish")
return

~^Numpad5:: ; Fishing-specific
	ic()
	SendChat("/fishes")
return

~Numpad6:: ; Fishing-specific
	ic()
	SendChat("/throwback")
return

~ß:: ; Faction-specific
	ic()
	SendChat("/members")
return

~^ß:: ; shows online Friends in Chat
	ic()
	SendChat("/friends s")
return

~!ß::
	ic()
	SendChat("/newsreporter")
return

~NumpadAdd::
	ic()
	SendChat("/gate")
return

~NumpadMult:: ; Premium-Specific (or with upgrade)
	ic()
	SendChat("/togphone")
return

~^NumpadMult:: ; News-Specific
	ic()
	SendChat("/n Stop!")
return

~!NumpadMult:: ; News-Specific
	ic()
	SendChat("/ntogphone")
return

~NumpadDiv:: ; News-Specific
	ic()
	SendChat("/showme orange")
return

~^NumpadDiv:: ; clears the current /showme
	ic()
	SendChat("/showme unsichtbar")
return