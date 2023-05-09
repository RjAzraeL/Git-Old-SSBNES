#region Recover
alarm[10] = 5;
if (scrExiste(Target))
{
	if (FallingVoid and VerticalMovement > 0)
	{
		UpButtonActive = true;
		Recover = true;
		alarm[8] = 5;
	}

	if (!FallingVoid)
	{
		Recover = false;
	}
}
else
{
	if (x < room_width/2 - 16)
	{
		RightButtonPressedActive = true;
		LeftButtonPressedActive = false;
		RightButtonActive = true;
		LeftButtonActive = false;
	}
	if (x > room_width/2 + 16)
	{
		LeftButtonActive = true;
		RightButtonActive = false;
		RightButtonPressedActive = false;
		LeftButtonPressedActive = false;
	}
	else
	{
		if (!LeftButtonActive)
		{
			RightButtonPressedActive = true;
			LeftButtonPressedActive = false;
			RightButtonActive = true;
			LeftButtonActive = false;
		}
		else
		{
			RightButtonPressedActive = false;
			LeftButtonPressedActive = true;
			RightButtonActive = false;
			LeftButtonActive = true;
		}
	}
}
#endregion