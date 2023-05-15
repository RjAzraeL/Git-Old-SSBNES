#region Ready
if (ReadyTime > 1) 
{
	switch(ReadyTime)
	{
		case(4):
		{
			scrSound(sndAnnouncer2);
			break;
		}
		case(3):
		{
			scrSound(sndAnnouncer1);
			break;
		}
		case(2):
		{
			scrSound(sndAnnouncerGo);
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
