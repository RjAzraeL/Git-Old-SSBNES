///@arg instance
///@arg object
function scrCheckObject(Instance , Object)
{
	for (var i = 0 ; i < ds_list_size(Instance.MyMovs) ; i++)
	{
		var entity = ds_list_find_value(Instance.MyMovs , i);
		if (scrExiste(entity))
		{
			if (entity.object_index == Object)
			{
				return true;
			}
		}
	}
	return false;
}

///@arg instance
///@arg object
function scrCheckObjectAmount(Instance , Object)
{
	var Amount = 0;
	for (var i = 0 ; i < ds_list_size(Instance.MyMovs) ; i++)
	{
		var entity = ds_list_find_value(Instance.MyMovs , i);
		if (scrExiste(entity))
		{
			if (entity.object_index == Object)
			{
				Amount++;
			}
		}
	}
	return Amount;
}