#region Move button
if (CooldownButton == 0)
{
	if (Control.UpButtonActive)
	{
		CooldownButton = 5;
		ActualButton--;
		if (ActualButton < 0)
		{
			ActualButton = 4;
		}
		alarm[0] = 1;
	}
	if (Control.DownButtonActive)
	{
		ActualButton++;
		CooldownButton = 5;
		if (ActualButton > 4)
		{
			ActualButton = 0;
		}
		alarm[0] = 1;
	}
}
else
{
	CooldownButton--;
}
#endregion