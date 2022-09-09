#region Attack
if (!FallingVoid)
{
	alarm[0] = 25;
	if (scrExiste(objPlayer))
	{
		Target = objPlayer;
	}
	else
	{
		Target = noone;
	}
	RightButtonActive = false;
	LeftButtonActive = false;
	RightButtonPressedActive = false;
	LeftButtonPressedActive = false;
	JumpButtonActive = false;
	AttackButtonPressedActive = false;
	AttackButtonReleasedActive = false;

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

	if (scrExiste(Target))
	{
		if (Target.Inmune == 0 and Target.x > Control.RoomLimitX and Target.x < room_width - Control.RoomLimitX)
		{
			if (Damaged == 0 and !Attacking and TimeAttacking == 0)
			{
				if (Target.x < x)
				{
					ScaleXSprite = -1;
				}
				else if (Target.x > x)
				{
					ScaleXSprite = 1;
				}
			}
			if (distance_to_object(Target) > 40)
			{
				if (Mentality == "Close")
				{
					if (HorizontalMovement > 0)
					{
						RightButtonPressedActive = true;
					}
					else
					{
						LeftButtonPressedActive = true;
					}
					if (Target.y < y - 16)
					{
						JumpButtonActive = true;
						alarm[3] = 5;
					}
				}
				else if (Mentality == "Range" and !FallingVoid)
				{
					AttackButtonPressedActive = true;
					alarm[6] = irandom_range(5 , 20);
				}
			}
			else
			{
				if (abs(y - Target.y) < 8 and !FallingVoid)
				{
					AttackButtonPressedActive = true;
					alarm[6] = irandom_range(5 , 20);
				}
				if (Target.y < y - 16)
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
	
			if (Target.x > x - 15)
			{
				RightButtonActive = true;
				LeftButtonActive = false;
			}
			else if (Target.x < x + 15)
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
	}
	else
	{
		LeftButtonActive = false;
		RightButtonActive = false;
	}
}
else
{
	alarm[0] = 5;
}
#endregion