#region Move button
if (CooldownButton == 0)
{
	if (Control.JumpButtonPressedActive)
	{
		if (Layer == 0)
		{
			switch(ActualButton)
			{
				case(0):
				{
					CooldownButton = 5;
					scrLayerMainMenu(1);
					break;
				}
				case(1):
				{
					CooldownButton = 5;
					scrLayerMainMenu(4);
					break;
				}
				case(2):
				{
					CooldownButton = 5;
					scrLayerMainMenu(5);
					break;
				}
			}
		}
		else if(Layer == 1)
		{
			switch(ActualButton)
			{
				case(0):
				{
					CooldownButton = 5;
					scrLayerMainMenu(2);
					break;
				}
				case(2):
				{
					CooldownButton = 5;
					scrLayerMainMenu(3);
					break;
				}
			}
		}
		else if(Layer == 2)
		{
			switch(ActualButton)
			{
				case(0):
				{
					room_goto(rm03Versus);
					break;
				}
			}
		}
	}
	if (Control.AttackButtonPressedActive)
	{
		if (Layer == 1)
		{
			CooldownButton = 5;
			scrLayerMainMenu(0);
		}
		if (Layer == 2 or Layer == 3)
		{
			CooldownButton = 5;
			scrLayerMainMenu(1);
		}
		if (Layer == 4 or Layer == 5)
		{
			CooldownButton = 5;
			scrLayerMainMenu(0);
		}
	}
	if (Control.UpButtonActive)
	{
		CooldownButton = 5;
		ActualButton--;
		if (ActualButton < 0)
		{
			ActualButton = Cap;
		}
		alarm[0] = 1;
	}
	if (Control.DownButtonActive)
	{
		ActualButton++;
		CooldownButton = 5;
		if (ActualButton > Cap)
		{
			ActualButton = 0;
		}
		alarm[0] = 1;
	}
}
else
{
	CooldownButton--;
}
#endregion