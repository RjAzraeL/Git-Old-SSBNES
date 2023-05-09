#region Recover
alarm[10] = 2;
if (FallingVoid and VerticalMovement >= 0)
{
	AttackButtonPressedActive = true;
	AttackButtonActive = true;
	UpButtonActive = true;
	alarm[8] = 5;
}

if (!FallingVoid)
{
	Recover = false;
}
#endregion