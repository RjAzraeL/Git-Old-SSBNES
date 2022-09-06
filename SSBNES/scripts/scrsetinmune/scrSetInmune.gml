///@arg seconds
///@arg entity
function scrSetInmune(Seconds , Entity)
{
	if (scrExiste(Entity))
	{
		Entity.Inmune = true;
		Entity.InmuneCooldownFull = Seconds * 60;
		Entity.InmuneCooldown = Seconds * 60;
	}
}