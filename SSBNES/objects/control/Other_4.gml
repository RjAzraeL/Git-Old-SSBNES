#region Check battle stage
for (var i = 0 ; i < ds_list_size(Control.StageList) ; i++ )
{
	if (room == scrDameDato(Control.StageList , i , "Room"))
	{
		BattleLevel = true;
	}
}
#endregion
#region Reset time
BonusTimeSecond = 0;
BonusTimeMinute = 0;
BonusTimeFrame = 0;
MatchEnd = false;
MatchEndSnapshot = false;
BonusDeath = false;
NoMusic = false;
MatchWait = 40;
surface_free(MatchEndSurface);
MatchEndSurface = -1;
#endregion
#region Set
SetReady = scrFileSetLoad();
if (!SetReady and room == rm00Set)
{
	room_goto(rm01ScreenTitle);
}
#endregion
#region Camera
NormalCamera = true;
if (scrIsBonusLevel())
{
	VoidXLimit = 1000;
	alarm[3] = 60;
	NormalCamera = false;
	camera_set_view_border(view_camera[0] , 128 , 112);
}
#endregion
#region Music
Wait = 5;
x = room_width/2;
y = room_height/2;
camera_set_view_pos(view_camera[0], 50 , 0);
if (room == rm02Menu)
{
	scrSetMusic("Menu Theme");
}
else if (room == rm03Versus)
{
	scrSetMusic("Menu Theme");
	#region Reset stats
	CharacterLife[0] = DefaultLifeValue;
	CharacterLife[1] = DefaultLifeValue;
	CharacterLife[2] = DefaultLifeValue;
	CharacterLife[3] = DefaultLifeValue;
	#endregion
}
if (scrIsBonusLevel())
{
	scrSetMusic("Bonus 1");
}

if (BattleLevel)
{
	scrResetCombatBattleVar();
	
	VoidLimitStage = scrDameDato(Control.StageList , StageId , "Void limit");
	X1Limit = scrDameDato(Control.StageList , StageId , "X1 limit");
	X2Limit = scrDameDato(Control.StageList , StageId , "X2 limit");
	VoidXLimit = 300;
	scrSetMusic(scrDameDato(Control.StageList , StageId , "Music"));
	scrResetStats();
}

#endregion
#region Battle
if (BattleLevel)
{
	alarm[0] = 1;
	x = room_width/2;
	y = room_height/2;
	camera_set_view_pos(view_camera[0], room_width/2 , room_height/2);
}
#endregion
#region Instancia
alarm[1] = 2;
#endregion