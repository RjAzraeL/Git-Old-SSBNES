function scrStepOnFloor()
{
	if (VerticalMovement > 0)
	{
		Recovery = true;
		JumpAvailable = Jumps;
		ActualJumpSprite = 0;
		VerticalMovementLimitExtra = 0;
		GravityFallDownActive = 0;
		JumpingInTerrain = false;
		AerialAvailable = true;
		ds_list_clear(AerialAvaiableList);
		if (!FallReady)
		{
			FallReady = true;
			CooldowFall = 8;	
		}
	}
	VerticalMovement = 0;
}
function scrStepOnFloorVertical()
{
	if (VerticalMovement > 0)
	{
		Recovery = true;
		JumpAvailable = Jumps;
		ActualJumpSprite = 0;
		VerticalMovementLimitExtra = 0;
		GravityFallDownActive = 0;
		JumpingInTerrain = false;
		AerialAvailable = true;
		ds_list_clear(AerialAvaiableList);
	}
}
function scrInAir()
{
	if (VerticalMovement > 0)
	{
		return true;
	}
	return false;
}