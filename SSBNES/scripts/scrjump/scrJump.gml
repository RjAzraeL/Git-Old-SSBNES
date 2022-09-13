///@arg horizontal_direction
function scrJump(HorizontalDirection)
{
	if (JumpAvailable > 0)
	{
		scrSound(sfxMarioJump)
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
}

///@arg horizontal_direction
function scrSmallJump(HorizontalDirection)
{
	if (JumpAvailable > 0)
	{
		scrSound(sfxMarioJump);
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
}

///@arg jump_value
function scrFreeJump(Value)
{
	if (!place_meeting(x , y - Value , parSolid) and !place_meeting(x , y - Value , objBlockSlope45))
	{
		VerticalMovement = -Value;
	}
}