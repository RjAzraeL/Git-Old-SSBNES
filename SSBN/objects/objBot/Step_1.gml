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