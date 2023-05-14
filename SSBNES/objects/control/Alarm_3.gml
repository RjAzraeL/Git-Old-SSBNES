#region Time
alarm[3] = 68;
if (ReadyTime <= 1)
{
	BonusTimeSecond++;
	if (BonusTimeSecond >= 68)
	{
		BonusTimeSecond = 0;
		BonusTimeMinute++;
	}
}
#endregion