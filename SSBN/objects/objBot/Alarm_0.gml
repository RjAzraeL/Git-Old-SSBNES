#region Attack
alarm[0] = 10;
RightButtonActive = false;
LeftButtonActive = false;
RightButtonPressedActive = false;
LeftButtonPressedActive = false;
JumpButtonActive = false;
DownButtonPressedActive = false;
if (scrExiste(objCharacter))
{
	if (distance_to_object(objCharacter) > 60)
	{
		AttackButtonPressedActive = false;
		if (HorizontalMovement > 0)
		{
			RightButtonPressedActive = true;
		}
		else
		{
			LeftButtonPressedActive = true;
		}
	}
	else
	{
		AttackButtonPressedActive = true;
		if (objCharacter.y < y - 16)
		{
			JumpButtonActive = true;
		}
		else if (objCharacter.y > y + 8 and place_meeting(x , y + 2 , parCollision))
		{
			alarm[1] = 2;
			DownButtonReleasedActive = true;
		}
	}
	if (objCharacter.x > x - 32)
	{
		RightButtonActive = true;
		LeftButtonActive = false;
	}
	else if (objCharacter.x < x + 32)
	{
		RightButtonActive = false;
		LeftButtonActive = true;
	}
	else
	{
		RightButtonActive = false;
		LeftButtonActive = false;
	}
}
if (!place_meeting(x , y + 16 , parCollision))
{
	JumpButtonActive = true;
}
#endregion