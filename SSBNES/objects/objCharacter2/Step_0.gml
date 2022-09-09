#region Inmune
if (CooldownDamage > 0)
{
	CooldownDamage--;
}
if (Inmune and !Platform)
{
	if (InmuneCooldown > 0)
	{
		InmuneCooldown--;
	}
	else
	{
		Inmune = false;
	}
}
#endregion
#endregion Platform
if (Platform)
{
	if (PlatformCooldown > 0)
	{
		PlatformCooldown--;
	}
	else
	{
		scrOutPlatform();
	}
	y = lerp(y , Control.PlatformYLimit+5 , .1);
	if (y >= Control.PlatformYLimit)
	{
		PlatformReady = true;
	}
	if (scrUseKeyboardAvailable() and PlatformReady)
	{
		scrOutPlatform();
	}
}
#endregion

#region Horizontal Speed
var VarSpeed = 0;
if (Damaged == 0)
{
	if (scrSolidDetectorBelow())
	{
		if (!RunActive)
		{
			VarSpeed = SpeedWalk;
		}
		else
		{
			VarSpeed = SpeedRun;
			Running = 10;
		}
	}
	else
	{
		VarSpeed = SpeedFall;
	}
}
else
{
	VarSpeed = SpeedRun / 2;
}
#endregion

#region Horizontal Movement
var HorizontalDirection = 0;
if (CooldownSwap == 0 and !Platform)
{
	if (!Duck and !RootAttack and TimeAttacking == 0)
	{
		HorizontalDirection = RightButtonActive - LeftButtonActive;
	}
	
	if (Damaged == 0)
	{
		if (HorizontalDirection != 0)
		{
			Skid = false;
			if (AcelerationValue < VarSpeed)
			{
				if (CooldownSwap == 0)
				{
					TranceAceleration += (Aceleration * HorizontalDirection);
				}
				AcelerationValue += Aceleration;
			}
			else
			{
				if (CooldownSwap == 0)
				{
					TranceAceleration = VarSpeed * HorizontalDirection;
				}
				AcelerationValue = VarSpeed;
			}
		}
		else
		{
			TranceAceleration = lerp(TranceAceleration , 0 , Friction);
			if (AcelerationValue > 0)
			{
				if (scrSolidDetectorBelow())
				{
					if (RunActive) and (!Skid)
					{
						SoundSkid = 15;
						Skid = true;
					}
				}
				AcelerationValue -= Friction;
			}
			else
			{
				AcelerationValue = 0;	
			}
		}
	}
	
	if (Damaged == 0)
	{
		if (HorizontalDirection != 0)
		{
			HorizontalMovement = ((HorizontalDirection * (AcelerationValue)) + MovementPostDamage ) * AcelerationPostDamage;
		}
		else
		{
			HorizontalMovement = (((AcelerationValue) * ScaleX) + MovementPostDamage ) * AcelerationPostDamage;
		}
	}
	else
	{
		HorizontalMovement = SavedHorizontalMovement;
	}
	if (Damaged == 0)
	{
		if (AcelerationPostDamage < 1)
		{
			AcelerationPostDamage += .05;
		}
		if (MovementPostDamage != 0)
		{
			MovementPostDamage = lerp(MovementPostDamage , 0 , .1);
			if (MovementPostDamage < 0.1 and MovementPostDamage > -0.1)
			{
				MovementPostDamage = 0;
			}
		}
	}
	else
	{
		AcelerationPostDamage = 0;
	}

	if (Damaged == 0)
	{
		if (HorizontalDirection != 0)
		{
			RunTime = 10;
			ScaleX = sign(HorizontalDirection);
			if (scrSolidDetectorBelow())
			{
				ScaleXSprite = sign(HorizontalDirection);
			}
		}
		else
		{
			if (RunTime == 0)
			{
				RunActive = false;
				RunValue = 0;
				LastDirection = 0;
			}
		}
	}
}
else
{
}
#endregion

#region Gravity
if (!place_meeting(x , y + 1 , parCollision))
{
	if (VerticalMovement < SpeedFall)
	{
		if (VerticalMovement > 0)
		{
			GravityFallValue += GravityFall;
		}
		else
		{
			VerticalMovement += Gravity;	
		}
	}
}
#endregion
#region Collision
if (place_meeting(x , y + VerticalMovement , parSolid))
{
	while (!place_meeting(x , y  + sign(VerticalMovement) , parCollision))
	{
		y += sign(VerticalMovement);
	}
	VerticalMovement = 0;
}
if (place_meeting(x , y + VerticalMovement , objBlockSlope45))
{
	while (!place_meeting(x , y  + sign(VerticalMovement) , parCollision))
	{
		y += sign(VerticalMovement);
	}
	VerticalMovement = 0;
}
if (!place_meeting(x , y , objBlockTransferable) and (VerticalMovement >= 0 and !DuckFall) and (GravityFallDownActive == 0) and Damaged == 0)
{
	if (place_meeting(x , y + VerticalMovement , objBlockTransferable))
	{
		while (!place_meeting(x , y  + sign(VerticalMovement) , parCollision))
		{
			y += sign(VerticalMovement);
		}
		VerticalMovement = 0;
	}
}
#endregion
#region Position
if (!Platform)
{
	x += HorizontalMovement;
	y += VerticalMovement;
}
#endregion