///@arg position
///@arg start
function scrGiveMeSpawn(Pos , Start)
{
	var Objetive = objSpawn;
	var Spawn = noone;
	if (!Start)
	{
		Objetive = objDeathAppear;
	}
	for (var i = 0 ; i < instance_number(Objetive) ; i++)
	{
		Spawn = instance_find(Objetive , i);
		if (Spawn.Pos == -1)
		{
			return Spawn;
		}
		else if (Spawn.Pos == Pos)
		{
			return Spawn;
		}
	}
	return Spawn
}