#region Use mov
if (Attacking)
{
	if (ds_list_size(MoveQueue) > 0)
	{
		var Package = ds_list_find_value(MoveQueue , 0);
		if (Package[? "frame"] == image_index)
		{
			if (Package[? "id"] != -1)
			{
				scrExecuteMovs(Package[? "id"]);
				ds_list_delete(MoveQueue , 0);
			}
		}
	}
}
#endregion