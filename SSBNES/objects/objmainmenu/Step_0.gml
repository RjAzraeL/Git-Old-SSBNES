#region Move button
if (CooldownButton == 0)
{
	if (Control.JumpButtonPressedActive)
	{
		scrSound(sfxButtonOk);
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
				case(3):
				{
					CooldownButton = 5;
					scrLayerMainMenu(6);
					break;
				}
				case(4):
				{
					CooldownButton = 5;
					scrLayerMainMenu(7);
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
		else if(Layer == 3)
		{
			switch(ActualButton)
			{
				case(0):
				{
					room_goto(rmBn0);
					break;
				}
			}
		}
		else if(Layer == 4)
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
		if (Layer == 0)
		{
			audio_stop_all();
			Control.IndexMusic = sndOst01Opening;
			room_goto(rm01ScreenTitle);
		}
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
		if (Layer == 4 or Layer == 5 or Layer == 6 or Layer == 7)
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