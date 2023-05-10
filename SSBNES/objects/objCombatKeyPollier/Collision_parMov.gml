#region Choque
if (other.Destroyable)
{
	if (other.Creator.id != Creator.id)
	{
		instance_destroy(other);
	}
}
#endregion