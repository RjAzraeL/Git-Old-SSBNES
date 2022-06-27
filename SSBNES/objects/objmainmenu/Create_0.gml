#region Set variable
var X = -4;

ButtonX[0] = X;
ButtonX[1] = X - 16;
ButtonX[2] = X - 32;
ButtonX[3] = X - 16;
ButtonX[4] = X - 32;
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

Layer = 0;
Layer0Button = 0;
Layer1Button = 0;
//109 - 224
instance_create_depth(0 , 0 , 5 , objMenuBall);
ActualButton = 0;
CooldownButton = 0;
Cap = 0;
alarm[1] = 1;
#endregion


/*

Regular Match: Multiple levels of standard Smash.
Classic#Adventure#All-Star

Event Match: Special Smash situation matches.

Stadium: Mini-game testing ground.
Target Test#Multi-Man Melee

Training: Free training for honing skills.

*/