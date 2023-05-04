#region Set var
Pos = -1;
if (room == rmBn1Mario)
{
	var Ply = instance_create_depth(x , y , 0 , objPlayer);
	Ply.Position = 0;
	Ply.ReviveDefault = false;
	with (Ply)
	{
		scrOutPlatform();
	}
}
#endregion