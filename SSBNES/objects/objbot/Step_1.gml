#region Controllers
/*
RightButtonActive = Control.RightButtonActive;
LeftButtonActive = Control.LeftButtonActive;
DownButtonPressedActive = Control.DownButtonPressedActive;
LeftButtonPressedActive = Control.LeftButtonPressedActive;
RightButtonPressedActive = Control.RightButtonPressedActive;
JumpButtonActive = Control.JumpButtonActive;
JumpButtonReleaseActive = Control.JumpButtonReleaseActive;
AttackButtonPressedActive = Control.AttackButtonPressedActive;
DownButtonReleasedActive = Control.DownButtonReleasedActive;
DownButtonActive = Control.DownButtonActive;
AttackButtonActive = Control.AttackButtonActive;
*/

#region Check void
FallingVoid = false;
if (scrExiste(VoidChecker))
{
	if (VoidChecker.visible)
	{
		if (x > -30 and x < room_width + 30)
		{
			FallingVoid = true;
			Recover = true;
			LeftButtonActive = false;
			RightButtonActive = false;
			LeftButtonPressedActive = false;
			RightButtonPressedActive = false;
			JumpButtonActive = true;
			UpButtonPressedActive = true;
			UpButtonActive = true;
			alarm[8] = 5;
		}
	}
}
#endregion

if (place_meeting(x , y + 4 , parCollision) and !place_meeting(x+HorizontalMovement , y+4 , parCollision))
{
	if (LeftButtonActive)
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