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
			var X = room_width/2;
			var Y = 0;
			var Spawn = scrGiveMeSpawn(i , true);
			if (scrExiste(Spawn))
			{
				X = Spawn.x;
				Y = Spawn.y;
			}
			var Ch = instance_create_depth(X , Y , 0 , ChObj);
			Ch.Position = i;
			Ch.Start = true;
			TotalCharacters++;
		}
	}
}
#endregion