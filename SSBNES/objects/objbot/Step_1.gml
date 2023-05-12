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
	case ("Rage"):
	{
		if (scrExiste(Target))
		{
			if (RageTime <= 0)
			{
				scrKeyActive("Attack" , false);
				scrKeyActive("Right" , false);
				scrKeyActive("Left" , false);
				scrKeyReleased("Jump");
				Mode = "Avoid";
				RageTime = 120;
			}
			else
			{
				RageTime--;
				if (!Target.Platform)
				{
					if (x < Target.x - 16)
					{
						scrKeyActive("Right" , true);
						scrKeyHold("Right" , 2);
						scrKeyActive("Left" , false);
					}
					else if (x > Target.x + 16)
					{
						scrKeyActive("Right" , false);
						scrKeyActive("Left" , true);
						scrKeyHold("Left" , 2);
					}
					else
					{
						scrKeyActive("Right" , false);
						scrKeyActive("Left" , false);
						scrKeyReleased("Jump");
					}
				}
				if (y < Target.y)
				{
					scrKeyActive("Down" , true);
					scrKeyHold("Down" , 2);
				}
				else if (y > Target.y - 4)
				{
					if (!scrSolidDetectorBelow())
					{
						scrKeyUseMovs("Aerial Up" , true);
					}
					else
					{
						scrKeyActive("Jump" , true);
					}
				}
				if (Attacking == 0 and distance_to_object(Target) < 16)
				{
					scrKeyUseMovs( ds_list_find_value(ListMelee , irandom_range(0,ds_list_size(ListMelee)-1)) , true );
				}
			}
		}
		if (scrSolidDetectorBelow() and Attacking == 0)
		{
			LastMov = "";
		}
		if (x < Control.X1Limit or x > Control.X2Limit or FallingVoid)
		{
			scrKeyReleased("Attack");
			Mode = "Survive";
		}
		break;
	}
	case ("Melee"):
	{
		if (scrExiste(Target))
		{
			if (distance_to_object(Target) > 24)
			{
				scrKeyActive("Attack" , false);
				scrKeyActive("Right" , false);
				scrKeyActive("Left" , false);
				scrKeyReleased("Jump");
				Mode = "Avoid";
			}
			else
			{
				if (abs(y - Target.y) <= 8)
				{
					if (x < Target.x - 8)
					{
						scrKeyActive("Right" , true);
						scrKeyHold("Right" , 2);
						scrKeyActive("Left" , false);
					}
					else if (x > Target.x + 8)
					{
						scrKeyActive("Right" , false);
						scrKeyActive("Left" , true);
						scrKeyHold("Left" , 2);
					}
					if (Attacking == 0)
					{
						scrKeyUseMovs( ds_list_find_value(ListMelee , irandom_range(0,ds_list_size(ListMelee)-1)) , true );
					}
				}
				else
				{
					if (y < Target.y)
					{
						scrKeyActive("Down" , true);
						scrKeyHold("Down" , 3);
					}
					else
					{
						if (!scrSolidDetectorBelow())
						{
							scrKeyUseMovs("Aerial Up" , true);
						}
						else
						{
							scrKeyActive("Jump" , true);
							scrKeyHold("Jump" , 4);
						}
					}
				}
			}
		}
		if (scrSolidDetectorBelow() and Attacking == 0)
		{
			LastMov = "";
		}
		if (x < Control.X1Limit or x > Control.X2Limit or FallingVoid)
		{
			Mode = "Survive";
		}
		break;
	}
	case ("Range"):
	{
		if (scrExiste(Target))
		{
			RangeTime++;
			if (RangeTime == 1)
			{
				scrKeyReleased("Down");
				scrKeyReleased("Up");
				scrKeyActive("Up" , false);
			}
			if (x < Target.x and ScaleX < 0)
			{
				ScaleXSprite = 1;
				scrKeyActive("Left" , false);
				scrKeyActive("Right" , true);
				scrKeyHold("Right" , 4);
			}
			else if (x > Target.x and ScaleX > 0)
			{
				ScaleXSprite = -1;
				scrKeyActive("Right" , false);
				scrKeyActive("Left" , true);
				scrKeyHold("Left" , 4);
			}
			if (Attacking == 0 and y <= Target.y and HorizontalMovement == 0)
			{
				scrKeyUseMovs(ds_list_find_value( ListRange , irandom(ds_list_size(ListRange))) , true);
			}
			else if (Attacking == 0 and y > Target.y)
			{
				if (!scrSolidDetectorBelow())
				{
					scrKeyUseMovs("Aerial Up" , true);
				}
				else
				{
					scrKeyActive("Jump" , true);
					scrKeyHold("Jump" , 4);
				}
			}
			if (distance_to_object(Target) < 32 and Attacking == 0 and Target.Attacking == 0)
			{
				scrKeyReleased("Attack");
				if (scrProbable(.75))
				{
					Mode = "Melee";
				}
				else
				{
					RageTime = 180;
					Mode = "Rage";
				}
			}
			if (distance_to_object(Target) < 32 and Target.Attacking != 0)
			{
				scrKeyReleased("Attack");
				Mode = "Avoid";
			}
		}
		if (RangeTime > 220)
		{
			RangeTime = 0;
			RageTime = 120;
			Mode = "Rage";
		}
		if (scrSolidDetectorBelow() and Attacking == 0)
		{
			LastMov = "";
		}
		if (x < Control.X1Limit or x > Control.X2Limit or FallingVoid)
		{
			Mode = "Survive";
		}
		break;
	}
	case ("Avoid"):
	{
		AvoidTime++;
		if (scrExiste(objPlayer))
		{
			scrKeyReleased("Down");
			scrKeyReleased("Up");
			Target = objPlayer;
			if (abs(x - Target.x) < 96)
			{
				if (abs(y - Target.y) < 32)
				{
					if (x < Target.x)
					{
						if (x > Control.X1Limit + 32)
						{
							scrKeyActive("Left" , true);
							scrKeyHold("Left" , 2);
							scrKeyActive("Right" , false);
						}
					}
					else
					{
						if (x < Control.X2Limit - 32)
						{
							scrKeyActive("Left" , false);
							scrKeyActive("Right" , true);
							scrKeyHold("Right" , 2);
						}
					}
				}
				if (distance_to_object(Target) < 32 and abs(Target.y - y) < 4)
				{
					scrKeyActive("Jump" , true);
				}
				if (abs(x - Target.x) < 64 and y > Target.y)
				{
					if (Target.x < room_width/2)
					{
						scrKeyHold("Right" , 2);
						scrKeyActive("Left" , false);
						scrKeyActive("Right" , true);
						
					}
					else if (Target.x > room_width/2)
					{
						scrKeyHold("Left" , 2);
						scrKeyActive("Left" , true);
						scrKeyActive("Right" , false);
					}
				}
				else if (abs(x - Target.x) < 64 and y < Target.y)
				{
					if (Target.x < room_width/2)
					{
						scrKeyHold("Right" , 2);
						scrKeyActive("Left" , false);
						scrKeyActive("Right" , true);
					}
					else if (Target.x > room_width/2)
					{
						scrKeyHold("Left" , 2);
						scrKeyActive("Left" , true);
						scrKeyActive("Right" , false);
					}
				}
			}
			else
			{
				scrKeyActive("Left" , false);
				scrKeyActive("Right" , false);
				scrKeyActive("Jump" , false);
				scrKeyActive("Attack" , false);
				Mode = "Range";
			}
			if (x < Control.X1Limit or x > Control.X2Limit or FallingVoid)
			{
				Mode = "Survive";
			}
		}
		else
		{
			scrKeyActive("Left" , false);
			scrKeyReleased("Jump");
			scrKeyActive("Right" , false);
		}
		AvoidTime++;
		if (AvoidTime > 220)
		{
			AvoidTime = 0;
			scrKeyActive("Left" , false);
			scrKeyActive("Right" , false);
			scrKeyActive("Jump" , false);
			scrKeyActive("Attack" , false);
			Mode = "Range";
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
			Mode = "Avoid";
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