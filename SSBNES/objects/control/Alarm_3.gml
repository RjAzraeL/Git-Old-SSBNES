#region Time
alarm[3] = 60;
if (ReadyTime <= 1)
{
	BonusTimeSecond++;
	if (BonusTimeSecond >= 60)
	{
		BonusTimeSecond = 0;
		BonusTimeMinute++;
	}
}
#endregion