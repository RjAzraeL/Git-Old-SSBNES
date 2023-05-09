#region Change mentality
if (!Recover)
{
	if (place_meeting(x , y + 4 , parCollision))
	{
		alarm[7] = 180;
		switch(Style)
		{
			case("Brute"):
			{
				ChaseStyle = "Go max";
				if (scrProbable(.2))
				{
					ChaseStyle = "Go min";
				}
				if (scrExiste(Target))
				{
					if (Target.LifePorcentage < 80)
					{
						Mentality = "Close";
					}
					else
					{
						Mentality = "Range";
					}
				}
				else
				{
					alarm[7] = 30;
				}
				break;
			}
			case("Finisher"):
			{
				ChaseStyle = "Go min";
				if (scrProbable(.1))
				{
					ChaseStyle = "Go max";
				}
				if (scrExiste(Target))
				{
					if (Target.LifePorcentage < 80)
					{
						Mentality = "Range";
					}
					else
					{
						Mentality = "Close";
					}
				}
				else
				{
					alarm[7] = 30;
				}
				break;
			}
			default:
			{
				Mentality = choose("Close" , "Range");
			}
		}
	}
	else
	{
		alarm[7] = 60;
	}
}
else
{
	alarm[7] = 30;
}
#endregion