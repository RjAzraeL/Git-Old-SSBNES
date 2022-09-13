#region Attack
if (!FallingVoid)
{
	Target = scrSearchRival(self);
	if (scrExiste(Target))
	{
		alarm[0] = 25;
	}
	else
	{
		alarm[0] = 4;
	}
	RightButtonActive = false;
	LeftButtonActive = false;
	RightButtonPressedActive = false;
	LeftButtonPressedActive = false;
	JumpButtonActive = false;
	AttackButtonPressedActive = false;
	AttackButtonReleasedActive = false;
	DownButtonActive = false;
	DownButtonPressedActive = false;

	if (scrExiste(Target))
	{
		if (!Target.Inmune and Target.x > Control.RoomLimitX and Target.x < room_width - Control.RoomLimitX)
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
			if (distance_to_object(Target) > 80)
			{
				if (HorizontalMovement > 0)
				{
					RightButtonPressedActive = true;
				}
				else
				{
					LeftButtonPressedActive = true;
				}
				if (Target.y < y - 8)
				{
					JumpButtonActive = true;
					alarm[3] = 5;
				}
			}
			else if (distance_to_object(Target) > 40)
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
					if (Target.y < y - 8)
					{
						JumpButtonActive = true;
						alarm[3] = 5;
					}
				}
				else if (Mentality == "Range" and !FallingVoid)
				{
					if (Target.y < y - 8)
					{
						JumpButtonActive = true;
						alarm[3] = 5;
					}
					AttackButtonPressedActive = true;
					alarm[6] = irandom_range(5 , 20);
				}
			}
			else
			{
				if (abs(y - Target.y) < 8 and !FallingVoid)
				{
					if (scrProbable(.5))
					{
						DownButtonActive = true;
						DownButtonPressedActive = true;
					}
					AttackButtonPressedActive = true;
					alarm[6] = irandom_range(5 , 20);
				}
				if (Target.y < y - 8)
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
			if (x < Control.X1Limit)
			{
				RightButtonActive = true;
				LeftButtonActive = false;
			}
			if (x > Control.X2Limit)
			{
				RightButtonActive = false;
				LeftButtonActive = true;
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
	DownButtonActive = false;
	DownButtonPressedActive = false;
	RightButtonActive = false;
	LeftButtonActive = false;
	RightButtonPressedActive = false;
	LeftButtonPressedActive = false;
	AttackButtonPressedActive = false;
	AttackButtonReleasedActive = false;
	alarm[0] = 5;
}
#endregion