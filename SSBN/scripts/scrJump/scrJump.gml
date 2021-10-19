///@arg horizontal_direction
function scrJump(HorizontalDirection)
{
	scrSound(SfxJump)
	JumpAvailable--;
	JumpStop = false;
	if (ActualJumpSprite == 0)
	{
		VerticalMovement = -JumpValue;
	}
	else
	{
		VerticalMovement = -(JumpValue - ( ActualJumpSprite * (JumpValue/10) ));
	}
	ActualJumpSprite++;
	AnimacionSaltoTerminada = false;
	if (HorizontalDirection != 0)
	{
		ScaleXSprite = sign(HorizontalDirection);
	}
}