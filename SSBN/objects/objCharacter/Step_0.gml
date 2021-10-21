#region Movement

#region Horizontal Speed
var VarSpeed = 0;
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

#endregion

#region Down Fast
if (Control.DownButtonPressedActive and CooldowFall == 0 and CooldownJump == 0 and !place_meeting(x , y+1 , parCollision))
{
	if (VerticalMovement != 0)
	{
		VerticalMovementLimitExtra = VerticalMovementLimitValue;
		GravityFallDownActive = (GravityFall * 6);
	}
}
#endregion

#region Run

if (SoundSkid > 0)
{
	SoundSkid--;
	if (SoundSkid == 1 and Skid and scrSolidDetectorBelow())
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

#region Trance
if (LastScaleX != ScaleX and (Skid or RunActive) and scrSolidDetectorBelow())
{
	CooldownSwap = 8;
	scrSound(SfxSkid);
	HorizontalMovement = SpeedRun * LastScaleX;
}
#endregion
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
		if (!JumpingInTerrain)
		{
			JumpAvailable--;
			ActualJumpSprite++;
		}
		SaveStopJump = false;
		if (scrSolidDetectorBelow())
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
		JumpingInTerrain = true;
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


/*

//Horizontal Collision
if place_meeting(x+hsp,y,par_wall)
{
    yplus = 0;
    while (place_meeting(x+hsp,y-yplus,par_wall) && yplus <= abs(1*hsp)) yplus += 1;
    if place_meeting(x+hsp,y-yplus,par_wall)
    {
        while (!place_meeting(x+sign(hsp),y,par_wall)) x+=sign(hsp);
        hsp = 0;
    }
    else
    {
        y -= yplus
    }
}
x += hsp;

// Downward slopes
if !place_meeting(x,y,par_wall) && vsp >= 0 && place_meeting(x,y+2+abs(hsp),par_wall)
{while(!place_meeting(x,y+1,par_wall)) {y += 1;}}

// Vertical Collision
*/

if (place_meeting(x , y + VerticalMovement , objBlockSlope45))
{
	while (!place_meeting(x , y  + sign(VerticalMovement) , objBlockSlope45))
	{
		y += sign(VerticalMovement);
	}
	if (VerticalMovement > 0)
	{
		JumpAvailable = Jumps;
		ActualJumpSprite = 0;
		VerticalMovementLimitExtra = 0;
		GravityFallDownActive = 0;
		JumpingInTerrain = false;
		if (!FallReady)
		{
			FallReady = true;
			CooldowFall = 8;	
		}
	}
	VerticalMovement = 0;
}



if (place_meeting(x + HorizontalMovement , y , parSolid))
{
	while (!place_meeting(x + sign(HorizontalMovement) , y , parSolid))
	{
		x += sign(HorizontalMovement);
	}
	HorizontalMovement = 0;
}
if (!place_meeting(x , y , objBlockTransferable) and (VerticalMovement >= 0 and !DuckFall) and (GravityFallDownActive == 0))
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
			GravityFallDownActive = 0;
			JumpingInTerrain = false;
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
		GravityFallDownActive = 0;
		JumpingInTerrain = false;
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
	if (Control.DownButtonActive and scrSolidDetectorBelow())
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

#region Slope
if (place_meeting(x + HorizontalMovement , y , objBlockSlope45))
{
	PlusY = 0;
	while (place_meeting(x+HorizontalMovement,y-PlusY,objBlockSlope45) && PlusY <= abs(1*HorizontalMovement))
	{
		PlusY += 1;
	}
	if (!place_meeting(x + HorizontalMovement , y - PlusY , objBlockSlope45))
	{
		y -= PlusY;
	} 
	else
	{
		while (!place_meeting(x+sign(HorizontalMovement),y,objBlockSlope45))
		{
			x+=sign(HorizontalMovement);
		}
		HorizontalMovement = 0;
	}
}

var AuxDetector = 1;
if (place_meeting(x , y + AuxDetector + abs(HorizontalMovement)  , objBlockSlope45) and !place_meeting(x + HorizontalMovement , y + AuxDetector , objBlockSlope45) and !place_meeting(x + HorizontalMovement , y + AuxDetector , parSolid) and HorizontalMovement != 0)
{
	_PlusY = 1;
	y+= _PlusY;
}
else
{
	_PlusY = 0;
}

#endregion


#region Position
x += HorizontalMovement;
y += VerticalMovement;
#endregion

#endregion

#region Sprite
if (scrSolidDetectorBelow()) and !place_meeting(x , y , parCollision)
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

#region Outside
if (y > room_height)
{
	x = OriginX;
	y = OriginY;
}
#endregion