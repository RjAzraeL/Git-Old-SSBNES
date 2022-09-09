///@arg id
///@arg frame
///@arg entity
function scrAddMov(Id , Frame , Entity)
{
	var Package = ds_map_create();
	Package[? "id"] = Id;
	Package[? "frame"] = Frame;
	
	ds_list_add(Entity.MoveQueue , Package);
}

///@arg id
///@arg frame
///@arg entity
function scrCleanMoveQueue(Entity)
{
	ds_list_clear(Entity.MoveQueue);
}