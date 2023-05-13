#region Ready
if (ReadyTime > 1) 
{
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
