#region Gravity
VerticalMovement += Control.Gravity/8;
#endregion

if (HorizontalMovement > Friction)
{
	HorizontalMovement -= Friction;
}
if (HorizontalMovement < -Friction)
{
	HorizontalMovement += Friction;
}
#region Collision
if (place_meeting(x + HorizontalMovement , y , parCollision))
{
	while (!place_meeting(x + sign(HorizontalMovement) , y , parCollision))
	{
		x += sign(HorizontalMovement);
	}
	HorizontalMovement = 0;
}
if (place_meeting(x , y + VerticalMovement , parCollision))
{
	while (!place_meeting(x, y + sign(VerticalMovement) , parCollision))
	{
		y += sign(VerticalMovement);
	}
	VerticalMovement = 0;
}
if (place_meeting(x , y + VerticalMovement , objBlockTransferable))
if (!place_meeting(x , y , objBlockTransferable))
{
	while (!place_meeting(x, y + sign(VerticalMovement) , objBlockTransferable))
	{
		y += sign(VerticalMovement);
	}
	VerticalMovement = 0;
}
#endregion
#region Destroy
if (place_meeting(x , y , objCharacter))
{
	var Ch = instance_place(x,y,objCharacter)
	if (Creator.id != Ch.id)
	{
		instance_destroy();
	}
}
#endregion
#region Destroy
if (scrIsOutside(self))
{
	instance_destroy();
}
#endregion
#region Position
x += HorizontalMovement;
y += VerticalMovement;
#endregion