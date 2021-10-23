#region Gravity
VerticalMovement += Control.Gravity;
#endregion
#region Collision
if (place_meeting(x + HorizontalMovement , y , parCollision))
{
	HorizontalMovement *= -1;
	Rebound++;
	if (Power > 0)
	{
		Power -= 2;
	}
}
if (place_meeting(x , y + VerticalMovement , parCollision))
{
	VerticalMovement *= -1;
	Rebound++;
	if (Power > 0)
	{
		Power -= 2;
	}
}
#endregion
#region Destroy
if (distance_to_object(Creator) > 128 or scrIsOutside(self))
{
	instance_destroy();
}
#endregion
#region Position
x += HorizontalMovement;
y += VerticalMovement;
#endregion