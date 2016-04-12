ic()
{
	if(IsInChat())
		Exit
}

co()
{
	if(IsInChat())
	{
		SendInput ^a
		SendInput {del}
		SendInput {enter}
	}
}