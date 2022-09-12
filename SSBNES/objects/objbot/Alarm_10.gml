#region Recover
alarm[10] = 5;
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
#endregion