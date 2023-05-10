#region Gravity
VerticalMovement += Control.Gravity/3;
#endregion
#region Collision
if (place_meeting(x + HorizontalMovement , y , parSolid))
{
	instance_destroy();
}
if (place_meeting(x , y + VerticalMovement , parSolid))
{
	instance_destroy()
}
if (place_meeting(x , y + VerticalMovement , objBlockTransferable))
if (!place_meeting(x , y , objBlockTransferable))
{
	instance_destroy()
}
#endregion
#region Destroy
if (distance_to_object(Creator) > 196 or scrIsOutside(self))
{
	instance_destroy();
}
#endregion
#region Position
x += HorizontalMovement;
y += VerticalMovement;
#endregion