~r::
{
	ic()
	SendInput t
	SendInput {up}
	SendInput {enter}
}
return

~y::
{
	ic()
	if(IsPlayerDriver())
	{
		if(IsVehicleLocked() == 0)
			SendChat("/lock")
		if(IsVehicleEngineEnabled() == 0)
		{
			sleep 500
			SendChat("/engine")
			if((A_Hour >= 20 || A_Hour <= 07) && IsVehicleLightEnabled() == 0)
			{
				sleep 500
				SendChat("/lights")
			}
		}
		if(IsVehicleEngineEnabled() == 1)
		{
			SendChat("/engine")
			if(IsVehicleLightEnabled() == 1)
			{
				sleep 500
				SendChat("/lights")
			}
		}
	}
}
return

~x::
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

~j::
{
	ic()
	if(IsPlayerInInterior() == 0)
		SendChat("/enter")
	else
		SendChat("/exit")
}
return

~n::
	ic()
	SendInput t/notafk{space}
return	

~Numpad1::
	ic()
	SendChat("/drugs buy 60")
return

~Numpad2::
	ic()
	SendChat("/drugprice")
return

~Numpad3::
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

~Numpad4::
{
	ic()
	if(A_Hour >= 10 && A_Hour <20)
		SendChat("Guten Tag, wie kann ich Ihnen helfen?")
	if(A_Hour >= 20)
		SendChat("Guten Abend, wie kann ich Ihnen hefen?")
	if(A_Hour >= 00 && A_Hour <05)
		SendChat("Wie kann ich Ihnen helfen?")
	if(A_Hour >= 05 && A_Hour <10)
		SendChat("Guten Morgen, wie kann ich Ihnen helfen?")
}
return

~^Numpad4::
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

~Numpad5::
	ic()
	SendChat("/fish")
return

~^Numpad5::
	ic()
	SendChat("/fishes")
return

~Numpad6::
	ic()
	SendChat("/throwback")
return

~ß::
	ic()
	SendChat("/members")
return

~^ß::
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

~NumpadMult::
	ic()
	SendChat("/ntogphone")
return

~^NumpadMult::
	ic()
	SendChat("/n Stop!")
return

~NumpadDiv::
	ic()
	SendChat("/showme orange")
return

~^NumpadDiv::
	ic()
	SendChat("/showme unsichtbar")
return