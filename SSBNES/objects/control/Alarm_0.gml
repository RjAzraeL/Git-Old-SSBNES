#region Create characters
if (BattleLevel)
{
	TotalCharacters = 0;
	for (var i = 0 ; i < 4 ; i++)
	{
		var ChObj = objPlayer;
		if (CharacterType[i] == 2)
		{
			ChObj = objBot;
		}
		if (CharacterReady[i])
		{
			var Ch = instance_create_depth(room_width/2 , 16 , 0 , ChObj);
			Ch.Position = i;
			TotalCharacters++;
		}
	}
}
#endregion