#region Ready
alarm[0] = 1;
Ready = false;
PlayersReady = 4;
for (var i = 0 ; i < 4 ; i++)
{
	var Instance = instance_find(objPlayerSquare , i);
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