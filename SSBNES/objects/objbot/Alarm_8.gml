#region Do recover
AttackButtonActive = true;
AttackButtonPressedActive = true;
Recover = false;
alarm[9] = 5;
if (x > room_width/2)
{
	LeftButtonActive = true;
	RightButtonActive = false;
}
else
{
	LeftButtonActive = false;
	RightButtonActive = true;
}
#endregion