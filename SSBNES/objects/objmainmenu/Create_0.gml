#region Set variable
var X = -4;

ButtonX[0] = X;
ButtonX[1] = X - 16;
ButtonX[2] = X - 32;
ButtonX[3] = X - 16;
ButtonX[4] = X - 32;
ButtonT[0] = Language.Text_l0o0;
ButtonT[1] = Language.Text_l0o1;
ButtonT[2] = Language.Text_l0o2;
ButtonT[3] = Language.Text_l0o3;
ButtonT[4] = Language.Text_l0o4;
ButtonD[0] = "Solo Smash!";
ButtonD[1] = "Multiplayer battles!";
ButtonD[2] = "View extra content.";
ButtonD[3] = "Game setup.";
ButtonD[4] = "View game records.";
ButtonE[0] = "Regular Ma.#Event Ma.#Stadium#Training";
ButtonE[1] = "Melee#Tournament#Special Me.#Custom Rul.#Name Entry";
ButtonE[2] = "Gallery#Lottery#Collection#Cards#StageBuild.";
ButtonE[3] = "Language#Controls#Audio#Graphics#Erase Data"
ButtonE[4] = "Archives#Sound Test#Melee Rec.#Special#Discord";

ButtonA[0] = Language.Text_l0o0;
ButtonA[1] = Language.Text_l0o1;
ButtonA[2] = Language.Text_l0o2;
ButtonA[3] = Language.Text_l0o3;
ButtonA[4] = Language.Text_l0o4;
ButtonA[5] = "";
ButtonA[6] = "";
ButtonA[7] = "";
MainText = "Main menu";

Layer = Control.MenuActualLayer;
for (var i = 0 ; i < 15 ; i++)
{
	LayerButton[i] = 0;
}
//109 - 224
instance_create_depth(0 , 0 , 300 , objMenuBall);
ActualButton = Control.MenuActualOption;
CooldownButton = 0;
Cap = 0;
alarm[1] = 1;
alarm[2] = 1;
#endregion


/*

Regular Match: Multiple levels of standard Smash.
Classic#Adventure#All-Star

Event Match: Special Smash situation matches.

Stadium: Mini-game testing ground.
Target Test#Multi-Man Melee

Training: Free training for honing skills.

*/