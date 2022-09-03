function scrStepOnFloor()
{
	if (VerticalMovement > 0)
	{
		JumpAvailable = Jumps;
		ActualJumpSprite = 0;
		VerticalMovementLimitExtra = 0;
		GravityFallDownActive = 0;
		JumpingInTerrain = false;
		Damaged = 0;
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
function scrInAir()
{
	if (VerticalMovement > 0)
	{
		return true;
	}
	return false;
}