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
	if (!RightButtonActive)
	{
		RightButtonPressedActive = true;
		LeftButtonPressedActive = false;
		RightButtonActive = true;
		LeftButtonActive = false;
	}
	else
	{
		LeftButtonActive = true;
		RightButtonActive = false;
		RightButtonPressedActive = false;
		LeftButtonPressedActive = true;
	}
}
#endregion