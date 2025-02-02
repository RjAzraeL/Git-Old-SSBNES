#region Jump
if (Jumps > 0)
{
	if  (place_meeting(x,y-4,objCharacter))
	and (!place_meeting(x,y,objCharacter))
	and (VerticalMovement == 0)
	{
		var Ch = instance_place(x , y-4 , objCharacter);
		with (Ch)
		{
			scrFreeJump(10);
		}
		scrSound(sfxPollierSpringboard);
		IndexJump = 4;
		alarm[2] = 5;
		Jumps--;
	}
}
else
{
	instance_destroy();
}
#endregion
#region Gravity
VerticalMovement += Control.Gravity/4;
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
#region Position
x += HorizontalMovement;
y += VerticalMovement;
#endregion
#region Destroy
if (scrIsOutside(self))
{
	instance_destroy();
}
#endregion
#region Sprite
if (VerticalMovement != 0)
{
	image_speed = .25;
	if (image_index >= 3.9)
	{
		image_index = 0;
	}
}
else
{
	image_index = IndexJump;
	image_speed = 0;
}
#endregion