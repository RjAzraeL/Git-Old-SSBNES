#region Collision
if (scrExiste(Creator))
{
	Dir+=5;
	if (Dir >= 360)
	{
		Dir = 0;
		if (Power < 20)
		{
			Power++;
		}
	}
	x = Creator.x + lengthdir_x(Lenght , Dir);
	y = Creator.y + 4 + lengthdir_y(Lenght , Dir);
}
#endregion
#region Destroy
if (distance_to_object(Creator) > 128 or scrIsOutside(self))
{
	instance_destroy();
}
#endregion