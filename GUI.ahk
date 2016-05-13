; #################################### Debug #####################################
	
	gui, debug:add, button, x50 w80 h30 gdr, Reload
	gui, debug:add, button, x50 w80 h30 gdq, Quit
	gui, debug:show, x1150 y600 w180, Debug ;x1700 y900
; #################################### Debug #####################################


; ##################################### Main #####################################
g_main:
{
	gui, main:font, , Courier New
	gui, main:add, GroupBox, x10 y10 w280 h122 Section Center, Befehle ; w370

	gui, main:font, , Tahoma
	gui, main:add, Button, xs+10 ys+20 w80 h40 gg_allgemein, Allgemein
	gui, main:add, Button, xp+90 yp wp hp gg_berufe, Berufe
	gui, main:add, Button, xp+90 yp wp hp, Belegbare Hotkeys
	;~ gui, main:add, Button, xp+90 yp wp hp, 

	gui, main:add, Button, xs+10 ys+70 gg_autosys wp hp, Automatische Systeme
	gui, main:add, Button, xp+90 yp wp hp, MDC
	gui, main:add, Button, xp+90 yp wp hp, Freunde / Feinde
	;~ gui, main:add, Button, xp+90 yp wp hp, 


	gui, main:font, , Courier New
	gui, main:add, GroupBox, xs ys+132 w280 h72 Section Center, Overlay

	gui, main:font, , Tahoma
	gui, main:add, Button, xs+10 ys+20 w80 h40 gg_ov_allgemein, Allgemein
	gui, main:add, Button, xp+90 yp wp hp, Berufe
	gui, main:add, Button, xp+90 yp wp hp gg_ov_fahrzeug, Fahrzeug
	;~ gui, main:add, Button, xp+90 yp wp hp, 


	gui, main:font, , Courier New
	gui, main:add, GroupBox, xs ys+82 w280 h72 Section Center, Sonstiges

	gui, main:font, , Tahoma
	gui, main:add, Button, xs+10 ys+20 w80 h40, Einstellungen
	gui, main:add, Button, xp+90 yp wp hp, Update
	gui, main:add, Button, xp+90 yp wp hp gg_main_z, Beenden
	;~ gui, main:add, Button, xp+90 yp wp hp, 


	gui, main:font, , Courier New
	gui, main:add, text, x60 y296, © Logan.Miller, 2015-2016

	gui, main:show, w300 h310, Miller-Binder ;w390
}
return
; ##################################### Main #####################################


