#region Position
if (!ComeBack)
{
	x += HorizontalMovement;
	y += VerticalMovement;
	if (!scrExiste(Creator))
	{
		instance_destroy();
	}
	#region Collision
	if (place_meeting(x + HorizontalMovement , y , parCollision) and place_meeting(x + HorizontalMovement , y - 1 , parCollision) and place_meeting(x + HorizontalMovement , y + 1 , parCollision))
	{
		ComeBack = true;
	}
	if (place_meeting(x , y + VerticalMovement , parCollision))
	{
		ComeBack = true;
	}
	#endregion
	#region Destroy
	if (distance_to_object(Creator) > Range or scrIsOutside(self))
	{
		ComeBack = true;
	}
	#endregion
}
else
{
	if (scrExiste(Creator))
	{
		move_towards_point(Creator.x , Creator.y , 1);
		if (place_meeting(Creator.x , Creator.y , Creator))
		{
			instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}
}
#endregion