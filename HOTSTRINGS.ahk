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