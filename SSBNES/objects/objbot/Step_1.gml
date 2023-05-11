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
	case ("Avoid"):
	{
		if (scrExiste(objPlayer))
		{
			Target = objPlayer;
			if (abs(x - Target.x) < 128)
			{
				if (x < Target.x)
				{
					scrKeyActive("Left" , true);
					scrKeyHold("Left" , 2);
					scrKeyActive("Right" , false);
				}
				else
				{
					scrKeyActive("Left" , false);
					scrKeyActive("Right" , true);
					scrKeyHold("Right" , 2);
				}
				if (abs(x - Target.x) < 32 and y == Target.y)
				{
					scrKeyActive("Jump" , true);
				}
				if (abs(x - Target.x) < 64 and y > Target.y)
				{
					if (Target.x < room_width/2)
					{
						scrKeyActive("Left" , false);
						scrKeyActive("Right" , true);
					}
					else if (Target.x > room_width/2)
					{
						scrKeyActive("Left" , true);
						scrKeyActive("Right" , false);
					}
				}
				else if (abs(x - Target.x) < 64 and y < Target.y)
				{
					if (Target.x < room_width/2)
					{
						scrKeyActive("Left" , false);
						scrKeyActive("Right" , true);
					}
					else if (Target.x > room_width/2)
					{
						scrKeyActive("Left" , true);
						scrKeyActive("Right" , false);
					}
				}
			}
			else
			{
				scrKeyActive("Left" , false);
				scrKeyActive("Right" , false);
			}
			if (x < Control.X1Limit or x > Control.X2Limit)
			{
				Mode = "Survive";
			}
		}
		else
		{
			scrKeyActive("Left" , false);
			scrKeyActive("Right" , false);
		}
		break;
	}
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
		if (x < Control.X2Limit and x > Control.X1Limit and scrSolidDetectorBelow())
		{
			Mode = "Avoid";
		}
		if (VerticalMovement > 0 and IsInDanger)
		{
			scrKeyActive("Jump" , true);
		}
		if (FallingVoid and Attacking == 0 and !scrSolidDetectorBelow() and JumpAvailable <= 0)
		{
			if (ds_list_size(ListRecoverActual) > 0)
			{
				scrKeyUseMovs(ds_list_find_value( ListRecoverActual , 0) , true);
				ds_list_delete(ListRecoverActual , 0);
			}
		}
		if (scrSolidDetectorBelow() and Attacking == 0)
		{
			LastMov = "";
			ds_list_clear(ListRecoverActual);
			ds_list_copy(ListRecoverActual , ListRecover);
		}
		if (!IsInDanger)
		{
			scrKeyActive("Jump" , false);
			scrKeyActive("Left" , false);
			scrKeyActive("Right" , false);
			scrKeyActive("Up" , false);
			scrKeyActive("Down" , false);
		}
		#region Mario things / The down aerial spam
		if (LastMov == "Aerial Down" and VerticalMovement > 0 and MarioCooldownRecover == 0)
		{
			scrKeyActive("Attack" , true);
			scrKeyHold("Attack" , 2);
			MarioCooldownRecover = choose(8,10,12);
		}
		if (MarioCooldownRecover > 0)
		{
			MarioCooldownRecover--;
		}
		#endregion
		break;
	}
}

scrKeyPressedUnable();

#endregion