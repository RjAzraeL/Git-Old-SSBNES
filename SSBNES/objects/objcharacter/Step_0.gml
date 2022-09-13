#region Movement

#region Buttons variables

if (DownButtonPressedActive)
{
	TimeButtonDown = 10;
}
if (UpButtonPressedActive)
{
	TimeButtonUp = 10;
}

if (TimeButtonDown > 0)
{
	TimeButtonDown--;
}
if (TimeButtonUp > 0)
{
	TimeButtonUp--;
}
#endregion

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

#region Platform
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
	y = lerp(y , YPlatform+5 , .1);
	if (y >= YPlatform)
	{
		PlatformReady = true;
	}
	if (scrUseKeyboardAvailable() and PlatformReady)
	{
		scrOutPlatform();
	}
	if (Start)
	{
		PlatformCooldown = 0;
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
if (Platform)
{
	VarSpeed = 0;
}
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
		if (SavedHorizontalMovement == 0)
		{
			if (HorizontalDirection != 0)
			{
				HorizontalMovement = ((HorizontalDirection * AcelerationValue) ) * AcelerationPostDamage;
			}
			else
			{
				HorizontalMovement = ((AcelerationValue * ScaleX) ) * AcelerationPostDamage;
			}
		}
		else
		{
			HorizontalMovement = SavedHorizontalMovement;
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
		if (SavedHorizontalMovement != 0)
		{
			SavedHorizontalMovement = lerp(SavedHorizontalMovement , 0 , .1);
			if (SavedHorizontalMovement < 0.1 and SavedHorizontalMovement > -0.1)
			{
				SavedHorizontalMovement = 0;
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

#region Border
if ((TimeAttacking > 0 or AttackingHold or Attacking) and Damaged == 0 and !place_meeting(x + sign(HorizontalMovement)*8 , y + 4 , objBlock) and place_meeting(x , y + 1 , objBlock) and !place_meeting(x , y , objBlock))
{
	HorizontalMovement = 0;
	AcelerationValue = 0;
}
if ((TimeAttacking > 0 or AttackingHold or Attacking) and Damaged == 0 and !place_meeting(x + sign(HorizontalMovement)*8 , y + 4 , objBlockTransferable) and place_meeting(x , y + 1 , objBlockTransferable) and !place_meeting(x , y , objBlockTransferable))
{
	HorizontalMovement = 0;
	AcelerationValue = 0;
}
#endregion

#region Gravity
if (!Platform)
{
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
}

#endregion

#region Down Fast
if (DownButtonPressedActive and CooldowFall == 0 and CooldownJump == 0 and !place_meeting(x , y+1 , parCollision) and !Platform and !Attacking and TimeAttacking == 0 and !JumpStop and !Platform)
{
	if (VerticalMovement != 0)
	{
		VerticalMovementLimitExtra = VerticalMovementLimitValue;
		GravityFallDownActive = (GravityFall * 6);
	}
}
#endregion

#region Run
if (!Platform)
{
	if (SoundSkid > 0)
	{
		SoundSkid--;
		if (SoundSkid == 1 and Skid and scrSolidDetectorBelow())
		{
			scrSound(sfxMarioSkid);
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
	if (!Platform and !RootAttack and Damaged == 0)
	{
		if (LastScaleX != ScaleX and (Skid or RunActive) and scrSolidDetectorBelow())
		{
			CooldownSwap = 6;
			scrSound(sfxMarioSkid);
			HorizontalMovement = SpeedRun * LastScaleX;
		}
	}
	#endregion
	LastHorizontalDirection = HorizontalDirection;
	LastScaleXSprite = ScaleXSprite;
	LastScaleX = ScaleX;
	if (LeftButtonPressedActive or RightButtonPressedActive)
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
}
#endregion

#region Jump
if (!Platform and Damaged == 0 and !Attacking and TimeAttacking == 0)
{
	if (JumpAvailable > 0 and JumpButtonActive and CooldownJump == 0 and CooldowFall == 0)
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
}

if (JumpButtonReleaseActive)
{
	SaveStopJump = true;
	if (!JumpStop)
	{
		JumpStop = true;
	}
}

if (!Platform and Damaged == 0 and !Attacking and TimeAttacking == 0)
{
	if (JumpStop or SaveStopJump and CooldownJump == 0 and CooldowFall == 0)
	{
		if (VerticalMovement < 0)
		{
			VerticalMovement += JumpStopSpeed;
		}
	}
}
if (JumpTime > 0)
{
	JumpTime--;
}
#endregion

#region Movs
scrUseMovs();
#region Use Mov
if (TimeAttacking > 0)
{
	TimeAttacking--;
}
if (Attacking or TimeAttacking > 0)
{
	if (ds_list_size(MoveQueue) > 0)
	{
		var Package = ds_list_find_value(MoveQueue , 0);
		if (Package[? "frame"] == image_index)
		{
			if (Package[? "id"] != -1)
			{
				scrExecuteMovs(Package[? "id"]);
				ds_list_delete(MoveQueue , 0);
			}
		}
	}
}
#endregion
#endregion

#region Collision
if (Damaged != 0)
{
	if (place_meeting(x + HorizontalMovement , y , parSolid))
	{
		HorizontalMovement *= -1;
	}
	if (place_meeting(x , y + VerticalMovement , parSolid))
	{
		VerticalMovement *= -1;
	}
	if (!place_meeting(x , y , objBlockTransferable) and (VerticalMovement >= 0))
	{
		if (place_meeting(x , y + VerticalMovement , objBlockTransferable))
		{
			VerticalMovement *= -1;
		}
	}
	if (place_meeting(x , y + VerticalMovement*1.2 , objBlockSlope45))
	{
		VerticalMovement *= -1;
	}
	if (place_meeting(x + HorizontalMovement*1.2 , y , objBlockSlope45))
	{
		HorizontalMovement *= -1;
	}
}
else
{
	if (place_meeting(x , y + VerticalMovement+1 , objBlockSlope45))
	{
		while (!place_meeting(x , y  + sign(VerticalMovement+1) , objBlockSlope45))
		{
			y += sign(VerticalMovement+1);
		}
		scrStepOnFloor();
	}

	if (place_meeting(x + HorizontalMovement , y , parSolid))
	{
		while (!place_meeting(x + sign(HorizontalMovement) , y , parSolid))
		{
			x += sign(HorizontalMovement);
		}
		HorizontalMovement = 0;
	}
	if (!place_meeting(x , y , objBlockTransferable) and (VerticalMovement >= 0 and !DuckFall) and (GravityFallDownActive == 0) and Damaged == 0)
	{
		if (place_meeting(x , y + VerticalMovement , objBlockTransferable))
		{
			while (!place_meeting(x , y  + sign(VerticalMovement) , objBlockTransferable))
			{
				y += sign(VerticalMovement);
			}
			scrStepOnFloor();
		}
	}
	if (!place_meeting(x , y + 1 , parCollision) and HorizontalMovement >= 0)
	{
		FallReady = false;
	}

	if (place_meeting(x , y + VerticalMovement , parSolid))
	{
		while (!place_meeting(x , y  + sign(VerticalMovement) , parSolid))
		{
			y += sign(VerticalMovement);
		}
		scrStepOnFloor();
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
}

#endregion

#region Cooldown Fall Colission
if (CooldowFall > 0)
{
	CooldowFall--;
}
#endregion

#region Duck
if (CooldownJump == 0 and CooldowFall == 0 and !RootAttack and Damaged == 0 and !Attacking and TimeAttacking == 0)
{
	if (DownButtonReleasedActive and Duck)
	{
		DuckTime = 15;
	}
	if (DuckTime > 0)
	{
		DuckTime--;
	}
	if (DownButtonActive and scrSolidDetectorBelow())
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
else
{
	Duck = false;
	DuckFall = false;
	mask_index = MaskNormal;
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

#region Damage
Control.CharacterPorcentage[Position] = LifePorcentage;
if (Damaged > 0)
{
	Damaged--;
}
#endregion

#region Sprite
if (Damaged == 0)
{
	image_speed = .25;
	if (!Platform)
	{
		if (!Attacking and TimeAttacking == 0)
		{
			image_speed = .25;
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
		}
		else
		{
			sprite_index = SpriteAttacking;
			if (!AttackingHold)
			{
				image_speed = SpriteAttackingSpeed;
			}
			else
			{
				image_index = AttackingHoldIndex;
				image_speed = 0;
			}
		}
	}
	else
	{
		image_speed = .25;
		sprite_index = SpriteIdle;
	}
}
else
{
	image_speed = .25;
	sprite_index = SpriteHurt;
}
#endregion

#region Outside
if (y > room_height + 64 and !Dead)
{
	Dead = true;
	scrSound(sfxKO);
	
	if (Control.CharacterLife[Position] > 0)
	{
		var X = room_width/2;
		var Spawn = scrGiveMeSpawn(Position , false);
		if (scrExiste(Spawn))
		{
			X = Spawn.x;
		}
		var Character = instance_create_depth(X , -sprite_height , 0 , object_index);
		Character.Position = Position;
		Character.Start = false;
		if (scrExiste(Spawn))
		{
			Character.YPlatform = Spawn.y;
		}
		Control.CharacterLife[Position]--;
	}
	instance_destroy();
}
#endregion

#region State
if (Damaged == 0)
{
	if (place_meeting(x , y + abs(VerticalMovement + 4) , parCollision ) and VerticalMovement == 0)
	{
		if (HorizontalMovement != 0)
		{
			State = "Walk";
		}
		else
		{
			State = "Idle";
		}
	}
	else
	{
		State = "In air";
	}
}
else
{
	State = "Damaged";
}
#endregion