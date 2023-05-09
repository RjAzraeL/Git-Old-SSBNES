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
#region Revenge
if (RevengeTime > 0)
{
	RevengeTime--;
}
else
{
	RevengeEntity = noone;
}
#endregion
#region Check void
FallingVoid = false;
if (scrExiste(VoidChecker))
{
	if (VoidChecker.visible)
	{
		FallingVoid = true;
		Recover = true;
		LeftButtonActive = false;
		RightButtonActive = false;
		LeftButtonPressedActive = false;
		RightButtonPressedActive = false;
		DownButtonActive = false;
		DownButtonPressedActive = false;
		JumpButtonActive = true;
		UpButtonPressedActive = true;
		UpButtonActive = true;
		alarm[8] = 5;
	}
}
#endregion

if (place_meeting(x , y + 4 , parCollision) and !place_meeting(x+HorizontalMovement , y+4 , parCollision))
{
	var Go = true;
	if (scrExiste(Target))
	{
		if (distance_to_object(Target) < 20)
		{
			Go = false;
		}
	}
	if (Go)
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
}
#endregion