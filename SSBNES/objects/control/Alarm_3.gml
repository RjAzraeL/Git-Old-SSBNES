#region Time
BonusTimeSecond++;
if (BonusTimeSecond >= 60)
{
	BonusTimeSecond = 0;
	BonusTimeMinute++;
}
alarm[3] = 60;
#endregion