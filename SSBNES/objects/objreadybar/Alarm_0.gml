#region Ready
alarm[0] = 1;
Ready = false;
PlayersReady = 4;
for (var i = 0 ; i < instance_number(objPlayerSquare) ; i++)
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
visible = Ready;
#endregion