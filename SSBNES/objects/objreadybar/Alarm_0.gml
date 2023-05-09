#region Ready
alarm[0] = 1;
Ready = false;
PlayersReady = 4;
if (room == rm03Versus)
{
	for (var i = 0 ; i < 4 ; i++)
	{
		var Instance = instance_find(objPlayerSquare , i);
		Control.CharacterType[i] = Instance.Ide;
		Control.CharacterReady[i] = Instance.Ready;
		Control.CharacterId[i] = Instance.IdeCharacter;
		if (Instance.Ide == 3 or !Instance.Ready)
		{
			PlayersReady--;
		}
	}
	if (PlayersReady >= 2)
	{
		Ready = true;
	}
}
if (room == rmBn0)
{
	Ready = true;
	var Instance = instance_find(objPlayerSquare , 0);
	if (scrExiste(objPlayerSquare))
	{
		Control.CharacterType[0] = Instance.Ide;
		Control.CharacterReady[0] = Instance.Ready;
		Control.CharacterId[0] = Instance.IdeCharacter;
		if (Instance.Ide == 3 or !Instance.Ready)
		{
			Ready = false;
		}
	}
}
visible = Ready;
#endregion