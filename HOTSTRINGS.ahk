:?:/op:: ; opens Gate at Zivispawn
	co()
	SendChat("/oparking")
return

:?:/pd:: ; deposits drugs
	SendInput /put drugs{space}
return

:?:/pda:: ; deposits all drugs
	co()
	SendChat("/put drugs all")
return

:?:/pma:: ; deposits all mats
	co()
	SendChat("/put mats all")
return

:?:/td:: ; withdraws drugs
	SendInput /gtake drugs{space}
return

:?:/ud::
	co()
	SendChat("/usedrugs 2")
return

:?:/sd:: ; Drug-Dealer-Specific
	SendInput /selldrugs{space 2}2 4000{left 7}
return

:?:/sdb:: ; Drug-Dealer-Specific
	SendInput /selldrugs{space 2}2 4000 bar{left 11}
return

:?:/ed::
	co()
	SendChat("/eatdonut")
return

:?:/bd:: ; Buys 10 Donuts in a valid store
	co()
	SendChat("/buydonut")
	sleep 750
	SendInput {enter}
	sleep 250
	SendInput 10{enter}
return

:?:/dp:: ; Drug-Dealer-specific
	co()
	SendChat("/drugs plant")
return

:?:/dh:: ; Drug-Dealer-specific
	co()
	SendChat("/drugs harvest")
return

:?:/li:: ; Trucker-specific
	co()
	SendChat("/loadimport 1000")
return

:?:/lio:: ; Trucker-specific
	co()
	SendChat("/loadimport 1000")
	SendChat("/overload 500")
return

:?:/si:: ; Trucker-specific
	co()
	SendChat("/sellimport 1000")
return

:?:/lf:: ; Trucker-specific
	co()
	SendChat("/loadfish 1500")
return

:?:/sf:: ; Trucker-specific
	co()
	SendChat("/sellfish 1500")
return

:?:/sio:: ; Trucker-specific
	co()
	SendChat("/sellimport 1500")
return

:?:/gtd:: ; Trucker-specific
	co()
	SendChat("/gettrailer destroy")
return

:?:/gtw:: ; Trucker-specific
	co()
	SendChat("/gettrailer waren")
return

:?:/gtb:: ; Trucker-specific
	co()
	SendChat("/gettrailer benzin")
return

:?:/ov:: ; Toggles Overlay (for now)
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

:?:/sm:: ; News-specific
	co()
	SendChat("/m Wer Invite braucht: ""/showme rot"" | Wer Invite hat: ""/showme gruen""")
	SendChat("/m Genau so schreiben, dann klappt das auch.")
return

:?:/ab:: ; Mailbox
	co()
	SendChat("/p")
	SendChat("Sie sind mit Logan Miller verbunden. Aktuell habe ich leider keine Zeit.")
	SendChat("Hinterlassen Sie mir daher bitte eine Nachricht oder rufen Sie später erneut an.")
	SendChat("/h")
return

:?:/spam:: ; Toggles Spam-Protection
	co()
	spamprot := !spamprot
	if(spamprot == 1)
		AddMessageToChatWindow("Spamschutz aktiviert")
	else
		AddMessageToChatWindow("Spamschutz deaktiviert")
return

:?:/mg:: ; Weapon-Dealer-specific
	co()
	SendChat("/materials get 15")
	SendChat("-")
return

:?:/md:: ; Weapon-Dealer-specific
	co()
	SendChat("/materials deliver")
	SendChat("-")
return

:?:/mecha:: ; Toggles Mechanic-System (for now)
	co()
	mechaduty := !mechaduty
	if(mechaduty == 1)
		AddMessageToChatWindow("Mechanikermodus aktiviert")
	else
		AddMessageToChatWindow("Mechanikermodus deaktiviert")
return