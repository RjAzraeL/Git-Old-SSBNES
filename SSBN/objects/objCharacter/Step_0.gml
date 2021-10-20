#region Movement

#region Horizontal Speed
var VarSpeed = 0;
if (place_meeting(x , y + 1 , parCollision) and !place_meeting(x , y , parCollision))
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
#endregion

#region Horizontal Movement
var HorizontalDirection = 0;
if (CooldownSwap == 0)
{
	if (!Duck)
	{
		HorizontalDirection = Control.RightButtonActive - Control.LeftButtonActive;
	}

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
			if (place_meeting(x , y + 1 , parCollision) and !place_meeting(x , y , parCollision))
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

	if (HorizontalDirection != 0)
	{
		HorizontalMovement = HorizontalDirection * (AcelerationValue);
	}
	else
	{
		HorizontalMovement = (AcelerationValue) * ScaleX;
	}

	if (HorizontalDirection != 0)
	{
		RunTime = 10;
		ScaleX = sign(HorizontalDirection);
		if (place_meeting(x , y + 1 , parCollision) and !place_meeting(x , y , parCollision))
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
else
{
	if (CooldownSwap == 1)
	{
		
	}
}
#endregion

#region Gravity
if (VerticalMovement < 0)
{
	VerticalMovement += Gravity;
}
else
{
	VerticalMovement += GravityFall + GravityFallDownActive;
}

if (VerticalMovement >= VerticalMovementLimit + VerticalMovementLimitExtra)
{
	VerticalMovement = VerticalMovementLimit + VerticalMovementLimitExtra;
}

#region Down Fast
if (Control.DownButtonPressedActive and CooldowFall == 0 and CooldownJump == 0)
{
	if (VerticalMovement != 0)
	{
		VerticalMovementLimitExtra = VerticalMovementLimitValue;
		VerticalMovement = VerticalMovementLimit + VerticalMovementLimitExtra;
	}
}
#endregion

#endregion

#region Run

if (SoundSkid > 0)
{
	SoundSkid--;
	if (SoundSkid == 1 and Skid)
	{
		scrSound(SfxSkid);
	}
}

if (CooldownSwap > 0)
{
	CooldownSwap--;
}
if (RunTime > 0)
{
	RunTime--;
}
if (Running > 0)
{
	Running--;
}

if (CooldownSwap == 0)
{
	TranceAcelerationValue = lerp(TranceAcelerationValue , TranceAceleration , .5);
}
else
{
	TranceAcelerationValue = SpeedRun * (HorizontalDirection * -1);
	if (CooldownSwap == 1)
	{
		HorizontalMovement = SpeedRun * (HorizontalDirection * -1);
	}
}

if (LastScaleX != ScaleX and (Skid or RunActive) and place_meeting(x , y + 1 , parCollision))
{
	CooldownSwap = 8;
	scrSound(SfxSkid);
	HorizontalMovement = SpeedRun * LastScaleX;
}

LastHorizontalDirection = HorizontalDirection;
LastScaleXSprite = ScaleXSprite;
LastScaleX = ScaleX;



if (Control.LeftButtonPressedActive or Control.RightButtonPressedActive)
{
	RunValue++;
	if (Running == 0)
	{
		if (RunValue == 2 and RunTime > 0)
		{
			RunActive = true;
			RunValue = 0;
			
		}
		else if (RunValue > 2)
		{
			RunActive = false;
			RunValue = 0;
			LastDirection = 0;
		}
	}
	else
	{
		RunActive = true;
		RunValue = 0;
	}
	LastDirection = ScaleX;
}

#endregion

#region Jump
if (JumpAvailable > 0 and Control.JumpButtonActive and CooldownJump == 0 and CooldowFall == 0)
{
	if (VerticalMovement >= 0)
	{
		SaveStopJump = false;
		if (place_meeting(x , y + 1 , parCollision) and !place_meeting(x , y , parCollision))
		{
			CooldownJump = 8;
		}
		else
		{
			scrJump(HorizontalDirection);
		}
	}
}
if (CooldownJump > 0)
{
	CooldownJump--;
	if (CooldownJump == 1)
	{
		scrJump(HorizontalDirection);
	}
}

if (Control.JumpButtonReleaseActive)
{
	SaveStopJump = true;
	if (!JumpStop)
	{
		JumpStop = true;
	}
}

if (JumpStop or SaveStopJump and CooldownJump == 0 and CooldowFall == 0)
{
	if (VerticalMovement < 0)
	{
		VerticalMovement += JumpStopSpeed;
	}
}
if (JumpTime > 0)
{
	JumpTime--;
}
#endregion

#region Collision
if (place_meeting(x + HorizontalMovement , y , parSolid))
{
	while (!place_meeting(x + sign(HorizontalMovement) , y , parSolid))
	{
		x += sign(HorizontalMovement);
	}
	HorizontalMovement = 0;
}

if (!place_meeting(x , y , objBlockTransferable) and VerticalMovement >= 0 and !DuckFall)
{
	if (place_meeting(x , y + VerticalMovement , objBlockTransferable))
	{
		while (!place_meeting(x , y  + sign(VerticalMovement) , objBlockTransferable))
		{
			y += sign(VerticalMovement);
		}
		if (VerticalMovement > 0)
		{
			JumpAvailable = Jumps;
			ActualJumpSprite = 0;
			VerticalMovementLimitExtra = 0;
			if (!FallReady)
			{
				FallReady = true;
				CooldowFall = 8;	
			}
		}
		VerticalMovement = 0;
	}
}
if (!place_meeting(x , y + 1 , parCollision))
{
	FallReady = false;
}

if (place_meeting(x , y + VerticalMovement , parSolid))
{
	while (!place_meeting(x , y  + sign(VerticalMovement) , parSolid))
	{
		y += sign(VerticalMovement);
	}
	if (VerticalMovement > 0)
	{
		JumpAvailable = Jumps;
		ActualJumpSprite = 0;
		VerticalMovementLimitExtra = 0;
		if (!FallReady)
		{
			FallReady = true;
			CooldowFall = 8;	
		}
	}
	VerticalMovement = 0;
}

if (place_meeting(x + HorizontalMovement , y  + VerticalMovement, parSolid))
{
	while (!place_meeting(x + sign(HorizontalMovement) , y + sign(VerticalMovement) , parSolid))
	{
		x += sign(HorizontalMovement);
		y += sign(VerticalMovement);
	}
	HorizontalMovement = 0;
	VerticalMovement = 0;
}

#endregion

#region Cooldown Fall Colission
if (CooldowFall > 0)
{
	CooldowFall--;
}
#endregion

#region Duck
if (CooldownJump == 0 and CooldowFall == 0)
{
	if (Control.DownButtonReleasedActive and Duck)
	{
		DuckTime = 15;
	}
	if (DuckTime > 0)
	{
		DuckTime--;
	}
	if (Control.DownButtonActive and place_meeting(x , y + 1 , parCollision))
	{
		if (DuckTime == 0)
		{
			if (!RunActive)
			{
				Duck = true;
				mask_index = MaskDuck;
			}
		}
		else
		{
			if place_meeting(x,y + 1, objBlockTransferable)

	        {
	            y+=2;
	            DuckTime = 0;
	        }
		}
	}
	else
	{
		Duck = false;
		DuckFall = false;
		mask_index = MaskNormal;
	}
}
#endregion

#region Position
x += HorizontalMovement;
y += VerticalMovement;
#endregion

#endregion

#region Sprite
if (place_meeting(x , y + 1 , parCollision) and !place_meeting(x , y , parCollision))
{
	if (!Duck)
	{
		image_speed = .25;
		if (CooldownJump == 0 and CooldowFall == 0)
		{
			if (HorizontalMovement == 0)
			{
				sprite_index = SpriteIdle;
			}
			else
			{
				if (CooldownSwap == 0)
				{
					image_speed = 0.25;
					if (!Skid)
					{
						if (!RunActive)
						{
							sprite_index = SpriteWalk;
						}
						else
						{
							sprite_index = SpriteRun;
						}
					}
					else
					{
						sprite_index = SpriteSkid;
					}
				}
				else
				{
					image_speed = 0;
					sprite_index = SpriteTranceRun;
				}
			}
		}
		else
		{
			sprite_index = SpriteTrance;
		}
	}
	else
	{
		image_speed = .5;
		sprite_index = SpriteDuck;
	}
}
else
{
	image_speed = .25;
	if (ActualJumpSprite == 0)
	{
		sprite_index = SpriteFall;
	}
	else if (ActualJumpSprite == 1)
	{
		sprite_index = SpriteJump;
	}
	else if (ActualJumpSprite >= 2)
	{
		if (!AnimacionSaltoTerminada)
		{
			sprite_index = SpriteJump2;
		}
	}
}
#endregion