#region Do recover
if (!Recovery)
{
	UpButtonPressedActive = false;
	DownButtonPressedActive = true;
}
AttackButtonActive = false;
AttackButtonPressedActive = false;
Recover = false;
alarm[9] = 5;
if (x > room_width/2)
{
	if (x > Control.X2Limit)
	{
		LeftButtonActive = true;
		RightButtonActive = false;
	}
	else
	{
		LeftButtonActive = false;
		RightButtonActive = true;
	}
}
else
{
	if (x < Control.X1Limit)
	{
		LeftButtonActive = false;
		RightButtonActive = true;
	}
	else
	{
		LeftButtonActive = true;
		RightButtonActive = false;
	}
}
#endregion