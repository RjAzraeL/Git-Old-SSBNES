#region Gravity
VerticalMovement += Control.Gravity/2;
#endregion
#region Collision
if (place_meeting(x , y + VerticalMovement , parCollision) and !place_meeting(x , y , parCollision))
{
	instance_destroy();
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