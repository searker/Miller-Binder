ic() ; checks if player is in chat; ergo if the chat-window is open
{
	if(IsInChat())
		Exit
}

co() ; closes the chat-window and deletes its current contents
{
	if(IsInChat())
	{
		SendInput ^a
		SendInput {del}
		SendInput {enter}
	}
}

;~ GetChatLine(Line, ByRef Output, timestamp=0, color=0)
;~ {
	;~ chatindex := 0
	;~ FileRead, file, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
	;~ loop, Parse, file, `n, `r
	;~ {
		;~ if(A_LoopField)
			;~ chatindex := A_Index
	;~ }
	;~ loop, Parse, file, `n, `r
	;~ {
		;~ if(A_Index = chatindex - line){
			;~ output := A_LoopField
			;~ break
		;~ }
	;~ }
	;~ file := ""
	;~ if(!timestamp)
		;~ output := RegExReplace(output, "U)^\[\d{2}:\d{2}:\d{2}\]")
	;~ if(!color)
		;~ output := RegExReplace(output, "Ui)\{[a-f0-9]{6}\}")
	;~ return
;~ }