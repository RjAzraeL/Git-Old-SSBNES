#region Set variable
var X = -4;

ButtonX[0] = X;
ButtonX[1] = X - 16;
ButtonX[2] = X - 32;
ButtonX[3] = X - 16;
ButtonX[4] = X - 32;
ButtonT[0] = Language.Text_ml0o0;
ButtonT[1] = Language.Text_ml0o1;
ButtonT[2] = Language.Text_ml0o2;
ButtonT[3] = Language.Text_ml0o3;
ButtonT[4] = Language.Text_ml0o4;
ButtonD[0] = Language.Text_ml0d0;
ButtonD[1] = Language.Text_ml0d1;
ButtonD[2] = Language.Text_ml0d2;
ButtonD[3] = Language.Text_ml0d3;
ButtonD[4] = Language.Text_ml0d4;
ButtonE[0] = Language.Text_ml0e0;
ButtonE[1] = Language.Text_ml0e1;
ButtonE[2] = Language.Text_ml0e2;
ButtonE[3] = Language.Text_ml0e3;
ButtonE[4] = Language.Text_ml0e4;
ButtonA[0] = Language.Text_ml0o0;
ButtonA[1] = Language.Text_ml0o1;
ButtonA[2] = Language.Text_ml0o2;
ButtonA[3] = Language.Text_ml0o3;
ButtonA[4] = Language.Text_ml0o4;
ButtonA[5] = "";
ButtonA[6] = "";
ButtonA[7] = "";
MainText = Language.Text_mtl0;

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