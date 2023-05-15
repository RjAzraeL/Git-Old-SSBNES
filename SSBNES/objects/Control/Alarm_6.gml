#region Ready
if (ReadyTime > 1) 
{
	switch(ReadyTime)
	{
		case(4):
		{
			scrVoice(sndAnnouncer2);
			break;
		}
		case(3):
		{
			scrVoice(sndAnnouncer1);
			break;
		}
		case(2):
		{
			scrVoice(sndAnnouncerGo);
			break;
		}
	}
	alarm[6] = ReadyTimeAlarm;
	ReadyTime --;
}
else if (ReadyTime = 1)
{	
	alarm[6] = ReadyTimeAlarm;
	ReadyTime --;
	CanMoveGlobal = true;
}
#endregion
