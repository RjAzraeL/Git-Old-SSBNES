///@arg layer
function scrLayerMainMenu(LocalLayer)
{
	switch(LocalLayer)
	{
		case(0):
		{
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
			ButtonE[1] = "Melee#Tournament#Special Rul.#Custom Rul.#Name Entry";
			ButtonE[2] = "Gallery#Lottery#Collection#Cards#Stage Build";
			ButtonE[3] = "Language#Controls#Audio#Graphics#Erase Data"
			ButtonE[4] = "Archives#Sound Test#Melee Rec.#Special#Discord";

			ButtonA[0] = "1-P Mode";
			ButtonA[1] = "VS. Mode";
			ButtonA[2] = "Extra";
			ButtonA[3] = "Options";
			ButtonA[4] = "Data";
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
			MainText = "MAIN MENU";
			break;
		}
		case(1):
		{
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
			ButtonE[2] = "Target Tes.#Platform T.#Race Test #Training";
			ButtonE[3] = "";
					
					
					
			MainText = "1-P MODE";
			break;
		}
		case(2):
		{
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
					
			MainText = "REGULAR MATCH";
			break;
		}
		case(3):
		{
			Layer = 3;
			alarm[0] = 1;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			Layer1Button = 2;
			ActualButton = Layer3Button;
			ButtonA[0] = "Target Test";
			ButtonA[1] = "Platform Test";
			ButtonA[2] = "Race Test";
			ButtonA[3] = "Multi-Man";
			ButtonA[4] = "";
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = "Smash ten targets!";
			ButtonD[1] = "Step on ten platforms!";
			ButtonD[2] = "Get out of the room!";
			ButtonD[3] = "Fight for your life! Fight!";
					
			ButtonE[0] = "";
			ButtonE[1] = "";
			ButtonE[2] = "";
			ButtonE[3] = "";
					
			MainText = "STADIUM";
			break;
		}
		case(4):
		{
			Layer = 4;
			alarm[0] = 1;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			Layer0Button = 1;
			ActualButton = Layer4Button;
			ButtonA[0] = "Melee";
			ButtonA[1] = "Tournament";
			ButtonA[2] = "Special Rules";
			ButtonA[3] = "Custom Rules";
			ButtonA[4] = "Name Entry";
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = "A standard Smash battle.";
			ButtonD[1] = "A tournament for up to 64 players.";
			ButtonD[2] = "A melee with special rules.";
			ButtonD[3] = "Change the melee rules here.";
			ButtonD[4] = "Enter your name.";
					
			ButtonE[0] = "";
			ButtonE[1] = "";
			ButtonE[2] = "";
			ButtonE[3] = "";
			ButtonE[4] = "";
					
			MainText = "VS. MODE";
			break;
		}
		case(5):
		{
			Layer = 5;
			alarm[0] = 1;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			Layer0Button = 2;
			ActualButton = Layer5Button;
			ButtonA[0] = "Gallery";
			ButtonA[1] = "Lottery";
			ButtonA[2] = "Collection";
			ButtonA[3] = "Cards";
			ButtonA[4] = "Stage Build";
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = "View trophies you've collected.";
			ButtonD[1] = "Use the coins to get trophies!";
			ButtonD[2] = "View your entire trophy collection.";
			ButtonD[3] = "View cards you've collected.";
			ButtonD[4] = "Create your own battle stage!";
					
			ButtonE[0] = "";
			ButtonE[1] = "";
			ButtonE[2] = "";
			ButtonE[3] = "";
			ButtonE[4] = "";
					
			MainText = "EXTRA";
			break;
		}
		case(6):
		{
			Layer = 6;
			alarm[0] = 1;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			Layer0Button = 3;
			ActualButton = Layer6Button;
			ButtonA[0] = "Language";
			ButtonA[1] = "Controls";
			ButtonA[2] = "Audio";
			ButtonA[3] = "Graphics";
			ButtonA[4] = "Erase Data";
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = "..............................";
			ButtonD[1] = "..............................";
			ButtonD[2] = "..............................";
			ButtonD[3] = "..............................";
			ButtonD[4] = "..............................";
					
			ButtonE[0] = "";
			ButtonE[1] = "";
			ButtonE[2] = "";
			ButtonE[3] = "";
			ButtonE[4] = "";
					
			MainText = "OPTIONS";
			break;
		}
		case(7):
		{
			Layer = 7;
			alarm[0] = 1;
			instance_destroy(objMainMenuButton);
			alarm[1] = 1;
			Layer0Button = 4;
			ActualButton = Layer7Button;
			ButtonA[0] = "Archives";
			ButtonA[1] = "Sound Test";
			ButtonA[2] = "Melee Records";
			ButtonA[3] = "Special";
			ButtonA[4] = "Discord";
			ButtonA[5] = "";
			ButtonA[6] = "";
			ButtonA[7] = "";
					
			ButtonD[0] = "..............................";
			ButtonD[1] = "..............................";
			ButtonD[2] = "..............................";
			ButtonD[3] = "..............................";
			ButtonD[4] = "..............................";
					
			ButtonE[0] = "";
			ButtonE[1] = "";
			ButtonE[2] = "";
			ButtonE[3] = "";
			ButtonE[4] = "";
			
			MainText = "DATA";
			break;
		}
	}
	ActualButton = 0;
}