#region Position
if (scrExiste(Creator))
{
	if (Update)
	{
		instance_destroy();
	}
	x = Creator.x + FollowX;
	y = Creator.y + FollowY;
	if (Creator.TimeAttacking <= 0)
	{
		instance_destroy();
	}
}
#endregion