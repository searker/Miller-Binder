ic()
{
	if(IsChatOpen())
		Exit
}

co()
{
	if(IsChatOpen())
	{
		SendInput ^a
		SendInput {del}
		SendInput {enter}
	}
}