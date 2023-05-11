#region Falling void
#region Check void
FallingVoid = false;
if (scrExiste(VoidChecker))
{
	if (VoidChecker.visible)
	{
		FallingVoid = true;
		Recover = true;
	}
}
#endregion
#endregion

#region CPU

switch (Mode)
{
	case ("Survive"):
	{
		var IsInDanger = false;
		if (x < Control.X1Limit)
		{
			scrKeyActive("Right" , true);
			scrKeyActive("Left" , false);
			IsInDanger = true;
		}
		if (x > Control.X2Limit)
		{
			scrKeyActive("Right" , false);
			scrKeyActive("Left" , true);
			IsInDanger = true;
		}
		if (VerticalMovement > 0 and IsInDanger)
		{
			scrKeyActive("Jump" , true);
		}
		if (FallingVoid)
		{
			scrKeyUseMovs("Aerial Up" , true);
		}
		if (!IsInDanger)
		{
			scrKeyActive("Jump" , false);
			scrKeyActive("Left" , false);
			scrKeyActive("Right" , false);
		}
		break;
	}
}

scrKeyPressedUnable();

#endregion