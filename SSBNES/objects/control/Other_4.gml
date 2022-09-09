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
}

if (BattleLevel)
{
	VoidLimitStage = scrDameDato(Control.StageList , StageId , "Void limit");
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