; ################################## Allgemein ###################################
g_allgemein:
{
	gui, main:destroy
	
	; ##### Hotstrings #####
	gui, allgemein:font, , Courier New
	gui, allgemein:add, GroupBox, x10 y10 w610 h200 section, Hotstrings
	gui, allgemein:add, Text, xs+25 ys+15, Befehl
	gui, allgemein:add, Text, xs+100 yp, Wirkung
	gui, allgemein:add, Text, xs+250 yp, Anmerkung
	
	gui, allgemein:font, , Tahoma
	gui, allgemein:add, Text, xs+35 ys+35, /op
	gui, allgemein:add, Text, xs+110 yp, /oparking
	gui, allgemein:add, Text, xs+260 yp, Öffnet Parkplatz am Zivi-LS
	
	gui, allgemein:add, Text, xs+35 yp+18, /bd
	gui, allgemein:add, Text, xs+110 yp, /buydonut
	gui, allgemein:add, Text, xs+260 yp, Öffnet den Dialog und kauft 10 Donuts
	
	gui, allgemein:add, Text, xs+35 yp+18, /ed
	gui, allgemein:add, Text, xs+110 yp, /eatdonut
	gui, allgemein:add, Text, xs+260 yp, 
	
	gui, allgemein:add, Text, xs+35 yp+18, /ud
	gui, allgemein:add, Text, xs+110 yp, /usedrugs 2
	gui, allgemein:add, Text, xs+260 yp, 
	; ##### Hotstrings #####
	
	; ###### Hotkeys #######
	gui, allgemein:font, , Courier New
	gui, allgemein:add, GroupBox, xs ys+210 w610 h250 section, Hotkeys
	gui, allgemein:add, Text, xs+25 ys+15, Taste
	gui, allgemein:add, Text, xs+100 yp, Wirkung
	gui, allgemein:add, Text, xs+250 yp, Anmerkung
	
	gui, allgemein:font, , Tahoma
	gui, allgemein:add, Text, xs+35 ys+35, Y
	gui, allgemein:add, Text, xs+110 yp, Fahrzeug-System
	gui, allgemein:add, Text, xs+260 yp, Motor aus:`nMotor an:
	gui, allgemein:add, Text, xs+315 yp, /lock (wenn offen) -> /engine -> /lights (wenn aus und nötig)`n/lock (wenn offen) -> /engine -> /lights (wenn an)
	
	gui, allgemein:add, Text, xs+35 yp+30, X
	gui, allgemein:add, Text, xs+110 yp, /lock`n/carlock
	gui, allgemein:add, Text, xs+260 yp, wenn Fahrer`nwenn nicht in Auto
	
	gui, allgemein:add, Text, xs+35 yp+30, J
	gui, allgemein:add, Text, xs+110 yp, /enter`n/exit
	gui, allgemein:add, Text, xs+260 yp, wenn auf Straße`nwenn in Haus
	
	gui, allgemein:add, Text, xs+35 yp+30, R
	gui, allgemein:add, Text, xs+110 yp, Wiederholung
	gui, allgemein:add, Text, xs+260 yp, Wiederholt letzte manuelle Chat-Eingabe
		
	gui, allgemein:add, Text, xs+35 yp+18, Num 4
	gui, allgemein:add, Text, xs+110 yp, Begrüßung
	gui, allgemein:add, Text, xs+260 yp, Abhängig von Tageszeit
	
	gui, allgemein:add, Text, xs+35 yp+18, Strg + Num 4
	gui, allgemein:add, Text, xs+110 yp, Verabschiedung
	gui, allgemein:add, Text, xs+260 yp, Abhängig von Tageszeit
	
	gui, allgemein:add, Text, xs+35 yp+18, N
	gui, allgemein:add, Text, xs+110 yp, /notafk
	gui, allgemein:add, Text, xs+260 yp, Rechnung muss manuell gelöst werden
	
	gui, allgemein:add, Text, xs+35 yp+18, O
	gui, allgemein:add, Text, xs+110 yp, /opencargo
	gui, allgemein:add, Text, xs+260 yp, 
	
	gui, allgemein:add, Text, xs+35 yp+18, Strg + O
	gui, allgemein:add, Text, xs+110 yp, /cargo
	gui, allgemein:add, Text, xs+260 yp, 
	; ###### Hotkeys #######

	gui, allgemein:add, Button, x561 y473 w60 gg_allgemein_z, Zurück

	gui, allgemein:-SysMenu
	gui, allgemein:show, w630 h498, Allgemeine Befehle
}
return
; ################################## Allgemein ###################################

g_berufe:
	gui, main:destroy
	
	gui, berufe:add, GroupBox, x10 y10 w340 h322 section
	
	gui, berufe:font, , Tahoma
	gui, berufe:add, Button, xs+10 ys+20 w100 h40, Anwalt
	gui, berufe:add, Button, xp+110 yp wp hp, Autodieb
	gui, berufe:add, Button, xp+110 yp wp hp, Bauer
	
	gui, berufe:add, Button, xs+10 ys+70 w100 h40, Bestatter
	gui, berufe:add, Button, xp+110 yp wp hp, Detektiv
	gui, berufe:add, Button, xp+110 yp wp hp, Drogendealer
	
	gui, berufe:add, Button, xs+10 ys+120 w100 h40, Hacker
	gui, berufe:add, Button, xp+110 yp wp hp, Hochseefischer
	gui, berufe:add, Button, xp+110 yp wp hp, Hotdogverkäufer
	
	gui, berufe:add, Button, xs+10 ys+170 w100 h40, Hure
	gui, berufe:add, Button, xp+110 yp wp hp, Kurierfahrer
	gui, berufe:add, Button, xp+110 yp wp hp, Mechaniker
	
	gui, berufe:add, Button, xs+10 ys+220 w100 h40, Müllmann
	gui, berufe:add, Button, xp+110 yp wp hp, Pilot
	gui, berufe:add, Button, xp+110 yp wp hp, Pizzaboy
	
	gui, berufe:add, Button, xs+10 ys+270 w100 h40, Taschendieb
	gui, berufe:add, Button, xp+110 yp wp hp, Trucker
	gui, berufe:add, Button, xp+110 yp wp hp, Waffenhändler
	
	gui, berufe:add, Button, x291 y335 w60 gg_berufe_z, Zurück
	
	gui, berufe:-SysMenu
	gui, berufe:show, w360 h360, Berufe
return

