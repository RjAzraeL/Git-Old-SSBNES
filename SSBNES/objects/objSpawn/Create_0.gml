#region Set var
Pos = -1;
if (scrIsBonusLevel())
{
	var ChObj = objPlayer;
	if (Control.CharacterType[0] == 2)
	{
		ChObj = objBot;
	}
	var Ply = instance_create_depth(x , y , 0 , ChObj);
	Ply.Position = 0;
	Ply.ReviveDefault = false;
	with (Ply)
	{
		scrOutPlatform();
	}
}
#endregion