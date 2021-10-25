#region Attack
alarm[0] = irandom_range(7,15);
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
		if (objCharacter.y < y - 16)
		{
			JumpButtonActive = true;
			alarm[3] = 1;
		}
	}
	else
	{
		AttackButtonPressedActive = true;
		if (objCharacter.y < y - 16)
		{
			JumpButtonActive = true;
			alarm[3] = 1;
		}
		else if (objCharacter.y > y + 8)
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
	alarm[3] = 1;
}
#endregion