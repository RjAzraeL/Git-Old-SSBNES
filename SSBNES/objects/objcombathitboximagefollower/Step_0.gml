#region Position
if (scrExiste(Creator))
{
	x = Creator.x + FollowX;
	y = Creator.y + FollowY;
	image_speed = 0;
	image_index = Creator.image_index;
	if (!Creator.Attacking)
	{
		instance_destroy();
	}
}
#endregion