:?:/op::
	co()
	SendChat("/oparking")
return

:?:/pd::
	SendInput /put drugs{space}
return

:?:/pda::
	co()
	SendChat("/put drugs all")
return

:?:/td::
	SendInput /gtake drugs{space}
return

:?:/ud::
	co()
	SendChat("/usedrugs 2")
return

:?:/sd::
	SendInput /selldrugs{space}{space}2 4000{left 7}
return

:?:/sdb::
	SendInput /selldrugs{space}{space}2 4000 bar{left 11}
return

:?:/ed::
	co()
	SendChat("/eatdonut")
return

:?:/bd::
	co()
	SendChat("/buydonut")
	sleep 750
	SendInput {enter}
	sleep 250
	SendInput 10{enter}
return

:?:/dp::
	co()
	SendChat("/drugs plant")
return

:?:/dh::
	co()
	SendChat("/drugs harvest")
return

:?:/li::
	co()
	SendChat("/loadimport 1000")
return

:?:/lio::
	co()
	SendChat("/loadimport 1000")
	SendChat("/overload 500")
return

:?:/si::
	co()
	SendChat("/sellimport 1000")
return

:?:/sio::
	co()
	SendChat("/sellimport 1500")
return

:?:/gtd::
	co()
	SendChat("/gettrailer destroy")
return

:?:/gtw::
	co()
	SendChat("/gettrailer waren")
return

:?:/gtb::
	co()
	SendChat("/gettrailer benzin")
return

:?:/ov::
	co()
	ov_main := !ov_main
	if(ov_main == 0)
	{
		SetTimer, Overlay, Off
		DestroyAllVisual()
		AddMessageToChatWindow("Ov aus")
	}
	else
	{
		ov_hp := TextCreate("Arial", 5, true, false, 718, 92, 0xFF34CB5A, "HP", false, true)
		ov_dl := TextCreate("Arial", 5, true, false, 110, 412, 0xFF26761B, "DL", true, true)
		ov_location := TextCreate("Arial", 6, true, false, 79, 440, 0xFF585858, "LOCATION", true, true)
		ov_drugtime := TextCreate("Arial", 6, true, false, 770, 48, 0xFF585858, "DRUGTIME", true, true)
		ov_fps := TextCreate("Arial", 8, false, false, 785, 580, 0xFF585858, "FPS", true, true)
		AddMessageToChatWindow("Ov an")
		SetTimer, Overlay, 250
	}
return

:?:/sm::
	co()
	SendChat("/m Wer Invite braucht: ""/showme rot"" | Wer Invite hat: ""/showme gruen""")
	SendChat("/m Genau so schreiben, dann klappt das auch.")
return

:?:/ab::
	co()
	SendChat("/p")
	SendChat("Sie sind mit Logan Miller verbunden. Aktuell habe ich leider keine Zeit.")
	SendChat("Hinterlassen Sie mir daher bitte eine Nachricht oder rufen Sie später erneut an.")
	SendChat("/h")
return

:?:/spam::
	co()
	spamprot := !spamprot
	if(spamprot == 1)
		AddMessageToChatWindow("Spamschutz aktiviert")
	else
		AddMessageToChatWindow("Spamschutz deaktiviert")
return