; ############################ automatische Systeme ##############################
g_autosys:
{
	gui, main:destroy
	
	gui, autosys:add, GroupBox, x10 y10 w510 h460 section,
	gui, autosys:font, , Courier New
	gui, autosys:add, Text, xs+25 ys+15, Funktion
	gui, autosys:add, Text, xs+220 yp, Beschreibung
	
	gui, autosys:font, , Tahoma
	gui, autosys:add, Checkbox, xs+10 ys+35 Checked%v_lockcheck% vv_lockcheck, /lock - Überprüfung
	gui, autosys:add, Text, xs+230 yp, Schließt das Fahrzeug ab, wenn der Motor läuft.`nNach aufschließen via X wird für 5 Sekunden pausiert.
	
	gui, autosys:add, Button, x431 y473 w60 gg_autosys_z, Zurück
	gui, autosys:add, Button, x361 y473 w60 gg_autosys_s, Speichern
	
	gui, autosys:-SysMenu
	gui, autosys:show, w530 h498, Automatische Systeme
}
return
; ############################ automatische Systeme ##############################

g_ov_allgemein:
	gui, main:destroy
	
	gui, ov_allgemein:add, GroupBox, x10 y10 w510 h460 section,
	
	gui, ov_allgemein:font, , Tahoma
	gui, ov_allgemein:add, Checkbox, xs+10 ys+35 Checked%v_ov_hp% vv_ov_hp, HP
	gui, ov_allgemein:add, Checkbox, xp yp+20 Checked%v_ov_location% vv_ov_location, Ort
	gui, ov_allgemein:add, Checkbox, xp yp+20 Checked%v_ov_fps% vv_ov_fps, FPS
	
	gui, ov_allgemein:add, Button, x431 y473 w60 gg_ov_allgemein_z, Zurück
	gui, ov_allgemein:add, Button, x361 y473 w60 gg_ov_allgemein_s, Speichern
	
	gui, ov_allgemein:-SysMenu
	gui, ov_allgemein:show, w530 h498, Allgemeine Overlays
return

g_ov_fahrzeug:
	gui, main:destroy
	
	gui, ov_fahrzeug:add, GroupBox, x10 y10 w510 h460 section
	
	gui, ov_fahrzeug:font, , Tahoma
	gui, ov_fahrzeug:add, Checkbox, xs+10 ys+35 Checked%v_ov_dl% vv_ov_dl, DL
	gui, ov_fahrzeug:add, Checkbox, xp yp+20 Checked%v_ov_vehstatus% vv_ov_vehstatus, Status-Übersicht
	gui, ov_fahrzeug:add, Checkbox, xp yp+20 Checked%v_ov_vehmodel% vv_ov_vehmodel, Modell-ID
	
	gui, ov_fahrzeug:add, Button, x431 y473 w60 gg_ov_fahrzeug_z, Zurück
	gui, ov_fahrzeug:add, Button, x361 y473 w60 gg_ov_fahrzeug_s, Speichern
	
	gui, ov_fahrzeug:-SysMenu
	gui, ov_fahrzeug:show, w530 h498, Fahrzeug-Overlays
return



g_main_z:
	ExitApp
	
g_allgemein_z:
	Gui, allgemein:destroy
	goto, g_main
return

g_berufe_z:
	gui, berufe:destroy
	goto, g_main
return

g_autosys_z:
	Gui, autosys:destroy
	goto, g_main
return

g_autosys_s:
	gui, autosys:submit, nohide

	IniWrite, %v_lockcheck%, settings.ini, autosys, lockcheck
return

g_ov_allgemein_z:
	Gui, ov_allgemein:destroy
	goto, g_main
return

g_ov_allgemein_s:
	gui, ov_allgemein:submit, nohide

	IniWrite, %v_ov_hp%, settings.ini, ov_allgemein, hp
	IniWrite, %v_ov_location%, settings.ini, ov_allgemein, location
	IniWrite, %v_ov_fps%, settings.ini, ov_allgemein, fps
return

g_ov_fahrzeug_z:
	Gui, ov_fahrzeug:destroy
	goto, g_main
return

g_ov_fahrzeug_s:
	gui, ov_fahrzeug:submit, nohide
	
	IniWrite, %v_ov_dl%, settings.ini, ov_fahrzeug, dl
	IniWrite, %v_ov_vehstatus%, settings.ini, ov_fahrzeug, vehstatus
	IniWrite, %v_ov_vehmodel%, settings.ini, ov_fahrzeug, vehmodel
return

mainGuiClose:
	ExitApp
	return

debugGuiClose:
	return
	
berufeGuiEscape:
	gui, berufe:destroy
	goto, g_main
return

dr:
	Reload
return

dq:
	ExitApp
return