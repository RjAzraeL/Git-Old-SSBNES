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
					Layer = 1;
					alarm[0] = 1;
					instance_destroy(objMainMenuButton);
					alarm[1] = 1;
					Layer0Button = 0;
					ActualButton = Layer1Button;
					ButtonA[0] = "Regular M.";
					ButtonA[1] = "Event Match";
					ButtonA[2] = "Stadium";
					ButtonA[3] = "Training";
					ButtonA[4] = "";
					ButtonA[5] = "";
					ButtonA[6] = "";
					ButtonA[7] = "";
					
					ButtonD[0] = "Multiple levels of standard Smash.";
					ButtonD[1] = "Special Smash situation matches.";
					ButtonD[2] = "Mini-game testing ground.";
					ButtonD[3] = "Free training for honing skills.";
					
					ButtonE[0] = "Classic#Adventure#All-Star";
					ButtonE[1] = "";
					ButtonE[2] = "Target Test#Multi-Man Melee";
					ButtonE[3] = "";
					
					MainText = "1-P Mode";
					break;
				}
				case(1):
				{
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
					Layer = 2;
					alarm[0] = 1;
					instance_destroy(objMainMenuButton);
					alarm[1] = 1;
					Layer1Button = 0;
					ActualButton = Layer2Button;
					ButtonA[0] = "Classic";
					ButtonA[1] = "Adventure";
					ButtonA[2] = "All-Star";
					ButtonA[3] = "";
					ButtonA[4] = "";
					ButtonA[5] = "";
					ButtonA[6] = "";
					ButtonA[7] = "";
					
					ButtonD[0] = "Defeat each foe to advance.";
					ButtonD[1] = "Battle though various stages.";
					ButtonD[2] = "Conquer all enemies using.";
					
					ButtonE[0] = "";
					ButtonE[1] = "";
					ButtonE[2] = "";
					ButtonE[3] = "";
					
					MainText = "Regular match";
					break;
				}
				case(2):
				{
					CooldownButton = 5;
					Layer = 3;
					alarm[0] = 1;
					instance_destroy(objMainMenuButton);
					alarm[1] = 1;
					Layer1Button = 2;
					ActualButton = Layer3Button;
					ButtonA[0] = "Target Test";
					ButtonA[1] = "Multi-Man";
					ButtonA[2] = "";
					ButtonA[3] = "";
					ButtonA[4] = "";
					ButtonA[5] = "";
					ButtonA[6] = "";
					ButtonA[7] = "";
					
					ButtonD[0] = "Smash ten targets!";
					ButtonD[1] = "Fight for your life! Fight!";
					ButtonD[2] = "";
					
					ButtonE[0] = "";
					ButtonE[1] = "";
					ButtonE[2] = "";
					ButtonE[3] = "";
					
					MainText = "STADIUM";
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
			Layer = 0;
			alarm[0] = 2;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			Layer1Button = ActualButton;
			ActualButton = Layer0Button;
			
			ButtonT[0] = "1-P Mode";
			ButtonT[1] = "VS. Mode";
			ButtonT[2] = "Extra";
			ButtonT[3] = "Options";
			ButtonT[4] = "Data";
			
			ButtonD[0] = "Solo Smash!";
			ButtonD[1] = "Multiplayer battles!";
			ButtonD[2] = "View extra content.";
			ButtonD[3] = "Game setup.";
			
			ButtonD[4] = "View game records.";
			ButtonE[0] = "Regular Ma.#Event Ma.#Stadium#Training";
			ButtonE[1] = "Melee#Tournament#Special Me.#Custom Rul.#Name Entry";
			ButtonE[2] = "Trophies#Gallery#Lottery#Collection#Cards";
			ButtonE[3] = "Sound#Music#Control#Language#Erase Data"
			ButtonE[4] = "Archives#Sound Test#Melee Rec.#Special#Discord";

			ButtonA[0] = "1-P Mode";
			ButtonA[1] = "VS. Mode";
			ButtonA[2] = "Extra";
			ButtonA[3] = "Options";
			ButtonA[4] = "Data";
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
			MainText = "Main menu";
		}
		if (Layer == 2 or Layer == 3)
		{
			CooldownButton = 5;
			Layer = 1;
			alarm[0] = 2;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			if (Layer == 2)
			{
				Layer2Button = ActualButton;
			}
			if (Layer == 3)
			{
				Layer3Button = ActualButton;
			}
			ActualButton = Layer1Button;
			
			ButtonA[0] = "Regular M.";
			ButtonA[1] = "Event Match";
			ButtonA[2] = "Stadium";
			ButtonA[3] = "Training";
			ButtonA[4] = "";
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = "Multiple levels of standard Smash.";
			ButtonD[1] = "Special Smash situation matches.";
			ButtonD[2] = "Mini-game testing ground.";
			ButtonD[3] = "Free training for honing skills.";
					
			ButtonE[0] = "Classic#Adventure#All-Star";
			ButtonE[1] = "";
			ButtonE[2] = "Target Test#Multi-Man Melee";
			ButtonE[3] = "";
					
			MainText = "1-P Mode";
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