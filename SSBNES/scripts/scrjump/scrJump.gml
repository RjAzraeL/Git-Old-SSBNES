///@arg horizontal_direction
function scrJump(HorizontalDirection)
{
	scrSound(SfxJump)
	JumpAvailable--;
	JumpStop = false;
	if (ActualJumpSprite == 0)
	{
		var Value = JumpValue;
		if (!place_meeting(x , y - Value , parSolid))
		{
			VerticalMovement = -Value;
		}
	}
	else
	{
		var Value = (JumpValue - ( ActualJumpSprite * (JumpValue/10) ));
		if (!place_meeting(x , y - Value , parSolid))
		{
			VerticalMovement = -Value;
		}
	}
	ActualJumpSprite++;
	AnimacionSaltoTerminada = false;
	if (HorizontalDirection != 0)
	{
		ScaleXSprite = sign(HorizontalDirection);
	}
}

///@arg horizontal_direction
function scrSmallJump(HorizontalDirection)
{
	scrSound(SfxJump);
	var Value = (JumpValue - (JumpValue/1.5) );
	if (!place_meeting(x , y - Value , parSolid))
	{
		VerticalMovement = -Value;
	}
	if (HorizontalDirection != 0)
	{
		ScaleXSprite = sign(HorizontalDirection);
	}
}