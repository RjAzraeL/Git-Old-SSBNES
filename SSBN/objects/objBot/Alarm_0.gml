#region Attack
alarm[0] = 30;

RightButtonActive = false;
LeftButtonActive = false;
RightButtonPressedActive = false;
LeftButtonPressedActive = false;
JumpButtonActive = false;
AttackButtonPressedActive = false;
if (scrExiste(objCharacter))
{
	if (objCharacter.x < x)
	{
		ScaleXSprite = -1;
	}
	else if (objCharacter.x > x)
	{
		ScaleXSprite = 1;
	}
	if (distance_to_object(objCharacter) > 60)
	{
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
			alarm[3] = 5;
		}
	}
	else
	{
		if (abs(y - objCharacter.y) < 8)
		{
			AttackButtonPressedActive = true;
		}
		if (objCharacter.y < y - 16)
		{
			JumpButtonActive = true;
			alarm[3] = 5;
		}
	}
	if (place_meeting(x , y + 2 , objBlockTransferable ))
	{
		alarm[1] = 8;
		DownButtonActive = true;
		DownButtonReleasedActive = false;
	}
	
	if (objCharacter.x > x - 25)
	{
		RightButtonActive = true;
		LeftButtonActive = false;
	}
	else if (objCharacter.x < x + 25)
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

#endregion